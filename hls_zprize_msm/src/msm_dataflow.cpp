#include "msm.h"

void bucket_unit(hls::stream<bls12_377_coord_k_t> &input_fifo,
                 hls::stream<bls12_377_coord_k_t> &padd_output_fifo, N_t count_B[16],
                 hls::stream<dbl_bls12_377_coord_k_t> &CFIFO, bls12_377_coord_t B_i[16]) {
    // ---- Buckets ----
    bool fill_B[16] = {true, true, true, true, true, true, true, true,
                       true, true, true, true, true, true, true, true};
    hls::stream<bls12_377_coord_t> B[16];
    // TODO: cosider increasing the bucket depths, since fill_B logic is independently handling the
    // point routing logic OR, use bucket empty condition to route points between bucket and ovfifo.
    // BUT beware of the deadlock condition if there is a point in ovfifo but no point in the
    // corresponding bucket.
#pragma HLS STREAM variable = B[0] depth = 1
#pragma HLS STREAM variable = B[1] depth = 1
#pragma HLS STREAM variable = B[2] depth = 1
#pragma HLS STREAM variable = B[3] depth = 1
#pragma HLS STREAM variable = B[4] depth = 1
#pragma HLS STREAM variable = B[5] depth = 1
#pragma HLS STREAM variable = B[6] depth = 1
#pragma HLS STREAM variable = B[7] depth = 1
#pragma HLS STREAM variable = B[8] depth = 1
#pragma HLS STREAM variable = B[9] depth = 1
#pragma HLS STREAM variable = B[10] depth = 1
#pragma HLS STREAM variable = B[11] depth = 1
#pragma HLS STREAM variable = B[12] depth = 1
#pragma HLS STREAM variable = B[13] depth = 1
#pragma HLS STREAM variable = B[14] depth = 1
#pragma HLS STREAM variable = B[15] depth = 1

    ap_uint<4> nibble_K;
    fp_t padd_count[16] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
    fp_t debug_ctr = 0;
    hls::stream<bls12_377_coord_k_t> OVFIFO("Overflow fifo");
    // Pre-bucket FIFOs

    N_t count_if = 0, count_padd_of = 0;
#pragma HLS STREAM variable = OVFIFO depth = 15
    N_t num_padd_ops = 0;
    // ---- Determine #padd ops ----
    for (int i = 1; i < 16; i++) {
#pragma HLS pipeline II = 1
        if (count_B[i] != 0) num_padd_ops += (count_B[i] - 1);
    }

    for (int i = 0; i < NUM_POINTS; i++) {
        CFIFO.write((input_fifo.read(), padd_output_fifo.read()));
    }

#pragma HLS dataflow
    bls12_377_coord_k_t data;
    bool valid_data = false;
    while ((count_if < NUM_POINTS) || (count_padd_of < num_padd_ops)) {
#pragma HLS pipeline II = 1
        if (count_if < NUM_POINTS && !input_fifo.empty()) {
            data = input_fifo.read();
            count_if += 1;
            valid_data = true;
            // take care of single entry buckets i.e. count_B==1
            if (count_B[data(NIBBLE_RANGE)] == 1) {
                B_i[data(NIBBLE_RANGE)] = data(bls12_377_coord_t::width - 1, 0);
                valid_data = false;
            }
        } else if (count_padd_of < num_padd_ops && !padd_output_fifo.empty()) {
            data = padd_output_fifo.read();
            count_padd_of += 1;
            valid_data = true;
            // Check for last bucket element here.
            // update padd count here
            // if last element, put in B_i and change valid to false
            padd_count[data(NIBBLE_RANGE)] += 1;
            if (padd_count[data(NIBBLE_RANGE)] == count_B[data(NIBBLE_RANGE)] - 1) {
                B_i[data(NIBBLE_RANGE)] = data(1131 - 1, 0);
                valid_data = false;
            }
        } else
            valid_data = false;

        if (valid_data) {
            nibble_K = data(NIBBLE_RANGE);
            if (nibble_K != 0) {
                if (fill_B[nibble_K]) {
                    B[nibble_K].write(data(bls12_377_coord_t::width - 1, 0));
                    std::cout << "[Bucket " << nibble_K << "] "
                              << bls12_377_p(data(bls12_377_coord_t::width - 1, 0)).x << "\n";
                } else {
                    OVFIFO.write(data);
                    std::cout << "[OVFIFO " << nibble_K << "] "
                              << bls12_377_p(data(bls12_377_coord_t::width - 1, 0)).x << "\n";
                }
                fill_B[nibble_K] = !fill_B[nibble_K];
            }
        }
    }

    // todo: use splitting as shown in example of ug1399, but conditional data
    // duplication
    bls12_377_coord_t result;
    fp_t p_x, p_y, p_z;
    u32 b_data;

bucket_unit_label0:
    for (int i = 0; i < num_padd_ops; i++) {
        data = OVFIFO.read();
        nibble_K = data(NIBBLE_RANGE);
        result = B[nibble_K].read();
        CFIFO.write((nibble_K, result, data(bls12_377_coord_t::width - 1, 0)));
    }
}

void calc_num_padd_ops(N_t count_B[16], N_t num_padd_ops) {
    num_padd_ops = 0;
    for (int i = 1; i < 16; i++) {
#pragma HLS pipeline II = 1
        if (count_B[i] != 0) num_padd_ops += (count_B[i] - 1);
    }
}

void msm_arr(fp_t P_arr_x[NUM_POINTS], fp_t P_arr_y[NUM_POINTS], fp_t P_arr_z[NUM_POINTS],
             fr_t K_arr[NUM_POINTS], u32 B_i[30]) {
    bls12_377_coord_t GBUFF_P[NUM_POINTS];
    fr_t GBUFF_K[NUM_POINTS];
    bls12_377_coord_t GBUFF_P2D[NUM_CHUNKS][16];
#pragma HLS array_partition variable = GBUFF_P2D type = cyclic factor = 2 dim = 1
    /*
     * Loop 0: Populating global buffers
     */
    for (int i = 0; i < NUM_POINTS; i++) {
#pragma HLS pipeline II = 1
#pragma HLS dependence variable = GBUFF_P RAW false
#pragma HLS dependence variable = GBUFF_K RAW false
        GBUFF_P[i] = (P_arr_x[i], P_arr_y[i], P_arr_z[i]);
        GBUFF_K[i] = K_arr[i];
    }

    /*
     * Algorithm Loop 1: accumumlating bucket-wise partial sums for each chunk position
     */

#pragma HLS dataflow
    hls::stream<bls12_377_coord_k_t> BFIFO_1("Bucket fifo for chunk position 1");
    hls::stream<bls12_377_coord_k_t> padd_output_fifo("PADD output fifo");
#pragma HLS STREAM variable = padd_output_fifo depth = 15
#pragma HLS STREAM variable = BFIFO_1 depth = 5
    ap_uint<4> nibble_K;
    hls::stream<dbl_bls12_377_coord_k_t> CFIFO("central fifo");  // PADD FIFOS
#pragma HLS STREAM variable = CFIFO depth = 15
    N_t count_B[16] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};

    // ---- Buckets ----
    bool fill_B[16] = {true, true, true, true, true, true, true, true,
                       true, true, true, true, true, true, true, true};
    hls::stream<bls12_377_coord_t> B[16];
    // TODO: cosider increasing the bucket depths, since fill_B logic is independently handling the
    // point routing logic OR, use bucket empty condition to route points between bucket and ovfifo.
    // BUT beware of the deadlock condition if there is a point in ovfifo but no point in the
    // corresponding bucket.
#pragma HLS STREAM variable = B[0] depth = 1
#pragma HLS STREAM variable = B[1] depth = 1
#pragma HLS STREAM variable = B[2] depth = 1
#pragma HLS STREAM variable = B[3] depth = 1
#pragma HLS STREAM variable = B[4] depth = 1
#pragma HLS STREAM variable = B[5] depth = 1
#pragma HLS STREAM variable = B[6] depth = 1
#pragma HLS STREAM variable = B[7] depth = 1
#pragma HLS STREAM variable = B[8] depth = 1
#pragma HLS STREAM variable = B[9] depth = 1
#pragma HLS STREAM variable = B[10] depth = 1
#pragma HLS STREAM variable = B[11] depth = 1
#pragma HLS STREAM variable = B[12] depth = 1
#pragma HLS STREAM variable = B[13] depth = 1
#pragma HLS STREAM variable = B[14] depth = 1
#pragma HLS STREAM variable = B[15] depth = 1

    // ap_uint<4> nibble_K;
    fp_t padd_count[16] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
    fp_t debug_ctr = 0;
    hls::stream<bls12_377_coord_k_t> OVFIFO("Overflow fifo");
#pragma HLS STREAM variable = OVFIFO depth = 16

    N_t count_if = 0, count_padd_of = 0;
    N_t num_padd_ops = 0;

    bls12_377_coord_k_t data;
    bool valid_data = false;

    // bucket_unit(BFIFO_1, padd_output_fifo, count_B, CFIFO, GBUFF_P2D[0]);

msm_arr_dataflow_0:
    for (int i = 0; i < NUM_POINTS; i++) {
        nibble_K = GBUFF_K[i](((0 + 1) << 2) - 1, 0 << 2);
        count_B[nibble_K] += 1;
        // BFIFO_1.write((nibble_K, GBUFF_P[i]));
    }

    // ---- Determine #padd ops ----
    // msm_arr_dataflow_1:
    //     for (int i = 1; i < 16; i++) {
    // #pragma HLS pipeline II = 1
    //         if (count_B[i] != 0) num_padd_ops += (count_B[i] - 1);
    //     }

    num_padd_ops = 7;

    N_t itr_bfifo = 0;
msm_arr_dataflow_2:
    while ((itr_bfifo < NUM_POINTS) || (count_if < NUM_POINTS) || (count_padd_of < num_padd_ops)) {
#pragma HLS dataflow

        if (itr_bfifo < NUM_POINTS) {
            nibble_K = GBUFF_K[itr_bfifo](((0 + 1) << 2) - 1, 0 << 2);
            BFIFO_1.write((nibble_K, GBUFF_P[itr_bfifo++]));
        }

        if (count_if < NUM_POINTS && !BFIFO_1.empty()) {
            data = BFIFO_1.read();
            count_if += 1;
            valid_data = true;
            // take care of single entry buckets i.e. count_B==1
            if (count_B[data(NIBBLE_RANGE)] == 1) {
                GBUFF_P2D[0][data(NIBBLE_RANGE)] = data(bls12_377_coord_t::width - 1, 0);
                valid_data = false;
            }
        } else if (count_padd_of < num_padd_ops && !padd_output_fifo.empty()) {
            data = padd_output_fifo.read();
            count_padd_of += 1;
            valid_data = true;
            // Check for last bucket element here.
            // update padd count here
            // if last element, put in B_i and change valid to false
            padd_count[data(NIBBLE_RANGE)] += 1;
            if (padd_count[data(NIBBLE_RANGE)] == count_B[data(NIBBLE_RANGE)] - 1) {
                GBUFF_P2D[0][data(NIBBLE_RANGE)] = data(1131 - 1, 0);
                valid_data = false;
            }
        } else
            valid_data = false;

        if (valid_data) {
            nibble_K = data(NIBBLE_RANGE);
            if (nibble_K != 0) {
                if (fill_B[nibble_K]) {
                    B[nibble_K].write(data(bls12_377_coord_t::width - 1, 0));
                    std::cout << "[Bucket " << nibble_K << "] "
                              << bls12_377_p(data(bls12_377_coord_t::width - 1, 0)).x << "\n";
                } else {
                    OVFIFO.write(data);
                    std::cout << "[OVFIFO " << nibble_K << "] "
                              << bls12_377_p(data(bls12_377_coord_t::width - 1, 0)).x << "\n";
                }
                fill_B[nibble_K] = !fill_B[nibble_K];
            }
        }
    }

    // todo: use splitting as shown in example of ug1399, but conditional data
    // duplication
    bls12_377_coord_t result;
    fp_t p_x, p_y, p_z;
    u32 b_data;

msm_arr_dataflow_3:
    for (int i = 0; i < num_padd_ops; i++) {
        data = OVFIFO.read();
        nibble_K = data(NIBBLE_RANGE);
        result = B[nibble_K].read();
        CFIFO.write((nibble_K, result, data(bls12_377_coord_t::width - 1, 0)));
    }

    // ---- Padd operations ----
    fp_t iter_padd_ops = 0;
    bls12_377_p sum(0, 1, 0);
    fp_t p1_x, p1_y, p1_z, p2_x, p2_y, p2_z;
msm_arr_dataflow_4:
    for (int i = 0; i < num_padd_ops; i++) {
        (nibble_K, p1_x, p1_y, p1_z, p2_x, p2_y, p2_z) = CFIFO.read();
        bls12_377_p a(p1_x, p1_y, p1_z), b(p2_x, p2_y, p2_z);
        sum = padd(a, b);
        iter_padd_ops++;
        padd_output_fifo.write((nibble_K, sum.x, sum.y, sum.z));
    }

    /*
     * Algorithm Loop 2: Combining the bucket partial sums
     * Each element of GBUFF_P represents the accumulated sum of points belonging to the
     * corresponding bucket.
     * result = sigma(k*GBUFF_P[k])
     */

    bls12_377_p B_l(0, 1, 0);
    bls12_377_p s[NUM_CHUNKS];
    bls12_377_p G_k_arr[NUM_CHUNKS];
msm_arr_dataflow_5:
    for (int l = 15; l > 0; l--) {
    msm_arr_label0:
        for (int k = 0; k < NUM_CHUNKS; k++) {
#pragma HLS pipeline
#pragma HLS dependence variable = s RAW false
            B_l = bls12_377_p(GBUFF_P2D[k][l]);
            s[k] = padd(s[k], B_l);
        }
    msm_arr_label1:
        for (int k = 0; k < NUM_CHUNKS; k++) {
#pragma HLS pipeline
#pragma HLS dependence variable = G_k_arr RAW false
            G_k_arr[k] = padd(G_k_arr[k], s[k]);
        }
    }

    /*
     * Algorithm Loop 3: Combining G_k's
     * Each element of GBUFF_P represents the weighted sum of bucket elements for the
     * corresponding chunk position
     * i.e. GBUFF_P[k] = 1*B[k][1] + 2*B[k][2] + ...
     * result = sigma(2^kc*GBUFF_P[k])
     */
    bls12_377_p G(0, 1, 0), G_itr(0, 1, 0);
    G = bls12_377_p(G_k_arr[NUM_CHUNKS - 1]);
msm_arr_dataflow_6:
    for (int k = NUM_CHUNKS - 2; k > 0; k--) {
        G_itr = G;
        for (int k = 0; k < CHUNK_SIZE; k++) {
#pragma HLS pipeline
            G_itr = pdouble(G_itr);
        }
        G = padd(G_itr, bls12_377_p(G_k_arr[k]));
    }
}

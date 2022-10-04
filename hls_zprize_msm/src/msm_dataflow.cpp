#include "msm.h"

void bucket_process(N_t count_B[16], N_t num_padd_ops, hls::stream<bls12_377_coord_k_t> &BFIFO,
                    hls::stream<bls12_377_coord_k_t> &padd_output_fifo,
                    bls12_377_coord_t GBUFF_P2D[16], hls::stream<dbl_bls12_377_coord_k_t> &CFIFO) {
#pragma HLS dataflow
    bls12_377_coord_k_t data;
    bool valid_data = false;
    N_t count_if = 0, count_padd_of = 0;

    ap_uint<4> nibble_K;

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

    hls::stream<bls12_377_coord_k_t> OVFIFO("Overflow fifo");
#pragma HLS STREAM variable = OVFIFO depth = 16
    // ap_uint<4> nibble_K;
    // bucket-wise padd count
    fp_t padd_count[16] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};

    while ((count_if < NUM_POINTS) || (count_padd_of < num_padd_ops)) {
        if (count_if < NUM_POINTS && !BFIFO.empty()) {
            data = BFIFO.read();
            count_if += 1;
            valid_data = true;
            // take care of single entry buckets i.e. count_B==1
            if (count_B[data(NIBBLE_RANGE)] == 1) {
                GBUFF_P2D[data(NIBBLE_RANGE)] = data(bls12_377_coord_t::width - 1, 0);
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
                GBUFF_P2D[data(NIBBLE_RANGE)] = data(1131 - 1, 0);
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

    bls12_377_coord_t result;

msm_arr_dataflow_3:
    for (int i = 0; i < num_padd_ops; i++) {
        data = OVFIFO.read();
        nibble_K = data(NIBBLE_RANGE);
        result = B[nibble_K].read();
        CFIFO.write((nibble_K, result, data(bls12_377_coord_t::width - 1, 0)));
    }
}

// -------------------------------------------------------------------------

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
    ap_uint<4> nibble_K;
    N_t cnt_bucket_chunks[16][16] = {
        {0, 2, 1, 2, 2, 1, 0, 2, 2, 2, 0, 0, 0, 0, 0, 2},
        {0, 2, 1, 2, 2, 1, 0, 2, 2, 2, 0, 0, 0, 0, 0, 2},
        {0, 2, 1, 2, 2, 1, 0, 2, 2, 2, 0, 0, 0, 0, 0, 2},
        {0, 2, 1, 2, 2, 1, 0, 2, 2, 2, 0, 0, 0, 0, 0, 2},
        {0, 2, 1, 2, 2, 1, 0, 2, 2, 2, 0, 0, 0, 0, 0, 2},
        {0, 2, 1, 2, 2, 1, 0, 2, 2, 2, 0, 0, 0, 0, 0, 2},
        {0, 2, 1, 2, 2, 1, 0, 2, 2, 2, 0, 0, 0, 0, 0, 2},
        {0, 2, 1, 2, 2, 1, 0, 2, 2, 2, 0, 0, 0, 0, 0, 2},
        {0, 2, 1, 2, 2, 1, 0, 2, 2, 2, 0, 0, 0, 0, 0, 2},
        {0, 2, 1, 2, 2, 1, 0, 2, 2, 2, 0, 0, 0, 0, 0, 2},
        {0, 2, 1, 2, 2, 1, 0, 2, 2, 2, 0, 0, 0, 0, 0, 2},
        {0, 2, 1, 2, 2, 1, 0, 2, 2, 2, 0, 0, 0, 0, 0, 2},
        {0, 2, 1, 2, 2, 1, 0, 2, 2, 2, 0, 0, 0, 0, 0, 2},
        {0, 2, 1, 2, 2, 1, 0, 2, 2, 2, 0, 0, 0, 0, 0, 2},
        {0, 2, 1, 2, 2, 1, 0, 2, 2, 2, 0, 0, 0, 0, 0, 2},
        {0, 2, 1, 2, 2, 1, 0, 2, 2, 2, 0, 0, 0, 0, 0, 2},
    };
    N_t num_padd_ops[16] = {7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7};

    hls::stream<bls12_377_coord_k_t> BFIFO_0("Bucket fifo for chunk position 1"),
        BFIFO_1("Bucket fifo for chunk position 2");
    hls::stream<bls12_377_coord_k_t> padd_output_fifo_0("PADD output fifo chunk 1"),
        padd_output_fifo_1("PADD output fifo chunk 1");
#pragma HLS STREAM variable = padd_output_fifo_0 depth = 15
#pragma HLS STREAM variable = padd_output_fifo_1 depth = 15

#pragma HLS STREAM variable = BFIFO_0 depth = 5
#pragma HLS STREAM variable = BFIFO_1 depth = 5
    hls::stream<dbl_bls12_377_coord_k_t> CFIFO_0("central fifo for chunk 1"),
        CFIFO_1("central fifo for chunk 1");  // PADD FIFOS
#pragma HLS STREAM variable = CFIFO_0 depth = 15
#pragma HLS STREAM variable = CFIFO_1 depth = 15

    N_t ni = 0;
// for (N_t ni = 0; ni < 16; ni = ni + 1) {
msm_arr_dataflow_0:
    for (int i = 0; i < NUM_POINTS; i++) {
        nibble_K = GBUFF_K[i](((ni + 1) << 2) - 1, (ni) << 2);
        BFIFO_0.write((nibble_K, GBUFF_P[i]));
        nibble_K = GBUFF_K[i](((ni + 1) << 2) - 1, (ni) << 2);
        BFIFO_1.write((nibble_K, GBUFF_P[i]));
    }
    // }

    // for (N_t ni = 0; ni < 16; ni = ni + 1)
    bucket_process(cnt_bucket_chunks[ni], num_padd_ops[ni], BFIFO_0, padd_output_fifo_0,
                   GBUFF_P2D[0], CFIFO_0);
    bucket_process(cnt_bucket_chunks[ni + 1], num_padd_ops[ni + 1], BFIFO_1, padd_output_fifo_1,
                   GBUFF_P2D[1], CFIFO_1);

    // TODO: scheduler process: arbitration between CFIFO's and pass to padd unit, add metadata
    // before sending to padd unit.

    // ---- Padd operations ----
    fp_t iter_padd_ops = 0;
    bls12_377_p sum(0, 1, 0);
    fp_t p1_x, p1_y, p1_z, p2_x, p2_y, p2_z;
    bool padd_done = false, valid_data = false;
    N_t padd_count[16] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};

msm_arr_dataflow_4:
    // for (N_t i = 0; i < num_padd_ops[0]; i++) {
    //     (nibble_K, p1_x, p1_y, p1_z, p2_x, p2_y, p2_z) = CFIFO.read();
    //     bls12_377_p a(p1_x, p1_y, p1_z), b(p2_x, p2_y, p2_z);
    //     sum = padd(a, b);
    //     iter_padd_ops++;
    //     padd_output_fifo_0.write((nibble_K, sum.x, sum.y, sum.z));
    // }

    while (!padd_done) {
#pragma HLS allocation function instances = padd limit = 1
        if (padd_count[0] < num_padd_ops[0] && !CFIFO_0.empty()) {
            (nibble_K, p1_x, p1_y, p1_z, p2_x, p2_y, p2_z) = CFIFO_0.read();
            bls12_377_p a(p1_x, p1_y, p1_z), b(p2_x, p2_y, p2_z);
            sum = padd(a, b);
            padd_count[0] = padd_count[0] + 1;
            padd_output_fifo_0.write((nibble_K, sum.x, sum.y, sum.z));
        } else if (padd_count[1] < num_padd_ops[1] && !CFIFO_1.empty()) {
            (nibble_K, p1_x, p1_y, p1_z, p2_x, p2_y, p2_z) = CFIFO_1.read();
            bls12_377_p a(p1_x, p1_y, p1_z), b(p2_x, p2_y, p2_z);
            sum = padd(a, b);
            padd_count[1] = padd_count[1] + 1;
            padd_output_fifo_1.write((nibble_K, sum.x, sum.y, sum.z));
        } else {
            padd_done = (padd_count[0] == num_padd_ops[0]) && (padd_count[1] == num_padd_ops[1]);
        }
    }
    // TODO: routing required for padd output to respective bucket process

    // -----------------------------------------------------------------------

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

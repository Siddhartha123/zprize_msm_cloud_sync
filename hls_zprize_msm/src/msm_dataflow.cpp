#include "msm.h"

void bucket_process(N_t count_B[TWO_RAISED_CHUNK_SIZE], N_t num_padd_ops,
                    hls::stream<bls12_377_coord_k_t> &BFIFO,
                    hls::stream<bls12_377_coord_k_t> &padd_output_fifo,
                    bls12_377_coord_t GBUFF_P2D[TWO_RAISED_CHUNK_SIZE],
                    hls::stream<dbl_bls12_377_coord_k_t> &CFIFO) {
#pragma HLS dataflow
    bls12_377_coord_k_t data;
    bool valid_data = false;
    N_t count_if = 0, count_padd_of = 0;

    ap_uint<4> nibble_K;

    // ---- Buckets ----
    bool fill_B[TWO_RAISED_CHUNK_SIZE] = {true, true, true, true, true, true, true, true,
                                          true, true, true, true, true, true, true, true};
    hls::stream<bls12_377_coord_t> B[TWO_RAISED_CHUNK_SIZE];
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
#pragma HLS STREAM variable = OVFIFO depth = 17
    // ap_uint<4> nibble_K;
    // bucket-wise padd count
    fp_t padd_count[TWO_RAISED_CHUNK_SIZE] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
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
    bls12_377_coord_t GBUFF_P2D[NUM_CHUNKS][TWO_RAISED_CHUNK_SIZE];
#pragma HLS array_partition variable = GBUFF_P2D type = cyclic factor = 16 dim = 1
    ap_uint<4> nibble_K;
    N_t cnt_bucket_chunks[NUM_CHUNKS][TWO_RAISED_CHUNK_SIZE] = {
        {0, 2, 1, 2, 2, 1, 0, 2, 2, 2, 0, 0, 0, 0, 0, 2},
        {0, 1, 2, 2, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1},
        {0, 0, 0, 1, 2, 0, 1, 1, 2, 2, 1, 1, 2, 1, 0, 2},
        {0, 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 3, 3, 1, 1},
        {0, 0, 3, 1, 0, 1, 0, 2, 2, 1, 1, 1, 0, 0, 1, 1},
        {0, 1, 0, 2, 1, 3, 0, 2, 2, 2, 0, 2, 0, 0, 0, 1},
        {0, 0, 1, 0, 1, 2, 3, 0, 2, 1, 0, 0, 4, 0, 1, 1},
        {0, 0, 1, 1, 0, 1, 0, 3, 2, 1, 1, 1, 0, 0, 2, 2},
        {0, 3, 0, 1, 1, 1, 0, 2, 0, 2, 2, 0, 0, 2, 1, 0},
        {0, 0, 1, 1, 2, 1, 2, 2, 1, 0, 1, 1, 1, 0, 2, 0},
        {0, 0, 0, 2, 1, 0, 3, 0, 2, 1, 3, 0, 1, 0, 2, 0},
        {0, 1, 1, 0, 1, 0, 0, 0, 3, 0, 1, 0, 1, 1, 1, 2},
        {0, 2, 2, 0, 0, 1, 0, 0, 1, 3, 1, 1, 0, 1, 2, 0},
        {0, 0, 0, 1, 2, 0, 1, 0, 2, 3, 0, 1, 0, 1, 2, 2},
        {0, 0, 2, 2, 0, 1, 0, 4, 0, 2, 2, 1, 0, 2, 0, 0},
        {0, 1, 0, 2, 2, 0, 1, 0, 2, 0, 2, 2, 0, 3, 0, 1},
    };
    N_t num_padd_ops[NUM_CHUNKS] = {7, 2, 5, 4, 4, 7, 7, 5, 6, 4, 7, 3, 5, 6, 8, 7};
    N_t total_num_padd_ops = 91;

    hls::stream<bls12_377_coord_k_t> BFIFO[NUM_CHUNKS];  // Bucket fifos for each chunk position
    hls::stream<bls12_377_coord_k_t> padd_output_fifo[NUM_CHUNKS];
#pragma HLS STREAM variable = padd_output_fifo[0] depth = 14
#pragma HLS STREAM variable = padd_output_fifo[1] depth = 14

#pragma HLS STREAM variable = BFIFO[0] depth = 5
#pragma HLS STREAM variable = BFIFO[1] depth = 5
    hls::stream<dbl_bls12_377_coord_k_t> CFIFO[NUM_CHUNKS];  // PADD FIFOS
#pragma HLS STREAM variable = CFIFO[0] depth = 14
#pragma HLS STREAM variable = CFIFO[1] depth = 14

    N_t ni = 0;
msm_arr_dataflow_0:
    for (int i = 0; i < NUM_POINTS; i++) {
        for (N_t ni = 0; ni < NUM_CHUNKS; ni = ni + 1) {
#pragma HLS unroll
            nibble_K = GBUFF_K[i](((ni + 1) << 2) - 1, (ni) << 2);
            BFIFO[ni].write((nibble_K, GBUFF_P[i]));
        }
    }

    for (N_t ni = 0; ni < NUM_CHUNKS; ni = ni + 1) {
#pragma HLS unroll
        bucket_process(cnt_bucket_chunks[ni], num_padd_ops[ni], BFIFO[ni], padd_output_fifo[ni],
                       GBUFF_P2D[ni], CFIFO[ni]);
    }

    // ---- Padd operations ----
    fp_t iter_padd_ops = 0;
    bls12_377_p sum(0, 1, 0);
    fp_t p1_x, p1_y, p1_z, p2_x, p2_y, p2_z;
    bool padd_done = false, valid_data = false;
    // N_t padd_count[NUM_CHUNKS] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
    N_t total_padd_count = 0;
    hls::stream<dbl_bls12_377_coord_k_chunk_t> padd_input_fifo;
    dbl_bls12_377_coord_k_t input_point_pair;

#pragma HLS STREAM variable = padd_input_fifo depth = 14
msm_arr_dataflow_4:
    while (total_padd_count < total_num_padd_ops) {
        N_t k;
        if (!CFIFO[0].empty()) {
            k = 0;
            input_point_pair = CFIFO[0].read();
            // padd_count[0] = padd_count[0] + 1;
            padd_input_fifo.write(((ap_uint<LOG_NUM_CHUNKS>)0, input_point_pair));
            total_padd_count++;
        } else if (!CFIFO[1].empty()) {
            k = 1;
            input_point_pair = CFIFO[1].read();
            // padd_count[1] = padd_count[1] + 1;
            padd_input_fifo.write(((ap_uint<LOG_NUM_CHUNKS>)1, input_point_pair));
            total_padd_count++;
        } else if (!CFIFO[2].empty()) {
            k = 2;
            input_point_pair = CFIFO[2].read();
            // padd_count[2] = padd_count[2] + 1;
            padd_input_fifo.write(((ap_uint<LOG_NUM_CHUNKS>)2, input_point_pair));
            total_padd_count++;
        } else if (!CFIFO[3].empty()) {
            k = 3;
            input_point_pair = CFIFO[3].read();
            // padd_count[3] = padd_count[3] + 1;
            padd_input_fifo.write(((ap_uint<LOG_NUM_CHUNKS>)3, input_point_pair));
            total_padd_count++;
        } else if (!CFIFO[4].empty()) {
            k = 4;
            input_point_pair = CFIFO[4].read();
            // padd_count[4] = padd_count[4] + 1;
            padd_input_fifo.write(((ap_uint<LOG_NUM_CHUNKS>)4, input_point_pair));
            total_padd_count++;
        } else if (!CFIFO[5].empty()) {
            k = 5;
            input_point_pair = CFIFO[5].read();
            // padd_count[5] = padd_count[5] + 1;
            padd_input_fifo.write(((ap_uint<LOG_NUM_CHUNKS>)5, input_point_pair));
            total_padd_count++;
        } else if (!CFIFO[6].empty()) {
            k = 6;
            input_point_pair = CFIFO[6].read();
            // padd_count[6] = padd_count[6] + 1;
            padd_input_fifo.write(((ap_uint<LOG_NUM_CHUNKS>)6, input_point_pair));
            total_padd_count++;
        } else if (!CFIFO[7].empty()) {
            k = 7;
            input_point_pair = CFIFO[7].read();
            // padd_count[7] = padd_count[7] + 1;
            padd_input_fifo.write(((ap_uint<LOG_NUM_CHUNKS>)7, input_point_pair));
            total_padd_count++;
        } else if (!CFIFO[8].empty()) {
            k = 8;
            input_point_pair = CFIFO[8].read();
            // padd_count[8] = padd_count[8] + 1;
            padd_input_fifo.write(((ap_uint<LOG_NUM_CHUNKS>)8, input_point_pair));
            total_padd_count++;
        } else if (!CFIFO[9].empty()) {
            k = 9;
            input_point_pair = CFIFO[9].read();
            // padd_count[9] = padd_count[9] + 1;
            padd_input_fifo.write(((ap_uint<LOG_NUM_CHUNKS>)9, input_point_pair));
            total_padd_count++;
        } else if (!CFIFO[10].empty()) {
            k = 10;
            input_point_pair = CFIFO[10].read();
            // padd_count[10] = padd_count[10] + 1;
            padd_input_fifo.write(((ap_uint<LOG_NUM_CHUNKS>)10, input_point_pair));
            total_padd_count++;
        } else if (!CFIFO[11].empty()) {
            k = 11;
            input_point_pair = CFIFO[11].read();
            // padd_count[11] = padd_count[11] + 1;
            padd_input_fifo.write(((ap_uint<LOG_NUM_CHUNKS>)11, input_point_pair));
            total_padd_count++;
        } else if (!CFIFO[12].empty()) {
            k = 12;
            input_point_pair = CFIFO[12].read();
            // padd_count[12] = padd_count[12] + 1;
            padd_input_fifo.write(((ap_uint<LOG_NUM_CHUNKS>)12, input_point_pair));
            total_padd_count++;
        } else if (!CFIFO[13].empty()) {
            k = 13;
            input_point_pair = CFIFO[13].read();
            // padd_count[13] = padd_count[13] + 1;
            padd_input_fifo.write(((ap_uint<LOG_NUM_CHUNKS>)13, input_point_pair));
            total_padd_count++;
        } else if (!CFIFO[14].empty()) {
            k = 14;
            input_point_pair = CFIFO[14].read();
            // padd_count[14] = padd_count[14] + 1;
            padd_input_fifo.write(((ap_uint<LOG_NUM_CHUNKS>)14, input_point_pair));
            total_padd_count++;
        } else if (!CFIFO[15].empty()) {
            k = 15;
            input_point_pair = CFIFO[15].read();
            // padd_count[15] = padd_count[15] + 1;
            padd_input_fifo.write(((ap_uint<LOG_NUM_CHUNKS>)15, input_point_pair));
            total_padd_count++;
        }
        //         else {
        //             padd_done = true;
        //             for (int i = 0; i < NUM_CHUNKS; i++) {
        // #pragma HLS unroll
        //                 padd_done = padd_done && (padd_count[i] == num_padd_ops[i]);
        //             }
        //         }
    }

    ap_uint<LOG_NUM_CHUNKS> chunk_num;
msm_arr_dataflow_padd:
    for (int i = 0; i < total_num_padd_ops; i++) {
        (chunk_num, nibble_K, p1_x, p1_y, p1_z, p2_x, p2_y, p2_z) = padd_input_fifo.read();
        bls12_377_p a(p1_x, p1_y, p1_z), b(p2_x, p2_y, p2_z);
        sum = padd(a, b);
        padd_output_fifo[chunk_num].write((nibble_K, sum.x, sum.y, sum.z));
    }

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
    for (int l = TWO_RAISED_CHUNK_SIZE - 1; l > 0; l--) {
#pragma HLS allocation function instances = padd limit = 1
    msm_arr_label0:
        for (int k = 0; k < NUM_CHUNKS; k++) {
#pragma HLS unroll
#pragma HLS dependence variable = s RAW false
            B_l = bls12_377_p(GBUFF_P2D[k][l]);
            s[k] = padd(s[k], B_l);
        }
    msm_arr_label1:
        for (int k = 0; k < NUM_CHUNKS; k++) {
#pragma HLS unroll
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

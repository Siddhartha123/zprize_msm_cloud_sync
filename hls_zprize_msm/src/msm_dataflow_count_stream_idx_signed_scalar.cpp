#include "msm.h"

#define loop2and3_identifier 63

void bucket_process(N_t count_B[TWO_RAISED_CHUNK_SIZE], N_t num_padd_ops,
                    hls::stream<bls12_377_idx_k_t> &BFIFO,
                    hls::stream<bls12_377_idx_k_t> &padd_output_fifo,
                    bls12_377_idx_t GBUFF_P2D[TWO_RAISED_CHUNK_SIZE],
                    hls::stream<dbl_bls12_377_idx_k_t> &CFIFO) {
#pragma HLS dataflow
    bls12_377_idx_k_t data;
    bool valid_data = false;
    N_t count_if = 0, count_padd_of = 0;

    chunk_t nibble_K;

    // ---- Buckets ----
    bool fill_B[TWO_RAISED_CHUNK_SIZE] = {
        true, true, true, true, true, true, true, true, true, true, true, true, true,
        true, true, true, true, true, true, true, true, true, true, true, true, true,
        true, true, true, true, true, true, true, true, true, true, true, true, true,
        true, true, true, true, true, true, true, true, true, true, true, true, true,
        true, true, true, true, true, true, true, true, true, true, true, true};
    hls::stream<bls12_377_idx_t> B[TWO_RAISED_CHUNK_SIZE];
    // TODO: cosider increasing the bucket depths, since fill_B logic is independently handling the
    // point routing logic OR, use bucket empty condition to route points between bucket and ovfifo.
    // BUT beware of the deadlock condition if there is a point in ovfifo but no point in the
    // corresponding bucket.

    hls::stream<bls12_377_idx_k_t> OVFIFO("Overflow fifo");
#pragma HLS STREAM variable = OVFIFO depth = 8
    // chunk_t nibble_K;
    // bucket-wise padd count
    N_t padd_count[TWO_RAISED_CHUNK_SIZE] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                                             0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                                             0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
                                             0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
    while ((count_if < NUM_POINTS) || (count_padd_of < num_padd_ops)) {
        if (count_padd_of < num_padd_ops && !padd_output_fifo.empty()) {
            data = padd_output_fifo.read();
            count_padd_of += 1;
            valid_data = true;
            // Check for last bucket element here.
            // update padd count here
            // if last element, put in B_i and change valid to false
            padd_count[data(NIBBLE_RANGE_IDX)] += 1;
            if (padd_count[data(NIBBLE_RANGE_IDX)] == count_B[data(NIBBLE_RANGE_IDX)] - 1) {
                GBUFF_P2D[data(NIBBLE_RANGE_IDX)] = data(bls12_377_idx_t::width - 1, 0);
                valid_data = false;
            }
        } else if (count_if < NUM_POINTS && !BFIFO.empty()) {
            data = BFIFO.read();
            count_if += 1;
            valid_data = true;
            // take care of single entry buckets i.e. count_B==1
            if (count_B[data(NIBBLE_RANGE_IDX)] == 1) {
                GBUFF_P2D[data(NIBBLE_RANGE_IDX)] = data(bls12_377_idx_t::width - 1, 0);
                valid_data = false;
            }
        } else
            valid_data = false;

        if (valid_data) {
            nibble_K = data(NIBBLE_RANGE_IDX);
            if (nibble_K != 0) {
                if (fill_B[nibble_K]) {
                    B[nibble_K].write(data(bls12_377_idx_t::width - 1, 0));
                    std::cout << "[Bucket " << nibble_K << "] "
                              << bls12_377_p(data(bls12_377_idx_t::width - 1, 0)).x << "\n";
                } else {
                    OVFIFO.write(data);
                    std::cout << "[OVFIFO " << nibble_K << "] "
                              << bls12_377_p(data(bls12_377_idx_t::width - 1, 0)).x << "\n";
                }
                fill_B[nibble_K] = !fill_B[nibble_K];
            }
        }
    }

    bls12_377_idx_t result;

msm_arr_dataflow_3:
    for (int i = 0; i < num_padd_ops; i++) {
        data = OVFIFO.read();
        nibble_K = data(NIBBLE_RANGE_IDX);
        result = B[nibble_K].read();
        CFIFO.write((nibble_K, result, data(bls12_377_idx_t::width - 1, 0)));
    }
}

void rem_bucket_process(N_t count_B[TWO_RAISED_CHUNK_SIZE], N_t num_padd_ops,
                        hls::stream<bls12_377_idx_k_t> &BFIFO,
                        hls::stream<bls12_377_idx_k_t> &padd_output_fifo,
                        bls12_377_idx_t GBUFF_P2D[TWO_RAISED_CHUNK_SIZE],
                        hls::stream<dbl_bls12_377_idx_k_t> &CFIFO) {
#pragma HLS dataflow
    bls12_377_idx_k_t data;
    bool valid_data = false;
    N_t count_if = 0, count_padd_of = 0;

    chunk_t nibble_K;

    // ---- Buckets ----
    bool fill_B[TWO_RAISED_REM_CHUNK_SIZE] = {true, true};
    hls::stream<bls12_377_idx_t> B[TWO_RAISED_REM_CHUNK_SIZE];
    // TODO: cosider increasing the bucket depths, since fill_B logic is independently handling the
    // point routing logic OR, use bucket empty condition to route points between bucket and ovfifo.
    // BUT beware of the deadlock condition if there is a point in ovfifo but no point in the
    // corresponding bucket.

    hls::stream<bls12_377_idx_k_t> OVFIFO("Overflow fifo");
#pragma HLS STREAM variable = OVFIFO depth = 17
    // chunk_t nibble_K;
    // bucket-wise padd count
    N_t padd_count[TWO_RAISED_REM_CHUNK_SIZE] = {0, 0};
    while ((count_if < NUM_POINTS) || (count_padd_of < num_padd_ops)) {
        if (count_padd_of < num_padd_ops && !padd_output_fifo.empty()) {
            data = padd_output_fifo.read();
            count_padd_of += 1;
            valid_data = true;
            // Check for last bucket element here.
            // update padd count here
            // if last element, put in B_i and change valid to false
            padd_count[data(NIBBLE_RANGE_IDX)] += 1;
            if (padd_count[data(NIBBLE_RANGE_IDX)] == count_B[data(NIBBLE_RANGE_IDX)] - 1) {
                GBUFF_P2D[data(NIBBLE_RANGE_IDX)] = data(bls12_377_idx_t::width - 1, 0);
                valid_data = false;
            }
        } else if (count_if < NUM_POINTS && !BFIFO.empty()) {
            data = BFIFO.read();
            count_if += 1;
            valid_data = true;
            // take care of single entry buckets i.e. count_B==1
            if (count_B[data(NIBBLE_RANGE_IDX)] == 1) {
                GBUFF_P2D[data(NIBBLE_RANGE_IDX)] = data(bls12_377_idx_t::width - 1, 0);
                valid_data = false;
            }
        } else
            valid_data = false;

        if (valid_data) {
            nibble_K = data(NIBBLE_RANGE_IDX);
            if (nibble_K != 0) {
                if (fill_B[nibble_K]) {
                    B[nibble_K].write(data(bls12_377_idx_t::width - 1, 0));
                    std::cout << "[Bucket " << nibble_K << "] "
                              << bls12_377_p(data(bls12_377_idx_t::width - 1, 0)).x << "\n";
                } else {
                    OVFIFO.write(data);
                    std::cout << "[OVFIFO " << nibble_K << "] "
                              << bls12_377_p(data(bls12_377_idx_t::width - 1, 0)).x << "\n";
                }
                fill_B[nibble_K] = !fill_B[nibble_K];
            }
        }
    }

    bls12_377_idx_t result;

msm_arr_dataflow_3:
    for (int i = 0; i < num_padd_ops; i++) {
        data = OVFIFO.read();
        nibble_K = data(NIBBLE_RANGE_IDX);
        result = B[nibble_K].read();
        CFIFO.write((nibble_K, result, data(bls12_377_idx_t::width - 1, 0)));
    }
}

/*
 * Algorithm Loop 2: Combining the bucket partial sums
 * Each element of GBUFF_P represents the accumulated sum of points belonging to the
 * corresponding bucket.
 * result = sigma(k*GBUFF_P[k])
 * Algorithm Loop 3: Combining G_k's
 * Each element of GBUFF_P represents the weighted sum of bucket elements for the
 * corresponding chunk position
 * i.e. GBUFF_P[k] = 1*B[k][1] + 2*B[k][2] + ...
 * result = sigma(2^kc*GBUFF_P[k])
 */

bls12_377_idx_t alg_loop_2and3(bls12_377_idx_t GBUFF_P2D[NUM_CHUNKS][TWO_RAISED_CHUNK_SIZE],
                               hls::stream<dbl_bls12_377_idx_t> &padd_input_loop_2and3_fifo,
                               hls::stream<bls12_377_idx_t> &padd_output_loop_2and3_fifo) {
    bls12_377_idx_t B_l = 0;
    bls12_377_idx_t s[NUM_CHUNKS];
    bls12_377_idx_t G_k_arr[NUM_CHUNKS];
msm_arr_dataflow_5:
    for (int l = TWO_RAISED_CHUNK_SIZE - 1; l > 0; l--) {
    msm_arr_label0:
        for (int k = 0; k < NUM_CHUNKS; k++) {
#pragma HLS unroll
#pragma HLS dependence variable = s RAW false
            B_l = (GBUFF_P2D[k][l]);
            padd_input_loop_2and3_fifo.write((s[k], B_l));
            s[k] = padd_output_loop_2and3_fifo.read();
        }
    msm_arr_label1:
        for (int k = 0; k < NUM_CHUNKS; k++) {
#pragma HLS unroll
#pragma HLS dependence variable = G_k_arr RAW false
            padd_input_loop_2and3_fifo.write((G_k_arr[k], s[k]));
            G_k_arr[k] = padd_output_loop_2and3_fifo.read();
        }
    }

    bls12_377_idx_t G = 0, G_itr = 0;
    G = bls12_377_idx_t(G_k_arr[NUM_CHUNKS - 1]);
msm_arr_dataflow_6:
    for (int k = NUM_CHUNKS - 2; k > 0; k--) {
        G_itr = G;
        for (int k = 0; k < CHUNK_SIZE; k++) {
#pragma HLS pipeline off
            padd_input_loop_2and3_fifo.write((G_itr, G_itr));
            G_itr = padd_output_loop_2and3_fifo.read();
        }
        padd_input_loop_2and3_fifo.write((G_itr, G_k_arr[k]));
        G = padd_output_loop_2and3_fifo.read();
    }

    return G;
}

/*
 * Top function to have these ports:
 * Write point data to GBUFF_P
 *
 * for (int i = 0; i < NUM_POINTS; i++) {
 *   #pragma HLS pipeline II = 1
 *   #pragma HLS dependence variable = GBUFF_P RAW false
 *   GBUFF_P[i] = (P_arr_x[i], P_arr_y[i], P_arr_z[i]);
 * }
 *
 */

void msm_arr(fr_t K_arr[NUM_POINTS], N_t cnt_bucket_chunks[NUM_CHUNKS][TWO_RAISED_CHUNK_SIZE],
             hls::stream<N_t> &num_padd_ops, N_t total_num_padd_ops,
             bls12_377_idx_t GBUFF_P2D[NUM_CHUNKS][TWO_RAISED_CHUNK_SIZE],
             hls::stream<dbl_bls12_377_idx_k_chunk_t> &padd_input_bucket_fifo,
             hls::stream<bls12_377_idx_k_t> padd_output_fifo[NUM_CHUNKS]) {
    fr_t GBUFF_K[NUM_POINTS];
    /*
     * Loop 0: Populating global buffers
     */
    //     for (int i = 0; i < NUM_POINTS; i++) {
    // #pragma HLS pipeline II = 1
    // #pragma HLS dependence variable = GBUFF_K RAW false
    //         GBUFF_K[i] = K_arr[i];
    //     }

    /*
     * Algorithm Loop 1: accumumlating bucket-wise partial sums for each chunk position
     */

#pragma HLS dataflow

#pragma HLS array_partition variable = GBUFF_P2D type = cyclic factor = 43 dim = 1
    chunk_t nibble_K;
    rem_chunk_t rem_nibble_K;
    // N_t cnt_bucket_chunks[NUM_CHUNKS][TWO_RAISED_CHUNK_SIZE];
#pragma HLS array_partition variable = cnt_bucket_chunks type = cyclic factor = 43 dim = 1

    //     for (int i = 0; i < NUM_CHUNKS; i++) {
    // #pragma HLS dependence variable = cnt_bucket_chunks RAW false
    //         for (int j = 0; j < TWO_RAISED_CHUNK_SIZE; j++) {
    // #pragma HLS dependence variable = cnt_bucket_chunks RAW false
    //             cnt_bucket_chunks[i][j] = count_stream.read();
    //         }
    //     }

    N_t num_padd_ops_local[NUM_CHUNKS];
#pragma HLS array_partition variable = num_padd_ops_local type = cyclic factor = 43 dim = 1
    for (int i = 0; i < NUM_CHUNKS; i++) num_padd_ops_local[i] = num_padd_ops.read();

    hls::stream<bls12_377_idx_k_t> BFIFO[NUM_CHUNKS];      // Bucket fifos for each chunk position
    hls::stream<dbl_bls12_377_idx_k_t> CFIFO[NUM_CHUNKS];  // PADD FIFOS

    /*
     * TODO: modify index factor and ni iterator upper limit according to design parameters
     */
    N_t ni = 0;
msm_arr_dataflow_0:
    for (N_t i = 0; i < NUM_POINTS; i++) {
        for (N_t ni = 0; ni < NUM_CHUNKS - 1; ni = ni + 1) {
            nibble_K = K_arr[i](((ni + 1) * 6) - 1, ni * 6);
            if(nibble_K(chunk_t::width-1, chunk_t::width-1)==1){
                // subtract 2^chunk_width from nibble_K and add one to next chunk value
            }
            BFIFO[ni].write((nibble_K, i));
        }
        rem_nibble_K = K_arr[i](fr_t::width - 1, (NUM_CHUNKS - 1) * 6);
        BFIFO[NUM_CHUNKS - 1].write((rem_nibble_K, i));
    }

    for (N_t ni = 0; ni < NUM_CHUNKS - 1; ni = ni + 1) {
#pragma HLS unroll
        bucket_process(cnt_bucket_chunks[ni], num_padd_ops_local[ni], BFIFO[ni],
                       padd_output_fifo[ni], GBUFF_P2D[ni], CFIFO[ni]);
    }
    rem_bucket_process(cnt_bucket_chunks[NUM_CHUNKS - 1], num_padd_ops_local[NUM_CHUNKS - 1],
                       BFIFO[NUM_CHUNKS - 1], padd_output_fifo[NUM_CHUNKS - 1],
                       GBUFF_P2D[NUM_CHUNKS - 1], CFIFO[NUM_CHUNKS - 1]);

    // ---- Padd operations ----
    fp_t iter_padd_ops = 0;
    bool padd_done = false, valid_data = false;
    N_t total_padd_count = 0;
    dbl_bls12_377_idx_k_t input_point_pair;

#pragma HLS STREAM variable = padd_input_bucket_fifo depth = 64
msm_arr_dataflow_4:
    while (total_padd_count < total_num_padd_ops) {
        if (!CFIFO[0].empty()) {
            input_point_pair = CFIFO[0].read();
            padd_input_bucket_fifo.write(((ap_uint<LOG_NUM_CHUNKS>)0, input_point_pair));
            total_padd_count++;
        } else if (!CFIFO[1].empty()) {
            input_point_pair = CFIFO[1].read();
            padd_input_bucket_fifo.write(((ap_uint<LOG_NUM_CHUNKS>)1, input_point_pair));
            total_padd_count++;
        } else if (!CFIFO[2].empty()) {
            input_point_pair = CFIFO[2].read();
            padd_input_bucket_fifo.write(((ap_uint<LOG_NUM_CHUNKS>)2, input_point_pair));
            total_padd_count++;
        } else if (!CFIFO[3].empty()) {
            input_point_pair = CFIFO[3].read();
            padd_input_bucket_fifo.write(((ap_uint<LOG_NUM_CHUNKS>)3, input_point_pair));
            total_padd_count++;
        } else if (!CFIFO[4].empty()) {
            input_point_pair = CFIFO[4].read();
            padd_input_bucket_fifo.write(((ap_uint<LOG_NUM_CHUNKS>)4, input_point_pair));
            total_padd_count++;
        } else if (!CFIFO[5].empty()) {
            input_point_pair = CFIFO[5].read();
            padd_input_bucket_fifo.write(((ap_uint<LOG_NUM_CHUNKS>)5, input_point_pair));
            total_padd_count++;
        } else if (!CFIFO[6].empty()) {
            input_point_pair = CFIFO[6].read();
            padd_input_bucket_fifo.write(((ap_uint<LOG_NUM_CHUNKS>)6, input_point_pair));
            total_padd_count++;
        } else if (!CFIFO[7].empty()) {
            input_point_pair = CFIFO[7].read();
            padd_input_bucket_fifo.write(((ap_uint<LOG_NUM_CHUNKS>)7, input_point_pair));
            total_padd_count++;
        } else if (!CFIFO[8].empty()) {
            input_point_pair = CFIFO[8].read();
            padd_input_bucket_fifo.write(((ap_uint<LOG_NUM_CHUNKS>)8, input_point_pair));
            total_padd_count++;
        } else if (!CFIFO[9].empty()) {
            input_point_pair = CFIFO[9].read();
            padd_input_bucket_fifo.write(((ap_uint<LOG_NUM_CHUNKS>)9, input_point_pair));
            total_padd_count++;
        } else if (!CFIFO[10].empty()) {
            input_point_pair = CFIFO[10].read();
            padd_input_bucket_fifo.write(((ap_uint<LOG_NUM_CHUNKS>)10, input_point_pair));
            total_padd_count++;
        } else if (!CFIFO[11].empty()) {
            input_point_pair = CFIFO[11].read();
            padd_input_bucket_fifo.write(((ap_uint<LOG_NUM_CHUNKS>)11, input_point_pair));
            total_padd_count++;
        } else if (!CFIFO[12].empty()) {
            input_point_pair = CFIFO[12].read();
            padd_input_bucket_fifo.write(((ap_uint<LOG_NUM_CHUNKS>)12, input_point_pair));
            total_padd_count++;
        } else if (!CFIFO[13].empty()) {
            input_point_pair = CFIFO[13].read();
            padd_input_bucket_fifo.write(((ap_uint<LOG_NUM_CHUNKS>)13, input_point_pair));
            total_padd_count++;
        } else if (!CFIFO[14].empty()) {
            input_point_pair = CFIFO[14].read();
            padd_input_bucket_fifo.write(((ap_uint<LOG_NUM_CHUNKS>)14, input_point_pair));
            total_padd_count++;
        } else if (!CFIFO[15].empty()) {
            input_point_pair = CFIFO[15].read();
            padd_input_bucket_fifo.write(((ap_uint<LOG_NUM_CHUNKS>)15, input_point_pair));
            total_padd_count++;
        } else if (!CFIFO[16].empty()) {
            input_point_pair = CFIFO[16].read();
            padd_input_bucket_fifo.write(((ap_uint<LOG_NUM_CHUNKS>)16, input_point_pair));
            total_padd_count++;
        } else if (!CFIFO[17].empty()) {
            input_point_pair = CFIFO[17].read();
            padd_input_bucket_fifo.write(((ap_uint<LOG_NUM_CHUNKS>)17, input_point_pair));
            total_padd_count++;
        } else if (!CFIFO[18].empty()) {
            input_point_pair = CFIFO[18].read();
            padd_input_bucket_fifo.write(((ap_uint<LOG_NUM_CHUNKS>)18, input_point_pair));
            total_padd_count++;
        } else if (!CFIFO[19].empty()) {
            input_point_pair = CFIFO[19].read();
            padd_input_bucket_fifo.write(((ap_uint<LOG_NUM_CHUNKS>)19, input_point_pair));
            total_padd_count++;
        } else if (!CFIFO[20].empty()) {
            input_point_pair = CFIFO[20].read();
            padd_input_bucket_fifo.write(((ap_uint<LOG_NUM_CHUNKS>)20, input_point_pair));
            total_padd_count++;
        } else if (!CFIFO[21].empty()) {
            input_point_pair = CFIFO[21].read();
            padd_input_bucket_fifo.write(((ap_uint<LOG_NUM_CHUNKS>)21, input_point_pair));
            total_padd_count++;
        } else if (!CFIFO[22].empty()) {
            input_point_pair = CFIFO[22].read();
            padd_input_bucket_fifo.write(((ap_uint<LOG_NUM_CHUNKS>)22, input_point_pair));
            total_padd_count++;
        } else if (!CFIFO[23].empty()) {
            input_point_pair = CFIFO[23].read();
            padd_input_bucket_fifo.write(((ap_uint<LOG_NUM_CHUNKS>)23, input_point_pair));
            total_padd_count++;
        } else if (!CFIFO[24].empty()) {
            input_point_pair = CFIFO[24].read();
            padd_input_bucket_fifo.write(((ap_uint<LOG_NUM_CHUNKS>)24, input_point_pair));
            total_padd_count++;
        } else if (!CFIFO[25].empty()) {
            input_point_pair = CFIFO[25].read();
            padd_input_bucket_fifo.write(((ap_uint<LOG_NUM_CHUNKS>)25, input_point_pair));
            total_padd_count++;
        } else if (!CFIFO[26].empty()) {
            input_point_pair = CFIFO[26].read();
            padd_input_bucket_fifo.write(((ap_uint<LOG_NUM_CHUNKS>)26, input_point_pair));
            total_padd_count++;
        } else if (!CFIFO[27].empty()) {
            input_point_pair = CFIFO[27].read();
            padd_input_bucket_fifo.write(((ap_uint<LOG_NUM_CHUNKS>)27, input_point_pair));
            total_padd_count++;
        } else if (!CFIFO[28].empty()) {
            input_point_pair = CFIFO[28].read();
            padd_input_bucket_fifo.write(((ap_uint<LOG_NUM_CHUNKS>)28, input_point_pair));
            total_padd_count++;
        } else if (!CFIFO[29].empty()) {
            input_point_pair = CFIFO[29].read();
            padd_input_bucket_fifo.write(((ap_uint<LOG_NUM_CHUNKS>)29, input_point_pair));
            total_padd_count++;
        } else if (!CFIFO[30].empty()) {
            input_point_pair = CFIFO[30].read();
            padd_input_bucket_fifo.write(((ap_uint<LOG_NUM_CHUNKS>)30, input_point_pair));
            total_padd_count++;
        } else if (!CFIFO[31].empty()) {
            input_point_pair = CFIFO[31].read();
            padd_input_bucket_fifo.write(((ap_uint<LOG_NUM_CHUNKS>)31, input_point_pair));
            total_padd_count++;
        } else if (!CFIFO[32].empty()) {
            input_point_pair = CFIFO[32].read();
            padd_input_bucket_fifo.write(((ap_uint<LOG_NUM_CHUNKS>)32, input_point_pair));
            total_padd_count++;
        } else if (!CFIFO[33].empty()) {
            input_point_pair = CFIFO[33].read();
            padd_input_bucket_fifo.write(((ap_uint<LOG_NUM_CHUNKS>)33, input_point_pair));
            total_padd_count++;
        } else if (!CFIFO[34].empty()) {
            input_point_pair = CFIFO[34].read();
            padd_input_bucket_fifo.write(((ap_uint<LOG_NUM_CHUNKS>)34, input_point_pair));
            total_padd_count++;
        } else if (!CFIFO[35].empty()) {
            input_point_pair = CFIFO[35].read();
            padd_input_bucket_fifo.write(((ap_uint<LOG_NUM_CHUNKS>)35, input_point_pair));
            total_padd_count++;
        } else if (!CFIFO[36].empty()) {
            input_point_pair = CFIFO[36].read();
            padd_input_bucket_fifo.write(((ap_uint<LOG_NUM_CHUNKS>)36, input_point_pair));
            total_padd_count++;
        } else if (!CFIFO[37].empty()) {
            input_point_pair = CFIFO[37].read();
            padd_input_bucket_fifo.write(((ap_uint<LOG_NUM_CHUNKS>)37, input_point_pair));
            total_padd_count++;
        } else if (!CFIFO[38].empty()) {
            input_point_pair = CFIFO[38].read();
            padd_input_bucket_fifo.write(((ap_uint<LOG_NUM_CHUNKS>)38, input_point_pair));
            total_padd_count++;
        } else if (!CFIFO[39].empty()) {
            input_point_pair = CFIFO[39].read();
            padd_input_bucket_fifo.write(((ap_uint<LOG_NUM_CHUNKS>)39, input_point_pair));
            total_padd_count++;
        } else if (!CFIFO[40].empty()) {
            input_point_pair = CFIFO[40].read();
            padd_input_bucket_fifo.write(((ap_uint<LOG_NUM_CHUNKS>)40, input_point_pair));
            total_padd_count++;
        } else if (!CFIFO[41].empty()) {
            input_point_pair = CFIFO[41].read();
            padd_input_bucket_fifo.write(((ap_uint<LOG_NUM_CHUNKS>)41, input_point_pair));
            total_padd_count++;
        } else if (!CFIFO[42].empty()) {
            input_point_pair = CFIFO[42].read();
            padd_input_bucket_fifo.write(((ap_uint<LOG_NUM_CHUNKS>)42, input_point_pair));
            total_padd_count++;
        }
    }
}

void padd_input_load_unit(fp_t P_arr_x[NUM_POINTS], fp_t P_arr_y[NUM_POINTS],
                          fp_t P_arr_z[NUM_POINTS], N_t total_num_padd_ops,
                          bls12_377_coord_t scratch_pad[SCRATCHPAD_SIZE],
                          hls::stream<ap_uint<LOG_SCRATCHPAD_SIZE>> &free_fifo,
                          hls::stream<dbl_bls12_377_idx_k_chunk_t> &padd_input_bucket_fifo,
                          hls::stream<dbl_bls12_377_idx_t> &padd_input_loop_2and3_fifo,
                          hls::stream<dbl_bls12_377_coord_k_chunk_t> &padd_input_fifo) {
#pragma HLS inline
#pragma HLS bind_storage variable = scratch_pad type = RAM_1P
    ap_uint<LOG_NUM_CHUNKS> chunk_num;
    ap_uint<CHUNK_SIZE> nibble_K;
    fp_t p1_x, p1_y, p1_z, p2_x, p2_y, p2_z;
    N_t itr_bucket = 0, itr_loop2_3 = 0;
    N_t p1_addr, p2_addr, point_addr;
    while (itr_bucket < total_num_padd_ops ||
           itr_loop2_3 < (TWO_RAISED_CHUNK_SIZE - 1) * NUM_CHUNKS * 2 + NUM_CHUNKS - 2) {
#pragma HLS dependence variable = scratch_pad RAW false
        if (itr_bucket < total_num_padd_ops) {
#pragma HLS dependence variable = scratch_pad RAW false
            (chunk_num, nibble_K, p1_addr, p2_addr) = padd_input_bucket_fifo.read();

            if (p1_addr(N_t::width - 1, N_t::width - 1) == 0)
                (p1_x, p1_y, p1_z) = (P_arr_x[p1_addr], P_arr_y[p1_addr], P_arr_z[p1_addr]);
            else {
                free_fifo.write(p1_addr(LOG_SCRATCHPAD_SIZE - 1, 0));
                (p1_x, p1_y, p1_z) = scratch_pad[p1_addr(LOG_SCRATCHPAD_SIZE - 1, 0)];
            }

            if (p2_addr(N_t::width - 1, N_t::width - 1) == 0)
                (p2_x, p2_y, p2_z) = (P_arr_x[p2_addr], P_arr_y[p2_addr], P_arr_z[p2_addr]);
            else {
                free_fifo.write(p2_addr(LOG_SCRATCHPAD_SIZE - 1, 0));
                (p2_x, p2_y, p2_z) = scratch_pad[p2_addr(LOG_SCRATCHPAD_SIZE - 1, 0)];
            }
            // (p1_x, p1_y, p1_z) = load_point(p1_addr);
            // (p2_x, p2_y, p2_z) = load_point(p2_addr);
            // NOTE: p1_addr, p2_addr can be locations from GBUFF_P as well as scratch pad, use MSB
            // of address to distinguish between both

            padd_input_fifo.write((chunk_num, nibble_K, p1_x, p1_y, p1_z, p2_x, p2_y, p2_z));
            itr_bucket++;
        } else if (itr_loop2_3 < (TWO_RAISED_CHUNK_SIZE - 1) * NUM_CHUNKS * 2 + NUM_CHUNKS - 2) {
#pragma HLS dependence variable = scratch_pad RAW false
            (p1_addr, p2_addr) = padd_input_loop_2and3_fifo.read();
            free_fifo.write(p1_addr(LOG_SCRATCHPAD_SIZE - 1, 0));
            (p1_x, p1_y, p1_z) = scratch_pad[p1_addr(LOG_SCRATCHPAD_SIZE - 1, 0)];
            // (p1_x, p1_y, p1_z) = load_point_loop_2and3(p1_addr);
            free_fifo.write(p2_addr(LOG_SCRATCHPAD_SIZE - 1, 0));
            (p2_x, p2_y, p2_z) = scratch_pad[p2_addr(LOG_SCRATCHPAD_SIZE - 1, 0)];
            // (p2_x, p2_y, p2_z) = load_point_loop_2and3(p2_addr);

            padd_input_fifo.write(
                (0x3f, (ap_uint<CHUNK_SIZE>)0, p1_x, p1_y, p1_z, p2_x, p2_y, p2_z));
            itr_loop2_3++;
        }
    }
}

void dataflow_padd_unit(N_t total_num_padd_ops,
                        hls::stream<dbl_bls12_377_coord_k_chunk_t> &padd_input_fifo,
                        hls::stream<bls12_377_coord_k_chunk_t> &padd_output_fifo) {
#pragma HLS inline
    ap_uint<LOG_NUM_CHUNKS> chunk_num;
    ap_uint<CHUNK_SIZE> nibble_K;
    fp_t p1_x, p1_y, p1_z, p2_x, p2_y, p2_z;
    bls12_377_p sum(0, 1, 0);

msm_arr_dataflow_padd:
    for (int i = 0;
         i < total_num_padd_ops + (TWO_RAISED_CHUNK_SIZE - 1) * NUM_CHUNKS * 2 + NUM_CHUNKS - 2;
         i++) {
        // TODO: read from padd_input queue
        (chunk_num, nibble_K, p1_x, p1_y, p1_z, p2_x, p2_y, p2_z) = padd_input_fifo.read();
        // TODO: perform padd
        bls12_377_p a(p1_x, p1_y, p1_z), b(p2_x, p2_y, p2_z);
        sum = padd(a, b);
        // TODO: write to padd_output queue
        padd_output_fifo.write((chunk_num, nibble_K, sum.x, sum.y, sum.z));
    }
}

void padd_output_store_unit(N_t total_num_padd_ops,
                            hls::stream<bls12_377_coord_k_chunk_t> &padd_output_fifo,
                            bls12_377_coord_t scratch_pad[SCRATCHPAD_SIZE],
                            hls::stream<ap_uint<LOG_SCRATCHPAD_SIZE>> &free_fifo,
                            hls::stream<bls12_377_idx_k_t> padd_output_bucket_fifo[NUM_CHUNKS],
                            hls::stream<bls12_377_idx_t> &padd_output_loop_2and3_fifo) {
#pragma HLS inline
    fp_t sum_x, sum_y, sum_z;
    ap_uint<LOG_NUM_CHUNKS> chunk_num;
    ap_uint<CHUNK_SIZE> nibble_K;
    N_t p1_addr, p2_addr, point_addr;
    bool first_march = true;
    N_t free_addr = 0;

    for (int i = 0;
         i < total_num_padd_ops + (TWO_RAISED_CHUNK_SIZE - 1) * NUM_CHUNKS * 2 + NUM_CHUNKS - 2;
         i++) {
        (chunk_num, nibble_K, sum_x, sum_y, sum_z) = padd_output_fifo.read();

        if (first_march) {
            scratch_pad[free_addr] = (sum_x, sum_y, sum_z);
            point_addr = free_addr;
            free_addr++;
            if (free_addr == SCRATCHPAD_SIZE - 1) first_march = false;
        } else {
            point_addr = free_fifo.read();
            scratch_pad[point_addr] = (sum_x, sum_y, sum_z);
        }

        // point_addr = store_point(bls12_377_p(sum_x, sum_y, sum_z));
        if (chunk_num == 0x3f)
            padd_output_loop_2and3_fifo.write(point_addr);
        else
            padd_output_bucket_fifo[chunk_num].write((nibble_K, point_addr));
    }
}

void padd_unit(fp_t P_arr_x[NUM_POINTS], fp_t P_arr_y[NUM_POINTS], fp_t P_arr_z[NUM_POINTS],
               N_t total_num_padd_ops,
               hls::stream<dbl_bls12_377_idx_k_chunk_t> &padd_input_bucket_fifo,
               hls::stream<bls12_377_idx_k_t> padd_output_bucket_fifo[NUM_CHUNKS],
               hls::stream<dbl_bls12_377_idx_t> &padd_input_loop_2and3_fifo,
               hls::stream<bls12_377_idx_t> &padd_output_loop_2and3_fifo) {
    bls12_377_coord_t scratch_pad[SCRATCHPAD_SIZE];
    hls::stream<ap_uint<LOG_SCRATCHPAD_SIZE>> free_fifo;
    hls::stream<dbl_bls12_377_coord_k_chunk_t> padd_input_fifo;
    hls::stream<bls12_377_coord_k_chunk_t> padd_output_fifo;
#pragma HLS dataflow
    // TODO: separate bucket and loop2and3 processes and write to two queues
    padd_input_load_unit(P_arr_x, P_arr_y, P_arr_z, total_num_padd_ops, scratch_pad, free_fifo,
                         padd_input_bucket_fifo, padd_input_loop_2and3_fifo, padd_input_fifo);

    // TODO: if two processes can't write to same queue, read from both queues and write to
    // padd_input with some metadata

    dataflow_padd_unit(total_num_padd_ops, padd_input_fifo, padd_output_fifo);

    // TODO: route entries from padd_output to respective processes (bucket or loop_2and3)
    padd_output_store_unit(total_num_padd_ops, padd_output_fifo, scratch_pad, free_fifo,
                           padd_output_bucket_fifo, padd_output_loop_2and3_fifo);
}

void top(fp_t P_arr_x[NUM_POINTS], fp_t P_arr_y[NUM_POINTS], fp_t P_arr_z[NUM_POINTS],
         fr_t K_arr[NUM_POINTS], N_t cnt_bucket_chunks[NUM_CHUNKS][TWO_RAISED_CHUNK_SIZE],
         hls::stream<N_t> &num_padd_ops, N_t total_num_padd_ops) {
#pragma HLS dataflow
    bls12_377_idx_t GBUFF_P2D[NUM_CHUNKS][TWO_RAISED_CHUNK_SIZE];
    hls::stream<dbl_bls12_377_idx_k_chunk_t> padd_input_bucket_fifo;
    hls::stream<bls12_377_idx_k_t> padd_output_fifo[NUM_CHUNKS];
    hls::stream<dbl_bls12_377_idx_t> padd_input_loop_2and3_fifo;
    hls::stream<bls12_377_idx_t> padd_output_loop_2and3_fifo;

    msm_arr(K_arr, cnt_bucket_chunks, num_padd_ops, total_num_padd_ops, GBUFF_P2D,
            padd_input_bucket_fifo, padd_output_fifo);

    alg_loop_2and3(GBUFF_P2D, padd_input_loop_2and3_fifo, padd_output_loop_2and3_fifo);

    padd_unit(P_arr_x, P_arr_y, P_arr_z, total_num_padd_ops, padd_input_bucket_fifo,
              padd_output_fifo, padd_input_loop_2and3_fifo, padd_output_loop_2and3_fifo);
}
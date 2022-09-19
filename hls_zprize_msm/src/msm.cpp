#include "msm.h"

void bucket_unit(N_t num_padd_ops, hls::stream<bn_coord_k_t> &BFIFO_1, u32 B_i[30],
                 N_t count_B[16]) {
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
    fp_t iter_padd_ops = 0;
    fp_t padd_count[16] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
    fp_t debug_ctr = 0;
    hls::stream<bn_coord_k_t> BFIFO_2("Bucket fifo 2"), OVFIFO("Overflow fifo");
    // Pre-bucket FIFOs
    hls::stream<dbl_bn_coord_k_t> CFIFO("central fifo");  // PADD FIFOS
    fp_t count_BF1 = 0, count_BF2 = 0;
#pragma HLS STREAM variable = BFIFO_2 depth = 15
#pragma HLS STREAM variable = OVFIFO depth = 15
#pragma HLS STREAM variable = CFIFO depth = 15
#pragma HLS dataflow
    bn_coord_k_t data;
    bool valid_data = false;
    while ((count_BF1 < NUM_POINTS) || (count_BF2 < num_padd_ops)) {
#pragma HLS pipeline II = 1
        if (count_BF1 < NUM_POINTS && !BFIFO_1.empty()) {
            data = BFIFO_1.read();
            count_BF1 += 1;
            valid_data = true;
            // take care of single entry buckets i.e. count_B==1
            if (count_B[data(NIBBLE_RANGE)] == 1) {
                B_i[2 * (data(NIBBLE_RANGE) - 1)] = data(38, 13);
                B_i[2 * (data(NIBBLE_RANGE) - 1) + 1] = data(12, 0);
                valid_data = false;
            }
        } else if (count_BF2 < num_padd_ops && !BFIFO_2.empty()) {
            data = BFIFO_2.read();
            count_BF2 += 1;
            valid_data = true;
            // Check for last bucket element here.
            // update padd count here
            // if last element, put in B_i and change valid to false
            padd_count[data(NIBBLE_RANGE)] += 1;
            if (padd_count[data(NIBBLE_RANGE)] == count_B[data(NIBBLE_RANGE)] - 1) {
                B_i[2 * (data(NIBBLE_RANGE) - 1)] = data(38, 13);
                B_i[2 * (data(NIBBLE_RANGE) - 1) + 1] = data(12, 0);
                valid_data = false;
            }
        } else
            valid_data = false;

        if (valid_data) {
            nibble_K = data(NIBBLE_RANGE);
            if (nibble_K != 0) {
                if (fill_B[nibble_K])
                    B[nibble_K].write(data(38, 0));
                else
                    OVFIFO.write(data);
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
        CFIFO.write((nibble_K, result, data(38, 0)));
    }

    // ---- Padd operations ----
    bls12_377_p sum(0, 1, 0);
    fp_t p1_x, p1_y, p1_z, p2_x, p2_y, p2_z;
bucket_unit_label1:
    for (int i = 0; i < num_padd_ops; i++) {
        (nibble_K, p1_x, p1_y, p1_z, p2_x, p2_y, p2_z) = CFIFO.read();
        bls12_377_p a(p1_x, p1_y, p1_z), b(p2_x, p2_y, p2_z);
        sum = padd(a, b);
        iter_padd_ops++;
        BFIFO_2.write((nibble_K, sum.x, sum.y, sum.z));
    }
}

void msm_arr(fp_t P_arr_x[NUM_POINTS], fp_t P_arr_y[NUM_POINTS], fp_t P_arr_z[NUM_POINTS],
             fp_t K_arr[NUM_POINTS], u32 B_i[30]) {
    hls::stream<bn_coord_k_t> BFIFO_1("Bucket fifo 1");
#pragma HLS STREAM variable = BFIFO_1 depth = 16

    bls12_377_coord_t GBUFF_P[NUM_POINTS];
    fp_t GBUFF_K[NUM_POINTS];
    N_t count_B[16] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
    ap_uint<4> nibble_K;
    N_t num_padd_ops = 0;
    int ni = 0;

    // store incoming stream data in on-chip global buffer
    // incoming stream {P_x, P_y} and {P_z, k}
    for (int i = 0; i < NUM_POINTS; i++) {
#pragma HLS pipeline II = 1
        GBUFF_P[i] = (P_arr_x[i], P_arr_y[i], P_arr_z[i]);
        // std::cout<<"[GBUFF_P] " << P_arr_x[i] << " " << P_arr_y[i] << " " <<
        // P_arr_z[i] << "\n";
        GBUFF_K[i] = K_arr[i];
    }

    // for (ni = 0; ni < fp_t::width / 4; ni++) {
    // TODO: count_B[i]++ limits II to 2
    for (int i = 0; i < NUM_POINTS; i++) {
#pragma HLS pipeline II = 1
        nibble_K = GBUFF_K[i](((ni + 1) << 2) - 1, ni << 2);
        count_B[nibble_K] += 1;
        BFIFO_1.write((nibble_K, GBUFF_P[i]));
    }
    // TODO: If BFIFO_1 is full, the system stalls because dataflow is not used.
    // TODO: Merge above and below loops to reduce fixed cost
    // logic - if(count_B[nibble_K] > 0) (before the +=1 statement in above loop) then increment
    // num_padd_ops
    // ---- Determine #padd ops ----
    for (int i = 1; i < 16; i++) {
#pragma HLS pipeline II = 1
        if (count_B[i] != 0) num_padd_ops += (count_B[i] - 1);
    }
    // }
    std::cout << "\nexpected number of padd ops = " << num_padd_ops << "\n";

    bucket_unit(num_padd_ops, BFIFO_1, B_i, count_B);

    // TODO: Once bucket unit is done, stream out contents of B_i

    /*
    // Combining the bucket partial sums
    fp_t x, y, z;
    bls12_377_p s(0, 1, 0), G_k(0, 1, 0);
    for (int i = 15; i < 1; i++) {
        (x, y, z) = (B_i[2 * i](25, 0), B_i[2 * i - 1](12, 0));
        bls12_377_p B_l(x, y, z);
        s = padd(s, B_l);
        G_k = padd(G_k, s);
    }
    */
}

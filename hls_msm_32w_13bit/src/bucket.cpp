#include "msm.h"

void bucket_unit_csim(coeff_t num_padd_ops, hls::stream<bn_coord_k_t> &BFIFO_1,
                      u32 B_i[30], coeff_t count_B[16]) {
  // ---- Buckets ----
  bool fill_B[16] = {true, true, true, true, true, true, true, true,
                     true, true, true, true, true, true, true, true};
  hls::stream<bn128_coord_t> B[16];
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
  coeff_t padd_count[16] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
  coeff_t debug_ctr = 0;
  hls::stream<bn_coord_k_t> BFIFO_2("Bucket fifo 2"), OVFIFO("Overflow fifo");
  // Pre-bucket FIFOs
  hls::stream<dbl_bn_coord_k_t> CFIFO("central fifo"); // PADD FIFOS
  coeff_t count_BF1 = 0, count_BF2 = 0;
    #pragma HLS STREAM variable = BFIFO_2 depth = 15
    #pragma HLS STREAM variable = OVFIFO depth = 15
    #pragma HLS STREAM variable = CFIFO depth = 32
    #pragma HLS dataflow
  bn_coord_k_t data;
  bool valid_data = false;
  int loop_2_iter = 0, loop_3_iter = 0;
  while ((count_BF1 < NUM_POINTS) || (count_BF2 < num_padd_ops)) {
    if (count_BF1 < NUM_POINTS && !BFIFO_1.empty()) {
      data = BFIFO_1.read();
      count_BF1 += 1;
      valid_data = true;
      // take care of single entry buckets i.e. count_B==1
      if (count_B[data(42, 39)] == 1) {
        B_i[2 * (data(42, 39) - 1)] = data(38, 13);
        B_i[2 * (data(42, 39) - 1) + 1] = data(12, 0);
        valid_data = false;
        // std::cout<<"[Bucket_" << data(42, 39) << "] All padd ops done.\n";
      }
      // else
      // std::cout<<"[BFIFO_1_read] " << "Bucket-" << data(42, 39) << " " <<
      // data(38,26) << " " << data(25, 13) << " " << data(12, 0) << "\n";
    } else if (count_BF2 < num_padd_ops && !BFIFO_2.empty()) {
      data = BFIFO_2.read();
      count_BF2 += 1;
      valid_data = true;
      // Check for last bucket element here.
      // update padd count here
      // if last element, put in B_i and change valid to false
      padd_count[data(42, 39)] += 1;
      if (padd_count[data(42, 39)] == count_B[data(42, 39)] - 1) {
        B_i[2 * (data(42, 39) - 1)] = data(38, 13);
        B_i[2 * (data(42, 39) - 1) + 1] = data(12, 0);
        valid_data = false;
        // std::cout<<"[Bucket_" << data(42, 39) << "] All padd ops done.\n";
      }
      // else
      // std::cout<<"[BFIFO_2_read] " << "Bucket-" << data(42, 39) << " " <<
      // data(38,26) << " " << data(25, 13) << " " << data(12, 0) << "\n";
    } else
      valid_data = false;

    if (valid_data) {
      nibble_K = data(42, 39);
      if (nibble_K != 0) {
        if (fill_B[nibble_K])
          B[nibble_K].write(data(38, 0));
        else
          OVFIFO.write(data);
        fill_B[nibble_K] = !fill_B[nibble_K];
      }
    }

    // todo: use splitting as shown in example of ug1399, but conditional data
    // duplication
    bn128_coord_t result;
    coeff_t p_x, p_y, p_z;
    u32 b_data;

    if (loop_2_iter < num_padd_ops && !OVFIFO.empty()) {
      data = OVFIFO.read();
      nibble_K = data(42, 39);
      result = B[nibble_K].read();
      // std::cout<<"[CFIFO_write_" << loop_2_iter << "] Bucket-" << nibble_K <<
      // " " << data(38,26) << " " << data(25, 13) << " " << data(12, 0) << " "
      // << result(38,26) << " " << result(25, 13) << " " << result(12, 0) <<
      // "\n";
      CFIFO.write((nibble_K, result, data(38, 0)));
      loop_2_iter++;
    }

    // ---- Padd operations ----
    bn128_p sum(0, 1, 0);
    coeff_t p1_x, p1_y, p1_z, p2_x, p2_y, p2_z;
    if (loop_3_iter < num_padd_ops && !CFIFO.empty()) {
      (nibble_K, p1_x, p1_y, p1_z, p2_x, p2_y, p2_z) = CFIFO.read();
      std::cout << "[padd_" << loop_3_iter << "] " << p1_x << " " << p1_y << " "
                << p1_z << " " << p2_x << " " << p2_y << " " << p2_z << "\n";
      bn128_p a(p1_x, p1_y, p1_z), b(p2_x, p2_y, p2_z);
      sum = padd(a, b);
      BFIFO_2.write((nibble_K, sum.x, sum.y, sum.z));
      loop_3_iter++;
    }
  }
}

void bucket_unit_csim_sr(coeff_t num_padd_ops, hls::stream<bn_coord_k_t> &BFIFO_1,
                      u32 B_i[30], coeff_t count_B[16]) {
  // ---- Buckets ----
  bool fill_B[16] = {true, true, true, true, true, true, true, true,
                     true, true, true, true, true, true, true, true};
  bn128_coord_t B[16][BDEPTH];

  ap_uint<4> nibble_K;
  coeff_t padd_count[16] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
  coeff_t debug_ctr = 0;
  hls::stream<bn_coord_k_t> BFIFO_2("Bucket fifo 2");
  // Pre-bucket FIFOs
  hls::stream<dbl_bn_coord_k_t> CFIFO("central fifo"); // PADD FIFOS
  coeff_t count_BF1 = 0, count_BF2 = 0;
    #pragma HLS STREAM variable = BFIFO_2 depth = 15
    #pragma HLS STREAM variable = OVFIFO depth = 15
    #pragma HLS STREAM variable = CFIFO depth = 48
    #pragma HLS dataflow
  bn_coord_k_t data;
  bool valid_data = false;
  int loop_2_iter = 0, loop_3_iter = 0;
  int bcount[16] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
  int fill_count[16] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
  while ((count_BF1 < NUM_POINTS) || (count_BF2 < num_padd_ops)) {
    #pragma HLS pipeline II = 1
    if (count_BF1 < NUM_POINTS && !BFIFO_1.empty() && !BFIFO_2.full()) {
      data = BFIFO_1.read();
      count_BF1 += 1;
      valid_data = true;
      // take care of single entry buckets i.e. count_B==1
      if (count_B[data(42, 39)] == 1) {
        B_i[2 * (data(42, 39) - 1)] = data(38, 13);
        B_i[2 * (data(42, 39) - 1) + 1] = data(12, 0);
        valid_data = false;
        // std::cout<<"[Bucket_" << data(42, 39) << "] All padd ops done.\n";
      }
    //   else
    //   std::cout<<"[BFIFO_1_read] " << "Bucket-" << data(42, 39) << " " <<
    //   data(38,26) << " " << data(25, 13) << " " << data(12, 0) << "\n";
    } else if (count_BF2 < num_padd_ops && !BFIFO_2.empty()) {
      data = BFIFO_2.read();
      count_BF2 += 1;
      valid_data = true;
      // Check for last bucket element here.
      // update padd count here
      // if last element, put in B_i and change valid to false
      padd_count[data(42, 39)] += 1;
      if (padd_count[data(42, 39)] == count_B[data(42, 39)] - 1) {
        B_i[2 * (data(42, 39) - 1)] = data(38, 13);
        B_i[2 * (data(42, 39) - 1) + 1] = data(12, 0);
        valid_data = false;
        // std::cout<<"[Bucket_" << data(42, 39) << "] All padd ops done.\n";
      }
    //   else
    //   std::cout<<"[BFIFO_2_read] " << "Bucket-" << data(42, 39) << " " <<
    //   data(38,26) << " " << data(25, 13) << " " << data(12, 0) << "\n";
    } else
      valid_data = false;

    if (valid_data) {
      nibble_K = data(42, 39);
      if (nibble_K != 0) {
        for (int i = 0; i < BDEPTH - 1; ++i){
        #pragma HLS unroll
          B[nibble_K][i] = B[nibble_K][i + 1];
        }
        B[nibble_K][BDEPTH - 1] = data(38, 0);
        bcount[nibble_K]+=1;
        fill_count[nibble_K]+=1;
      }
    }

    // todo: use splitting as shown in example of ug1399, but conditional data
    // duplication
    bn128_coord_t result;
    coeff_t p_x, p_y, p_z;
    u32 b_data;

    nibble_K = 0;
    for(int i=1;i<16;i++){
        if(bcount[i]>=2){
            nibble_K = i;
            break;
        }
    }
    
    for(int i=0;i<16;i++)  std::cout<< bcount[i] << " ";
    std::cout<<"| " <<nibble_K<<"\n";

    ap_uint<39> b1, b2;
    if (loop_2_iter < num_padd_ops && nibble_K!=0 && fill_count[nibble_K]>=BDEPTH) {
      b1 = B[nibble_K][0];
      b2 = B[nibble_K][1];
      bcount[nibble_K]-=2;
    //   std::cout<<"[CFIFO_write_" << loop_2_iter << "] Bucket-" << nibble_K <<
    //   " " << b1(38,26) << " " << b1(25, 13) << " " << b1(12, 0) << " "
    //   << b2(38,26) << " " << b2(25, 13) << " " << b2(12, 0) <<
    //   "\n";
      CFIFO.write((nibble_K, b2, b1));
      loop_2_iter++;
    }
  }

    // ---- Padd operations ----
    point_add_unit(CFIFO, BFIFO_2);
}

void point_add_unit(hls::stream<dbl_bn_coord_k_t> &CFIFO, hls::stream<bn_coord_k_t> &BFIFO_2){
    #pragma HLS pipeline enable_flush

    int loop_3_iter = 0;
    bn128_p sum(0, 1, 0);
    coeff_t p1_x, p1_y, p1_z, p2_x, p2_y, p2_z;
    for(int i=0;i<123;i++) {
      (nibble_K, p1_x, p1_y, p1_z, p2_x, p2_y, p2_z) = CFIFO.read();
      std::cout << "[padd_" << loop_3_iter << "] " << p1_x << " " << p1_y << " "
                << p1_z << " " << p2_x << " " << p2_y << " " << p2_z << "\n";
      bn128_p a(p1_x, p1_y, p1_z), b(p2_x, p2_y, p2_z);
      // sum = padd(a, b);
      sum.x = p1_x + p2_x;
      sum.y = p1_y + p2_y;
      sum.z = p1_z + p2_z;
      BFIFO_2.write((nibble_K, sum.x, sum.y, sum.z));
      loop_3_iter++;
    }
}

void bucket_unit_sr(coeff_t num_padd_ops, hls::stream<bn_coord_k_t> &BFIFO_1,
                    u32 B_i[30], coeff_t count_B[16]) {
  // ---- Buckets ----
  bool fill_B[16] = {true, true, true, true, true, true, true, true,
                     true, true, true, true, true, true, true, true};
  bn128_coord_t B[16][BDEPTH];

  ap_uint<4> nibble_K;
  coeff_t iter_padd_ops = 0;
  coeff_t debug_ctr = 0;
  hls::stream<bn_coord_k_t> BFIFO_2("Bucket fifo 2");
  // Pre-bucket FIFOs
  hls::stream<dbl_bn_coord_k_t> CFIFO("central fifo"); // PADD FIFOS
  coeff_t count_BF1 = 0, count_BF2 = 0;
    #pragma HLS STREAM variable = BFIFO_2 depth = 15
    #pragma HLS STREAM variable = CFIFO depth = 32
    #pragma HLS dataflow
  bn_coord_k_t data;
  bool valid_data = false;
  coeff_t padd_count[16] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
  int bcount[16] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
  int fill_count[16] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
  while ((count_BF1 < NUM_POINTS) || (count_BF2 < num_padd_ops)) {
    #pragma HLS pipeline II = 1
    if (count_BF1 < NUM_POINTS && !BFIFO_1.empty()) {
      data = BFIFO_1.read();
      count_BF1 += 1;
      valid_data = true;
      // take care of single entry buckets i.e. count_B==1
      if (count_B[data(42, 39)] == 1) {
        B_i[2 * (data(42, 39) - 1)] = data(38, 13);
        B_i[2 * (data(42, 39) - 1) + 1] = data(12, 0);
        valid_data = false;
      }
    } else if (count_BF2 < num_padd_ops && !BFIFO_2.empty()) {
      data = BFIFO_2.read();
      count_BF2 += 1;
      valid_data = true;
      // Check for last bucket element here.
      // update padd count here
      // if last element, put in B_i and change valid to false
      padd_count[data(42, 39)] += 1;
      if (padd_count[data(42, 39)] == count_B[data(42, 39)] - 1) {
        B_i[2 * (data(42, 39) - 1)] = data(38, 13);
        B_i[2 * (data(42, 39) - 1) + 1] = data(12, 0);
        valid_data = false;
      }
    } else
      valid_data = false;

    if (valid_data) {
      nibble_K = data(42, 39);
      if (nibble_K != 0) {
        for (int i = 0; i < BDEPTH - 1; ++i)
          B[nibble_K][i] = B[nibble_K][i + 1];
        B[nibble_K][BDEPTH - 1] = data(38, 0);
        bcount[nibble_K]+=1;
        fill_count[nibble_K]+=1;
      }
    }
  }

  // todo: use splitting as shown in example of ug1399, but conditional data
  // duplication
  bn128_coord_t result;
  coeff_t p_x, p_y, p_z;
  u32 b_data;

  nibble_K = 0;
  for(int i=1;i<16;i++){
      if(bcount[i]>=2){
          nibble_K = i;
      }
  }

  ap_uint<39> b1, b2;
  for (int i = 0; i < num_padd_ops; ) {
    if(nibble_K!=0 && fill_count[nibble_K]>=BDEPTH){
        i++;
        b1 = B[nibble_K][0];
        b2 = B[nibble_K][1];
        bcount[nibble_K]-=2;
        CFIFO.write((nibble_K, result, data(38, 0)));
    }
  }

  // ---- Padd operations ----
  bn128_p sum(0, 1, 0);
  coeff_t p1_x, p1_y, p1_z, p2_x, p2_y, p2_z;
  for (int i = 0; i < num_padd_ops; i++) {
    #pragma HLS pipeline II = 1
    (nibble_K, p1_x, p1_y, p1_z, p2_x, p2_y, p2_z) = CFIFO.read();
    bn128_p a(p1_x, p1_y, p1_z), b(p2_x, p2_y, p2_z);
    sum = padd(a, b);
    iter_padd_ops++;
    BFIFO_2.write((nibble_K, sum.x, sum.y, sum.z));
  }
}

void bucket_unit(coeff_t num_padd_ops, hls::stream<bn_coord_k_t> &BFIFO_1,
                 u32 B_i[30], coeff_t count_B[16]) {
  // ---- Buckets ----
  bool fill_B[16] = {true, true, true, true, true, true, true, true,
                     true, true, true, true, true, true, true, true};
  hls::stream<bn128_coord_t> B[16];
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
  coeff_t iter_padd_ops = 0;
  coeff_t padd_count[16] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
  coeff_t debug_ctr = 0;
  hls::stream<bn_coord_k_t> BFIFO_2("Bucket fifo 2"), OVFIFO("Overflow fifo");
  // Pre-bucket FIFOs
  hls::stream<dbl_bn_coord_k_t> CFIFO("central fifo"); // PADD FIFOS
  coeff_t count_BF1 = 0, count_BF2 = 0;
    #pragma HLS STREAM variable = BFIFO_2 depth = 15
    #pragma HLS STREAM variable = OVFIFO depth = 15
    #pragma HLS STREAM variable = CFIFO depth = 32
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
      if (count_B[data(42, 39)] == 1) {
        B_i[2 * (data(42, 39) - 1)] = data(38, 13);
        B_i[2 * (data(42, 39) - 1) + 1] = data(12, 0);
        valid_data = false;
      }
    } else if (count_BF2 < num_padd_ops && !BFIFO_2.empty()) {
      data = BFIFO_2.read();
      count_BF2 += 1;
      valid_data = true;
      // Check for last bucket element here.
      // update padd count here
      // if last element, put in B_i and change valid to false
      padd_count[data(42, 39)] += 1;
      if (padd_count[data(42, 39)] == count_B[data(42, 39)] - 1) {
        B_i[2 * (data(42, 39) - 1)] = data(38, 13);
        B_i[2 * (data(42, 39) - 1) + 1] = data(12, 0);
        valid_data = false;
      }
    } else
      valid_data = false;

    if (valid_data) {
      nibble_K = data(42, 39);
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
  bn128_coord_t result;
  coeff_t p_x, p_y, p_z;
  u32 b_data;

  for (int i = 0; i < num_padd_ops; i++) {
    data = OVFIFO.read();
    nibble_K = data(42, 39);
    result = B[nibble_K].read();
    CFIFO.write((nibble_K, result, data(38, 0)));
  }

  // ---- Padd operations ----
  bn128_p sum(0, 1, 0);
  coeff_t p1_x, p1_y, p1_z, p2_x, p2_y, p2_z;
  for (int i = 0; i < num_padd_ops; i++) {
    #pragma HLS pipeline II = 1
    (nibble_K, p1_x, p1_y, p1_z, p2_x, p2_y, p2_z) = CFIFO.read();
    bn128_p a(p1_x, p1_y, p1_z), b(p2_x, p2_y, p2_z);
    sum = padd(a, b);
    iter_padd_ops++;
    BFIFO_2.write((nibble_K, sum.x, sum.y, sum.z));
  }
}

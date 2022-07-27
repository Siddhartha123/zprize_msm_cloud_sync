#include "msm.h"

// #include "msm_test_case.h"

bn128_p scalar_mult(coeff_t K, bn128_p P) {
  // shift-add
  bn128_p product(0, 1, 0);
  for (int i = coeff_t::width - 1; i >= 0; i--) {
    printp(product);
    product = pdouble(product);
    printp(product);
    std::cout << "---\n";
    if (K.test(i)) {
      product = padd(product, P);
    }
  }
  return product;
}

bn128_p small_scalar_mult(ap_uint<4> K, bn128_p P) {
  // shift-add
  bn128_p product(0, 1, 0);
  for (int i = 3; i >= 0; i--) {
    product = pdouble(product);
    if (K.test(i))
      product = padd(product, P);
  }
  return product;
}

bn128_p msm_reference(hls::stream<coeff_t_stream> &K,
                      hls::stream<bn128_p_stream> &P) {
  bn128_p Q(0, 1, 0);
  bn128_p p_temp(0, 1, 0);
  bn128_coord_t P_data;
  for (int i = 0; i < 8; i++) {
    P_data = P.read().value;
    p_temp.x = P_data(38, 26);
    p_temp.y = P_data(25, 13);
    p_temp.z = P_data(12, 0);
    Q = padd(Q, scalar_mult(K.read().value(3, 0), p_temp));
  }
  return Q;
}

void msm_tester(bn128_p P_arr[NUM_POINTS], coeff_t K_arr[NUM_POINTS],
                hls::stream<u32> &input_K, hls::stream<u32> &input_P,
                hls::stream<bn128_p_stream> &B_i) {
  //#pragma HLS INTERFACE axis port = input_K
  //#pragma HLS INTERFACE axis port = input_points
  //#pragma HLS INTERFACE axis port = B_i

#pragma HLS STREAM variable = input_K depth = 64
#pragma HLS STREAM variable = input_P depth = 64
#pragma HLS STREAM variable = B_i depth = 15

  // #pragma HLS INTERFACE s_axilite port = return bundle = ctrl

  std::cout << "-------Multi-scalar multiplication test-------\n";
  coeff_t k_data;
  bn128_coord_t p_data;

  k_data = 0;
  p_data = 0;
  for (int i = 0; i < 8; i++) {
    k_data = K_arr[i];
    p_data = (P_arr[i].x, P_arr[i].y, P_arr[i].z);
    for (int j = 0; j < 24; j++)
      input_P.write(p_data(((j + 1) << 5) - 1, j << 5));
    for (int j = 0; j < 8; j++)
      input_K.write(k_data(((j + 1) << 5) - 1, j << 5));
  }

  coeff_t x, y, z;
  for (int i = 1; i < 16; i++) {
    p_data = B_i.read().value;
    printp(bn128_p(p_data(767, 512), p_data(511, 256), p_data(255, 0)));
  }
  std::cout << "----------------------------------------\n";
}

void msm_arr(coeff_t P_arr_x[NUM_POINTS], coeff_t P_arr_y[NUM_POINTS],
             coeff_t P_arr_z[NUM_POINTS], coeff_t K_arr[NUM_POINTS],
             u32 B_i[30]) {

  hls::stream<bn_coord_k_t> BFIFO_1("Bucket fifo 1");
#pragma HLS STREAM variable = BFIFO_1 depth = 128

  bn128_coord_t GBUFF_P[NUM_POINTS];
  coeff_t GBUFF_K[NUM_POINTS];
  coeff_t count_B[16] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
  ap_uint<4> nibble_K;
  coeff_t num_padd_ops = 0;
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

  // for (ni = 0; ni < coeff_t::width / 4; ni++) {
  // TODO: count_B[i]++ limits II to 2
  for (int i = 0; i < NUM_POINTS; i++) {
#pragma HLS pipeline II = 1
    nibble_K = GBUFF_K[i](((ni + 1) << 2) - 1, ni << 2);
    count_B[nibble_K] += 1;
    BFIFO_1.write((nibble_K, GBUFF_P[i]));
  }
  // TODO: If BFIFO_1 is full, the system stalls because dataflow is not used.

  // ---- Determine #padd ops ----
  for (int i = 1; i < 16; i++) {
#pragma HLS pipeline II = 1
    if (count_B[i] != 0)
      num_padd_ops += (count_B[i] - 1);
  }
  // }
  std::cout << "\nexpected number of padd ops = " << num_padd_ops << "\n";

  bucket_unit_csim_sr(num_padd_ops, BFIFO_1, B_i, count_B);
  //   bucket_unit_sr(num_padd_ops, BFIFO_1, B_i, count_B);

  // Once bucket unit is done, stream out contents of B_i
}

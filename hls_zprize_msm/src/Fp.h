/*
BLS12-377 curve
Library for base field
*/

#ifndef FP_H
#define FP_H

#define AP_INT_MAX_W 2048

#include <ap_int.h>

#include "hls_stream.h"

// typedef ap_uint<377> fp_t;
// typedef ap_uint<378> fp_ov_t;
// typedef ap_uint<754> double_fp_t;

typedef ap_uint<13> fp_t;
typedef ap_uint<14> fp_ov_t;
typedef ap_uint<26> double_fp_t;

fp_t add_p(fp_t x, fp_t y);
fp_t sub_p(fp_t x, fp_t y);
fp_t mod_p(double_fp_t A);
fp_t mul_p(fp_t x, fp_t y);
fp_t mul3_p(fp_t x);
fp_t square_p(fp_t x);

#endif

/*
BLS12-377 curve
Library for scalar field
*/

#ifndef FR_H
#define FR_H

#define AP_INT_MAX_W 2048

#include <ap_int.h>

#include "hls_stream.h"

// typedef ap_uint<13> fr_t;
// typedef ap_uint<14> fr_ov_t;
// typedef ap_uint<26> double_fr_t;

typedef ap_uint<253> fr_t;
typedef ap_uint<254> fr_ov_t;
typedef ap_uint<506> double_fr_t;

fr_t add_r(fr_t x, fr_t y);
fr_t sub_r(fr_t x, fr_t y);
fr_t mod_r(double_fr_t A);
fr_t mul_r(fr_t x, fr_t y);
fr_t mul3_r(fr_t x);
fr_t square_r(fr_t x);

#endif

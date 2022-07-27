#ifndef FIELD_H
#define FIELD_H

#define AP_INT_MAX_W 2048

#include <ap_int.h>

#include "hls_stream.h"

typedef ap_uint<8> ap_logn_t;
typedef ap_uint<13> coeff_t;
typedef ap_uint<14> coeff_ov_t;
typedef ap_uint<26> double_coeff_t;

coeff_t add(coeff_t x, coeff_t y);
coeff_t sub(coeff_t x, coeff_t y);
coeff_t mod(double_coeff_t A);
coeff_t mul(coeff_t x, coeff_t y);
coeff_t square(coeff_t x);

ap_int<256> m_reduce(ap_int<514> ab);
ap_int<256> m_transform(ap_int<256> a);

#endif

/*
BLS12-377 curve
Library for base field
*/

#include "Fp.h"

fp_t p("1AE3A4617C510EAC63B05C06CA1493B1A22D9F300F5138F1EF3622FBA094800170B5D44300000008508C00000000001", 16);

// fp_t mod(double_fp_t A) { return (fp_t)(A % p); }

fp_t mod_p(double_fp_t A) {
#pragma HLS inline
    double_fp_t t = (A >> 13) + (A >> 17) + (A >> 21);
    double_fp_t tp = (t << 13) + t - (t << 9);
    double_fp_t y = A - tp;
    if (y >= p) y = y - p;
    if (y >= p) y = y - p;
    if (y >= p) y = y - p;
    return (fp_t)y;
}

// modular addition (x + y) mod p
fp_t add_p(fp_t x, fp_t y) {
#pragma HLS inline
    fp_ov_t w = x + y;
    return (fp_t)(w - (w < p ? (fp_t)0 : p));
}

// modular subtraction (x - y) mod p
fp_t sub_p(fp_t x, fp_t y) {
#pragma HLS inline
    fp_ov_t s = x + (x > y ? (fp_t)0 : p);
    return (fp_t)(s - y);
}

// modular multiplication (x * y) mod p
fp_t mul_p(fp_t x, fp_t y) {
#pragma HLS inline
    double_fp_t p = x * y;
    return mod_p(p);
}

// modular multiplication by 3 (3 * x) mod p
fp_t mul3_p(fp_t x) {
#pragma HLS inline
    double_fp_t p = 3 * x;
    return mod_p(p);
}

// modular squaring (x * x) mod p
fp_t square_p(fp_t x) {
#pragma HLS inline
    double_fp_t p = x * x;
    return mod_p(p);
}

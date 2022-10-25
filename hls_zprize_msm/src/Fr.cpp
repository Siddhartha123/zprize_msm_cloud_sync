/*
BLS12-377 curve
Library for scalar field
*/

#include "Fr.h"

fr_t q("7681", 10);

fr_t mod_r(double_fr_t A) { return (fr_t)(A % q); }

// fr_t mod_r(double_fr_t A) {
// #pragma HLS inline
//     double_fr_t t = (A >> 13) + (A >> 17) + (A >> 21);
//     double_fr_t tq = (t << 13) + t - (t << 9);
//     double_fr_t y = A - tq;
//     if (y >= q) y = y - q;
//     if (y >= q) y = y - q;
//     if (y >= q) y = y - q;
//     return (fr_t) y;
// }

// modular addition (x + y) mod q
fr_t add_r(fr_t x, fr_t y) {
#pragma HLS inline
    fr_ov_t w = x + y;
    return (fr_t)(w - (w < q ? (fr_t)0 : q));
}

// modular subtraction (x - y) mod q
fr_t sub_r(fr_t x, fr_t y) {
#pragma HLS inline
    fr_ov_t s = x + (x > y ? (fr_t)0 : q);
    return (fr_t)(s - y);
}

// modular multiplication (x * y) mod q
fr_t mul_r(fr_t x, fr_t y) {
// #pragma HLS inline
    double_fr_t p = x * y;
    return mod_r(p);
}

// modular multiplication by 3 (3 * x) mod q
fr_t mul3_r(fr_t x) {
#pragma HLS inline
    double_fr_t p = 3 * x;
    return mod_r(p);
}

// modular squaring (x * x) mod q
fr_t square_r(fr_t x) {
#pragma HLS inline
    double_fr_t p = x * x;
    return mod_r(p);
}

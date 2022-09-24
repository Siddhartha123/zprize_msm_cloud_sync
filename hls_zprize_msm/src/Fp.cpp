/*
BLS12-377 curve
Library for base field
*/

#include "Fp.h"

fp_t p(
    "1AE3A4617C510EAC63B05C06CA1493B1A22D9F300F5138F1EF3622FBA094800170B5D44300000008508C0000000000"
    "1",
    16);
fp_ov_t m(
    "261508D0CC4060E976C3CA0582EF4F73BBAD0DE6776B1A06AF2D488D85A6D02D0ED687789C42A591F9FD58C5E4DAFF"
    "C",
    16);

// fp_t mod_p(double_fp_t A) { return (fp_t)(A % p); }

double_fp_t mul_p(fp_t x) {
    return (x << 377) - (x << 374) - (x << 372) - (x << 369) + (x << 366) - (x << 363) +
           (x << 361) + (x << 358) + (x << 355) - (x << 353) + (x << 349) - (x << 347) -
           (x << 342) + (x << 338) + (x << 336) + (x << 332) + (x << 328) - (x << 324);
}

double_fp_t mul_m(fp_t x) {
    return (x << 377) + (x << 375) - (x << 373) + (x << 368) + (x << 366) + (x << 364) +
           (x << 359) + (x << 356) - (x << 354) + (x << 352) + (x << 348) - (x << 346) +
           (x << 344) - (x << 342) + (x << 338) + (x << 331) - (x << 329);
}

fp_t mod_p(double_fp_t A) {
    ap_uint<fp_t::width + 2> Al = A(377 + 2, 0);
    fp_t Ah = A(377 * 2 - 1, 377);
    fp_t l1_hat = (Ah * m) >> 377;
    ap_uint<fp_t::width + 2> l1_hatp = (l1_hat * p)(377 + 1, 0);
    ap_uint<fp_t::width + 2> r = A - l1_hatp;
    if (r > p) r = r - p;
    if (r > p) r = r - p;
    if (r > p) r = r - p;
    return r;
}

// fp_t mod_p(double_fp_t A) {
// #pragma HLS inline
//     double_fp_t t = (A >> 13) + (A >> 17) + (A >> 21);
//     double_fp_t tp = (t << 13) + t - (t << 9);
//     double_fp_t y = A - tp;
//     if (y >= p) y = y - p;
//     if (y >= p) y = y - p;
//     if (y >= p) y = y - p;
//     return (fp_t)y;
// }

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

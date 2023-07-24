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

fp_ov2_t mul_q(fp_t x) {
    return (fp_ov2_t)((double_fp_t)x << 377) - (fp_ov2_t)((double_fp_t)x << 374) -
           (fp_ov2_t)((double_fp_t)x << 372) - (fp_ov2_t)((double_fp_t)x << 369) +
           (fp_ov2_t)((double_fp_t)x << 366) - (fp_ov2_t)((double_fp_t)x << 363) +
           (fp_ov2_t)((double_fp_t)x << 361) + (fp_ov2_t)((double_fp_t)x << 358) +
           (fp_ov2_t)((double_fp_t)x << 355) - (fp_ov2_t)((double_fp_t)x << 353) +
           (fp_ov2_t)((double_fp_t)x << 349) - (fp_ov2_t)((double_fp_t)x << 347) -
           (fp_ov2_t)((double_fp_t)x << 342) + (fp_ov2_t)((double_fp_t)x << 338) +
           (fp_ov2_t)((double_fp_t)x << 336) + (fp_ov2_t)((double_fp_t)x << 332) +
           (fp_ov2_t)((double_fp_t)x << 328) - (fp_ov2_t)((double_fp_t)x << 324) -
           (fp_ov2_t)((double_fp_t)x << 322) - (fp_ov2_t)((double_fp_t)x << 320) -
           (fp_ov2_t)((double_fp_t)x << 318) + (fp_ov2_t)((double_fp_t)x << 315) -
           (fp_ov2_t)((double_fp_t)x << 313) + (fp_ov2_t)((double_fp_t)x << 310) -
           (fp_ov2_t)((double_fp_t)x << 306) - (fp_ov2_t)((double_fp_t)x << 304) +
           (fp_ov2_t)((double_fp_t)x << 299) - (fp_ov2_t)((double_fp_t)x << 297) -
           (fp_ov2_t)((double_fp_t)x << 294) + (fp_ov2_t)((double_fp_t)x << 287) -
           (fp_ov2_t)((double_fp_t)x << 284) - (fp_ov2_t)((double_fp_t)x << 282) +
           (fp_ov2_t)((double_fp_t)x << 279) + (fp_ov2_t)((double_fp_t)x << 277) +
           (fp_ov2_t)((double_fp_t)x << 272) + (fp_ov2_t)((double_fp_t)x << 270) +
           (fp_ov2_t)((double_fp_t)x << 267) + (fp_ov2_t)((double_fp_t)x << 264) +
           (fp_ov2_t)((double_fp_t)x << 262) - (fp_ov2_t)((double_fp_t)x << 258) -
           (fp_ov2_t)((double_fp_t)x << 256) + (fp_ov2_t)((double_fp_t)x << 253) -
           (fp_ov2_t)((double_fp_t)x << 251) + (fp_ov2_t)((double_fp_t)x << 249) +
           (fp_ov2_t)((double_fp_t)x << 245) + (fp_ov2_t)((double_fp_t)x << 242) -
           (fp_ov2_t)((double_fp_t)x << 240) - (fp_ov2_t)((double_fp_t)x << 237) -
           (fp_ov2_t)((double_fp_t)x << 235) + (fp_ov2_t)((double_fp_t)x << 233) -
           (fp_ov2_t)((double_fp_t)x << 228) + (fp_ov2_t)((double_fp_t)x << 226) -
           (fp_ov2_t)((double_fp_t)x << 224) + (fp_ov2_t)((double_fp_t)x << 216) -
           (fp_ov2_t)((double_fp_t)x << 212) + (fp_ov2_t)((double_fp_t)x << 210) +
           (fp_ov2_t)((double_fp_t)x << 208) + (fp_ov2_t)((double_fp_t)x << 204) +
           (fp_ov2_t)((double_fp_t)x << 202) - (fp_ov2_t)((double_fp_t)x << 199) +
           (fp_ov2_t)((double_fp_t)x << 196) - (fp_ov2_t)((double_fp_t)x << 192) +
           (fp_ov2_t)((double_fp_t)x << 189) - (fp_ov2_t)((double_fp_t)x << 184) -
           (fp_ov2_t)((double_fp_t)x << 180) + (fp_ov2_t)((double_fp_t)x << 178) -
           (fp_ov2_t)((double_fp_t)x << 175) - (fp_ov2_t)((double_fp_t)x << 173) +
           (fp_ov2_t)((double_fp_t)x << 169) + (fp_ov2_t)((double_fp_t)x << 166) -
           (fp_ov2_t)((double_fp_t)x << 164) - (fp_ov2_t)((double_fp_t)x << 158) -
           (fp_ov2_t)((double_fp_t)x << 155) + (fp_ov2_t)((double_fp_t)x << 153) +
           (fp_ov2_t)((double_fp_t)x << 147) + (fp_ov2_t)((double_fp_t)x << 144) +
           (fp_ov2_t)((double_fp_t)x << 142) + (fp_ov2_t)((double_fp_t)x << 139) +
           (fp_ov2_t)((double_fp_t)x << 125) - (fp_ov2_t)((double_fp_t)x << 123) -
           (fp_ov2_t)((double_fp_t)x << 120) + (fp_ov2_t)((double_fp_t)x << 116) -
           (fp_ov2_t)((double_fp_t)x << 114) - (fp_ov2_t)((double_fp_t)x << 111) -
           (fp_ov2_t)((double_fp_t)x << 109) - (fp_ov2_t)((double_fp_t)x << 106) +
           (fp_ov2_t)((double_fp_t)x << 104) + (fp_ov2_t)((double_fp_t)x << 102) +
           (fp_ov2_t)((double_fp_t)x << 98) + (fp_ov2_t)((double_fp_t)x << 94) -
           (fp_ov2_t)((double_fp_t)x << 92) + (fp_ov2_t)((double_fp_t)x << 63) +
           (fp_ov2_t)((double_fp_t)x << 58) + (fp_ov2_t)((double_fp_t)x << 56) +
           (fp_ov2_t)((double_fp_t)x << 51) + (fp_ov2_t)((double_fp_t)x << 48) -
           (fp_ov2_t)((double_fp_t)x << 46) + x;
}

double_fp_t mul_m(fp_t x) {
    return (((x << 377) + (x << 375)) - (x << 373) + ((x << 368) + (x << 366))) + (x << 364) +
           (x << 359) + (((x << 356) - (x << 354)) + (x << 352) + ((x << 348) - (x << 346))) +
           (((x << 344) - (x << 342)) + (x << 338) + ((x << 331) - (x << 329)));
}

fp_t mod_p(double_fp_t A) {
#pragma HLS inline off
    ap_uint<fp_t::width + 2> Al = A(377 + 2, 0);
    fp_t Ah = A(377 * 2 - 1, 377);
    fp_t l1_hat = mul_m(Ah) >> 377;
    ap_uint<fp_t::width + 2> l1_hatp = mul_q(l1_hat);
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
    // #pragma HLS inline
    double_fp_t p = x * y;
    return mod_p(p);
}

// modular multiplication by 3 (3 * x) mod p
fp_t mul3_p(fp_t x) {
#pragma HLS inline
    double_fp_t product = (x << 1) + x;
    if (product > p) product = product - p;
    if (product > p) product = product - p;

    return product;
}

// modular squaring (x * x) mod p
fp_t square_p(fp_t x) {
#pragma HLS inline
    double_fp_t p = x * x;
    return mod_p(p);
}

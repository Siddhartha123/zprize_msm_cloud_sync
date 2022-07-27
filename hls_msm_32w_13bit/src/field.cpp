#include "field.h"

coeff_t q("7681", 10);
coeff_t r = ((coeff_t)1) << 255;
// r2 = mod((double_coeff_t)1 << 510);
coeff_t r2("6246214843705744786522493420523662385107963031429225047865052023019169512948", 10);

// (-q^-1) % r
coeff_t p_inv("53136398234517616390802881779408744441731054475759557628235741817019879023497", 10);

// coeff_t mod(double_coeff_t A) { return (coeff_t)(A % q); }

void delay(int x) {
    #ifdef __SYNTHESIS__ 
    ap_wait_n(x); 
    #endif
}

coeff_t mod(double_coeff_t A) {
#pragma HLS inline
    double_coeff_t t = (A >> 13) + (A >> 17) + (A >> 21);
    double_coeff_t tq = (t << 13) + t - (t << 9);
    double_coeff_t y = A - tq;
    if (y >= q) y = y - q;
    if (y >= q) y = y - q;
    if (y >= q) y = y - q;
    return (coeff_t) y;
}

// modular addition (x + y) mod q
coeff_t add(coeff_t x, coeff_t y) {
#pragma HLS inline
    coeff_ov_t w = x + y;
    return (coeff_t)(w - (w < q ? (coeff_t)0 : q));
}

// modular subtraction (x - y) mod q
coeff_t sub(coeff_t x, coeff_t y) {
#pragma HLS inline
    coeff_ov_t s = x + (x > y ? (coeff_t)0 : q);
    return (coeff_t)(s - y);
}

// modular multiplication (x * y) mod q
coeff_t mul(coeff_t x, coeff_t y) {
#pragma HLS inline
    double_coeff_t p = x * y;
    return mod(p);
}

// modular squaring (x * x) mod q
coeff_t square(coeff_t x) {
#pragma HLS inline
    double_coeff_t p = x * x;
    return mod(p);
}

/*
 *   Montgomery arithmetic
 */

ap_int<256> m_reduce(ap_int<514> ab) {
    coeff_t m = ((coeff_t)ab * p_inv);
    m.set_bit(255, 0);
    ap_int<256> y = (ab + (ap_int<512>)(m * q)) >> 255;
    return (y < (ap_int<256>)q) ? y : (ap_int<256>)(y - (ap_int<256>)q);
}

ap_int<256> m_transform(ap_int<256> a) {
    ap_int<514> ab = a * r2;
    coeff_t m = ((coeff_t)ab * p_inv);
    m.set_bit(255, 0);
    ap_int<256> y = (ab + (ap_int<512>)(m * q)) >> 255;
    return (y < (ap_int<256>)q) ? y : (ap_int<256>)(y - (ap_int<256>)q);
}

coeff_t m_add(coeff_t a, coeff_t b) {
#pragma HLS inline
    ap_int<256> a_prim = m_transform(a);  // mult a by r
    ap_int<256> b_prim = m_transform(b);  // mult b by r
    ap_int<256> sum_prim = a_prim + b_prim;
    coeff_t sum = m_reduce(sum_prim);  // divide sum_prim by r
    return sum;
}

// // TODO: check subtract borrow case
// coeff_t m_sub(coeff_t a, coeff_t b) {
// #pragma HLS inline
//     coeff_t a_prim = m_transform(a);  // mult a by r
//     coeff_t b_prim = m_transform(b);  // mult b by r
//     coeff_t diff_prim = a_prim - b_prim;
//     coeff_t diff = m_reduce(diff_prim);  // divide diff_prim by r
//     return diff;
// }

// coeff_t m_mul(coeff_t a, coeff_t b) {
//     coeff_t a_prim = m_transform(a);  // mult a by r
//     coeff_t b_prim = m_transform(b);  // mult b by r
//     double_coeff_t temp_prod_prim = a_prim * b_prim;
//     coeff_t prod_prim = m_reduce(temp_prod_prim);  // divide a' * b' by r
//     coeff_t prod = m_reduce(prod_prim);            // divide prod' by r
//     return prod;
// }

// coeff_t m_square(coeff_t a) {
//     coeff_t a_prim = m_transform(a);  // mult a by r
//     double_coeff_t temp_prod_prim = a_prim * a_prim;
//     coeff_t prod_prim = m_reduce(temp_prod_prim);  // divide a' * a' by r
//     coeff_t prod = m_reduce(prod_prim);            // divide prod' by r
//     return prod;
// }

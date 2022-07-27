#ifndef BN128_H
#define BN128_H

#include <iostream>

#include "field.h"

struct bn128_p {
    coeff_t x, y, z;

    bn128_p(coeff_t a, coeff_t b, coeff_t c) {
        x = a;
        y = b;
        z = c;
    }
};

typedef ap_uint<39> bn128_coord_t;

extern bn128_p zero;

void printp(bn128_p p);

bn128_p padd(bn128_p p1, bn128_p p2);
bn128_p pdouble(bn128_p p);
bn128_p m_padd(bn128_p p1, bn128_p p2);
bn128_p m_pdouble(bn128_p p);

#endif

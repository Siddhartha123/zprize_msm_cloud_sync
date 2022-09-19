#ifndef BLS12_377_H
#define BLS12_377_H

#include <iostream>

#include "Fp.h"

struct bls12_377_p {
    fp_t x, y, z;

    bls12_377_p(fp_t a, fp_t b, fp_t c) {
        x = a;
        y = b;
        z = c;
    }
};

typedef ap_uint<39> bls12_377_coord_t;

extern bls12_377_p zero;

void printp(bls12_377_p p);

bls12_377_p padd(bls12_377_p p1, bls12_377_p p2);
bls12_377_p padd_999(bls12_377_p p1, bls12_377_p p2);
bls12_377_p pdouble(bls12_377_p p);
bls12_377_p m_padd(bls12_377_p p1, bls12_377_p p2);
bls12_377_p m_pdouble(bls12_377_p p);

#endif

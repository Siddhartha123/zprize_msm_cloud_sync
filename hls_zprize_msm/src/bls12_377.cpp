#include "bls12_377.h"

bls12_377_p zero(0, 1, 0);

bls12_377_p padd(bls12_377_p p1, bls12_377_p p2) {
// #pragma HLS dataflow
#pragma HLS inline OFF

    fp_t x1 = p1.x, y1 = p1.y, z1 = p1.z;  // input point p1
    fp_t x2 = p2.x, y2 = p2.y, z2 = p2.z;  // input point p2
    fp_t x, y, z;                          // output point p

    fp_t Z1Z1, Z2Z2, U1, U2, t0, S1, t1, S2, H, t2, I, J, t3, r, V, t4, t5;
    fp_t t6, t7, t8, t9, t10, t11, t12, t13, t14;
    bls12_377_p result(0, 1, 0);
    bls12_377_p double_p1 = pdouble(p1);

    Z1Z1 = square_p(z1);
    Z2Z2 = square_p(z2);
    U1 = mul_p(x1, Z2Z2);
    U2 = mul_p(x2, Z1Z1);
    t0 = mul_p(z2, Z2Z2);
    S1 = mul_p(y1, t0);
    t1 = mul_p(z1, Z1Z1);
    S2 = mul_p(y2, t1);
    H = sub_p(U2, U1);
    t3 = sub_p(S2, S1);

    t2 = add_p(H, H);
    I = square_p(t2);
    J = mul_p(H, I);
    r = add_p(t3, t3);
    V = mul_p(U1, I);
    t4 = square_p(r);
    t5 = add_p(V, V);
    t6 = sub_p(t4, J);
    x = sub_p(t6, t5);
    t7 = sub_p(V, x);
    t8 = mul_p(S1, J);
    t9 = add_p(t8, t8);
    t10 = mul_p(r, t7);
    y = sub_p(t10, t9);
    t11 = add_p(z1, z2);
    t12 = square_p(t11);
    t13 = sub_p(t12, Z1Z1);
    t14 = sub_p(t13, Z2Z2);
    z = mul_p(t14, H);
    bls12_377_p sum(x, y, z);

    if (p1.z == 0)
        result = p2;
    else if (p2.z == 0)
        result = p1;
    else if (H == 0 && t3 == 0)
        result = double_p1;
    else if (H == 0 && t3 != 0)
        result = zero;
    else
        result = sum;

    return result;
}

bls12_377_p padd_999(bls12_377_p p1, bls12_377_p p2) {
#pragma HLS inline OFF

    fp_t x1 = p1.x, y1 = p1.y, z1 = p1.z;  // input point p1
    fp_t x2 = p2.x, y2 = p2.y, z2 = p2.z;  // input point p2
    fp_t x, y, z;                          // output point p
    bls12_377_p result(0, 1, 0);

    fp_t x1x2, y1y2, z1z2, s11, s12, s13, s14, s15, s16;

    x1x2 = mul_p(x1, x2);
    y1y2 = mul_p(y1, y2);
    z1z2 = mul_p(z1, z2);
    s11 = add_p(x1, y1);
    s12 = add_p(x2, y2);
    s13 = add_p(x1, z1);
    s14 = add_p(x2, z2);
    s15 = add_p(y1, z1);
    s16 = add_p(y2, z2);

    fp_t s21, s22, s23, s11s12, s13s14, s15s16;
    s21 = add_p(x1x2, y1y2);
    s22 = add_p(x1x2, z1z2);
    s23 = add_p(y1y2, z1z2);
    s11s12 = mul_p(s11, s12);
    s13s14 = mul_p(s13, s14);
    s15s16 = mul_p(s15, s16);

    fp_t z1z2_3, d31, d32, d33;
    z1z2_3 = mul3_p(z1z2);
    d31 = sub_p(s11s12, s21);
    d32 = sub_p(s13s14, s22);
    d33 = sub_p(s15s16, s23);

    fp_t x1x2_3, s41, d41, d32_3;
    x1x2_3 = mul3_p(x1x2);
    s41 = add_p(y1y2, z1z2_3);
    d41 = sub_p(y1y2, z1z2_3);
    d32_3 = mul3_p(d32);

    fp_t d41d31, d32_3d33, s41d41, x1x2_3d32_3, s41d33, x1x2_3d31;
    d41d31 = mul_p(d41, d31);
    d32_3d33 = mul_p(d32_3, d33);
    s41d41 = mul_p(s41, d41);
    x1x2_3d32_3 = mul_p(x1x2_3, d32_3);
    s41d33 = mul_p(s41, d33);
    x1x2_3d31 = mul_p(x1x2_3, d31);

    x = sub_p(d41d31, d32_3d33);
    y = add_p(s41d41, x1x2_3d32_3);
    z = add_p(s41d33, x1x2_3d31);

    result.x = x;
    result.y = y;
    result.z = z;
    return result;
}

bls12_377_p pdouble(bls12_377_p p) {
    fp_t x1 = p.x, y1 = p.y, z1 = p.z;  // input point
    fp_t x2, y2, z2;                    // output point
    fp_t A, B, C, D, E, F, t0, t1, t2, t3, t4, t5, t6, t7, t8;

    A = mul_p(x1, x1);
    B = mul_p(y1, y1);
    C = mul_p(B, B);
    t0 = add_p(x1, B);
    t1 = mul_p(t0, t0);
    t2 = sub_p(t1, A);
    t3 = sub_p(t2, C);
    D = add_p(t3, t3);
    E = add_p(A, A);
    E = add_p(E, A);
    F = mul_p(E, E);
    t4 = add_p(D, D);
    x2 = sub_p(F, t4);
    t5 = sub_p(D, x2);
    t6 = C;
    t6 = add_p(t6, t6);
    t6 = add_p(t6, t6);
    t6 = add_p(t6, t6);
    t7 = mul_p(E, t5);
    t8 = mul_p(y1, z1);
    y2 = sub_p(t7, t6);
    z2 = add_p(t8, t8);
    bls12_377_p result(x2, y2, z2);
    return result;
}

void printp(bls12_377_p p) {
    std::cout << std::dec << "(" << p.x << ", " << p.y << ", " << p.z << ")\n";
}

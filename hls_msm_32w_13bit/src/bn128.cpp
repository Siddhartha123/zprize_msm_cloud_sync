#include "bn128.h"

bn128_p zero(0, 1, 0);

bn128_p padd(bn128_p p1, bn128_p p2) {
// #pragma HLS dataflow
#pragma HLS pipeline II = 1
    coeff_t x1 = p1.x, y1 = p1.y, z1 = p1.z;  // input point p1
    coeff_t x2 = p2.x, y2 = p2.y, z2 = p2.z;  // input point p2
    coeff_t x, y, z;                          // output point p

    coeff_t Z1Z1, Z2Z2, U1, U2, t0, S1, t1, S2, H, t2, I, J, t3, r, V, t4, t5;
    coeff_t t6, t7, t8, t9, t10, t11, t12, t13, t14;
    bn128_p result(0, 1, 0);
    bn128_p double_p1 = pdouble(p1);

    Z1Z1 = square(z1);
    Z2Z2 = square(z2);
    U1 = mul(x1, Z2Z2);
    U2 = mul(x2, Z1Z1);
    t0 = mul(z2, Z2Z2);
    S1 = mul(y1, t0);
    t1 = mul(z1, Z1Z1);
    S2 = mul(y2, t1);
    H = sub(U2, U1);
    t3 = sub(S2, S1);

    t2 = add(H, H);
    I = square(t2);
    J = mul(H, I);
    r = add(t3, t3);
    V = mul(U1, I);
    t4 = square(r);
    t5 = add(V, V);
    t6 = sub(t4, J);
    x = sub(t6, t5);
    t7 = sub(V, x);
    t8 = mul(S1, J);
    t9 = add(t8, t8);
    t10 = mul(r, t7);
    y = sub(t10, t9);
    t11 = add(z1, z2);
    t12 = square(t11);
    t13 = sub(t12, Z1Z1);
    t14 = sub(t13, Z2Z2);
    z = mul(t14, H);
    bn128_p sum(x, y, z);

    if (p1.z == 0) result = p2;
    else if (p2.z == 0) result = p1;
    else if (H == 0 && t3 == 0) 
            result = double_p1;
    else if (H == 0 && t3 != 0) 
            result = zero;
    else result = sum;
    
    // result.x = add(x1, x2);
    // result.y = add(y1, y2);
    // result.z = add(z1, z2);
    
    return result;
}

bn128_p pdouble(bn128_p p) {
//#pragma HLS dataflow
#pragma HLS pipeline II = 1
    coeff_t x1 = p.x, y1 = p.y, z1 = p.z;  // input point
    coeff_t x2, y2, z2;                    // output point
    coeff_t A, B, C, D, E, F, t0, t1, t2, t3, t4, t5, t6, t7, t8;

    A = mul(x1, x1);
    B = mul(y1, y1);
    C = mul(B, B);
    t0 = add(x1, B);
    t1 = mul(t0, t0);
    t2 = sub(t1, A);
    t3 = sub(t2, C);
    D = add(t3, t3);
    E = add(A, A);
    E = add(E, A);
    F = mul(E, E);
    t4 = add(D, D);
    x2 = sub(F, t4);
    t5 = sub(D, x2);
    t6 = C;
    t6 = add(t6, t6);
    t6 = add(t6, t6);
    t6 = add(t6, t6);
    t7 = mul(E, t5);
    t8 = mul(y1, z1);
    y2 = sub(t7, t6);
    z2 = add(t8, t8);
    bn128_p result(x2, y2, z2);
    return result;
}

bn128_p m_padd(bn128_p p1, bn128_p p2) {
#pragma HLS dataflow
    coeff_t x1 = m_transform(p1.x), y1 = m_transform(p1.y),
            z1 = m_transform(p1.z);  // input point p1
    coeff_t x2 = m_transform(p2.x), y2 = m_transform(p2.y),
            z2 = m_transform(p2.z);  // input point p2
    coeff_t x, y, z;                 // output point p

    if (p1.z == 0) return p2;
    if (p2.z == 0) return p1;

    coeff_t Z1Z1, Z2Z2, U1, U2, t0, S1, t1, S2, H, t2, I, J, t3, r, V, t4, t5;
    coeff_t t6, t7, t8, t9, t10, t11, t12, t13, t14;
    ap_int<257> x_prim;

    Z1Z1 = m_reduce(z1 * z1);
    Z2Z2 = m_reduce(z2 * z2);
    U1 = m_reduce(x1 * Z2Z2);
    U2 = m_reduce(x2 * Z1Z1);
    t0 = m_reduce(z2 * Z2Z2);
    S1 = m_reduce(y1 * t0);
    t1 = m_reduce(z1 * Z1Z1);
    S2 = m_reduce(y2 * t1);
    H = U2 - U1;
    t3 = S2 - S1;

    if (m_reduce(H) == 0) {
        if (m_reduce(t3) == 0)
            return pdouble(p1);
        else
            return zero;
    }

    t2 = H + H;
    I = m_reduce(t2 * t2);
    J = m_reduce(H * I);
    r = t3 + t3;
    V = m_reduce(U1 * I);
    t4 = m_reduce(r * r);
    t5 = V + V;
    t6 = t4 - J;
    x_prim = t6 - t5;
    x = m_reduce(x_prim);
    t7 = V - x_prim;
    t8 = m_reduce(S1 * J);
    t9 = t8 + t8;
    t10 = m_reduce(r * t7);
    y = m_reduce(t10 - t9);
    t11 = z1 + z2;
    t12 = m_reduce(t11 * t11);
    t13 = t12 - Z1Z1;
    t14 = t13 - Z2Z2;
    z = m_reduce(m_reduce(t14 * H));

    bn128_p result(x, y, z);
    return result;
}

// TODO: implement in python and compare output of each line
bn128_p m_pdouble(bn128_p p) {
#pragma HLS dataflow
    coeff_t x1 = m_transform(p.x), y1 = m_transform(p.y), z1 = m_transform(p.z);  // input point
    coeff_t x2, y2, z2;                                                           // output point
    coeff_t A, B, C, E, F, t0, t1, t8;
    ap_int<257> t2, t3, t7, D;
    ap_int<257> x2_prim, t4;
    ap_int<259> t5, t6;

    A = m_reduce(x1 * x1);
    B = m_reduce(y1 * y1);
    C = m_reduce(B * B);
    t0 = x1 + B;
    t1 = m_reduce(t0 * t0);
    t2 = t1 - A;
    t3 = t2 - C;
    D = t3 + t3;
    E = A + A;
    E = E + A;
    F = m_reduce(E * E);
    t4 = D + D;
    x2_prim = F - t4;
    x2 = m_reduce(x2_prim);
    t5 = D - x2_prim;
    t6 = C + C;
    t6 = t6 + t6;
    t6 = t6 + t6;
    t7 = m_reduce(E * t5);
    t8 = m_reduce(y1 * z1);
    y2 = m_reduce(t7 - t6);
    z2 = m_reduce(t8 + t8);
    bn128_p result(x2, y2, z2);
    return result;
}

/*
std::cout << A << "\n";
std::cout << B << "\n";
std::cout << C << "\n";
std::cout << t0 << "\n";
std::cout << t1 << "\n";
std::cout << t2 << "\n";
std::cout << t3 << "\n";
std::cout << D << "\n";
std::cout << E << "\n";
std::cout << E << "\n";
std::cout << F << "\n";
std::cout << t4 << "\n";
std::cout << x2 << "\n";
std::cout << t5 << "\n";
std::cout << t6 << "\n";
std::cout << t6 << "\n";
std::cout << t6 << "\n* ";
ap_int<514> ab = E * t5;
std::cout << ab << "\n";
std::cout << t7 << "\n";
std::cout << t8 << "\n";
std::cout << y2 << "\n";
std::cout << z2 << "\n";
*/

void printp(bn128_p p) { std::cout <<std::dec<< "(" << p.x << ", " << p.y << ", " << p.z << ")\n"; }

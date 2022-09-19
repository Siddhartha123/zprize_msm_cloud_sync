#include "bls12_377.h"

void bls12_377_test() {
    // point double
    fp_t a_x(
        "001C38C0114A394069A4A868A79056D4549030F155EBB5AA84912849A35F33BCCB385816ECC12F3C54AD244D27"
        "E48751",
        16),
        a_y("0087AD9EBA24AC60B0F60C9BEB7C0D9A0EB1011F30E0A8C0C96146CF25AD9A6D4EA72E7FDC9FEE13601AA7"
            "527F41311E",
            16),
        a_z("008D6661E2FDF49A4CF495BF803C84E87B4E97B76E7C63059F7DB3A98A7D3FF251409F837FFFFFB102CDFF"
            "FFFFFFFF68",
            16);
    bls12_377_p a(a_x, a_y, a_z);

    // 2*a = c
    fp_t c_x("196", 10), c_y("77", 10), c_z("6286", 10);
    bls12_377_p c(c_x, c_y, c_z);

    std::cout << "a = (" << a.x << ", " << a.y << ", " << a.z << ")\n";

    // bls12_377_p b = pdouble(a);
    bls12_377_p b(0, 1, 0);
    std::cout << "2*a = (" << b.x << ", " << b.y << ", " << b.z << ")\n";
    if (c.x == b.x && c.y == b.y && c.z == b.z)
        std::cout << "results match for pdouble\n";
    else
        std::cout << "results DON'T match for pdouble. ERROR\n";

    // point addition
    bls12_377_p p1 = a;
    bls12_377_p p2 = b;
    bls12_377_p p3 = padd(p1, p2);
    bls12_377_p p4 = padd_999(p1, p2);

    std::cout << "p1 = (" << p1.x << ", " << p1.y << ", " << p1.z << ")\n";
    std::cout << "p2 = (" << p2.x << ", " << p2.y << ", " << p2.z << ")\n";
    std::cout << "p1 + p2 = (" << p3.x << ", " << p3.y << ", " << p3.z << ")\n";
    std::cout << "p1 + p2 (999) = (" << p4.x << ", " << p4.y << ", " << p4.z << ")\n";
}

int main() {
    bls12_377_test();
    return 0;
}
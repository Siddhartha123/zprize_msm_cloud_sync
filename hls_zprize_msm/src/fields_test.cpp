#include "Fp.h"
#include "Fr.h"

void Fp_test() {
    std::cout << "--- Fp tests ---\n";
    // squaring
    fp_t a("1953", 10);
    fp_t aa = square_p(a);
    std::cout << "squaring\n" << a << "->" << aa << "\n";

    fp_t x("683", 10);
    fp_t y("7314", 10);
    // x*y = 2812
    fp_t z = mul_p(x, y);
    std::cout << "multiplying\n" << x << ", " << y << " -> " << z << "\n";
}

void Fr_test() {
    std::cout << "--- Fr tests ---\n";
    // squaring
    fr_t a("1953", 10);
    fr_t aa = square_r(a);
    std::cout << "squaring\n" << a << "->" << aa << "\n";

    fr_t x("683", 10);
    fr_t y("7314", 10);
    // x*y = 2812
    fr_t z = mul_r(x, y);
    std::cout << "multiplying\n" << x << ", " << y << " -> " << z << "\n";
}

// int main() {
//     Fp_test();
//     Fr_test();
//     return 0;
// }

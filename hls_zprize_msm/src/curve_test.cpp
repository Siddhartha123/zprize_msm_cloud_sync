#include "bls12_377.h"
#include "msm.h"

void print_bigInt(bls12_377_p p) {
    // print 64-bit chunks of p.x
    std::cout << std::hex << "[" << p.x(63, 0);
    for (int i = 1; i < 6; i++) {
        std::cout << "," << ((ap_uint<384>)p.x)((i + 1) * 64 - 1, i * 64);
    }
    std::cout << std::hex << "]";

    // print 64-bit chunks of p.y
    std::cout << std::hex << "[" << p.y(63, 0);
    for (int i = 1; i < 6; i++) {
        std::cout << "," << ((ap_uint<384>)p.y)((i + 1) * 64 - 1, i * 64);
    }
    std::cout << std::hex << "]";

    // print 64-bit chunks of p.z
    std::cout << std::hex << "[" << p.z(63, 0);
    for (int i = 1; i < 6; i++) {
        std::cout << "," << ((ap_uint<384>)p.z)((i + 1) * 64 - 1, i * 64);
    }
    std::cout << std::hex << "]";
}

void bls12_377_test() {
    // point double
    fp_t a_x(
        "8AF672A9ECD5811A9EE6C8236C5DD471C934750B7AE969A7FB8EE05F2AC5BFBA8DB63D933796E67F4A0ACB97C8"
        "26B5",
        16),
        a_y("13E56F1C6904CC7DB4B833AF7A5C399C98667D3BE08332DBC903EBF56011F711C2FEDDF674113B0317A1B5"
            "36C024037",
            16),
        a_z("3517867C5EC146BB64ED10EFC6D62714ABDBC40B6F17FA3AE2B51E2597C6BEDF80FE62433513AB27466A38"
            "6DBFAD63",
            16);
    bls12_377_p a(a_x, a_y, a_z);

    // bls12_377_p b = pdouble(a);
    fp_t b_x(
        "7845A67AB1BC559E03319DC8D95EE6A913087E9B89AFB485DC4420DB500B181F21303ABC166DA2F9EEB99C718C"
        "D258",
        16),
        b_y("31814B0DD4477383D4138EBC3CE254AE4D72BA823ADDAFBE37BB0B45092CF42A821DD5459110395065C42C"
            "635D8A3F",
            16),
        b_z("63E253A6DDD0059A43E31681FE0BD534E122CAC4E2644C11862B7B623BFF27D28FF67E75785C9094F548D8"
            "37B65694",
            16);
    bls12_377_p b(b_x, b_y, b_z);

    // point addition
    bls12_377_p p1 = a;
    bls12_377_p p2 = b;
    bls12_377_p p3 = padd(p1, p2);
    bls12_377_p p4 = padd_999(p1, p2);

    std::cout << std::hex << "p1 = (" << p1.x << ", " << p1.y << ", " << p1.z << ")\n";
    std::cout << "p2 = (" << p2.x << ", " << p2.y << ", " << p2.z << ")\n";
    std::cout << "p1 + p2 = (" << p3.x << ", " << p3.y << ", " << p3.z << ")\n";
    std::cout << "p1 + p2 (999) = (" << p4.x << ", " << p4.y << ", " << p4.z << ")\n";

    print_bigInt(p3);
}

int main() {
    bls12_377_test();
    u32 B_i[30];
    fp_t P_arr_x[NUM_POINTS], P_arr_y[NUM_POINTS], P_arr_z[NUM_POINTS];
    fr_t K_arr[NUM_POINTS];
    // msm_arr(P_arr_x, P_arr_y, P_arr_z, K_arr, B_i);
    return 0;
}
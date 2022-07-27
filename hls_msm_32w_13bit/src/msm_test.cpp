#include "msm.h"

#include "ec_test_case.h"
#include "msm_test_case.h"

int main() {
    //  field_test();
    // ec_test();
    // msm_ref_test();
    //    msm_test();
    // msm_test_rtl();
    msm_arr_test();
    return 0;
}

void field_test() {
    //	for(int i=0;i<7681;i++){
    //		for(int j=i; j<7681;j++){
    //			if((i*j)%7681 !=mod(i*j)) std::cout<<"error\n";
    //		}
    //	}
    //	return;
    // squaring
    coeff_t a("21888242871839275222246405745257275088696311157297823662689037894645226208495", 10);
    coeff_t aa = square(a);
    std::cout << "squaring\n" << a << "->" << aa << "\n";

    coeff_t x("17986822872651018545703942422197771724030717266826263516148998525451976451308", 10);
    coeff_t y("5878075841852220199995254287997441480483489191399392233182738992837303554672", 10);
    // x*y = 3229514941799687349979462239638335599028802658367413894191682933199537253696
    coeff_t z = mul(x, y);
    std::cout << "multiplying\n" << x << ", " << y << " -> " << z << "\n";
}

void ec_test() {
    // point double
    coeff_t a_x("2043388684587312959391446593086930350552504067057770342474381850982103482432", 10),
        a_y("3830282395501535602988650343251070286382748342748541520720054560864259795856", 10),
        a_z("3958053255056260455119117587344389194454635311903883677090413432752285693310", 10);
    bn128_p a(a_x, a_y, a_z);

    // 2*a = coeff_t
    coeff_t c_x("21184003440911912626182010420094391790147393087933175432360014201878886121730",
                10),
        c_y("13916910177326195999757493065746283595301177294077421780819273106716750455053", 10),
        c_z("15310811105713432988849572866533416264718753375055158344491361717438250530952", 10);
    bn128_p c(c_x, c_y, c_z);

    std::cout << "a = (" << a.x << ", " << a.y << ", " << a.z << ")\n";

    bn128_p b = pdouble(a);
    std::cout << "2*a = (" << b.x << ", " << b.y << ", " << b.z << ")\n";
    if (c.x == b.x && c.y == b.y && c.z == b.z)
        std::cout << "results match for pdouble\n";
    else
        std::cout << "results DON'T match for pdouble. ERROR\n";
    // point addition
    bn128_p p3 = padd(p1, p2);
    bn128_p p4 = padd(p2, p1);

    std::cout << "p1 = (" << p1.x << ", " << p1.y << ", " << p1.z << ")\n";
    std::cout << "p2 = (" << p2.x << ", " << p2.y << ", " << p2.z << ")\n";
    std::cout << "p1 + p2 = (" << p3.x << ", " << p3.y << ", " << p3.z << ")\n";
    std::cout << "p2 + p1 = (" << p4.x << ", " << p4.y << ", " << p4.z << ")\n";
}

/*
// Definition of basic data type
#define INPUT_DATA_WIDTH 8
typedef ap_int<INPUT_DATA_WIDTH> data_t;
// Definition of variables
data_t Val1, Val2;
// Res is automatically sized at compile-time to be 1-bit greater than data type
data_t
ap_int<data_t::width+1> Res = Val1 + Val2;
*/
void msm_ref_test() {
    // Scalar multiplication test
    std::cout << "-------Scalar multiplication test-------\n";
    // printp(P_arr[0]);
    bn128_p sm_output = scalar_mult(2, P_arr[0]);
    printp(sm_output);
    std::cout << "----------------------------------------\n";

    std::cout << "-------Multi-scalar multiplication test-------\n";
    hls::stream<coeff_t_stream> input_K("FIFO_K");
    hls::stream<bn128_p_stream> input_points("FIFO_P"), B_i("B_i's");
    coeff_t_stream k_data;
    bn128_p_stream p_data;

    k_data.last = 0;
    for (int i = 0; i < 7; i++) {
        k_data.value = K_arr[i];
        input_K.write(k_data);
        p_data.value = (P_arr[i].x, P_arr[i].y, P_arr[i].z);
        p_data.last = 0;
        input_points.write(p_data);
    }
    k_data.value = K_arr[7];
    k_data.last = 1;
    input_K.write(k_data);
    p_data.value = (P_arr[7].x, P_arr[7].y, P_arr[7].z);
    p_data.last = 1;
    input_points.write(p_data);

    bn128_p result = msm_reference(input_K, input_points);
    printp(result);
}

void printp2k(ap_uint<4> k, bn128_p p1, bn128_p p2) {
    std::cout << std::hex << (p1.x, p1.y, p1.z, p2.x, p2.y, p2.z) << "\n";
}

void msm_test_rtl() {
    std::cout << std::hex << (P_0_x, P_0_y, (coeff_t)1) << "\n";
    std::cout << std::hex << (P_1_x, P_1_y, (coeff_t)1) << "\n";
    std::cout << std::hex << (P_2_x, P_2_y, (coeff_t)1) << "\n";
    std::cout << std::hex << (P_3_x, P_3_y, (coeff_t)1) << "\n";
    printp2k((ap_uint<4>)8, P_0, P_1);
    bn128_p result_01 = padd(P_0, P_1);
    std::cout << std::hex << (result_01.x, result_01.y, result_01.z);
    std::cout << "\nP01 ";
    printp(result_01);
    bn128_p result_23 = padd(P_2, P_3);
    std::cout << "P23 ";
    printp(result_23);
    bn128_p result_0123 = padd(result_01, result_23);
    std::cout << "P0123 ";
    printp(result_0123);
    std::cout << std::dec << (result_0123.x, result_0123.y, result_0123.z);
    // result = padd(result, result23);
    // std::cout << std::hex << (result.x, result.y, result.z) << "->";
    // std::cout << std::hex << (result.x, result.y) <<" "<< result.z;
    // std::cout << " P0123 ";
    // printp(result);

}

void msm_arr_test(){
    u32 B_i[30];
    msm_arr(P_arr_x, P_arr_y, P_arr_z, K_arr, B_i);
    return;
}

void msm_test() {
    // // Scalar multiplication test
    // std::cout << "-------Scalar multiplication test-------\n";
    // bn128_p sm_output = scalar_mult(s, A);
    // printp(sm_output);
    // std::cout << "----------------------------------------\n";

    // MSM test
    std::cout << "-------Multi-scalar multiplication test-------\n";
    hls::stream<su32> input("Input FIFO");
    hls::stream<su32> B_i("B_i's");
    su32 data;
    bn128_coord_t p;
    data.last = 0;
    for (int i = 0; i < NUM_POINTS; i++) {
        data.value = (P_arr[i].x, P_arr[i].y);
        input.write(data);
        data.value = (K_arr[i], P_arr[i].z);
        if (i == NUM_POINTS - 1) data.last = 1;
        input.write(data);
    }
    // k_data.value = K_arr[7];
    // k_data.last = 1;
    // input_K.write(k_data);
    // p_data.last = 1;
    // p_data.value = (P_arr[7].x, P_arr[7].y, P_arr[7].z);
    // input_points.write(p_data);
    std::cout << "calling msm\n";

    // msm(input, B_i);

    coeff_t x, y, z;
    bn128_coord_t B_i_data;
    for (int i = 1; i < 16; i++) {
        for (int j = 0; j < 24; j++) B_i_data(32 * (j + 1) - 1, 32 * j) = B_i.read().value;
        printp(bn128_p(B_i_data(767, 512), B_i_data(511, 256), B_i_data(255, 0)));
    }
    std::cout << "----------------------------------------\n";
}

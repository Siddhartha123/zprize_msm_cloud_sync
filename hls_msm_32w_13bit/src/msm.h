#ifndef MSM_H
#define MSM_H

#include <stdio.h>

#include <iostream>

#include "bn128.h"
#include "hls_stream.h"

#define NUM_POINTS 128

struct coeff_t_stream {
    coeff_t value;
    ap_uint<1> last;
};

struct bn128_p_stream {
    bn128_coord_t value;
    ap_uint<1> last;
};

typedef ap_uint<32> u32;

struct su32 {
    u32 value;
    ap_uint<1> last;
};

struct bucket{
    bn128_coord_t data;
    bool valid;

    bucket(){
        data = 0;
        valid = false;
    }

    void write(bn128_coord_t data_in){
        while(valid);
        data = data_in;
        valid = true;
    }

    bn128_coord_t read(){
        while(!valid);
        return data;
        valid = false;
    }

    bool full(){
        return valid;
    }

    bool empty(){
        return !valid;
    }
    
};

typedef ap_uint<bn128_coord_t::width + 4> bn_coord_k_t;
typedef ap_uint<82> dbl_bn_coord_k_t;

#define BDEPTH 8
void bucket_unit(coeff_t num_padd_ops, hls::stream<bn_coord_k_t> &BFIFO_1, u32 B_i[30], coeff_t count_B[16]);
void bucket_unit_csim(coeff_t num_padd_ops, hls::stream<bn_coord_k_t> &BFIFO_1, u32 B_i[30], coeff_t count_B[16]);
void bucket_unit_csim_sr(coeff_t num_padd_ops, hls::stream<bn_coord_k_t> &BFIFO_1, u32 B_i[30], coeff_t count_B[16]);
void bucket_unit_sr(coeff_t num_padd_ops, hls::stream<bn_coord_k_t> &BFIFO_1, u32 B_i[30], coeff_t count_B[16]);

bn128_p scalar_mult(coeff_t K, bn128_p P);
bn128_p small_scalar_mult(ap_uint<4> K, bn128_p P);
void msm(hls::stream<su32> &input,
            hls::stream<su32> &B_i);
void msm_arr(coeff_t P_arr_x[NUM_POINTS], coeff_t P_arr_y[NUM_POINTS], coeff_t P_arr_z[NUM_POINTS], coeff_t K_arr[NUM_POINTS], u32 B_i[30]);
void msm_csim(hls::stream<coeff_t_stream> &K, hls::stream<bn128_p_stream> &P,
            hls::stream<bn128_p_stream> &B_i);
bn128_p msm_reference(hls::stream<coeff_t_stream> &K, hls::stream<bn128_p_stream> &P);

extern bn128_p P_arr[];
extern coeff_t K_arr[];

void printp2k(ap_uint<4> k, bn128_p p1, bn128_p p2);
void msm_test();
void msm_ref_test();
void msm_test_rtl();
void msm_arr_test();
void ec_test();
void field_test();

#endif

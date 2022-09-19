#ifndef MSM_H
#define MSM_H

#include <stdio.h>

#include <iostream>

#include "bls12_377.h"
#include "hls_stream.h"

#define NUM_POINTS 128

/*
N_t is used to hold numbers of the order of the MSM size.
e.g. count variables, num_padd_ops etc. are of the order of the MSM problem size.
*/
typedef ap_uint<7> N_t;

struct fp_t_stream {
    fp_t value;
    ap_uint<1> last;
};

struct bls12_377_p_stream {
    bls12_377_coord_t value;
    ap_uint<1> last;
};

typedef ap_uint<32> u32;

struct su32 {
    u32 value;
    ap_uint<1> last;
};

struct bucket {
    bls12_377_coord_t data;
    bool valid;

    bucket() {
        data = 0;
        valid = false;
    }

    void write(bls12_377_coord_t data_in) {
        while (valid)
            ;
        data = data_in;
        valid = true;
    }

    bls12_377_coord_t read() {
        while (!valid)
            ;
        return data;
        valid = false;
    }

    bool full() { return valid; }

    bool empty() { return !valid; }
};

typedef ap_uint<bls12_377_coord_t::width + 4> bn_coord_k_t;
typedef ap_uint<82> dbl_bn_coord_k_t;

#define BDEPTH 8
void bucket_unit(N_t num_padd_ops, hls::stream<bn_coord_k_t> &BFIFO_1, u32 B_i[30],
                 N_t count_B[16]);

void msm_arr(fp_t P_arr_x[NUM_POINTS], fp_t P_arr_y[NUM_POINTS], fp_t P_arr_z[NUM_POINTS],
             fp_t K_arr[NUM_POINTS], u32 B_i[30]);
bls12_377_p msm_reference(hls::stream<fp_t_stream> &K, hls::stream<bls12_377_p_stream> &P);

extern bls12_377_p P_arr[];
extern fp_t K_arr[];

void printp2k(ap_uint<4> k, bls12_377_p p1, bls12_377_p p2);

#endif

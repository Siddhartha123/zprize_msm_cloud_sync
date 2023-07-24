#ifndef MSM_H
#define MSM_H

#include <stdio.h>

#include <iostream>

#include "bls12_377.h"
#include "hls_stream.h"

#define NUM_POINTS 256
#define SCRATCHPAD_SIZE 1024
#define LOG_SCRATCHPAD_SIZE 10

/*
N_t is used to hold numbers of the order of the MSM size.
e.g. count variables, num_padd_ops etc. are of the order of the MSM problem size.
*/
typedef ap_uint<15> N_t;

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

#define CHUNK_SIZE 6
#define NUM_CHUNKS 43
#define REM_CHUNK_SIZE 1
#define LOG_NUM_CHUNKS 6
#define TWO_RAISED_CHUNK_SIZE 64
#define TWO_RAISED_REM_CHUNK_SIZE 2
#define NIBBLE_RANGE bls12_377_coord_k_t::width - 1, bls12_377_coord_k_t::width - CHUNK_SIZE

typedef ap_uint<bls12_377_coord_t::width + CHUNK_SIZE> bls12_377_coord_k_t;
typedef ap_uint<2 * bls12_377_coord_t::width> dbl_bls12_377_coord_t;
typedef ap_uint<2 * bls12_377_coord_t::width + CHUNK_SIZE> dbl_bls12_377_coord_k_t;
typedef ap_uint<2 * bls12_377_coord_t::width + CHUNK_SIZE + LOG_NUM_CHUNKS>
    dbl_bls12_377_coord_k_chunk_t;
typedef ap_uint<bls12_377_coord_t::width + CHUNK_SIZE + LOG_NUM_CHUNKS> bls12_377_coord_k_chunk_t;

#define NIBBLE_RANGE_IDX bls12_377_idx_k_t::width - 1, bls12_377_idx_k_t::width - CHUNK_SIZE

typedef ap_uint<bls12_377_idx_t::width + CHUNK_SIZE> bls12_377_idx_k_t;
typedef ap_uint<2 * bls12_377_idx_t::width> dbl_bls12_377_idx_t;
typedef ap_uint<2 * bls12_377_idx_t::width + CHUNK_SIZE> dbl_bls12_377_idx_k_t;
typedef ap_uint<2 * bls12_377_idx_t::width + CHUNK_SIZE + LOG_NUM_CHUNKS>
    dbl_bls12_377_idx_k_chunk_t;

typedef ap_uint<CHUNK_SIZE> chunk_t;
typedef ap_uint<REM_CHUNK_SIZE> rem_chunk_t;

void bucket_unit(hls::stream<bls12_377_coord_k_t> &BFIFO_1,
                 hls::stream<bls12_377_coord_k_t> &padd_output_fifo,
                 N_t count_B[TWO_RAISED_CHUNK_SIZE], hls::stream<dbl_bls12_377_coord_k_t> &CFIFO,
                 bls12_377_coord_t B_i[TWO_RAISED_CHUNK_SIZE]);
void bucket_process(N_t count_B[TWO_RAISED_CHUNK_SIZE], N_t num_padd_ops,
                    hls::stream<bls12_377_idx_k_t> &BFIFO,
                    hls::stream<bls12_377_idx_k_t> &padd_output_fifo,
                    bls12_377_idx_t GBUFF_P2D[TWO_RAISED_CHUNK_SIZE],
                    hls::stream<dbl_bls12_377_idx_k_t> &CFIFO);

void msm_arr(fr_t K_arr[NUM_POINTS], N_t cnt_bucket_chunks[NUM_CHUNKS][TWO_RAISED_CHUNK_SIZE],
             hls::stream<N_t> &num_padd_ops, N_t total_num_padd_ops,
             bls12_377_idx_t GBUFF_P2D[NUM_CHUNKS][TWO_RAISED_CHUNK_SIZE],
             hls::stream<dbl_bls12_377_idx_k_chunk_t> &padd_input_bucket_fifo,
             hls::stream<bls12_377_idx_k_t> padd_output_fifo[NUM_CHUNKS]);

void top(fp_t P_arr_x[NUM_POINTS], fp_t P_arr_y[NUM_POINTS], fp_t P_arr_z[NUM_POINTS],
         fr_t K_arr[NUM_POINTS], N_t cnt_bucket_chunks[NUM_CHUNKS][TWO_RAISED_CHUNK_SIZE],
         hls::stream<N_t> &num_padd_ops, N_t total_num_padd_ops);
bls12_377_p msm_reference(hls::stream<fp_t_stream> &K, hls::stream<bls12_377_p_stream> &P);

extern bls12_377_p P_arr[];
// extern fp_t K_arr[];

void printp2k(chunk_t, bls12_377_p p1, bls12_377_p p2);

#endif

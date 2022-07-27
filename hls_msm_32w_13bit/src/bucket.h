#ifndef BUCKET_H
#define BUCKET_H

#define BDEPTH 8

void bucket_unit(coeff_t num_padd_ops, hls::stream<bn_coord_k_t> &BFIFO_1, u32 B_i[30], coeff_t count_B[16]);
void bucket_unit_csim(coeff_t num_padd_ops, hls::stream<bn_coord_k_t> &BFIFO_1, u32 B_i[30], coeff_t count_B[16]);

#endif
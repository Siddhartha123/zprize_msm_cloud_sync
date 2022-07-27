bn128_coord_t b_read(ap_uint<4> bucket_id, hls::stream<bn128_coord_t> &B_0,
                     hls::stream<bn128_coord_t> &B_1, hls::stream<bn128_coord_t> &B_2,
                     hls::stream<bn128_coord_t> &B_3, hls::stream<bn128_coord_t> &B_4,
                     hls::stream<bn128_coord_t> &B_5, hls::stream<bn128_coord_t> &B_6,
                     hls::stream<bn128_coord_t> &B_7, hls::stream<bn128_coord_t> &B_8,
                     hls::stream<bn128_coord_t> &B_9, hls::stream<bn128_coord_t> &B_10,
                     hls::stream<bn128_coord_t> &B_11, hls::stream<bn128_coord_t> &B_12,
                     hls::stream<bn128_coord_t> &B_13, hls::stream<bn128_coord_t> &B_14,
                     hls::stream<bn128_coord_t> &B_15) {
#pragma HLS inline
    bn128_coord_t result = 0;
    switch (bucket_id) {
        case 1:

            if (!B_1.empty()) result = B_1.read();
            break;
        case 2:
            if (!B_2.empty()) result = B_2.read();
            break;
        case 3:
            if (!B_3.empty()) result = B_3.read();
            break;
        case 4:
            if (!B_4.empty()) result = B_4.read();
            break;
        case 5:
            if (!B_5.empty()) result = B_5.read();
            break;
        case 6:
            if (!B_6.empty()) result = B_6.read();
            break;
        case 7:
            if (!B_7.empty()) result = B_7.read();
            break;
        case 8:
            if (!B_8.empty()) result = B_8.read();
            break;
        case 9:
            if (!B_9.empty()) result = B_9.read();
            break;
        case 10:
            if (!B_10.empty()) result = B_10.read();
            break;
        case 11:
            if (!B_11.empty()) result = B_11.read();
            break;
        case 12:
            if (!B_12.empty()) result = B_12.read();
            break;
        case 13:
            if (!B_13.empty()) result = B_13.read();
            break;
        case 14:
            if (!B_14.empty()) result = B_14.read();
            break;
        case 15:
            if (!B_15.empty()) result = B_15.read();
            break;
    }
    return result;
}

bn128_coord_t b_read_blocking(ap_uint<4> bucket_id, hls::stream<bn128_coord_t> &B_0,
                              hls::stream<bn128_coord_t> &B_1, hls::stream<bn128_coord_t> &B_2,
                              hls::stream<bn128_coord_t> &B_3, hls::stream<bn128_coord_t> &B_4,
                              hls::stream<bn128_coord_t> &B_5, hls::stream<bn128_coord_t> &B_6,
                              hls::stream<bn128_coord_t> &B_7, hls::stream<bn128_coord_t> &B_8,
                              hls::stream<bn128_coord_t> &B_9, hls::stream<bn128_coord_t> &B_10,
                              hls::stream<bn128_coord_t> &B_11, hls::stream<bn128_coord_t> &B_12,
                              hls::stream<bn128_coord_t> &B_13, hls::stream<bn128_coord_t> &B_14,
                              hls::stream<bn128_coord_t> &B_15) {
#pragma HLS inline
    bn128_coord_t result = 0;
    switch (bucket_id) {
        case 1:
            result = B_1.read();
            break;
        case 2:
            result = B_2.read();
            break;
        case 3:
            result = B_3.read();
            break;
        case 4:
            result = B_4.read();
            break;
        case 5:
            result = B_5.read();
            break;
        case 6:
            result = B_6.read();
            break;
        case 7:
            result = B_7.read();
            break;
        case 8:
            result = B_8.read();
            break;
        case 9:
            result = B_9.read();
            break;
        case 10:
            result = B_10.read();
            break;
        case 11:
            result = B_11.read();
            break;
        case 12:
            result = B_12.read();
            break;
        case 13:
            result = B_13.read();
            break;
        case 14:
            result = B_14.read();
            break;
        case 15:
            result = B_15.read();
            break;
    }
    return result;
}



bn128_coord_t b_read(ap_uint<4> bucket_id, hls::stream<bn128_coord_t> &B_1,
                     hls::stream<bn128_coord_t> &B_2, hls::stream<bn128_coord_t> &B_3,
                     hls::stream<bn128_coord_t> &B_4, hls::stream<bn128_coord_t> &B_5,
                     hls::stream<bn128_coord_t> &B_6, hls::stream<bn128_coord_t> &B_7,
                     hls::stream<bn128_coord_t> &B_8, hls::stream<bn128_coord_t> &B_9,
                     hls::stream<bn128_coord_t> &B_10, hls::stream<bn128_coord_t> &B_11,
                     hls::stream<bn128_coord_t> &B_12, hls::stream<bn128_coord_t> &B_13,
                     hls::stream<bn128_coord_t> &B_14, hls::stream<bn128_coord_t> &B_15) {
#pragma HLS inline
    bn128_coord_t result = 0;
    switch (bucket_id) {
        case 1:
            if (!B_1.empty()) result = B_1.read();
            break;
        case 2:
            if (!B_2.empty()) result = B_2.read();
            break;
        case 3:
            if (!B_3.empty()) result = B_3.read();
            break;
        case 4:
            if (!B_4.empty()) result = B_4.read();
            break;
        case 5:
            if (!B_5.empty()) result = B_5.read();
            break;
        case 6:
            if (!B_6.empty()) result = B_6.read();
            break;
        case 7:
            if (!B_7.empty()) result = B_7.read();
            break;
        case 8:
            if (!B_8.empty()) result = B_8.read();
            break;
        case 9:
            if (!B_9.empty()) result = B_9.read();
            break;
        case 10:
            if (!B_10.empty()) result = B_10.read();
            break;
        case 11:
            if (!B_11.empty()) result = B_11.read();
            break;
        case 12:
            if (!B_12.empty()) result = B_12.read();
            break;
        case 13:
            if (!B_13.empty()) result = B_13.read();
            break;
        case 14:
            if (!B_14.empty()) result = B_14.read();
            break;
        case 15:
            if (!B_15.empty()) result = B_15.read();
            break;
        default:
            result = 0;
            break;
    }
    return result;
}


void bucket_write(ap_uint<4> nibble_K, bn128_coord_t data, hls::stream<bn128_coord_t> &B_1,
                  hls::stream<bn128_coord_t> &B_2, hls::stream<bn128_coord_t> &B_3,
                  hls::stream<bn128_coord_t> &B_4, hls::stream<bn128_coord_t> &B_5,
                  hls::stream<bn128_coord_t> &B_6, hls::stream<bn128_coord_t> &B_7,
                  hls::stream<bn128_coord_t> &B_8, hls::stream<bn128_coord_t> &B_9,
                  hls::stream<bn128_coord_t> &B_10, hls::stream<bn128_coord_t> &B_11,
                  hls::stream<bn128_coord_t> &B_12, hls::stream<bn128_coord_t> &B_13,
                  hls::stream<bn128_coord_t> &B_14, hls::stream<bn128_coord_t> &B_15) {
#pragma HLS inline
    switch (nibble_K) {
        case 1:
            if (B_1.full())
                OVFIFO.write((nibble_K, data(38, 0)));
            else
                B_1.write(data(38, 0));
            break;
        case 2:
            if (B_2.full())
                OVFIFO.write((nibble_K, data(38, 0)));
            else
                B_2.write(data(38, 0));
            break;
        case 3:
            if (B_3.full())
                OVFIFO.write((nibble_K, data(38, 0)));
            else
                B_3.write(data(38, 0));
            break;
        case 4:
            if (B_4.full())
                OVFIFO.write((nibble_K, data(38, 0)));
            else
                B_4.write(data(38, 0));
            break;
        case 5:
            if (B_5.full())
                OVFIFO.write((nibble_K, data(38, 0)));
            else
                B_5.write(data(38, 0));
            break;
        case 6:
            if (B_6.full())
                OVFIFO.write((nibble_K, data(38, 0)));
            else
                B_6.write(data(38, 0));
            break;
        case 7:
            if (B_7.full())
                OVFIFO.write((nibble_K, data(38, 0)));
            else
                B_7.write(data(38, 0));
            break;
        case 8:
            if (B_8.full())
                OVFIFO.write((nibble_K, data(38, 0)));
            else
                B_8.write(data(38, 0));
            break;
        case 9:
            if (B_9.full())
                OVFIFO.write((nibble_K, data(38, 0)));
            else
                B_9.write(data(38, 0));
            break;
        case 10:
            if (B_10.full())
                OVFIFO.write((nibble_K, data(38, 0)));
            else
                B_10.write(data(38, 0));
            break;
        case 11:
            if (B_11.full())
                OVFIFO.write((nibble_K, data(38, 0)));
            else
                B_11.write(data(38, 0));
            break;
        case 12:
            if (B_12.full())
                OVFIFO.write((nibble_K, data(38, 0)));
            else
                B_12.write(data(38, 0));
            break;
        case 13:
            if (B_13.full())
                OVFIFO.write((nibble_K, data(38, 0)));
            else
                B_13.write(data(38, 0));
            break;
        case 14:
            if (B_14.full())
                OVFIFO.write((nibble_K, data(38, 0)));
            else
                B_14.write(data(38, 0));
            break;
        case 15:
            if (B_15.full())
                OVFIFO.write((nibble_K, data(38, 0)));
            else
                B_15.write(data(38, 0));
            break;
    }
}
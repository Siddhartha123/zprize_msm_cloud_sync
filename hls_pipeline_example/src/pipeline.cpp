typedef ap_uint<48> data2_t;
typedef ap_uint<24> data_t;

void top(hls::stream<data_t> &fifo){
    #pragma HLS dataflow
    int count1 = 0, count2 = 0;

    data_t x;
    hls::stream<data_t> cfifo1("intermediate fifo 1"), cfifo2("intermediate fifo 2");

    for(int i=0;i<32;i++){
        if(!fifo.empty() && count1 < 16)
            x = fifo.read();
        else if(!cfifo2.empty() && count2 < 16)
            x = cfifo2.read();
        cfifo1.write(x);
    }


    for(int i=0; i<16; i++){
        data_t temp = cfifo1.read() + 10;
        cfifo2.write(temp);
    }
}

void topadd(hls::stream<data2_t> &input_fifo, hls::stream<data_t> &output_fifo){
    ap_uint<8> p1_x, p1_y, p1_z, p2_x, p2_y, p2_z;
    ap_uint<8> x, y, z;

    for(int i=0;i<16;i++) {
      #pragma HLS pipeline
      (p1_x, p1_y, p1_z, p2_x, p2_y, p2_z) = input_fifo.read();
      x = p1_x + p2_x;
      y = p1_y + p2_y;
      z = p1_z + p2_z;
      output_fifo.write((x, y, z));
    }
}
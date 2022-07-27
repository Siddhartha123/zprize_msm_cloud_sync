#include <systemc>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
extern "C" void msm_arr(short*, short*, short*, short*, int*);
extern "C" void apatb_msm_arr_hw(volatile void * __xlx_apatb_param_P_arr_x, volatile void * __xlx_apatb_param_P_arr_y, volatile void * __xlx_apatb_param_P_arr_z, volatile void * __xlx_apatb_param_K_arr, volatile void * __xlx_apatb_param_B_i) {
  // Collect __xlx_P_arr_x__tmp_vec
  vector<sc_bv<16> >__xlx_P_arr_x__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    __xlx_P_arr_x__tmp_vec.push_back(((short*)__xlx_apatb_param_P_arr_x)[j]);
  }
  int __xlx_size_param_P_arr_x = 128;
  int __xlx_offset_param_P_arr_x = 0;
  int __xlx_offset_byte_param_P_arr_x = 0*2;
  short* __xlx_P_arr_x__input_buffer= new short[__xlx_P_arr_x__tmp_vec.size()];
  for (int i = 0; i < __xlx_P_arr_x__tmp_vec.size(); ++i) {
    __xlx_P_arr_x__input_buffer[i] = __xlx_P_arr_x__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_P_arr_y__tmp_vec
  vector<sc_bv<16> >__xlx_P_arr_y__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    __xlx_P_arr_y__tmp_vec.push_back(((short*)__xlx_apatb_param_P_arr_y)[j]);
  }
  int __xlx_size_param_P_arr_y = 128;
  int __xlx_offset_param_P_arr_y = 0;
  int __xlx_offset_byte_param_P_arr_y = 0*2;
  short* __xlx_P_arr_y__input_buffer= new short[__xlx_P_arr_y__tmp_vec.size()];
  for (int i = 0; i < __xlx_P_arr_y__tmp_vec.size(); ++i) {
    __xlx_P_arr_y__input_buffer[i] = __xlx_P_arr_y__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_P_arr_z__tmp_vec
  vector<sc_bv<16> >__xlx_P_arr_z__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    __xlx_P_arr_z__tmp_vec.push_back(((short*)__xlx_apatb_param_P_arr_z)[j]);
  }
  int __xlx_size_param_P_arr_z = 128;
  int __xlx_offset_param_P_arr_z = 0;
  int __xlx_offset_byte_param_P_arr_z = 0*2;
  short* __xlx_P_arr_z__input_buffer= new short[__xlx_P_arr_z__tmp_vec.size()];
  for (int i = 0; i < __xlx_P_arr_z__tmp_vec.size(); ++i) {
    __xlx_P_arr_z__input_buffer[i] = __xlx_P_arr_z__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_K_arr__tmp_vec
  vector<sc_bv<16> >__xlx_K_arr__tmp_vec;
  for (int j = 0, e = 128; j != e; ++j) {
    __xlx_K_arr__tmp_vec.push_back(((short*)__xlx_apatb_param_K_arr)[j]);
  }
  int __xlx_size_param_K_arr = 128;
  int __xlx_offset_param_K_arr = 0;
  int __xlx_offset_byte_param_K_arr = 0*2;
  short* __xlx_K_arr__input_buffer= new short[__xlx_K_arr__tmp_vec.size()];
  for (int i = 0; i < __xlx_K_arr__tmp_vec.size(); ++i) {
    __xlx_K_arr__input_buffer[i] = __xlx_K_arr__tmp_vec[i].range(15, 0).to_uint64();
  }
  // Collect __xlx_B_i__tmp_vec
  vector<sc_bv<32> >__xlx_B_i__tmp_vec;
  for (int j = 0, e = 30; j != e; ++j) {
    __xlx_B_i__tmp_vec.push_back(((int*)__xlx_apatb_param_B_i)[j]);
  }
  int __xlx_size_param_B_i = 30;
  int __xlx_offset_param_B_i = 0;
  int __xlx_offset_byte_param_B_i = 0*4;
  int* __xlx_B_i__input_buffer= new int[__xlx_B_i__tmp_vec.size()];
  for (int i = 0; i < __xlx_B_i__tmp_vec.size(); ++i) {
    __xlx_B_i__input_buffer[i] = __xlx_B_i__tmp_vec[i].range(31, 0).to_uint64();
  }
  // DUT call
  msm_arr(__xlx_P_arr_x__input_buffer, __xlx_P_arr_y__input_buffer, __xlx_P_arr_z__input_buffer, __xlx_K_arr__input_buffer, __xlx_B_i__input_buffer);
// print __xlx_apatb_param_P_arr_x
  sc_bv<16>*__xlx_P_arr_x_output_buffer = new sc_bv<16>[__xlx_size_param_P_arr_x];
  for (int i = 0; i < __xlx_size_param_P_arr_x; ++i) {
    __xlx_P_arr_x_output_buffer[i] = __xlx_P_arr_x__input_buffer[i+__xlx_offset_param_P_arr_x];
  }
  for (int i = 0; i < __xlx_size_param_P_arr_x; ++i) {
    ((short*)__xlx_apatb_param_P_arr_x)[i] = __xlx_P_arr_x_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_P_arr_y
  sc_bv<16>*__xlx_P_arr_y_output_buffer = new sc_bv<16>[__xlx_size_param_P_arr_y];
  for (int i = 0; i < __xlx_size_param_P_arr_y; ++i) {
    __xlx_P_arr_y_output_buffer[i] = __xlx_P_arr_y__input_buffer[i+__xlx_offset_param_P_arr_y];
  }
  for (int i = 0; i < __xlx_size_param_P_arr_y; ++i) {
    ((short*)__xlx_apatb_param_P_arr_y)[i] = __xlx_P_arr_y_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_P_arr_z
  sc_bv<16>*__xlx_P_arr_z_output_buffer = new sc_bv<16>[__xlx_size_param_P_arr_z];
  for (int i = 0; i < __xlx_size_param_P_arr_z; ++i) {
    __xlx_P_arr_z_output_buffer[i] = __xlx_P_arr_z__input_buffer[i+__xlx_offset_param_P_arr_z];
  }
  for (int i = 0; i < __xlx_size_param_P_arr_z; ++i) {
    ((short*)__xlx_apatb_param_P_arr_z)[i] = __xlx_P_arr_z_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_K_arr
  sc_bv<16>*__xlx_K_arr_output_buffer = new sc_bv<16>[__xlx_size_param_K_arr];
  for (int i = 0; i < __xlx_size_param_K_arr; ++i) {
    __xlx_K_arr_output_buffer[i] = __xlx_K_arr__input_buffer[i+__xlx_offset_param_K_arr];
  }
  for (int i = 0; i < __xlx_size_param_K_arr; ++i) {
    ((short*)__xlx_apatb_param_K_arr)[i] = __xlx_K_arr_output_buffer[i].to_uint64();
  }
// print __xlx_apatb_param_B_i
  sc_bv<32>*__xlx_B_i_output_buffer = new sc_bv<32>[__xlx_size_param_B_i];
  for (int i = 0; i < __xlx_size_param_B_i; ++i) {
    __xlx_B_i_output_buffer[i] = __xlx_B_i__input_buffer[i+__xlx_offset_param_B_i];
  }
  for (int i = 0; i < __xlx_size_param_B_i; ++i) {
    ((int*)__xlx_apatb_param_B_i)[i] = __xlx_B_i_output_buffer[i].to_uint64();
  }
}

#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_P_arr_x "../tv/cdatafile/c.msm_arr.autotvin_P_arr_x.dat"
#define AUTOTB_TVOUT_P_arr_x "../tv/cdatafile/c.msm_arr.autotvout_P_arr_x.dat"
// wrapc file define:
#define AUTOTB_TVIN_P_arr_y "../tv/cdatafile/c.msm_arr.autotvin_P_arr_y.dat"
#define AUTOTB_TVOUT_P_arr_y "../tv/cdatafile/c.msm_arr.autotvout_P_arr_y.dat"
// wrapc file define:
#define AUTOTB_TVIN_P_arr_z "../tv/cdatafile/c.msm_arr.autotvin_P_arr_z.dat"
#define AUTOTB_TVOUT_P_arr_z "../tv/cdatafile/c.msm_arr.autotvout_P_arr_z.dat"
// wrapc file define:
#define AUTOTB_TVIN_K_arr "../tv/cdatafile/c.msm_arr.autotvin_K_arr.dat"
#define AUTOTB_TVOUT_K_arr "../tv/cdatafile/c.msm_arr.autotvout_K_arr.dat"
// wrapc file define:
#define AUTOTB_TVIN_B_i "../tv/cdatafile/c.msm_arr.autotvin_B_i.dat"
#define AUTOTB_TVOUT_B_i "../tv/cdatafile/c.msm_arr.autotvout_B_i.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_P_arr_x "../tv/rtldatafile/rtl.msm_arr.autotvout_P_arr_x.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_P_arr_y "../tv/rtldatafile/rtl.msm_arr.autotvout_P_arr_y.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_P_arr_z "../tv/rtldatafile/rtl.msm_arr.autotvout_P_arr_z.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_K_arr "../tv/rtldatafile/rtl.msm_arr.autotvout_K_arr.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_B_i "../tv/rtldatafile/rtl.msm_arr.autotvout_B_i.dat"

class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  P_arr_x_depth = 0;
  P_arr_y_depth = 0;
  P_arr_z_depth = 0;
  K_arr_depth = 0;
  B_i_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{P_arr_x " << P_arr_x_depth << "}\n";
  total_list << "{P_arr_y " << P_arr_y_depth << "}\n";
  total_list << "{P_arr_z " << P_arr_z_depth << "}\n";
  total_list << "{K_arr " << K_arr_depth << "}\n";
  total_list << "{B_i " << B_i_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int P_arr_x_depth;
    int P_arr_y_depth;
    int P_arr_z_depth;
    int K_arr_depth;
    int B_i_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};

static void RTLOutputCheckAndReplacement(std::string &AESL_token, std::string PortName) {
  bool no_x = false;
  bool err = false;

  no_x = false;
  // search and replace 'X' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('X', 0);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'X' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
  no_x = false;
  // search and replace 'x' with '0' from the 3rd char of token
  while (!no_x) {
    size_t x_found = AESL_token.find('x', 2);
    if (x_found != string::npos) {
      if (!err) { 
        cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' on port" 
             << PortName << ", possible cause: There are uninitialized variables in the C design."
             << endl; 
        err = true;
      }
      AESL_token.replace(x_found, 1, "0");
    } else
      no_x = true;
  }
}
extern "C" void msm_arr_hw_stub_wrapper(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);

extern "C" void apatb_msm_arr_hw(volatile void * __xlx_apatb_param_P_arr_x, volatile void * __xlx_apatb_param_P_arr_y, volatile void * __xlx_apatb_param_P_arr_z, volatile void * __xlx_apatb_param_K_arr, volatile void * __xlx_apatb_param_B_i) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_B_i);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > B_i_pc_buffer(30);
          int i = 0;

          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            RTLOutputCheckAndReplacement(AESL_token, "B_i");
  
            // push token into output port buffer
            if (AESL_token != "") {
              B_i_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (i > 0) {{
            int i = 0;
            for (int j = 0, e = 30; j < e; j += 1, ++i) {
            ((int*)__xlx_apatb_param_B_i)[j] = B_i_pc_buffer[i].to_int64();
          }}}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static AESL_FILE_HANDLER aesl_fh;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
//P_arr_x
aesl_fh.touch(AUTOTB_TVIN_P_arr_x);
aesl_fh.touch(AUTOTB_TVOUT_P_arr_x);
//P_arr_y
aesl_fh.touch(AUTOTB_TVIN_P_arr_y);
aesl_fh.touch(AUTOTB_TVOUT_P_arr_y);
//P_arr_z
aesl_fh.touch(AUTOTB_TVIN_P_arr_z);
aesl_fh.touch(AUTOTB_TVOUT_P_arr_z);
//K_arr
aesl_fh.touch(AUTOTB_TVIN_K_arr);
aesl_fh.touch(AUTOTB_TVOUT_K_arr);
//B_i
aesl_fh.touch(AUTOTB_TVIN_B_i);
aesl_fh.touch(AUTOTB_TVOUT_B_i);
CodeState = DUMP_INPUTS;
unsigned __xlx_offset_byte_param_P_arr_x = 0;
// print P_arr_x Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_P_arr_x, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_P_arr_x = 0*2;
  if (__xlx_apatb_param_P_arr_x) {
    for (int j = 0  - 0, e = 128 - 0; j != e; ++j) {
sc_bv<16> __xlx_tmp_lv = ((short*)__xlx_apatb_param_P_arr_x)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_P_arr_x, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(128, &tcl_file.P_arr_x_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_P_arr_x, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_P_arr_y = 0;
// print P_arr_y Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_P_arr_y, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_P_arr_y = 0*2;
  if (__xlx_apatb_param_P_arr_y) {
    for (int j = 0  - 0, e = 128 - 0; j != e; ++j) {
sc_bv<16> __xlx_tmp_lv = ((short*)__xlx_apatb_param_P_arr_y)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_P_arr_y, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(128, &tcl_file.P_arr_y_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_P_arr_y, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_P_arr_z = 0;
// print P_arr_z Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_P_arr_z, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_P_arr_z = 0*2;
  if (__xlx_apatb_param_P_arr_z) {
    for (int j = 0  - 0, e = 128 - 0; j != e; ++j) {
sc_bv<16> __xlx_tmp_lv = ((short*)__xlx_apatb_param_P_arr_z)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_P_arr_z, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(128, &tcl_file.P_arr_z_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_P_arr_z, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_K_arr = 0;
// print K_arr Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_K_arr, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_K_arr = 0*2;
  if (__xlx_apatb_param_K_arr) {
    for (int j = 0  - 0, e = 128 - 0; j != e; ++j) {
sc_bv<16> __xlx_tmp_lv = ((short*)__xlx_apatb_param_K_arr)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_K_arr, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(128, &tcl_file.K_arr_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_K_arr, __xlx_sprintf_buffer.data());
}
unsigned __xlx_offset_byte_param_B_i = 0;
// print B_i Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVIN_B_i, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_B_i = 0*4;
  if (__xlx_apatb_param_B_i) {
    for (int j = 0  - 0, e = 30 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_B_i)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_B_i, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(30, &tcl_file.B_i_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVIN_B_i, __xlx_sprintf_buffer.data());
}
CodeState = CALL_C_DUT;
msm_arr_hw_stub_wrapper(__xlx_apatb_param_P_arr_x, __xlx_apatb_param_P_arr_y, __xlx_apatb_param_P_arr_z, __xlx_apatb_param_K_arr, __xlx_apatb_param_B_i);
CodeState = DUMP_OUTPUTS;
// print B_i Transactions
{
  sprintf(__xlx_sprintf_buffer.data(), "[[transaction]] %d\n", AESL_transaction);
  aesl_fh.write(AUTOTB_TVOUT_B_i, __xlx_sprintf_buffer.data());
  {  __xlx_offset_byte_param_B_i = 0*4;
  if (__xlx_apatb_param_B_i) {
    for (int j = 0  - 0, e = 30 - 0; j != e; ++j) {
sc_bv<32> __xlx_tmp_lv = ((int*)__xlx_apatb_param_B_i)[j];

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVOUT_B_i, __xlx_sprintf_buffer.data()); 
      }
  }
}
  tcl_file.set_num(30, &tcl_file.B_i_depth);
  sprintf(__xlx_sprintf_buffer.data(), "[[/transaction]] \n");
  aesl_fh.write(AUTOTB_TVOUT_B_i, __xlx_sprintf_buffer.data());
}
CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}

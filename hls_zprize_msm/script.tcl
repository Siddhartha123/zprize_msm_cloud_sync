############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project hls_zprize_msm
set_top msm_arr
add_files src/msm.h
add_files src/msm.cpp
add_files src/bls12_377.h
add_files src/bls12_377.cpp
add_files src/Fr.h
add_files src/Fr.cpp
add_files src/Fp.h
add_files src/Fp.cpp
add_files -tb src/fields_test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb src/curve_test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb src/bls12_377.h -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb src/Fr.h -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb src/Fp.h -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7a200t-ffg1156-2}
create_clock -period 4 -name default
source "./solution1/directives.tcl"
# csim_design
 csynth_design
# cosim_design
# export_design -format ip_catalog

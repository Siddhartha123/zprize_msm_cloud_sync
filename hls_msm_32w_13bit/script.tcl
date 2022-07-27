############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project hls_msm_32w_13bit
set_top msm_arr
add_files src/msm.h
add_files src/msm.cpp
add_files src/bucket.cpp
add_files src/field.h
add_files src/field.cpp
add_files src/bn128.h
add_files src/bn128.cpp
add_files -tb src/msm_test_case.h
add_files -tb src/msm_test.cpp
add_files -tb src/msm.h
add_files -tb src/field.h
add_files -tb src/ec_test_case.h
add_files -tb src/bn128.h
open_solution "solution1"
set_part {xc7a200tffg1156-2} -tool vivado
create_clock -period 4 -name default
#source "./hls_msm_32w_13bit/solution1/directives.tcl"

# Set variable to select which steps to execute
set hls_exec 1

if {$hls_exec == 1} {
	# Run C Simulation and Exit
	csim_design
	
} elseif {$hls_exec == 2} {
	# Run Synthesis and Exit
	csynth_design

}

# csim_design -compiler gcc
# csynth_design
# cosim_design
# export_design -rtl verilog -format ip_catalog

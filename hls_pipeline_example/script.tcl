############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project hls_msm_32w_13bit
set_top msm_arr
add_files src/pipeline.cpp
open_solution "solution1"
set_part {xcvu9p-flga2104-2-i} -tool vivado
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

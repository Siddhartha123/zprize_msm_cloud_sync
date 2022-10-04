############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_top -name msm_arr "msm_arr"
set_directive_pipeline -style frp "bucket_unit/bucket_unit_label1"
set_directive_pipeline -style frp "msm_arr/msm_arr_dataflow_4"
set_directive_pipeline -off "bucket_unit/bucket_unit_label0"
# set_directive_pipeline -off "msm_arr/pre_bucket_unit_label0"

set_directive_pipeline -style frp "msm_arr/bucket_process/msm_arr_dataflow_0"
set_directive_pipeline -style frp "msm_arr/msm_arr_dataflow_2"
set_directive_pipeline -style frp "msm_arr/bucket_process/msm_arr_dataflow_3"
############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_top -name msm_arr "msm_arr"
set_directive_pipeline -style frp "bucket_unit/bucket_unit_label1"
set_directive_pipeline -off "msm_arr/msm_arr_dataflow_4"
set_directive_pipeline -off "bucket_unit/bucket_unit_label0"
# set_directive_pipeline -off "msm_arr/pre_bucket_unit_label0"

set_directive_pipeline -style frp "msm_arr/msm_arr_dataflow_0"
set_directive_pipeline -style frp "msm_arr/msm_arr_dataflow_2"
set_directive_pipeline -off "bucket_process/msm_arr_dataflow_3"
set_directive_pipeline -off "rem_bucket_process/msm_arr_dataflow_3"
set_directive_pipeline -II 2 -style frp "msm_arr/msm_arr_dataflow_padd"
set_directive_pipeline -off "alg_loop_2and3/msm_arr_dataflow_6"

# Bucket depth directives
set_directive_stream -depth 1 "bucket_process" B\[0\]
set_directive_stream -depth 1 "bucket_process" B\[1\]
set_directive_stream -depth 1 "bucket_process" B\[2\]
set_directive_stream -depth 1 "bucket_process" B\[3\]
set_directive_stream -depth 1 "bucket_process" B\[4\]
set_directive_stream -depth 1 "bucket_process" B\[5\]
set_directive_stream -depth 1 "bucket_process" B\[6\]
set_directive_stream -depth 1 "bucket_process" B\[7\]
set_directive_stream -depth 1 "bucket_process" B\[8\]
set_directive_stream -depth 1 "bucket_process" B\[9\]
set_directive_stream -depth 1 "bucket_process" B\[10\]
set_directive_stream -depth 1 "bucket_process" B\[11\]
set_directive_stream -depth 1 "bucket_process" B\[12\]
set_directive_stream -depth 1 "bucket_process" B\[13\]
set_directive_stream -depth 1 "bucket_process" B\[14\]
set_directive_stream -depth 1 "bucket_process" B\[15\]
set_directive_stream -depth 1 "bucket_process" B\[16\]
set_directive_stream -depth 1 "bucket_process" B\[17\]
set_directive_stream -depth 1 "bucket_process" B\[18\]
set_directive_stream -depth 1 "bucket_process" B\[19\]
set_directive_stream -depth 1 "bucket_process" B\[20\]
set_directive_stream -depth 1 "bucket_process" B\[21\]
set_directive_stream -depth 1 "bucket_process" B\[22\]
set_directive_stream -depth 1 "bucket_process" B\[23\]
set_directive_stream -depth 1 "bucket_process" B\[24\]
set_directive_stream -depth 1 "bucket_process" B\[25\]
set_directive_stream -depth 1 "bucket_process" B\[26\]
set_directive_stream -depth 1 "bucket_process" B\[27\]
set_directive_stream -depth 1 "bucket_process" B\[28\]
set_directive_stream -depth 1 "bucket_process" B\[29\]
set_directive_stream -depth 1 "bucket_process" B\[30\]
set_directive_stream -depth 1 "bucket_process" B\[31\]
set_directive_stream -depth 1 "bucket_process" B\[32\]
set_directive_stream -depth 1 "bucket_process" B\[33\]
set_directive_stream -depth 1 "bucket_process" B\[34\]
set_directive_stream -depth 1 "bucket_process" B\[35\]
set_directive_stream -depth 1 "bucket_process" B\[36\]
set_directive_stream -depth 1 "bucket_process" B\[37\]
set_directive_stream -depth 1 "bucket_process" B\[38\]
set_directive_stream -depth 1 "bucket_process" B\[39\]
set_directive_stream -depth 1 "bucket_process" B\[40\]
set_directive_stream -depth 1 "bucket_process" B\[41\]
set_directive_stream -depth 1 "bucket_process" B\[42\]
set_directive_stream -depth 1 "bucket_process" B\[43\]
set_directive_stream -depth 1 "bucket_process" B\[44\]
set_directive_stream -depth 1 "bucket_process" B\[45\]
set_directive_stream -depth 1 "bucket_process" B\[46\]
set_directive_stream -depth 1 "bucket_process" B\[47\]
set_directive_stream -depth 1 "bucket_process" B\[48\]
set_directive_stream -depth 1 "bucket_process" B\[49\]
set_directive_stream -depth 1 "bucket_process" B\[50\]
set_directive_stream -depth 1 "bucket_process" B\[51\]
set_directive_stream -depth 1 "bucket_process" B\[52\]
set_directive_stream -depth 1 "bucket_process" B\[53\]
set_directive_stream -depth 1 "bucket_process" B\[54\]
set_directive_stream -depth 1 "bucket_process" B\[55\]
set_directive_stream -depth 1 "bucket_process" B\[56\]
set_directive_stream -depth 1 "bucket_process" B\[57\]
set_directive_stream -depth 1 "bucket_process" B\[58\]
set_directive_stream -depth 1 "bucket_process" B\[59\]
set_directive_stream -depth 1 "bucket_process" B\[60\]
set_directive_stream -depth 1 "bucket_process" B\[61\]
set_directive_stream -depth 1 "bucket_process" B\[62\]
set_directive_stream -depth 1 "bucket_process" B\[63\]

set_directive_stream -depth 1 "rem_bucket_process" B\[0\]
set_directive_stream -depth 1 "rem_bucket_process" B\[1\]
ghdl -a --work=work test_case_memory.vhd
ghdl -a --work=work -fsynopsys -fexplicit ../hls_zprize_msm/solution1/syn_256_6_43_full_rem/vhdl/msm_arr.vhd
ghdl -a --work=work -fsynopsys -fexplicit sys_test.vhd
ghdl -e --work=work  -fsynopsys -fexplicit test_case_memory
ghdl -e --work=work  -fsynopsys -fexplicit sys_test
ghdl -r --work=work sys_test --stop-time=1000ns --wave=msm.ghw
gtkwave msm.ghw

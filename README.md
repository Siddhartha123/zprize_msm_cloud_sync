This repository contains HLS source code for MSM implementation designed for [ZPrize](https://www.zprize.io/). The directory `hls_zprize_msm` is the main project directory, rest are intermediate files which are not in use anymore.


# Directory structure of `hls_zprize_msm`
 The implementation of MSM unit is done using Vitis HLS. 
 
1. `src` - C++ source code to be used in Vitis HLS

    `Fp.cpp`, `Fp.h` - functions for arithmetic on F<sub>p</sub>

    `Fr.cpp`, `Fr.h` - functions for arithmetic F<sub>r</sub>
        
    Field arithmetic on F<sub>p</sub> and F<sub>r</sub> include modular addition/subtraction and modular multiplication

    `bls12_377.cpp`, `bls12_377.h` - functions for arithmetic on points of BLS12-377 curve arithmetic - point doubling, point addition, scalar multiplication
        
    `msm.cpp`, `msm.h` - Algorithms for multiscalar multiplication top level function for MSM

    

2. `tester` - contains test vectors for MSM and field arithmetic.

    `testcase_1`, `testcase_2` - 13-bit field (for initial testing)
    
    `testcase_3` - full-scale test vectors (generated from [arkworks](https://github.com/arkworks-rs) implementation)

    `testcase_4`, `testcase_5` etc. are full-scale test vectors with different number of points


# Synthesis and Simulation

- To generate RTL from C++, use `script.tcl` present in base directory `hls_zprize_msm/`
    
```sh
vitis_hls script.tcl
```

- To launch simulation using ModelSim, run the following in vsim prompt from `hls_zprize_msm/hls_zprize_msm/solution1/modelsim`

```tcl
do run_msim_rtl_verilog.do
```
Note: ModelSim might report some syntax errors in Vitis generated RTL (e.g. semi-colon near ```endcase```). To fix this, run `preprocess.sh` present in `modelsim` directory before starting simulation.

# Testcases
To verify elliptic curve arithmetic, golden references for primitive operations were generated from [https://github.com/Pratyush/algebra-intro](https://github.com/Pratyush/algebra-intro). 

# References
- Y. Zhang et al., "PipeZK: Accelerating Zero-Knowledge Proof with a Pipelined Architecture," 2021 ACM/IEEE 48th Annual International Symposium on Computer Architecture (ISCA), 2021, pp. 416-428, doi: 10.1109/ISCA52012.2021.00040. ([link to publication](https://www.microsoft.com/en-us/research/uploads/prod/2021/05/isca21_pizk-60a269dbb1310.pdf))
- Charles. F. Xavier, "PipeMSM: Hardware Acceleration for Multi-Scalar Multiplication," Cryptology ePrint Archive, Paper 2022/999. ([link to publication](https://eprint.iacr.org/2022/999.pdf))
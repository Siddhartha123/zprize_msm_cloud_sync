
set TopModule "msm_arr"
set ClockPeriod 4
set ClockList ap_clk
set HasVivadoClockPeriod 0
set CombLogicFlag 0
set PipelineFlag 0
set DataflowTaskPipelineFlag 1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 0
set FloatingPointFlag 0
set FftOrFirFlag 0
set NbRWValue 3
set intNbAccess 1
set NewDSPMapping 1
set HasDSPModule 1
set ResetLevelFlag 1
set ResetStyle control
set ResetSyncFlag 1
set ResetRegisterFlag 0
set ResetVariableFlag 0
set ResetRegisterNum 0
set FsmEncStyle onehot
set MaxFanout 0
set RtlPrefix {}
set RtlSubPrefix msm_arr_
set ExtraCCFlags {}
set ExtraCLdFlags {}
set SynCheckOptions {}
set PresynOptions {}
set PreprocOptions {}
set SchedOptions {}
set BindOptions {}
set RtlGenOptions {}
set RtlWriterOptions {}
set CbcGenFlag {}
set CasGenFlag {}
set CasMonitorFlag {}
set AutoSimOptions {}
set ExportMCPathFlag 0
set SCTraceFileName mytrace
set SCTraceFileFormat vcd
set SCTraceOption all
set TargetInfo xcvu9p:-flga2104:-2-i
set SourceFiles {sc {} c {../../src/bn128.cpp ../../src/field.cpp ../../src/bucket.cpp ../../src/msm.cpp}}
set SourceFlags {sc {} c {{} {} {} {}}}
set DirectiveFile /home/51202.iskumar789.gmail.com/msm/zprize_msm_cloud_sync/hls_msm_32w_13bit/hls_msm_32w_13bit/solution1/solution1.directive
set TBFiles {verilog {../../src/bn128.h ../../src/ec_test_case.h ../../src/field.h ../../src/msm.h ../../src/msm_test.cpp ../../src/msm_test_case.h} bc {../../src/bn128.h ../../src/ec_test_case.h ../../src/field.h ../../src/msm.h ../../src/msm_test.cpp ../../src/msm_test_case.h} sc {../../src/bn128.h ../../src/ec_test_case.h ../../src/field.h ../../src/msm.h ../../src/msm_test.cpp ../../src/msm_test_case.h} vhdl {../../src/bn128.h ../../src/ec_test_case.h ../../src/field.h ../../src/msm.h ../../src/msm_test.cpp ../../src/msm_test_case.h} c {} cas {../../src/bn128.h ../../src/ec_test_case.h ../../src/field.h ../../src/msm.h ../../src/msm_test.cpp ../../src/msm_test_case.h}}
set SpecLanguage C
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {verilog {} bc {} sc {} vhdl {} c {} cas {}}
set TBInstNames {verilog {} bc {} sc {} vhdl {} c {} cas {}}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set TBTVFileNotFound {}
set AppFile ../hls.app
set ApsFile solution1.aps
set AvePath ../..
set DefaultPlatform DefaultPlatform
set multiClockList {}
set SCPortClockMap {}
set intNbAccess 1
set PlatformFiles {{DefaultPlatform {xilinx/virtexuplus/virtexuplus}}}
set HPFPO 0

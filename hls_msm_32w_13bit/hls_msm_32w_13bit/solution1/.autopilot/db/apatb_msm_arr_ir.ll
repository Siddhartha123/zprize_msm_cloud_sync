; ModuleID = '/home/51202.iskumar789.gmail.com/msm/zprize_msm_cloud_sync/hls_msm_32w_13bit/hls_msm_32w_13bit/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%struct.ap_uint = type { %struct.ap_int_base }
%struct.ap_int_base = type { %struct.ssdm_int }
%struct.ssdm_int = type { i13 }
%struct.ap_uint.0 = type { %struct.ap_int_base.29 }
%struct.ap_int_base.29 = type { %struct.ssdm_int.30 }
%struct.ssdm_int.30 = type { i32 }

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #0

; Function Attrs: noinline
define void @apatb_msm_arr_ir(%struct.ap_uint* %P_arr_x, %struct.ap_uint* %P_arr_y, %struct.ap_uint* %P_arr_z, %struct.ap_uint* %K_arr, %struct.ap_uint.0* %B_i) local_unnamed_addr #1 {
entry:
  %P_arr_x_copy = alloca [128 x %struct.ap_uint], align 512
  %P_arr_y_copy = alloca [128 x %struct.ap_uint], align 512
  %P_arr_z_copy = alloca [128 x %struct.ap_uint], align 512
  %K_arr_copy = alloca [128 x %struct.ap_uint], align 512
  %B_i_copy = alloca [30 x %struct.ap_uint.0], align 512
  %0 = bitcast %struct.ap_uint* %P_arr_x to [128 x %struct.ap_uint]*
  %1 = bitcast %struct.ap_uint* %P_arr_y to [128 x %struct.ap_uint]*
  %2 = bitcast %struct.ap_uint* %P_arr_z to [128 x %struct.ap_uint]*
  %3 = bitcast %struct.ap_uint* %K_arr to [128 x %struct.ap_uint]*
  %4 = bitcast %struct.ap_uint.0* %B_i to [30 x %struct.ap_uint.0]*
  call fastcc void @copy_in([128 x %struct.ap_uint]* %0, [128 x %struct.ap_uint]* nonnull align 512 %P_arr_x_copy, [128 x %struct.ap_uint]* %1, [128 x %struct.ap_uint]* nonnull align 512 %P_arr_y_copy, [128 x %struct.ap_uint]* %2, [128 x %struct.ap_uint]* nonnull align 512 %P_arr_z_copy, [128 x %struct.ap_uint]* %3, [128 x %struct.ap_uint]* nonnull align 512 %K_arr_copy, [30 x %struct.ap_uint.0]* %4, [30 x %struct.ap_uint.0]* nonnull align 512 %B_i_copy)
  %5 = getelementptr inbounds [128 x %struct.ap_uint], [128 x %struct.ap_uint]* %P_arr_x_copy, i32 0, i32 0
  %6 = getelementptr inbounds [128 x %struct.ap_uint], [128 x %struct.ap_uint]* %P_arr_y_copy, i32 0, i32 0
  %7 = getelementptr inbounds [128 x %struct.ap_uint], [128 x %struct.ap_uint]* %P_arr_z_copy, i32 0, i32 0
  %8 = getelementptr inbounds [128 x %struct.ap_uint], [128 x %struct.ap_uint]* %K_arr_copy, i32 0, i32 0
  %9 = getelementptr inbounds [30 x %struct.ap_uint.0], [30 x %struct.ap_uint.0]* %B_i_copy, i32 0, i32 0
  call void @apatb_msm_arr_hw(%struct.ap_uint* %5, %struct.ap_uint* %6, %struct.ap_uint* %7, %struct.ap_uint* %8, %struct.ap_uint.0* %9)
  call fastcc void @copy_out([128 x %struct.ap_uint]* %0, [128 x %struct.ap_uint]* nonnull align 512 %P_arr_x_copy, [128 x %struct.ap_uint]* %1, [128 x %struct.ap_uint]* nonnull align 512 %P_arr_y_copy, [128 x %struct.ap_uint]* %2, [128 x %struct.ap_uint]* nonnull align 512 %P_arr_z_copy, [128 x %struct.ap_uint]* %3, [128 x %struct.ap_uint]* nonnull align 512 %K_arr_copy, [30 x %struct.ap_uint.0]* %4, [30 x %struct.ap_uint.0]* nonnull align 512 %B_i_copy)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @copy_in([128 x %struct.ap_uint]*, [128 x %struct.ap_uint]* noalias align 512, [128 x %struct.ap_uint]*, [128 x %struct.ap_uint]* noalias align 512, [128 x %struct.ap_uint]*, [128 x %struct.ap_uint]* noalias align 512, [128 x %struct.ap_uint]*, [128 x %struct.ap_uint]* noalias align 512, [30 x %struct.ap_uint.0]*, [30 x %struct.ap_uint.0]* noalias align 512) unnamed_addr #2 {
entry:
  call fastcc void @onebyonecpy_hls.p0a128struct.ap_uint([128 x %struct.ap_uint]* align 512 %1, [128 x %struct.ap_uint]* %0)
  call fastcc void @onebyonecpy_hls.p0a128struct.ap_uint([128 x %struct.ap_uint]* align 512 %3, [128 x %struct.ap_uint]* %2)
  call fastcc void @onebyonecpy_hls.p0a128struct.ap_uint([128 x %struct.ap_uint]* align 512 %5, [128 x %struct.ap_uint]* %4)
  call fastcc void @onebyonecpy_hls.p0a128struct.ap_uint([128 x %struct.ap_uint]* align 512 %7, [128 x %struct.ap_uint]* %6)
  call fastcc void @onebyonecpy_hls.p0a30struct.ap_uint.0([30 x %struct.ap_uint.0]* align 512 %9, [30 x %struct.ap_uint.0]* %8)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @onebyonecpy_hls.p0a128struct.ap_uint([128 x %struct.ap_uint]* noalias align 512, [128 x %struct.ap_uint]* noalias) unnamed_addr #3 {
entry:
  %2 = icmp eq [128 x %struct.ap_uint]* %0, null
  %3 = icmp eq [128 x %struct.ap_uint]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.head, %copy
  %for.loop.idx9 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.head ]
  %dst.addr = getelementptr [128 x %struct.ap_uint], [128 x %struct.ap_uint]* %0, i64 0, i64 %for.loop.idx9
  %src.addr = getelementptr [128 x %struct.ap_uint], [128 x %struct.ap_uint]* %1, i64 0, i64 %for.loop.idx9
  %5 = bitcast %struct.ap_uint* %src.addr to i8*
  %6 = call i1 @fpga_fifo_exist_2(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %for.loop
  call fastcc void @streamcpy_hls.p0struct.ap_uint(%struct.ap_uint* %dst.addr, %struct.ap_uint* %src.addr)
  br label %for.loop.head

; <label>:8:                                      ; preds = %for.loop
  %src.addr.01 = getelementptr [128 x %struct.ap_uint], [128 x %struct.ap_uint]* %1, i64 0, i64 %for.loop.idx9, i32 0
  %dst.addr.02 = getelementptr [128 x %struct.ap_uint], [128 x %struct.ap_uint]* %0, i64 0, i64 %for.loop.idx9, i32 0
  %9 = bitcast %struct.ap_int_base* %src.addr.01 to i8*
  %10 = call i1 @fpga_fifo_exist_2(i8* %9)
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %8
  call fastcc void @streamcpy_hls.p0struct.ap_int_base(%struct.ap_int_base* %dst.addr.02, %struct.ap_int_base* %src.addr.01)
  br label %for.loop.head

; <label>:12:                                     ; preds = %8
  %src.addr.0.03 = getelementptr [128 x %struct.ap_uint], [128 x %struct.ap_uint]* %1, i64 0, i64 %for.loop.idx9, i32 0, i32 0
  %dst.addr.0.04 = getelementptr [128 x %struct.ap_uint], [128 x %struct.ap_uint]* %0, i64 0, i64 %for.loop.idx9, i32 0, i32 0
  %13 = bitcast %struct.ssdm_int* %src.addr.0.03 to i8*
  %14 = call i1 @fpga_fifo_exist_2(i8* %13)
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %12
  call fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* %dst.addr.0.04, %struct.ssdm_int* %src.addr.0.03)
  br label %for.loop.head

; <label>:16:                                     ; preds = %12
  %dst.addr.0.0.06.gep7 = getelementptr [128 x %struct.ap_uint], [128 x %struct.ap_uint]* %0, i64 0, i64 %for.loop.idx9, i32 0, i32 0, i32 0
  %17 = bitcast i13* %dst.addr.0.0.06.gep7 to i8*
  %src.addr.0.0.05.gep8 = getelementptr [128 x %struct.ap_uint], [128 x %struct.ap_uint]* %1, i64 0, i64 %for.loop.idx9, i32 0, i32 0, i32 0
  %18 = bitcast i13* %src.addr.0.0.05.gep8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %17, i8* align 1 %18, i64 2, i1 false)
  br label %for.loop.head

for.loop.head:                                    ; preds = %16, %15, %11, %7
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx9, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 128
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.head, %entry
  ret void
}

declare i1 @fpga_fifo_exist_2(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_uint(%struct.ap_uint* noalias nocapture, %struct.ap_uint* noalias nocapture) unnamed_addr #4 {
entry:
  %2 = alloca %struct.ap_uint
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_uint* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_2(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_uint* %2 to i8*
  %6 = bitcast %struct.ap_uint* %1 to i8*
  call void @fpga_fifo_pop_2(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_uint, %struct.ap_uint* %2
  %8 = bitcast %struct.ap_uint* %2 to i8*
  %9 = bitcast %struct.ap_uint* %0 to i8*
  call void @fpga_fifo_push_2(i8* %8, i8* %9)
  br label %empty, !llvm.loop !5

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_uint* %1 to i8*
  %11 = bitcast %struct.ap_uint* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 2, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_int_base(%struct.ap_int_base* noalias nocapture, %struct.ap_int_base* noalias nocapture) unnamed_addr #4 {
entry:
  %2 = alloca %struct.ap_int_base
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int_base* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_2(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int_base* %2 to i8*
  %6 = bitcast %struct.ap_int_base* %1 to i8*
  call void @fpga_fifo_pop_2(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int_base, %struct.ap_int_base* %2
  %8 = bitcast %struct.ap_int_base* %2 to i8*
  %9 = bitcast %struct.ap_int_base* %0 to i8*
  call void @fpga_fifo_push_2(i8* %8, i8* %9)
  br label %empty, !llvm.loop !7

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_int_base* %1 to i8*
  %11 = bitcast %struct.ap_int_base* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 2, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ssdm_int(%struct.ssdm_int* noalias nocapture, %struct.ssdm_int* noalias nocapture) unnamed_addr #4 {
entry:
  %2 = alloca %struct.ssdm_int
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ssdm_int* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_2(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ssdm_int* %2 to i8*
  %6 = bitcast %struct.ssdm_int* %1 to i8*
  call void @fpga_fifo_pop_2(i8* %5, i8* %6)
  %7 = load volatile %struct.ssdm_int, %struct.ssdm_int* %2
  %8 = bitcast %struct.ssdm_int* %2 to i8*
  %9 = bitcast %struct.ssdm_int* %0 to i8*
  call void @fpga_fifo_push_2(i8* %8, i8* %9)
  br label %empty, !llvm.loop !8

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ssdm_int* %1 to i8*
  %11 = bitcast %struct.ssdm_int* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 2, i1 false)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @onebyonecpy_hls.p0a30struct.ap_uint.0([30 x %struct.ap_uint.0]* noalias align 512, [30 x %struct.ap_uint.0]* noalias) unnamed_addr #3 {
entry:
  %2 = icmp eq [30 x %struct.ap_uint.0]* %0, null
  %3 = icmp eq [30 x %struct.ap_uint.0]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.head, %copy
  %for.loop.idx9 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.head ]
  %dst.addr = getelementptr [30 x %struct.ap_uint.0], [30 x %struct.ap_uint.0]* %0, i64 0, i64 %for.loop.idx9
  %src.addr = getelementptr [30 x %struct.ap_uint.0], [30 x %struct.ap_uint.0]* %1, i64 0, i64 %for.loop.idx9
  %5 = bitcast %struct.ap_uint.0* %src.addr to i8*
  %6 = call i1 @fpga_fifo_exist_4(i8* %5)
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %for.loop
  call fastcc void @streamcpy_hls.p0struct.ap_uint.0(%struct.ap_uint.0* %dst.addr, %struct.ap_uint.0* %src.addr)
  br label %for.loop.head

; <label>:8:                                      ; preds = %for.loop
  %src.addr.01 = getelementptr [30 x %struct.ap_uint.0], [30 x %struct.ap_uint.0]* %1, i64 0, i64 %for.loop.idx9, i32 0
  %dst.addr.02 = getelementptr [30 x %struct.ap_uint.0], [30 x %struct.ap_uint.0]* %0, i64 0, i64 %for.loop.idx9, i32 0
  %9 = bitcast %struct.ap_int_base.29* %src.addr.01 to i8*
  %10 = call i1 @fpga_fifo_exist_4(i8* %9)
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %8
  call fastcc void @streamcpy_hls.p0struct.ap_int_base.29(%struct.ap_int_base.29* %dst.addr.02, %struct.ap_int_base.29* %src.addr.01)
  br label %for.loop.head

; <label>:12:                                     ; preds = %8
  %src.addr.0.03 = getelementptr [30 x %struct.ap_uint.0], [30 x %struct.ap_uint.0]* %1, i64 0, i64 %for.loop.idx9, i32 0, i32 0
  %dst.addr.0.04 = getelementptr [30 x %struct.ap_uint.0], [30 x %struct.ap_uint.0]* %0, i64 0, i64 %for.loop.idx9, i32 0, i32 0
  %13 = bitcast %struct.ssdm_int.30* %src.addr.0.03 to i8*
  %14 = call i1 @fpga_fifo_exist_4(i8* %13)
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %12
  call fastcc void @streamcpy_hls.p0struct.ssdm_int.30(%struct.ssdm_int.30* %dst.addr.0.04, %struct.ssdm_int.30* %src.addr.0.03)
  br label %for.loop.head

; <label>:16:                                     ; preds = %12
  %dst.addr.0.0.06.gep7 = getelementptr [30 x %struct.ap_uint.0], [30 x %struct.ap_uint.0]* %0, i64 0, i64 %for.loop.idx9, i32 0, i32 0, i32 0
  %17 = bitcast i32* %dst.addr.0.0.06.gep7 to i8*
  %src.addr.0.0.05.gep8 = getelementptr [30 x %struct.ap_uint.0], [30 x %struct.ap_uint.0]* %1, i64 0, i64 %for.loop.idx9, i32 0, i32 0, i32 0
  %18 = bitcast i32* %src.addr.0.0.05.gep8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %17, i8* align 1 %18, i64 4, i1 false)
  br label %for.loop.head

for.loop.head:                                    ; preds = %16, %15, %11, %7
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx9, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 30
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.head, %entry
  ret void
}

declare i1 @fpga_fifo_exist_4(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_uint.0(%struct.ap_uint.0* noalias nocapture, %struct.ap_uint.0* noalias nocapture) unnamed_addr #4 {
entry:
  %2 = alloca %struct.ap_uint.0
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_uint.0* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_4(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_uint.0* %2 to i8*
  %6 = bitcast %struct.ap_uint.0* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_uint.0, %struct.ap_uint.0* %2
  %8 = bitcast %struct.ap_uint.0* %2 to i8*
  %9 = bitcast %struct.ap_uint.0* %0 to i8*
  call void @fpga_fifo_push_4(i8* %8, i8* %9)
  br label %empty, !llvm.loop !9

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_uint.0* %1 to i8*
  %11 = bitcast %struct.ap_uint.0* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 4, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ap_int_base.29(%struct.ap_int_base.29* noalias nocapture, %struct.ap_int_base.29* noalias nocapture) unnamed_addr #4 {
entry:
  %2 = alloca %struct.ap_int_base.29
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ap_int_base.29* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_4(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ap_int_base.29* %2 to i8*
  %6 = bitcast %struct.ap_int_base.29* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %5, i8* %6)
  %7 = load volatile %struct.ap_int_base.29, %struct.ap_int_base.29* %2
  %8 = bitcast %struct.ap_int_base.29* %2 to i8*
  %9 = bitcast %struct.ap_int_base.29* %0 to i8*
  call void @fpga_fifo_push_4(i8* %8, i8* %9)
  br label %empty, !llvm.loop !10

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ap_int_base.29* %1 to i8*
  %11 = bitcast %struct.ap_int_base.29* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 4, i1 false)
  ret void
}

; Function Attrs: argmemonly noinline
define internal fastcc void @streamcpy_hls.p0struct.ssdm_int.30(%struct.ssdm_int.30* noalias nocapture, %struct.ssdm_int.30* noalias nocapture) unnamed_addr #4 {
entry:
  %2 = alloca %struct.ssdm_int.30
  br label %empty

empty:                                            ; preds = %push, %entry
  %3 = bitcast %struct.ssdm_int.30* %1 to i8*
  %4 = call i1 @fpga_fifo_not_empty_4(i8* %3)
  br i1 %4, label %push, label %ret

push:                                             ; preds = %empty
  %5 = bitcast %struct.ssdm_int.30* %2 to i8*
  %6 = bitcast %struct.ssdm_int.30* %1 to i8*
  call void @fpga_fifo_pop_4(i8* %5, i8* %6)
  %7 = load volatile %struct.ssdm_int.30, %struct.ssdm_int.30* %2
  %8 = bitcast %struct.ssdm_int.30* %2 to i8*
  %9 = bitcast %struct.ssdm_int.30* %0 to i8*
  call void @fpga_fifo_push_4(i8* %8, i8* %9)
  br label %empty, !llvm.loop !11

ret:                                              ; preds = %empty
  %10 = bitcast %struct.ssdm_int.30* %1 to i8*
  %11 = bitcast %struct.ssdm_int.30* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 %10, i64 4, i1 false)
  ret void
}

; Function Attrs: noinline
define internal fastcc void @copy_out([128 x %struct.ap_uint]*, [128 x %struct.ap_uint]* noalias align 512, [128 x %struct.ap_uint]*, [128 x %struct.ap_uint]* noalias align 512, [128 x %struct.ap_uint]*, [128 x %struct.ap_uint]* noalias align 512, [128 x %struct.ap_uint]*, [128 x %struct.ap_uint]* noalias align 512, [30 x %struct.ap_uint.0]*, [30 x %struct.ap_uint.0]* noalias align 512) unnamed_addr #5 {
entry:
  call fastcc void @onebyonecpy_hls.p0a128struct.ap_uint([128 x %struct.ap_uint]* %0, [128 x %struct.ap_uint]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0a128struct.ap_uint([128 x %struct.ap_uint]* %2, [128 x %struct.ap_uint]* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0a128struct.ap_uint([128 x %struct.ap_uint]* %4, [128 x %struct.ap_uint]* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0a128struct.ap_uint([128 x %struct.ap_uint]* %6, [128 x %struct.ap_uint]* align 512 %7)
  call fastcc void @onebyonecpy_hls.p0a30struct.ap_uint.0([30 x %struct.ap_uint.0]* %8, [30 x %struct.ap_uint.0]* align 512 %9)
  ret void
}

declare void @apatb_msm_arr_hw(%struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint.0*)

define void @msm_arr_hw_stub_wrapper(%struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint.0*) #6 {
entry:
  %5 = bitcast %struct.ap_uint* %0 to [128 x %struct.ap_uint]*
  %6 = bitcast %struct.ap_uint* %1 to [128 x %struct.ap_uint]*
  %7 = bitcast %struct.ap_uint* %2 to [128 x %struct.ap_uint]*
  %8 = bitcast %struct.ap_uint* %3 to [128 x %struct.ap_uint]*
  %9 = bitcast %struct.ap_uint.0* %4 to [30 x %struct.ap_uint.0]*
  call void @copy_out([128 x %struct.ap_uint]* null, [128 x %struct.ap_uint]* %5, [128 x %struct.ap_uint]* null, [128 x %struct.ap_uint]* %6, [128 x %struct.ap_uint]* null, [128 x %struct.ap_uint]* %7, [128 x %struct.ap_uint]* null, [128 x %struct.ap_uint]* %8, [30 x %struct.ap_uint.0]* null, [30 x %struct.ap_uint.0]* %9)
  %10 = bitcast [128 x %struct.ap_uint]* %5 to %struct.ap_uint*
  %11 = bitcast [128 x %struct.ap_uint]* %6 to %struct.ap_uint*
  %12 = bitcast [128 x %struct.ap_uint]* %7 to %struct.ap_uint*
  %13 = bitcast [128 x %struct.ap_uint]* %8 to %struct.ap_uint*
  %14 = bitcast [30 x %struct.ap_uint.0]* %9 to %struct.ap_uint.0*
  call void @msm_arr_hw_stub(%struct.ap_uint* %10, %struct.ap_uint* %11, %struct.ap_uint* %12, %struct.ap_uint* %13, %struct.ap_uint.0* %14)
  call void @copy_in([128 x %struct.ap_uint]* null, [128 x %struct.ap_uint]* %5, [128 x %struct.ap_uint]* null, [128 x %struct.ap_uint]* %6, [128 x %struct.ap_uint]* null, [128 x %struct.ap_uint]* %7, [128 x %struct.ap_uint]* null, [128 x %struct.ap_uint]* %8, [30 x %struct.ap_uint.0]* null, [30 x %struct.ap_uint.0]* %9)
  ret void
}

declare void @msm_arr_hw_stub(%struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint*, %struct.ap_uint.0*)

declare i1 @fpga_fifo_not_empty_2(i8*)

declare i1 @fpga_fifo_not_empty_4(i8*)

declare void @fpga_fifo_pop_2(i8*, i8*)

declare void @fpga_fifo_pop_4(i8*, i8*)

declare void @fpga_fifo_push_2(i8*, i8*)

declare void @fpga_fifo_push_4(i8*, i8*)

attributes #0 = { argmemonly nounwind }
attributes #1 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { noinline "fpga.wrapper.func"="copyin" }
attributes #3 = { noinline "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline "fpga.wrapper.func"="streamcpy_hls" }
attributes #5 = { noinline "fpga.wrapper.func"="copyout" }
attributes #6 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.rotate.disable"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}

; ModuleID = '/home/austin/ECE1373_GhostSynth/modules/Echo/Echo/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@writeBuffer = internal unnamed_addr global i32 0, align 4
@readBuffer = internal unnamed_addr global i32 0, align 4
@guard_variable_for_E_1 = internal unnamed_addr global i1 false
@guard_variable_for_E = internal unnamed_addr global i1 false
@delaycheck = internal unnamed_addr global i32 0, align 4
@buffer_r = internal unnamed_addr global [4800 x float] zeroinitializer, align 16
@Echo_str = internal unnamed_addr constant [5 x i8] c"Echo\00"
@p_str5 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@p_str4 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str3 = private unnamed_addr constant [9 x i8] c"CTRL_BUS\00", align 1
@p_str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str1 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_Write.axis.volatile.floatP(float*, float) {
entry:
  store float %1, float* %0
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecLatency(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_Read.s_axilite.i32(i32) {
entry:
  ret i32 %0
}

define weak float @_ssdm_op_Read.s_axilite.float(float) {
entry:
  ret float %0
}

define weak float @_ssdm_op_Read.axis.volatile.floatP(float*) {
entry:
  %empty = load float* %0
  ret float %empty
}

define void @Echo(float* %value_in_V, float* %value_out_V, i32 %delay, float %scale) {
  call void (...)* @_ssdm_op_SpecBitsMap(float* %value_in_V), !map !20
  call void (...)* @_ssdm_op_SpecBitsMap(float* %value_out_V), !map !26
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %delay), !map !30
  call void (...)* @_ssdm_op_SpecBitsMap(float %scale), !map !36
  call void (...)* @_ssdm_op_SpecTopModule([5 x i8]* @Echo_str) nounwind
  %scale_read = call float @_ssdm_op_Read.s_axilite.float(float %scale)
  %delay_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %delay)
  call void (...)* @_ssdm_op_SpecLatency(i32 12, i32 65535, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %delay, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(float %scale, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(float* %value_in_V, [5 x i8]* @p_str4, i32 1, i32 1, [5 x i8]* @p_str5, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(float* %value_out_V, [5 x i8]* @p_str4, i32 1, i32 1, [5 x i8]* @p_str5, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  %guard_variable_for_E = load i1* @guard_variable_for_E, align 1
  %readBuffer_load = load i32* @readBuffer, align 4
  br i1 %guard_variable_for_E, label %._crit_edge, label %codeRepl1

codeRepl1:                                        ; preds = %0
  %tmp_2_i = sub nsw i32 4800, %delay_read
  store i1 true, i1* @guard_variable_for_E, align 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %codeRepl1, %0
  %readBuffer_loc = phi i32 [ %tmp_2_i, %codeRepl1 ], [ %readBuffer_load, %0 ]
  %guard_variable_for_E_1 = load i1* @guard_variable_for_E_1, align 1
  %delaycheck_load = load i32* @delaycheck, align 4
  br i1 %guard_variable_for_E_1, label %._crit_edge6, label %codeRepl

codeRepl:                                         ; preds = %._crit_edge
  store i1 true, i1* @guard_variable_for_E_1, align 1
  br label %._crit_edge6

._crit_edge6:                                     ; preds = %codeRepl, %._crit_edge
  %delaycheck_flag = phi i1 [ true, %codeRepl ], [ false, %._crit_edge ]
  %delaycheck_loc = phi i32 [ %delay_read, %codeRepl ], [ %delaycheck_load, %._crit_edge ]
  %tmp_4 = icmp eq i32 %delaycheck_loc, %delay_read
  %writeBuffer_load = load i32* @writeBuffer, align 4
  %tmp_5 = sub nsw i32 4800, %delay_read
  %readBuffer_loc_tmp_5 = select i1 %tmp_4, i32 %readBuffer_loc, i32 %tmp_5
  %not_tmp_4 = xor i1 %tmp_4, true
  %delaycheck_flag_s = or i1 %delaycheck_flag, %not_tmp_4
  %writeBuffer_load_s = select i1 %tmp_4, i32 %writeBuffer_load, i32 0
  %tmp_2 = call float @_ssdm_op_Read.axis.volatile.floatP(float* %value_in_V)
  %tmp_7 = sext i32 %readBuffer_loc_tmp_5 to i64
  %buffer_addr = getelementptr inbounds [4800 x float]* @buffer_r, i64 0, i64 %tmp_7
  %buffer_load = load float* %buffer_addr, align 4
  %tmp_8 = fmul float %buffer_load, %scale_read
  %current_value = fadd float %tmp_2, %tmp_8
  %tmp_9 = sext i32 %writeBuffer_load_s to i64
  %buffer_addr_1 = getelementptr inbounds [4800 x float]* @buffer_r, i64 0, i64 %tmp_9
  store float %current_value, float* %buffer_addr_1, align 4
  call void @_ssdm_op_Write.axis.volatile.floatP(float* %value_out_V, float %current_value)
  %tmp_s = icmp slt i32 %readBuffer_loc_tmp_5, 4800
  %tmp_3 = add nsw i32 %readBuffer_loc_tmp_5, 1
  %storemerge = select i1 %tmp_s, i32 %tmp_3, i32 0
  %tmp_6 = icmp slt i32 %writeBuffer_load_s, 4800
  %tmp_1 = add nsw i32 %writeBuffer_load_s, 1
  %storemerge5 = select i1 %tmp_6, i32 %tmp_1, i32 0
  store i32 %storemerge5, i32* @writeBuffer, align 4
  br i1 %delaycheck_flag_s, label %mergeST2, label %._crit_edge7.new3

mergeST2:                                         ; preds = %._crit_edge6
  store i32 %delay_read, i32* @delaycheck, align 4
  br label %._crit_edge7.new3

._crit_edge7.new3:                                ; preds = %mergeST2, %._crit_edge6
  store i32 %storemerge, i32* @readBuffer, align 4
  ret void
}

!opencl.kernels = !{!0, !7, !13, !15, !18}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<float> &", metadata !"hls::stream<float> &", metadata !"int", metadata !"float"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"value_in", metadata !"value_out", metadata !"delay", metadata !"scale"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"const float &"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"wdata"}
!13 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !14, metadata !6}
!14 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!15 = metadata !{null, metadata !8, metadata !9, metadata !16, metadata !11, metadata !17, metadata !6}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"float &"}
!17 = metadata !{metadata !"kernel_arg_name", metadata !"rdata"}
!18 = metadata !{null, metadata !8, metadata !9, metadata !16, metadata !11, metadata !19, metadata !6}
!19 = metadata !{metadata !"kernel_arg_name", metadata !"dout"}
!20 = metadata !{metadata !21}
!21 = metadata !{i32 0, i32 31, metadata !22}
!22 = metadata !{metadata !23}
!23 = metadata !{metadata !"value_in.V", metadata !24, metadata !"float", i32 0, i32 31}
!24 = metadata !{metadata !25}
!25 = metadata !{i32 0, i32 0, i32 1}
!26 = metadata !{metadata !27}
!27 = metadata !{i32 0, i32 31, metadata !28}
!28 = metadata !{metadata !29}
!29 = metadata !{metadata !"value_out.V", metadata !24, metadata !"float", i32 0, i32 31}
!30 = metadata !{metadata !31}
!31 = metadata !{i32 0, i32 31, metadata !32}
!32 = metadata !{metadata !33}
!33 = metadata !{metadata !"delay", metadata !34, metadata !"int", i32 0, i32 31}
!34 = metadata !{metadata !35}
!35 = metadata !{i32 0, i32 0, i32 0}
!36 = metadata !{metadata !37}
!37 = metadata !{i32 0, i32 31, metadata !38}
!38 = metadata !{metadata !39}
!39 = metadata !{metadata !"scale", metadata !34, metadata !"float", i32 0, i32 31}

; ModuleID = '/home/austin/ECE1373_GhostSynth/modules/Echo/Echo/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@writeBuffer = internal unnamed_addr global i32 0, align 4 ; [#uses=2 type=i32*]
@readBuffer = internal unnamed_addr global i32 0, align 4 ; [#uses=2 type=i32*]
@guard_variable_for_E_1 = internal unnamed_addr global i1 false ; [#uses=2 type=i1*]
@guard_variable_for_E = internal unnamed_addr global i1 false ; [#uses=2 type=i1*]
@delaycheck = internal unnamed_addr global i32 0, align 4 ; [#uses=2 type=i32*]
@buffer = internal unnamed_addr global [4800 x float] zeroinitializer, align 16 ; [#uses=2 type=[4800 x float]*]
@Echo_str = internal unnamed_addr constant [5 x i8] c"Echo\00" ; [#uses=1 type=[5 x i8]*]
@p_str5 = private unnamed_addr constant [5 x i8] c"both\00", align 1 ; [#uses=2 type=[5 x i8]*]
@p_str4 = private unnamed_addr constant [5 x i8] c"axis\00", align 1 ; [#uses=2 type=[5 x i8]*]
@p_str3 = private unnamed_addr constant [9 x i8] c"CTRL_BUS\00", align 1 ; [#uses=2 type=[9 x i8]*]
@p_str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=2 type=[10 x i8]*]
@p_str1 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1 ; [#uses=1 type=[13 x i8]*]
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=27 type=[1 x i8]*]

; [#uses=14]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_Write.axis.volatile.floatP(float*, float) {
entry:
  store float %1, float* %0
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecLatency(...) nounwind {
entry:
  ret void
}

; [#uses=5]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=4]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
define weak i32 @_ssdm_op_Read.s_axilite.i32(i32) {
entry:
  ret i32 %0
}

; [#uses=1]
define weak float @_ssdm_op_Read.s_axilite.float(float) {
entry:
  ret float %0
}

; [#uses=1]
define weak float @_ssdm_op_Read.axis.volatile.floatP(float*) {
entry:
  %empty = load float* %0                         ; [#uses=1 type=float]
  ret float %empty
}

; [#uses=0]
define void @Echo(float* %value_in_V, float* %value_out_V, i32 %delay, float %scale) {
  call void (...)* @_ssdm_op_SpecBitsMap(float* %value_in_V), !map !20
  call void (...)* @_ssdm_op_SpecBitsMap(float* %value_out_V), !map !26
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %delay), !map !30
  call void (...)* @_ssdm_op_SpecBitsMap(float %scale), !map !36
  call void (...)* @_ssdm_op_SpecTopModule([5 x i8]* @Echo_str) nounwind
  %scale_read = call float @_ssdm_op_Read.s_axilite.float(float %scale) ; [#uses=1 type=float]
  call void @llvm.dbg.value(metadata !{float %scale_read}, i64 0, metadata !40), !dbg !105 ; [debug line = 20:8] [debug variable = scale]
  %delay_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %delay) ; [#uses=5 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %delay_read}, i64 0, metadata !106), !dbg !107 ; [debug line = 19:6] [debug variable = delay]
  call void @llvm.dbg.value(metadata !{float* %value_in_V}, i64 0, metadata !108), !dbg !113 ; [debug line = 16:23] [debug variable = value_in.V]
  call void @llvm.dbg.value(metadata !{float* %value_out_V}, i64 0, metadata !114), !dbg !116 ; [debug line = 17:23] [debug variable = value_out.V]
  call void @llvm.dbg.value(metadata !{i32 %delay}, i64 0, metadata !106), !dbg !107 ; [debug line = 19:6] [debug variable = delay]
  call void @llvm.dbg.value(metadata !{float %scale}, i64 0, metadata !40), !dbg !105 ; [debug line = 20:8] [debug variable = scale]
  call void (...)* @_ssdm_op_SpecLatency(i32 12, i32 65535, [1 x i8]* @p_str) nounwind, !dbg !117 ; [debug line = 23:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !119 ; [debug line = 25:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %delay, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !120 ; [debug line = 26:1]
  call void (...)* @_ssdm_op_SpecInterface(float %scale, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !121 ; [debug line = 27:1]
  call void (...)* @_ssdm_op_SpecInterface(float* %value_in_V, [5 x i8]* @p_str4, i32 1, i32 1, [5 x i8]* @p_str5, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !122 ; [debug line = 29:1]
  call void (...)* @_ssdm_op_SpecInterface(float* %value_out_V, [5 x i8]* @p_str4, i32 1, i32 1, [5 x i8]* @p_str5, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !123 ; [debug line = 30:1]
  %guard_variable_for_E = load i1* @guard_variable_for_E, align 1 ; [#uses=1 type=i1]
  %readBuffer_load = load i32* @readBuffer, align 4, !dbg !124 ; [#uses=1 type=i32] [debug line = 39:3]
  br i1 %guard_variable_for_E, label %._crit_edge, label %codeRepl1, !dbg !126 ; [debug line = 33:38]

codeRepl1:                                        ; preds = %0
  %tmp_2_i = sub nsw i32 4800, %delay_read, !dbg !126 ; [#uses=1 type=i32] [debug line = 33:38]
  store i1 true, i1* @guard_variable_for_E, align 1, !dbg !126 ; [debug line = 33:38]
  br label %._crit_edge

._crit_edge:                                      ; preds = %codeRepl1, %0
  %readBuffer_loc = phi i32 [ %tmp_2_i, %codeRepl1 ], [ %readBuffer_load, %0 ] ; [#uses=4 type=i32]
  %guard_variable_for_E_1 = load i1* @guard_variable_for_E_1, align 1 ; [#uses=1 type=i1]
  %delaycheck_load = load i32* @delaycheck, align 4, !dbg !127 ; [#uses=1 type=i32] [debug line = 38:2]
  br i1 %guard_variable_for_E_1, label %._crit_edge6, label %codeRepl, !dbg !128 ; [debug line = 36:31]

codeRepl:                                         ; preds = %._crit_edge
  store i1 true, i1* @guard_variable_for_E_1, align 1, !dbg !128 ; [debug line = 36:31]
  br label %._crit_edge6

._crit_edge6:                                     ; preds = %codeRepl, %._crit_edge
  %delaycheck_flag = phi i1 [ true, %codeRepl ], [ false, %._crit_edge ] ; [#uses=1 type=i1]
  %delaycheck_loc = phi i32 [ %delay_read, %codeRepl ], [ %delaycheck_load, %._crit_edge ] ; [#uses=1 type=i32]
  %tmp_4 = icmp eq i32 %delaycheck_loc, %delay_read, !dbg !127 ; [#uses=1 type=i1] [debug line = 38:2]
  %writeBuffer_load = load i32* @writeBuffer, align 4, !dbg !129 ; [#uses=1 type=i32] [debug line = 49:2]
  br i1 %tmp_4, label %._crit_edge7, label %1, !dbg !127 ; [debug line = 38:2]

; <label>:1                                       ; preds = %._crit_edge6
  %tmp1 = add i32 %readBuffer_loc, 4800, !dbg !124 ; [#uses=1 type=i32] [debug line = 39:3]
  %tmp_6 = add i32 %tmp1, %delay_read, !dbg !124  ; [#uses=1 type=i32] [debug line = 39:3]
  %tmp_7 = srem i32 %tmp_6, 4800, !dbg !124       ; [#uses=1 type=i32] [debug line = 39:3]
  br label %._crit_edge7, !dbg !130               ; [debug line = 41:2]

._crit_edge7:                                     ; preds = %1, %._crit_edge6
  %delaycheck_flag_1 = phi i1 [ %delaycheck_flag, %._crit_edge6 ], [ true, %1 ] ; [#uses=1 type=i1]
  %writeBuffer_loc = phi i32 [ %writeBuffer_load, %._crit_edge6 ], [ %tmp_7, %1 ] ; [#uses=3 type=i32]
  call void @llvm.dbg.value(metadata !{float* %value_in_V}, i64 0, metadata !131), !dbg !136 ; [debug line = 101:48@45:2] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float* %value_in_V}, i64 0, metadata !138), !dbg !141 ; [debug line = 123:48@102:9@45:2] [debug variable = stream<float>.V]
  %tmp_10 = call float @_ssdm_op_Read.axis.volatile.floatP(float* %value_in_V), !dbg !144 ; [#uses=1 type=float] [debug line = 125:9@102:9@45:2]
  call void @llvm.dbg.value(metadata !{float %tmp_10}, i64 0, metadata !146), !dbg !144 ; [debug line = 125:9@102:9@45:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp_10}, i64 0, metadata !147), !dbg !148 ; [debug line = 126:9@102:9@45:2] [debug variable = current_value]
  %tmp_9 = sext i32 %readBuffer_loc to i64, !dbg !149 ; [#uses=1 type=i64] [debug line = 47:2]
  %buffer_addr = getelementptr inbounds [4800 x float]* @buffer, i64 0, i64 %tmp_9, !dbg !149 ; [#uses=1 type=float*] [debug line = 47:2]
  %buffer_load = load float* %buffer_addr, align 4, !dbg !149 ; [#uses=1 type=float] [debug line = 47:2]
  %tmp_s = fmul float %buffer_load, %scale_read, !dbg !149 ; [#uses=1 type=float] [debug line = 47:2]
  %current_value = fadd float %tmp_10, %tmp_s, !dbg !149 ; [#uses=2 type=float] [debug line = 47:2]
  call void @llvm.dbg.value(metadata !{float %current_value}, i64 0, metadata !147), !dbg !149 ; [debug line = 47:2] [debug variable = current_value]
  %tmp_8 = sext i32 %writeBuffer_loc to i64, !dbg !129 ; [#uses=1 type=i64] [debug line = 49:2]
  %buffer_addr_1 = getelementptr inbounds [4800 x float]* @buffer, i64 0, i64 %tmp_8, !dbg !129 ; [#uses=1 type=float*] [debug line = 49:2]
  store float %current_value, float* %buffer_addr_1, align 4, !dbg !129 ; [debug line = 49:2]
  call void @llvm.dbg.value(metadata !{float* %value_out_V}, i64 0, metadata !150), !dbg !153 ; [debug line = 105:48@51:2] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float* %value_out_V}, i64 0, metadata !155), !dbg !158 ; [debug line = 144:48@106:9@51:2] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float %current_value}, i64 0, metadata !161), !dbg !163 ; [debug line = 145:31@106:9@51:2] [debug variable = tmp]
  call void @_ssdm_op_Write.axis.volatile.floatP(float* %value_out_V, float %current_value), !dbg !164 ; [debug line = 146:9@106:9@51:2]
  %tmp_3 = icmp slt i32 %readBuffer_loc, 4800, !dbg !165 ; [#uses=1 type=i1] [debug line = 53:2]
  %tmp_5 = add nsw i32 %readBuffer_loc, 1, !dbg !166 ; [#uses=1 type=i32] [debug line = 54:3]
  %storemerge = select i1 %tmp_3, i32 %tmp_5, i32 0, !dbg !165 ; [#uses=1 type=i32] [debug line = 53:2]
  %tmp_1 = icmp slt i32 %writeBuffer_loc, 4800, !dbg !167 ; [#uses=1 type=i1] [debug line = 58:2]
  %tmp_2 = add nsw i32 %writeBuffer_loc, 1, !dbg !168 ; [#uses=1 type=i32] [debug line = 59:3]
  %storemerge5 = select i1 %tmp_1, i32 %tmp_2, i32 0, !dbg !167 ; [#uses=1 type=i32] [debug line = 58:2]
  store i32 %storemerge5, i32* @writeBuffer, align 4, !dbg !124 ; [debug line = 39:3]
  br i1 %delaycheck_flag_1, label %mergeST2, label %._crit_edge7.new3

mergeST2:                                         ; preds = %._crit_edge7
  store i32 %delay_read, i32* @delaycheck, align 4, !dbg !128 ; [debug line = 36:31]
  br label %._crit_edge7.new3

._crit_edge7.new3:                                ; preds = %mergeST2, %._crit_edge7
  store i32 %storemerge, i32* @readBuffer, align 4, !dbg !126 ; [debug line = 33:38]
  ret void, !dbg !169                             ; [debug line = 64:1]
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
!40 = metadata !{i32 786689, metadata !41, metadata !"scale", metadata !42, i32 67108884, metadata !51, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!41 = metadata !{i32 786478, i32 0, metadata !42, metadata !"Echo", metadata !"Echo", metadata !"_Z4EchoRN3hls6streamIfEES2_if", metadata !42, i32 14, metadata !43, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !56, i32 22} ; [ DW_TAG_subprogram ]
!42 = metadata !{i32 786473, metadata !"src/Echo.cpp", metadata !"/home/austin/ECE1373_GhostSynth/modules/Echo", null} ; [ DW_TAG_file_type ]
!43 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !44, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!44 = metadata !{null, metadata !45, metadata !45, metadata !104, metadata !51}
!45 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !46} ; [ DW_TAG_reference_type ]
!46 = metadata !{i32 786434, metadata !47, metadata !"stream<float>", metadata !48, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !49, i32 0, null, metadata !102} ; [ DW_TAG_class_type ]
!47 = metadata !{i32 786489, null, metadata !"hls", metadata !48, i32 69} ; [ DW_TAG_namespace ]
!48 = metadata !{i32 786473, metadata !"/home/austin/Desktop/Vivado_HLS/2017.2/common/technology/autopilot/hls_stream.h", metadata !"/home/austin/ECE1373_GhostSynth/modules/Echo", null} ; [ DW_TAG_file_type ]
!49 = metadata !{metadata !50, metadata !52, metadata !58, metadata !64, metadata !69, metadata !72, metadata !76, metadata !81, metadata !86, metadata !87, metadata !88, metadata !91, metadata !94, metadata !95, metadata !98}
!50 = metadata !{i32 786445, metadata !46, metadata !"V", metadata !48, i32 163, i64 32, i64 32, i64 0, i32 0, metadata !51} ; [ DW_TAG_member ]
!51 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!52 = metadata !{i32 786478, i32 0, metadata !46, metadata !"stream", metadata !"stream", metadata !"", metadata !48, i32 83, metadata !53, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 83} ; [ DW_TAG_subprogram ]
!53 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !54, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!54 = metadata !{null, metadata !55}
!55 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !46} ; [ DW_TAG_pointer_type ]
!56 = metadata !{metadata !57}
!57 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!58 = metadata !{i32 786478, i32 0, metadata !46, metadata !"stream", metadata !"stream", metadata !"", metadata !48, i32 86, metadata !59, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 86} ; [ DW_TAG_subprogram ]
!59 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !60, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!60 = metadata !{null, metadata !55, metadata !61}
!61 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !62} ; [ DW_TAG_pointer_type ]
!62 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !63} ; [ DW_TAG_const_type ]
!63 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!64 = metadata !{i32 786478, i32 0, metadata !46, metadata !"stream", metadata !"stream", metadata !"", metadata !48, i32 91, metadata !65, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !56, i32 91} ; [ DW_TAG_subprogram ]
!65 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !66, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!66 = metadata !{null, metadata !55, metadata !67}
!67 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !68} ; [ DW_TAG_reference_type ]
!68 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !46} ; [ DW_TAG_const_type ]
!69 = metadata !{i32 786478, i32 0, metadata !46, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIfEaSERKS1_", metadata !48, i32 94, metadata !70, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !56, i32 94} ; [ DW_TAG_subprogram ]
!70 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !71, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!71 = metadata !{metadata !45, metadata !55, metadata !67}
!72 = metadata !{i32 786478, i32 0, metadata !46, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIfErsERf", metadata !48, i32 101, metadata !73, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 101} ; [ DW_TAG_subprogram ]
!73 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !74, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!74 = metadata !{null, metadata !55, metadata !75}
!75 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !51} ; [ DW_TAG_reference_type ]
!76 = metadata !{i32 786478, i32 0, metadata !46, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIfElsERKf", metadata !48, i32 105, metadata !77, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 105} ; [ DW_TAG_subprogram ]
!77 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !78, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!78 = metadata !{null, metadata !55, metadata !79}
!79 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !80} ; [ DW_TAG_reference_type ]
!80 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !51} ; [ DW_TAG_const_type ]
!81 = metadata !{i32 786478, i32 0, metadata !46, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIfE5emptyEv", metadata !48, i32 112, metadata !82, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 112} ; [ DW_TAG_subprogram ]
!82 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !83, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!83 = metadata !{metadata !84, metadata !85}
!84 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!85 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !68} ; [ DW_TAG_pointer_type ]
!86 = metadata !{i32 786478, i32 0, metadata !46, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIfE4fullEv", metadata !48, i32 117, metadata !82, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 117} ; [ DW_TAG_subprogram ]
!87 = metadata !{i32 786478, i32 0, metadata !46, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readERf", metadata !48, i32 123, metadata !73, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 123} ; [ DW_TAG_subprogram ]
!88 = metadata !{i32 786478, i32 0, metadata !46, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readEv", metadata !48, i32 129, metadata !89, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 129} ; [ DW_TAG_subprogram ]
!89 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !90, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!90 = metadata !{metadata !51, metadata !55}
!91 = metadata !{i32 786478, i32 0, metadata !46, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIfE7read_nbERf", metadata !48, i32 136, metadata !92, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 136} ; [ DW_TAG_subprogram ]
!92 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !93, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!93 = metadata !{metadata !84, metadata !55, metadata !75}
!94 = metadata !{i32 786478, i32 0, metadata !46, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !48, i32 144, metadata !77, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 144} ; [ DW_TAG_subprogram ]
!95 = metadata !{i32 786478, i32 0, metadata !46, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIfE8write_nbERKf", metadata !48, i32 150, metadata !96, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 150} ; [ DW_TAG_subprogram ]
!96 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !97, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!97 = metadata !{metadata !84, metadata !55, metadata !79}
!98 = metadata !{i32 786478, i32 0, metadata !46, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIfE4sizeEv", metadata !48, i32 157, metadata !99, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !56, i32 157} ; [ DW_TAG_subprogram ]
!99 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !100, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!100 = metadata !{metadata !101, metadata !55}
!101 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!102 = metadata !{metadata !103}
!103 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !51, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!104 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!105 = metadata !{i32 20, i32 8, metadata !41, null}
!106 = metadata !{i32 786689, metadata !41, metadata !"delay", metadata !42, i32 50331667, metadata !104, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!107 = metadata !{i32 19, i32 6, metadata !41, null}
!108 = metadata !{i32 790531, metadata !109, metadata !"value_in.V", null, i32 16, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!109 = metadata !{i32 786689, metadata !41, metadata !"value_in", metadata !42, i32 16777232, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!110 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !111} ; [ DW_TAG_pointer_type ]
!111 = metadata !{i32 786438, metadata !47, metadata !"stream<float>", metadata !48, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !112, i32 0, null, metadata !102} ; [ DW_TAG_class_field_type ]
!112 = metadata !{metadata !50}
!113 = metadata !{i32 16, i32 23, metadata !41, null}
!114 = metadata !{i32 790531, metadata !115, metadata !"value_out.V", null, i32 17, metadata !110, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!115 = metadata !{i32 786689, metadata !41, metadata !"value_out", metadata !42, i32 33554449, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!116 = metadata !{i32 17, i32 23, metadata !41, null}
!117 = metadata !{i32 23, i32 1, metadata !118, null}
!118 = metadata !{i32 786443, metadata !41, i32 22, i32 2, metadata !42, i32 0} ; [ DW_TAG_lexical_block ]
!119 = metadata !{i32 25, i32 1, metadata !118, null}
!120 = metadata !{i32 26, i32 1, metadata !118, null}
!121 = metadata !{i32 27, i32 1, metadata !118, null}
!122 = metadata !{i32 29, i32 1, metadata !118, null}
!123 = metadata !{i32 30, i32 1, metadata !118, null}
!124 = metadata !{i32 39, i32 3, metadata !125, null}
!125 = metadata !{i32 786443, metadata !118, i32 38, i32 25, metadata !42, i32 1} ; [ DW_TAG_lexical_block ]
!126 = metadata !{i32 33, i32 38, metadata !118, null}
!127 = metadata !{i32 38, i32 2, metadata !118, null}
!128 = metadata !{i32 36, i32 31, metadata !118, null}
!129 = metadata !{i32 49, i32 2, metadata !118, null}
!130 = metadata !{i32 41, i32 2, metadata !125, null}
!131 = metadata !{i32 790531, metadata !132, metadata !"stream<float>.V", null, i32 101, metadata !135, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!132 = metadata !{i32 786689, metadata !133, metadata !"this", metadata !48, i32 16777317, metadata !134, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!133 = metadata !{i32 786478, i32 0, metadata !47, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIfErsERf", metadata !48, i32 101, metadata !73, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !72, metadata !56, i32 101} ; [ DW_TAG_subprogram ]
!134 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !46} ; [ DW_TAG_pointer_type ]
!135 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !111} ; [ DW_TAG_pointer_type ]
!136 = metadata !{i32 101, i32 48, metadata !133, metadata !137}
!137 = metadata !{i32 45, i32 2, metadata !118, null}
!138 = metadata !{i32 790531, metadata !139, metadata !"stream<float>.V", null, i32 123, metadata !135, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!139 = metadata !{i32 786689, metadata !140, metadata !"this", metadata !48, i32 16777339, metadata !134, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!140 = metadata !{i32 786478, i32 0, metadata !47, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readERf", metadata !48, i32 123, metadata !73, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !87, metadata !56, i32 123} ; [ DW_TAG_subprogram ]
!141 = metadata !{i32 123, i32 48, metadata !140, metadata !142}
!142 = metadata !{i32 102, i32 9, metadata !143, metadata !137}
!143 = metadata !{i32 786443, metadata !133, i32 101, i32 82, metadata !48, i32 4} ; [ DW_TAG_lexical_block ]
!144 = metadata !{i32 125, i32 9, metadata !145, metadata !142}
!145 = metadata !{i32 786443, metadata !140, i32 123, i32 73, metadata !48, i32 5} ; [ DW_TAG_lexical_block ]
!146 = metadata !{i32 786688, metadata !145, metadata !"tmp", metadata !48, i32 124, metadata !51, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!147 = metadata !{i32 786688, metadata !118, metadata !"current_value", metadata !42, i32 43, metadata !51, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!148 = metadata !{i32 126, i32 9, metadata !145, metadata !142}
!149 = metadata !{i32 47, i32 2, metadata !118, null}
!150 = metadata !{i32 790531, metadata !151, metadata !"stream<float>.V", null, i32 105, metadata !135, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!151 = metadata !{i32 786689, metadata !152, metadata !"this", metadata !48, i32 16777321, metadata !134, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!152 = metadata !{i32 786478, i32 0, metadata !47, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIfElsERKf", metadata !48, i32 105, metadata !77, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !76, metadata !56, i32 105} ; [ DW_TAG_subprogram ]
!153 = metadata !{i32 105, i32 48, metadata !152, metadata !154}
!154 = metadata !{i32 51, i32 2, metadata !118, null}
!155 = metadata !{i32 790531, metadata !156, metadata !"stream<float>.V", null, i32 144, metadata !135, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!156 = metadata !{i32 786689, metadata !157, metadata !"this", metadata !48, i32 16777360, metadata !134, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!157 = metadata !{i32 786478, i32 0, metadata !47, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !48, i32 144, metadata !77, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !94, metadata !56, i32 144} ; [ DW_TAG_subprogram ]
!158 = metadata !{i32 144, i32 48, metadata !157, metadata !159}
!159 = metadata !{i32 106, i32 9, metadata !160, metadata !154}
!160 = metadata !{i32 786443, metadata !152, i32 105, i32 88, metadata !48, i32 2} ; [ DW_TAG_lexical_block ]
!161 = metadata !{i32 786688, metadata !162, metadata !"tmp", metadata !48, i32 145, metadata !51, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!162 = metadata !{i32 786443, metadata !157, i32 144, i32 79, metadata !48, i32 3} ; [ DW_TAG_lexical_block ]
!163 = metadata !{i32 145, i32 31, metadata !162, metadata !159}
!164 = metadata !{i32 146, i32 9, metadata !162, metadata !159}
!165 = metadata !{i32 53, i32 2, metadata !118, null}
!166 = metadata !{i32 54, i32 3, metadata !118, null}
!167 = metadata !{i32 58, i32 2, metadata !118, null}
!168 = metadata !{i32 59, i32 3, metadata !118, null}
!169 = metadata !{i32 64, i32 1, metadata !118, null}

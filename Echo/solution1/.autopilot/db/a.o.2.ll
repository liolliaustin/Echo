; ModuleID = '/home/hildeb47/proj/ECE1373_GhostSynth/modules/Echo/Echo/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@writeBuffer = internal unnamed_addr global i32 10, align 4 ; [#uses=2 type=i32*]
@readBuffer = internal unnamed_addr global i32 0, align 4 ; [#uses=2 type=i32*]
@delaycheck = internal unnamed_addr global i32 0, align 4 ; [#uses=2 type=i32*]
@buffer = internal unnamed_addr global [4800 x float] zeroinitializer, align 16 ; [#uses=2 type=[4800 x float]*]
@Echo.str = internal unnamed_addr constant [5 x i8] c"Echo\00" ; [#uses=1 type=[5 x i8]*]
@.str5 = private unnamed_addr constant [5 x i8] c"both\00", align 1 ; [#uses=2 type=[5 x i8]*]
@.str4 = private unnamed_addr constant [5 x i8] c"axis\00", align 1 ; [#uses=2 type=[5 x i8]*]
@.str3 = private unnamed_addr constant [9 x i8] c"CTRL_BUS\00", align 1 ; [#uses=2 type=[9 x i8]*]
@.str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=2 type=[10 x i8]*]
@.str1 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1 ; [#uses=1 type=[13 x i8]*]
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=27 type=[1 x i8]*]

; [#uses=14]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=2]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=1]
declare void @_ssdm_op_SpecLatency(...) nounwind

; [#uses=5]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=4]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=1]
declare void @_ssdm_op_IfWrite.Stream.floatP.floatP(float*, float*)

; [#uses=1]
declare void @_ssdm_op_IfRead.Stream.floatP.floatP(float*, float*)

; [#uses=0]
define void @Echo(float* %value_in.V, float* %value_out.V, i32 %delay, float %scale) {
  call void (...)* @_ssdm_op_SpecBitsMap(float* %value_in.V), !map !104
  call void (...)* @_ssdm_op_SpecBitsMap(float* %value_out.V), !map !110
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %delay), !map !114
  call void (...)* @_ssdm_op_SpecBitsMap(float %scale), !map !120
  call void (...)* @_ssdm_op_SpecTopModule([5 x i8]* @Echo.str) nounwind
  %tmp.2 = alloca float, align 4                  ; [#uses=2 type=float*]
  %tmp = alloca float, align 4                    ; [#uses=2 type=float*]
  call void @llvm.dbg.value(metadata !{float* %value_in.V}, i64 0, metadata !124), !dbg !129 ; [debug line = 16:23] [debug variable = value_in.V]
  call void @llvm.dbg.value(metadata !{float* %value_out.V}, i64 0, metadata !130), !dbg !132 ; [debug line = 17:23] [debug variable = value_out.V]
  call void @llvm.dbg.value(metadata !{i32 %delay}, i64 0, metadata !133), !dbg !134 ; [debug line = 19:6] [debug variable = delay]
  call void @llvm.dbg.value(metadata !{float %scale}, i64 0, metadata !135), !dbg !136 ; [debug line = 20:8] [debug variable = scale]
  call void (...)* @_ssdm_op_SpecLatency(i32 12, i32 65535, [1 x i8]* @.str) nounwind, !dbg !137 ; [debug line = 23:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !139 ; [debug line = 25:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %delay, [10 x i8]* @.str2, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [9 x i8]* @.str3, [1 x i8]* @.str, [1 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !140 ; [debug line = 26:1]
  call void (...)* @_ssdm_op_SpecInterface(float %scale, [10 x i8]* @.str2, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [9 x i8]* @.str3, [1 x i8]* @.str, [1 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !141 ; [debug line = 27:1]
  call void (...)* @_ssdm_op_SpecInterface(float* %value_in.V, [5 x i8]* @.str4, i32 1, i32 1, [5 x i8]* @.str5, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !142 ; [debug line = 29:1]
  call void (...)* @_ssdm_op_SpecInterface(float* %value_out.V, [5 x i8]* @.str4, i32 1, i32 1, [5 x i8]* @.str5, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !143 ; [debug line = 30:1]
  %delaycheck.load = load i32* @delaycheck, align 4, !dbg !144 ; [#uses=1 type=i32] [debug line = 38:2]
  %tmp.1 = icmp eq i32 %delaycheck.load, %delay, !dbg !144 ; [#uses=1 type=i1] [debug line = 38:2]
  %readBuffer.load = load i32* @readBuffer, align 4, !dbg !145 ; [#uses=4 type=i32] [debug line = 39:3]
  %writeBuffer.load = load i32* @writeBuffer, align 4, !dbg !147 ; [#uses=1 type=i32] [debug line = 49:2]
  br i1 %tmp.1, label %._crit_edge, label %1, !dbg !144 ; [debug line = 38:2]

; <label>:1                                       ; preds = %0
  %tmp1 = add i32 %delay, 4800, !dbg !145         ; [#uses=1 type=i32] [debug line = 39:3]
  %tmp.3 = add i32 %readBuffer.load, %tmp1, !dbg !145 ; [#uses=1 type=i32] [debug line = 39:3]
  %tmp.4 = srem i32 %tmp.3, 4800, !dbg !145       ; [#uses=1 type=i32] [debug line = 39:3]
  store i32 %delay, i32* @delaycheck, align 4, !dbg !148 ; [debug line = 40:3]
  br label %._crit_edge, !dbg !149                ; [debug line = 41:2]

._crit_edge:                                      ; preds = %1, %0
  %writeBuffer.loc = phi i32 [ %writeBuffer.load, %0 ], [ %tmp.4, %1 ] ; [#uses=3 type=i32]
  call void @llvm.dbg.value(metadata !{float* %value_in.V}, i64 0, metadata !150), !dbg !155 ; [debug line = 101:48@45:2] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float* %value_in.V}, i64 0, metadata !157), !dbg !160 ; [debug line = 123:48@102:9@45:2] [debug variable = stream<float>.V]
  call void @llvm.dbg.declare(metadata !{float* %tmp}, metadata !163) nounwind, !dbg !165 ; [debug line = 124:22@102:9@45:2] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.floatP.floatP(float* %value_in.V, float* %tmp) nounwind, !dbg !166 ; [debug line = 125:9@102:9@45:2]
  call void @llvm.dbg.value(metadata !{float* %tmp}, i64 0, metadata !163), !dbg !167 ; [debug line = 126:9@102:9@45:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp}, i64 0, metadata !163), !dbg !167 ; [debug line = 126:9@102:9@45:2] [debug variable = tmp]
  %current_value = load float* %tmp, align 4, !dbg !167 ; [#uses=1 type=float] [debug line = 126:9@102:9@45:2]
  call void @llvm.dbg.value(metadata !{float %current_value}, i64 0, metadata !168), !dbg !167 ; [debug line = 126:9@102:9@45:2] [debug variable = current_value]
  %tmp.6 = sext i32 %readBuffer.load to i64, !dbg !169 ; [#uses=1 type=i64] [debug line = 47:2]
  %buffer.addr = getelementptr inbounds [4800 x float]* @buffer, i64 0, i64 %tmp.6, !dbg !169 ; [#uses=1 type=float*] [debug line = 47:2]
  %buffer.load = load float* %buffer.addr, align 4, !dbg !169 ; [#uses=1 type=float] [debug line = 47:2]
  %tmp.7 = fmul float %buffer.load, %scale, !dbg !169 ; [#uses=1 type=float] [debug line = 47:2]
  %current_value.2 = fadd float %current_value, %tmp.7, !dbg !169 ; [#uses=2 type=float] [debug line = 47:2]
  call void @llvm.dbg.value(metadata !{float %current_value.2}, i64 0, metadata !168), !dbg !169 ; [debug line = 47:2] [debug variable = current_value]
  %tmp.8 = sext i32 %writeBuffer.loc to i64, !dbg !147 ; [#uses=1 type=i64] [debug line = 49:2]
  %buffer.addr.1 = getelementptr inbounds [4800 x float]* @buffer, i64 0, i64 %tmp.8, !dbg !147 ; [#uses=1 type=float*] [debug line = 49:2]
  store float %current_value.2, float* %buffer.addr.1, align 4, !dbg !147 ; [debug line = 49:2]
  call void @llvm.dbg.value(metadata !{float* %value_out.V}, i64 0, metadata !170), !dbg !173 ; [debug line = 105:48@51:2] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float* %value_out.V}, i64 0, metadata !175), !dbg !178 ; [debug line = 144:48@106:9@51:2] [debug variable = stream<float>.V]
  call void @llvm.dbg.declare(metadata !{float* %tmp.2}, metadata !181) nounwind, !dbg !183 ; [debug line = 145:22@106:9@51:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %current_value.2}, i64 0, metadata !181), !dbg !184 ; [debug line = 145:31@106:9@51:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %current_value.2}, i64 0, metadata !181), !dbg !184 ; [debug line = 145:31@106:9@51:2] [debug variable = tmp]
  store float %current_value.2, float* %tmp.2, align 4, !dbg !184 ; [debug line = 145:31@106:9@51:2]
  call void @_ssdm_op_IfWrite.Stream.floatP.floatP(float* %value_out.V, float* %tmp.2) nounwind, !dbg !185 ; [debug line = 146:9@106:9@51:2]
  %tmp. = icmp slt i32 %readBuffer.load, 4799, !dbg !186 ; [#uses=1 type=i1] [debug line = 53:2]
  %tmp.9 = add nsw i32 %readBuffer.load, 1, !dbg !187 ; [#uses=1 type=i32] [debug line = 54:3]
  %storemerge = select i1 %tmp., i32 %tmp.9, i32 0, !dbg !186 ; [#uses=1 type=i32] [debug line = 53:2]
  store i32 %storemerge, i32* @readBuffer, align 4, !dbg !187 ; [debug line = 54:3]
  %tmp.10 = icmp slt i32 %writeBuffer.loc, 4799, !dbg !188 ; [#uses=1 type=i1] [debug line = 58:2]
  %tmp.11 = add nsw i32 %writeBuffer.loc, 1, !dbg !189 ; [#uses=1 type=i32] [debug line = 59:3]
  %storemerge5 = select i1 %tmp.10, i32 %tmp.11, i32 0, !dbg !188 ; [#uses=1 type=i32] [debug line = 58:2]
  store i32 %storemerge5, i32* @writeBuffer, align 4, !dbg !145 ; [debug line = 39:3]
  ret void, !dbg !190                             ; [debug line = 64:1]
}

!opencl.kernels = !{!0, !7, !13, !15, !18}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}
!llvm.dbg.cu = !{!20}

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
!20 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/hildeb47/proj/ECE1373_GhostSynth/modules/Echo/Echo/solution1/.autopilot/db/Echo.pragma.2.cpp", metadata !"/home/hildeb47/proj/ECE1373_GhostSynth/modules/Echo", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, null, null, null, metadata !21} ; [ DW_TAG_compile_unit ]
!21 = metadata !{metadata !22}
!22 = metadata !{metadata !23, metadata !88, metadata !89, metadata !93, metadata !94, metadata !97, metadata !98, metadata !99, metadata !101, metadata !102}
!23 = metadata !{i32 786484, i32 0, metadata !24, metadata !"writeBuffer", metadata !"writeBuffer", metadata !"", metadata !25, i32 34, metadata !87, i32 1, i32 1, i32* @writeBuffer} ; [ DW_TAG_variable ]
!24 = metadata !{i32 786478, i32 0, metadata !25, metadata !"Echo", metadata !"Echo", metadata !"_Z4EchoRN3hls6streamIfEES2_if", metadata !25, i32 14, metadata !26, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !39, i32 22} ; [ DW_TAG_subprogram ]
!25 = metadata !{i32 786473, metadata !"src/Echo.cpp", metadata !"/home/hildeb47/proj/ECE1373_GhostSynth/modules/Echo", null} ; [ DW_TAG_file_type ]
!26 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !27, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!27 = metadata !{null, metadata !28, metadata !28, metadata !87, metadata !34}
!28 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_reference_type ]
!29 = metadata !{i32 786434, metadata !30, metadata !"stream<float>", metadata !31, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !32, i32 0, null, metadata !85} ; [ DW_TAG_class_type ]
!30 = metadata !{i32 786489, null, metadata !"hls", metadata !31, i32 69} ; [ DW_TAG_namespace ]
!31 = metadata !{i32 786473, metadata !"/opt/Xilinx_2017_2/Vivado_HLS/2017.2/common/technology/autopilot/hls_stream.h", metadata !"/home/hildeb47/proj/ECE1373_GhostSynth/modules/Echo", null} ; [ DW_TAG_file_type ]
!32 = metadata !{metadata !33, metadata !35, metadata !41, metadata !47, metadata !52, metadata !55, metadata !59, metadata !64, metadata !69, metadata !70, metadata !71, metadata !74, metadata !77, metadata !78, metadata !81}
!33 = metadata !{i32 786445, metadata !29, metadata !"V", metadata !31, i32 163, i64 32, i64 32, i64 0, i32 0, metadata !34} ; [ DW_TAG_member ]
!34 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!35 = metadata !{i32 786478, i32 0, metadata !29, metadata !"stream", metadata !"stream", metadata !"", metadata !31, i32 83, metadata !36, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !39, i32 83} ; [ DW_TAG_subprogram ]
!36 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !37, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!37 = metadata !{null, metadata !38}
!38 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !29} ; [ DW_TAG_pointer_type ]
!39 = metadata !{metadata !40}
!40 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!41 = metadata !{i32 786478, i32 0, metadata !29, metadata !"stream", metadata !"stream", metadata !"", metadata !31, i32 86, metadata !42, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !39, i32 86} ; [ DW_TAG_subprogram ]
!42 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !43, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!43 = metadata !{null, metadata !38, metadata !44}
!44 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !45} ; [ DW_TAG_pointer_type ]
!45 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !46} ; [ DW_TAG_const_type ]
!46 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!47 = metadata !{i32 786478, i32 0, metadata !29, metadata !"stream", metadata !"stream", metadata !"", metadata !31, i32 91, metadata !48, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !39, i32 91} ; [ DW_TAG_subprogram ]
!48 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !49, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!49 = metadata !{null, metadata !38, metadata !50}
!50 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !51} ; [ DW_TAG_reference_type ]
!51 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_const_type ]
!52 = metadata !{i32 786478, i32 0, metadata !29, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIfEaSERKS1_", metadata !31, i32 94, metadata !53, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !39, i32 94} ; [ DW_TAG_subprogram ]
!53 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !54, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!54 = metadata !{metadata !28, metadata !38, metadata !50}
!55 = metadata !{i32 786478, i32 0, metadata !29, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIfErsERf", metadata !31, i32 101, metadata !56, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !39, i32 101} ; [ DW_TAG_subprogram ]
!56 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !57, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!57 = metadata !{null, metadata !38, metadata !58}
!58 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !34} ; [ DW_TAG_reference_type ]
!59 = metadata !{i32 786478, i32 0, metadata !29, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIfElsERKf", metadata !31, i32 105, metadata !60, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !39, i32 105} ; [ DW_TAG_subprogram ]
!60 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !61, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!61 = metadata !{null, metadata !38, metadata !62}
!62 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !63} ; [ DW_TAG_reference_type ]
!63 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !34} ; [ DW_TAG_const_type ]
!64 = metadata !{i32 786478, i32 0, metadata !29, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIfE5emptyEv", metadata !31, i32 112, metadata !65, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !39, i32 112} ; [ DW_TAG_subprogram ]
!65 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !66, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!66 = metadata !{metadata !67, metadata !68}
!67 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!68 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !51} ; [ DW_TAG_pointer_type ]
!69 = metadata !{i32 786478, i32 0, metadata !29, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIfE4fullEv", metadata !31, i32 117, metadata !65, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !39, i32 117} ; [ DW_TAG_subprogram ]
!70 = metadata !{i32 786478, i32 0, metadata !29, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readERf", metadata !31, i32 123, metadata !56, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !39, i32 123} ; [ DW_TAG_subprogram ]
!71 = metadata !{i32 786478, i32 0, metadata !29, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readEv", metadata !31, i32 129, metadata !72, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !39, i32 129} ; [ DW_TAG_subprogram ]
!72 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !73, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!73 = metadata !{metadata !34, metadata !38}
!74 = metadata !{i32 786478, i32 0, metadata !29, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIfE7read_nbERf", metadata !31, i32 136, metadata !75, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !39, i32 136} ; [ DW_TAG_subprogram ]
!75 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !76, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!76 = metadata !{metadata !67, metadata !38, metadata !58}
!77 = metadata !{i32 786478, i32 0, metadata !29, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !31, i32 144, metadata !60, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !39, i32 144} ; [ DW_TAG_subprogram ]
!78 = metadata !{i32 786478, i32 0, metadata !29, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIfE8write_nbERKf", metadata !31, i32 150, metadata !79, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !39, i32 150} ; [ DW_TAG_subprogram ]
!79 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !80, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!80 = metadata !{metadata !67, metadata !38, metadata !62}
!81 = metadata !{i32 786478, i32 0, metadata !29, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIfE4sizeEv", metadata !31, i32 157, metadata !82, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !39, i32 157} ; [ DW_TAG_subprogram ]
!82 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !83, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!83 = metadata !{metadata !84, metadata !38}
!84 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!85 = metadata !{metadata !86}
!86 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !34, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!87 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!88 = metadata !{i32 786484, i32 0, metadata !24, metadata !"readBuffer", metadata !"readBuffer", metadata !"", metadata !25, i32 33, metadata !87, i32 1, i32 1, i32* @readBuffer} ; [ DW_TAG_variable ]
!89 = metadata !{i32 786484, i32 0, metadata !24, metadata !"buffer", metadata !"buffer", metadata !"", metadata !25, i32 32, metadata !90, i32 1, i32 1, [4800 x float]* @buffer} ; [ DW_TAG_variable ]
!90 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 153600, i64 32, i32 0, i32 0, metadata !34, metadata !91, i32 0, i32 0} ; [ DW_TAG_array_type ]
!91 = metadata !{metadata !92}
!92 = metadata !{i32 786465, i64 0, i64 4799}     ; [ DW_TAG_subrange_type ]
!93 = metadata !{i32 786484, i32 0, metadata !24, metadata !"delaycheck", metadata !"delaycheck", metadata !"", metadata !25, i32 36, metadata !87, i32 1, i32 1, i32* @delaycheck} ; [ DW_TAG_variable ]
!94 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !95, i32 315, metadata !96, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!95 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/hildeb47/proj/ECE1373_GhostSynth/modules/Echo", null} ; [ DW_TAG_file_type ]
!96 = metadata !{i32 786434, null, metadata !"_IO_FILE_plus", metadata !95, i32 313, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!97 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !95, i32 316, metadata !96, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!98 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !95, i32 317, metadata !96, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!99 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !100, i32 26, metadata !87, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!100 = metadata !{i32 786473, metadata !"/usr/include/x86_64-linux-gnu/bits/sys_errlist.h", metadata !"/home/hildeb47/proj/ECE1373_GhostSynth/modules/Echo", null} ; [ DW_TAG_file_type ]
!101 = metadata !{i32 786484, i32 0, null, metadata !"_sys_nerr", metadata !"_sys_nerr", metadata !"", metadata !100, i32 30, metadata !87, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!102 = metadata !{i32 786484, i32 0, null, metadata !"signgam", metadata !"signgam", metadata !"", metadata !103, i32 168, metadata !87, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!103 = metadata !{i32 786473, metadata !"/usr/include/math.h", metadata !"/home/hildeb47/proj/ECE1373_GhostSynth/modules/Echo", null} ; [ DW_TAG_file_type ]
!104 = metadata !{metadata !105}
!105 = metadata !{i32 0, i32 31, metadata !106}
!106 = metadata !{metadata !107}
!107 = metadata !{metadata !"value_in.V", metadata !108, metadata !"float", i32 0, i32 31}
!108 = metadata !{metadata !109}
!109 = metadata !{i32 0, i32 0, i32 1}
!110 = metadata !{metadata !111}
!111 = metadata !{i32 0, i32 31, metadata !112}
!112 = metadata !{metadata !113}
!113 = metadata !{metadata !"value_out.V", metadata !108, metadata !"float", i32 0, i32 31}
!114 = metadata !{metadata !115}
!115 = metadata !{i32 0, i32 31, metadata !116}
!116 = metadata !{metadata !117}
!117 = metadata !{metadata !"delay", metadata !118, metadata !"int", i32 0, i32 31}
!118 = metadata !{metadata !119}
!119 = metadata !{i32 0, i32 0, i32 0}
!120 = metadata !{metadata !121}
!121 = metadata !{i32 0, i32 31, metadata !122}
!122 = metadata !{metadata !123}
!123 = metadata !{metadata !"scale", metadata !118, metadata !"float", i32 0, i32 31}
!124 = metadata !{i32 790531, metadata !125, metadata !"value_in.V", null, i32 16, metadata !126, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!125 = metadata !{i32 786689, metadata !24, metadata !"value_in", metadata !25, i32 16777232, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!126 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !127} ; [ DW_TAG_pointer_type ]
!127 = metadata !{i32 786438, metadata !30, metadata !"stream<float>", metadata !31, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !128, i32 0, null, metadata !85} ; [ DW_TAG_class_field_type ]
!128 = metadata !{metadata !33}
!129 = metadata !{i32 16, i32 23, metadata !24, null}
!130 = metadata !{i32 790531, metadata !131, metadata !"value_out.V", null, i32 17, metadata !126, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!131 = metadata !{i32 786689, metadata !24, metadata !"value_out", metadata !25, i32 33554449, metadata !28, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!132 = metadata !{i32 17, i32 23, metadata !24, null}
!133 = metadata !{i32 786689, metadata !24, metadata !"delay", metadata !25, i32 50331667, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!134 = metadata !{i32 19, i32 6, metadata !24, null}
!135 = metadata !{i32 786689, metadata !24, metadata !"scale", metadata !25, i32 67108884, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!136 = metadata !{i32 20, i32 8, metadata !24, null}
!137 = metadata !{i32 23, i32 1, metadata !138, null}
!138 = metadata !{i32 786443, metadata !24, i32 22, i32 2, metadata !25, i32 0} ; [ DW_TAG_lexical_block ]
!139 = metadata !{i32 25, i32 1, metadata !138, null}
!140 = metadata !{i32 26, i32 1, metadata !138, null}
!141 = metadata !{i32 27, i32 1, metadata !138, null}
!142 = metadata !{i32 29, i32 1, metadata !138, null}
!143 = metadata !{i32 30, i32 1, metadata !138, null}
!144 = metadata !{i32 38, i32 2, metadata !138, null}
!145 = metadata !{i32 39, i32 3, metadata !146, null}
!146 = metadata !{i32 786443, metadata !138, i32 38, i32 25, metadata !25, i32 1} ; [ DW_TAG_lexical_block ]
!147 = metadata !{i32 49, i32 2, metadata !138, null}
!148 = metadata !{i32 40, i32 3, metadata !146, null}
!149 = metadata !{i32 41, i32 2, metadata !146, null}
!150 = metadata !{i32 790531, metadata !151, metadata !"stream<float>.V", null, i32 101, metadata !154, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!151 = metadata !{i32 786689, metadata !152, metadata !"this", metadata !31, i32 16777317, metadata !153, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!152 = metadata !{i32 786478, i32 0, metadata !30, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIfErsERf", metadata !31, i32 101, metadata !56, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !55, metadata !39, i32 101} ; [ DW_TAG_subprogram ]
!153 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !29} ; [ DW_TAG_pointer_type ]
!154 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !127} ; [ DW_TAG_pointer_type ]
!155 = metadata !{i32 101, i32 48, metadata !152, metadata !156}
!156 = metadata !{i32 45, i32 2, metadata !138, null}
!157 = metadata !{i32 790531, metadata !158, metadata !"stream<float>.V", null, i32 123, metadata !154, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!158 = metadata !{i32 786689, metadata !159, metadata !"this", metadata !31, i32 16777339, metadata !153, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!159 = metadata !{i32 786478, i32 0, metadata !30, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readERf", metadata !31, i32 123, metadata !56, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !70, metadata !39, i32 123} ; [ DW_TAG_subprogram ]
!160 = metadata !{i32 123, i32 48, metadata !159, metadata !161}
!161 = metadata !{i32 102, i32 9, metadata !162, metadata !156}
!162 = metadata !{i32 786443, metadata !152, i32 101, i32 82, metadata !31, i32 4} ; [ DW_TAG_lexical_block ]
!163 = metadata !{i32 786688, metadata !164, metadata !"tmp", metadata !31, i32 124, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!164 = metadata !{i32 786443, metadata !159, i32 123, i32 73, metadata !31, i32 5} ; [ DW_TAG_lexical_block ]
!165 = metadata !{i32 124, i32 22, metadata !164, metadata !161}
!166 = metadata !{i32 125, i32 9, metadata !164, metadata !161}
!167 = metadata !{i32 126, i32 9, metadata !164, metadata !161}
!168 = metadata !{i32 786688, metadata !138, metadata !"current_value", metadata !25, i32 43, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!169 = metadata !{i32 47, i32 2, metadata !138, null}
!170 = metadata !{i32 790531, metadata !171, metadata !"stream<float>.V", null, i32 105, metadata !154, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!171 = metadata !{i32 786689, metadata !172, metadata !"this", metadata !31, i32 16777321, metadata !153, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!172 = metadata !{i32 786478, i32 0, metadata !30, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIfElsERKf", metadata !31, i32 105, metadata !60, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !59, metadata !39, i32 105} ; [ DW_TAG_subprogram ]
!173 = metadata !{i32 105, i32 48, metadata !172, metadata !174}
!174 = metadata !{i32 51, i32 2, metadata !138, null}
!175 = metadata !{i32 790531, metadata !176, metadata !"stream<float>.V", null, i32 144, metadata !154, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!176 = metadata !{i32 786689, metadata !177, metadata !"this", metadata !31, i32 16777360, metadata !153, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!177 = metadata !{i32 786478, i32 0, metadata !30, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !31, i32 144, metadata !60, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !77, metadata !39, i32 144} ; [ DW_TAG_subprogram ]
!178 = metadata !{i32 144, i32 48, metadata !177, metadata !179}
!179 = metadata !{i32 106, i32 9, metadata !180, metadata !174}
!180 = metadata !{i32 786443, metadata !172, i32 105, i32 88, metadata !31, i32 2} ; [ DW_TAG_lexical_block ]
!181 = metadata !{i32 786688, metadata !182, metadata !"tmp", metadata !31, i32 145, metadata !34, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!182 = metadata !{i32 786443, metadata !177, i32 144, i32 79, metadata !31, i32 3} ; [ DW_TAG_lexical_block ]
!183 = metadata !{i32 145, i32 22, metadata !182, metadata !179}
!184 = metadata !{i32 145, i32 31, metadata !182, metadata !179}
!185 = metadata !{i32 146, i32 9, metadata !182, metadata !179}
!186 = metadata !{i32 53, i32 2, metadata !138, null}
!187 = metadata !{i32 54, i32 3, metadata !138, null}
!188 = metadata !{i32 58, i32 2, metadata !138, null}
!189 = metadata !{i32 59, i32 3, metadata !138, null}
!190 = metadata !{i32 64, i32 1, metadata !138, null}

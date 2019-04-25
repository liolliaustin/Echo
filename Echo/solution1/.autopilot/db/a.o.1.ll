; ModuleID = '/home/austin/ECE1373_GhostSynth/modules/Echo/Echo/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.hls::stream.0" = type { float }

@writeBuffer = internal unnamed_addr global i32 0, align 4 ; [#uses=3 type=i32*]
@readBuffer = internal unnamed_addr global i32 0, align 4 ; [#uses=4 type=i32*]
@"guard variable for Echo(stream<float>&, stream<float>&, int, float)readBuffer" = internal unnamed_addr global i8 0 ; [#uses=2 type=i8*]
@buffer = internal unnamed_addr global [4800 x float] zeroinitializer, align 16 ; [#uses=2 type=[4800 x float]*]
@Echo.str = internal unnamed_addr constant [5 x i8] c"Echo\00" ; [#uses=1 type=[5 x i8]*]
@.str5 = private unnamed_addr constant [5 x i8] c"both\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str4 = private unnamed_addr constant [5 x i8] c"axis\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str3 = private unnamed_addr constant [9 x i8] c"CTRL_BUS\00", align 1 ; [#uses=1 type=[9 x i8]*]
@.str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str1 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1 ; [#uses=1 type=[13 x i8]*]
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]

; [#uses=32]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=2]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=1]
declare void @_ssdm_op_SpecLatency(...) nounwind

; [#uses=5]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=1]
declare void @_ssdm_op_IfWrite.Stream.floatP.floatP(float*, float*)

; [#uses=1]
declare void @_ssdm_op_IfRead.Stream.floatP.floatP(float*, float*)

; [#uses=1]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=0]
define void @Echo(%"class.hls::stream.0"* %value_in, %"class.hls::stream.0"* %value_out, i32 %delay, float %scale) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([5 x i8]* @Echo.str) nounwind
  %tmp.7 = alloca float, align 4                  ; [#uses=2 type=float*]
  %tmp.3 = alloca float, align 4                  ; [#uses=2 type=float*]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0"* %value_in}, i64 0, metadata !111), !dbg !112 ; [debug line = 16:23] [debug variable = value_in]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0"* %value_out}, i64 0, metadata !113), !dbg !114 ; [debug line = 17:23] [debug variable = value_out]
  call void @llvm.dbg.value(metadata !{i32 %delay}, i64 0, metadata !115), !dbg !116 ; [debug line = 19:6] [debug variable = delay]
  call void @llvm.dbg.value(metadata !{float %scale}, i64 0, metadata !117), !dbg !118 ; [debug line = 20:8] [debug variable = scale]
  call void (...)* @_ssdm_op_SpecLatency(i32 12, i32 65535, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !119 ; [debug line = 23:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([13 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !121 ; [debug line = 25:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %delay, i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !122 ; [debug line = 26:1]
  %tmp = fpext float %scale to double, !dbg !123  ; [#uses=1 type=double] [debug line = 27:1]
  call void (...)* @_ssdm_op_SpecInterface(double %tmp, i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !123 ; [debug line = 27:1]
  call void (...)* @_ssdm_op_SpecInterface(%"class.hls::stream.0"* %value_in, i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0), i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !124 ; [debug line = 29:1]
  call void (...)* @_ssdm_op_SpecInterface(%"class.hls::stream.0"* %value_out, i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0), i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !125 ; [debug line = 30:1]
  %"guard variable for Echo(stream<float>&, stream<float>&, int, float)readBuffer.load" = load i8* @"guard variable for Echo(stream<float>&, stream<float>&, int, float)readBuffer", align 1, !dbg !126 ; [#uses=1 type=i8] [debug line = 32:38]
  %tmp.1 = icmp eq i8 %"guard variable for Echo(stream<float>&, stream<float>&, int, float)readBuffer.load", 0, !dbg !126 ; [#uses=1 type=i1] [debug line = 32:38]
  br i1 %tmp.1, label %codeRepl, label %._crit_edge, !dbg !126 ; [debug line = 32:38]

codeRepl:                                         ; preds = %0
  %tmp.2 = sub nsw i32 4800, %delay, !dbg !126    ; [#uses=1 type=i32] [debug line = 32:38]
  store i32 %tmp.2, i32* @readBuffer, align 4, !dbg !126 ; [debug line = 32:38]
  store i8 1, i8* @"guard variable for Echo(stream<float>&, stream<float>&, int, float)readBuffer", align 1, !dbg !126 ; [debug line = 32:38]
  br label %._crit_edge

._crit_edge:                                      ; preds = %codeRepl, %0
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0"* %value_in}, i64 0, metadata !127), !dbg !129 ; [debug line = 101:48@39:2] [debug variable = this]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0"* %value_in}, i64 0, metadata !131), !dbg !132 ; [debug line = 123:48@102:9@39:2] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{float* %tmp.3}, metadata !135) nounwind, !dbg !137 ; [debug line = 124:22@102:9@39:2] [debug variable = tmp]
  %value_in.addr = getelementptr inbounds %"class.hls::stream.0"* %value_in, i64 0, i32 0, !dbg !138 ; [#uses=1 type=float*] [debug line = 125:9@102:9@39:2]
  call void @_ssdm_op_IfRead.Stream.floatP.floatP(float* %value_in.addr, float* %tmp.3) nounwind, !dbg !138 ; [debug line = 125:9@102:9@39:2]
  call void @llvm.dbg.value(metadata !{float* %tmp.3}, i64 0, metadata !135), !dbg !139 ; [debug line = 126:9@102:9@39:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp.3}, i64 0, metadata !135), !dbg !139 ; [debug line = 126:9@102:9@39:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp.3}, i64 0, metadata !135), !dbg !139 ; [debug line = 126:9@102:9@39:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp.3}, i64 0, metadata !135), !dbg !139 ; [debug line = 126:9@102:9@39:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp.3}, i64 0, metadata !135), !dbg !139 ; [debug line = 126:9@102:9@39:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp.3}, i64 0, metadata !135), !dbg !139 ; [debug line = 126:9@102:9@39:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp.3}, i64 0, metadata !135), !dbg !139 ; [debug line = 126:9@102:9@39:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp.3}, i64 0, metadata !135), !dbg !139 ; [debug line = 126:9@102:9@39:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp.3}, i64 0, metadata !135), !dbg !139 ; [debug line = 126:9@102:9@39:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp.3}, i64 0, metadata !135), !dbg !139 ; [debug line = 126:9@102:9@39:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp.3}, i64 0, metadata !135), !dbg !139 ; [debug line = 126:9@102:9@39:2] [debug variable = tmp]
  %current_value = load float* %tmp.3, align 4, !dbg !139 ; [#uses=1 type=float] [debug line = 126:9@102:9@39:2]
  call void @llvm.dbg.value(metadata !{float %current_value}, i64 0, metadata !140), !dbg !139 ; [debug line = 126:9@102:9@39:2] [debug variable = current_value]
  %readBuffer.load = load i32* @readBuffer, align 4, !dbg !141 ; [#uses=1 type=i32] [debug line = 41:2]
  %tmp.4 = sext i32 %readBuffer.load to i64, !dbg !141 ; [#uses=1 type=i64] [debug line = 41:2]
  %buffer.addr = getelementptr inbounds [4800 x float]* @buffer, i64 0, i64 %tmp.4, !dbg !141 ; [#uses=1 type=float*] [debug line = 41:2]
  %buffer.load = load float* %buffer.addr, align 4, !dbg !141 ; [#uses=2 type=float] [debug line = 41:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %buffer.load) nounwind
  %tmp.5 = fmul float %buffer.load, %scale, !dbg !141 ; [#uses=1 type=float] [debug line = 41:2]
  %current_value.2 = fadd float %current_value, %tmp.5, !dbg !141 ; [#uses=2 type=float] [debug line = 41:2]
  call void @llvm.dbg.value(metadata !{float %current_value.2}, i64 0, metadata !140), !dbg !141 ; [debug line = 41:2] [debug variable = current_value]
  %writeBuffer.load = load i32* @writeBuffer, align 4, !dbg !142 ; [#uses=1 type=i32] [debug line = 43:2]
  %tmp.6 = sext i32 %writeBuffer.load to i64, !dbg !142 ; [#uses=1 type=i64] [debug line = 43:2]
  %buffer.addr.1 = getelementptr inbounds [4800 x float]* @buffer, i64 0, i64 %tmp.6, !dbg !142 ; [#uses=1 type=float*] [debug line = 43:2]
  store float %current_value.2, float* %buffer.addr.1, align 4, !dbg !142 ; [debug line = 43:2]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0"* %value_out}, i64 0, metadata !143), !dbg !144 ; [debug line = 105:48@45:2] [debug variable = this]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0"* %value_out}, i64 0, metadata !146), !dbg !147 ; [debug line = 144:48@106:9@45:2] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{float* %tmp.7}, metadata !150) nounwind, !dbg !152 ; [debug line = 145:22@106:9@45:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %current_value.2}, i64 0, metadata !150), !dbg !153 ; [debug line = 145:31@106:9@45:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %current_value.2}, i64 0, metadata !150), !dbg !153 ; [debug line = 145:31@106:9@45:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %current_value.2}, i64 0, metadata !150), !dbg !153 ; [debug line = 145:31@106:9@45:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %current_value.2}, i64 0, metadata !150), !dbg !153 ; [debug line = 145:31@106:9@45:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %current_value.2}, i64 0, metadata !150), !dbg !153 ; [debug line = 145:31@106:9@45:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %current_value.2}, i64 0, metadata !150), !dbg !153 ; [debug line = 145:31@106:9@45:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %current_value.2}, i64 0, metadata !150), !dbg !153 ; [debug line = 145:31@106:9@45:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %current_value.2}, i64 0, metadata !150), !dbg !153 ; [debug line = 145:31@106:9@45:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %current_value.2}, i64 0, metadata !150), !dbg !153 ; [debug line = 145:31@106:9@45:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %current_value.2}, i64 0, metadata !150), !dbg !153 ; [debug line = 145:31@106:9@45:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %current_value.2}, i64 0, metadata !150), !dbg !153 ; [debug line = 145:31@106:9@45:2] [debug variable = tmp]
  store float %current_value.2, float* %tmp.7, align 4, !dbg !153 ; [debug line = 145:31@106:9@45:2]
  %value_out.addr = getelementptr inbounds %"class.hls::stream.0"* %value_out, i64 0, i32 0, !dbg !154 ; [#uses=1 type=float*] [debug line = 146:9@106:9@45:2]
  call void @_ssdm_op_IfWrite.Stream.floatP.floatP(float* %value_out.addr, float* %tmp.7) nounwind, !dbg !154 ; [debug line = 146:9@106:9@45:2]
  %readBuffer.load.1 = load i32* @readBuffer, align 4, !dbg !155 ; [#uses=2 type=i32] [debug line = 47:2]
  %tmp.9 = icmp slt i32 %readBuffer.load.1, 4800, !dbg !155 ; [#uses=1 type=i1] [debug line = 47:2]
  %tmp.10 = add nsw i32 %readBuffer.load.1, 1, !dbg !156 ; [#uses=1 type=i32] [debug line = 48:3]
  %storemerge = select i1 %tmp.9, i32 %tmp.10, i32 0, !dbg !155 ; [#uses=1 type=i32] [debug line = 47:2]
  store i32 %storemerge, i32* @readBuffer, align 4, !dbg !156 ; [debug line = 48:3]
  %writeBuffer.load.1 = load i32* @writeBuffer, align 4, !dbg !157 ; [#uses=2 type=i32] [debug line = 52:2]
  %tmp.11 = icmp slt i32 %writeBuffer.load.1, 4800, !dbg !157 ; [#uses=1 type=i1] [debug line = 52:2]
  %tmp.12 = add nsw i32 %writeBuffer.load.1, 1, !dbg !158 ; [#uses=1 type=i32] [debug line = 53:3]
  %storemerge5 = select i1 %tmp.11, i32 %tmp.12, i32 0, !dbg !157 ; [#uses=1 type=i32] [debug line = 52:2]
  store i32 %storemerge5, i32* @writeBuffer, align 4, !dbg !158 ; [debug line = 53:3]
  ret void, !dbg !159                             ; [debug line = 60:1]
}

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!91, !98, !104, !106, !109}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/austin/ECE1373_GhostSynth/modules/Echo/Echo/solution1/.autopilot/db/Echo.pragma.2.cpp", metadata !"/home/austin/ECE1373_GhostSynth/modules/Echo", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !73} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !69, metadata !70, metadata !71, metadata !72}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"Echo", metadata !"Echo", metadata !"_Z4EchoRN3hls6streamIfEES2_if", metadata !6, i32 14, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream.0"*, %"class.hls::stream.0"*, i32, float)* @Echo, null, null, metadata !20, i32 22} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"src/Echo.cpp", metadata !"/home/austin/ECE1373_GhostSynth/modules/Echo", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !9, metadata !68, metadata !15}
!9 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_reference_type ]
!10 = metadata !{i32 786434, metadata !11, metadata !"stream<float>", metadata !12, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !13, i32 0, null, metadata !66} ; [ DW_TAG_class_type ]
!11 = metadata !{i32 786489, null, metadata !"hls", metadata !12, i32 69} ; [ DW_TAG_namespace ]
!12 = metadata !{i32 786473, metadata !"/home/austin/Desktop/Vivado_HLS/2017.2/common/technology/autopilot/hls_stream.h", metadata !"/home/austin/ECE1373_GhostSynth/modules/Echo", null} ; [ DW_TAG_file_type ]
!13 = metadata !{metadata !14, metadata !16, metadata !22, metadata !28, metadata !33, metadata !36, metadata !40, metadata !45, metadata !50, metadata !51, metadata !52, metadata !55, metadata !58, metadata !59, metadata !62}
!14 = metadata !{i32 786445, metadata !10, metadata !"V", metadata !12, i32 163, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ]
!15 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!16 = metadata !{i32 786478, i32 0, metadata !10, metadata !"stream", metadata !"stream", metadata !"", metadata !12, i32 83, metadata !17, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 83} ; [ DW_TAG_subprogram ]
!17 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !18, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!18 = metadata !{null, metadata !19}
!19 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !10} ; [ DW_TAG_pointer_type ]
!20 = metadata !{metadata !21}
!21 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!22 = metadata !{i32 786478, i32 0, metadata !10, metadata !"stream", metadata !"stream", metadata !"", metadata !12, i32 86, metadata !23, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 86} ; [ DW_TAG_subprogram ]
!23 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !24, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!24 = metadata !{null, metadata !19, metadata !25}
!25 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ]
!26 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_const_type ]
!27 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!28 = metadata !{i32 786478, i32 0, metadata !10, metadata !"stream", metadata !"stream", metadata !"", metadata !12, i32 91, metadata !29, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !20, i32 91} ; [ DW_TAG_subprogram ]
!29 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !30, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!30 = metadata !{null, metadata !19, metadata !31}
!31 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !32} ; [ DW_TAG_reference_type ]
!32 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ]
!33 = metadata !{i32 786478, i32 0, metadata !10, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIfEaSERKS1_", metadata !12, i32 94, metadata !34, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !20, i32 94} ; [ DW_TAG_subprogram ]
!34 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !35, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!35 = metadata !{metadata !9, metadata !19, metadata !31}
!36 = metadata !{i32 786478, i32 0, metadata !10, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIfErsERf", metadata !12, i32 101, metadata !37, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 101} ; [ DW_TAG_subprogram ]
!37 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !38, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!38 = metadata !{null, metadata !19, metadata !39}
!39 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_reference_type ]
!40 = metadata !{i32 786478, i32 0, metadata !10, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIfElsERKf", metadata !12, i32 105, metadata !41, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 105} ; [ DW_TAG_subprogram ]
!41 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !42, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!42 = metadata !{null, metadata !19, metadata !43}
!43 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !44} ; [ DW_TAG_reference_type ]
!44 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_const_type ]
!45 = metadata !{i32 786478, i32 0, metadata !10, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIfE5emptyEv", metadata !12, i32 112, metadata !46, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 112} ; [ DW_TAG_subprogram ]
!46 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !47, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!47 = metadata !{metadata !48, metadata !49}
!48 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!49 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !32} ; [ DW_TAG_pointer_type ]
!50 = metadata !{i32 786478, i32 0, metadata !10, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIfE4fullEv", metadata !12, i32 117, metadata !46, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 117} ; [ DW_TAG_subprogram ]
!51 = metadata !{i32 786478, i32 0, metadata !10, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readERf", metadata !12, i32 123, metadata !37, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 123} ; [ DW_TAG_subprogram ]
!52 = metadata !{i32 786478, i32 0, metadata !10, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readEv", metadata !12, i32 129, metadata !53, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 129} ; [ DW_TAG_subprogram ]
!53 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !54, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!54 = metadata !{metadata !15, metadata !19}
!55 = metadata !{i32 786478, i32 0, metadata !10, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIfE7read_nbERf", metadata !12, i32 136, metadata !56, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 136} ; [ DW_TAG_subprogram ]
!56 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !57, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!57 = metadata !{metadata !48, metadata !19, metadata !39}
!58 = metadata !{i32 786478, i32 0, metadata !10, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !12, i32 144, metadata !41, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 144} ; [ DW_TAG_subprogram ]
!59 = metadata !{i32 786478, i32 0, metadata !10, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIfE8write_nbERKf", metadata !12, i32 150, metadata !60, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 150} ; [ DW_TAG_subprogram ]
!60 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !61, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!61 = metadata !{metadata !48, metadata !19, metadata !43}
!62 = metadata !{i32 786478, i32 0, metadata !10, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIfE4sizeEv", metadata !12, i32 157, metadata !63, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 157} ; [ DW_TAG_subprogram ]
!63 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !64, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!64 = metadata !{metadata !65, metadata !19}
!65 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!66 = metadata !{metadata !67}
!67 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !15, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!68 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!69 = metadata !{i32 786478, i32 0, metadata !11, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIfElsERKf", metadata !12, i32 105, metadata !41, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !40, metadata !20, i32 105} ; [ DW_TAG_subprogram ]
!70 = metadata !{i32 786478, i32 0, metadata !11, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !12, i32 144, metadata !41, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !58, metadata !20, i32 144} ; [ DW_TAG_subprogram ]
!71 = metadata !{i32 786478, i32 0, metadata !11, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIfErsERf", metadata !12, i32 101, metadata !37, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !36, metadata !20, i32 101} ; [ DW_TAG_subprogram ]
!72 = metadata !{i32 786478, i32 0, metadata !11, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readERf", metadata !12, i32 123, metadata !37, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !51, metadata !20, i32 123} ; [ DW_TAG_subprogram ]
!73 = metadata !{metadata !74}
!74 = metadata !{metadata !75, metadata !76, metadata !77, metadata !81, metadata !84, metadata !85, metadata !86, metadata !88, metadata !89}
!75 = metadata !{i32 786484, i32 0, metadata !5, metadata !"readBuffer", metadata !"readBuffer", metadata !"", metadata !6, i32 32, metadata !68, i32 1, i32 1, i32* @readBuffer} ; [ DW_TAG_variable ]
!76 = metadata !{i32 786484, i32 0, metadata !5, metadata !"writeBuffer", metadata !"writeBuffer", metadata !"", metadata !6, i32 33, metadata !68, i32 1, i32 1, i32* @writeBuffer} ; [ DW_TAG_variable ]
!77 = metadata !{i32 786484, i32 0, metadata !5, metadata !"buffer", metadata !"buffer", metadata !"", metadata !6, i32 35, metadata !78, i32 1, i32 1, [4800 x float]* @buffer} ; [ DW_TAG_variable ]
!78 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 153600, i64 32, i32 0, i32 0, metadata !15, metadata !79, i32 0, i32 0} ; [ DW_TAG_array_type ]
!79 = metadata !{metadata !80}
!80 = metadata !{i32 786465, i64 0, i64 4799}     ; [ DW_TAG_subrange_type ]
!81 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !82, i32 315, metadata !83, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!82 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/austin/ECE1373_GhostSynth/modules/Echo", null} ; [ DW_TAG_file_type ]
!83 = metadata !{i32 786434, null, metadata !"_IO_FILE_plus", metadata !82, i32 313, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!84 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !82, i32 316, metadata !83, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!85 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !82, i32 317, metadata !83, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!86 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !87, i32 26, metadata !68, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!87 = metadata !{i32 786473, metadata !"/usr/include/x86_64-linux-gnu/bits/sys_errlist.h", metadata !"/home/austin/ECE1373_GhostSynth/modules/Echo", null} ; [ DW_TAG_file_type ]
!88 = metadata !{i32 786484, i32 0, null, metadata !"_sys_nerr", metadata !"_sys_nerr", metadata !"", metadata !87, i32 30, metadata !68, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!89 = metadata !{i32 786484, i32 0, null, metadata !"signgam", metadata !"signgam", metadata !"", metadata !90, i32 168, metadata !68, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!90 = metadata !{i32 786473, metadata !"/usr/include/math.h", metadata !"/home/austin/ECE1373_GhostSynth/modules/Echo", null} ; [ DW_TAG_file_type ]
!91 = metadata !{void (%"class.hls::stream.0"*, %"class.hls::stream.0"*, i32, float)* @Echo, metadata !92, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97}
!92 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0}
!93 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!94 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<float> &", metadata !"hls::stream<float> &", metadata !"int", metadata !"float"}
!95 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!96 = metadata !{metadata !"kernel_arg_name", metadata !"value_in", metadata !"value_out", metadata !"delay", metadata !"scale"}
!97 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!98 = metadata !{null, metadata !99, metadata !100, metadata !101, metadata !102, metadata !103, metadata !97}
!99 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!100 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!101 = metadata !{metadata !"kernel_arg_type", metadata !"const float &"}
!102 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!103 = metadata !{metadata !"kernel_arg_name", metadata !"wdata"}
!104 = metadata !{null, metadata !99, metadata !100, metadata !101, metadata !102, metadata !105, metadata !97}
!105 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!106 = metadata !{null, metadata !99, metadata !100, metadata !107, metadata !102, metadata !108, metadata !97}
!107 = metadata !{metadata !"kernel_arg_type", metadata !"float &"}
!108 = metadata !{metadata !"kernel_arg_name", metadata !"rdata"}
!109 = metadata !{null, metadata !99, metadata !100, metadata !107, metadata !102, metadata !110, metadata !97}
!110 = metadata !{metadata !"kernel_arg_name", metadata !"dout"}
!111 = metadata !{i32 786689, metadata !5, metadata !"value_in", metadata !6, i32 16777232, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!112 = metadata !{i32 16, i32 23, metadata !5, null}
!113 = metadata !{i32 786689, metadata !5, metadata !"value_out", metadata !6, i32 33554449, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!114 = metadata !{i32 17, i32 23, metadata !5, null}
!115 = metadata !{i32 786689, metadata !5, metadata !"delay", metadata !6, i32 50331667, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!116 = metadata !{i32 19, i32 6, metadata !5, null}
!117 = metadata !{i32 786689, metadata !5, metadata !"scale", metadata !6, i32 67108884, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!118 = metadata !{i32 20, i32 8, metadata !5, null}
!119 = metadata !{i32 23, i32 1, metadata !120, null}
!120 = metadata !{i32 786443, metadata !5, i32 22, i32 2, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!121 = metadata !{i32 25, i32 1, metadata !120, null}
!122 = metadata !{i32 26, i32 1, metadata !120, null}
!123 = metadata !{i32 27, i32 1, metadata !120, null}
!124 = metadata !{i32 29, i32 1, metadata !120, null}
!125 = metadata !{i32 30, i32 1, metadata !120, null}
!126 = metadata !{i32 32, i32 38, metadata !120, null}
!127 = metadata !{i32 786689, metadata !71, metadata !"this", metadata !12, i32 16777317, metadata !128, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!128 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!129 = metadata !{i32 101, i32 48, metadata !71, metadata !130}
!130 = metadata !{i32 39, i32 2, metadata !120, null}
!131 = metadata !{i32 786689, metadata !72, metadata !"this", metadata !12, i32 16777339, metadata !128, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!132 = metadata !{i32 123, i32 48, metadata !72, metadata !133}
!133 = metadata !{i32 102, i32 9, metadata !134, metadata !130}
!134 = metadata !{i32 786443, metadata !71, i32 101, i32 82, metadata !12, i32 3} ; [ DW_TAG_lexical_block ]
!135 = metadata !{i32 786688, metadata !136, metadata !"tmp", metadata !12, i32 124, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!136 = metadata !{i32 786443, metadata !72, i32 123, i32 73, metadata !12, i32 4} ; [ DW_TAG_lexical_block ]
!137 = metadata !{i32 124, i32 22, metadata !136, metadata !133}
!138 = metadata !{i32 125, i32 9, metadata !136, metadata !133}
!139 = metadata !{i32 126, i32 9, metadata !136, metadata !133}
!140 = metadata !{i32 786688, metadata !120, metadata !"current_value", metadata !6, i32 37, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!141 = metadata !{i32 41, i32 2, metadata !120, null}
!142 = metadata !{i32 43, i32 2, metadata !120, null}
!143 = metadata !{i32 786689, metadata !69, metadata !"this", metadata !12, i32 16777321, metadata !128, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!144 = metadata !{i32 105, i32 48, metadata !69, metadata !145}
!145 = metadata !{i32 45, i32 2, metadata !120, null}
!146 = metadata !{i32 786689, metadata !70, metadata !"this", metadata !12, i32 16777360, metadata !128, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!147 = metadata !{i32 144, i32 48, metadata !70, metadata !148}
!148 = metadata !{i32 106, i32 9, metadata !149, metadata !145}
!149 = metadata !{i32 786443, metadata !69, i32 105, i32 88, metadata !12, i32 1} ; [ DW_TAG_lexical_block ]
!150 = metadata !{i32 786688, metadata !151, metadata !"tmp", metadata !12, i32 145, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!151 = metadata !{i32 786443, metadata !70, i32 144, i32 79, metadata !12, i32 2} ; [ DW_TAG_lexical_block ]
!152 = metadata !{i32 145, i32 22, metadata !151, metadata !148}
!153 = metadata !{i32 145, i32 31, metadata !151, metadata !148}
!154 = metadata !{i32 146, i32 9, metadata !151, metadata !148}
!155 = metadata !{i32 47, i32 2, metadata !120, null}
!156 = metadata !{i32 48, i32 3, metadata !120, null}
!157 = metadata !{i32 52, i32 2, metadata !120, null}
!158 = metadata !{i32 53, i32 3, metadata !120, null}
!159 = metadata !{i32 60, i32 1, metadata !120, null}

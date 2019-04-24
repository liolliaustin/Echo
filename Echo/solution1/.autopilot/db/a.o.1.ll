; ModuleID = '/home/austin/ECE1373_GhostSynth/modules/echo/Echo/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.hls::stream.1" = type { i32 }
%"class.hls::stream.0.2" = type { float }

@writeBuffer = internal unnamed_addr global i32 0, align 4 ; [#uses=4 type=i32*]
@readBuffer4 = internal unnamed_addr global i32 0, align 4 ; [#uses=4 type=i32*]
@readBuffer3 = internal unnamed_addr global i32 0, align 4 ; [#uses=4 type=i32*]
@readBuffer2 = internal unnamed_addr global i32 0, align 4 ; [#uses=4 type=i32*]
@readBuffer1 = internal unnamed_addr global i32 0, align 4 ; [#uses=4 type=i32*]
@delayCount = internal unnamed_addr global i32 0, align 4 ; [#uses=3 type=i32*]
@buffer = internal unnamed_addr global [48000 x float] zeroinitializer, align 16 ; [#uses=6 type=[48000 x float]*]
@Echo.str = internal unnamed_addr constant [5 x i8] c"Echo\00" ; [#uses=1 type=[5 x i8]*]
@.str5 = private unnamed_addr constant [5 x i8] c"both\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str4 = private unnamed_addr constant [5 x i8] c"axis\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str3 = private unnamed_addr constant [9 x i8] c"CTRL_BUS\00", align 1 ; [#uses=1 type=[9 x i8]*]
@.str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str1 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1 ; [#uses=1 type=[13 x i8]*]
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]

; [#uses=51]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=3]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=1]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=5]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=1]
declare void @_ssdm_op_IfWrite.Stream.floatP.floatP(float*, float*)

; [#uses=1]
declare void @_ssdm_op_IfRead.Stream.i32P.i32P(i32*, i32*)

; [#uses=1]
declare void @_ssdm_op_IfRead.Stream.floatP.floatP(float*, float*)

; [#uses=5]
declare void @_ssdm_SpecKeepArrayLoad(...)

; [#uses=0]
define void @Echo(%"class.hls::stream.1"* %change, %"class.hls::stream.0.2"* %value_in, %"class.hls::stream.0.2"* %value_out, i32 %delay, i32 %scale) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([5 x i8]* @Echo.str) nounwind
  %tmp.58 = alloca float, align 4                 ; [#uses=2 type=float*]
  %tmp.4 = alloca float, align 4                  ; [#uses=2 type=float*]
  %tmp = alloca i32, align 4                      ; [#uses=2 type=i32*]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.1"* %change}, i64 0, metadata !170), !dbg !171 ; [debug line = 19:21] [debug variable = change]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0.2"* %value_in}, i64 0, metadata !172), !dbg !173 ; [debug line = 20:23] [debug variable = value_in]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0.2"* %value_out}, i64 0, metadata !174), !dbg !175 ; [debug line = 21:23] [debug variable = value_out]
  call void @llvm.dbg.value(metadata !{i32 %delay}, i64 0, metadata !176), !dbg !177 ; [debug line = 23:6] [debug variable = delay]
  call void @llvm.dbg.value(metadata !{i32 %scale}, i64 0, metadata !178), !dbg !179 ; [debug line = 24:6] [debug variable = scale]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !180 ; [debug line = 28:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([13 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !182 ; [debug line = 29:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %delay, i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !183 ; [debug line = 30:1]
  call void (...)* @_ssdm_op_SpecInterface(%"class.hls::stream.1"* %change, i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0), i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !184 ; [debug line = 33:1]
  call void (...)* @_ssdm_op_SpecInterface(%"class.hls::stream.0.2"* %value_in, i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0), i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !185 ; [debug line = 34:1]
  call void (...)* @_ssdm_op_SpecInterface(%"class.hls::stream.0.2"* %value_out, i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0), i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str, i64 0, i64 0)) nounwind, !dbg !186 ; [debug line = 35:1]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.1"* %change}, i64 0, metadata !187), !dbg !189 ; [debug line = 101:48@52:2] [debug variable = this]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.1"* %change}, i64 0, metadata !191), !dbg !192 ; [debug line = 123:48@102:9@52:2] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{i32* %tmp}, metadata !195) nounwind, !dbg !197 ; [debug line = 124:22@102:9@52:2] [debug variable = tmp]
  %change.addr = getelementptr inbounds %"class.hls::stream.1"* %change, i64 0, i32 0, !dbg !198 ; [#uses=1 type=i32*] [debug line = 125:9@102:9@52:2]
  call void @_ssdm_op_IfRead.Stream.i32P.i32P(i32* %change.addr, i32* %tmp) nounwind, !dbg !198 ; [debug line = 125:9@102:9@52:2]
  call void @llvm.dbg.value(metadata !{i32* %tmp}, i64 0, metadata !195), !dbg !199 ; [debug line = 126:9@102:9@52:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp}, i64 0, metadata !195), !dbg !199 ; [debug line = 126:9@102:9@52:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp}, i64 0, metadata !195), !dbg !199 ; [debug line = 126:9@102:9@52:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp}, i64 0, metadata !195), !dbg !199 ; [debug line = 126:9@102:9@52:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp}, i64 0, metadata !195), !dbg !199 ; [debug line = 126:9@102:9@52:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp}, i64 0, metadata !195), !dbg !199 ; [debug line = 126:9@102:9@52:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp}, i64 0, metadata !195), !dbg !199 ; [debug line = 126:9@102:9@52:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp}, i64 0, metadata !195), !dbg !199 ; [debug line = 126:9@102:9@52:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp}, i64 0, metadata !195), !dbg !199 ; [debug line = 126:9@102:9@52:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp}, i64 0, metadata !195), !dbg !199 ; [debug line = 126:9@102:9@52:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp}, i64 0, metadata !195), !dbg !199 ; [debug line = 126:9@102:9@52:2] [debug variable = tmp]
  %changevalue = load i32* %tmp, align 4, !dbg !199 ; [#uses=1 type=i32] [debug line = 126:9@102:9@52:2]
  call void @llvm.dbg.value(metadata !{i32 %changevalue}, i64 0, metadata !200), !dbg !199 ; [debug line = 126:9@102:9@52:2] [debug variable = changevalue]
  %tmp.1 = icmp eq i32 %changevalue, 0, !dbg !201 ; [#uses=1 type=i1] [debug line = 56:2]
  br i1 %tmp.1, label %._crit_edge, label %1, !dbg !201 ; [debug line = 56:2]

; <label>:1                                       ; preds = %0
  store i32 0, i32* @delayCount, align 4, !dbg !202 ; [debug line = 57:3]
  store i32 0, i32* @readBuffer1, align 4, !dbg !204 ; [debug line = 58:3]
  store i32 0, i32* @readBuffer2, align 4, !dbg !205 ; [debug line = 59:3]
  store i32 0, i32* @readBuffer3, align 4, !dbg !206 ; [debug line = 60:3]
  store i32 0, i32* @readBuffer4, align 4, !dbg !207 ; [debug line = 61:3]
  store i32 0, i32* @writeBuffer, align 4, !dbg !208 ; [debug line = 62:3]
  br label %._crit_edge, !dbg !209                ; [debug line = 63:2]

._crit_edge:                                      ; preds = %1, %0
  %writeBuffer.load = load i32* @writeBuffer, align 4, !dbg !210 ; [#uses=3 type=i32] [debug line = 66:2]
  %tmp.2 = icmp slt i32 %writeBuffer.load, 48000, !dbg !210 ; [#uses=1 type=i1] [debug line = 66:2]
  br i1 %tmp.2, label %2, label %._crit_edge9, !dbg !210 ; [debug line = 66:2]

; <label>:2                                       ; preds = %._crit_edge
  %tmp.3 = sext i32 %writeBuffer.load to i64, !dbg !211 ; [#uses=1 type=i64] [debug line = 68:3]
  %rdata.assign = getelementptr inbounds [48000 x float]* @buffer, i64 0, i64 %tmp.3, !dbg !211 ; [#uses=1 type=float*] [debug line = 68:3]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0.2"* %value_in}, i64 0, metadata !213), !dbg !215 ; [debug line = 101:48@68:3] [debug variable = this]
  call void @llvm.dbg.value(metadata !{float* %rdata.assign}, i64 0, metadata !216), !dbg !217 ; [debug line = 101:75@68:3] [debug variable = rdata]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0.2"* %value_in}, i64 0, metadata !218), !dbg !219 ; [debug line = 123:48@102:9@68:3] [debug variable = this]
  call void @llvm.dbg.value(metadata !{float* %rdata.assign}, i64 0, metadata !222), !dbg !223 ; [debug line = 123:67@102:9@68:3] [debug variable = dout]
  call void @llvm.dbg.declare(metadata !{float* %tmp.4}, metadata !224) nounwind, !dbg !226 ; [debug line = 124:22@102:9@68:3] [debug variable = tmp]
  %value_in.addr = getelementptr inbounds %"class.hls::stream.0.2"* %value_in, i64 0, i32 0, !dbg !227 ; [#uses=1 type=float*] [debug line = 125:9@102:9@68:3]
  call void @_ssdm_op_IfRead.Stream.floatP.floatP(float* %value_in.addr, float* %tmp.4) nounwind, !dbg !227 ; [debug line = 125:9@102:9@68:3]
  call void @llvm.dbg.value(metadata !{float* %tmp.4}, i64 0, metadata !224), !dbg !228 ; [debug line = 126:9@102:9@68:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp.4}, i64 0, metadata !224), !dbg !228 ; [debug line = 126:9@102:9@68:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp.4}, i64 0, metadata !224), !dbg !228 ; [debug line = 126:9@102:9@68:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp.4}, i64 0, metadata !224), !dbg !228 ; [debug line = 126:9@102:9@68:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp.4}, i64 0, metadata !224), !dbg !228 ; [debug line = 126:9@102:9@68:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp.4}, i64 0, metadata !224), !dbg !228 ; [debug line = 126:9@102:9@68:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp.4}, i64 0, metadata !224), !dbg !228 ; [debug line = 126:9@102:9@68:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp.4}, i64 0, metadata !224), !dbg !228 ; [debug line = 126:9@102:9@68:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp.4}, i64 0, metadata !224), !dbg !228 ; [debug line = 126:9@102:9@68:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp.4}, i64 0, metadata !224), !dbg !228 ; [debug line = 126:9@102:9@68:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp.4}, i64 0, metadata !224), !dbg !228 ; [debug line = 126:9@102:9@68:3] [debug variable = tmp]
  %tmp.4.load = load float* %tmp.4, align 4, !dbg !228 ; [#uses=1 type=float] [debug line = 126:9@102:9@68:3]
  store float %tmp.4.load, float* %rdata.assign, align 4, !dbg !228 ; [debug line = 126:9@102:9@68:3]
  %writeBuffer.load.1 = load i32* @writeBuffer, align 4, !dbg !229 ; [#uses=1 type=i32] [debug line = 69:3]
  %tmp.5 = add nsw i32 %writeBuffer.load.1, 1, !dbg !229 ; [#uses=2 type=i32] [debug line = 69:3]
  store i32 %tmp.5, i32* @writeBuffer, align 4, !dbg !229 ; [debug line = 69:3]
  br label %._crit_edge9, !dbg !230               ; [debug line = 71:2]

._crit_edge9:                                     ; preds = %2, %._crit_edge
  %tmp.6 = phi i32 [ %tmp.5, %2 ], [ %writeBuffer.load, %._crit_edge ] ; [#uses=6 type=i32]
  %delayCount.load = load i32* @delayCount, align 4, !dbg !231 ; [#uses=6 type=i32] [debug line = 74:2]
  %tmp.7 = icmp sgt i32 %delayCount.load, %delay, !dbg !231 ; [#uses=1 type=i1] [debug line = 74:2]
  br i1 %tmp.7, label %3, label %._crit_edge10, !dbg !231 ; [debug line = 74:2]

; <label>:3                                       ; preds = %._crit_edge9
  %readBuffer1.load = load i32* @readBuffer1, align 4, !dbg !232 ; [#uses=4 type=i32] [debug line = 76:3]
  %tmp.8 = icmp sgt i32 %readBuffer1.load, %tmp.6, !dbg !232 ; [#uses=1 type=i1] [debug line = 76:3]
  br i1 %tmp.8, label %._crit_edge11, label %4, !dbg !232 ; [debug line = 76:3]

; <label>:4                                       ; preds = %3
  %tmp.9 = sitofp i32 %scale to double, !dbg !234 ; [#uses=1 type=double] [debug line = 77:4]
  %tmp.10 = fmul double %tmp.9, 5.000000e-01, !dbg !234 ; [#uses=1 type=double] [debug line = 77:4]
  %tmp.11 = sext i32 %readBuffer1.load to i64, !dbg !234 ; [#uses=1 type=i64] [debug line = 77:4]
  %buffer.addr = getelementptr inbounds [48000 x float]* @buffer, i64 0, i64 %tmp.11, !dbg !234 ; [#uses=1 type=float*] [debug line = 77:4]
  %buffer.load = load float* %buffer.addr, align 4, !dbg !234 ; [#uses=2 type=float] [debug line = 77:4]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %buffer.load) nounwind
  %tmp.12 = fpext float %buffer.load to double, !dbg !234 ; [#uses=1 type=double] [debug line = 77:4]
  %tmp.13 = fmul double %tmp.10, %tmp.12, !dbg !234 ; [#uses=1 type=double] [debug line = 77:4]
  %tmp.14 = fadd double %tmp.13, 0.000000e+00, !dbg !234 ; [#uses=1 type=double] [debug line = 77:4]
  %outAccumulate = fptrunc double %tmp.14 to float, !dbg !234 ; [#uses=1 type=float] [debug line = 77:4]
  call void @llvm.dbg.value(metadata !{float %outAccumulate}, i64 0, metadata !236), !dbg !234 ; [debug line = 77:4] [debug variable = outAccumulate]
  %tmp.16 = add nsw i32 %readBuffer1.load, 1, !dbg !237 ; [#uses=2 type=i32] [debug line = 78:4]
  store i32 %tmp.16, i32* @readBuffer1, align 4, !dbg !237 ; [debug line = 78:4]
  br label %._crit_edge11, !dbg !238              ; [debug line = 79:3]

._crit_edge11:                                    ; preds = %4, %3
  %tmp.17 = phi i32 [ %tmp.16, %4 ], [ %readBuffer1.load, %3 ] ; [#uses=1 type=i32]
  %outAccumulate1 = phi float [ %outAccumulate, %4 ], [ 0.000000e+00, %3 ] ; [#uses=3 type=float]
  %tmp.18 = icmp sgt i32 %tmp.17, %delay, !dbg !239 ; [#uses=1 type=i1] [debug line = 81:3]
  br i1 %tmp.18, label %5, label %._crit_edge10, !dbg !239 ; [debug line = 81:3]

; <label>:5                                       ; preds = %._crit_edge11
  %readBuffer2.load = load i32* @readBuffer2, align 4, !dbg !240 ; [#uses=4 type=i32] [debug line = 83:4]
  %tmp.19 = icmp sgt i32 %readBuffer2.load, %tmp.6, !dbg !240 ; [#uses=1 type=i1] [debug line = 83:4]
  br i1 %tmp.19, label %._crit_edge13, label %6, !dbg !240 ; [debug line = 83:4]

; <label>:6                                       ; preds = %5
  %tmp.20 = sitofp i32 %scale to double, !dbg !242 ; [#uses=1 type=double] [debug line = 84:5]
  %tmp.21 = fmul double %tmp.20, 2.500000e-01, !dbg !242 ; [#uses=1 type=double] [debug line = 84:5]
  %tmp.22 = sext i32 %readBuffer2.load to i64, !dbg !242 ; [#uses=1 type=i64] [debug line = 84:5]
  %buffer.addr.1 = getelementptr inbounds [48000 x float]* @buffer, i64 0, i64 %tmp.22, !dbg !242 ; [#uses=1 type=float*] [debug line = 84:5]
  %buffer.load.1 = load float* %buffer.addr.1, align 4, !dbg !242 ; [#uses=2 type=float] [debug line = 84:5]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %buffer.load.1) nounwind
  %tmp.23 = fpext float %buffer.load.1 to double, !dbg !242 ; [#uses=1 type=double] [debug line = 84:5]
  %tmp.24 = fmul double %tmp.21, %tmp.23, !dbg !242 ; [#uses=1 type=double] [debug line = 84:5]
  %tmp.25 = fpext float %outAccumulate1 to double, !dbg !242 ; [#uses=1 type=double] [debug line = 84:5]
  %tmp.26 = fadd double %tmp.25, %tmp.24, !dbg !242 ; [#uses=1 type=double] [debug line = 84:5]
  %outAccumulate.4 = fptrunc double %tmp.26 to float, !dbg !242 ; [#uses=1 type=float] [debug line = 84:5]
  call void @llvm.dbg.value(metadata !{float %outAccumulate.4}, i64 0, metadata !236), !dbg !242 ; [debug line = 84:5] [debug variable = outAccumulate]
  %tmp.28 = add nsw i32 %readBuffer2.load, 1, !dbg !244 ; [#uses=2 type=i32] [debug line = 85:5]
  store i32 %tmp.28, i32* @readBuffer2, align 4, !dbg !244 ; [debug line = 85:5]
  br label %._crit_edge13, !dbg !245              ; [debug line = 86:4]

._crit_edge13:                                    ; preds = %6, %5
  %tmp.29 = phi i32 [ %tmp.28, %6 ], [ %readBuffer2.load, %5 ] ; [#uses=1 type=i32]
  %outAccumulate.1 = phi float [ %outAccumulate.4, %6 ], [ %outAccumulate1, %5 ] ; [#uses=3 type=float]
  %tmp.30 = icmp sgt i32 %tmp.29, %delay, !dbg !246 ; [#uses=1 type=i1] [debug line = 88:4]
  br i1 %tmp.30, label %7, label %._crit_edge10, !dbg !246 ; [debug line = 88:4]

; <label>:7                                       ; preds = %._crit_edge13
  %readBuffer3.load = load i32* @readBuffer3, align 4, !dbg !247 ; [#uses=4 type=i32] [debug line = 90:5]
  %tmp.31 = icmp sgt i32 %readBuffer3.load, %tmp.6, !dbg !247 ; [#uses=1 type=i1] [debug line = 90:5]
  br i1 %tmp.31, label %._crit_edge15, label %8, !dbg !247 ; [debug line = 90:5]

; <label>:8                                       ; preds = %7
  %tmp.32 = sitofp i32 %scale to double, !dbg !249 ; [#uses=1 type=double] [debug line = 91:6]
  %tmp.33 = fmul double %tmp.32, 1.250000e-01, !dbg !249 ; [#uses=1 type=double] [debug line = 91:6]
  %tmp.34 = sext i32 %readBuffer3.load to i64, !dbg !249 ; [#uses=1 type=i64] [debug line = 91:6]
  %buffer.addr.2 = getelementptr inbounds [48000 x float]* @buffer, i64 0, i64 %tmp.34, !dbg !249 ; [#uses=1 type=float*] [debug line = 91:6]
  %buffer.load.2 = load float* %buffer.addr.2, align 4, !dbg !249 ; [#uses=2 type=float] [debug line = 91:6]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %buffer.load.2) nounwind
  %tmp.35 = fpext float %buffer.load.2 to double, !dbg !249 ; [#uses=1 type=double] [debug line = 91:6]
  %tmp.36 = fmul double %tmp.33, %tmp.35, !dbg !249 ; [#uses=1 type=double] [debug line = 91:6]
  %tmp.37 = fpext float %outAccumulate.1 to double, !dbg !249 ; [#uses=1 type=double] [debug line = 91:6]
  %tmp.38 = fadd double %tmp.37, %tmp.36, !dbg !249 ; [#uses=1 type=double] [debug line = 91:6]
  %outAccumulate.5 = fptrunc double %tmp.38 to float, !dbg !249 ; [#uses=1 type=float] [debug line = 91:6]
  call void @llvm.dbg.value(metadata !{float %outAccumulate.5}, i64 0, metadata !236), !dbg !249 ; [debug line = 91:6] [debug variable = outAccumulate]
  %tmp.40 = add nsw i32 %readBuffer3.load, 1, !dbg !251 ; [#uses=2 type=i32] [debug line = 92:6]
  store i32 %tmp.40, i32* @readBuffer3, align 4, !dbg !251 ; [debug line = 92:6]
  br label %._crit_edge15, !dbg !252              ; [debug line = 93:5]

._crit_edge15:                                    ; preds = %8, %7
  %tmp.41 = phi i32 [ %tmp.40, %8 ], [ %readBuffer3.load, %7 ] ; [#uses=2 type=i32]
  %outAccumulate.2 = phi float [ %outAccumulate.5, %8 ], [ %outAccumulate.1, %7 ] ; [#uses=3 type=float]
  %tmp.42 = icmp sgt i32 %tmp.41, %delay, !dbg !253 ; [#uses=1 type=i1] [debug line = 95:5]
  br i1 %tmp.42, label %9, label %._crit_edge10, !dbg !253 ; [debug line = 95:5]

; <label>:9                                       ; preds = %._crit_edge15
  %readBuffer4.load = load i32* @readBuffer4, align 4, !dbg !254 ; [#uses=3 type=i32] [debug line = 97:6]
  %tmp.43 = icmp sgt i32 %readBuffer4.load, %tmp.6, !dbg !254 ; [#uses=1 type=i1] [debug line = 97:6]
  br i1 %tmp.43, label %._crit_edge17, label %10, !dbg !254 ; [debug line = 97:6]

; <label>:10                                      ; preds = %9
  %tmp.44 = sitofp i32 %scale to double, !dbg !256 ; [#uses=1 type=double] [debug line = 98:7]
  %tmp.45 = fmul double %tmp.44, 6.250000e-02, !dbg !256 ; [#uses=1 type=double] [debug line = 98:7]
  %tmp.46 = sext i32 %readBuffer4.load to i64, !dbg !256 ; [#uses=1 type=i64] [debug line = 98:7]
  %buffer.addr.3 = getelementptr inbounds [48000 x float]* @buffer, i64 0, i64 %tmp.46, !dbg !256 ; [#uses=1 type=float*] [debug line = 98:7]
  %buffer.load.3 = load float* %buffer.addr.3, align 4, !dbg !256 ; [#uses=2 type=float] [debug line = 98:7]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %buffer.load.3) nounwind
  %tmp.47 = fpext float %buffer.load.3 to double, !dbg !256 ; [#uses=1 type=double] [debug line = 98:7]
  %tmp.48 = fmul double %tmp.45, %tmp.47, !dbg !256 ; [#uses=1 type=double] [debug line = 98:7]
  %tmp.49 = fpext float %outAccumulate.2 to double, !dbg !256 ; [#uses=1 type=double] [debug line = 98:7]
  %tmp.50 = fadd double %tmp.49, %tmp.48, !dbg !256 ; [#uses=1 type=double] [debug line = 98:7]
  %outAccumulate.6 = fptrunc double %tmp.50 to float, !dbg !256 ; [#uses=1 type=float] [debug line = 98:7]
  call void @llvm.dbg.value(metadata !{float %outAccumulate.6}, i64 0, metadata !236), !dbg !256 ; [debug line = 98:7] [debug variable = outAccumulate]
  %tmp.52 = add nsw i32 %readBuffer4.load, 1, !dbg !258 ; [#uses=1 type=i32] [debug line = 99:7]
  store i32 %tmp.52, i32* @readBuffer4, align 4, !dbg !258 ; [debug line = 99:7]
  br label %._crit_edge17, !dbg !259              ; [debug line = 100:6]

._crit_edge17:                                    ; preds = %10, %9
  %outAccumulate.3 = phi float [ %outAccumulate.6, %10 ], [ %outAccumulate.2, %9 ] ; [#uses=2 type=float]
  %tmp.53 = icmp eq i32 %tmp.41, %tmp.6, !dbg !260 ; [#uses=1 type=i1] [debug line = 103:6]
  br i1 %tmp.53, label %11, label %._crit_edge10, !dbg !260 ; [debug line = 103:6]

; <label>:11                                      ; preds = %._crit_edge17
  store i32 0, i32* @readBuffer1, align 4, !dbg !261 ; [debug line = 106:7]
  store i32 0, i32* @readBuffer2, align 4, !dbg !263 ; [debug line = 107:7]
  store i32 0, i32* @readBuffer3, align 4, !dbg !264 ; [debug line = 108:7]
  store i32 0, i32* @readBuffer4, align 4, !dbg !265 ; [debug line = 109:7]
  br label %._crit_edge10, !dbg !266              ; [debug line = 110:6]

._crit_edge10:                                    ; preds = %11, %._crit_edge17, %._crit_edge15, %._crit_edge13, %._crit_edge11, %._crit_edge9
  %tmp.54 = phi i32 [ %delayCount.load, %._crit_edge9 ], [ %delayCount.load, %._crit_edge11 ], [ %delayCount.load, %._crit_edge13 ], [ %delayCount.load, %._crit_edge15 ], [ 0, %11 ], [ %delayCount.load, %._crit_edge17 ] ; [#uses=1 type=i32]
  %outAccumulate.7 = phi float [ 0.000000e+00, %._crit_edge9 ], [ %outAccumulate1, %._crit_edge11 ], [ %outAccumulate.1, %._crit_edge13 ], [ %outAccumulate.2, %._crit_edge15 ], [ %outAccumulate.3, %11 ], [ %outAccumulate.3, %._crit_edge17 ] ; [#uses=1 type=float]
  %tmp.55 = add nsw i32 %tmp.54, 1, !dbg !267     ; [#uses=1 type=i32] [debug line = 116:2]
  store i32 %tmp.55, i32* @delayCount, align 4, !dbg !267 ; [debug line = 116:2]
  %tmp.56 = add nsw i32 %tmp.6, -1, !dbg !268     ; [#uses=1 type=i32] [debug line = 118:2]
  %tmp.57 = sext i32 %tmp.56 to i64, !dbg !268    ; [#uses=1 type=i64] [debug line = 118:2]
  %buffer.addr.4 = getelementptr inbounds [48000 x float]* @buffer, i64 0, i64 %tmp.57, !dbg !268 ; [#uses=1 type=float*] [debug line = 118:2]
  %buffer.load.4 = load float* %buffer.addr.4, align 4, !dbg !268 ; [#uses=2 type=float] [debug line = 118:2]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %buffer.load.4) nounwind
  %tmp.59 = fadd float %buffer.load.4, %outAccumulate.7, !dbg !268 ; [#uses=1 type=float] [debug line = 118:2]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0.2"* %value_out}, i64 0, metadata !269), !dbg !270 ; [debug line = 105:48@118:2] [debug variable = this]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0.2"* %value_out}, i64 0, metadata !271), !dbg !272 ; [debug line = 144:48@106:9@118:2] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{float* %tmp.58}, metadata !275) nounwind, !dbg !277 ; [debug line = 145:22@106:9@118:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp.59}, i64 0, metadata !275), !dbg !278 ; [debug line = 145:31@106:9@118:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp.59}, i64 0, metadata !275), !dbg !278 ; [debug line = 145:31@106:9@118:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp.59}, i64 0, metadata !275), !dbg !278 ; [debug line = 145:31@106:9@118:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp.59}, i64 0, metadata !275), !dbg !278 ; [debug line = 145:31@106:9@118:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp.59}, i64 0, metadata !275), !dbg !278 ; [debug line = 145:31@106:9@118:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp.59}, i64 0, metadata !275), !dbg !278 ; [debug line = 145:31@106:9@118:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp.59}, i64 0, metadata !275), !dbg !278 ; [debug line = 145:31@106:9@118:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp.59}, i64 0, metadata !275), !dbg !278 ; [debug line = 145:31@106:9@118:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp.59}, i64 0, metadata !275), !dbg !278 ; [debug line = 145:31@106:9@118:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp.59}, i64 0, metadata !275), !dbg !278 ; [debug line = 145:31@106:9@118:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp.59}, i64 0, metadata !275), !dbg !278 ; [debug line = 145:31@106:9@118:2] [debug variable = tmp]
  store float %tmp.59, float* %tmp.58, align 4, !dbg !278 ; [debug line = 145:31@106:9@118:2]
  %value_out.addr = getelementptr inbounds %"class.hls::stream.0.2"* %value_out, i64 0, i32 0, !dbg !279 ; [#uses=1 type=float*] [debug line = 146:9@106:9@118:2]
  call void @_ssdm_op_IfWrite.Stream.floatP.floatP(float* %value_out.addr, float* %tmp.58) nounwind, !dbg !279 ; [debug line = 146:9@106:9@118:2]
  ret void, !dbg !280                             ; [debug line = 119:1]
}

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!147, !154, !160, !162, !165, !167, !169}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/austin/ECE1373_GhostSynth/modules/echo/Echo/solution1/.autopilot/db/Echo.pragma.2.cpp", metadata !"/home/austin/ECE1373_GhostSynth/modules/echo", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !124} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"Echo", metadata !"Echo", metadata !"_Z4EchoRN3hls6streamIiEERNS0_IfEES4_ii", metadata !6, i32 17, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream.1"*, %"class.hls::stream.0.2"*, %"class.hls::stream.0.2"*, i32, i32)* @Echo, null, null, metadata !20, i32 26} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"src/Echo.cpp", metadata !"/home/austin/ECE1373_GhostSynth/modules/echo", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !68, metadata !68, metadata !15, metadata !15}
!9 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_reference_type ]
!10 = metadata !{i32 786434, metadata !11, metadata !"stream<int>", metadata !12, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !13, i32 0, null, metadata !66} ; [ DW_TAG_class_type ]
!11 = metadata !{i32 786489, null, metadata !"hls", metadata !12, i32 69} ; [ DW_TAG_namespace ]
!12 = metadata !{i32 786473, metadata !"/home/austin/Desktop/Vivado_HLS/2017.2/common/technology/autopilot/hls_stream.h", metadata !"/home/austin/ECE1373_GhostSynth/modules/echo", null} ; [ DW_TAG_file_type ]
!13 = metadata !{metadata !14, metadata !16, metadata !22, metadata !28, metadata !33, metadata !36, metadata !40, metadata !45, metadata !50, metadata !51, metadata !52, metadata !55, metadata !58, metadata !59, metadata !62}
!14 = metadata !{i32 786445, metadata !10, metadata !"V", metadata !12, i32 163, i64 32, i64 32, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ]
!15 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
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
!33 = metadata !{i32 786478, i32 0, metadata !10, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIiEaSERKS1_", metadata !12, i32 94, metadata !34, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !20, i32 94} ; [ DW_TAG_subprogram ]
!34 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !35, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!35 = metadata !{metadata !9, metadata !19, metadata !31}
!36 = metadata !{i32 786478, i32 0, metadata !10, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIiErsERi", metadata !12, i32 101, metadata !37, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 101} ; [ DW_TAG_subprogram ]
!37 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !38, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!38 = metadata !{null, metadata !19, metadata !39}
!39 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_reference_type ]
!40 = metadata !{i32 786478, i32 0, metadata !10, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIiElsERKi", metadata !12, i32 105, metadata !41, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 105} ; [ DW_TAG_subprogram ]
!41 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !42, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!42 = metadata !{null, metadata !19, metadata !43}
!43 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !44} ; [ DW_TAG_reference_type ]
!44 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_const_type ]
!45 = metadata !{i32 786478, i32 0, metadata !10, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIiE5emptyEv", metadata !12, i32 112, metadata !46, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 112} ; [ DW_TAG_subprogram ]
!46 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !47, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!47 = metadata !{metadata !48, metadata !49}
!48 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!49 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !32} ; [ DW_TAG_pointer_type ]
!50 = metadata !{i32 786478, i32 0, metadata !10, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIiE4fullEv", metadata !12, i32 117, metadata !46, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 117} ; [ DW_TAG_subprogram ]
!51 = metadata !{i32 786478, i32 0, metadata !10, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readERi", metadata !12, i32 123, metadata !37, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 123} ; [ DW_TAG_subprogram ]
!52 = metadata !{i32 786478, i32 0, metadata !10, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readEv", metadata !12, i32 129, metadata !53, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 129} ; [ DW_TAG_subprogram ]
!53 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !54, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!54 = metadata !{metadata !15, metadata !19}
!55 = metadata !{i32 786478, i32 0, metadata !10, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIiE7read_nbERi", metadata !12, i32 136, metadata !56, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 136} ; [ DW_TAG_subprogram ]
!56 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !57, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!57 = metadata !{metadata !48, metadata !19, metadata !39}
!58 = metadata !{i32 786478, i32 0, metadata !10, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIiE5writeERKi", metadata !12, i32 144, metadata !41, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 144} ; [ DW_TAG_subprogram ]
!59 = metadata !{i32 786478, i32 0, metadata !10, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIiE8write_nbERKi", metadata !12, i32 150, metadata !60, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 150} ; [ DW_TAG_subprogram ]
!60 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !61, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!61 = metadata !{metadata !48, metadata !19, metadata !43}
!62 = metadata !{i32 786478, i32 0, metadata !10, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIiE4sizeEv", metadata !12, i32 157, metadata !63, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 157} ; [ DW_TAG_subprogram ]
!63 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !64, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!64 = metadata !{metadata !65, metadata !19}
!65 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!66 = metadata !{metadata !67}
!67 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !15, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!68 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !69} ; [ DW_TAG_reference_type ]
!69 = metadata !{i32 786434, metadata !11, metadata !"stream<float>", metadata !12, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !70, i32 0, null, metadata !116} ; [ DW_TAG_class_type ]
!70 = metadata !{metadata !71, metadata !73, metadata !77, metadata !80, metadata !85, metadata !88, metadata !92, metadata !97, metadata !101, metadata !102, metadata !103, metadata !106, metadata !109, metadata !110, metadata !113}
!71 = metadata !{i32 786445, metadata !69, metadata !"V", metadata !12, i32 163, i64 32, i64 32, i64 0, i32 0, metadata !72} ; [ DW_TAG_member ]
!72 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!73 = metadata !{i32 786478, i32 0, metadata !69, metadata !"stream", metadata !"stream", metadata !"", metadata !12, i32 83, metadata !74, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 83} ; [ DW_TAG_subprogram ]
!74 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !75, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!75 = metadata !{null, metadata !76}
!76 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !69} ; [ DW_TAG_pointer_type ]
!77 = metadata !{i32 786478, i32 0, metadata !69, metadata !"stream", metadata !"stream", metadata !"", metadata !12, i32 86, metadata !78, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 86} ; [ DW_TAG_subprogram ]
!78 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !79, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!79 = metadata !{null, metadata !76, metadata !25}
!80 = metadata !{i32 786478, i32 0, metadata !69, metadata !"stream", metadata !"stream", metadata !"", metadata !12, i32 91, metadata !81, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !20, i32 91} ; [ DW_TAG_subprogram ]
!81 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !82, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!82 = metadata !{null, metadata !76, metadata !83}
!83 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !84} ; [ DW_TAG_reference_type ]
!84 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !69} ; [ DW_TAG_const_type ]
!85 = metadata !{i32 786478, i32 0, metadata !69, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIfEaSERKS1_", metadata !12, i32 94, metadata !86, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !20, i32 94} ; [ DW_TAG_subprogram ]
!86 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !87, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!87 = metadata !{metadata !68, metadata !76, metadata !83}
!88 = metadata !{i32 786478, i32 0, metadata !69, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIfErsERf", metadata !12, i32 101, metadata !89, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 101} ; [ DW_TAG_subprogram ]
!89 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !90, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!90 = metadata !{null, metadata !76, metadata !91}
!91 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !72} ; [ DW_TAG_reference_type ]
!92 = metadata !{i32 786478, i32 0, metadata !69, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIfElsERKf", metadata !12, i32 105, metadata !93, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 105} ; [ DW_TAG_subprogram ]
!93 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !94, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!94 = metadata !{null, metadata !76, metadata !95}
!95 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !96} ; [ DW_TAG_reference_type ]
!96 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !72} ; [ DW_TAG_const_type ]
!97 = metadata !{i32 786478, i32 0, metadata !69, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIfE5emptyEv", metadata !12, i32 112, metadata !98, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 112} ; [ DW_TAG_subprogram ]
!98 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !99, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!99 = metadata !{metadata !48, metadata !100}
!100 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !84} ; [ DW_TAG_pointer_type ]
!101 = metadata !{i32 786478, i32 0, metadata !69, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIfE4fullEv", metadata !12, i32 117, metadata !98, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 117} ; [ DW_TAG_subprogram ]
!102 = metadata !{i32 786478, i32 0, metadata !69, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readERf", metadata !12, i32 123, metadata !89, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 123} ; [ DW_TAG_subprogram ]
!103 = metadata !{i32 786478, i32 0, metadata !69, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readEv", metadata !12, i32 129, metadata !104, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 129} ; [ DW_TAG_subprogram ]
!104 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !105, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!105 = metadata !{metadata !72, metadata !76}
!106 = metadata !{i32 786478, i32 0, metadata !69, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIfE7read_nbERf", metadata !12, i32 136, metadata !107, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 136} ; [ DW_TAG_subprogram ]
!107 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !108, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!108 = metadata !{metadata !48, metadata !76, metadata !91}
!109 = metadata !{i32 786478, i32 0, metadata !69, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !12, i32 144, metadata !93, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 144} ; [ DW_TAG_subprogram ]
!110 = metadata !{i32 786478, i32 0, metadata !69, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIfE8write_nbERKf", metadata !12, i32 150, metadata !111, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 150} ; [ DW_TAG_subprogram ]
!111 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !112, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!112 = metadata !{metadata !48, metadata !76, metadata !95}
!113 = metadata !{i32 786478, i32 0, metadata !69, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIfE4sizeEv", metadata !12, i32 157, metadata !114, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !20, i32 157} ; [ DW_TAG_subprogram ]
!114 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !115, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!115 = metadata !{metadata !65, metadata !76}
!116 = metadata !{metadata !117}
!117 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !72, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!118 = metadata !{i32 786478, i32 0, metadata !11, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIfElsERKf", metadata !12, i32 105, metadata !93, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !92, metadata !20, i32 105} ; [ DW_TAG_subprogram ]
!119 = metadata !{i32 786478, i32 0, metadata !11, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !12, i32 144, metadata !93, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !109, metadata !20, i32 144} ; [ DW_TAG_subprogram ]
!120 = metadata !{i32 786478, i32 0, metadata !11, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIfErsERf", metadata !12, i32 101, metadata !89, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !88, metadata !20, i32 101} ; [ DW_TAG_subprogram ]
!121 = metadata !{i32 786478, i32 0, metadata !11, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readERf", metadata !12, i32 123, metadata !89, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !102, metadata !20, i32 123} ; [ DW_TAG_subprogram ]
!122 = metadata !{i32 786478, i32 0, metadata !11, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIiErsERi", metadata !12, i32 101, metadata !37, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !36, metadata !20, i32 101} ; [ DW_TAG_subprogram ]
!123 = metadata !{i32 786478, i32 0, metadata !11, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readERi", metadata !12, i32 123, metadata !37, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !51, metadata !20, i32 123} ; [ DW_TAG_subprogram ]
!124 = metadata !{metadata !125}
!125 = metadata !{metadata !126, metadata !127, metadata !128, metadata !129, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !140, metadata !141, metadata !142, metadata !144, metadata !145}
!126 = metadata !{i32 786484, i32 0, metadata !5, metadata !"initial", metadata !"initial", metadata !"", metadata !6, i32 37, metadata !15, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!127 = metadata !{i32 786484, i32 0, metadata !5, metadata !"delayCount", metadata !"delayCount", metadata !"", metadata !6, i32 38, metadata !15, i32 1, i32 1, i32* @delayCount} ; [ DW_TAG_variable ]
!128 = metadata !{i32 786484, i32 0, metadata !5, metadata !"writeBuffer", metadata !"writeBuffer", metadata !"", metadata !6, i32 39, metadata !15, i32 1, i32 1, i32* @writeBuffer} ; [ DW_TAG_variable ]
!129 = metadata !{i32 786484, i32 0, metadata !5, metadata !"buffer", metadata !"buffer", metadata !"", metadata !6, i32 43, metadata !130, i32 1, i32 1, [48000 x float]* @buffer} ; [ DW_TAG_variable ]
!130 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1536000, i64 32, i32 0, i32 0, metadata !72, metadata !131, i32 0, i32 0} ; [ DW_TAG_array_type ]
!131 = metadata !{metadata !132}
!132 = metadata !{i32 786465, i64 0, i64 47999}   ; [ DW_TAG_subrange_type ]
!133 = metadata !{i32 786484, i32 0, metadata !5, metadata !"readBuffer1", metadata !"readBuffer1", metadata !"", metadata !6, i32 45, metadata !15, i32 1, i32 1, i32* @readBuffer1} ; [ DW_TAG_variable ]
!134 = metadata !{i32 786484, i32 0, metadata !5, metadata !"readBuffer2", metadata !"readBuffer2", metadata !"", metadata !6, i32 46, metadata !15, i32 1, i32 1, i32* @readBuffer2} ; [ DW_TAG_variable ]
!135 = metadata !{i32 786484, i32 0, metadata !5, metadata !"readBuffer3", metadata !"readBuffer3", metadata !"", metadata !6, i32 47, metadata !15, i32 1, i32 1, i32* @readBuffer3} ; [ DW_TAG_variable ]
!136 = metadata !{i32 786484, i32 0, metadata !5, metadata !"readBuffer4", metadata !"readBuffer4", metadata !"", metadata !6, i32 48, metadata !15, i32 1, i32 1, i32* @readBuffer4} ; [ DW_TAG_variable ]
!137 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !138, i32 315, metadata !139, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!138 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/austin/ECE1373_GhostSynth/modules/echo", null} ; [ DW_TAG_file_type ]
!139 = metadata !{i32 786434, null, metadata !"_IO_FILE_plus", metadata !138, i32 313, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!140 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !138, i32 316, metadata !139, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!141 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !138, i32 317, metadata !139, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!142 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !143, i32 26, metadata !15, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!143 = metadata !{i32 786473, metadata !"/usr/include/x86_64-linux-gnu/bits/sys_errlist.h", metadata !"/home/austin/ECE1373_GhostSynth/modules/echo", null} ; [ DW_TAG_file_type ]
!144 = metadata !{i32 786484, i32 0, null, metadata !"_sys_nerr", metadata !"_sys_nerr", metadata !"", metadata !143, i32 30, metadata !15, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!145 = metadata !{i32 786484, i32 0, null, metadata !"signgam", metadata !"signgam", metadata !"", metadata !146, i32 168, metadata !15, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!146 = metadata !{i32 786473, metadata !"/usr/include/math.h", metadata !"/home/austin/ECE1373_GhostSynth/modules/echo", null} ; [ DW_TAG_file_type ]
!147 = metadata !{void (%"class.hls::stream.1"*, %"class.hls::stream.0.2"*, %"class.hls::stream.0.2"*, i32, i32)* @Echo, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !153}
!148 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0}
!149 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!150 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<int> &", metadata !"hls::stream<float> &", metadata !"hls::stream<float> &", metadata !"int", metadata !"int"}
!151 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!152 = metadata !{metadata !"kernel_arg_name", metadata !"change", metadata !"value_in", metadata !"value_out", metadata !"delay", metadata !"scale"}
!153 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!154 = metadata !{null, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !153}
!155 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!156 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!157 = metadata !{metadata !"kernel_arg_type", metadata !"const float &"}
!158 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!159 = metadata !{metadata !"kernel_arg_name", metadata !"wdata"}
!160 = metadata !{null, metadata !155, metadata !156, metadata !157, metadata !158, metadata !161, metadata !153}
!161 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!162 = metadata !{null, metadata !155, metadata !156, metadata !163, metadata !158, metadata !164, metadata !153}
!163 = metadata !{metadata !"kernel_arg_type", metadata !"float &"}
!164 = metadata !{metadata !"kernel_arg_name", metadata !"rdata"}
!165 = metadata !{null, metadata !155, metadata !156, metadata !163, metadata !158, metadata !166, metadata !153}
!166 = metadata !{metadata !"kernel_arg_name", metadata !"dout"}
!167 = metadata !{null, metadata !155, metadata !156, metadata !168, metadata !158, metadata !164, metadata !153}
!168 = metadata !{metadata !"kernel_arg_type", metadata !"int &"}
!169 = metadata !{null, metadata !155, metadata !156, metadata !168, metadata !158, metadata !166, metadata !153}
!170 = metadata !{i32 786689, metadata !5, metadata !"change", metadata !6, i32 16777235, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!171 = metadata !{i32 19, i32 21, metadata !5, null}
!172 = metadata !{i32 786689, metadata !5, metadata !"value_in", metadata !6, i32 33554452, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!173 = metadata !{i32 20, i32 23, metadata !5, null}
!174 = metadata !{i32 786689, metadata !5, metadata !"value_out", metadata !6, i32 50331669, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!175 = metadata !{i32 21, i32 23, metadata !5, null}
!176 = metadata !{i32 786689, metadata !5, metadata !"delay", metadata !6, i32 67108887, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!177 = metadata !{i32 23, i32 6, metadata !5, null}
!178 = metadata !{i32 786689, metadata !5, metadata !"scale", metadata !6, i32 83886104, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!179 = metadata !{i32 24, i32 6, metadata !5, null}
!180 = metadata !{i32 28, i32 1, metadata !181, null}
!181 = metadata !{i32 786443, metadata !5, i32 26, i32 2, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!182 = metadata !{i32 29, i32 1, metadata !181, null}
!183 = metadata !{i32 30, i32 1, metadata !181, null}
!184 = metadata !{i32 33, i32 1, metadata !181, null}
!185 = metadata !{i32 34, i32 1, metadata !181, null}
!186 = metadata !{i32 35, i32 1, metadata !181, null}
!187 = metadata !{i32 786689, metadata !122, metadata !"this", metadata !12, i32 16777317, metadata !188, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!188 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!189 = metadata !{i32 101, i32 48, metadata !122, metadata !190}
!190 = metadata !{i32 52, i32 2, metadata !181, null}
!191 = metadata !{i32 786689, metadata !123, metadata !"this", metadata !12, i32 16777339, metadata !188, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!192 = metadata !{i32 123, i32 48, metadata !123, metadata !193}
!193 = metadata !{i32 102, i32 9, metadata !194, metadata !190}
!194 = metadata !{i32 786443, metadata !122, i32 101, i32 82, metadata !12, i32 16} ; [ DW_TAG_lexical_block ]
!195 = metadata !{i32 786688, metadata !196, metadata !"tmp", metadata !12, i32 124, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!196 = metadata !{i32 786443, metadata !123, i32 123, i32 73, metadata !12, i32 17} ; [ DW_TAG_lexical_block ]
!197 = metadata !{i32 124, i32 22, metadata !196, metadata !193}
!198 = metadata !{i32 125, i32 9, metadata !196, metadata !193}
!199 = metadata !{i32 126, i32 9, metadata !196, metadata !193}
!200 = metadata !{i32 786688, metadata !181, metadata !"changevalue", metadata !6, i32 50, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!201 = metadata !{i32 56, i32 2, metadata !181, null}
!202 = metadata !{i32 57, i32 3, metadata !203, null}
!203 = metadata !{i32 786443, metadata !181, i32 56, i32 17, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!204 = metadata !{i32 58, i32 3, metadata !203, null}
!205 = metadata !{i32 59, i32 3, metadata !203, null}
!206 = metadata !{i32 60, i32 3, metadata !203, null}
!207 = metadata !{i32 61, i32 3, metadata !203, null}
!208 = metadata !{i32 62, i32 3, metadata !203, null}
!209 = metadata !{i32 63, i32 2, metadata !203, null}
!210 = metadata !{i32 66, i32 2, metadata !181, null}
!211 = metadata !{i32 68, i32 3, metadata !212, null}
!212 = metadata !{i32 786443, metadata !181, i32 66, i32 25, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!213 = metadata !{i32 786689, metadata !120, metadata !"this", metadata !12, i32 16777317, metadata !214, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!214 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !69} ; [ DW_TAG_pointer_type ]
!215 = metadata !{i32 101, i32 48, metadata !120, metadata !211}
!216 = metadata !{i32 786689, metadata !120, metadata !"rdata", metadata !12, i32 33554533, metadata !91, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!217 = metadata !{i32 101, i32 75, metadata !120, metadata !211}
!218 = metadata !{i32 786689, metadata !121, metadata !"this", metadata !12, i32 16777339, metadata !214, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!219 = metadata !{i32 123, i32 48, metadata !121, metadata !220}
!220 = metadata !{i32 102, i32 9, metadata !221, metadata !211}
!221 = metadata !{i32 786443, metadata !120, i32 101, i32 82, metadata !12, i32 14} ; [ DW_TAG_lexical_block ]
!222 = metadata !{i32 786689, metadata !121, metadata !"dout", metadata !12, i32 33554555, metadata !91, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!223 = metadata !{i32 123, i32 67, metadata !121, metadata !220}
!224 = metadata !{i32 786688, metadata !225, metadata !"tmp", metadata !12, i32 124, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!225 = metadata !{i32 786443, metadata !121, i32 123, i32 73, metadata !12, i32 15} ; [ DW_TAG_lexical_block ]
!226 = metadata !{i32 124, i32 22, metadata !225, metadata !220}
!227 = metadata !{i32 125, i32 9, metadata !225, metadata !220}
!228 = metadata !{i32 126, i32 9, metadata !225, metadata !220}
!229 = metadata !{i32 69, i32 3, metadata !212, null}
!230 = metadata !{i32 71, i32 2, metadata !212, null}
!231 = metadata !{i32 74, i32 2, metadata !181, null}
!232 = metadata !{i32 76, i32 3, metadata !233, null}
!233 = metadata !{i32 786443, metadata !181, i32 74, i32 24, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!234 = metadata !{i32 77, i32 4, metadata !235, null}
!235 = metadata !{i32 786443, metadata !233, i32 76, i32 33, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!236 = metadata !{i32 786688, metadata !181, metadata !"outAccumulate", metadata !6, i32 41, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!237 = metadata !{i32 78, i32 4, metadata !235, null}
!238 = metadata !{i32 79, i32 3, metadata !235, null}
!239 = metadata !{i32 81, i32 3, metadata !233, null}
!240 = metadata !{i32 83, i32 4, metadata !241, null}
!241 = metadata !{i32 786443, metadata !233, i32 81, i32 26, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!242 = metadata !{i32 84, i32 5, metadata !243, null}
!243 = metadata !{i32 786443, metadata !241, i32 83, i32 34, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!244 = metadata !{i32 85, i32 5, metadata !243, null}
!245 = metadata !{i32 86, i32 4, metadata !243, null}
!246 = metadata !{i32 88, i32 4, metadata !241, null}
!247 = metadata !{i32 90, i32 5, metadata !248, null}
!248 = metadata !{i32 786443, metadata !241, i32 88, i32 27, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!249 = metadata !{i32 91, i32 6, metadata !250, null}
!250 = metadata !{i32 786443, metadata !248, i32 90, i32 35, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!251 = metadata !{i32 92, i32 6, metadata !250, null}
!252 = metadata !{i32 93, i32 5, metadata !250, null}
!253 = metadata !{i32 95, i32 5, metadata !248, null}
!254 = metadata !{i32 97, i32 6, metadata !255, null}
!255 = metadata !{i32 786443, metadata !248, i32 95, i32 28, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!256 = metadata !{i32 98, i32 7, metadata !257, null}
!257 = metadata !{i32 786443, metadata !255, i32 97, i32 36, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!258 = metadata !{i32 99, i32 7, metadata !257, null}
!259 = metadata !{i32 100, i32 6, metadata !257, null}
!260 = metadata !{i32 103, i32 6, metadata !255, null}
!261 = metadata !{i32 106, i32 7, metadata !262, null}
!262 = metadata !{i32 786443, metadata !255, i32 103, i32 36, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!263 = metadata !{i32 107, i32 7, metadata !262, null}
!264 = metadata !{i32 108, i32 7, metadata !262, null}
!265 = metadata !{i32 109, i32 7, metadata !262, null}
!266 = metadata !{i32 110, i32 6, metadata !262, null}
!267 = metadata !{i32 116, i32 2, metadata !181, null}
!268 = metadata !{i32 118, i32 2, metadata !181, null}
!269 = metadata !{i32 786689, metadata !118, metadata !"this", metadata !12, i32 16777321, metadata !214, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!270 = metadata !{i32 105, i32 48, metadata !118, metadata !268}
!271 = metadata !{i32 786689, metadata !119, metadata !"this", metadata !12, i32 16777360, metadata !214, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!272 = metadata !{i32 144, i32 48, metadata !119, metadata !273}
!273 = metadata !{i32 106, i32 9, metadata !274, metadata !268}
!274 = metadata !{i32 786443, metadata !118, i32 105, i32 88, metadata !12, i32 12} ; [ DW_TAG_lexical_block ]
!275 = metadata !{i32 786688, metadata !276, metadata !"tmp", metadata !12, i32 145, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!276 = metadata !{i32 786443, metadata !119, i32 144, i32 79, metadata !12, i32 13} ; [ DW_TAG_lexical_block ]
!277 = metadata !{i32 145, i32 22, metadata !276, metadata !273}
!278 = metadata !{i32 145, i32 31, metadata !276, metadata !273}
!279 = metadata !{i32 146, i32 9, metadata !276, metadata !273}
!280 = metadata !{i32 119, i32 1, metadata !181, null}

; ModuleID = '/home/austin/ECE1373_GhostSynth/modules/echo/Echo/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@writeBuffer = internal unnamed_addr global i32 0, align 4 ; [#uses=2 type=i32*]
@readBuffer4 = internal unnamed_addr global i32 0, align 4 ; [#uses=2 type=i32*]
@readBuffer3 = internal unnamed_addr global i32 0, align 4 ; [#uses=2 type=i32*]
@readBuffer2 = internal unnamed_addr global i32 0, align 4 ; [#uses=2 type=i32*]
@readBuffer1 = internal unnamed_addr global i32 0, align 4 ; [#uses=2 type=i32*]
@delayCount = internal unnamed_addr global i32 0, align 4 ; [#uses=2 type=i32*]
@buffer = internal unnamed_addr global [48000 x float] zeroinitializer, align 16 ; [#uses=6 type=[48000 x float]*]
@Echo.str = internal unnamed_addr constant [5 x i8] c"Echo\00" ; [#uses=1 type=[5 x i8]*]
@.str5 = private unnamed_addr constant [5 x i8] c"both\00", align 1 ; [#uses=3 type=[5 x i8]*]
@.str4 = private unnamed_addr constant [5 x i8] c"axis\00", align 1 ; [#uses=3 type=[5 x i8]*]
@.str3 = private unnamed_addr constant [9 x i8] c"CTRL_BUS\00", align 1 ; [#uses=1 type=[9 x i8]*]
@.str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str1 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1 ; [#uses=1 type=[13 x i8]*]
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=27 type=[1 x i8]*]

; [#uses=24]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=3]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=1]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=5]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=5]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=1]
declare void @_ssdm_op_IfWrite.Stream.floatP.floatP(float*, float*)

; [#uses=1]
declare void @_ssdm_op_IfRead.Stream.i32P.i32P(i32*, i32*)

; [#uses=1]
declare void @_ssdm_op_IfRead.Stream.floatP.floatP(float*, float*)

; [#uses=0]
define void @Echo(i32* %change.V, float* %value_in.V, float* %value_out.V, i32 %delay, i32 %scale) {
._crit_edge:
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %change.V), !map !160
  call void (...)* @_ssdm_op_SpecBitsMap(float* %value_in.V), !map !166
  call void (...)* @_ssdm_op_SpecBitsMap(float* %value_out.V), !map !170
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %delay), !map !174
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %scale), !map !180
  call void (...)* @_ssdm_op_SpecTopModule([5 x i8]* @Echo.str) nounwind
  %tmp.53 = alloca float, align 4                 ; [#uses=2 type=float*]
  %tmp.4 = alloca float, align 4                  ; [#uses=2 type=float*]
  %tmp = alloca i32, align 4                      ; [#uses=2 type=i32*]
  call void @llvm.dbg.value(metadata !{i32* %change.V}, i64 0, metadata !184), !dbg !189 ; [debug line = 19:21] [debug variable = change.V]
  call void @llvm.dbg.value(metadata !{float* %value_in.V}, i64 0, metadata !190), !dbg !195 ; [debug line = 20:23] [debug variable = value_in.V]
  call void @llvm.dbg.value(metadata !{float* %value_out.V}, i64 0, metadata !196), !dbg !198 ; [debug line = 21:23] [debug variable = value_out.V]
  call void @llvm.dbg.value(metadata !{i32 %delay}, i64 0, metadata !199), !dbg !200 ; [debug line = 23:6] [debug variable = delay]
  call void @llvm.dbg.value(metadata !{i32 %scale}, i64 0, metadata !201), !dbg !202 ; [debug line = 24:6] [debug variable = scale]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @.str) nounwind, !dbg !203 ; [debug line = 28:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !205 ; [debug line = 29:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %delay, [10 x i8]* @.str2, i32 0, i32 0, [1 x i8]* @.str, i32 0, i32 0, [9 x i8]* @.str3, [1 x i8]* @.str, [1 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !206 ; [debug line = 30:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %change.V, [5 x i8]* @.str4, i32 1, i32 1, [5 x i8]* @.str5, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !207 ; [debug line = 33:1]
  call void (...)* @_ssdm_op_SpecInterface(float* %value_in.V, [5 x i8]* @.str4, i32 1, i32 1, [5 x i8]* @.str5, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !208 ; [debug line = 34:1]
  call void (...)* @_ssdm_op_SpecInterface(float* %value_out.V, [5 x i8]* @.str4, i32 1, i32 1, [5 x i8]* @.str5, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str, [1 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str, [1 x i8]* @.str) nounwind, !dbg !209 ; [debug line = 35:1]
  call void @llvm.dbg.value(metadata !{i32* %change.V}, i64 0, metadata !210), !dbg !215 ; [debug line = 101:48@52:2] [debug variable = stream<int>.V]
  call void @llvm.dbg.value(metadata !{i32* %change.V}, i64 0, metadata !217), !dbg !220 ; [debug line = 123:48@102:9@52:2] [debug variable = stream<int>.V]
  call void @llvm.dbg.declare(metadata !{i32* %tmp}, metadata !223) nounwind, !dbg !225 ; [debug line = 124:22@102:9@52:2] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.i32P.i32P(i32* %change.V, i32* %tmp) nounwind, !dbg !226 ; [debug line = 125:9@102:9@52:2]
  call void @llvm.dbg.value(metadata !{i32* %tmp}, i64 0, metadata !223), !dbg !227 ; [debug line = 126:9@102:9@52:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32* %tmp}, i64 0, metadata !223), !dbg !227 ; [debug line = 126:9@102:9@52:2] [debug variable = tmp]
  %changevalue = load i32* %tmp, align 4, !dbg !227 ; [#uses=1 type=i32] [debug line = 126:9@102:9@52:2]
  call void @llvm.dbg.value(metadata !{i32 %changevalue}, i64 0, metadata !228), !dbg !227 ; [debug line = 126:9@102:9@52:2] [debug variable = changevalue]
  %tmp.1 = icmp eq i32 %changevalue, 0, !dbg !229 ; [#uses=7 type=i1] [debug line = 56:2]
  %delayCount.load = load i32* @delayCount, align 4, !dbg !230 ; [#uses=1 type=i32] [debug line = 74:2]
  %readBuffer1.load = load i32* @readBuffer1, align 4, !dbg !231 ; [#uses=1 type=i32] [debug line = 76:3]
  %readBuffer2.load = load i32* @readBuffer2, align 4, !dbg !233 ; [#uses=1 type=i32] [debug line = 83:4]
  %readBuffer3.load = load i32* @readBuffer3, align 4, !dbg !235 ; [#uses=1 type=i32] [debug line = 90:5]
  %readBuffer4.load = load i32* @readBuffer4, align 4, !dbg !237 ; [#uses=1 type=i32] [debug line = 97:6]
  %writeBuffer.load = load i32* @writeBuffer, align 4, !dbg !239 ; [#uses=1 type=i32] [debug line = 66:2]
  %delayCount.load. = select i1 %tmp.1, i32 %delayCount.load, i32 0, !dbg !229 ; [#uses=3 type=i32] [debug line = 56:2]
  %not.tmp.1 = xor i1 %tmp.1, true, !dbg !229     ; [#uses=12 type=i1] [debug line = 56:2]
  %readBuffer1.load. = select i1 %tmp.1, i32 %readBuffer1.load, i32 0, !dbg !229 ; [#uses=4 type=i32] [debug line = 56:2]
  %readBuffer2.load. = select i1 %tmp.1, i32 %readBuffer2.load, i32 0, !dbg !229 ; [#uses=4 type=i32] [debug line = 56:2]
  %readBuffer3.load. = select i1 %tmp.1, i32 %readBuffer3.load, i32 0, !dbg !229 ; [#uses=4 type=i32] [debug line = 56:2]
  %readBuffer4.load. = select i1 %tmp.1, i32 %readBuffer4.load, i32 0, !dbg !229 ; [#uses=3 type=i32] [debug line = 56:2]
  %writeBuffer.load. = select i1 %tmp.1, i32 %writeBuffer.load, i32 0, !dbg !229 ; [#uses=4 type=i32] [debug line = 56:2]
  %tmp.2 = icmp slt i32 %writeBuffer.load., 48000, !dbg !239 ; [#uses=1 type=i1] [debug line = 66:2]
  br i1 %tmp.2, label %0, label %._crit_edge9, !dbg !239 ; [debug line = 66:2]

; <label>:0                                       ; preds = %._crit_edge
  %tmp.3 = sext i32 %writeBuffer.load. to i64, !dbg !240 ; [#uses=1 type=i64] [debug line = 68:3]
  %rdata.assign = getelementptr inbounds [48000 x float]* @buffer, i64 0, i64 %tmp.3, !dbg !240 ; [#uses=1 type=float*] [debug line = 68:3]
  call void @llvm.dbg.value(metadata !{float* %value_in.V}, i64 0, metadata !242), !dbg !247 ; [debug line = 101:48@68:3] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float* %rdata.assign}, i64 0, metadata !248), !dbg !249 ; [debug line = 101:75@68:3] [debug variable = rdata]
  call void @llvm.dbg.value(metadata !{float* %value_in.V}, i64 0, metadata !250), !dbg !253 ; [debug line = 123:48@102:9@68:3] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float* %rdata.assign}, i64 0, metadata !256), !dbg !257 ; [debug line = 123:67@102:9@68:3] [debug variable = dout]
  call void @llvm.dbg.declare(metadata !{float* %tmp.4}, metadata !258) nounwind, !dbg !260 ; [debug line = 124:22@102:9@68:3] [debug variable = tmp]
  call void @_ssdm_op_IfRead.Stream.floatP.floatP(float* %value_in.V, float* %tmp.4) nounwind, !dbg !261 ; [debug line = 125:9@102:9@68:3]
  call void @llvm.dbg.value(metadata !{float* %tmp.4}, i64 0, metadata !258), !dbg !262 ; [debug line = 126:9@102:9@68:3] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float* %tmp.4}, i64 0, metadata !258), !dbg !262 ; [debug line = 126:9@102:9@68:3] [debug variable = tmp]
  %tmp.4.load = load float* %tmp.4, align 4, !dbg !262 ; [#uses=1 type=float] [debug line = 126:9@102:9@68:3]
  store float %tmp.4.load, float* %rdata.assign, align 4, !dbg !262 ; [debug line = 126:9@102:9@68:3]
  %tmp.5 = add nsw i32 %writeBuffer.load., 1, !dbg !263 ; [#uses=2 type=i32] [debug line = 69:3]
  br label %._crit_edge9, !dbg !264               ; [debug line = 71:2]

._crit_edge9:                                     ; preds = %0, %._crit_edge
  %writeBuffer.flag.1 = phi i1 [ true, %0 ], [ %not.tmp.1, %._crit_edge ] ; [#uses=1 type=i1]
  %writeBuffer.new.1 = phi i32 [ %tmp.5, %0 ], [ 0, %._crit_edge ] ; [#uses=1 type=i32]
  %tmp.6 = phi i32 [ %tmp.5, %0 ], [ %writeBuffer.load., %._crit_edge ] ; [#uses=6 type=i32]
  %tmp.7 = icmp sgt i32 %delayCount.load., %delay, !dbg !230 ; [#uses=9 type=i1] [debug line = 74:2]
  br i1 %writeBuffer.flag.1, label %mergeST9, label %._crit_edge9.new_ifconv

mergeST1:                                         ; preds = %._crit_edge10.new4
  store i32 %readBuffer1.new.2, i32* @readBuffer1, align 4, !dbg !265 ; [debug line = 58:3]
  br label %._crit_edge10.new2

._crit_edge10.new2:                               ; preds = %._crit_edge10.new4, %mergeST1
  store i32 %tmp.49, i32* @delayCount, align 4, !dbg !267 ; [debug line = 57:3]
  ret void, !dbg !268                             ; [debug line = 119:1]

mergeST3:                                         ; preds = %._crit_edge10.new6
  store i32 %readBuffer2.new.2, i32* @readBuffer2, align 4, !dbg !269 ; [debug line = 59:3]
  br label %._crit_edge10.new4

._crit_edge10.new4:                               ; preds = %._crit_edge10.new6, %mergeST3
  br i1 %readBuffer1.flag.2, label %mergeST1, label %._crit_edge10.new2

mergeST5:                                         ; preds = %._crit_edge10.new8
  store i32 %readBuffer3.new.2, i32* @readBuffer3, align 4, !dbg !270 ; [debug line = 60:3]
  br label %._crit_edge10.new6

._crit_edge10.new6:                               ; preds = %._crit_edge10.new8, %mergeST5
  br i1 %readBuffer2.flag.2, label %mergeST3, label %._crit_edge10.new4

mergeST7:                                         ; preds = %._crit_edge9.new_ifconv
  store i32 %readBuffer4.new.2, i32* @readBuffer4, align 4, !dbg !271 ; [debug line = 61:3]
  br label %._crit_edge10.new8

._crit_edge10.new8:                               ; preds = %._crit_edge9.new_ifconv, %mergeST7
  br i1 %readBuffer3.flag.2, label %mergeST5, label %._crit_edge10.new6

mergeST9:                                         ; preds = %._crit_edge9
  store i32 %writeBuffer.new.1, i32* @writeBuffer, align 4, !dbg !272 ; [debug line = 62:3]
  br label %._crit_edge9.new_ifconv

._crit_edge9.new_ifconv:                          ; preds = %mergeST9, %._crit_edge9
  %tmp.8 = icmp sgt i32 %readBuffer1.load., %tmp.6, !dbg !231 ; [#uses=4 type=i1] [debug line = 76:3]
  %tmp.9 = sitofp i32 %scale to double, !dbg !273 ; [#uses=4 type=double] [debug line = 77:4]
  %tmp. = fmul double %tmp.9, 5.000000e-01, !dbg !273 ; [#uses=1 type=double] [debug line = 77:4]
  %tmp.10 = sext i32 %readBuffer1.load. to i64, !dbg !273 ; [#uses=1 type=i64] [debug line = 77:4]
  %buffer.addr = getelementptr inbounds [48000 x float]* @buffer, i64 0, i64 %tmp.10, !dbg !273 ; [#uses=1 type=float*] [debug line = 77:4]
  %buffer.load = load float* %buffer.addr, align 4, !dbg !273 ; [#uses=1 type=float] [debug line = 77:4]
  %tmp.11 = fpext float %buffer.load to double, !dbg !273 ; [#uses=1 type=double] [debug line = 77:4]
  %tmp.12 = fmul double %tmp., %tmp.11, !dbg !273 ; [#uses=1 type=double] [debug line = 77:4]
  %tmp.13 = fadd double %tmp.12, 0.000000e+00, !dbg !273 ; [#uses=1 type=double] [debug line = 77:4]
  %outAccumulate = fptrunc double %tmp.13 to float, !dbg !273 ; [#uses=1 type=float] [debug line = 77:4]
  call void @llvm.dbg.value(metadata !{float %outAccumulate}, i64 0, metadata !275), !dbg !273 ; [debug line = 77:4] [debug variable = outAccumulate]
  %tmp.14 = add nsw i32 %readBuffer1.load., 1, !dbg !276 ; [#uses=2 type=i32] [debug line = 78:4]
  %not.tmp.8 = xor i1 %tmp.8, true                ; [#uses=1 type=i1]
  %readBuffer1.flag.1 = or i1 %not.tmp.8, %not.tmp.1 ; [#uses=2 type=i1]
  %readBuffer1.new.1 = select i1 %tmp.8, i32 0, i32 %tmp.14 ; [#uses=2 type=i32]
  %tmp.15 = select i1 %tmp.8, i32 %readBuffer1.load., i32 %tmp.14 ; [#uses=1 type=i32]
  %outAccumulate1 = select i1 %tmp.8, float 0.000000e+00, float %outAccumulate ; [#uses=3 type=float]
  %tmp.16 = icmp sgt i32 %tmp.15, %delay, !dbg !277 ; [#uses=2 type=i1] [debug line = 81:3]
  %tmp.17 = icmp sgt i32 %readBuffer2.load., %tmp.6, !dbg !233 ; [#uses=4 type=i1] [debug line = 83:4]
  %tmp.18 = fmul double %tmp.9, 2.500000e-01, !dbg !278 ; [#uses=1 type=double] [debug line = 84:5]
  %tmp.19 = sext i32 %readBuffer2.load. to i64, !dbg !278 ; [#uses=1 type=i64] [debug line = 84:5]
  %buffer.addr.1 = getelementptr inbounds [48000 x float]* @buffer, i64 0, i64 %tmp.19, !dbg !278 ; [#uses=1 type=float*] [debug line = 84:5]
  %buffer.load.1 = load float* %buffer.addr.1, align 4, !dbg !278 ; [#uses=1 type=float] [debug line = 84:5]
  %tmp.20 = fpext float %buffer.load.1 to double, !dbg !278 ; [#uses=1 type=double] [debug line = 84:5]
  %tmp.21 = fmul double %tmp.18, %tmp.20, !dbg !278 ; [#uses=1 type=double] [debug line = 84:5]
  %tmp.22 = fpext float %outAccumulate1 to double, !dbg !278 ; [#uses=1 type=double] [debug line = 84:5]
  %tmp.23 = fadd double %tmp.22, %tmp.21, !dbg !278 ; [#uses=1 type=double] [debug line = 84:5]
  %outAccumulate.4 = fptrunc double %tmp.23 to float, !dbg !278 ; [#uses=1 type=float] [debug line = 84:5]
  call void @llvm.dbg.value(metadata !{float %outAccumulate.4}, i64 0, metadata !275), !dbg !278 ; [debug line = 84:5] [debug variable = outAccumulate]
  %tmp.24 = add nsw i32 %readBuffer2.load., 1, !dbg !280 ; [#uses=2 type=i32] [debug line = 85:5]
  %not.tmp. = xor i1 %tmp.17, true                ; [#uses=1 type=i1]
  %readBuffer2.flag.1 = or i1 %not.tmp., %not.tmp.1 ; [#uses=2 type=i1]
  %readBuffer2.new.1 = select i1 %tmp.17, i32 0, i32 %tmp.24 ; [#uses=2 type=i32]
  %tmp.25 = select i1 %tmp.17, i32 %readBuffer2.load., i32 %tmp.24 ; [#uses=1 type=i32]
  %outAccumulate.1 = select i1 %tmp.17, float %outAccumulate1, float %outAccumulate.4 ; [#uses=3 type=float]
  %tmp.26 = icmp sgt i32 %tmp.25, %delay, !dbg !281 ; [#uses=2 type=i1] [debug line = 88:4]
  %tmp.27 = icmp sgt i32 %readBuffer3.load., %tmp.6, !dbg !235 ; [#uses=4 type=i1] [debug line = 90:5]
  %tmp.28 = fmul double %tmp.9, 1.250000e-01, !dbg !282 ; [#uses=1 type=double] [debug line = 91:6]
  %tmp.29 = sext i32 %readBuffer3.load. to i64, !dbg !282 ; [#uses=1 type=i64] [debug line = 91:6]
  %buffer.addr.2 = getelementptr inbounds [48000 x float]* @buffer, i64 0, i64 %tmp.29, !dbg !282 ; [#uses=1 type=float*] [debug line = 91:6]
  %buffer.load.2 = load float* %buffer.addr.2, align 4, !dbg !282 ; [#uses=1 type=float] [debug line = 91:6]
  %tmp.30 = fpext float %buffer.load.2 to double, !dbg !282 ; [#uses=1 type=double] [debug line = 91:6]
  %tmp.31 = fmul double %tmp.28, %tmp.30, !dbg !282 ; [#uses=1 type=double] [debug line = 91:6]
  %tmp.32 = fpext float %outAccumulate.1 to double, !dbg !282 ; [#uses=1 type=double] [debug line = 91:6]
  %tmp.33 = fadd double %tmp.32, %tmp.31, !dbg !282 ; [#uses=1 type=double] [debug line = 91:6]
  %outAccumulate.5 = fptrunc double %tmp.33 to float, !dbg !282 ; [#uses=1 type=float] [debug line = 91:6]
  call void @llvm.dbg.value(metadata !{float %outAccumulate.5}, i64 0, metadata !275), !dbg !282 ; [debug line = 91:6] [debug variable = outAccumulate]
  %tmp.34 = add nsw i32 %readBuffer3.load., 1, !dbg !284 ; [#uses=2 type=i32] [debug line = 92:6]
  %not.tmp.2 = xor i1 %tmp.27, true               ; [#uses=1 type=i1]
  %readBuffer3.flag.1 = or i1 %not.tmp.2, %not.tmp.1 ; [#uses=2 type=i1]
  %readBuffer3.new.1 = select i1 %tmp.27, i32 0, i32 %tmp.34 ; [#uses=2 type=i32]
  %tmp.35 = select i1 %tmp.27, i32 %readBuffer3.load., i32 %tmp.34 ; [#uses=2 type=i32]
  %outAccumulate.2 = select i1 %tmp.27, float %outAccumulate.1, float %outAccumulate.5 ; [#uses=3 type=float]
  %tmp.36 = icmp sgt i32 %tmp.35, %delay, !dbg !285 ; [#uses=1 type=i1] [debug line = 95:5]
  %tmp.37 = icmp sgt i32 %readBuffer4.load., %tmp.6, !dbg !237 ; [#uses=3 type=i1] [debug line = 97:6]
  %tmp.38 = fmul double %tmp.9, 6.250000e-02, !dbg !286 ; [#uses=1 type=double] [debug line = 98:7]
  %tmp.39 = sext i32 %readBuffer4.load. to i64, !dbg !286 ; [#uses=1 type=i64] [debug line = 98:7]
  %buffer.addr.3 = getelementptr inbounds [48000 x float]* @buffer, i64 0, i64 %tmp.39, !dbg !286 ; [#uses=1 type=float*] [debug line = 98:7]
  %buffer.load.3 = load float* %buffer.addr.3, align 4, !dbg !286 ; [#uses=1 type=float] [debug line = 98:7]
  %tmp.40 = fpext float %buffer.load.3 to double, !dbg !286 ; [#uses=1 type=double] [debug line = 98:7]
  %tmp.41 = fmul double %tmp.38, %tmp.40, !dbg !286 ; [#uses=1 type=double] [debug line = 98:7]
  %tmp.42 = fpext float %outAccumulate.2 to double, !dbg !286 ; [#uses=1 type=double] [debug line = 98:7]
  %tmp.43 = fadd double %tmp.42, %tmp.41, !dbg !286 ; [#uses=1 type=double] [debug line = 98:7]
  %outAccumulate.6 = fptrunc double %tmp.43 to float, !dbg !286 ; [#uses=1 type=float] [debug line = 98:7]
  call void @llvm.dbg.value(metadata !{float %outAccumulate.6}, i64 0, metadata !275), !dbg !286 ; [debug line = 98:7] [debug variable = outAccumulate]
  %tmp.44 = add nsw i32 %readBuffer4.load., 1, !dbg !288 ; [#uses=1 type=i32] [debug line = 99:7]
  %not.tmp.3 = xor i1 %tmp.37, true               ; [#uses=1 type=i1]
  %outAccumulate.3 = select i1 %tmp.37, float %outAccumulate.2, float %outAccumulate.6 ; [#uses=1 type=float]
  %tmp.45 = icmp eq i32 %tmp.35, %tmp.6, !dbg !289 ; [#uses=9 type=i1] [debug line = 103:6]
  %.readBuffer1.flag.1 = or i1 %tmp.45, %readBuffer1.flag.1, !dbg !289 ; [#uses=1 type=i1] [debug line = 103:6]
  %.readBuffer1.new.1 = select i1 %tmp.45, i32 0, i32 %readBuffer1.new.1, !dbg !289 ; [#uses=1 type=i32] [debug line = 103:6]
  %.readBuffer2.flag.1 = or i1 %tmp.45, %readBuffer2.flag.1, !dbg !289 ; [#uses=1 type=i1] [debug line = 103:6]
  %.readBuffer2.new.1 = select i1 %tmp.45, i32 0, i32 %readBuffer2.new.1, !dbg !289 ; [#uses=1 type=i32] [debug line = 103:6]
  %.readBuffer3.flag.1 = or i1 %tmp.45, %readBuffer3.flag.1, !dbg !289 ; [#uses=1 type=i1] [debug line = 103:6]
  %.readBuffer3.new.1 = select i1 %tmp.45, i32 0, i32 %readBuffer3.new.1, !dbg !289 ; [#uses=1 type=i32] [debug line = 103:6]
  %tmp5 = or i1 %tmp.45, %not.tmp.1, !dbg !289    ; [#uses=1 type=i1] [debug line = 103:6]
  %.readBuffer4.flag.1 = or i1 %tmp5, %not.tmp.3, !dbg !289 ; [#uses=1 type=i1] [debug line = 103:6]
  %tmp.46 = or i1 %tmp.45, %tmp.37, !dbg !289     ; [#uses=1 type=i1] [debug line = 103:6]
  %.readBuffer4.new.1 = select i1 %tmp.46, i32 0, i32 %tmp.44, !dbg !289 ; [#uses=1 type=i32] [debug line = 103:6]
  %.delayCount.load. = select i1 %tmp.45, i32 0, i32 %delayCount.load., !dbg !289 ; [#uses=1 type=i32] [debug line = 103:6]
  %sel_tmp8 = select i1 %tmp.7, i1 %readBuffer1.flag.1, i1 %not.tmp.1 ; [#uses=1 type=i1]
  %sel_tmp9 = and i1 %tmp.7, %tmp.16              ; [#uses=2 type=i1]
  %tmp47 = and i1 %tmp.26, %tmp.36                ; [#uses=1 type=i1]
  %sel_tmp = and i1 %tmp47, %sel_tmp9             ; [#uses=10 type=i1]
  %readBuffer1.flag.2 = select i1 %sel_tmp, i1 %.readBuffer1.flag.1, i1 %sel_tmp8 ; [#uses=1 type=i1]
  %sel_tmp1 = select i1 %tmp.7, i32 %readBuffer1.new.1, i32 0 ; [#uses=1 type=i32]
  %readBuffer1.new.2 = select i1 %sel_tmp, i32 %.readBuffer1.new.1, i32 %sel_tmp1 ; [#uses=1 type=i32]
  %sel_tmp2 = xor i1 %tmp.16, true, !dbg !277     ; [#uses=1 type=i1] [debug line = 81:3]
  %sel_tmp3 = and i1 %tmp.7, %sel_tmp2            ; [#uses=5 type=i1]
  %sel_tmp4 = select i1 %sel_tmp3, i1 %not.tmp.1, i1 %readBuffer2.flag.1 ; [#uses=1 type=i1]
  %sel_tmp5 = select i1 %tmp.7, i1 %sel_tmp4, i1 %not.tmp.1 ; [#uses=1 type=i1]
  %readBuffer2.flag.2 = select i1 %sel_tmp, i1 %.readBuffer2.flag.1, i1 %sel_tmp5 ; [#uses=1 type=i1]
  %sel_tmp6 = select i1 %sel_tmp3, i32 0, i32 %readBuffer2.new.1 ; [#uses=1 type=i32]
  %sel_tmp7 = select i1 %tmp.7, i32 %sel_tmp6, i32 0 ; [#uses=1 type=i32]
  %readBuffer2.new.2 = select i1 %sel_tmp, i32 %.readBuffer2.new.1, i32 %sel_tmp7 ; [#uses=1 type=i32]
  %sel_tmp10 = xor i1 %tmp.26, true, !dbg !281    ; [#uses=1 type=i1] [debug line = 88:4]
  %sel_tmp11 = and i1 %sel_tmp9, %sel_tmp10       ; [#uses=3 type=i1]
  %sel_tmp12 = select i1 %sel_tmp11, i1 %not.tmp.1, i1 %readBuffer3.flag.1 ; [#uses=1 type=i1]
  %sel_tmp13 = select i1 %sel_tmp3, i1 %not.tmp.1, i1 %sel_tmp12 ; [#uses=1 type=i1]
  %sel_tmp14 = select i1 %tmp.7, i1 %sel_tmp13, i1 %not.tmp.1 ; [#uses=1 type=i1]
  %readBuffer3.flag.2 = select i1 %sel_tmp, i1 %.readBuffer3.flag.1, i1 %sel_tmp14 ; [#uses=1 type=i1]
  %tmp.48 = or i1 %sel_tmp3, %sel_tmp11           ; [#uses=1 type=i1]
  %sel_tmp15 = select i1 %tmp.48, i32 0, i32 %readBuffer3.new.1 ; [#uses=1 type=i32]
  %sel_tmp16 = select i1 %tmp.7, i32 %sel_tmp15, i32 0 ; [#uses=1 type=i32]
  %readBuffer3.new.2 = select i1 %sel_tmp, i32 %.readBuffer3.new.1, i32 %sel_tmp16 ; [#uses=1 type=i32]
  %readBuffer4.flag.2 = select i1 %sel_tmp, i1 %.readBuffer4.flag.1, i1 %not.tmp.1 ; [#uses=1 type=i1]
  %readBuffer4.new.2 = select i1 %sel_tmp, i32 %.readBuffer4.new.1, i32 0 ; [#uses=1 type=i32]
  %tmp.47 = select i1 %sel_tmp, i32 %.delayCount.load., i32 %delayCount.load. ; [#uses=1 type=i32]
  %sel_tmp17 = select i1 %sel_tmp11, float %outAccumulate.1, float %outAccumulate.2 ; [#uses=1 type=float]
  %sel_tmp18 = select i1 %sel_tmp3, float %outAccumulate1, float %sel_tmp17 ; [#uses=1 type=float]
  %sel_tmp19 = select i1 %tmp.7, float %sel_tmp18, float 0.000000e+00 ; [#uses=1 type=float]
  %outAccumulate.7 = select i1 %sel_tmp, float %outAccumulate.3, float %sel_tmp19 ; [#uses=1 type=float]
  %tmp.49 = add nsw i32 %tmp.47, 1, !dbg !290     ; [#uses=1 type=i32] [debug line = 116:2]
  %tmp.50 = add nsw i32 %tmp.6, -1, !dbg !291     ; [#uses=1 type=i32] [debug line = 118:2]
  %tmp.51 = sext i32 %tmp.50 to i64, !dbg !291    ; [#uses=1 type=i64] [debug line = 118:2]
  %buffer.addr.4 = getelementptr inbounds [48000 x float]* @buffer, i64 0, i64 %tmp.51, !dbg !291 ; [#uses=1 type=float*] [debug line = 118:2]
  %buffer.load.4 = load float* %buffer.addr.4, align 4, !dbg !291 ; [#uses=1 type=float] [debug line = 118:2]
  %tmp.52 = fadd float %buffer.load.4, %outAccumulate.7, !dbg !291 ; [#uses=1 type=float] [debug line = 118:2]
  call void @llvm.dbg.value(metadata !{float* %value_out.V}, i64 0, metadata !292), !dbg !295 ; [debug line = 105:48@118:2] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float* %value_out.V}, i64 0, metadata !296), !dbg !299 ; [debug line = 144:48@106:9@118:2] [debug variable = stream<float>.V]
  call void @llvm.dbg.declare(metadata !{float* %tmp.53}, metadata !302) nounwind, !dbg !304 ; [debug line = 145:22@106:9@118:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp.52}, i64 0, metadata !302), !dbg !305 ; [debug line = 145:31@106:9@118:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{float %tmp.52}, i64 0, metadata !302), !dbg !305 ; [debug line = 145:31@106:9@118:2] [debug variable = tmp]
  store float %tmp.52, float* %tmp.53, align 4, !dbg !305 ; [debug line = 145:31@106:9@118:2]
  call void @_ssdm_op_IfWrite.Stream.floatP.floatP(float* %value_out.V, float* %tmp.53) nounwind, !dbg !306 ; [debug line = 146:9@106:9@118:2]
  br i1 %readBuffer4.flag.2, label %mergeST7, label %._crit_edge10.new8
}

!opencl.kernels = !{!0, !7, !13, !15, !18, !20, !22}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}
!llvm.dbg.cu = !{!23}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<int> &", metadata !"hls::stream<float> &", metadata !"hls::stream<float> &", metadata !"int", metadata !"int"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"change", metadata !"value_in", metadata !"value_out", metadata !"delay", metadata !"scale"}
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
!20 = metadata !{null, metadata !8, metadata !9, metadata !21, metadata !11, metadata !17, metadata !6}
!21 = metadata !{metadata !"kernel_arg_type", metadata !"int &"}
!22 = metadata !{null, metadata !8, metadata !9, metadata !21, metadata !11, metadata !19, metadata !6}
!23 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/austin/ECE1373_GhostSynth/modules/echo/Echo/solution1/.autopilot/db/Echo.pragma.2.cpp", metadata !"/home/austin/ECE1373_GhostSynth/modules/echo", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, null, null, null, metadata !24} ; [ DW_TAG_compile_unit ]
!24 = metadata !{metadata !25}
!25 = metadata !{metadata !26, metadata !143, metadata !144, metadata !145, metadata !146, metadata !147, metadata !148, metadata !149, metadata !150, metadata !153, metadata !154, metadata !155, metadata !157, metadata !158}
!26 = metadata !{i32 786484, i32 0, metadata !27, metadata !"buffer", metadata !"buffer", metadata !"", metadata !28, i32 43, metadata !140, i32 1, i32 1, [48000 x float]* @buffer} ; [ DW_TAG_variable ]
!27 = metadata !{i32 786478, i32 0, metadata !28, metadata !"Echo", metadata !"Echo", metadata !"_Z4EchoRN3hls6streamIiEERNS0_IfEES4_ii", metadata !28, i32 17, metadata !29, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !42, i32 26} ; [ DW_TAG_subprogram ]
!28 = metadata !{i32 786473, metadata !"src/Echo.cpp", metadata !"/home/austin/ECE1373_GhostSynth/modules/echo", null} ; [ DW_TAG_file_type ]
!29 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !30, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!30 = metadata !{null, metadata !31, metadata !90, metadata !90, metadata !37, metadata !37}
!31 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !32} ; [ DW_TAG_reference_type ]
!32 = metadata !{i32 786434, metadata !33, metadata !"stream<int>", metadata !34, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !35, i32 0, null, metadata !88} ; [ DW_TAG_class_type ]
!33 = metadata !{i32 786489, null, metadata !"hls", metadata !34, i32 69} ; [ DW_TAG_namespace ]
!34 = metadata !{i32 786473, metadata !"/home/austin/Desktop/Vivado_HLS/2017.2/common/technology/autopilot/hls_stream.h", metadata !"/home/austin/ECE1373_GhostSynth/modules/echo", null} ; [ DW_TAG_file_type ]
!35 = metadata !{metadata !36, metadata !38, metadata !44, metadata !50, metadata !55, metadata !58, metadata !62, metadata !67, metadata !72, metadata !73, metadata !74, metadata !77, metadata !80, metadata !81, metadata !84}
!36 = metadata !{i32 786445, metadata !32, metadata !"V", metadata !34, i32 163, i64 32, i64 32, i64 0, i32 0, metadata !37} ; [ DW_TAG_member ]
!37 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!38 = metadata !{i32 786478, i32 0, metadata !32, metadata !"stream", metadata !"stream", metadata !"", metadata !34, i32 83, metadata !39, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 83} ; [ DW_TAG_subprogram ]
!39 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !40, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!40 = metadata !{null, metadata !41}
!41 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !32} ; [ DW_TAG_pointer_type ]
!42 = metadata !{metadata !43}
!43 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!44 = metadata !{i32 786478, i32 0, metadata !32, metadata !"stream", metadata !"stream", metadata !"", metadata !34, i32 86, metadata !45, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 86} ; [ DW_TAG_subprogram ]
!45 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !46, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!46 = metadata !{null, metadata !41, metadata !47}
!47 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !48} ; [ DW_TAG_pointer_type ]
!48 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_const_type ]
!49 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!50 = metadata !{i32 786478, i32 0, metadata !32, metadata !"stream", metadata !"stream", metadata !"", metadata !34, i32 91, metadata !51, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !42, i32 91} ; [ DW_TAG_subprogram ]
!51 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !52, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!52 = metadata !{null, metadata !41, metadata !53}
!53 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !54} ; [ DW_TAG_reference_type ]
!54 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !32} ; [ DW_TAG_const_type ]
!55 = metadata !{i32 786478, i32 0, metadata !32, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIiEaSERKS1_", metadata !34, i32 94, metadata !56, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !42, i32 94} ; [ DW_TAG_subprogram ]
!56 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !57, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!57 = metadata !{metadata !31, metadata !41, metadata !53}
!58 = metadata !{i32 786478, i32 0, metadata !32, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIiErsERi", metadata !34, i32 101, metadata !59, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 101} ; [ DW_TAG_subprogram ]
!59 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !60, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!60 = metadata !{null, metadata !41, metadata !61}
!61 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !37} ; [ DW_TAG_reference_type ]
!62 = metadata !{i32 786478, i32 0, metadata !32, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIiElsERKi", metadata !34, i32 105, metadata !63, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 105} ; [ DW_TAG_subprogram ]
!63 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !64, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!64 = metadata !{null, metadata !41, metadata !65}
!65 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !66} ; [ DW_TAG_reference_type ]
!66 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !37} ; [ DW_TAG_const_type ]
!67 = metadata !{i32 786478, i32 0, metadata !32, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIiE5emptyEv", metadata !34, i32 112, metadata !68, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 112} ; [ DW_TAG_subprogram ]
!68 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !69, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!69 = metadata !{metadata !70, metadata !71}
!70 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!71 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !54} ; [ DW_TAG_pointer_type ]
!72 = metadata !{i32 786478, i32 0, metadata !32, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIiE4fullEv", metadata !34, i32 117, metadata !68, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 117} ; [ DW_TAG_subprogram ]
!73 = metadata !{i32 786478, i32 0, metadata !32, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readERi", metadata !34, i32 123, metadata !59, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 123} ; [ DW_TAG_subprogram ]
!74 = metadata !{i32 786478, i32 0, metadata !32, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readEv", metadata !34, i32 129, metadata !75, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 129} ; [ DW_TAG_subprogram ]
!75 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !76, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!76 = metadata !{metadata !37, metadata !41}
!77 = metadata !{i32 786478, i32 0, metadata !32, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIiE7read_nbERi", metadata !34, i32 136, metadata !78, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 136} ; [ DW_TAG_subprogram ]
!78 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !79, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!79 = metadata !{metadata !70, metadata !41, metadata !61}
!80 = metadata !{i32 786478, i32 0, metadata !32, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIiE5writeERKi", metadata !34, i32 144, metadata !63, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 144} ; [ DW_TAG_subprogram ]
!81 = metadata !{i32 786478, i32 0, metadata !32, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIiE8write_nbERKi", metadata !34, i32 150, metadata !82, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 150} ; [ DW_TAG_subprogram ]
!82 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !83, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!83 = metadata !{metadata !70, metadata !41, metadata !65}
!84 = metadata !{i32 786478, i32 0, metadata !32, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIiE4sizeEv", metadata !34, i32 157, metadata !85, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 157} ; [ DW_TAG_subprogram ]
!85 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !86, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!86 = metadata !{metadata !87, metadata !41}
!87 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!88 = metadata !{metadata !89}
!89 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !37, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!90 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !91} ; [ DW_TAG_reference_type ]
!91 = metadata !{i32 786434, metadata !33, metadata !"stream<float>", metadata !34, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !92, i32 0, null, metadata !138} ; [ DW_TAG_class_type ]
!92 = metadata !{metadata !93, metadata !95, metadata !99, metadata !102, metadata !107, metadata !110, metadata !114, metadata !119, metadata !123, metadata !124, metadata !125, metadata !128, metadata !131, metadata !132, metadata !135}
!93 = metadata !{i32 786445, metadata !91, metadata !"V", metadata !34, i32 163, i64 32, i64 32, i64 0, i32 0, metadata !94} ; [ DW_TAG_member ]
!94 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!95 = metadata !{i32 786478, i32 0, metadata !91, metadata !"stream", metadata !"stream", metadata !"", metadata !34, i32 83, metadata !96, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 83} ; [ DW_TAG_subprogram ]
!96 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !97, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!97 = metadata !{null, metadata !98}
!98 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !91} ; [ DW_TAG_pointer_type ]
!99 = metadata !{i32 786478, i32 0, metadata !91, metadata !"stream", metadata !"stream", metadata !"", metadata !34, i32 86, metadata !100, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 86} ; [ DW_TAG_subprogram ]
!100 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !101, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!101 = metadata !{null, metadata !98, metadata !47}
!102 = metadata !{i32 786478, i32 0, metadata !91, metadata !"stream", metadata !"stream", metadata !"", metadata !34, i32 91, metadata !103, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !42, i32 91} ; [ DW_TAG_subprogram ]
!103 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !104, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!104 = metadata !{null, metadata !98, metadata !105}
!105 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !106} ; [ DW_TAG_reference_type ]
!106 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !91} ; [ DW_TAG_const_type ]
!107 = metadata !{i32 786478, i32 0, metadata !91, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIfEaSERKS1_", metadata !34, i32 94, metadata !108, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !42, i32 94} ; [ DW_TAG_subprogram ]
!108 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !109, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!109 = metadata !{metadata !90, metadata !98, metadata !105}
!110 = metadata !{i32 786478, i32 0, metadata !91, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIfErsERf", metadata !34, i32 101, metadata !111, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 101} ; [ DW_TAG_subprogram ]
!111 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !112, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!112 = metadata !{null, metadata !98, metadata !113}
!113 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !94} ; [ DW_TAG_reference_type ]
!114 = metadata !{i32 786478, i32 0, metadata !91, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIfElsERKf", metadata !34, i32 105, metadata !115, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 105} ; [ DW_TAG_subprogram ]
!115 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !116, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!116 = metadata !{null, metadata !98, metadata !117}
!117 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !118} ; [ DW_TAG_reference_type ]
!118 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !94} ; [ DW_TAG_const_type ]
!119 = metadata !{i32 786478, i32 0, metadata !91, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIfE5emptyEv", metadata !34, i32 112, metadata !120, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 112} ; [ DW_TAG_subprogram ]
!120 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !121, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!121 = metadata !{metadata !70, metadata !122}
!122 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !106} ; [ DW_TAG_pointer_type ]
!123 = metadata !{i32 786478, i32 0, metadata !91, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIfE4fullEv", metadata !34, i32 117, metadata !120, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 117} ; [ DW_TAG_subprogram ]
!124 = metadata !{i32 786478, i32 0, metadata !91, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readERf", metadata !34, i32 123, metadata !111, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 123} ; [ DW_TAG_subprogram ]
!125 = metadata !{i32 786478, i32 0, metadata !91, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readEv", metadata !34, i32 129, metadata !126, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 129} ; [ DW_TAG_subprogram ]
!126 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !127, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!127 = metadata !{metadata !94, metadata !98}
!128 = metadata !{i32 786478, i32 0, metadata !91, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIfE7read_nbERf", metadata !34, i32 136, metadata !129, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 136} ; [ DW_TAG_subprogram ]
!129 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !130, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!130 = metadata !{metadata !70, metadata !98, metadata !113}
!131 = metadata !{i32 786478, i32 0, metadata !91, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !34, i32 144, metadata !115, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 144} ; [ DW_TAG_subprogram ]
!132 = metadata !{i32 786478, i32 0, metadata !91, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIfE8write_nbERKf", metadata !34, i32 150, metadata !133, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 150} ; [ DW_TAG_subprogram ]
!133 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !134, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!134 = metadata !{metadata !70, metadata !98, metadata !117}
!135 = metadata !{i32 786478, i32 0, metadata !91, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIfE4sizeEv", metadata !34, i32 157, metadata !136, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 157} ; [ DW_TAG_subprogram ]
!136 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !137, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!137 = metadata !{metadata !87, metadata !98}
!138 = metadata !{metadata !139}
!139 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !94, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!140 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1536000, i64 32, i32 0, i32 0, metadata !94, metadata !141, i32 0, i32 0} ; [ DW_TAG_array_type ]
!141 = metadata !{metadata !142}
!142 = metadata !{i32 786465, i64 0, i64 47999}   ; [ DW_TAG_subrange_type ]
!143 = metadata !{i32 786484, i32 0, metadata !27, metadata !"delayCount", metadata !"delayCount", metadata !"", metadata !28, i32 38, metadata !37, i32 1, i32 1, i32* @delayCount} ; [ DW_TAG_variable ]
!144 = metadata !{i32 786484, i32 0, metadata !27, metadata !"readBuffer1", metadata !"readBuffer1", metadata !"", metadata !28, i32 45, metadata !37, i32 1, i32 1, i32* @readBuffer1} ; [ DW_TAG_variable ]
!145 = metadata !{i32 786484, i32 0, metadata !27, metadata !"readBuffer3", metadata !"readBuffer3", metadata !"", metadata !28, i32 47, metadata !37, i32 1, i32 1, i32* @readBuffer3} ; [ DW_TAG_variable ]
!146 = metadata !{i32 786484, i32 0, metadata !27, metadata !"writeBuffer", metadata !"writeBuffer", metadata !"", metadata !28, i32 39, metadata !37, i32 1, i32 1, i32* @writeBuffer} ; [ DW_TAG_variable ]
!147 = metadata !{i32 786484, i32 0, metadata !27, metadata !"readBuffer2", metadata !"readBuffer2", metadata !"", metadata !28, i32 46, metadata !37, i32 1, i32 1, i32* @readBuffer2} ; [ DW_TAG_variable ]
!148 = metadata !{i32 786484, i32 0, metadata !27, metadata !"readBuffer4", metadata !"readBuffer4", metadata !"", metadata !28, i32 48, metadata !37, i32 1, i32 1, i32* @readBuffer4} ; [ DW_TAG_variable ]
!149 = metadata !{i32 786484, i32 0, metadata !27, metadata !"initial", metadata !"initial", metadata !"", metadata !28, i32 37, metadata !37, i32 1, i32 1, null} ; [ DW_TAG_variable ]
!150 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !151, i32 315, metadata !152, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!151 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/austin/ECE1373_GhostSynth/modules/echo", null} ; [ DW_TAG_file_type ]
!152 = metadata !{i32 786434, null, metadata !"_IO_FILE_plus", metadata !151, i32 313, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!153 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !151, i32 316, metadata !152, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!154 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !151, i32 317, metadata !152, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!155 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !156, i32 26, metadata !37, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!156 = metadata !{i32 786473, metadata !"/usr/include/x86_64-linux-gnu/bits/sys_errlist.h", metadata !"/home/austin/ECE1373_GhostSynth/modules/echo", null} ; [ DW_TAG_file_type ]
!157 = metadata !{i32 786484, i32 0, null, metadata !"_sys_nerr", metadata !"_sys_nerr", metadata !"", metadata !156, i32 30, metadata !37, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!158 = metadata !{i32 786484, i32 0, null, metadata !"signgam", metadata !"signgam", metadata !"", metadata !159, i32 168, metadata !37, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!159 = metadata !{i32 786473, metadata !"/usr/include/math.h", metadata !"/home/austin/ECE1373_GhostSynth/modules/echo", null} ; [ DW_TAG_file_type ]
!160 = metadata !{metadata !161}
!161 = metadata !{i32 0, i32 31, metadata !162}
!162 = metadata !{metadata !163}
!163 = metadata !{metadata !"change.V", metadata !164, metadata !"int", i32 0, i32 31}
!164 = metadata !{metadata !165}
!165 = metadata !{i32 0, i32 0, i32 1}
!166 = metadata !{metadata !167}
!167 = metadata !{i32 0, i32 31, metadata !168}
!168 = metadata !{metadata !169}
!169 = metadata !{metadata !"value_in.V", metadata !164, metadata !"float", i32 0, i32 31}
!170 = metadata !{metadata !171}
!171 = metadata !{i32 0, i32 31, metadata !172}
!172 = metadata !{metadata !173}
!173 = metadata !{metadata !"value_out.V", metadata !164, metadata !"float", i32 0, i32 31}
!174 = metadata !{metadata !175}
!175 = metadata !{i32 0, i32 31, metadata !176}
!176 = metadata !{metadata !177}
!177 = metadata !{metadata !"delay", metadata !178, metadata !"int", i32 0, i32 31}
!178 = metadata !{metadata !179}
!179 = metadata !{i32 0, i32 0, i32 0}
!180 = metadata !{metadata !181}
!181 = metadata !{i32 0, i32 31, metadata !182}
!182 = metadata !{metadata !183}
!183 = metadata !{metadata !"scale", metadata !178, metadata !"int", i32 0, i32 31}
!184 = metadata !{i32 790531, metadata !185, metadata !"change.V", null, i32 19, metadata !186, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!185 = metadata !{i32 786689, metadata !27, metadata !"change", metadata !28, i32 16777235, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!186 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !187} ; [ DW_TAG_pointer_type ]
!187 = metadata !{i32 786438, metadata !33, metadata !"stream<int>", metadata !34, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !188, i32 0, null, metadata !88} ; [ DW_TAG_class_field_type ]
!188 = metadata !{metadata !36}
!189 = metadata !{i32 19, i32 21, metadata !27, null}
!190 = metadata !{i32 790531, metadata !191, metadata !"value_in.V", null, i32 20, metadata !192, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!191 = metadata !{i32 786689, metadata !27, metadata !"value_in", metadata !28, i32 33554452, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!192 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !193} ; [ DW_TAG_pointer_type ]
!193 = metadata !{i32 786438, metadata !33, metadata !"stream<float>", metadata !34, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !194, i32 0, null, metadata !138} ; [ DW_TAG_class_field_type ]
!194 = metadata !{metadata !93}
!195 = metadata !{i32 20, i32 23, metadata !27, null}
!196 = metadata !{i32 790531, metadata !197, metadata !"value_out.V", null, i32 21, metadata !192, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!197 = metadata !{i32 786689, metadata !27, metadata !"value_out", metadata !28, i32 50331669, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!198 = metadata !{i32 21, i32 23, metadata !27, null}
!199 = metadata !{i32 786689, metadata !27, metadata !"delay", metadata !28, i32 67108887, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!200 = metadata !{i32 23, i32 6, metadata !27, null}
!201 = metadata !{i32 786689, metadata !27, metadata !"scale", metadata !28, i32 83886104, metadata !37, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!202 = metadata !{i32 24, i32 6, metadata !27, null}
!203 = metadata !{i32 28, i32 1, metadata !204, null}
!204 = metadata !{i32 786443, metadata !27, i32 26, i32 2, metadata !28, i32 0} ; [ DW_TAG_lexical_block ]
!205 = metadata !{i32 29, i32 1, metadata !204, null}
!206 = metadata !{i32 30, i32 1, metadata !204, null}
!207 = metadata !{i32 33, i32 1, metadata !204, null}
!208 = metadata !{i32 34, i32 1, metadata !204, null}
!209 = metadata !{i32 35, i32 1, metadata !204, null}
!210 = metadata !{i32 790531, metadata !211, metadata !"stream<int>.V", null, i32 101, metadata !214, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!211 = metadata !{i32 786689, metadata !212, metadata !"this", metadata !34, i32 16777317, metadata !213, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!212 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIiErsERi", metadata !34, i32 101, metadata !59, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !58, metadata !42, i32 101} ; [ DW_TAG_subprogram ]
!213 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !32} ; [ DW_TAG_pointer_type ]
!214 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !187} ; [ DW_TAG_pointer_type ]
!215 = metadata !{i32 101, i32 48, metadata !212, metadata !216}
!216 = metadata !{i32 52, i32 2, metadata !204, null}
!217 = metadata !{i32 790531, metadata !218, metadata !"stream<int>.V", null, i32 123, metadata !214, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!218 = metadata !{i32 786689, metadata !219, metadata !"this", metadata !34, i32 16777339, metadata !213, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!219 = metadata !{i32 786478, i32 0, metadata !33, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readERi", metadata !34, i32 123, metadata !59, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !73, metadata !42, i32 123} ; [ DW_TAG_subprogram ]
!220 = metadata !{i32 123, i32 48, metadata !219, metadata !221}
!221 = metadata !{i32 102, i32 9, metadata !222, metadata !216}
!222 = metadata !{i32 786443, metadata !212, i32 101, i32 82, metadata !34, i32 16} ; [ DW_TAG_lexical_block ]
!223 = metadata !{i32 786688, metadata !224, metadata !"tmp", metadata !34, i32 124, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!224 = metadata !{i32 786443, metadata !219, i32 123, i32 73, metadata !34, i32 17} ; [ DW_TAG_lexical_block ]
!225 = metadata !{i32 124, i32 22, metadata !224, metadata !221}
!226 = metadata !{i32 125, i32 9, metadata !224, metadata !221}
!227 = metadata !{i32 126, i32 9, metadata !224, metadata !221}
!228 = metadata !{i32 786688, metadata !204, metadata !"changevalue", metadata !28, i32 50, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!229 = metadata !{i32 56, i32 2, metadata !204, null}
!230 = metadata !{i32 74, i32 2, metadata !204, null}
!231 = metadata !{i32 76, i32 3, metadata !232, null}
!232 = metadata !{i32 786443, metadata !204, i32 74, i32 24, metadata !28, i32 3} ; [ DW_TAG_lexical_block ]
!233 = metadata !{i32 83, i32 4, metadata !234, null}
!234 = metadata !{i32 786443, metadata !232, i32 81, i32 26, metadata !28, i32 5} ; [ DW_TAG_lexical_block ]
!235 = metadata !{i32 90, i32 5, metadata !236, null}
!236 = metadata !{i32 786443, metadata !234, i32 88, i32 27, metadata !28, i32 7} ; [ DW_TAG_lexical_block ]
!237 = metadata !{i32 97, i32 6, metadata !238, null}
!238 = metadata !{i32 786443, metadata !236, i32 95, i32 28, metadata !28, i32 9} ; [ DW_TAG_lexical_block ]
!239 = metadata !{i32 66, i32 2, metadata !204, null}
!240 = metadata !{i32 68, i32 3, metadata !241, null}
!241 = metadata !{i32 786443, metadata !204, i32 66, i32 25, metadata !28, i32 2} ; [ DW_TAG_lexical_block ]
!242 = metadata !{i32 790531, metadata !243, metadata !"stream<float>.V", null, i32 101, metadata !246, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!243 = metadata !{i32 786689, metadata !244, metadata !"this", metadata !34, i32 16777317, metadata !245, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!244 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIfErsERf", metadata !34, i32 101, metadata !111, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !110, metadata !42, i32 101} ; [ DW_TAG_subprogram ]
!245 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !91} ; [ DW_TAG_pointer_type ]
!246 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !193} ; [ DW_TAG_pointer_type ]
!247 = metadata !{i32 101, i32 48, metadata !244, metadata !240}
!248 = metadata !{i32 786689, metadata !244, metadata !"rdata", metadata !34, i32 33554533, metadata !113, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!249 = metadata !{i32 101, i32 75, metadata !244, metadata !240}
!250 = metadata !{i32 790531, metadata !251, metadata !"stream<float>.V", null, i32 123, metadata !246, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!251 = metadata !{i32 786689, metadata !252, metadata !"this", metadata !34, i32 16777339, metadata !245, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!252 = metadata !{i32 786478, i32 0, metadata !33, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readERf", metadata !34, i32 123, metadata !111, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !124, metadata !42, i32 123} ; [ DW_TAG_subprogram ]
!253 = metadata !{i32 123, i32 48, metadata !252, metadata !254}
!254 = metadata !{i32 102, i32 9, metadata !255, metadata !240}
!255 = metadata !{i32 786443, metadata !244, i32 101, i32 82, metadata !34, i32 14} ; [ DW_TAG_lexical_block ]
!256 = metadata !{i32 786689, metadata !252, metadata !"dout", metadata !34, i32 33554555, metadata !113, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!257 = metadata !{i32 123, i32 67, metadata !252, metadata !254}
!258 = metadata !{i32 786688, metadata !259, metadata !"tmp", metadata !34, i32 124, metadata !94, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!259 = metadata !{i32 786443, metadata !252, i32 123, i32 73, metadata !34, i32 15} ; [ DW_TAG_lexical_block ]
!260 = metadata !{i32 124, i32 22, metadata !259, metadata !254}
!261 = metadata !{i32 125, i32 9, metadata !259, metadata !254}
!262 = metadata !{i32 126, i32 9, metadata !259, metadata !254}
!263 = metadata !{i32 69, i32 3, metadata !241, null}
!264 = metadata !{i32 71, i32 2, metadata !241, null}
!265 = metadata !{i32 58, i32 3, metadata !266, null}
!266 = metadata !{i32 786443, metadata !204, i32 56, i32 17, metadata !28, i32 1} ; [ DW_TAG_lexical_block ]
!267 = metadata !{i32 57, i32 3, metadata !266, null}
!268 = metadata !{i32 119, i32 1, metadata !204, null}
!269 = metadata !{i32 59, i32 3, metadata !266, null}
!270 = metadata !{i32 60, i32 3, metadata !266, null}
!271 = metadata !{i32 61, i32 3, metadata !266, null}
!272 = metadata !{i32 62, i32 3, metadata !266, null}
!273 = metadata !{i32 77, i32 4, metadata !274, null}
!274 = metadata !{i32 786443, metadata !232, i32 76, i32 33, metadata !28, i32 4} ; [ DW_TAG_lexical_block ]
!275 = metadata !{i32 786688, metadata !204, metadata !"outAccumulate", metadata !28, i32 41, metadata !94, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!276 = metadata !{i32 78, i32 4, metadata !274, null}
!277 = metadata !{i32 81, i32 3, metadata !232, null}
!278 = metadata !{i32 84, i32 5, metadata !279, null}
!279 = metadata !{i32 786443, metadata !234, i32 83, i32 34, metadata !28, i32 6} ; [ DW_TAG_lexical_block ]
!280 = metadata !{i32 85, i32 5, metadata !279, null}
!281 = metadata !{i32 88, i32 4, metadata !234, null}
!282 = metadata !{i32 91, i32 6, metadata !283, null}
!283 = metadata !{i32 786443, metadata !236, i32 90, i32 35, metadata !28, i32 8} ; [ DW_TAG_lexical_block ]
!284 = metadata !{i32 92, i32 6, metadata !283, null}
!285 = metadata !{i32 95, i32 5, metadata !236, null}
!286 = metadata !{i32 98, i32 7, metadata !287, null}
!287 = metadata !{i32 786443, metadata !238, i32 97, i32 36, metadata !28, i32 10} ; [ DW_TAG_lexical_block ]
!288 = metadata !{i32 99, i32 7, metadata !287, null}
!289 = metadata !{i32 103, i32 6, metadata !238, null}
!290 = metadata !{i32 116, i32 2, metadata !204, null}
!291 = metadata !{i32 118, i32 2, metadata !204, null}
!292 = metadata !{i32 790531, metadata !293, metadata !"stream<float>.V", null, i32 105, metadata !246, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!293 = metadata !{i32 786689, metadata !294, metadata !"this", metadata !34, i32 16777321, metadata !245, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!294 = metadata !{i32 786478, i32 0, metadata !33, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIfElsERKf", metadata !34, i32 105, metadata !115, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !114, metadata !42, i32 105} ; [ DW_TAG_subprogram ]
!295 = metadata !{i32 105, i32 48, metadata !294, metadata !291}
!296 = metadata !{i32 790531, metadata !297, metadata !"stream<float>.V", null, i32 144, metadata !246, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!297 = metadata !{i32 786689, metadata !298, metadata !"this", metadata !34, i32 16777360, metadata !245, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!298 = metadata !{i32 786478, i32 0, metadata !33, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !34, i32 144, metadata !115, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !131, metadata !42, i32 144} ; [ DW_TAG_subprogram ]
!299 = metadata !{i32 144, i32 48, metadata !298, metadata !300}
!300 = metadata !{i32 106, i32 9, metadata !301, metadata !291}
!301 = metadata !{i32 786443, metadata !294, i32 105, i32 88, metadata !34, i32 12} ; [ DW_TAG_lexical_block ]
!302 = metadata !{i32 786688, metadata !303, metadata !"tmp", metadata !34, i32 145, metadata !94, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!303 = metadata !{i32 786443, metadata !298, i32 144, i32 79, metadata !34, i32 13} ; [ DW_TAG_lexical_block ]
!304 = metadata !{i32 145, i32 22, metadata !303, metadata !300}
!305 = metadata !{i32 145, i32 31, metadata !303, metadata !300}
!306 = metadata !{i32 146, i32 9, metadata !303, metadata !300}

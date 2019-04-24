; ModuleID = '/home/austin/ECE1373_GhostSynth/modules/echo/Echo/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@writeBuffer = internal unnamed_addr global i32 0, align 4 ; [#uses=2 type=i32*]
@readBuffer4 = internal unnamed_addr global i32 0, align 4 ; [#uses=2 type=i32*]
@readBuffer3 = internal unnamed_addr global i32 0, align 4 ; [#uses=2 type=i32*]
@readBuffer2 = internal unnamed_addr global i32 0, align 4 ; [#uses=2 type=i32*]
@readBuffer1 = internal unnamed_addr global i32 0, align 4 ; [#uses=2 type=i32*]
@delayCount = internal unnamed_addr global i32 0, align 4 ; [#uses=2 type=i32*]
@buffer = internal unnamed_addr global [48000 x float] zeroinitializer, align 16 ; [#uses=6 type=[48000 x float]*]
@Echo_str = internal unnamed_addr constant [5 x i8] c"Echo\00" ; [#uses=1 type=[5 x i8]*]
@p_str5 = private unnamed_addr constant [5 x i8] c"both\00", align 1 ; [#uses=3 type=[5 x i8]*]
@p_str4 = private unnamed_addr constant [5 x i8] c"axis\00", align 1 ; [#uses=3 type=[5 x i8]*]
@p_str3 = private unnamed_addr constant [9 x i8] c"CTRL_BUS\00", align 1 ; [#uses=1 type=[9 x i8]*]
@p_str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@p_str1 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1 ; [#uses=1 type=[13 x i8]*]
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=27 type=[1 x i8]*]

; [#uses=23]
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
define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=5]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=5]
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
define weak i32 @_ssdm_op_Read.axis.volatile.i32P(i32*) {
entry:
  %empty = load i32* %0                           ; [#uses=1 type=i32]
  ret i32 %empty
}

; [#uses=1]
define weak float @_ssdm_op_Read.axis.volatile.floatP(float*) {
entry:
  %empty = load float* %0                         ; [#uses=1 type=float]
  ret float %empty
}

; [#uses=1]
define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

; [#uses=0]
define void @Echo(i32* %change_V, float* %value_in_V, float* %value_out_V, i32 %delay, i32 %scale) {
._crit_edge:
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %change_V), !map !23
  call void (...)* @_ssdm_op_SpecBitsMap(float* %value_in_V), !map !29
  call void (...)* @_ssdm_op_SpecBitsMap(float* %value_out_V), !map !33
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %delay), !map !37
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %scale), !map !43
  call void (...)* @_ssdm_op_SpecTopModule([5 x i8]* @Echo_str) nounwind
  %scale_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %scale) ; [#uses=1 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %scale_read}, i64 0, metadata !47), !dbg !161 ; [debug line = 24:6] [debug variable = scale]
  %delay_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %delay) ; [#uses=4 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %delay_read}, i64 0, metadata !162), !dbg !163 ; [debug line = 23:6] [debug variable = delay]
  call void @llvm.dbg.value(metadata !{i32* %change_V}, i64 0, metadata !164), !dbg !169 ; [debug line = 19:21] [debug variable = change.V]
  call void @llvm.dbg.value(metadata !{float* %value_in_V}, i64 0, metadata !170), !dbg !175 ; [debug line = 20:23] [debug variable = value_in.V]
  call void @llvm.dbg.value(metadata !{float* %value_out_V}, i64 0, metadata !176), !dbg !178 ; [debug line = 21:23] [debug variable = value_out.V]
  call void @llvm.dbg.value(metadata !{i32 %delay}, i64 0, metadata !162), !dbg !163 ; [debug line = 23:6] [debug variable = delay]
  call void @llvm.dbg.value(metadata !{i32 %scale}, i64 0, metadata !47), !dbg !161 ; [debug line = 24:6] [debug variable = scale]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind, !dbg !179 ; [debug line = 28:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !181 ; [debug line = 29:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %delay, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !182 ; [debug line = 30:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %change_V, [5 x i8]* @p_str4, i32 1, i32 1, [5 x i8]* @p_str5, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !183 ; [debug line = 33:1]
  call void (...)* @_ssdm_op_SpecInterface(float* %value_in_V, [5 x i8]* @p_str4, i32 1, i32 1, [5 x i8]* @p_str5, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !184 ; [debug line = 34:1]
  call void (...)* @_ssdm_op_SpecInterface(float* %value_out_V, [5 x i8]* @p_str4, i32 1, i32 1, [5 x i8]* @p_str5, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind, !dbg !185 ; [debug line = 35:1]
  call void @llvm.dbg.value(metadata !{i32* %change_V}, i64 0, metadata !186), !dbg !191 ; [debug line = 101:48@52:2] [debug variable = stream<int>.V]
  call void @llvm.dbg.value(metadata !{i32* %change_V}, i64 0, metadata !193), !dbg !196 ; [debug line = 123:48@102:9@52:2] [debug variable = stream<int>.V]
  %tmp_52 = call i32 @_ssdm_op_Read.axis.volatile.i32P(i32* %change_V), !dbg !199 ; [#uses=1 type=i32] [debug line = 125:9@102:9@52:2]
  call void @llvm.dbg.value(metadata !{i32 %tmp_52}, i64 0, metadata !201), !dbg !199 ; [debug line = 125:9@102:9@52:2] [debug variable = tmp]
  call void @llvm.dbg.value(metadata !{i32 %tmp_52}, i64 0, metadata !202), !dbg !203 ; [debug line = 126:9@102:9@52:2] [debug variable = changevalue]
  %tmp_1 = icmp eq i32 %tmp_52, 0, !dbg !204      ; [#uses=7 type=i1] [debug line = 56:2]
  %delayCount_load = load i32* @delayCount, align 4, !dbg !205 ; [#uses=1 type=i32] [debug line = 74:2]
  %readBuffer1_load = load i32* @readBuffer1, align 4, !dbg !206 ; [#uses=1 type=i32] [debug line = 76:3]
  %readBuffer2_load = load i32* @readBuffer2, align 4, !dbg !208 ; [#uses=1 type=i32] [debug line = 83:4]
  %readBuffer3_load = load i32* @readBuffer3, align 4, !dbg !210 ; [#uses=1 type=i32] [debug line = 90:5]
  %readBuffer4_load = load i32* @readBuffer4, align 4, !dbg !212 ; [#uses=1 type=i32] [debug line = 97:6]
  %writeBuffer_load = load i32* @writeBuffer, align 4, !dbg !214 ; [#uses=1 type=i32] [debug line = 66:2]
  %delayCount_load_s = select i1 %tmp_1, i32 %delayCount_load, i32 0, !dbg !204 ; [#uses=3 type=i32] [debug line = 56:2]
  %not_tmp_1 = xor i1 %tmp_1, true, !dbg !204     ; [#uses=12 type=i1] [debug line = 56:2]
  %readBuffer1_load_s = select i1 %tmp_1, i32 %readBuffer1_load, i32 0, !dbg !204 ; [#uses=4 type=i32] [debug line = 56:2]
  %readBuffer2_load_s = select i1 %tmp_1, i32 %readBuffer2_load, i32 0, !dbg !204 ; [#uses=4 type=i32] [debug line = 56:2]
  %readBuffer3_load_s = select i1 %tmp_1, i32 %readBuffer3_load, i32 0, !dbg !204 ; [#uses=4 type=i32] [debug line = 56:2]
  %readBuffer4_load_s = select i1 %tmp_1, i32 %readBuffer4_load, i32 0, !dbg !204 ; [#uses=3 type=i32] [debug line = 56:2]
  %writeBuffer_load_s = select i1 %tmp_1, i32 %writeBuffer_load, i32 0, !dbg !204 ; [#uses=4 type=i32] [debug line = 56:2]
  %tmp_2 = icmp slt i32 %writeBuffer_load_s, 48000, !dbg !214 ; [#uses=1 type=i1] [debug line = 66:2]
  br i1 %tmp_2, label %0, label %._crit_edge9, !dbg !214 ; [debug line = 66:2]

; <label>:0                                       ; preds = %._crit_edge
  %tmp_3 = sext i32 %writeBuffer_load_s to i64, !dbg !215 ; [#uses=1 type=i64] [debug line = 68:3]
  %buffer_addr_5 = getelementptr inbounds [48000 x float]* @buffer, i64 0, i64 %tmp_3, !dbg !215 ; [#uses=1 type=float*] [debug line = 68:3]
  call void @llvm.dbg.value(metadata !{float* %value_in_V}, i64 0, metadata !217), !dbg !222 ; [debug line = 101:48@68:3] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float* %buffer_addr_5}, i64 0, metadata !223), !dbg !224 ; [debug line = 101:75@68:3] [debug variable = rdata]
  call void @llvm.dbg.value(metadata !{float* %value_in_V}, i64 0, metadata !225), !dbg !228 ; [debug line = 123:48@102:9@68:3] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float* %buffer_addr_5}, i64 0, metadata !231), !dbg !232 ; [debug line = 123:67@102:9@68:3] [debug variable = dout]
  %tmp = call float @_ssdm_op_Read.axis.volatile.floatP(float* %value_in_V), !dbg !233 ; [#uses=1 type=float] [debug line = 125:9@102:9@68:3]
  call void @llvm.dbg.value(metadata !{float %tmp}, i64 0, metadata !235), !dbg !233 ; [debug line = 125:9@102:9@68:3] [debug variable = tmp]
  store float %tmp, float* %buffer_addr_5, align 4, !dbg !236 ; [debug line = 126:9@102:9@68:3]
  %tmp_5 = add nsw i32 %writeBuffer_load_s, 1, !dbg !237 ; [#uses=2 type=i32] [debug line = 69:3]
  br label %._crit_edge9, !dbg !238               ; [debug line = 71:2]

._crit_edge9:                                     ; preds = %0, %._crit_edge
  %writeBuffer_flag_1 = phi i1 [ true, %0 ], [ %not_tmp_1, %._crit_edge ] ; [#uses=1 type=i1]
  %writeBuffer_new_1 = phi i32 [ %tmp_5, %0 ], [ 0, %._crit_edge ] ; [#uses=1 type=i32]
  %tmp_6 = phi i32 [ %tmp_5, %0 ], [ %writeBuffer_load_s, %._crit_edge ] ; [#uses=6 type=i32]
  %tmp_7 = icmp sgt i32 %delayCount_load_s, %delay_read, !dbg !205 ; [#uses=9 type=i1] [debug line = 74:2]
  br i1 %writeBuffer_flag_1, label %mergeST9, label %._crit_edge9.new_ifconv

mergeST1:                                         ; preds = %._crit_edge10.new4
  store i32 %readBuffer1_new_2, i32* @readBuffer1, align 4, !dbg !239 ; [debug line = 58:3]
  br label %._crit_edge10.new2

._crit_edge10.new2:                               ; preds = %._crit_edge10.new4, %mergeST1
  store i32 %tmp_48, i32* @delayCount, align 4, !dbg !241 ; [debug line = 57:3]
  ret void, !dbg !242                             ; [debug line = 119:1]

mergeST3:                                         ; preds = %._crit_edge10.new6
  store i32 %readBuffer2_new_2, i32* @readBuffer2, align 4, !dbg !243 ; [debug line = 59:3]
  br label %._crit_edge10.new4

._crit_edge10.new4:                               ; preds = %._crit_edge10.new6, %mergeST3
  br i1 %readBuffer1_flag_2, label %mergeST1, label %._crit_edge10.new2

mergeST5:                                         ; preds = %._crit_edge10.new8
  store i32 %readBuffer3_new_2, i32* @readBuffer3, align 4, !dbg !244 ; [debug line = 60:3]
  br label %._crit_edge10.new6

._crit_edge10.new6:                               ; preds = %._crit_edge10.new8, %mergeST5
  br i1 %readBuffer2_flag_2, label %mergeST3, label %._crit_edge10.new4

mergeST7:                                         ; preds = %._crit_edge9.new_ifconv
  store i32 %readBuffer4_new_2, i32* @readBuffer4, align 4, !dbg !245 ; [debug line = 61:3]
  br label %._crit_edge10.new8

._crit_edge10.new8:                               ; preds = %._crit_edge9.new_ifconv, %mergeST7
  br i1 %readBuffer3_flag_2, label %mergeST5, label %._crit_edge10.new6

mergeST9:                                         ; preds = %._crit_edge9
  store i32 %writeBuffer_new_1, i32* @writeBuffer, align 4, !dbg !246 ; [debug line = 62:3]
  br label %._crit_edge9.new_ifconv

._crit_edge9.new_ifconv:                          ; preds = %mergeST9, %._crit_edge9
  %tmp_8 = icmp sgt i32 %readBuffer1_load_s, %tmp_6, !dbg !206 ; [#uses=4 type=i1] [debug line = 76:3]
  %tmp_9 = sitofp i32 %scale_read to double, !dbg !247 ; [#uses=4 type=double] [debug line = 77:4]
  %tmp_s = fmul double %tmp_9, 5.000000e-01, !dbg !247 ; [#uses=1 type=double] [debug line = 77:4]
  %tmp_4 = sext i32 %readBuffer1_load_s to i64, !dbg !247 ; [#uses=1 type=i64] [debug line = 77:4]
  %buffer_addr = getelementptr inbounds [48000 x float]* @buffer, i64 0, i64 %tmp_4, !dbg !247 ; [#uses=1 type=float*] [debug line = 77:4]
  %buffer_load = load float* %buffer_addr, align 4, !dbg !247 ; [#uses=1 type=float] [debug line = 77:4]
  %tmp_10 = fpext float %buffer_load to double, !dbg !247 ; [#uses=1 type=double] [debug line = 77:4]
  %tmp_11 = fmul double %tmp_s, %tmp_10, !dbg !247 ; [#uses=1 type=double] [debug line = 77:4]
  %tmp_12 = fadd double %tmp_11, 0.000000e+00, !dbg !247 ; [#uses=1 type=double] [debug line = 77:4]
  %outAccumulate = fptrunc double %tmp_12 to float, !dbg !247 ; [#uses=1 type=float] [debug line = 77:4]
  call void @llvm.dbg.value(metadata !{float %outAccumulate}, i64 0, metadata !249), !dbg !247 ; [debug line = 77:4] [debug variable = outAccumulate]
  %tmp_13 = add nsw i32 %readBuffer1_load_s, 1, !dbg !250 ; [#uses=2 type=i32] [debug line = 78:4]
  %not_tmp_8 = xor i1 %tmp_8, true                ; [#uses=1 type=i1]
  %readBuffer1_flag_1 = or i1 %not_tmp_8, %not_tmp_1 ; [#uses=2 type=i1]
  %readBuffer1_new_1 = select i1 %tmp_8, i32 0, i32 %tmp_13 ; [#uses=2 type=i32]
  %tmp_14 = select i1 %tmp_8, i32 %readBuffer1_load_s, i32 %tmp_13 ; [#uses=1 type=i32]
  %outAccumulate1 = select i1 %tmp_8, float 0.000000e+00, float %outAccumulate ; [#uses=3 type=float]
  %tmp_15 = icmp sgt i32 %tmp_14, %delay_read, !dbg !251 ; [#uses=2 type=i1] [debug line = 81:3]
  %tmp_16 = icmp sgt i32 %readBuffer2_load_s, %tmp_6, !dbg !208 ; [#uses=4 type=i1] [debug line = 83:4]
  %tmp_17 = fmul double %tmp_9, 2.500000e-01, !dbg !252 ; [#uses=1 type=double] [debug line = 84:5]
  %tmp_18 = sext i32 %readBuffer2_load_s to i64, !dbg !252 ; [#uses=1 type=i64] [debug line = 84:5]
  %buffer_addr_1 = getelementptr inbounds [48000 x float]* @buffer, i64 0, i64 %tmp_18, !dbg !252 ; [#uses=1 type=float*] [debug line = 84:5]
  %buffer_load_1 = load float* %buffer_addr_1, align 4, !dbg !252 ; [#uses=1 type=float] [debug line = 84:5]
  %tmp_19 = fpext float %buffer_load_1 to double, !dbg !252 ; [#uses=1 type=double] [debug line = 84:5]
  %tmp_20 = fmul double %tmp_17, %tmp_19, !dbg !252 ; [#uses=1 type=double] [debug line = 84:5]
  %tmp_21 = fpext float %outAccumulate1 to double, !dbg !252 ; [#uses=1 type=double] [debug line = 84:5]
  %tmp_22 = fadd double %tmp_21, %tmp_20, !dbg !252 ; [#uses=1 type=double] [debug line = 84:5]
  %outAccumulate_4 = fptrunc double %tmp_22 to float, !dbg !252 ; [#uses=1 type=float] [debug line = 84:5]
  call void @llvm.dbg.value(metadata !{float %outAccumulate_4}, i64 0, metadata !249), !dbg !252 ; [debug line = 84:5] [debug variable = outAccumulate]
  %tmp_23 = add nsw i32 %readBuffer2_load_s, 1, !dbg !254 ; [#uses=2 type=i32] [debug line = 85:5]
  %not_tmp_s = xor i1 %tmp_16, true               ; [#uses=1 type=i1]
  %readBuffer2_flag_1 = or i1 %not_tmp_s, %not_tmp_1 ; [#uses=2 type=i1]
  %readBuffer2_new_1 = select i1 %tmp_16, i32 0, i32 %tmp_23 ; [#uses=2 type=i32]
  %tmp_24 = select i1 %tmp_16, i32 %readBuffer2_load_s, i32 %tmp_23 ; [#uses=1 type=i32]
  %outAccumulate_1 = select i1 %tmp_16, float %outAccumulate1, float %outAccumulate_4 ; [#uses=3 type=float]
  %tmp_25 = icmp sgt i32 %tmp_24, %delay_read, !dbg !255 ; [#uses=2 type=i1] [debug line = 88:4]
  %tmp_26 = icmp sgt i32 %readBuffer3_load_s, %tmp_6, !dbg !210 ; [#uses=4 type=i1] [debug line = 90:5]
  %tmp_27 = fmul double %tmp_9, 1.250000e-01, !dbg !256 ; [#uses=1 type=double] [debug line = 91:6]
  %tmp_28 = sext i32 %readBuffer3_load_s to i64, !dbg !256 ; [#uses=1 type=i64] [debug line = 91:6]
  %buffer_addr_2 = getelementptr inbounds [48000 x float]* @buffer, i64 0, i64 %tmp_28, !dbg !256 ; [#uses=1 type=float*] [debug line = 91:6]
  %buffer_load_2 = load float* %buffer_addr_2, align 4, !dbg !256 ; [#uses=1 type=float] [debug line = 91:6]
  %tmp_29 = fpext float %buffer_load_2 to double, !dbg !256 ; [#uses=1 type=double] [debug line = 91:6]
  %tmp_30 = fmul double %tmp_27, %tmp_29, !dbg !256 ; [#uses=1 type=double] [debug line = 91:6]
  %tmp_31 = fpext float %outAccumulate_1 to double, !dbg !256 ; [#uses=1 type=double] [debug line = 91:6]
  %tmp_32 = fadd double %tmp_31, %tmp_30, !dbg !256 ; [#uses=1 type=double] [debug line = 91:6]
  %outAccumulate_5 = fptrunc double %tmp_32 to float, !dbg !256 ; [#uses=1 type=float] [debug line = 91:6]
  call void @llvm.dbg.value(metadata !{float %outAccumulate_5}, i64 0, metadata !249), !dbg !256 ; [debug line = 91:6] [debug variable = outAccumulate]
  %tmp_33 = add nsw i32 %readBuffer3_load_s, 1, !dbg !258 ; [#uses=2 type=i32] [debug line = 92:6]
  %not_tmp_2 = xor i1 %tmp_26, true               ; [#uses=1 type=i1]
  %readBuffer3_flag_1 = or i1 %not_tmp_2, %not_tmp_1 ; [#uses=2 type=i1]
  %readBuffer3_new_1 = select i1 %tmp_26, i32 0, i32 %tmp_33 ; [#uses=2 type=i32]
  %tmp_34 = select i1 %tmp_26, i32 %readBuffer3_load_s, i32 %tmp_33 ; [#uses=2 type=i32]
  %outAccumulate_2 = select i1 %tmp_26, float %outAccumulate_1, float %outAccumulate_5 ; [#uses=3 type=float]
  %tmp_35 = icmp sgt i32 %tmp_34, %delay_read, !dbg !259 ; [#uses=1 type=i1] [debug line = 95:5]
  %tmp_36 = icmp sgt i32 %readBuffer4_load_s, %tmp_6, !dbg !212 ; [#uses=3 type=i1] [debug line = 97:6]
  %tmp_37 = fmul double %tmp_9, 6.250000e-02, !dbg !260 ; [#uses=1 type=double] [debug line = 98:7]
  %tmp_38 = sext i32 %readBuffer4_load_s to i64, !dbg !260 ; [#uses=1 type=i64] [debug line = 98:7]
  %buffer_addr_3 = getelementptr inbounds [48000 x float]* @buffer, i64 0, i64 %tmp_38, !dbg !260 ; [#uses=1 type=float*] [debug line = 98:7]
  %buffer_load_3 = load float* %buffer_addr_3, align 4, !dbg !260 ; [#uses=1 type=float] [debug line = 98:7]
  %tmp_39 = fpext float %buffer_load_3 to double, !dbg !260 ; [#uses=1 type=double] [debug line = 98:7]
  %tmp_40 = fmul double %tmp_37, %tmp_39, !dbg !260 ; [#uses=1 type=double] [debug line = 98:7]
  %tmp_41 = fpext float %outAccumulate_2 to double, !dbg !260 ; [#uses=1 type=double] [debug line = 98:7]
  %tmp_42 = fadd double %tmp_41, %tmp_40, !dbg !260 ; [#uses=1 type=double] [debug line = 98:7]
  %outAccumulate_6 = fptrunc double %tmp_42 to float, !dbg !260 ; [#uses=1 type=float] [debug line = 98:7]
  call void @llvm.dbg.value(metadata !{float %outAccumulate_6}, i64 0, metadata !249), !dbg !260 ; [debug line = 98:7] [debug variable = outAccumulate]
  %tmp_43 = add nsw i32 %readBuffer4_load_s, 1, !dbg !262 ; [#uses=1 type=i32] [debug line = 99:7]
  %not_tmp_3 = xor i1 %tmp_36, true               ; [#uses=1 type=i1]
  %outAccumulate_3 = select i1 %tmp_36, float %outAccumulate_2, float %outAccumulate_6 ; [#uses=1 type=float]
  %tmp_44 = icmp eq i32 %tmp_34, %tmp_6, !dbg !263 ; [#uses=9 type=i1] [debug line = 103:6]
  %p_readBuffer1_flag_1 = or i1 %tmp_44, %readBuffer1_flag_1, !dbg !263 ; [#uses=1 type=i1] [debug line = 103:6]
  %p_readBuffer1_new_1 = select i1 %tmp_44, i32 0, i32 %readBuffer1_new_1, !dbg !263 ; [#uses=1 type=i32] [debug line = 103:6]
  %p_readBuffer2_flag_1 = or i1 %tmp_44, %readBuffer2_flag_1, !dbg !263 ; [#uses=1 type=i1] [debug line = 103:6]
  %p_readBuffer2_new_1 = select i1 %tmp_44, i32 0, i32 %readBuffer2_new_1, !dbg !263 ; [#uses=1 type=i32] [debug line = 103:6]
  %p_readBuffer3_flag_1 = or i1 %tmp_44, %readBuffer3_flag_1, !dbg !263 ; [#uses=1 type=i1] [debug line = 103:6]
  %p_readBuffer3_new_1 = select i1 %tmp_44, i32 0, i32 %readBuffer3_new_1, !dbg !263 ; [#uses=1 type=i32] [debug line = 103:6]
  %tmp5 = or i1 %tmp_44, %not_tmp_1, !dbg !263    ; [#uses=1 type=i1] [debug line = 103:6]
  %p_readBuffer4_flag_1 = or i1 %tmp5, %not_tmp_3, !dbg !263 ; [#uses=1 type=i1] [debug line = 103:6]
  %tmp_45 = or i1 %tmp_44, %tmp_36, !dbg !263     ; [#uses=1 type=i1] [debug line = 103:6]
  %p_readBuffer4_new_1 = select i1 %tmp_45, i32 0, i32 %tmp_43, !dbg !263 ; [#uses=1 type=i32] [debug line = 103:6]
  %p_delayCount_load_s = select i1 %tmp_44, i32 0, i32 %delayCount_load_s, !dbg !263 ; [#uses=1 type=i32] [debug line = 103:6]
  %sel_tmp8 = select i1 %tmp_7, i1 %readBuffer1_flag_1, i1 %not_tmp_1 ; [#uses=1 type=i1]
  %sel_tmp9 = and i1 %tmp_7, %tmp_15              ; [#uses=2 type=i1]
  %tmp6 = and i1 %tmp_25, %tmp_35                 ; [#uses=1 type=i1]
  %sel_tmp = and i1 %tmp6, %sel_tmp9              ; [#uses=10 type=i1]
  %readBuffer1_flag_2 = select i1 %sel_tmp, i1 %p_readBuffer1_flag_1, i1 %sel_tmp8 ; [#uses=1 type=i1]
  %sel_tmp1 = select i1 %tmp_7, i32 %readBuffer1_new_1, i32 0 ; [#uses=1 type=i32]
  %readBuffer1_new_2 = select i1 %sel_tmp, i32 %p_readBuffer1_new_1, i32 %sel_tmp1 ; [#uses=1 type=i32]
  %sel_tmp2 = xor i1 %tmp_15, true, !dbg !251     ; [#uses=1 type=i1] [debug line = 81:3]
  %sel_tmp3 = and i1 %tmp_7, %sel_tmp2            ; [#uses=5 type=i1]
  %sel_tmp4 = select i1 %sel_tmp3, i1 %not_tmp_1, i1 %readBuffer2_flag_1 ; [#uses=1 type=i1]
  %sel_tmp5 = select i1 %tmp_7, i1 %sel_tmp4, i1 %not_tmp_1 ; [#uses=1 type=i1]
  %readBuffer2_flag_2 = select i1 %sel_tmp, i1 %p_readBuffer2_flag_1, i1 %sel_tmp5 ; [#uses=1 type=i1]
  %sel_tmp6 = select i1 %sel_tmp3, i32 0, i32 %readBuffer2_new_1 ; [#uses=1 type=i32]
  %sel_tmp7 = select i1 %tmp_7, i32 %sel_tmp6, i32 0 ; [#uses=1 type=i32]
  %readBuffer2_new_2 = select i1 %sel_tmp, i32 %p_readBuffer2_new_1, i32 %sel_tmp7 ; [#uses=1 type=i32]
  %sel_tmp10 = xor i1 %tmp_25, true, !dbg !255    ; [#uses=1 type=i1] [debug line = 88:4]
  %sel_tmp11 = and i1 %sel_tmp9, %sel_tmp10       ; [#uses=3 type=i1]
  %sel_tmp12 = select i1 %sel_tmp11, i1 %not_tmp_1, i1 %readBuffer3_flag_1 ; [#uses=1 type=i1]
  %sel_tmp13 = select i1 %sel_tmp3, i1 %not_tmp_1, i1 %sel_tmp12 ; [#uses=1 type=i1]
  %sel_tmp14 = select i1 %tmp_7, i1 %sel_tmp13, i1 %not_tmp_1 ; [#uses=1 type=i1]
  %readBuffer3_flag_2 = select i1 %sel_tmp, i1 %p_readBuffer3_flag_1, i1 %sel_tmp14 ; [#uses=1 type=i1]
  %tmp_46 = or i1 %sel_tmp3, %sel_tmp11           ; [#uses=1 type=i1]
  %sel_tmp15 = select i1 %tmp_46, i32 0, i32 %readBuffer3_new_1 ; [#uses=1 type=i32]
  %sel_tmp16 = select i1 %tmp_7, i32 %sel_tmp15, i32 0 ; [#uses=1 type=i32]
  %readBuffer3_new_2 = select i1 %sel_tmp, i32 %p_readBuffer3_new_1, i32 %sel_tmp16 ; [#uses=1 type=i32]
  %readBuffer4_flag_2 = select i1 %sel_tmp, i1 %p_readBuffer4_flag_1, i1 %not_tmp_1 ; [#uses=1 type=i1]
  %readBuffer4_new_2 = select i1 %sel_tmp, i32 %p_readBuffer4_new_1, i32 0 ; [#uses=1 type=i32]
  %tmp_47 = select i1 %sel_tmp, i32 %p_delayCount_load_s, i32 %delayCount_load_s ; [#uses=1 type=i32]
  %sel_tmp17 = select i1 %sel_tmp11, float %outAccumulate_1, float %outAccumulate_2 ; [#uses=1 type=float]
  %sel_tmp18 = select i1 %sel_tmp3, float %outAccumulate1, float %sel_tmp17 ; [#uses=1 type=float]
  %sel_tmp19 = select i1 %tmp_7, float %sel_tmp18, float 0.000000e+00 ; [#uses=1 type=float]
  %outAccumulate_7 = select i1 %sel_tmp, float %outAccumulate_3, float %sel_tmp19 ; [#uses=1 type=float]
  %tmp_48 = add nsw i32 %tmp_47, 1, !dbg !264     ; [#uses=1 type=i32] [debug line = 116:2]
  %tmp_49 = add nsw i32 %tmp_6, -1, !dbg !265     ; [#uses=1 type=i32] [debug line = 118:2]
  %tmp_50 = sext i32 %tmp_49 to i64, !dbg !265    ; [#uses=1 type=i64] [debug line = 118:2]
  %buffer_addr_4 = getelementptr inbounds [48000 x float]* @buffer, i64 0, i64 %tmp_50, !dbg !265 ; [#uses=1 type=float*] [debug line = 118:2]
  %buffer_load_4 = load float* %buffer_addr_4, align 4, !dbg !265 ; [#uses=1 type=float] [debug line = 118:2]
  %tmp_51 = fadd float %buffer_load_4, %outAccumulate_7, !dbg !265 ; [#uses=1 type=float] [debug line = 118:2]
  call void @llvm.dbg.value(metadata !{float* %value_out_V}, i64 0, metadata !266), !dbg !269 ; [debug line = 105:48@118:2] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float* %value_out_V}, i64 0, metadata !270), !dbg !273 ; [debug line = 144:48@106:9@118:2] [debug variable = stream<float>.V]
  call void @llvm.dbg.value(metadata !{float %tmp_51}, i64 0, metadata !276), !dbg !278 ; [debug line = 145:31@106:9@118:2] [debug variable = tmp]
  call void @_ssdm_op_Write.axis.volatile.floatP(float* %value_out_V, float %tmp_51), !dbg !279 ; [debug line = 146:9@106:9@118:2]
  br i1 %readBuffer4_flag_2, label %mergeST7, label %._crit_edge10.new8
}

!opencl.kernels = !{!0, !7, !13, !15, !18, !20, !22}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

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
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 31, metadata !25}
!25 = metadata !{metadata !26}
!26 = metadata !{metadata !"change.V", metadata !27, metadata !"int", i32 0, i32 31}
!27 = metadata !{metadata !28}
!28 = metadata !{i32 0, i32 0, i32 1}
!29 = metadata !{metadata !30}
!30 = metadata !{i32 0, i32 31, metadata !31}
!31 = metadata !{metadata !32}
!32 = metadata !{metadata !"value_in.V", metadata !27, metadata !"float", i32 0, i32 31}
!33 = metadata !{metadata !34}
!34 = metadata !{i32 0, i32 31, metadata !35}
!35 = metadata !{metadata !36}
!36 = metadata !{metadata !"value_out.V", metadata !27, metadata !"float", i32 0, i32 31}
!37 = metadata !{metadata !38}
!38 = metadata !{i32 0, i32 31, metadata !39}
!39 = metadata !{metadata !40}
!40 = metadata !{metadata !"delay", metadata !41, metadata !"int", i32 0, i32 31}
!41 = metadata !{metadata !42}
!42 = metadata !{i32 0, i32 0, i32 0}
!43 = metadata !{metadata !44}
!44 = metadata !{i32 0, i32 31, metadata !45}
!45 = metadata !{metadata !46}
!46 = metadata !{metadata !"scale", metadata !41, metadata !"int", i32 0, i32 31}
!47 = metadata !{i32 786689, metadata !48, metadata !"scale", metadata !49, i32 83886104, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!48 = metadata !{i32 786478, i32 0, metadata !49, metadata !"Echo", metadata !"Echo", metadata !"_Z4EchoRN3hls6streamIiEERNS0_IfEES4_ii", metadata !49, i32 17, metadata !50, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !63, i32 26} ; [ DW_TAG_subprogram ]
!49 = metadata !{i32 786473, metadata !"src/Echo.cpp", metadata !"/home/austin/ECE1373_GhostSynth/modules/echo", null} ; [ DW_TAG_file_type ]
!50 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !51, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!51 = metadata !{null, metadata !52, metadata !111, metadata !111, metadata !58, metadata !58}
!52 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_reference_type ]
!53 = metadata !{i32 786434, metadata !54, metadata !"stream<int>", metadata !55, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !56, i32 0, null, metadata !109} ; [ DW_TAG_class_type ]
!54 = metadata !{i32 786489, null, metadata !"hls", metadata !55, i32 69} ; [ DW_TAG_namespace ]
!55 = metadata !{i32 786473, metadata !"/home/austin/Desktop/Vivado_HLS/2017.2/common/technology/autopilot/hls_stream.h", metadata !"/home/austin/ECE1373_GhostSynth/modules/echo", null} ; [ DW_TAG_file_type ]
!56 = metadata !{metadata !57, metadata !59, metadata !65, metadata !71, metadata !76, metadata !79, metadata !83, metadata !88, metadata !93, metadata !94, metadata !95, metadata !98, metadata !101, metadata !102, metadata !105}
!57 = metadata !{i32 786445, metadata !53, metadata !"V", metadata !55, i32 163, i64 32, i64 32, i64 0, i32 0, metadata !58} ; [ DW_TAG_member ]
!58 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!59 = metadata !{i32 786478, i32 0, metadata !53, metadata !"stream", metadata !"stream", metadata !"", metadata !55, i32 83, metadata !60, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !63, i32 83} ; [ DW_TAG_subprogram ]
!60 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !61, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!61 = metadata !{null, metadata !62}
!62 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !53} ; [ DW_TAG_pointer_type ]
!63 = metadata !{metadata !64}
!64 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!65 = metadata !{i32 786478, i32 0, metadata !53, metadata !"stream", metadata !"stream", metadata !"", metadata !55, i32 86, metadata !66, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !63, i32 86} ; [ DW_TAG_subprogram ]
!66 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !67, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!67 = metadata !{null, metadata !62, metadata !68}
!68 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !69} ; [ DW_TAG_pointer_type ]
!69 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !70} ; [ DW_TAG_const_type ]
!70 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!71 = metadata !{i32 786478, i32 0, metadata !53, metadata !"stream", metadata !"stream", metadata !"", metadata !55, i32 91, metadata !72, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !63, i32 91} ; [ DW_TAG_subprogram ]
!72 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !73, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!73 = metadata !{null, metadata !62, metadata !74}
!74 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !75} ; [ DW_TAG_reference_type ]
!75 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_const_type ]
!76 = metadata !{i32 786478, i32 0, metadata !53, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIiEaSERKS1_", metadata !55, i32 94, metadata !77, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !63, i32 94} ; [ DW_TAG_subprogram ]
!77 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !78, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!78 = metadata !{metadata !52, metadata !62, metadata !74}
!79 = metadata !{i32 786478, i32 0, metadata !53, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIiErsERi", metadata !55, i32 101, metadata !80, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !63, i32 101} ; [ DW_TAG_subprogram ]
!80 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !81, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!81 = metadata !{null, metadata !62, metadata !82}
!82 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !58} ; [ DW_TAG_reference_type ]
!83 = metadata !{i32 786478, i32 0, metadata !53, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIiElsERKi", metadata !55, i32 105, metadata !84, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !63, i32 105} ; [ DW_TAG_subprogram ]
!84 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !85, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!85 = metadata !{null, metadata !62, metadata !86}
!86 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !87} ; [ DW_TAG_reference_type ]
!87 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !58} ; [ DW_TAG_const_type ]
!88 = metadata !{i32 786478, i32 0, metadata !53, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIiE5emptyEv", metadata !55, i32 112, metadata !89, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !63, i32 112} ; [ DW_TAG_subprogram ]
!89 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !90, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!90 = metadata !{metadata !91, metadata !92}
!91 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!92 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !75} ; [ DW_TAG_pointer_type ]
!93 = metadata !{i32 786478, i32 0, metadata !53, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIiE4fullEv", metadata !55, i32 117, metadata !89, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !63, i32 117} ; [ DW_TAG_subprogram ]
!94 = metadata !{i32 786478, i32 0, metadata !53, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readERi", metadata !55, i32 123, metadata !80, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !63, i32 123} ; [ DW_TAG_subprogram ]
!95 = metadata !{i32 786478, i32 0, metadata !53, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readEv", metadata !55, i32 129, metadata !96, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !63, i32 129} ; [ DW_TAG_subprogram ]
!96 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !97, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!97 = metadata !{metadata !58, metadata !62}
!98 = metadata !{i32 786478, i32 0, metadata !53, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIiE7read_nbERi", metadata !55, i32 136, metadata !99, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !63, i32 136} ; [ DW_TAG_subprogram ]
!99 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !100, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!100 = metadata !{metadata !91, metadata !62, metadata !82}
!101 = metadata !{i32 786478, i32 0, metadata !53, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIiE5writeERKi", metadata !55, i32 144, metadata !84, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !63, i32 144} ; [ DW_TAG_subprogram ]
!102 = metadata !{i32 786478, i32 0, metadata !53, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIiE8write_nbERKi", metadata !55, i32 150, metadata !103, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !63, i32 150} ; [ DW_TAG_subprogram ]
!103 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !104, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!104 = metadata !{metadata !91, metadata !62, metadata !86}
!105 = metadata !{i32 786478, i32 0, metadata !53, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIiE4sizeEv", metadata !55, i32 157, metadata !106, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !63, i32 157} ; [ DW_TAG_subprogram ]
!106 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !107, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!107 = metadata !{metadata !108, metadata !62}
!108 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!109 = metadata !{metadata !110}
!110 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !58, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!111 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !112} ; [ DW_TAG_reference_type ]
!112 = metadata !{i32 786434, metadata !54, metadata !"stream<float>", metadata !55, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !113, i32 0, null, metadata !159} ; [ DW_TAG_class_type ]
!113 = metadata !{metadata !114, metadata !116, metadata !120, metadata !123, metadata !128, metadata !131, metadata !135, metadata !140, metadata !144, metadata !145, metadata !146, metadata !149, metadata !152, metadata !153, metadata !156}
!114 = metadata !{i32 786445, metadata !112, metadata !"V", metadata !55, i32 163, i64 32, i64 32, i64 0, i32 0, metadata !115} ; [ DW_TAG_member ]
!115 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!116 = metadata !{i32 786478, i32 0, metadata !112, metadata !"stream", metadata !"stream", metadata !"", metadata !55, i32 83, metadata !117, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !63, i32 83} ; [ DW_TAG_subprogram ]
!117 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !118, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!118 = metadata !{null, metadata !119}
!119 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !112} ; [ DW_TAG_pointer_type ]
!120 = metadata !{i32 786478, i32 0, metadata !112, metadata !"stream", metadata !"stream", metadata !"", metadata !55, i32 86, metadata !121, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !63, i32 86} ; [ DW_TAG_subprogram ]
!121 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !122, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!122 = metadata !{null, metadata !119, metadata !68}
!123 = metadata !{i32 786478, i32 0, metadata !112, metadata !"stream", metadata !"stream", metadata !"", metadata !55, i32 91, metadata !124, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !63, i32 91} ; [ DW_TAG_subprogram ]
!124 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !125, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!125 = metadata !{null, metadata !119, metadata !126}
!126 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !127} ; [ DW_TAG_reference_type ]
!127 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !112} ; [ DW_TAG_const_type ]
!128 = metadata !{i32 786478, i32 0, metadata !112, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIfEaSERKS1_", metadata !55, i32 94, metadata !129, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !63, i32 94} ; [ DW_TAG_subprogram ]
!129 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !130, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!130 = metadata !{metadata !111, metadata !119, metadata !126}
!131 = metadata !{i32 786478, i32 0, metadata !112, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIfErsERf", metadata !55, i32 101, metadata !132, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !63, i32 101} ; [ DW_TAG_subprogram ]
!132 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !133, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!133 = metadata !{null, metadata !119, metadata !134}
!134 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !115} ; [ DW_TAG_reference_type ]
!135 = metadata !{i32 786478, i32 0, metadata !112, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIfElsERKf", metadata !55, i32 105, metadata !136, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !63, i32 105} ; [ DW_TAG_subprogram ]
!136 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !137, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!137 = metadata !{null, metadata !119, metadata !138}
!138 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !139} ; [ DW_TAG_reference_type ]
!139 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !115} ; [ DW_TAG_const_type ]
!140 = metadata !{i32 786478, i32 0, metadata !112, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIfE5emptyEv", metadata !55, i32 112, metadata !141, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !63, i32 112} ; [ DW_TAG_subprogram ]
!141 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !142, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!142 = metadata !{metadata !91, metadata !143}
!143 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !127} ; [ DW_TAG_pointer_type ]
!144 = metadata !{i32 786478, i32 0, metadata !112, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIfE4fullEv", metadata !55, i32 117, metadata !141, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !63, i32 117} ; [ DW_TAG_subprogram ]
!145 = metadata !{i32 786478, i32 0, metadata !112, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readERf", metadata !55, i32 123, metadata !132, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !63, i32 123} ; [ DW_TAG_subprogram ]
!146 = metadata !{i32 786478, i32 0, metadata !112, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readEv", metadata !55, i32 129, metadata !147, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !63, i32 129} ; [ DW_TAG_subprogram ]
!147 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !148, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!148 = metadata !{metadata !115, metadata !119}
!149 = metadata !{i32 786478, i32 0, metadata !112, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIfE7read_nbERf", metadata !55, i32 136, metadata !150, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !63, i32 136} ; [ DW_TAG_subprogram ]
!150 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !151, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!151 = metadata !{metadata !91, metadata !119, metadata !134}
!152 = metadata !{i32 786478, i32 0, metadata !112, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !55, i32 144, metadata !136, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !63, i32 144} ; [ DW_TAG_subprogram ]
!153 = metadata !{i32 786478, i32 0, metadata !112, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIfE8write_nbERKf", metadata !55, i32 150, metadata !154, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !63, i32 150} ; [ DW_TAG_subprogram ]
!154 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !155, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!155 = metadata !{metadata !91, metadata !119, metadata !138}
!156 = metadata !{i32 786478, i32 0, metadata !112, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIfE4sizeEv", metadata !55, i32 157, metadata !157, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !63, i32 157} ; [ DW_TAG_subprogram ]
!157 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !158, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!158 = metadata !{metadata !108, metadata !119}
!159 = metadata !{metadata !160}
!160 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !115, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!161 = metadata !{i32 24, i32 6, metadata !48, null}
!162 = metadata !{i32 786689, metadata !48, metadata !"delay", metadata !49, i32 67108887, metadata !58, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!163 = metadata !{i32 23, i32 6, metadata !48, null}
!164 = metadata !{i32 790531, metadata !165, metadata !"change.V", null, i32 19, metadata !166, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!165 = metadata !{i32 786689, metadata !48, metadata !"change", metadata !49, i32 16777235, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!166 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !167} ; [ DW_TAG_pointer_type ]
!167 = metadata !{i32 786438, metadata !54, metadata !"stream<int>", metadata !55, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !168, i32 0, null, metadata !109} ; [ DW_TAG_class_field_type ]
!168 = metadata !{metadata !57}
!169 = metadata !{i32 19, i32 21, metadata !48, null}
!170 = metadata !{i32 790531, metadata !171, metadata !"value_in.V", null, i32 20, metadata !172, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!171 = metadata !{i32 786689, metadata !48, metadata !"value_in", metadata !49, i32 33554452, metadata !111, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!172 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !173} ; [ DW_TAG_pointer_type ]
!173 = metadata !{i32 786438, metadata !54, metadata !"stream<float>", metadata !55, i32 79, i64 32, i64 32, i32 0, i32 0, null, metadata !174, i32 0, null, metadata !159} ; [ DW_TAG_class_field_type ]
!174 = metadata !{metadata !114}
!175 = metadata !{i32 20, i32 23, metadata !48, null}
!176 = metadata !{i32 790531, metadata !177, metadata !"value_out.V", null, i32 21, metadata !172, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!177 = metadata !{i32 786689, metadata !48, metadata !"value_out", metadata !49, i32 50331669, metadata !111, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!178 = metadata !{i32 21, i32 23, metadata !48, null}
!179 = metadata !{i32 28, i32 1, metadata !180, null}
!180 = metadata !{i32 786443, metadata !48, i32 26, i32 2, metadata !49, i32 0} ; [ DW_TAG_lexical_block ]
!181 = metadata !{i32 29, i32 1, metadata !180, null}
!182 = metadata !{i32 30, i32 1, metadata !180, null}
!183 = metadata !{i32 33, i32 1, metadata !180, null}
!184 = metadata !{i32 34, i32 1, metadata !180, null}
!185 = metadata !{i32 35, i32 1, metadata !180, null}
!186 = metadata !{i32 790531, metadata !187, metadata !"stream<int>.V", null, i32 101, metadata !190, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!187 = metadata !{i32 786689, metadata !188, metadata !"this", metadata !55, i32 16777317, metadata !189, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!188 = metadata !{i32 786478, i32 0, metadata !54, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIiErsERi", metadata !55, i32 101, metadata !80, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !79, metadata !63, i32 101} ; [ DW_TAG_subprogram ]
!189 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !53} ; [ DW_TAG_pointer_type ]
!190 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !167} ; [ DW_TAG_pointer_type ]
!191 = metadata !{i32 101, i32 48, metadata !188, metadata !192}
!192 = metadata !{i32 52, i32 2, metadata !180, null}
!193 = metadata !{i32 790531, metadata !194, metadata !"stream<int>.V", null, i32 123, metadata !190, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!194 = metadata !{i32 786689, metadata !195, metadata !"this", metadata !55, i32 16777339, metadata !189, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!195 = metadata !{i32 786478, i32 0, metadata !54, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readERi", metadata !55, i32 123, metadata !80, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !94, metadata !63, i32 123} ; [ DW_TAG_subprogram ]
!196 = metadata !{i32 123, i32 48, metadata !195, metadata !197}
!197 = metadata !{i32 102, i32 9, metadata !198, metadata !192}
!198 = metadata !{i32 786443, metadata !188, i32 101, i32 82, metadata !55, i32 16} ; [ DW_TAG_lexical_block ]
!199 = metadata !{i32 125, i32 9, metadata !200, metadata !197}
!200 = metadata !{i32 786443, metadata !195, i32 123, i32 73, metadata !55, i32 17} ; [ DW_TAG_lexical_block ]
!201 = metadata !{i32 786688, metadata !200, metadata !"tmp", metadata !55, i32 124, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!202 = metadata !{i32 786688, metadata !180, metadata !"changevalue", metadata !49, i32 50, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!203 = metadata !{i32 126, i32 9, metadata !200, metadata !197}
!204 = metadata !{i32 56, i32 2, metadata !180, null}
!205 = metadata !{i32 74, i32 2, metadata !180, null}
!206 = metadata !{i32 76, i32 3, metadata !207, null}
!207 = metadata !{i32 786443, metadata !180, i32 74, i32 24, metadata !49, i32 3} ; [ DW_TAG_lexical_block ]
!208 = metadata !{i32 83, i32 4, metadata !209, null}
!209 = metadata !{i32 786443, metadata !207, i32 81, i32 26, metadata !49, i32 5} ; [ DW_TAG_lexical_block ]
!210 = metadata !{i32 90, i32 5, metadata !211, null}
!211 = metadata !{i32 786443, metadata !209, i32 88, i32 27, metadata !49, i32 7} ; [ DW_TAG_lexical_block ]
!212 = metadata !{i32 97, i32 6, metadata !213, null}
!213 = metadata !{i32 786443, metadata !211, i32 95, i32 28, metadata !49, i32 9} ; [ DW_TAG_lexical_block ]
!214 = metadata !{i32 66, i32 2, metadata !180, null}
!215 = metadata !{i32 68, i32 3, metadata !216, null}
!216 = metadata !{i32 786443, metadata !180, i32 66, i32 25, metadata !49, i32 2} ; [ DW_TAG_lexical_block ]
!217 = metadata !{i32 790531, metadata !218, metadata !"stream<float>.V", null, i32 101, metadata !221, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!218 = metadata !{i32 786689, metadata !219, metadata !"this", metadata !55, i32 16777317, metadata !220, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!219 = metadata !{i32 786478, i32 0, metadata !54, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIfErsERf", metadata !55, i32 101, metadata !132, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !131, metadata !63, i32 101} ; [ DW_TAG_subprogram ]
!220 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !112} ; [ DW_TAG_pointer_type ]
!221 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !173} ; [ DW_TAG_pointer_type ]
!222 = metadata !{i32 101, i32 48, metadata !219, metadata !215}
!223 = metadata !{i32 786689, metadata !219, metadata !"rdata", metadata !55, i32 33554533, metadata !134, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!224 = metadata !{i32 101, i32 75, metadata !219, metadata !215}
!225 = metadata !{i32 790531, metadata !226, metadata !"stream<float>.V", null, i32 123, metadata !221, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!226 = metadata !{i32 786689, metadata !227, metadata !"this", metadata !55, i32 16777339, metadata !220, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!227 = metadata !{i32 786478, i32 0, metadata !54, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readERf", metadata !55, i32 123, metadata !132, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !145, metadata !63, i32 123} ; [ DW_TAG_subprogram ]
!228 = metadata !{i32 123, i32 48, metadata !227, metadata !229}
!229 = metadata !{i32 102, i32 9, metadata !230, metadata !215}
!230 = metadata !{i32 786443, metadata !219, i32 101, i32 82, metadata !55, i32 14} ; [ DW_TAG_lexical_block ]
!231 = metadata !{i32 786689, metadata !227, metadata !"dout", metadata !55, i32 33554555, metadata !134, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!232 = metadata !{i32 123, i32 67, metadata !227, metadata !229}
!233 = metadata !{i32 125, i32 9, metadata !234, metadata !229}
!234 = metadata !{i32 786443, metadata !227, i32 123, i32 73, metadata !55, i32 15} ; [ DW_TAG_lexical_block ]
!235 = metadata !{i32 786688, metadata !234, metadata !"tmp", metadata !55, i32 124, metadata !115, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!236 = metadata !{i32 126, i32 9, metadata !234, metadata !229}
!237 = metadata !{i32 69, i32 3, metadata !216, null}
!238 = metadata !{i32 71, i32 2, metadata !216, null}
!239 = metadata !{i32 58, i32 3, metadata !240, null}
!240 = metadata !{i32 786443, metadata !180, i32 56, i32 17, metadata !49, i32 1} ; [ DW_TAG_lexical_block ]
!241 = metadata !{i32 57, i32 3, metadata !240, null}
!242 = metadata !{i32 119, i32 1, metadata !180, null}
!243 = metadata !{i32 59, i32 3, metadata !240, null}
!244 = metadata !{i32 60, i32 3, metadata !240, null}
!245 = metadata !{i32 61, i32 3, metadata !240, null}
!246 = metadata !{i32 62, i32 3, metadata !240, null}
!247 = metadata !{i32 77, i32 4, metadata !248, null}
!248 = metadata !{i32 786443, metadata !207, i32 76, i32 33, metadata !49, i32 4} ; [ DW_TAG_lexical_block ]
!249 = metadata !{i32 786688, metadata !180, metadata !"outAccumulate", metadata !49, i32 41, metadata !115, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!250 = metadata !{i32 78, i32 4, metadata !248, null}
!251 = metadata !{i32 81, i32 3, metadata !207, null}
!252 = metadata !{i32 84, i32 5, metadata !253, null}
!253 = metadata !{i32 786443, metadata !209, i32 83, i32 34, metadata !49, i32 6} ; [ DW_TAG_lexical_block ]
!254 = metadata !{i32 85, i32 5, metadata !253, null}
!255 = metadata !{i32 88, i32 4, metadata !209, null}
!256 = metadata !{i32 91, i32 6, metadata !257, null}
!257 = metadata !{i32 786443, metadata !211, i32 90, i32 35, metadata !49, i32 8} ; [ DW_TAG_lexical_block ]
!258 = metadata !{i32 92, i32 6, metadata !257, null}
!259 = metadata !{i32 95, i32 5, metadata !211, null}
!260 = metadata !{i32 98, i32 7, metadata !261, null}
!261 = metadata !{i32 786443, metadata !213, i32 97, i32 36, metadata !49, i32 10} ; [ DW_TAG_lexical_block ]
!262 = metadata !{i32 99, i32 7, metadata !261, null}
!263 = metadata !{i32 103, i32 6, metadata !213, null}
!264 = metadata !{i32 116, i32 2, metadata !180, null}
!265 = metadata !{i32 118, i32 2, metadata !180, null}
!266 = metadata !{i32 790531, metadata !267, metadata !"stream<float>.V", null, i32 105, metadata !221, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!267 = metadata !{i32 786689, metadata !268, metadata !"this", metadata !55, i32 16777321, metadata !220, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!268 = metadata !{i32 786478, i32 0, metadata !54, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIfElsERKf", metadata !55, i32 105, metadata !136, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !135, metadata !63, i32 105} ; [ DW_TAG_subprogram ]
!269 = metadata !{i32 105, i32 48, metadata !268, metadata !265}
!270 = metadata !{i32 790531, metadata !271, metadata !"stream<float>.V", null, i32 144, metadata !221, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!271 = metadata !{i32 786689, metadata !272, metadata !"this", metadata !55, i32 16777360, metadata !220, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!272 = metadata !{i32 786478, i32 0, metadata !54, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !55, i32 144, metadata !136, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !152, metadata !63, i32 144} ; [ DW_TAG_subprogram ]
!273 = metadata !{i32 144, i32 48, metadata !272, metadata !274}
!274 = metadata !{i32 106, i32 9, metadata !275, metadata !265}
!275 = metadata !{i32 786443, metadata !268, i32 105, i32 88, metadata !55, i32 12} ; [ DW_TAG_lexical_block ]
!276 = metadata !{i32 786688, metadata !277, metadata !"tmp", metadata !55, i32 145, metadata !115, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!277 = metadata !{i32 786443, metadata !272, i32 144, i32 79, metadata !55, i32 13} ; [ DW_TAG_lexical_block ]
!278 = metadata !{i32 145, i32 31, metadata !277, metadata !274}
!279 = metadata !{i32 146, i32 9, metadata !277, metadata !274}

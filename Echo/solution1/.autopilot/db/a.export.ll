; ModuleID = '/home/austin/ECE1373_GhostSynth/modules/echo/Echo/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@writeBuffer = internal unnamed_addr global i32 0, align 4
@readBuffer4 = internal unnamed_addr global i32 0, align 4
@readBuffer3 = internal unnamed_addr global i32 0, align 4
@readBuffer2 = internal unnamed_addr global i32 0, align 4
@readBuffer1 = internal unnamed_addr global i32 0, align 4
@delayCount = internal unnamed_addr global i32 0, align 4
@buffer_r = internal unnamed_addr global [48000 x float] zeroinitializer, align 16
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

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
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

define weak i32 @_ssdm_op_Read.axis.volatile.i32P(i32*) {
entry:
  %empty = load i32* %0
  ret i32 %empty
}

define weak float @_ssdm_op_Read.axis.volatile.floatP(float*) {
entry:
  %empty = load float* %0
  ret float %empty
}

define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

define void @Echo(i32* %change_V, float* %value_in_V, float* %value_out_V, i32 %delay, i32 %scale) {
._crit_edge:
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %change_V), !map !23
  call void (...)* @_ssdm_op_SpecBitsMap(float* %value_in_V), !map !29
  call void (...)* @_ssdm_op_SpecBitsMap(float* %value_out_V), !map !33
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %delay), !map !37
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %scale), !map !43
  call void (...)* @_ssdm_op_SpecTopModule([5 x i8]* @Echo_str) nounwind
  %scale_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %scale)
  %delay_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %delay)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %delay, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %change_V, [5 x i8]* @p_str4, i32 1, i32 1, [5 x i8]* @p_str5, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(float* %value_in_V, [5 x i8]* @p_str4, i32 1, i32 1, [5 x i8]* @p_str5, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(float* %value_out_V, [5 x i8]* @p_str4, i32 1, i32 1, [5 x i8]* @p_str5, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  %tmp_52 = call i32 @_ssdm_op_Read.axis.volatile.i32P(i32* %change_V)
  %tmp_1 = icmp eq i32 %tmp_52, 0
  %delayCount_load = load i32* @delayCount, align 4
  %readBuffer1_load = load i32* @readBuffer1, align 4
  %readBuffer2_load = load i32* @readBuffer2, align 4
  %readBuffer3_load = load i32* @readBuffer3, align 4
  %readBuffer4_load = load i32* @readBuffer4, align 4
  %writeBuffer_load = load i32* @writeBuffer, align 4
  %delayCount_load_s = select i1 %tmp_1, i32 %delayCount_load, i32 0
  %not_tmp_1 = xor i1 %tmp_1, true
  %readBuffer1_load_s = select i1 %tmp_1, i32 %readBuffer1_load, i32 0
  %readBuffer2_load_s = select i1 %tmp_1, i32 %readBuffer2_load, i32 0
  %readBuffer3_load_s = select i1 %tmp_1, i32 %readBuffer3_load, i32 0
  %readBuffer4_load_s = select i1 %tmp_1, i32 %readBuffer4_load, i32 0
  %writeBuffer_load_s = select i1 %tmp_1, i32 %writeBuffer_load, i32 0
  %tmp_2 = icmp slt i32 %writeBuffer_load_s, 48000
  br i1 %tmp_2, label %0, label %._crit_edge9

; <label>:0                                       ; preds = %._crit_edge
  %tmp_3 = sext i32 %writeBuffer_load_s to i64
  %buffer_addr_5 = getelementptr inbounds [48000 x float]* @buffer_r, i64 0, i64 %tmp_3
  %tmp = call float @_ssdm_op_Read.axis.volatile.floatP(float* %value_in_V)
  store float %tmp, float* %buffer_addr_5, align 4
  %tmp_5 = add nsw i32 %writeBuffer_load_s, 1
  br label %._crit_edge9

._crit_edge9:                                     ; preds = %0, %._crit_edge
  %writeBuffer_flag_1 = phi i1 [ true, %0 ], [ %not_tmp_1, %._crit_edge ]
  %writeBuffer_new_1 = phi i32 [ %tmp_5, %0 ], [ 0, %._crit_edge ]
  %tmp_6 = phi i32 [ %tmp_5, %0 ], [ %writeBuffer_load_s, %._crit_edge ]
  %tmp_7 = icmp sgt i32 %delayCount_load_s, %delay_read
  br i1 %writeBuffer_flag_1, label %mergeST9, label %._crit_edge9.new_ifconv

mergeST1:                                         ; preds = %._crit_edge10.new4
  store i32 %readBuffer1_new_2, i32* @readBuffer1, align 4
  br label %._crit_edge10.new2

._crit_edge10.new2:                               ; preds = %._crit_edge10.new4, %mergeST1
  store i32 %tmp_48, i32* @delayCount, align 4
  ret void

mergeST3:                                         ; preds = %._crit_edge10.new6
  store i32 %readBuffer2_new_2, i32* @readBuffer2, align 4
  br label %._crit_edge10.new4

._crit_edge10.new4:                               ; preds = %._crit_edge10.new6, %mergeST3
  br i1 %readBuffer1_flag_2, label %mergeST1, label %._crit_edge10.new2

mergeST5:                                         ; preds = %._crit_edge10.new8
  store i32 %readBuffer3_new_2, i32* @readBuffer3, align 4
  br label %._crit_edge10.new6

._crit_edge10.new6:                               ; preds = %._crit_edge10.new8, %mergeST5
  br i1 %readBuffer2_flag_2, label %mergeST3, label %._crit_edge10.new4

mergeST7:                                         ; preds = %._crit_edge9.new_ifconv
  store i32 %readBuffer4_new_2, i32* @readBuffer4, align 4
  br label %._crit_edge10.new8

._crit_edge10.new8:                               ; preds = %._crit_edge9.new_ifconv, %mergeST7
  br i1 %readBuffer3_flag_2, label %mergeST5, label %._crit_edge10.new6

mergeST9:                                         ; preds = %._crit_edge9
  store i32 %writeBuffer_new_1, i32* @writeBuffer, align 4
  br label %._crit_edge9.new_ifconv

._crit_edge9.new_ifconv:                          ; preds = %mergeST9, %._crit_edge9
  %tmp_8 = icmp sgt i32 %readBuffer1_load_s, %tmp_6
  %tmp_9 = sitofp i32 %scale_read to double
  %tmp_s = fmul double %tmp_9, 5.000000e-01
  %tmp_4 = sext i32 %readBuffer1_load_s to i64
  %buffer_addr = getelementptr inbounds [48000 x float]* @buffer_r, i64 0, i64 %tmp_4
  %buffer_load = load float* %buffer_addr, align 4
  %tmp_10 = fpext float %buffer_load to double
  %tmp_11 = fmul double %tmp_s, %tmp_10
  %tmp_12 = fadd double %tmp_11, 0.000000e+00
  %outAccumulate = fptrunc double %tmp_12 to float
  %tmp_13 = add nsw i32 %readBuffer1_load_s, 1
  %not_tmp_8 = xor i1 %tmp_8, true
  %readBuffer1_flag_1 = or i1 %not_tmp_8, %not_tmp_1
  %readBuffer1_new_1 = select i1 %tmp_8, i32 0, i32 %tmp_13
  %tmp_14 = select i1 %tmp_8, i32 %readBuffer1_load_s, i32 %tmp_13
  %outAccumulate1 = select i1 %tmp_8, float 0.000000e+00, float %outAccumulate
  %tmp_15 = icmp sgt i32 %tmp_14, %delay_read
  %tmp_16 = icmp sgt i32 %readBuffer2_load_s, %tmp_6
  %tmp_17 = fmul double %tmp_9, 2.500000e-01
  %tmp_18 = sext i32 %readBuffer2_load_s to i64
  %buffer_addr_1 = getelementptr inbounds [48000 x float]* @buffer_r, i64 0, i64 %tmp_18
  %buffer_load_1 = load float* %buffer_addr_1, align 4
  %tmp_19 = fpext float %buffer_load_1 to double
  %tmp_20 = fmul double %tmp_17, %tmp_19
  %tmp_21 = fpext float %outAccumulate1 to double
  %tmp_22 = fadd double %tmp_21, %tmp_20
  %outAccumulate_4 = fptrunc double %tmp_22 to float
  %tmp_23 = add nsw i32 %readBuffer2_load_s, 1
  %not_tmp_s = xor i1 %tmp_16, true
  %readBuffer2_flag_1 = or i1 %not_tmp_s, %not_tmp_1
  %readBuffer2_new_1 = select i1 %tmp_16, i32 0, i32 %tmp_23
  %tmp_24 = select i1 %tmp_16, i32 %readBuffer2_load_s, i32 %tmp_23
  %outAccumulate_1 = select i1 %tmp_16, float %outAccumulate1, float %outAccumulate_4
  %tmp_25 = icmp sgt i32 %tmp_24, %delay_read
  %tmp_26 = icmp sgt i32 %readBuffer3_load_s, %tmp_6
  %tmp_27 = fmul double %tmp_9, 1.250000e-01
  %tmp_28 = sext i32 %readBuffer3_load_s to i64
  %buffer_addr_2 = getelementptr inbounds [48000 x float]* @buffer_r, i64 0, i64 %tmp_28
  %buffer_load_2 = load float* %buffer_addr_2, align 4
  %tmp_29 = fpext float %buffer_load_2 to double
  %tmp_30 = fmul double %tmp_27, %tmp_29
  %tmp_31 = fpext float %outAccumulate_1 to double
  %tmp_32 = fadd double %tmp_31, %tmp_30
  %outAccumulate_5 = fptrunc double %tmp_32 to float
  %tmp_33 = add nsw i32 %readBuffer3_load_s, 1
  %not_tmp_2 = xor i1 %tmp_26, true
  %readBuffer3_flag_1 = or i1 %not_tmp_2, %not_tmp_1
  %readBuffer3_new_1 = select i1 %tmp_26, i32 0, i32 %tmp_33
  %tmp_34 = select i1 %tmp_26, i32 %readBuffer3_load_s, i32 %tmp_33
  %outAccumulate_2 = select i1 %tmp_26, float %outAccumulate_1, float %outAccumulate_5
  %tmp_35 = icmp sgt i32 %tmp_34, %delay_read
  %tmp_36 = icmp sgt i32 %readBuffer4_load_s, %tmp_6
  %tmp_37 = fmul double %tmp_9, 6.250000e-02
  %tmp_38 = sext i32 %readBuffer4_load_s to i64
  %buffer_addr_3 = getelementptr inbounds [48000 x float]* @buffer_r, i64 0, i64 %tmp_38
  %buffer_load_3 = load float* %buffer_addr_3, align 4
  %tmp_39 = fpext float %buffer_load_3 to double
  %tmp_40 = fmul double %tmp_37, %tmp_39
  %tmp_41 = fpext float %outAccumulate_2 to double
  %tmp_42 = fadd double %tmp_41, %tmp_40
  %outAccumulate_6 = fptrunc double %tmp_42 to float
  %tmp_43 = add nsw i32 %readBuffer4_load_s, 1
  %not_tmp_3 = xor i1 %tmp_36, true
  %outAccumulate_3 = select i1 %tmp_36, float %outAccumulate_2, float %outAccumulate_6
  %tmp_44 = icmp eq i32 %tmp_34, %tmp_6
  %p_readBuffer1_flag_1 = or i1 %tmp_44, %readBuffer1_flag_1
  %p_readBuffer1_new_1 = select i1 %tmp_44, i32 0, i32 %readBuffer1_new_1
  %p_readBuffer2_flag_1 = or i1 %tmp_44, %readBuffer2_flag_1
  %p_readBuffer2_new_1 = select i1 %tmp_44, i32 0, i32 %readBuffer2_new_1
  %p_readBuffer3_flag_1 = or i1 %tmp_44, %readBuffer3_flag_1
  %p_readBuffer3_new_1 = select i1 %tmp_44, i32 0, i32 %readBuffer3_new_1
  %tmp5 = or i1 %tmp_44, %not_tmp_1
  %p_readBuffer4_flag_1 = or i1 %tmp5, %not_tmp_3
  %tmp_45 = or i1 %tmp_44, %tmp_36
  %p_readBuffer4_new_1 = select i1 %tmp_45, i32 0, i32 %tmp_43
  %p_delayCount_load_s = select i1 %tmp_44, i32 0, i32 %delayCount_load_s
  %sel_tmp8 = select i1 %tmp_7, i1 %readBuffer1_flag_1, i1 %not_tmp_1
  %sel_tmp9 = and i1 %tmp_7, %tmp_15
  %tmp6 = and i1 %tmp_25, %tmp_35
  %sel_tmp = and i1 %tmp6, %sel_tmp9
  %readBuffer1_flag_2 = select i1 %sel_tmp, i1 %p_readBuffer1_flag_1, i1 %sel_tmp8
  %sel_tmp1 = select i1 %tmp_7, i32 %readBuffer1_new_1, i32 0
  %readBuffer1_new_2 = select i1 %sel_tmp, i32 %p_readBuffer1_new_1, i32 %sel_tmp1
  %sel_tmp2 = xor i1 %tmp_15, true
  %sel_tmp3 = and i1 %tmp_7, %sel_tmp2
  %sel_tmp4 = select i1 %sel_tmp3, i1 %not_tmp_1, i1 %readBuffer2_flag_1
  %sel_tmp5 = select i1 %tmp_7, i1 %sel_tmp4, i1 %not_tmp_1
  %readBuffer2_flag_2 = select i1 %sel_tmp, i1 %p_readBuffer2_flag_1, i1 %sel_tmp5
  %sel_tmp6 = select i1 %sel_tmp3, i32 0, i32 %readBuffer2_new_1
  %sel_tmp7 = select i1 %tmp_7, i32 %sel_tmp6, i32 0
  %readBuffer2_new_2 = select i1 %sel_tmp, i32 %p_readBuffer2_new_1, i32 %sel_tmp7
  %sel_tmp10 = xor i1 %tmp_25, true
  %sel_tmp11 = and i1 %sel_tmp9, %sel_tmp10
  %sel_tmp12 = select i1 %sel_tmp11, i1 %not_tmp_1, i1 %readBuffer3_flag_1
  %sel_tmp13 = select i1 %sel_tmp3, i1 %not_tmp_1, i1 %sel_tmp12
  %sel_tmp14 = select i1 %tmp_7, i1 %sel_tmp13, i1 %not_tmp_1
  %readBuffer3_flag_2 = select i1 %sel_tmp, i1 %p_readBuffer3_flag_1, i1 %sel_tmp14
  %tmp_46 = or i1 %sel_tmp3, %sel_tmp11
  %sel_tmp15 = select i1 %tmp_46, i32 0, i32 %readBuffer3_new_1
  %sel_tmp16 = select i1 %tmp_7, i32 %sel_tmp15, i32 0
  %readBuffer3_new_2 = select i1 %sel_tmp, i32 %p_readBuffer3_new_1, i32 %sel_tmp16
  %readBuffer4_flag_2 = select i1 %sel_tmp, i1 %p_readBuffer4_flag_1, i1 %not_tmp_1
  %readBuffer4_new_2 = select i1 %sel_tmp, i32 %p_readBuffer4_new_1, i32 0
  %tmp_47 = select i1 %sel_tmp, i32 %p_delayCount_load_s, i32 %delayCount_load_s
  %sel_tmp17 = select i1 %sel_tmp11, float %outAccumulate_1, float %outAccumulate_2
  %sel_tmp18 = select i1 %sel_tmp3, float %outAccumulate1, float %sel_tmp17
  %sel_tmp19 = select i1 %tmp_7, float %sel_tmp18, float 0.000000e+00
  %outAccumulate_7 = select i1 %sel_tmp, float %outAccumulate_3, float %sel_tmp19
  %tmp_48 = add nsw i32 %tmp_47, 1
  %tmp_49 = add nsw i32 %tmp_6, -1
  %tmp_50 = sext i32 %tmp_49 to i64
  %buffer_addr_4 = getelementptr inbounds [48000 x float]* @buffer_r, i64 0, i64 %tmp_50
  %buffer_load_4 = load float* %buffer_addr_4, align 4
  %tmp_51 = fadd float %buffer_load_4, %outAccumulate_7
  call void @_ssdm_op_Write.axis.volatile.floatP(float* %value_out_V, float %tmp_51)
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

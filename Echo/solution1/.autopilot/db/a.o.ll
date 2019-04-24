; ModuleID = '/home/austin/ECE1373_GhostSynth/modules/echo/Echo/solution1/.autopilot/db/a.o.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.hls::stream" = type { i32 }
%"class.hls::stream.0" = type { float }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str1 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1 ; [#uses=1 type=[13 x i8]*]
@.str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str3 = private unnamed_addr constant [9 x i8] c"CTRL_BUS\00", align 1 ; [#uses=1 type=[9 x i8]*]
@.str4 = private unnamed_addr constant [5 x i8] c"axis\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str5 = private unnamed_addr constant [5 x i8] c"both\00", align 1 ; [#uses=1 type=[5 x i8]*]
@_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE7initial = internal global i32 0, align 4 ; [#uses=1 type=i32*]
@_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE10delayCount = internal global i32 0, align 4 ; [#uses=5 type=i32*]
@_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE11writeBuffer = internal global i32 0, align 4 ; [#uses=11 type=i32*]
@_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE6buffer = internal global [48000 x float] zeroinitializer, align 16 ; [#uses=6 type=[48000 x float]*]
@_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE11readBuffer1 = internal global i32 0, align 4 ; [#uses=7 type=i32*]
@_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE11readBuffer2 = internal global i32 0, align 4 ; [#uses=7 type=i32*]
@_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE11readBuffer3 = internal global i32 0, align 4 ; [#uses=8 type=i32*]
@_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE11readBuffer4 = internal global i32 0, align 4 ; [#uses=6 type=i32*]
@_IO_2_1_stdin_ = external global %"class.hls::stream" ; [#uses=0 type=%"class.hls::stream"*]
@_IO_2_1_stdout_ = external global %"class.hls::stream" ; [#uses=0 type=%"class.hls::stream"*]
@_IO_2_1_stderr_ = external global %"class.hls::stream" ; [#uses=0 type=%"class.hls::stream"*]
@sys_nerr = external global i32                   ; [#uses=0 type=i32*]
@_sys_nerr = external global i32                  ; [#uses=0 type=i32*]
@signgam = external global i32                    ; [#uses=0 type=i32*]

; [#uses=0]
define void @_Z4EchoRN3hls6streamIiEERNS0_IfEES4_ii(%"class.hls::stream"* %change, %"class.hls::stream.0"* %value_in, %"class.hls::stream.0"* %value_out, i32 %delay, i32 %scale) nounwind uwtable {
  %1 = alloca %"class.hls::stream"*, align 8      ; [#uses=3 type=%"class.hls::stream"**]
  %2 = alloca %"class.hls::stream.0"*, align 8    ; [#uses=3 type=%"class.hls::stream.0"**]
  %3 = alloca %"class.hls::stream.0"*, align 8    ; [#uses=3 type=%"class.hls::stream.0"**]
  %4 = alloca i32, align 4                        ; [#uses=6 type=i32*]
  %5 = alloca i32, align 4                        ; [#uses=5 type=i32*]
  %outAccumulate = alloca float, align 4          ; [#uses=10 type=float*]
  %changevalue = alloca i32, align 4              ; [#uses=2 type=i32*]
  %6 = alloca float, align 4                      ; [#uses=2 type=float*]
  store %"class.hls::stream"* %change, %"class.hls::stream"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !170), !dbg !171 ; [debug line = 19:21] [debug variable = change]
  store %"class.hls::stream.0"* %value_in, %"class.hls::stream.0"** %2, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream.0"** %2}, metadata !172), !dbg !173 ; [debug line = 20:23] [debug variable = value_in]
  store %"class.hls::stream.0"* %value_out, %"class.hls::stream.0"** %3, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream.0"** %3}, metadata !174), !dbg !175 ; [debug line = 21:23] [debug variable = value_out]
  store i32 %delay, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !176), !dbg !177 ; [debug line = 23:6] [debug variable = delay]
  store i32 %scale, i32* %5, align 4
  call void @llvm.dbg.declare(metadata !{i32* %5}, metadata !178), !dbg !179 ; [debug line = 24:6] [debug variable = scale]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !180 ; [debug line = 28:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([13 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !182 ; [debug line = 29:1]
  %7 = load i32* %4, align 4, !dbg !183           ; [#uses=1 type=i32] [debug line = 30:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %7, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !183 ; [debug line = 30:1]
  %8 = load %"class.hls::stream"** %1, align 8, !dbg !184 ; [#uses=1 type=%"class.hls::stream"*] [debug line = 33:1]
  call void (...)* @_ssdm_op_SpecInterface(%"class.hls::stream"* %8, i8* getelementptr inbounds ([5 x i8]* @.str4, i32 0, i32 0), i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str5, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !184 ; [debug line = 33:1]
  %9 = load %"class.hls::stream.0"** %2, align 8, !dbg !185 ; [#uses=1 type=%"class.hls::stream.0"*] [debug line = 34:1]
  call void (...)* @_ssdm_op_SpecInterface(%"class.hls::stream.0"* %9, i8* getelementptr inbounds ([5 x i8]* @.str4, i32 0, i32 0), i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str5, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !185 ; [debug line = 34:1]
  %10 = load %"class.hls::stream.0"** %3, align 8, !dbg !186 ; [#uses=1 type=%"class.hls::stream.0"*] [debug line = 35:1]
  call void (...)* @_ssdm_op_SpecInterface(%"class.hls::stream.0"* %10, i8* getelementptr inbounds ([5 x i8]* @.str4, i32 0, i32 0), i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str5, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !186 ; [debug line = 35:1]
  call void @llvm.dbg.declare(metadata !{float* %outAccumulate}, metadata !187), !dbg !188 ; [debug line = 41:8] [debug variable = outAccumulate]
  store float 0.000000e+00, float* %outAccumulate, align 4, !dbg !189 ; [debug line = 41:23]
  call void @llvm.dbg.declare(metadata !{i32* %changevalue}, metadata !190), !dbg !191 ; [debug line = 50:6] [debug variable = changevalue]
  %11 = load %"class.hls::stream"** %1, align 8, !dbg !192 ; [#uses=1 type=%"class.hls::stream"*] [debug line = 52:2]
  call void @_ZN3hls6streamIiErsERi(%"class.hls::stream"* %11, i32* %changevalue), !dbg !192 ; [debug line = 52:2]
  %12 = load i32* %changevalue, align 4, !dbg !193 ; [#uses=1 type=i32] [debug line = 56:2]
  %13 = icmp ne i32 %12, 0, !dbg !193             ; [#uses=1 type=i1] [debug line = 56:2]
  br i1 %13, label %14, label %15, !dbg !193      ; [debug line = 56:2]

; <label>:14                                      ; preds = %0
  store i32 0, i32* @_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE10delayCount, align 4, !dbg !194 ; [debug line = 57:3]
  store i32 0, i32* @_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE11readBuffer1, align 4, !dbg !196 ; [debug line = 58:3]
  store i32 0, i32* @_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE11readBuffer2, align 4, !dbg !197 ; [debug line = 59:3]
  store i32 0, i32* @_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE11readBuffer3, align 4, !dbg !198 ; [debug line = 60:3]
  store i32 0, i32* @_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE11readBuffer4, align 4, !dbg !199 ; [debug line = 61:3]
  store i32 0, i32* @_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE11writeBuffer, align 4, !dbg !200 ; [debug line = 62:3]
  br label %15, !dbg !201                         ; [debug line = 63:2]

; <label>:15                                      ; preds = %14, %0
  %16 = load i32* @_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE11writeBuffer, align 4, !dbg !202 ; [#uses=1 type=i32] [debug line = 66:2]
  %17 = icmp slt i32 %16, 48000, !dbg !202        ; [#uses=1 type=i1] [debug line = 66:2]
  br i1 %17, label %18, label %25, !dbg !202      ; [debug line = 66:2]

; <label>:18                                      ; preds = %15
  %19 = load %"class.hls::stream.0"** %2, align 8, !dbg !203 ; [#uses=1 type=%"class.hls::stream.0"*] [debug line = 68:3]
  %20 = load i32* @_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE11writeBuffer, align 4, !dbg !203 ; [#uses=1 type=i32] [debug line = 68:3]
  %21 = sext i32 %20 to i64, !dbg !203            ; [#uses=1 type=i64] [debug line = 68:3]
  %22 = getelementptr inbounds [48000 x float]* @_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE6buffer, i32 0, i64 %21, !dbg !203 ; [#uses=1 type=float*] [debug line = 68:3]
  call void @_ZN3hls6streamIfErsERf(%"class.hls::stream.0"* %19, float* %22), !dbg !203 ; [debug line = 68:3]
  %23 = load i32* @_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE11writeBuffer, align 4, !dbg !205 ; [#uses=1 type=i32] [debug line = 69:3]
  %24 = add nsw i32 %23, 1, !dbg !205             ; [#uses=1 type=i32] [debug line = 69:3]
  store i32 %24, i32* @_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE11writeBuffer, align 4, !dbg !205 ; [debug line = 69:3]
  br label %25, !dbg !206                         ; [debug line = 71:2]

; <label>:25                                      ; preds = %18, %15
  %26 = load i32* @_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE10delayCount, align 4, !dbg !207 ; [#uses=1 type=i32] [debug line = 74:2]
  %27 = load i32* %4, align 4, !dbg !207          ; [#uses=1 type=i32] [debug line = 74:2]
  %28 = icmp sgt i32 %26, %27, !dbg !207          ; [#uses=1 type=i1] [debug line = 74:2]
  br i1 %28, label %29, label %130, !dbg !207     ; [debug line = 74:2]

; <label>:29                                      ; preds = %25
  %30 = load i32* @_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE11readBuffer1, align 4, !dbg !208 ; [#uses=1 type=i32] [debug line = 76:3]
  %31 = load i32* @_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE11writeBuffer, align 4, !dbg !208 ; [#uses=1 type=i32] [debug line = 76:3]
  %32 = icmp sle i32 %30, %31, !dbg !208          ; [#uses=1 type=i1] [debug line = 76:3]
  br i1 %32, label %33, label %49, !dbg !208      ; [debug line = 76:3]

; <label>:33                                      ; preds = %29
  %34 = load i32* %5, align 4, !dbg !210          ; [#uses=1 type=i32] [debug line = 77:4]
  %35 = sitofp i32 %34 to double, !dbg !210       ; [#uses=1 type=double] [debug line = 77:4]
  %36 = fmul double %35, 5.000000e-01, !dbg !210  ; [#uses=1 type=double] [debug line = 77:4]
  %37 = load i32* @_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE11readBuffer1, align 4, !dbg !210 ; [#uses=1 type=i32] [debug line = 77:4]
  %38 = sext i32 %37 to i64, !dbg !210            ; [#uses=1 type=i64] [debug line = 77:4]
  %39 = getelementptr inbounds [48000 x float]* @_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE6buffer, i32 0, i64 %38, !dbg !210 ; [#uses=1 type=float*] [debug line = 77:4]
  %40 = load float* %39, align 4, !dbg !210       ; [#uses=1 type=float] [debug line = 77:4]
  %41 = fpext float %40 to double, !dbg !210      ; [#uses=1 type=double] [debug line = 77:4]
  %42 = fmul double %36, %41, !dbg !210           ; [#uses=1 type=double] [debug line = 77:4]
  %43 = load float* %outAccumulate, align 4, !dbg !210 ; [#uses=1 type=float] [debug line = 77:4]
  %44 = fpext float %43 to double, !dbg !210      ; [#uses=1 type=double] [debug line = 77:4]
  %45 = fadd double %44, %42, !dbg !210           ; [#uses=1 type=double] [debug line = 77:4]
  %46 = fptrunc double %45 to float, !dbg !210    ; [#uses=1 type=float] [debug line = 77:4]
  store float %46, float* %outAccumulate, align 4, !dbg !210 ; [debug line = 77:4]
  %47 = load i32* @_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE11readBuffer1, align 4, !dbg !212 ; [#uses=1 type=i32] [debug line = 78:4]
  %48 = add nsw i32 %47, 1, !dbg !212             ; [#uses=1 type=i32] [debug line = 78:4]
  store i32 %48, i32* @_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE11readBuffer1, align 4, !dbg !212 ; [debug line = 78:4]
  br label %49, !dbg !213                         ; [debug line = 79:3]

; <label>:49                                      ; preds = %33, %29
  %50 = load i32* @_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE11readBuffer1, align 4, !dbg !214 ; [#uses=1 type=i32] [debug line = 81:3]
  %51 = load i32* %4, align 4, !dbg !214          ; [#uses=1 type=i32] [debug line = 81:3]
  %52 = icmp sgt i32 %50, %51, !dbg !214          ; [#uses=1 type=i1] [debug line = 81:3]
  br i1 %52, label %53, label %129, !dbg !214     ; [debug line = 81:3]

; <label>:53                                      ; preds = %49
  %54 = load i32* @_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE11readBuffer2, align 4, !dbg !215 ; [#uses=1 type=i32] [debug line = 83:4]
  %55 = load i32* @_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE11writeBuffer, align 4, !dbg !215 ; [#uses=1 type=i32] [debug line = 83:4]
  %56 = icmp sle i32 %54, %55, !dbg !215          ; [#uses=1 type=i1] [debug line = 83:4]
  br i1 %56, label %57, label %73, !dbg !215      ; [debug line = 83:4]

; <label>:57                                      ; preds = %53
  %58 = load i32* %5, align 4, !dbg !217          ; [#uses=1 type=i32] [debug line = 84:5]
  %59 = sitofp i32 %58 to double, !dbg !217       ; [#uses=1 type=double] [debug line = 84:5]
  %60 = fmul double %59, 2.500000e-01, !dbg !217  ; [#uses=1 type=double] [debug line = 84:5]
  %61 = load i32* @_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE11readBuffer2, align 4, !dbg !217 ; [#uses=1 type=i32] [debug line = 84:5]
  %62 = sext i32 %61 to i64, !dbg !217            ; [#uses=1 type=i64] [debug line = 84:5]
  %63 = getelementptr inbounds [48000 x float]* @_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE6buffer, i32 0, i64 %62, !dbg !217 ; [#uses=1 type=float*] [debug line = 84:5]
  %64 = load float* %63, align 4, !dbg !217       ; [#uses=1 type=float] [debug line = 84:5]
  %65 = fpext float %64 to double, !dbg !217      ; [#uses=1 type=double] [debug line = 84:5]
  %66 = fmul double %60, %65, !dbg !217           ; [#uses=1 type=double] [debug line = 84:5]
  %67 = load float* %outAccumulate, align 4, !dbg !217 ; [#uses=1 type=float] [debug line = 84:5]
  %68 = fpext float %67 to double, !dbg !217      ; [#uses=1 type=double] [debug line = 84:5]
  %69 = fadd double %68, %66, !dbg !217           ; [#uses=1 type=double] [debug line = 84:5]
  %70 = fptrunc double %69 to float, !dbg !217    ; [#uses=1 type=float] [debug line = 84:5]
  store float %70, float* %outAccumulate, align 4, !dbg !217 ; [debug line = 84:5]
  %71 = load i32* @_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE11readBuffer2, align 4, !dbg !219 ; [#uses=1 type=i32] [debug line = 85:5]
  %72 = add nsw i32 %71, 1, !dbg !219             ; [#uses=1 type=i32] [debug line = 85:5]
  store i32 %72, i32* @_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE11readBuffer2, align 4, !dbg !219 ; [debug line = 85:5]
  br label %73, !dbg !220                         ; [debug line = 86:4]

; <label>:73                                      ; preds = %57, %53
  %74 = load i32* @_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE11readBuffer2, align 4, !dbg !221 ; [#uses=1 type=i32] [debug line = 88:4]
  %75 = load i32* %4, align 4, !dbg !221          ; [#uses=1 type=i32] [debug line = 88:4]
  %76 = icmp sgt i32 %74, %75, !dbg !221          ; [#uses=1 type=i1] [debug line = 88:4]
  br i1 %76, label %77, label %128, !dbg !221     ; [debug line = 88:4]

; <label>:77                                      ; preds = %73
  %78 = load i32* @_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE11readBuffer3, align 4, !dbg !222 ; [#uses=1 type=i32] [debug line = 90:5]
  %79 = load i32* @_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE11writeBuffer, align 4, !dbg !222 ; [#uses=1 type=i32] [debug line = 90:5]
  %80 = icmp sle i32 %78, %79, !dbg !222          ; [#uses=1 type=i1] [debug line = 90:5]
  br i1 %80, label %81, label %97, !dbg !222      ; [debug line = 90:5]

; <label>:81                                      ; preds = %77
  %82 = load i32* %5, align 4, !dbg !224          ; [#uses=1 type=i32] [debug line = 91:6]
  %83 = sitofp i32 %82 to double, !dbg !224       ; [#uses=1 type=double] [debug line = 91:6]
  %84 = fmul double %83, 1.250000e-01, !dbg !224  ; [#uses=1 type=double] [debug line = 91:6]
  %85 = load i32* @_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE11readBuffer3, align 4, !dbg !224 ; [#uses=1 type=i32] [debug line = 91:6]
  %86 = sext i32 %85 to i64, !dbg !224            ; [#uses=1 type=i64] [debug line = 91:6]
  %87 = getelementptr inbounds [48000 x float]* @_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE6buffer, i32 0, i64 %86, !dbg !224 ; [#uses=1 type=float*] [debug line = 91:6]
  %88 = load float* %87, align 4, !dbg !224       ; [#uses=1 type=float] [debug line = 91:6]
  %89 = fpext float %88 to double, !dbg !224      ; [#uses=1 type=double] [debug line = 91:6]
  %90 = fmul double %84, %89, !dbg !224           ; [#uses=1 type=double] [debug line = 91:6]
  %91 = load float* %outAccumulate, align 4, !dbg !224 ; [#uses=1 type=float] [debug line = 91:6]
  %92 = fpext float %91 to double, !dbg !224      ; [#uses=1 type=double] [debug line = 91:6]
  %93 = fadd double %92, %90, !dbg !224           ; [#uses=1 type=double] [debug line = 91:6]
  %94 = fptrunc double %93 to float, !dbg !224    ; [#uses=1 type=float] [debug line = 91:6]
  store float %94, float* %outAccumulate, align 4, !dbg !224 ; [debug line = 91:6]
  %95 = load i32* @_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE11readBuffer3, align 4, !dbg !226 ; [#uses=1 type=i32] [debug line = 92:6]
  %96 = add nsw i32 %95, 1, !dbg !226             ; [#uses=1 type=i32] [debug line = 92:6]
  store i32 %96, i32* @_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE11readBuffer3, align 4, !dbg !226 ; [debug line = 92:6]
  br label %97, !dbg !227                         ; [debug line = 93:5]

; <label>:97                                      ; preds = %81, %77
  %98 = load i32* @_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE11readBuffer3, align 4, !dbg !228 ; [#uses=1 type=i32] [debug line = 95:5]
  %99 = load i32* %4, align 4, !dbg !228          ; [#uses=1 type=i32] [debug line = 95:5]
  %100 = icmp sgt i32 %98, %99, !dbg !228         ; [#uses=1 type=i1] [debug line = 95:5]
  br i1 %100, label %101, label %127, !dbg !228   ; [debug line = 95:5]

; <label>:101                                     ; preds = %97
  %102 = load i32* @_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE11readBuffer4, align 4, !dbg !229 ; [#uses=1 type=i32] [debug line = 97:6]
  %103 = load i32* @_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE11writeBuffer, align 4, !dbg !229 ; [#uses=1 type=i32] [debug line = 97:6]
  %104 = icmp sle i32 %102, %103, !dbg !229       ; [#uses=1 type=i1] [debug line = 97:6]
  br i1 %104, label %105, label %121, !dbg !229   ; [debug line = 97:6]

; <label>:105                                     ; preds = %101
  %106 = load i32* %5, align 4, !dbg !231         ; [#uses=1 type=i32] [debug line = 98:7]
  %107 = sitofp i32 %106 to double, !dbg !231     ; [#uses=1 type=double] [debug line = 98:7]
  %108 = fmul double %107, 6.250000e-02, !dbg !231 ; [#uses=1 type=double] [debug line = 98:7]
  %109 = load i32* @_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE11readBuffer4, align 4, !dbg !231 ; [#uses=1 type=i32] [debug line = 98:7]
  %110 = sext i32 %109 to i64, !dbg !231          ; [#uses=1 type=i64] [debug line = 98:7]
  %111 = getelementptr inbounds [48000 x float]* @_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE6buffer, i32 0, i64 %110, !dbg !231 ; [#uses=1 type=float*] [debug line = 98:7]
  %112 = load float* %111, align 4, !dbg !231     ; [#uses=1 type=float] [debug line = 98:7]
  %113 = fpext float %112 to double, !dbg !231    ; [#uses=1 type=double] [debug line = 98:7]
  %114 = fmul double %108, %113, !dbg !231        ; [#uses=1 type=double] [debug line = 98:7]
  %115 = load float* %outAccumulate, align 4, !dbg !231 ; [#uses=1 type=float] [debug line = 98:7]
  %116 = fpext float %115 to double, !dbg !231    ; [#uses=1 type=double] [debug line = 98:7]
  %117 = fadd double %116, %114, !dbg !231        ; [#uses=1 type=double] [debug line = 98:7]
  %118 = fptrunc double %117 to float, !dbg !231  ; [#uses=1 type=float] [debug line = 98:7]
  store float %118, float* %outAccumulate, align 4, !dbg !231 ; [debug line = 98:7]
  %119 = load i32* @_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE11readBuffer4, align 4, !dbg !233 ; [#uses=1 type=i32] [debug line = 99:7]
  %120 = add nsw i32 %119, 1, !dbg !233           ; [#uses=1 type=i32] [debug line = 99:7]
  store i32 %120, i32* @_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE11readBuffer4, align 4, !dbg !233 ; [debug line = 99:7]
  br label %121, !dbg !234                        ; [debug line = 100:6]

; <label>:121                                     ; preds = %105, %101
  %122 = load i32* @_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE11readBuffer3, align 4, !dbg !235 ; [#uses=1 type=i32] [debug line = 103:6]
  %123 = load i32* @_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE11writeBuffer, align 4, !dbg !235 ; [#uses=1 type=i32] [debug line = 103:6]
  %124 = icmp eq i32 %122, %123, !dbg !235        ; [#uses=1 type=i1] [debug line = 103:6]
  br i1 %124, label %125, label %126, !dbg !235   ; [debug line = 103:6]

; <label>:125                                     ; preds = %121
  store i32 0, i32* @_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE10delayCount, align 4, !dbg !236 ; [debug line = 104:7]
  store i32 0, i32* @_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE7initial, align 4, !dbg !238 ; [debug line = 105:7]
  store i32 0, i32* @_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE11readBuffer1, align 4, !dbg !239 ; [debug line = 106:7]
  store i32 0, i32* @_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE11readBuffer2, align 4, !dbg !240 ; [debug line = 107:7]
  store i32 0, i32* @_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE11readBuffer3, align 4, !dbg !241 ; [debug line = 108:7]
  store i32 0, i32* @_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE11readBuffer4, align 4, !dbg !242 ; [debug line = 109:7]
  br label %126, !dbg !243                        ; [debug line = 110:6]

; <label>:126                                     ; preds = %125, %121
  br label %127, !dbg !244                        ; [debug line = 111:5]

; <label>:127                                     ; preds = %126, %97
  br label %128, !dbg !245                        ; [debug line = 112:4]

; <label>:128                                     ; preds = %127, %73
  br label %129, !dbg !246                        ; [debug line = 113:3]

; <label>:129                                     ; preds = %128, %49
  br label %130, !dbg !247                        ; [debug line = 114:2]

; <label>:130                                     ; preds = %129, %25
  %131 = load i32* @_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE10delayCount, align 4, !dbg !248 ; [#uses=1 type=i32] [debug line = 116:2]
  %132 = add nsw i32 %131, 1, !dbg !248           ; [#uses=1 type=i32] [debug line = 116:2]
  store i32 %132, i32* @_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE10delayCount, align 4, !dbg !248 ; [debug line = 116:2]
  %133 = load %"class.hls::stream.0"** %3, align 8, !dbg !249 ; [#uses=1 type=%"class.hls::stream.0"*] [debug line = 118:2]
  %134 = load i32* @_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE11writeBuffer, align 4, !dbg !249 ; [#uses=1 type=i32] [debug line = 118:2]
  %135 = sub nsw i32 %134, 1, !dbg !249           ; [#uses=1 type=i32] [debug line = 118:2]
  %136 = sext i32 %135 to i64, !dbg !249          ; [#uses=1 type=i64] [debug line = 118:2]
  %137 = getelementptr inbounds [48000 x float]* @_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE6buffer, i32 0, i64 %136, !dbg !249 ; [#uses=1 type=float*] [debug line = 118:2]
  %138 = load float* %137, align 4, !dbg !249     ; [#uses=1 type=float] [debug line = 118:2]
  %139 = load float* %outAccumulate, align 4, !dbg !249 ; [#uses=1 type=float] [debug line = 118:2]
  %140 = fadd float %138, %139, !dbg !249         ; [#uses=1 type=float] [debug line = 118:2]
  store float %140, float* %6, align 4, !dbg !249 ; [debug line = 118:2]
  call void @_ZN3hls6streamIfElsERKf(%"class.hls::stream.0"* %133, float* %6), !dbg !249 ; [debug line = 118:2]
  ret void, !dbg !250                             ; [debug line = 119:1]
}

; [#uses=22]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecPipeline(...) nounwind

; [#uses=5]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=1]
define linkonce_odr void @_ZN3hls6streamIiErsERi(%"class.hls::stream"* %this, i32* %rdata) nounwind uwtable inlinehint alwaysinline align 2 {
  %1 = alloca %"class.hls::stream"*, align 8      ; [#uses=2 type=%"class.hls::stream"**]
  %2 = alloca i32*, align 8                       ; [#uses=2 type=i32**]
  store %"class.hls::stream"* %this, %"class.hls::stream"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !251), !dbg !253 ; [debug line = 101:48] [debug variable = this]
  store i32* %rdata, i32** %2, align 8
  call void @llvm.dbg.declare(metadata !{i32** %2}, metadata !254), !dbg !255 ; [debug line = 101:75] [debug variable = rdata]
  %3 = load %"class.hls::stream"** %1             ; [#uses=1 type=%"class.hls::stream"*]
  %4 = load i32** %2, align 8, !dbg !256          ; [#uses=1 type=i32*] [debug line = 102:9]
  call void @_ZN3hls6streamIiE4readERi(%"class.hls::stream"* %3, i32* %4), !dbg !256 ; [debug line = 102:9]
  ret void, !dbg !258                             ; [debug line = 103:5]
}

; [#uses=1]
define linkonce_odr void @_ZN3hls6streamIfErsERf(%"class.hls::stream.0"* %this, float* %rdata) nounwind uwtable inlinehint alwaysinline align 2 {
  %1 = alloca %"class.hls::stream.0"*, align 8    ; [#uses=2 type=%"class.hls::stream.0"**]
  %2 = alloca float*, align 8                     ; [#uses=2 type=float**]
  store %"class.hls::stream.0"* %this, %"class.hls::stream.0"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream.0"** %1}, metadata !259), !dbg !261 ; [debug line = 101:48] [debug variable = this]
  store float* %rdata, float** %2, align 8
  call void @llvm.dbg.declare(metadata !{float** %2}, metadata !262), !dbg !263 ; [debug line = 101:75] [debug variable = rdata]
  %3 = load %"class.hls::stream.0"** %1           ; [#uses=1 type=%"class.hls::stream.0"*]
  %4 = load float** %2, align 8, !dbg !264        ; [#uses=1 type=float*] [debug line = 102:9]
  call void @_ZN3hls6streamIfE4readERf(%"class.hls::stream.0"* %3, float* %4), !dbg !264 ; [debug line = 102:9]
  ret void, !dbg !266                             ; [debug line = 103:5]
}

; [#uses=1]
define linkonce_odr void @_ZN3hls6streamIfElsERKf(%"class.hls::stream.0"* %this, float* %wdata) nounwind uwtable inlinehint alwaysinline align 2 {
  %1 = alloca %"class.hls::stream.0"*, align 8    ; [#uses=2 type=%"class.hls::stream.0"**]
  %2 = alloca float*, align 8                     ; [#uses=2 type=float**]
  store %"class.hls::stream.0"* %this, %"class.hls::stream.0"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream.0"** %1}, metadata !267), !dbg !268 ; [debug line = 105:48] [debug variable = this]
  store float* %wdata, float** %2, align 8
  call void @llvm.dbg.declare(metadata !{float** %2}, metadata !269), !dbg !270 ; [debug line = 105:81] [debug variable = wdata]
  %3 = load %"class.hls::stream.0"** %1           ; [#uses=1 type=%"class.hls::stream.0"*]
  %4 = load float** %2, align 8, !dbg !271        ; [#uses=1 type=float*] [debug line = 106:9]
  call void @_ZN3hls6streamIfE5writeERKf(%"class.hls::stream.0"* %3, float* %4), !dbg !271 ; [debug line = 106:9]
  ret void, !dbg !273                             ; [debug line = 107:5]
}

; [#uses=1]
define linkonce_odr void @_ZN3hls6streamIfE5writeERKf(%"class.hls::stream.0"* %this, float* %din) nounwind uwtable inlinehint alwaysinline align 2 {
  %1 = alloca %"class.hls::stream.0"*, align 8    ; [#uses=2 type=%"class.hls::stream.0"**]
  %2 = alloca float*, align 8                     ; [#uses=2 type=float**]
  %tmp = alloca float, align 4                    ; [#uses=2 type=float*]
  store %"class.hls::stream.0"* %this, %"class.hls::stream.0"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream.0"** %1}, metadata !274), !dbg !275 ; [debug line = 144:48] [debug variable = this]
  store float* %din, float** %2, align 8
  call void @llvm.dbg.declare(metadata !{float** %2}, metadata !276), !dbg !277 ; [debug line = 144:74] [debug variable = din]
  %3 = load %"class.hls::stream.0"** %1           ; [#uses=1 type=%"class.hls::stream.0"*]
  call void @llvm.dbg.declare(metadata !{float* %tmp}, metadata !278), !dbg !280 ; [debug line = 145:22] [debug variable = tmp]
  %4 = load float** %2, align 8, !dbg !281        ; [#uses=1 type=float*] [debug line = 145:31]
  %5 = load float* %4, align 4, !dbg !281         ; [#uses=1 type=float] [debug line = 145:31]
  store float %5, float* %tmp, align 4, !dbg !281 ; [debug line = 145:31]
  %6 = getelementptr inbounds %"class.hls::stream.0"* %3, i32 0, i32 0, !dbg !282 ; [#uses=1 type=float*] [debug line = 146:9]
  call void (...)* @_ssdm_StreamWrite(float* %6, float* %tmp) nounwind, !dbg !282 ; [debug line = 146:9]
  ret void, !dbg !283                             ; [debug line = 147:5]
}

; [#uses=1]
declare void @_ssdm_StreamWrite(...) nounwind

; [#uses=1]
define linkonce_odr void @_ZN3hls6streamIfE4readERf(%"class.hls::stream.0"* %this, float* %dout) nounwind uwtable inlinehint alwaysinline align 2 {
  %1 = alloca %"class.hls::stream.0"*, align 8    ; [#uses=2 type=%"class.hls::stream.0"**]
  %2 = alloca float*, align 8                     ; [#uses=2 type=float**]
  %tmp = alloca float, align 4                    ; [#uses=2 type=float*]
  store %"class.hls::stream.0"* %this, %"class.hls::stream.0"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream.0"** %1}, metadata !284), !dbg !285 ; [debug line = 123:48] [debug variable = this]
  store float* %dout, float** %2, align 8
  call void @llvm.dbg.declare(metadata !{float** %2}, metadata !286), !dbg !287 ; [debug line = 123:67] [debug variable = dout]
  %3 = load %"class.hls::stream.0"** %1           ; [#uses=1 type=%"class.hls::stream.0"*]
  call void @llvm.dbg.declare(metadata !{float* %tmp}, metadata !288), !dbg !290 ; [debug line = 124:22] [debug variable = tmp]
  %4 = getelementptr inbounds %"class.hls::stream.0"* %3, i32 0, i32 0, !dbg !291 ; [#uses=1 type=float*] [debug line = 125:9]
  call void (...)* @_ssdm_StreamRead(float* %4, float* %tmp) nounwind, !dbg !291 ; [debug line = 125:9]
  %5 = load float* %tmp, align 4, !dbg !292       ; [#uses=1 type=float] [debug line = 126:9]
  %6 = load float** %2, align 8, !dbg !292        ; [#uses=1 type=float*] [debug line = 126:9]
  store float %5, float* %6, align 4, !dbg !292   ; [debug line = 126:9]
  ret void, !dbg !293                             ; [debug line = 127:5]
}

; [#uses=2]
declare void @_ssdm_StreamRead(...) nounwind

; [#uses=1]
define linkonce_odr void @_ZN3hls6streamIiE4readERi(%"class.hls::stream"* %this, i32* %dout) nounwind uwtable inlinehint alwaysinline align 2 {
  %1 = alloca %"class.hls::stream"*, align 8      ; [#uses=2 type=%"class.hls::stream"**]
  %2 = alloca i32*, align 8                       ; [#uses=2 type=i32**]
  %tmp = alloca i32, align 4                      ; [#uses=2 type=i32*]
  store %"class.hls::stream"* %this, %"class.hls::stream"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !294), !dbg !295 ; [debug line = 123:48] [debug variable = this]
  store i32* %dout, i32** %2, align 8
  call void @llvm.dbg.declare(metadata !{i32** %2}, metadata !296), !dbg !297 ; [debug line = 123:67] [debug variable = dout]
  %3 = load %"class.hls::stream"** %1             ; [#uses=1 type=%"class.hls::stream"*]
  call void @llvm.dbg.declare(metadata !{i32* %tmp}, metadata !298), !dbg !300 ; [debug line = 124:22] [debug variable = tmp]
  %4 = getelementptr inbounds %"class.hls::stream"* %3, i32 0, i32 0, !dbg !301 ; [#uses=1 type=i32*] [debug line = 125:9]
  call void (...)* @_ssdm_StreamRead(i32* %4, i32* %tmp) nounwind, !dbg !301 ; [debug line = 125:9]
  %5 = load i32* %tmp, align 4, !dbg !302         ; [#uses=1 type=i32] [debug line = 126:9]
  %6 = load i32** %2, align 8, !dbg !302          ; [#uses=1 type=i32*] [debug line = 126:9]
  store i32 %5, i32* %6, align 4, !dbg !302       ; [debug line = 126:9]
  ret void, !dbg !303                             ; [debug line = 127:5]
}

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!147, !154, !160, !162, !165, !167, !169}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/austin/ECE1373_GhostSynth/modules/echo/Echo/solution1/.autopilot/db/Echo.pragma.2.cpp", metadata !"/home/austin/ECE1373_GhostSynth/modules/echo", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !124} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"Echo", metadata !"Echo", metadata !"_Z4EchoRN3hls6streamIiEERNS0_IfEES4_ii", metadata !6, i32 17, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream"*, %"class.hls::stream.0"*, %"class.hls::stream.0"*, i32, i32)* @_Z4EchoRN3hls6streamIiEERNS0_IfEES4_ii, null, null, metadata !20, i32 26} ; [ DW_TAG_subprogram ]
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
!118 = metadata !{i32 786478, i32 0, metadata !11, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIfElsERKf", metadata !12, i32 105, metadata !93, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream.0"*, float*)* @_ZN3hls6streamIfElsERKf, null, metadata !92, metadata !20, i32 105} ; [ DW_TAG_subprogram ]
!119 = metadata !{i32 786478, i32 0, metadata !11, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !12, i32 144, metadata !93, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream.0"*, float*)* @_ZN3hls6streamIfE5writeERKf, null, metadata !109, metadata !20, i32 144} ; [ DW_TAG_subprogram ]
!120 = metadata !{i32 786478, i32 0, metadata !11, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIfErsERf", metadata !12, i32 101, metadata !89, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream.0"*, float*)* @_ZN3hls6streamIfErsERf, null, metadata !88, metadata !20, i32 101} ; [ DW_TAG_subprogram ]
!121 = metadata !{i32 786478, i32 0, metadata !11, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readERf", metadata !12, i32 123, metadata !89, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream.0"*, float*)* @_ZN3hls6streamIfE4readERf, null, metadata !102, metadata !20, i32 123} ; [ DW_TAG_subprogram ]
!122 = metadata !{i32 786478, i32 0, metadata !11, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIiErsERi", metadata !12, i32 101, metadata !37, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream"*, i32*)* @_ZN3hls6streamIiErsERi, null, metadata !36, metadata !20, i32 101} ; [ DW_TAG_subprogram ]
!123 = metadata !{i32 786478, i32 0, metadata !11, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIiE4readERi", metadata !12, i32 123, metadata !37, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream"*, i32*)* @_ZN3hls6streamIiE4readERi, null, metadata !51, metadata !20, i32 123} ; [ DW_TAG_subprogram ]
!124 = metadata !{metadata !125}
!125 = metadata !{metadata !126, metadata !127, metadata !128, metadata !129, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !140, metadata !141, metadata !142, metadata !144, metadata !145}
!126 = metadata !{i32 786484, i32 0, metadata !5, metadata !"initial", metadata !"initial", metadata !"", metadata !6, i32 37, metadata !15, i32 1, i32 1, i32* @_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE7initial} ; [ DW_TAG_variable ]
!127 = metadata !{i32 786484, i32 0, metadata !5, metadata !"delayCount", metadata !"delayCount", metadata !"", metadata !6, i32 38, metadata !15, i32 1, i32 1, i32* @_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE10delayCount} ; [ DW_TAG_variable ]
!128 = metadata !{i32 786484, i32 0, metadata !5, metadata !"writeBuffer", metadata !"writeBuffer", metadata !"", metadata !6, i32 39, metadata !15, i32 1, i32 1, i32* @_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE11writeBuffer} ; [ DW_TAG_variable ]
!129 = metadata !{i32 786484, i32 0, metadata !5, metadata !"buffer", metadata !"buffer", metadata !"", metadata !6, i32 43, metadata !130, i32 1, i32 1, [48000 x float]* @_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE6buffer} ; [ DW_TAG_variable ]
!130 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 1536000, i64 32, i32 0, i32 0, metadata !72, metadata !131, i32 0, i32 0} ; [ DW_TAG_array_type ]
!131 = metadata !{metadata !132}
!132 = metadata !{i32 786465, i64 0, i64 47999}   ; [ DW_TAG_subrange_type ]
!133 = metadata !{i32 786484, i32 0, metadata !5, metadata !"readBuffer1", metadata !"readBuffer1", metadata !"", metadata !6, i32 45, metadata !15, i32 1, i32 1, i32* @_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE11readBuffer1} ; [ DW_TAG_variable ]
!134 = metadata !{i32 786484, i32 0, metadata !5, metadata !"readBuffer2", metadata !"readBuffer2", metadata !"", metadata !6, i32 46, metadata !15, i32 1, i32 1, i32* @_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE11readBuffer2} ; [ DW_TAG_variable ]
!135 = metadata !{i32 786484, i32 0, metadata !5, metadata !"readBuffer3", metadata !"readBuffer3", metadata !"", metadata !6, i32 47, metadata !15, i32 1, i32 1, i32* @_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE11readBuffer3} ; [ DW_TAG_variable ]
!136 = metadata !{i32 786484, i32 0, metadata !5, metadata !"readBuffer4", metadata !"readBuffer4", metadata !"", metadata !6, i32 48, metadata !15, i32 1, i32 1, i32* @_ZZ4EchoRN3hls6streamIiEERNS0_IfEES4_iiE11readBuffer4} ; [ DW_TAG_variable ]
!137 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !138, i32 315, metadata !139, i32 0, i32 1, %"class.hls::stream"* @_IO_2_1_stdin_} ; [ DW_TAG_variable ]
!138 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/austin/ECE1373_GhostSynth/modules/echo", null} ; [ DW_TAG_file_type ]
!139 = metadata !{i32 786434, null, metadata !"_IO_FILE_plus", metadata !138, i32 313, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!140 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !138, i32 316, metadata !139, i32 0, i32 1, %"class.hls::stream"* @_IO_2_1_stdout_} ; [ DW_TAG_variable ]
!141 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !138, i32 317, metadata !139, i32 0, i32 1, %"class.hls::stream"* @_IO_2_1_stderr_} ; [ DW_TAG_variable ]
!142 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !143, i32 26, metadata !15, i32 0, i32 1, i32* @sys_nerr} ; [ DW_TAG_variable ]
!143 = metadata !{i32 786473, metadata !"/usr/include/x86_64-linux-gnu/bits/sys_errlist.h", metadata !"/home/austin/ECE1373_GhostSynth/modules/echo", null} ; [ DW_TAG_file_type ]
!144 = metadata !{i32 786484, i32 0, null, metadata !"_sys_nerr", metadata !"_sys_nerr", metadata !"", metadata !143, i32 30, metadata !15, i32 0, i32 1, i32* @_sys_nerr} ; [ DW_TAG_variable ]
!145 = metadata !{i32 786484, i32 0, null, metadata !"signgam", metadata !"signgam", metadata !"", metadata !146, i32 168, metadata !15, i32 0, i32 1, i32* @signgam} ; [ DW_TAG_variable ]
!146 = metadata !{i32 786473, metadata !"/usr/include/math.h", metadata !"/home/austin/ECE1373_GhostSynth/modules/echo", null} ; [ DW_TAG_file_type ]
!147 = metadata !{void (%"class.hls::stream"*, %"class.hls::stream.0"*, %"class.hls::stream.0"*, i32, i32)* @_Z4EchoRN3hls6streamIiEERNS0_IfEES4_ii, metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !153}
!148 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0}
!149 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!150 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<int> &", metadata !"hls::stream<float> &", metadata !"hls::stream<float> &", metadata !"int", metadata !"int"}
!151 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!152 = metadata !{metadata !"kernel_arg_name", metadata !"change", metadata !"value_in", metadata !"value_out", metadata !"delay", metadata !"scale"}
!153 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!154 = metadata !{void (%"class.hls::stream.0"*, float*)* @_ZN3hls6streamIfElsERKf, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !153}
!155 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!156 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!157 = metadata !{metadata !"kernel_arg_type", metadata !"const float &"}
!158 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!159 = metadata !{metadata !"kernel_arg_name", metadata !"wdata"}
!160 = metadata !{void (%"class.hls::stream.0"*, float*)* @_ZN3hls6streamIfE5writeERKf, metadata !155, metadata !156, metadata !157, metadata !158, metadata !161, metadata !153}
!161 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!162 = metadata !{void (%"class.hls::stream.0"*, float*)* @_ZN3hls6streamIfErsERf, metadata !155, metadata !156, metadata !163, metadata !158, metadata !164, metadata !153}
!163 = metadata !{metadata !"kernel_arg_type", metadata !"float &"}
!164 = metadata !{metadata !"kernel_arg_name", metadata !"rdata"}
!165 = metadata !{void (%"class.hls::stream.0"*, float*)* @_ZN3hls6streamIfE4readERf, metadata !155, metadata !156, metadata !163, metadata !158, metadata !166, metadata !153}
!166 = metadata !{metadata !"kernel_arg_name", metadata !"dout"}
!167 = metadata !{void (%"class.hls::stream"*, i32*)* @_ZN3hls6streamIiErsERi, metadata !155, metadata !156, metadata !168, metadata !158, metadata !164, metadata !153}
!168 = metadata !{metadata !"kernel_arg_type", metadata !"int &"}
!169 = metadata !{void (%"class.hls::stream"*, i32*)* @_ZN3hls6streamIiE4readERi, metadata !155, metadata !156, metadata !168, metadata !158, metadata !166, metadata !153}
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
!187 = metadata !{i32 786688, metadata !181, metadata !"outAccumulate", metadata !6, i32 41, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!188 = metadata !{i32 41, i32 8, metadata !181, null}
!189 = metadata !{i32 41, i32 23, metadata !181, null}
!190 = metadata !{i32 786688, metadata !181, metadata !"changevalue", metadata !6, i32 50, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!191 = metadata !{i32 50, i32 6, metadata !181, null}
!192 = metadata !{i32 52, i32 2, metadata !181, null}
!193 = metadata !{i32 56, i32 2, metadata !181, null}
!194 = metadata !{i32 57, i32 3, metadata !195, null}
!195 = metadata !{i32 786443, metadata !181, i32 56, i32 17, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!196 = metadata !{i32 58, i32 3, metadata !195, null}
!197 = metadata !{i32 59, i32 3, metadata !195, null}
!198 = metadata !{i32 60, i32 3, metadata !195, null}
!199 = metadata !{i32 61, i32 3, metadata !195, null}
!200 = metadata !{i32 62, i32 3, metadata !195, null}
!201 = metadata !{i32 63, i32 2, metadata !195, null}
!202 = metadata !{i32 66, i32 2, metadata !181, null}
!203 = metadata !{i32 68, i32 3, metadata !204, null}
!204 = metadata !{i32 786443, metadata !181, i32 66, i32 25, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!205 = metadata !{i32 69, i32 3, metadata !204, null}
!206 = metadata !{i32 71, i32 2, metadata !204, null}
!207 = metadata !{i32 74, i32 2, metadata !181, null}
!208 = metadata !{i32 76, i32 3, metadata !209, null}
!209 = metadata !{i32 786443, metadata !181, i32 74, i32 24, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!210 = metadata !{i32 77, i32 4, metadata !211, null}
!211 = metadata !{i32 786443, metadata !209, i32 76, i32 33, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!212 = metadata !{i32 78, i32 4, metadata !211, null}
!213 = metadata !{i32 79, i32 3, metadata !211, null}
!214 = metadata !{i32 81, i32 3, metadata !209, null}
!215 = metadata !{i32 83, i32 4, metadata !216, null}
!216 = metadata !{i32 786443, metadata !209, i32 81, i32 26, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!217 = metadata !{i32 84, i32 5, metadata !218, null}
!218 = metadata !{i32 786443, metadata !216, i32 83, i32 34, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!219 = metadata !{i32 85, i32 5, metadata !218, null}
!220 = metadata !{i32 86, i32 4, metadata !218, null}
!221 = metadata !{i32 88, i32 4, metadata !216, null}
!222 = metadata !{i32 90, i32 5, metadata !223, null}
!223 = metadata !{i32 786443, metadata !216, i32 88, i32 27, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!224 = metadata !{i32 91, i32 6, metadata !225, null}
!225 = metadata !{i32 786443, metadata !223, i32 90, i32 35, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!226 = metadata !{i32 92, i32 6, metadata !225, null}
!227 = metadata !{i32 93, i32 5, metadata !225, null}
!228 = metadata !{i32 95, i32 5, metadata !223, null}
!229 = metadata !{i32 97, i32 6, metadata !230, null}
!230 = metadata !{i32 786443, metadata !223, i32 95, i32 28, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!231 = metadata !{i32 98, i32 7, metadata !232, null}
!232 = metadata !{i32 786443, metadata !230, i32 97, i32 36, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!233 = metadata !{i32 99, i32 7, metadata !232, null}
!234 = metadata !{i32 100, i32 6, metadata !232, null}
!235 = metadata !{i32 103, i32 6, metadata !230, null}
!236 = metadata !{i32 104, i32 7, metadata !237, null}
!237 = metadata !{i32 786443, metadata !230, i32 103, i32 36, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!238 = metadata !{i32 105, i32 7, metadata !237, null}
!239 = metadata !{i32 106, i32 7, metadata !237, null}
!240 = metadata !{i32 107, i32 7, metadata !237, null}
!241 = metadata !{i32 108, i32 7, metadata !237, null}
!242 = metadata !{i32 109, i32 7, metadata !237, null}
!243 = metadata !{i32 110, i32 6, metadata !237, null}
!244 = metadata !{i32 111, i32 5, metadata !230, null}
!245 = metadata !{i32 112, i32 4, metadata !223, null}
!246 = metadata !{i32 113, i32 3, metadata !216, null}
!247 = metadata !{i32 114, i32 2, metadata !209, null}
!248 = metadata !{i32 116, i32 2, metadata !181, null}
!249 = metadata !{i32 118, i32 2, metadata !181, null}
!250 = metadata !{i32 119, i32 1, metadata !181, null}
!251 = metadata !{i32 786689, metadata !122, metadata !"this", metadata !12, i32 16777317, metadata !252, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!252 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!253 = metadata !{i32 101, i32 48, metadata !122, null}
!254 = metadata !{i32 786689, metadata !122, metadata !"rdata", metadata !12, i32 33554533, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!255 = metadata !{i32 101, i32 75, metadata !122, null}
!256 = metadata !{i32 102, i32 9, metadata !257, null}
!257 = metadata !{i32 786443, metadata !122, i32 101, i32 82, metadata !12, i32 16} ; [ DW_TAG_lexical_block ]
!258 = metadata !{i32 103, i32 5, metadata !257, null}
!259 = metadata !{i32 786689, metadata !120, metadata !"this", metadata !12, i32 16777317, metadata !260, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!260 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !69} ; [ DW_TAG_pointer_type ]
!261 = metadata !{i32 101, i32 48, metadata !120, null}
!262 = metadata !{i32 786689, metadata !120, metadata !"rdata", metadata !12, i32 33554533, metadata !91, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!263 = metadata !{i32 101, i32 75, metadata !120, null}
!264 = metadata !{i32 102, i32 9, metadata !265, null}
!265 = metadata !{i32 786443, metadata !120, i32 101, i32 82, metadata !12, i32 14} ; [ DW_TAG_lexical_block ]
!266 = metadata !{i32 103, i32 5, metadata !265, null}
!267 = metadata !{i32 786689, metadata !118, metadata !"this", metadata !12, i32 16777321, metadata !260, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!268 = metadata !{i32 105, i32 48, metadata !118, null}
!269 = metadata !{i32 786689, metadata !118, metadata !"wdata", metadata !12, i32 33554537, metadata !95, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!270 = metadata !{i32 105, i32 81, metadata !118, null}
!271 = metadata !{i32 106, i32 9, metadata !272, null}
!272 = metadata !{i32 786443, metadata !118, i32 105, i32 88, metadata !12, i32 12} ; [ DW_TAG_lexical_block ]
!273 = metadata !{i32 107, i32 5, metadata !272, null}
!274 = metadata !{i32 786689, metadata !119, metadata !"this", metadata !12, i32 16777360, metadata !260, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!275 = metadata !{i32 144, i32 48, metadata !119, null}
!276 = metadata !{i32 786689, metadata !119, metadata !"din", metadata !12, i32 33554576, metadata !95, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!277 = metadata !{i32 144, i32 74, metadata !119, null}
!278 = metadata !{i32 786688, metadata !279, metadata !"tmp", metadata !12, i32 145, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!279 = metadata !{i32 786443, metadata !119, i32 144, i32 79, metadata !12, i32 13} ; [ DW_TAG_lexical_block ]
!280 = metadata !{i32 145, i32 22, metadata !279, null}
!281 = metadata !{i32 145, i32 31, metadata !279, null}
!282 = metadata !{i32 146, i32 9, metadata !279, null}
!283 = metadata !{i32 147, i32 5, metadata !279, null}
!284 = metadata !{i32 786689, metadata !121, metadata !"this", metadata !12, i32 16777339, metadata !260, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!285 = metadata !{i32 123, i32 48, metadata !121, null}
!286 = metadata !{i32 786689, metadata !121, metadata !"dout", metadata !12, i32 33554555, metadata !91, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!287 = metadata !{i32 123, i32 67, metadata !121, null}
!288 = metadata !{i32 786688, metadata !289, metadata !"tmp", metadata !12, i32 124, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!289 = metadata !{i32 786443, metadata !121, i32 123, i32 73, metadata !12, i32 15} ; [ DW_TAG_lexical_block ]
!290 = metadata !{i32 124, i32 22, metadata !289, null}
!291 = metadata !{i32 125, i32 9, metadata !289, null}
!292 = metadata !{i32 126, i32 9, metadata !289, null}
!293 = metadata !{i32 127, i32 5, metadata !289, null}
!294 = metadata !{i32 786689, metadata !123, metadata !"this", metadata !12, i32 16777339, metadata !252, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!295 = metadata !{i32 123, i32 48, metadata !123, null}
!296 = metadata !{i32 786689, metadata !123, metadata !"dout", metadata !12, i32 33554555, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!297 = metadata !{i32 123, i32 67, metadata !123, null}
!298 = metadata !{i32 786688, metadata !299, metadata !"tmp", metadata !12, i32 124, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!299 = metadata !{i32 786443, metadata !123, i32 123, i32 73, metadata !12, i32 17} ; [ DW_TAG_lexical_block ]
!300 = metadata !{i32 124, i32 22, metadata !299, null}
!301 = metadata !{i32 125, i32 9, metadata !299, null}
!302 = metadata !{i32 126, i32 9, metadata !299, null}
!303 = metadata !{i32 127, i32 5, metadata !299, null}

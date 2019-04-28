; ModuleID = '/home/austin/ECE1373_GhostSynth/modules/Echo/Echo/solution1/.autopilot/db/a.o.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.hls::stream" = type { float }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str1 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1 ; [#uses=1 type=[13 x i8]*]
@.str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str3 = private unnamed_addr constant [9 x i8] c"CTRL_BUS\00", align 1 ; [#uses=1 type=[9 x i8]*]
@.str4 = private unnamed_addr constant [5 x i8] c"axis\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str5 = private unnamed_addr constant [5 x i8] c"both\00", align 1 ; [#uses=1 type=[5 x i8]*]
@_ZZ4EchoRN3hls6streamIfEES2_ifE6buffer = internal global [4800 x float] zeroinitializer, align 16 ; [#uses=2 type=[4800 x float]*]
@_ZZ4EchoRN3hls6streamIfEES2_ifE10readBuffer = internal global i32 0, align 4 ; [#uses=7 type=i32*]
@_ZGVZ4EchoRN3hls6streamIfEES2_ifE10readBuffer = internal global i8 0 ; [#uses=2 type=i8*]
@_ZZ4EchoRN3hls6streamIfEES2_ifE11writeBuffer = internal global i32 0, align 4 ; [#uses=6 type=i32*]
@_ZZ4EchoRN3hls6streamIfEES2_ifE10delaycheck = internal global i32 0, align 4 ; [#uses=3 type=i32*]
@_ZGVZ4EchoRN3hls6streamIfEES2_ifE10delaycheck = internal global i8 0 ; [#uses=2 type=i8*]
@_IO_2_1_stdin_ = external global %"class.hls::stream" ; [#uses=0 type=%"class.hls::stream"*]
@_IO_2_1_stdout_ = external global %"class.hls::stream" ; [#uses=0 type=%"class.hls::stream"*]
@_IO_2_1_stderr_ = external global %"class.hls::stream" ; [#uses=0 type=%"class.hls::stream"*]
@sys_nerr = external global i32                   ; [#uses=0 type=i32*]
@_sys_nerr = external global i32                  ; [#uses=0 type=i32*]
@signgam = external global i32                    ; [#uses=0 type=i32*]

; [#uses=0]
define void @_Z4EchoRN3hls6streamIfEES2_if(%"class.hls::stream"* %value_in, %"class.hls::stream"* %value_out, i32 %delay, float %scale) nounwind uwtable {
  %1 = alloca %"class.hls::stream"*, align 8      ; [#uses=3 type=%"class.hls::stream"**]
  %2 = alloca %"class.hls::stream"*, align 8      ; [#uses=3 type=%"class.hls::stream"**]
  %3 = alloca i32, align 4                        ; [#uses=7 type=i32*]
  %4 = alloca float, align 4                      ; [#uses=3 type=float*]
  %current_value = alloca float, align 4          ; [#uses=5 type=float*]
  store %"class.hls::stream"* %value_in, %"class.hls::stream"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !112), !dbg !113 ; [debug line = 16:23] [debug variable = value_in]
  store %"class.hls::stream"* %value_out, %"class.hls::stream"** %2, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %2}, metadata !114), !dbg !115 ; [debug line = 17:23] [debug variable = value_out]
  store i32 %delay, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !116), !dbg !117 ; [debug line = 19:6] [debug variable = delay]
  store float %scale, float* %4, align 4
  call void @llvm.dbg.declare(metadata !{float* %4}, metadata !118), !dbg !119 ; [debug line = 20:8] [debug variable = scale]
  call void (...)* @_ssdm_op_SpecLatency(i32 12, i32 65535, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !120 ; [debug line = 23:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([13 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !122 ; [debug line = 25:1]
  %5 = load i32* %3, align 4, !dbg !123           ; [#uses=1 type=i32] [debug line = 26:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %5, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !123 ; [debug line = 26:1]
  %6 = load float* %4, align 4, !dbg !124         ; [#uses=1 type=float] [debug line = 27:1]
  %7 = fpext float %6 to double, !dbg !124        ; [#uses=1 type=double] [debug line = 27:1]
  call void (...)* @_ssdm_op_SpecInterface(double %7, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !124 ; [debug line = 27:1]
  %8 = load %"class.hls::stream"** %1, align 8, !dbg !125 ; [#uses=1 type=%"class.hls::stream"*] [debug line = 29:1]
  call void (...)* @_ssdm_op_SpecInterface(%"class.hls::stream"* %8, i8* getelementptr inbounds ([5 x i8]* @.str4, i32 0, i32 0), i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str5, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !125 ; [debug line = 29:1]
  %9 = load %"class.hls::stream"** %2, align 8, !dbg !126 ; [#uses=1 type=%"class.hls::stream"*] [debug line = 30:1]
  call void (...)* @_ssdm_op_SpecInterface(%"class.hls::stream"* %9, i8* getelementptr inbounds ([5 x i8]* @.str4, i32 0, i32 0), i32 1, i32 1, i8* getelementptr inbounds ([5 x i8]* @.str5, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str, i32 0, i32 0)) nounwind, !dbg !126 ; [debug line = 30:1]
  %10 = load i8* @_ZGVZ4EchoRN3hls6streamIfEES2_ifE10readBuffer, align 1, !dbg !127 ; [#uses=1 type=i8] [debug line = 33:38]
  %11 = icmp eq i8 %10, 0, !dbg !127              ; [#uses=1 type=i1] [debug line = 33:38]
  br i1 %11, label %12, label %15, !dbg !127      ; [debug line = 33:38]

; <label>:12                                      ; preds = %0
  %13 = load i32* %3, align 4, !dbg !127          ; [#uses=1 type=i32] [debug line = 33:38]
  %14 = sub nsw i32 4800, %13, !dbg !127          ; [#uses=1 type=i32] [debug line = 33:38]
  store i32 %14, i32* @_ZZ4EchoRN3hls6streamIfEES2_ifE10readBuffer, align 4, !dbg !127 ; [debug line = 33:38]
  store i8 1, i8* @_ZGVZ4EchoRN3hls6streamIfEES2_ifE10readBuffer, !dbg !127 ; [debug line = 33:38]
  br label %15, !dbg !127                         ; [debug line = 33:38]

; <label>:15                                      ; preds = %12, %0
  %16 = load i8* @_ZGVZ4EchoRN3hls6streamIfEES2_ifE10delaycheck, align 1, !dbg !128 ; [#uses=1 type=i8] [debug line = 36:31]
  %17 = icmp eq i8 %16, 0, !dbg !128              ; [#uses=1 type=i1] [debug line = 36:31]
  br i1 %17, label %18, label %20, !dbg !128      ; [debug line = 36:31]

; <label>:18                                      ; preds = %15
  %19 = load i32* %3, align 4, !dbg !128          ; [#uses=1 type=i32] [debug line = 36:31]
  store i32 %19, i32* @_ZZ4EchoRN3hls6streamIfEES2_ifE10delaycheck, align 4, !dbg !128 ; [debug line = 36:31]
  store i8 1, i8* @_ZGVZ4EchoRN3hls6streamIfEES2_ifE10delaycheck, !dbg !128 ; [debug line = 36:31]
  br label %20, !dbg !128                         ; [debug line = 36:31]

; <label>:20                                      ; preds = %18, %15
  %21 = load i32* @_ZZ4EchoRN3hls6streamIfEES2_ifE10delaycheck, align 4, !dbg !129 ; [#uses=1 type=i32] [debug line = 38:2]
  %22 = load i32* %3, align 4, !dbg !129          ; [#uses=1 type=i32] [debug line = 38:2]
  %23 = icmp ne i32 %21, %22, !dbg !129           ; [#uses=1 type=i1] [debug line = 38:2]
  br i1 %23, label %24, label %28, !dbg !129      ; [debug line = 38:2]

; <label>:24                                      ; preds = %20
  %25 = load i32* %3, align 4, !dbg !130          ; [#uses=1 type=i32] [debug line = 39:3]
  store i32 %25, i32* @_ZZ4EchoRN3hls6streamIfEES2_ifE10delaycheck, align 4, !dbg !130 ; [debug line = 39:3]
  %26 = load i32* %3, align 4, !dbg !132          ; [#uses=1 type=i32] [debug line = 40:3]
  %27 = sub nsw i32 4800, %26, !dbg !132          ; [#uses=1 type=i32] [debug line = 40:3]
  store i32 %27, i32* @_ZZ4EchoRN3hls6streamIfEES2_ifE10readBuffer, align 4, !dbg !132 ; [debug line = 40:3]
  store i32 0, i32* @_ZZ4EchoRN3hls6streamIfEES2_ifE11writeBuffer, align 4, !dbg !133 ; [debug line = 41:3]
  br label %28, !dbg !134                         ; [debug line = 42:2]

; <label>:28                                      ; preds = %24, %20
  call void @llvm.dbg.declare(metadata !{float* %current_value}, metadata !135), !dbg !136 ; [debug line = 44:8] [debug variable = current_value]
  %29 = load %"class.hls::stream"** %1, align 8, !dbg !137 ; [#uses=1 type=%"class.hls::stream"*] [debug line = 46:2]
  call void @_ZN3hls6streamIfErsERf(%"class.hls::stream"* %29, float* %current_value), !dbg !137 ; [debug line = 46:2]
  %30 = load float* %4, align 4, !dbg !138        ; [#uses=1 type=float] [debug line = 48:2]
  %31 = load i32* @_ZZ4EchoRN3hls6streamIfEES2_ifE10readBuffer, align 4, !dbg !138 ; [#uses=1 type=i32] [debug line = 48:2]
  %32 = sext i32 %31 to i64, !dbg !138            ; [#uses=1 type=i64] [debug line = 48:2]
  %33 = getelementptr inbounds [4800 x float]* @_ZZ4EchoRN3hls6streamIfEES2_ifE6buffer, i32 0, i64 %32, !dbg !138 ; [#uses=1 type=float*] [debug line = 48:2]
  %34 = load float* %33, align 4, !dbg !138       ; [#uses=1 type=float] [debug line = 48:2]
  %35 = fmul float %30, %34, !dbg !138            ; [#uses=1 type=float] [debug line = 48:2]
  %36 = load float* %current_value, align 4, !dbg !138 ; [#uses=1 type=float] [debug line = 48:2]
  %37 = fadd float %36, %35, !dbg !138            ; [#uses=1 type=float] [debug line = 48:2]
  store float %37, float* %current_value, align 4, !dbg !138 ; [debug line = 48:2]
  %38 = load float* %current_value, align 4, !dbg !139 ; [#uses=1 type=float] [debug line = 50:2]
  %39 = load i32* @_ZZ4EchoRN3hls6streamIfEES2_ifE11writeBuffer, align 4, !dbg !139 ; [#uses=1 type=i32] [debug line = 50:2]
  %40 = sext i32 %39 to i64, !dbg !139            ; [#uses=1 type=i64] [debug line = 50:2]
  %41 = getelementptr inbounds [4800 x float]* @_ZZ4EchoRN3hls6streamIfEES2_ifE6buffer, i32 0, i64 %40, !dbg !139 ; [#uses=1 type=float*] [debug line = 50:2]
  store float %38, float* %41, align 4, !dbg !139 ; [debug line = 50:2]
  %42 = load %"class.hls::stream"** %2, align 8, !dbg !140 ; [#uses=1 type=%"class.hls::stream"*] [debug line = 52:2]
  call void @_ZN3hls6streamIfElsERKf(%"class.hls::stream"* %42, float* %current_value), !dbg !140 ; [debug line = 52:2]
  %43 = load i32* @_ZZ4EchoRN3hls6streamIfEES2_ifE10readBuffer, align 4, !dbg !141 ; [#uses=1 type=i32] [debug line = 54:2]
  %44 = icmp slt i32 %43, 4800, !dbg !141         ; [#uses=1 type=i1] [debug line = 54:2]
  br i1 %44, label %45, label %48, !dbg !141      ; [debug line = 54:2]

; <label>:45                                      ; preds = %28
  %46 = load i32* @_ZZ4EchoRN3hls6streamIfEES2_ifE10readBuffer, align 4, !dbg !142 ; [#uses=1 type=i32] [debug line = 55:3]
  %47 = add nsw i32 %46, 1, !dbg !142             ; [#uses=1 type=i32] [debug line = 55:3]
  store i32 %47, i32* @_ZZ4EchoRN3hls6streamIfEES2_ifE10readBuffer, align 4, !dbg !142 ; [debug line = 55:3]
  br label %49, !dbg !142                         ; [debug line = 55:3]

; <label>:48                                      ; preds = %28
  store i32 0, i32* @_ZZ4EchoRN3hls6streamIfEES2_ifE10readBuffer, align 4, !dbg !143 ; [debug line = 57:3]
  br label %49

; <label>:49                                      ; preds = %48, %45
  %50 = load i32* @_ZZ4EchoRN3hls6streamIfEES2_ifE11writeBuffer, align 4, !dbg !144 ; [#uses=1 type=i32] [debug line = 59:2]
  %51 = icmp slt i32 %50, 4800, !dbg !144         ; [#uses=1 type=i1] [debug line = 59:2]
  br i1 %51, label %52, label %55, !dbg !144      ; [debug line = 59:2]

; <label>:52                                      ; preds = %49
  %53 = load i32* @_ZZ4EchoRN3hls6streamIfEES2_ifE11writeBuffer, align 4, !dbg !145 ; [#uses=1 type=i32] [debug line = 60:3]
  %54 = add nsw i32 %53, 1, !dbg !145             ; [#uses=1 type=i32] [debug line = 60:3]
  store i32 %54, i32* @_ZZ4EchoRN3hls6streamIfEES2_ifE11writeBuffer, align 4, !dbg !145 ; [debug line = 60:3]
  br label %56, !dbg !145                         ; [debug line = 60:3]

; <label>:55                                      ; preds = %49
  store i32 0, i32* @_ZZ4EchoRN3hls6streamIfEES2_ifE11writeBuffer, align 4, !dbg !146 ; [debug line = 62:3]
  br label %56

; <label>:56                                      ; preds = %55, %52
  ret void, !dbg !147                             ; [debug line = 65:1]
}

; [#uses=15]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecLatency(...) nounwind

; [#uses=5]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=1]
define linkonce_odr void @_ZN3hls6streamIfErsERf(%"class.hls::stream"* %this, float* %rdata) nounwind uwtable inlinehint alwaysinline align 2 {
  %1 = alloca %"class.hls::stream"*, align 8      ; [#uses=2 type=%"class.hls::stream"**]
  %2 = alloca float*, align 8                     ; [#uses=2 type=float**]
  store %"class.hls::stream"* %this, %"class.hls::stream"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !148), !dbg !150 ; [debug line = 101:48] [debug variable = this]
  store float* %rdata, float** %2, align 8
  call void @llvm.dbg.declare(metadata !{float** %2}, metadata !151), !dbg !152 ; [debug line = 101:75] [debug variable = rdata]
  %3 = load %"class.hls::stream"** %1             ; [#uses=1 type=%"class.hls::stream"*]
  %4 = load float** %2, align 8, !dbg !153        ; [#uses=1 type=float*] [debug line = 102:9]
  call void @_ZN3hls6streamIfE4readERf(%"class.hls::stream"* %3, float* %4), !dbg !153 ; [debug line = 102:9]
  ret void, !dbg !155                             ; [debug line = 103:5]
}

; [#uses=1]
define linkonce_odr void @_ZN3hls6streamIfElsERKf(%"class.hls::stream"* %this, float* %wdata) nounwind uwtable inlinehint alwaysinline align 2 {
  %1 = alloca %"class.hls::stream"*, align 8      ; [#uses=2 type=%"class.hls::stream"**]
  %2 = alloca float*, align 8                     ; [#uses=2 type=float**]
  store %"class.hls::stream"* %this, %"class.hls::stream"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !156), !dbg !157 ; [debug line = 105:48] [debug variable = this]
  store float* %wdata, float** %2, align 8
  call void @llvm.dbg.declare(metadata !{float** %2}, metadata !158), !dbg !159 ; [debug line = 105:81] [debug variable = wdata]
  %3 = load %"class.hls::stream"** %1             ; [#uses=1 type=%"class.hls::stream"*]
  %4 = load float** %2, align 8, !dbg !160        ; [#uses=1 type=float*] [debug line = 106:9]
  call void @_ZN3hls6streamIfE5writeERKf(%"class.hls::stream"* %3, float* %4), !dbg !160 ; [debug line = 106:9]
  ret void, !dbg !162                             ; [debug line = 107:5]
}

; [#uses=1]
define linkonce_odr void @_ZN3hls6streamIfE5writeERKf(%"class.hls::stream"* %this, float* %din) nounwind uwtable inlinehint alwaysinline align 2 {
  %1 = alloca %"class.hls::stream"*, align 8      ; [#uses=2 type=%"class.hls::stream"**]
  %2 = alloca float*, align 8                     ; [#uses=2 type=float**]
  %tmp = alloca float, align 4                    ; [#uses=2 type=float*]
  store %"class.hls::stream"* %this, %"class.hls::stream"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !163), !dbg !164 ; [debug line = 144:48] [debug variable = this]
  store float* %din, float** %2, align 8
  call void @llvm.dbg.declare(metadata !{float** %2}, metadata !165), !dbg !166 ; [debug line = 144:74] [debug variable = din]
  %3 = load %"class.hls::stream"** %1             ; [#uses=1 type=%"class.hls::stream"*]
  call void @llvm.dbg.declare(metadata !{float* %tmp}, metadata !167), !dbg !169 ; [debug line = 145:22] [debug variable = tmp]
  %4 = load float** %2, align 8, !dbg !170        ; [#uses=1 type=float*] [debug line = 145:31]
  %5 = load float* %4, align 4, !dbg !170         ; [#uses=1 type=float] [debug line = 145:31]
  store float %5, float* %tmp, align 4, !dbg !170 ; [debug line = 145:31]
  %6 = getelementptr inbounds %"class.hls::stream"* %3, i32 0, i32 0, !dbg !171 ; [#uses=1 type=float*] [debug line = 146:9]
  call void (...)* @_ssdm_StreamWrite(float* %6, float* %tmp) nounwind, !dbg !171 ; [debug line = 146:9]
  ret void, !dbg !172                             ; [debug line = 147:5]
}

; [#uses=1]
declare void @_ssdm_StreamWrite(...) nounwind

; [#uses=1]
define linkonce_odr void @_ZN3hls6streamIfE4readERf(%"class.hls::stream"* %this, float* %dout) nounwind uwtable inlinehint alwaysinline align 2 {
  %1 = alloca %"class.hls::stream"*, align 8      ; [#uses=2 type=%"class.hls::stream"**]
  %2 = alloca float*, align 8                     ; [#uses=2 type=float**]
  %tmp = alloca float, align 4                    ; [#uses=2 type=float*]
  store %"class.hls::stream"* %this, %"class.hls::stream"** %1, align 8
  call void @llvm.dbg.declare(metadata !{%"class.hls::stream"** %1}, metadata !173), !dbg !174 ; [debug line = 123:48] [debug variable = this]
  store float* %dout, float** %2, align 8
  call void @llvm.dbg.declare(metadata !{float** %2}, metadata !175), !dbg !176 ; [debug line = 123:67] [debug variable = dout]
  %3 = load %"class.hls::stream"** %1             ; [#uses=1 type=%"class.hls::stream"*]
  call void @llvm.dbg.declare(metadata !{float* %tmp}, metadata !177), !dbg !179 ; [debug line = 124:22] [debug variable = tmp]
  %4 = getelementptr inbounds %"class.hls::stream"* %3, i32 0, i32 0, !dbg !180 ; [#uses=1 type=float*] [debug line = 125:9]
  call void (...)* @_ssdm_StreamRead(float* %4, float* %tmp) nounwind, !dbg !180 ; [debug line = 125:9]
  %5 = load float* %tmp, align 4, !dbg !181       ; [#uses=1 type=float] [debug line = 126:9]
  %6 = load float** %2, align 8, !dbg !181        ; [#uses=1 type=float*] [debug line = 126:9]
  store float %5, float* %6, align 4, !dbg !181   ; [debug line = 126:9]
  ret void, !dbg !182                             ; [debug line = 127:5]
}

; [#uses=1]
declare void @_ssdm_StreamRead(...) nounwind

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!92, !99, !105, !107, !110}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/austin/ECE1373_GhostSynth/modules/Echo/Echo/solution1/.autopilot/db/Echo.pragma.2.cpp", metadata !"/home/austin/ECE1373_GhostSynth/modules/Echo", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !73} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !69, metadata !70, metadata !71, metadata !72}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"Echo", metadata !"Echo", metadata !"_Z4EchoRN3hls6streamIfEES2_if", metadata !6, i32 14, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream"*, %"class.hls::stream"*, i32, float)* @_Z4EchoRN3hls6streamIfEES2_if, null, null, metadata !20, i32 22} ; [ DW_TAG_subprogram ]
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
!69 = metadata !{i32 786478, i32 0, metadata !11, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIfElsERKf", metadata !12, i32 105, metadata !41, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream"*, float*)* @_ZN3hls6streamIfElsERKf, null, metadata !40, metadata !20, i32 105} ; [ DW_TAG_subprogram ]
!70 = metadata !{i32 786478, i32 0, metadata !11, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIfE5writeERKf", metadata !12, i32 144, metadata !41, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream"*, float*)* @_ZN3hls6streamIfE5writeERKf, null, metadata !58, metadata !20, i32 144} ; [ DW_TAG_subprogram ]
!71 = metadata !{i32 786478, i32 0, metadata !11, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIfErsERf", metadata !12, i32 101, metadata !37, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream"*, float*)* @_ZN3hls6streamIfErsERf, null, metadata !36, metadata !20, i32 101} ; [ DW_TAG_subprogram ]
!72 = metadata !{i32 786478, i32 0, metadata !11, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIfE4readERf", metadata !12, i32 123, metadata !37, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream"*, float*)* @_ZN3hls6streamIfE4readERf, null, metadata !51, metadata !20, i32 123} ; [ DW_TAG_subprogram ]
!73 = metadata !{metadata !74}
!74 = metadata !{metadata !75, metadata !79, metadata !80, metadata !81, metadata !82, metadata !85, metadata !86, metadata !87, metadata !89, metadata !90}
!75 = metadata !{i32 786484, i32 0, metadata !5, metadata !"buffer", metadata !"buffer", metadata !"", metadata !6, i32 32, metadata !76, i32 1, i32 1, [4800 x float]* @_ZZ4EchoRN3hls6streamIfEES2_ifE6buffer} ; [ DW_TAG_variable ]
!76 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 153600, i64 32, i32 0, i32 0, metadata !15, metadata !77, i32 0, i32 0} ; [ DW_TAG_array_type ]
!77 = metadata !{metadata !78}
!78 = metadata !{i32 786465, i64 0, i64 4799}     ; [ DW_TAG_subrange_type ]
!79 = metadata !{i32 786484, i32 0, metadata !5, metadata !"readBuffer", metadata !"readBuffer", metadata !"", metadata !6, i32 33, metadata !68, i32 1, i32 1, i32* @_ZZ4EchoRN3hls6streamIfEES2_ifE10readBuffer} ; [ DW_TAG_variable ]
!80 = metadata !{i32 786484, i32 0, metadata !5, metadata !"writeBuffer", metadata !"writeBuffer", metadata !"", metadata !6, i32 34, metadata !68, i32 1, i32 1, i32* @_ZZ4EchoRN3hls6streamIfEES2_ifE11writeBuffer} ; [ DW_TAG_variable ]
!81 = metadata !{i32 786484, i32 0, metadata !5, metadata !"delaycheck", metadata !"delaycheck", metadata !"", metadata !6, i32 36, metadata !68, i32 1, i32 1, i32* @_ZZ4EchoRN3hls6streamIfEES2_ifE10delaycheck} ; [ DW_TAG_variable ]
!82 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !83, i32 315, metadata !84, i32 0, i32 1, %"class.hls::stream"* @_IO_2_1_stdin_} ; [ DW_TAG_variable ]
!83 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/austin/ECE1373_GhostSynth/modules/Echo", null} ; [ DW_TAG_file_type ]
!84 = metadata !{i32 786434, null, metadata !"_IO_FILE_plus", metadata !83, i32 313, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!85 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !83, i32 316, metadata !84, i32 0, i32 1, %"class.hls::stream"* @_IO_2_1_stdout_} ; [ DW_TAG_variable ]
!86 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !83, i32 317, metadata !84, i32 0, i32 1, %"class.hls::stream"* @_IO_2_1_stderr_} ; [ DW_TAG_variable ]
!87 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !88, i32 26, metadata !68, i32 0, i32 1, i32* @sys_nerr} ; [ DW_TAG_variable ]
!88 = metadata !{i32 786473, metadata !"/usr/include/x86_64-linux-gnu/bits/sys_errlist.h", metadata !"/home/austin/ECE1373_GhostSynth/modules/Echo", null} ; [ DW_TAG_file_type ]
!89 = metadata !{i32 786484, i32 0, null, metadata !"_sys_nerr", metadata !"_sys_nerr", metadata !"", metadata !88, i32 30, metadata !68, i32 0, i32 1, i32* @_sys_nerr} ; [ DW_TAG_variable ]
!90 = metadata !{i32 786484, i32 0, null, metadata !"signgam", metadata !"signgam", metadata !"", metadata !91, i32 168, metadata !68, i32 0, i32 1, i32* @signgam} ; [ DW_TAG_variable ]
!91 = metadata !{i32 786473, metadata !"/usr/include/math.h", metadata !"/home/austin/ECE1373_GhostSynth/modules/Echo", null} ; [ DW_TAG_file_type ]
!92 = metadata !{void (%"class.hls::stream"*, %"class.hls::stream"*, i32, float)* @_Z4EchoRN3hls6streamIfEES2_if, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !98}
!93 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0}
!94 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!95 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<float> &", metadata !"hls::stream<float> &", metadata !"int", metadata !"float"}
!96 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!97 = metadata !{metadata !"kernel_arg_name", metadata !"value_in", metadata !"value_out", metadata !"delay", metadata !"scale"}
!98 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!99 = metadata !{void (%"class.hls::stream"*, float*)* @_ZN3hls6streamIfElsERKf, metadata !100, metadata !101, metadata !102, metadata !103, metadata !104, metadata !98}
!100 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!101 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!102 = metadata !{metadata !"kernel_arg_type", metadata !"const float &"}
!103 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!104 = metadata !{metadata !"kernel_arg_name", metadata !"wdata"}
!105 = metadata !{void (%"class.hls::stream"*, float*)* @_ZN3hls6streamIfE5writeERKf, metadata !100, metadata !101, metadata !102, metadata !103, metadata !106, metadata !98}
!106 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!107 = metadata !{void (%"class.hls::stream"*, float*)* @_ZN3hls6streamIfErsERf, metadata !100, metadata !101, metadata !108, metadata !103, metadata !109, metadata !98}
!108 = metadata !{metadata !"kernel_arg_type", metadata !"float &"}
!109 = metadata !{metadata !"kernel_arg_name", metadata !"rdata"}
!110 = metadata !{void (%"class.hls::stream"*, float*)* @_ZN3hls6streamIfE4readERf, metadata !100, metadata !101, metadata !108, metadata !103, metadata !111, metadata !98}
!111 = metadata !{metadata !"kernel_arg_name", metadata !"dout"}
!112 = metadata !{i32 786689, metadata !5, metadata !"value_in", metadata !6, i32 16777232, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!113 = metadata !{i32 16, i32 23, metadata !5, null}
!114 = metadata !{i32 786689, metadata !5, metadata !"value_out", metadata !6, i32 33554449, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!115 = metadata !{i32 17, i32 23, metadata !5, null}
!116 = metadata !{i32 786689, metadata !5, metadata !"delay", metadata !6, i32 50331667, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!117 = metadata !{i32 19, i32 6, metadata !5, null}
!118 = metadata !{i32 786689, metadata !5, metadata !"scale", metadata !6, i32 67108884, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!119 = metadata !{i32 20, i32 8, metadata !5, null}
!120 = metadata !{i32 23, i32 1, metadata !121, null}
!121 = metadata !{i32 786443, metadata !5, i32 22, i32 2, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!122 = metadata !{i32 25, i32 1, metadata !121, null}
!123 = metadata !{i32 26, i32 1, metadata !121, null}
!124 = metadata !{i32 27, i32 1, metadata !121, null}
!125 = metadata !{i32 29, i32 1, metadata !121, null}
!126 = metadata !{i32 30, i32 1, metadata !121, null}
!127 = metadata !{i32 33, i32 38, metadata !121, null}
!128 = metadata !{i32 36, i32 31, metadata !121, null}
!129 = metadata !{i32 38, i32 2, metadata !121, null}
!130 = metadata !{i32 39, i32 3, metadata !131, null}
!131 = metadata !{i32 786443, metadata !121, i32 38, i32 25, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!132 = metadata !{i32 40, i32 3, metadata !131, null}
!133 = metadata !{i32 41, i32 3, metadata !131, null}
!134 = metadata !{i32 42, i32 2, metadata !131, null}
!135 = metadata !{i32 786688, metadata !121, metadata !"current_value", metadata !6, i32 44, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!136 = metadata !{i32 44, i32 8, metadata !121, null}
!137 = metadata !{i32 46, i32 2, metadata !121, null}
!138 = metadata !{i32 48, i32 2, metadata !121, null}
!139 = metadata !{i32 50, i32 2, metadata !121, null}
!140 = metadata !{i32 52, i32 2, metadata !121, null}
!141 = metadata !{i32 54, i32 2, metadata !121, null}
!142 = metadata !{i32 55, i32 3, metadata !121, null}
!143 = metadata !{i32 57, i32 3, metadata !121, null}
!144 = metadata !{i32 59, i32 2, metadata !121, null}
!145 = metadata !{i32 60, i32 3, metadata !121, null}
!146 = metadata !{i32 62, i32 3, metadata !121, null}
!147 = metadata !{i32 65, i32 1, metadata !121, null}
!148 = metadata !{i32 786689, metadata !71, metadata !"this", metadata !12, i32 16777317, metadata !149, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!149 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!150 = metadata !{i32 101, i32 48, metadata !71, null}
!151 = metadata !{i32 786689, metadata !71, metadata !"rdata", metadata !12, i32 33554533, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!152 = metadata !{i32 101, i32 75, metadata !71, null}
!153 = metadata !{i32 102, i32 9, metadata !154, null}
!154 = metadata !{i32 786443, metadata !71, i32 101, i32 82, metadata !12, i32 4} ; [ DW_TAG_lexical_block ]
!155 = metadata !{i32 103, i32 5, metadata !154, null}
!156 = metadata !{i32 786689, metadata !69, metadata !"this", metadata !12, i32 16777321, metadata !149, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!157 = metadata !{i32 105, i32 48, metadata !69, null}
!158 = metadata !{i32 786689, metadata !69, metadata !"wdata", metadata !12, i32 33554537, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!159 = metadata !{i32 105, i32 81, metadata !69, null}
!160 = metadata !{i32 106, i32 9, metadata !161, null}
!161 = metadata !{i32 786443, metadata !69, i32 105, i32 88, metadata !12, i32 2} ; [ DW_TAG_lexical_block ]
!162 = metadata !{i32 107, i32 5, metadata !161, null}
!163 = metadata !{i32 786689, metadata !70, metadata !"this", metadata !12, i32 16777360, metadata !149, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!164 = metadata !{i32 144, i32 48, metadata !70, null}
!165 = metadata !{i32 786689, metadata !70, metadata !"din", metadata !12, i32 33554576, metadata !43, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!166 = metadata !{i32 144, i32 74, metadata !70, null}
!167 = metadata !{i32 786688, metadata !168, metadata !"tmp", metadata !12, i32 145, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!168 = metadata !{i32 786443, metadata !70, i32 144, i32 79, metadata !12, i32 3} ; [ DW_TAG_lexical_block ]
!169 = metadata !{i32 145, i32 22, metadata !168, null}
!170 = metadata !{i32 145, i32 31, metadata !168, null}
!171 = metadata !{i32 146, i32 9, metadata !168, null}
!172 = metadata !{i32 147, i32 5, metadata !168, null}
!173 = metadata !{i32 786689, metadata !72, metadata !"this", metadata !12, i32 16777339, metadata !149, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!174 = metadata !{i32 123, i32 48, metadata !72, null}
!175 = metadata !{i32 786689, metadata !72, metadata !"dout", metadata !12, i32 33554555, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!176 = metadata !{i32 123, i32 67, metadata !72, null}
!177 = metadata !{i32 786688, metadata !178, metadata !"tmp", metadata !12, i32 124, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!178 = metadata !{i32 786443, metadata !72, i32 123, i32 73, metadata !12, i32 5} ; [ DW_TAG_lexical_block ]
!179 = metadata !{i32 124, i32 22, metadata !178, null}
!180 = metadata !{i32 125, i32 9, metadata !178, null}
!181 = metadata !{i32 126, i32 9, metadata !178, null}
!182 = metadata !{i32 127, i32 5, metadata !178, null}

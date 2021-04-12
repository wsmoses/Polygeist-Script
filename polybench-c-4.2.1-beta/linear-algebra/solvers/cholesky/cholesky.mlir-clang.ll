; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@str7 = internal constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00"
@str6 = internal constant [17 x i8] c"\0Aend   dump: %s\0A\00"
@str5 = internal constant [8 x i8] c"%0.2lf \00"
@str4 = internal constant [2 x i8] c"\0A\00"
@str3 = internal constant [2 x i8] c"A\00"
@str2 = internal constant [15 x i8] c"begin dump: %s\00"
@str1 = internal constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00"
@stderr = external global %struct._IO_FILE*
@str0 = internal constant [1 x i8] zeroinitializer

declare i8* @malloc(i64)

declare void @free(i8*)

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...)

declare i32 @strcmp(i8*, i8*)

define i32 @main(i32 %0, i8** %1) {
  %3 = call i8* @malloc(i64 mul (i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 16000000))
  %4 = bitcast i8* %3 to double*
  %5 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %4, 0
  %6 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %5, double* %4, 1
  %7 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %6, i64 0, 2
  %8 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %7, i64 4000, 3, 0
  %9 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %8, i64 4000, 3, 1
  %10 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %9, i64 4000, 4, 0
  %11 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %10, i64 1, 4, 1
  %12 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 0
  %13 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 1
  %14 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 2
  %15 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 3, 0
  %16 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 3, 1
  %17 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 4, 0
  %18 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 4, 1
  call void @init_array(i32 4000, double* %12, double* %13, i64 %14, i64 %15, i64 %16, i64 %17, i64 %18)
  call void @polybench_timer_start()
  %19 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 0
  %20 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 1
  %21 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 2
  %22 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 3, 0
  %23 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 3, 1
  %24 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 4, 0
  %25 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 4, 1
  call void @kernel_cholesky(i32 4000, double* %19, double* %20, i64 %21, i64 %22, i64 %23, i64 %24, i64 %25)
  call void @polybench_timer_stop()
  call void @polybench_timer_print()
  %26 = icmp sgt i32 %0, 42
  br i1 %26, label %27, label %33

27:                                               ; preds = %2
  %28 = getelementptr i8*, i8** %1, i64 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @str0, i64 0, i64 0))
  %31 = trunc i32 %30 to i1
  %32 = xor i1 %31, true
  br label %34

33:                                               ; preds = %2
  br label %34

34:                                               ; preds = %27, %33
  %35 = phi i1 [ %32, %27 ], [ false, %33 ]
  br label %36

36:                                               ; preds = %34
  br i1 %35, label %37, label %45

37:                                               ; preds = %36
  %38 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 0
  %39 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 1
  %40 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 2
  %41 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 3, 0
  %42 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 3, 1
  %43 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 4, 0
  %44 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 4, 1
  call void @print_array(i32 4000, double* %38, double* %39, i64 %40, i64 %41, i64 %42, i64 %43, i64 %44)
  br label %45

45:                                               ; preds = %37, %36
  %46 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 0
  %47 = bitcast double* %46 to i8*
  call void @free(i8* %47)
  ret i32 0
}

define private void @init_array(i32 %0, double* %1, double* %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7) {
  %9 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %1, 0
  %10 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %9, double* %2, 1
  %11 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %10, i64 %3, 2
  %12 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, i64 %4, 3, 0
  %13 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %12, i64 %6, 4, 0
  %14 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %13, i64 %5, 3, 1
  %15 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %14, i64 %7, 4, 1
  br label %16

16:                                               ; preds = %55, %8
  %17 = phi i32 [ %40, %55 ], [ 0, %8 ]
  %18 = icmp slt i32 %17, %0
  br i1 %18, label %19, label %60

19:                                               ; preds = %16
  %20 = phi i32 [ %17, %16 ]
  %21 = sext i32 %20 to i64
  br label %22

22:                                               ; preds = %25, %19
  %23 = phi i32 [ %38, %25 ], [ 0, %19 ]
  %24 = icmp sle i32 %23, %20
  br i1 %24, label %25, label %39

25:                                               ; preds = %22
  %26 = phi i32 [ %23, %22 ]
  %27 = sext i32 %26 to i64
  %28 = sub i32 0, %26
  %29 = srem i32 %28, %0
  %30 = sitofp i32 %29 to double
  %31 = sitofp i32 %0 to double
  %32 = fdiv double %30, %31
  %33 = fadd double %32, 1.000000e+00
  %34 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %15, 1
  %35 = mul i64 %21, 4000
  %36 = add i64 %35, %27
  %37 = getelementptr double, double* %34, i64 %36
  store double %33, double* %37, align 8
  %38 = add i32 %26, 1
  br label %22

39:                                               ; preds = %22
  %40 = add i32 %20, 1
  %41 = sext i32 %0 to i64
  %42 = add i64 %21, 1
  br label %43

43:                                               ; preds = %47, %39
  %44 = phi i64 [ %54, %47 ], [ %42, %39 ]
  %45 = phi i32 [ %53, %47 ], [ %40, %39 ]
  %46 = icmp slt i64 %44, %41
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = sext i32 %45 to i64
  %49 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %15, 1
  %50 = mul i64 %21, 4000
  %51 = add i64 %50, %48
  %52 = getelementptr double, double* %49, i64 %51
  store double 0.000000e+00, double* %52, align 8
  %53 = add i32 %45, 1
  %54 = add i64 %44, 1
  br label %43

55:                                               ; preds = %43
  %56 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %15, 1
  %57 = mul i64 %21, 4000
  %58 = add i64 %57, %21
  %59 = getelementptr double, double* %56, i64 %58
  store double 1.000000e+00, double* %59, align 8
  br label %16

60:                                               ; preds = %16
  %61 = call i8* @malloc(i64 mul (i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 16000000))
  %62 = bitcast i8* %61 to double*
  %63 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %62, 0
  %64 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %63, double* %62, 1
  %65 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %64, i64 0, 2
  %66 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %65, i64 4000, 3, 0
  %67 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %66, i64 4000, 3, 1
  %68 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %67, i64 4000, 4, 0
  %69 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %68, i64 1, 4, 1
  %70 = sext i32 %0 to i64
  br label %71

71:                                               ; preds = %84, %60
  %72 = phi i64 [ %85, %84 ], [ 0, %60 ]
  %73 = icmp slt i64 %72, %70
  br i1 %73, label %74, label %86

74:                                               ; preds = %71
  br label %75

75:                                               ; preds = %78, %74
  %76 = phi i64 [ %83, %78 ], [ 0, %74 ]
  %77 = icmp slt i64 %76, %70
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %69, 1
  %80 = mul i64 %72, 4000
  %81 = add i64 %80, %76
  %82 = getelementptr double, double* %79, i64 %81
  store double 0.000000e+00, double* %82, align 8
  %83 = add i64 %76, 1
  br label %75

84:                                               ; preds = %75
  %85 = add i64 %72, 1
  br label %71

86:                                               ; preds = %71
  br label %87

87:                                               ; preds = %123, %86
  %88 = phi i64 [ %124, %123 ], [ 0, %86 ]
  %89 = icmp slt i64 %88, %70
  br i1 %89, label %90, label %125

90:                                               ; preds = %87
  br label %91

91:                                               ; preds = %121, %90
  %92 = phi i64 [ %122, %121 ], [ 0, %90 ]
  %93 = icmp slt i64 %92, %70
  br i1 %93, label %94, label %123

94:                                               ; preds = %91
  br label %95

95:                                               ; preds = %98, %94
  %96 = phi i64 [ %120, %98 ], [ 0, %94 ]
  %97 = icmp slt i64 %96, %70
  br i1 %97, label %98, label %121

98:                                               ; preds = %95
  %99 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %15, 1
  %100 = mul i64 %92, 4000
  %101 = add i64 %100, %88
  %102 = getelementptr double, double* %99, i64 %101
  %103 = load double, double* %102, align 8
  %104 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %15, 1
  %105 = mul i64 %96, 4000
  %106 = add i64 %105, %88
  %107 = getelementptr double, double* %104, i64 %106
  %108 = load double, double* %107, align 8
  %109 = fmul double %103, %108
  %110 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %69, 1
  %111 = mul i64 %92, 4000
  %112 = add i64 %111, %96
  %113 = getelementptr double, double* %110, i64 %112
  %114 = load double, double* %113, align 8
  %115 = fadd double %114, %109
  %116 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %69, 1
  %117 = mul i64 %92, 4000
  %118 = add i64 %117, %96
  %119 = getelementptr double, double* %116, i64 %118
  store double %115, double* %119, align 8
  %120 = add i64 %96, 1
  br label %95

121:                                              ; preds = %95
  %122 = add i64 %92, 1
  br label %91

123:                                              ; preds = %91
  %124 = add i64 %88, 1
  br label %87

125:                                              ; preds = %87
  br label %126

126:                                              ; preds = %144, %125
  %127 = phi i64 [ %145, %144 ], [ 0, %125 ]
  %128 = icmp slt i64 %127, %70
  br i1 %128, label %129, label %146

129:                                              ; preds = %126
  br label %130

130:                                              ; preds = %133, %129
  %131 = phi i64 [ %143, %133 ], [ 0, %129 ]
  %132 = icmp slt i64 %131, %70
  br i1 %132, label %133, label %144

133:                                              ; preds = %130
  %134 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %69, 1
  %135 = mul i64 %127, 4000
  %136 = add i64 %135, %131
  %137 = getelementptr double, double* %134, i64 %136
  %138 = load double, double* %137, align 8
  %139 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %15, 1
  %140 = mul i64 %127, 4000
  %141 = add i64 %140, %131
  %142 = getelementptr double, double* %139, i64 %141
  store double %138, double* %142, align 8
  %143 = add i64 %131, 1
  br label %130

144:                                              ; preds = %130
  %145 = add i64 %127, 1
  br label %126

146:                                              ; preds = %126
  %147 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %69, 0
  %148 = bitcast double* %147 to i8*
  call void @free(i8* %148)
  ret void
}

declare void @polybench_timer_start()

define private void @kernel_cholesky(i32 %0, double* %1, double* %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7) {
  %9 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %1, 0
  %10 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %9, double* %2, 1
  %11 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %10, i64 %3, 2
  %12 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, i64 %4, 3, 0
  %13 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %12, i64 %6, 4, 0
  %14 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %13, i64 %5, 3, 1
  %15 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %14, i64 %7, 4, 1
  %16 = sext i32 %0 to i64
  br label %17

17:                                               ; preds = %90, %8
  %18 = phi i64 [ %101, %90 ], [ 0, %8 ]
  %19 = icmp slt i64 %18, %16
  br i1 %19, label %20, label %102

20:                                               ; preds = %17
  br label %21

21:                                               ; preds = %51, %20
  %22 = phi i64 [ %67, %51 ], [ 0, %20 ]
  %23 = icmp slt i64 %22, %18
  br i1 %23, label %24, label %68

24:                                               ; preds = %21
  br label %25

25:                                               ; preds = %28, %24
  %26 = phi i64 [ %50, %28 ], [ 0, %24 ]
  %27 = icmp slt i64 %26, %22
  br i1 %27, label %28, label %51

28:                                               ; preds = %25
  %29 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %15, 1
  %30 = mul i64 %18, 4000
  %31 = add i64 %30, %26
  %32 = getelementptr double, double* %29, i64 %31
  %33 = load double, double* %32, align 8
  %34 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %15, 1
  %35 = mul i64 %22, 4000
  %36 = add i64 %35, %26
  %37 = getelementptr double, double* %34, i64 %36
  %38 = load double, double* %37, align 8
  %39 = fmul double %33, %38
  %40 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %15, 1
  %41 = mul i64 %18, 4000
  %42 = add i64 %41, %22
  %43 = getelementptr double, double* %40, i64 %42
  %44 = load double, double* %43, align 8
  %45 = fsub double %44, %39
  %46 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %15, 1
  %47 = mul i64 %18, 4000
  %48 = add i64 %47, %22
  %49 = getelementptr double, double* %46, i64 %48
  store double %45, double* %49, align 8
  %50 = add i64 %26, 1
  br label %25

51:                                               ; preds = %25
  %52 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %15, 1
  %53 = mul i64 %22, 4000
  %54 = add i64 %53, %22
  %55 = getelementptr double, double* %52, i64 %54
  %56 = load double, double* %55, align 8
  %57 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %15, 1
  %58 = mul i64 %18, 4000
  %59 = add i64 %58, %22
  %60 = getelementptr double, double* %57, i64 %59
  %61 = load double, double* %60, align 8
  %62 = fdiv double %61, %56
  %63 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %15, 1
  %64 = mul i64 %18, 4000
  %65 = add i64 %64, %22
  %66 = getelementptr double, double* %63, i64 %65
  store double %62, double* %66, align 8
  %67 = add i64 %22, 1
  br label %21

68:                                               ; preds = %21
  br label %69

69:                                               ; preds = %72, %68
  %70 = phi i64 [ %89, %72 ], [ 0, %68 ]
  %71 = icmp slt i64 %70, %18
  br i1 %71, label %72, label %90

72:                                               ; preds = %69
  %73 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %15, 1
  %74 = mul i64 %18, 4000
  %75 = add i64 %74, %70
  %76 = getelementptr double, double* %73, i64 %75
  %77 = load double, double* %76, align 8
  %78 = fmul double %77, %77
  %79 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %15, 1
  %80 = mul i64 %18, 4000
  %81 = add i64 %80, %18
  %82 = getelementptr double, double* %79, i64 %81
  %83 = load double, double* %82, align 8
  %84 = fsub double %83, %78
  %85 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %15, 1
  %86 = mul i64 %18, 4000
  %87 = add i64 %86, %18
  %88 = getelementptr double, double* %85, i64 %87
  store double %84, double* %88, align 8
  %89 = add i64 %70, 1
  br label %69

90:                                               ; preds = %69
  %91 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %15, 1
  %92 = mul i64 %18, 4000
  %93 = add i64 %92, %18
  %94 = getelementptr double, double* %91, i64 %93
  %95 = load double, double* %94, align 8
  %96 = call double @llvm.sqrt.f64(double %95)
  %97 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %15, 1
  %98 = mul i64 %18, 4000
  %99 = add i64 %98, %18
  %100 = getelementptr double, double* %97, i64 %99
  store double %96, double* %100, align 8
  %101 = add i64 %18, 1
  br label %17

102:                                              ; preds = %17
  ret void
}

declare void @polybench_timer_stop()

declare void @polybench_timer_print()

define private void @print_array(i32 %0, double* %1, double* %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7) {
  %9 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %1, 0
  %10 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %9, double* %2, 1
  %11 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %10, i64 %3, 2
  %12 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, i64 %4, 3, 0
  %13 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %12, i64 %6, 4, 0
  %14 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %13, i64 %5, 3, 1
  %15 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %14, i64 %7, 4, 1
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @str1, i64 0, i64 0))
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @str2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str3, i64 0, i64 0))
  br label %20

20:                                               ; preds = %48, %8
  %21 = phi i32 [ %49, %48 ], [ 0, %8 ]
  %22 = icmp slt i32 %21, %0
  br i1 %22, label %23, label %50

23:                                               ; preds = %20
  %24 = phi i32 [ %21, %20 ]
  %25 = sext i32 %24 to i64
  br label %26

26:                                               ; preds = %39, %23
  %27 = phi i32 [ %47, %39 ], [ 0, %23 ]
  %28 = icmp sle i32 %27, %24
  br i1 %28, label %29, label %48

29:                                               ; preds = %26
  %30 = phi i32 [ %27, %26 ]
  %31 = sext i32 %30 to i64
  %32 = mul i32 %24, %0
  %33 = add i32 %32, %30
  %34 = srem i32 %33, 20
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str4, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %29
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %41 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %15, 1
  %42 = mul i64 %25, 4000
  %43 = add i64 %42, %31
  %44 = getelementptr double, double* %41, i64 %43
  %45 = load double, double* %44, align 8
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @str5, i64 0, i64 0), double %45)
  %47 = add i32 %30, 1
  br label %26

48:                                               ; preds = %26
  %49 = add i32 %24, 1
  br label %20

50:                                               ; preds = %20
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @str6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str3, i64 0, i64 0))
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @str7, i64 0, i64 0))
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.sqrt.f64(double) #0

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }


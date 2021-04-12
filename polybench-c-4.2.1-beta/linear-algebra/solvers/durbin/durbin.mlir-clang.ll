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
@str3 = internal constant [2 x i8] c"y\00"
@str2 = internal constant [15 x i8] c"begin dump: %s\00"
@str1 = internal constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00"
@stderr = external global %struct._IO_FILE*
@str0 = internal constant [1 x i8] zeroinitializer

declare i8* @malloc(i64)

declare void @free(i8*)

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...)

declare i32 @strcmp(i8*, i8*)

define i32 @main(i32 %0, i8** %1) {
  %3 = call i8* @malloc(i64 mul (i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 4000))
  %4 = bitcast i8* %3 to double*
  %5 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %4, 0
  %6 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %5, double* %4, 1
  %7 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %6, i64 0, 2
  %8 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %7, i64 4000, 3, 0
  %9 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %8, i64 1, 4, 0
  %10 = call i8* @malloc(i64 mul (i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 4000))
  %11 = bitcast i8* %10 to double*
  %12 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %11, 0
  %13 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %12, double* %11, 1
  %14 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %13, i64 0, 2
  %15 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %14, i64 4000, 3, 0
  %16 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %15, i64 1, 4, 0
  %17 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %9, 0
  %18 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %9, 1
  %19 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %9, 2
  %20 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %9, 3, 0
  %21 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %9, 4, 0
  call void @init_array(i32 4000, double* %17, double* %18, i64 %19, i64 %20, i64 %21)
  call void @polybench_timer_start()
  %22 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %9, 0
  %23 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %9, 1
  %24 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %9, 2
  %25 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %9, 3, 0
  %26 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %9, 4, 0
  %27 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %16, 0
  %28 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %16, 1
  %29 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %16, 2
  %30 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %16, 3, 0
  %31 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %16, 4, 0
  call void @kernel_durbin(i32 4000, double* %22, double* %23, i64 %24, i64 %25, i64 %26, double* %27, double* %28, i64 %29, i64 %30, i64 %31)
  call void @polybench_timer_stop()
  call void @polybench_timer_print()
  %32 = icmp sgt i32 %0, 42
  br i1 %32, label %33, label %39

33:                                               ; preds = %2
  %34 = getelementptr i8*, i8** %1, i64 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @str0, i64 0, i64 0))
  %37 = trunc i32 %36 to i1
  %38 = xor i1 %37, true
  br label %40

39:                                               ; preds = %2
  br label %40

40:                                               ; preds = %33, %39
  %41 = phi i1 [ %38, %33 ], [ false, %39 ]
  br label %42

42:                                               ; preds = %40
  br i1 %41, label %43, label %49

43:                                               ; preds = %42
  %44 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %16, 0
  %45 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %16, 1
  %46 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %16, 2
  %47 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %16, 3, 0
  %48 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %16, 4, 0
  call void @print_array(i32 4000, double* %44, double* %45, i64 %46, i64 %47, i64 %48)
  br label %49

49:                                               ; preds = %43, %42
  %50 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %9, 0
  %51 = bitcast double* %50 to i8*
  call void @free(i8* %51)
  %52 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %16, 0
  %53 = bitcast double* %52 to i8*
  call void @free(i8* %53)
  ret i32 0
}

define private void @init_array(i32 %0, double* %1, double* %2, i64 %3, i64 %4, i64 %5) {
  %7 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %1, 0
  %8 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %7, double* %2, 1
  %9 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %8, i64 %3, 2
  %10 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %9, i64 %4, 3, 0
  %11 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %10, i64 %5, 4, 0
  br label %12

12:                                               ; preds = %15, %6
  %13 = phi i32 [ %23, %15 ], [ 0, %6 ]
  %14 = icmp slt i32 %13, %0
  br i1 %14, label %15, label %24

15:                                               ; preds = %12
  %16 = phi i32 [ %13, %12 ]
  %17 = sext i32 %16 to i64
  %18 = add i32 %0, 1
  %19 = sub i32 %18, %16
  %20 = sitofp i32 %19 to double
  %21 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %11, 1
  %22 = getelementptr double, double* %21, i64 %17
  store double %20, double* %22, align 8
  %23 = add i32 %16, 1
  br label %12

24:                                               ; preds = %12
  ret void
}

declare void @polybench_timer_start()

define private void @kernel_durbin(i32 %0, double* %1, double* %2, i64 %3, i64 %4, i64 %5, double* %6, double* %7, i64 %8, i64 %9, i64 %10) {
  %12 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %1, 0
  %13 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %12, double* %2, 1
  %14 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %13, i64 %3, 2
  %15 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %14, i64 %4, 3, 0
  %16 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %15, i64 %5, 4, 0
  %17 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %6, 0
  %18 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %17, double* %7, 1
  %19 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, i64 %8, 2
  %20 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %19, i64 %9, 3, 0
  %21 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %20, i64 %10, 4, 0
  %22 = alloca double, i64 mul (i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 4000), align 8
  %23 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %22, 0
  %24 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %23, double* %22, 1
  %25 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %24, i64 0, 2
  %26 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, i64 4000, 3, 0
  %27 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %26, i64 1, 4, 0
  %28 = alloca double, i64 ptrtoint (double* getelementptr (double, double* null, i64 1) to i64), align 8
  %29 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %28, 0
  %30 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %29, double* %28, 1
  %31 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %30, i64 0, 2
  %32 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %31, i64 1, 3, 0
  %33 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %32, i64 1, 4, 0
  %34 = alloca double, i64 ptrtoint (double* getelementptr (double, double* null, i64 1) to i64), align 8
  %35 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %34, 0
  %36 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %35, double* %34, 1
  %37 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %36, i64 0, 2
  %38 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %37, i64 1, 3, 0
  %39 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %38, i64 1, 4, 0
  %40 = alloca double, i64 ptrtoint (double* getelementptr (double, double* null, i64 1) to i64), align 8
  %41 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %40, 0
  %42 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %41, double* %40, 1
  %43 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %42, i64 0, 2
  %44 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %43, i64 1, 3, 0
  %45 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %44, i64 1, 4, 0
  %46 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %16, 1
  %47 = getelementptr double, double* %46, i64 0
  %48 = load double, double* %47, align 8
  %49 = fneg double %48
  %50 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %21, 1
  %51 = getelementptr double, double* %50, i64 0
  store double %49, double* %51, align 8
  %52 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %39, 1
  %53 = getelementptr double, double* %52, i64 0
  store double 1.000000e+00, double* %53, align 8
  %54 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %33, 1
  %55 = getelementptr double, double* %54, i64 0
  store double %49, double* %55, align 8
  %56 = sext i32 %0 to i64
  br label %57

57:                                               ; preds = %136, %11
  %58 = phi i64 [ %139, %136 ], [ 1, %11 ]
  %59 = icmp slt i64 %58, %56
  br i1 %59, label %60, label %140

60:                                               ; preds = %57
  %61 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %33, 1
  %62 = getelementptr double, double* %61, i64 0
  %63 = load double, double* %62, align 8
  %64 = fmul double %63, %63
  %65 = fsub double 1.000000e+00, %64
  %66 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %39, 1
  %67 = getelementptr double, double* %66, i64 0
  %68 = load double, double* %67, align 8
  %69 = fmul double %65, %68
  %70 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %39, 1
  %71 = getelementptr double, double* %70, i64 0
  store double %69, double* %71, align 8
  %72 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %45, 1
  %73 = getelementptr double, double* %72, i64 0
  store double 0.000000e+00, double* %73, align 8
  br label %74

74:                                               ; preds = %77, %60
  %75 = phi i64 [ %94, %77 ], [ 0, %60 ]
  %76 = icmp slt i64 %75, %58
  br i1 %76, label %77, label %95

77:                                               ; preds = %74
  %78 = mul i64 %75, -1
  %79 = add i64 %58, %78
  %80 = add i64 %79, -1
  %81 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %16, 1
  %82 = getelementptr double, double* %81, i64 %80
  %83 = load double, double* %82, align 8
  %84 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %21, 1
  %85 = getelementptr double, double* %84, i64 %75
  %86 = load double, double* %85, align 8
  %87 = fmul double %83, %86
  %88 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %45, 1
  %89 = getelementptr double, double* %88, i64 0
  %90 = load double, double* %89, align 8
  %91 = fadd double %90, %87
  %92 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %45, 1
  %93 = getelementptr double, double* %92, i64 0
  store double %91, double* %93, align 8
  %94 = add i64 %75, 1
  br label %74

95:                                               ; preds = %74
  %96 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %16, 1
  %97 = getelementptr double, double* %96, i64 %58
  %98 = load double, double* %97, align 8
  %99 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %45, 1
  %100 = getelementptr double, double* %99, i64 0
  %101 = load double, double* %100, align 8
  %102 = fadd double %98, %101
  %103 = fneg double %102
  %104 = fdiv double %103, %69
  %105 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %33, 1
  %106 = getelementptr double, double* %105, i64 0
  store double %104, double* %106, align 8
  br label %107

107:                                              ; preds = %110, %95
  %108 = phi i64 [ %124, %110 ], [ 0, %95 ]
  %109 = icmp slt i64 %108, %58
  br i1 %109, label %110, label %125

110:                                              ; preds = %107
  %111 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %21, 1
  %112 = getelementptr double, double* %111, i64 %108
  %113 = load double, double* %112, align 8
  %114 = mul i64 %108, -1
  %115 = add i64 %58, %114
  %116 = add i64 %115, -1
  %117 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %21, 1
  %118 = getelementptr double, double* %117, i64 %116
  %119 = load double, double* %118, align 8
  %120 = fmul double %104, %119
  %121 = fadd double %113, %120
  %122 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %27, 1
  %123 = getelementptr double, double* %122, i64 %108
  store double %121, double* %123, align 8
  %124 = add i64 %108, 1
  br label %107

125:                                              ; preds = %107
  br label %126

126:                                              ; preds = %129, %125
  %127 = phi i64 [ %135, %129 ], [ 0, %125 ]
  %128 = icmp slt i64 %127, %58
  br i1 %128, label %129, label %136

129:                                              ; preds = %126
  %130 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %27, 1
  %131 = getelementptr double, double* %130, i64 %127
  %132 = load double, double* %131, align 8
  %133 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %21, 1
  %134 = getelementptr double, double* %133, i64 %127
  store double %132, double* %134, align 8
  %135 = add i64 %127, 1
  br label %126

136:                                              ; preds = %126
  %137 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %21, 1
  %138 = getelementptr double, double* %137, i64 %58
  store double %104, double* %138, align 8
  %139 = add i64 %58, 1
  br label %57

140:                                              ; preds = %57
  ret void
}

declare void @polybench_timer_stop()

declare void @polybench_timer_print()

define private void @print_array(i32 %0, double* %1, double* %2, i64 %3, i64 %4, i64 %5) {
  %7 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %1, 0
  %8 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %7, double* %2, 1
  %9 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %8, i64 %3, 2
  %10 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %9, i64 %4, 3, 0
  %11 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %10, i64 %5, 4, 0
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @str1, i64 0, i64 0))
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @str2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str3, i64 0, i64 0))
  br label %16

16:                                               ; preds = %27, %6
  %17 = phi i32 [ %33, %27 ], [ 0, %6 ]
  %18 = icmp slt i32 %17, %0
  br i1 %18, label %19, label %34

19:                                               ; preds = %16
  %20 = phi i32 [ %17, %16 ]
  %21 = sext i32 %20 to i64
  %22 = srem i32 %20, 20
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str4, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %19
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %29 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %11, 1
  %30 = getelementptr double, double* %29, i64 %21
  %31 = load double, double* %30, align 8
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @str5, i64 0, i64 0), double %31)
  %33 = add i32 %20, 1
  br label %16

34:                                               ; preds = %16
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @str6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str3, i64 0, i64 0))
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @str7, i64 0, i64 0))
  ret void
}


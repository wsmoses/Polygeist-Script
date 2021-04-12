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
@str3 = internal constant [2 x i8] c"C\00"
@str2 = internal constant [15 x i8] c"begin dump: %s\00"
@str1 = internal constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00"
@stderr = external global %struct._IO_FILE*
@str0 = internal constant [1 x i8] zeroinitializer

declare i8* @malloc(i64)

declare void @free(i8*)

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...)

declare i32 @strcmp(i8*, i8*)

define i32 @main(i32 %0, i8** %1) {
  %3 = alloca double, i64 ptrtoint (double* getelementptr (double, double* null, i64 1) to i64), align 8
  %4 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %3, 0
  %5 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %4, double* %3, 1
  %6 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %5, i64 0, 2
  %7 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %6, i64 1, 3, 0
  %8 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %7, i64 1, 4, 0
  %9 = alloca double, i64 ptrtoint (double* getelementptr (double, double* null, i64 1) to i64), align 8
  %10 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %9, 0
  %11 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %10, double* %9, 1
  %12 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %11, i64 0, 2
  %13 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %12, i64 1, 3, 0
  %14 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %13, i64 1, 4, 0
  %15 = call i8* @malloc(i64 mul (i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 6760000))
  %16 = bitcast i8* %15 to double*
  %17 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %16, 0
  %18 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %17, double* %16, 1
  %19 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %18, i64 0, 2
  %20 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %19, i64 2600, 3, 0
  %21 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, i64 2600, 3, 1
  %22 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %21, i64 2600, 4, 0
  %23 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %22, i64 1, 4, 1
  %24 = call i8* @malloc(i64 mul (i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 5200000))
  %25 = bitcast i8* %24 to double*
  %26 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %25, 0
  %27 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %26, double* %25, 1
  %28 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %27, i64 0, 2
  %29 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %28, i64 2600, 3, 0
  %30 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, i64 2000, 3, 1
  %31 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %30, i64 2000, 4, 0
  %32 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %31, i64 1, 4, 1
  %33 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %8, 0
  %34 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %8, 1
  %35 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %8, 2
  %36 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %8, 3, 0
  %37 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %8, 4, 0
  %38 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %14, 0
  %39 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %14, 1
  %40 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %14, 2
  %41 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %14, 3, 0
  %42 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %14, 4, 0
  %43 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 0
  %44 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 1
  %45 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 2
  %46 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 3, 0
  %47 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 3, 1
  %48 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 4, 0
  %49 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 4, 1
  %50 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 0
  %51 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 1
  %52 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 2
  %53 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 3, 0
  %54 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 3, 1
  %55 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 4, 0
  %56 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 4, 1
  call void @init_array(i32 2600, i32 2000, double* %33, double* %34, i64 %35, i64 %36, i64 %37, double* %38, double* %39, i64 %40, i64 %41, i64 %42, double* %43, double* %44, i64 %45, i64 %46, i64 %47, i64 %48, i64 %49, double* %50, double* %51, i64 %52, i64 %53, i64 %54, i64 %55, i64 %56)
  call void @polybench_timer_start()
  %57 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %8, 1
  %58 = getelementptr double, double* %57, i64 0
  %59 = load double, double* %58, align 8
  %60 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %14, 1
  %61 = getelementptr double, double* %60, i64 0
  %62 = load double, double* %61, align 8
  %63 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 0
  %64 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 1
  %65 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 2
  %66 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 3, 0
  %67 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 3, 1
  %68 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 4, 0
  %69 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 4, 1
  %70 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 0
  %71 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 1
  %72 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 2
  %73 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 3, 0
  %74 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 3, 1
  %75 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 4, 0
  %76 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 4, 1
  call void @kernel_syrk(i32 2600, i32 2000, double %59, double %62, double* %63, double* %64, i64 %65, i64 %66, i64 %67, i64 %68, i64 %69, double* %70, double* %71, i64 %72, i64 %73, i64 %74, i64 %75, i64 %76)
  call void @polybench_timer_stop()
  call void @polybench_timer_print()
  %77 = icmp sgt i32 %0, 42
  br i1 %77, label %78, label %84

78:                                               ; preds = %2
  %79 = getelementptr i8*, i8** %1, i64 0
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @strcmp(i8* %80, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @str0, i64 0, i64 0))
  %82 = trunc i32 %81 to i1
  %83 = xor i1 %82, true
  br label %85

84:                                               ; preds = %2
  br label %85

85:                                               ; preds = %78, %84
  %86 = phi i1 [ %83, %78 ], [ false, %84 ]
  br label %87

87:                                               ; preds = %85
  br i1 %86, label %88, label %96

88:                                               ; preds = %87
  %89 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 0
  %90 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 1
  %91 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 2
  %92 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 3, 0
  %93 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 3, 1
  %94 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 4, 0
  %95 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 4, 1
  call void @print_array(i32 2600, double* %89, double* %90, i64 %91, i64 %92, i64 %93, i64 %94, i64 %95)
  br label %96

96:                                               ; preds = %88, %87
  %97 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 0
  %98 = bitcast double* %97 to i8*
  call void @free(i8* %98)
  %99 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 0
  %100 = bitcast double* %99 to i8*
  call void @free(i8* %100)
  ret i32 0
}

define private void @init_array(i32 %0, i32 %1, double* %2, double* %3, i64 %4, i64 %5, i64 %6, double* %7, double* %8, i64 %9, i64 %10, i64 %11, double* %12, double* %13, i64 %14, i64 %15, i64 %16, i64 %17, i64 %18, double* %19, double* %20, i64 %21, i64 %22, i64 %23, i64 %24, i64 %25) {
  %27 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %2, 0
  %28 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %27, double* %3, 1
  %29 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %28, i64 %4, 2
  %30 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %29, i64 %5, 3, 0
  %31 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %30, i64 %6, 4, 0
  %32 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %7, 0
  %33 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %32, double* %8, 1
  %34 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %33, i64 %9, 2
  %35 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %34, i64 %10, 3, 0
  %36 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %35, i64 %11, 4, 0
  %37 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %12, 0
  %38 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %37, double* %13, 1
  %39 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %38, i64 %14, 2
  %40 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %39, i64 %15, 3, 0
  %41 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %40, i64 %17, 4, 0
  %42 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %41, i64 %16, 3, 1
  %43 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %42, i64 %18, 4, 1
  %44 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %19, 0
  %45 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %44, double* %20, 1
  %46 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %45, i64 %21, 2
  %47 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %46, i64 %22, 3, 0
  %48 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %47, i64 %24, 4, 0
  %49 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %48, i64 %23, 3, 1
  %50 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %49, i64 %25, 4, 1
  %51 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %31, 1
  %52 = getelementptr double, double* %51, i64 0
  store double 1.500000e+00, double* %52, align 8
  %53 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %36, 1
  %54 = getelementptr double, double* %53, i64 0
  store double 1.200000e+00, double* %54, align 8
  br label %55

55:                                               ; preds = %79, %26
  %56 = phi i32 [ %80, %79 ], [ 0, %26 ]
  %57 = icmp slt i32 %56, %0
  br i1 %57, label %58, label %81

58:                                               ; preds = %55
  %59 = phi i32 [ 0, %55 ]
  %60 = phi i32 [ %56, %55 ]
  %61 = sext i32 %60 to i64
  br label %62

62:                                               ; preds = %65, %58
  %63 = phi i32 [ %78, %65 ], [ 0, %58 ]
  %64 = icmp slt i32 %63, %1
  br i1 %64, label %65, label %79

65:                                               ; preds = %62
  %66 = phi i32 [ %63, %62 ]
  %67 = sext i32 %66 to i64
  %68 = mul i32 %60, %66
  %69 = add i32 %68, 1
  %70 = srem i32 %69, %0
  %71 = sitofp i32 %70 to double
  %72 = sitofp i32 %0 to double
  %73 = fdiv double %71, %72
  %74 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %50, 1
  %75 = mul i64 %61, 2000
  %76 = add i64 %75, %67
  %77 = getelementptr double, double* %74, i64 %76
  store double %73, double* %77, align 8
  %78 = add i32 %66, 1
  br label %62

79:                                               ; preds = %62
  %80 = add i32 %60, 1
  br label %55

81:                                               ; preds = %55
  br label %82

82:                                               ; preds = %105, %81
  %83 = phi i32 [ %106, %105 ], [ 0, %81 ]
  %84 = icmp slt i32 %83, %0
  br i1 %84, label %85, label %107

85:                                               ; preds = %82
  %86 = phi i32 [ %83, %82 ]
  %87 = sext i32 %86 to i64
  br label %88

88:                                               ; preds = %91, %85
  %89 = phi i32 [ %104, %91 ], [ 0, %85 ]
  %90 = icmp slt i32 %89, %0
  br i1 %90, label %91, label %105

91:                                               ; preds = %88
  %92 = phi i32 [ %89, %88 ]
  %93 = sext i32 %92 to i64
  %94 = mul i32 %86, %92
  %95 = add i32 %94, 2
  %96 = srem i32 %95, %1
  %97 = sitofp i32 %96 to double
  %98 = sitofp i32 %1 to double
  %99 = fdiv double %97, %98
  %100 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %43, 1
  %101 = mul i64 %87, 2600
  %102 = add i64 %101, %93
  %103 = getelementptr double, double* %100, i64 %102
  store double %99, double* %103, align 8
  %104 = add i32 %92, 1
  br label %88

105:                                              ; preds = %88
  %106 = add i32 %86, 1
  br label %82

107:                                              ; preds = %82
  ret void
}

declare void @polybench_timer_start()

define private void @kernel_syrk(i32 %0, i32 %1, double %2, double %3, double* %4, double* %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10, double* %11, double* %12, i64 %13, i64 %14, i64 %15, i64 %16, i64 %17) {
  %19 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %4, 0
  %20 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %19, double* %5, 1
  %21 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, i64 %6, 2
  %22 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %21, i64 %7, 3, 0
  %23 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %22, i64 %9, 4, 0
  %24 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, i64 %8, 3, 1
  %25 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %24, i64 %10, 4, 1
  %26 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %11, 0
  %27 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %26, double* %12, 1
  %28 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %27, i64 %13, 2
  %29 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %28, i64 %14, 3, 0
  %30 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, i64 %16, 4, 0
  %31 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %30, i64 %15, 3, 1
  %32 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %31, i64 %17, 4, 1
  %33 = sext i32 %0 to i64
  %34 = sext i32 %1 to i64
  br label %35

35:                                               ; preds = %90, %18
  %36 = phi i64 [ %91, %90 ], [ 0, %18 ]
  %37 = icmp slt i64 %36, %33
  br i1 %37, label %38, label %92

38:                                               ; preds = %35
  %39 = add i64 %36, 1
  br label %40

40:                                               ; preds = %43, %38
  %41 = phi i64 [ %54, %43 ], [ 0, %38 ]
  %42 = icmp slt i64 %41, %39
  br i1 %42, label %43, label %55

43:                                               ; preds = %40
  %44 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %25, 1
  %45 = mul i64 %36, 2600
  %46 = add i64 %45, %41
  %47 = getelementptr double, double* %44, i64 %46
  %48 = load double, double* %47, align 8
  %49 = fmul double %48, %3
  %50 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %25, 1
  %51 = mul i64 %36, 2600
  %52 = add i64 %51, %41
  %53 = getelementptr double, double* %50, i64 %52
  store double %49, double* %53, align 8
  %54 = add i64 %41, 1
  br label %40

55:                                               ; preds = %40
  br label %56

56:                                               ; preds = %88, %55
  %57 = phi i64 [ %89, %88 ], [ 0, %55 ]
  %58 = icmp slt i64 %57, %34
  br i1 %58, label %59, label %90

59:                                               ; preds = %56
  %60 = add i64 %36, 1
  br label %61

61:                                               ; preds = %64, %59
  %62 = phi i64 [ %87, %64 ], [ 0, %59 ]
  %63 = icmp slt i64 %62, %60
  br i1 %63, label %64, label %88

64:                                               ; preds = %61
  %65 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 1
  %66 = mul i64 %36, 2000
  %67 = add i64 %66, %57
  %68 = getelementptr double, double* %65, i64 %67
  %69 = load double, double* %68, align 8
  %70 = fmul double %2, %69
  %71 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 1
  %72 = mul i64 %62, 2000
  %73 = add i64 %72, %57
  %74 = getelementptr double, double* %71, i64 %73
  %75 = load double, double* %74, align 8
  %76 = fmul double %70, %75
  %77 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %25, 1
  %78 = mul i64 %36, 2600
  %79 = add i64 %78, %62
  %80 = getelementptr double, double* %77, i64 %79
  %81 = load double, double* %80, align 8
  %82 = fadd double %81, %76
  %83 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %25, 1
  %84 = mul i64 %36, 2600
  %85 = add i64 %84, %62
  %86 = getelementptr double, double* %83, i64 %85
  store double %82, double* %86, align 8
  %87 = add i64 %62, 1
  br label %61

88:                                               ; preds = %61
  %89 = add i64 %57, 1
  br label %56

90:                                               ; preds = %56
  %91 = add i64 %36, 1
  br label %35

92:                                               ; preds = %35
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
  %28 = icmp slt i32 %27, %0
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
  %42 = mul i64 %25, 2600
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


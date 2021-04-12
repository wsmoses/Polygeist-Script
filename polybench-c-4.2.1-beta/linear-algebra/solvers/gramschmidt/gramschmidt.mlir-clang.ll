; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@str8 = internal constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00"
@str7 = internal constant [2 x i8] c"Q\00"
@str6 = internal constant [17 x i8] c"\0Aend   dump: %s\0A\00"
@str5 = internal constant [8 x i8] c"%0.2lf \00"
@str4 = internal constant [2 x i8] c"\0A\00"
@str3 = internal constant [2 x i8] c"R\00"
@str2 = internal constant [15 x i8] c"begin dump: %s\00"
@str1 = internal constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00"
@stderr = external global %struct._IO_FILE*
@str0 = internal constant [1 x i8] zeroinitializer

declare i8* @malloc(i64)

declare void @free(i8*)

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...)

declare i32 @strcmp(i8*, i8*)

define i32 @main(i32 %0, i8** %1) {
  %3 = call i8* @malloc(i64 mul (i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 5200000))
  %4 = bitcast i8* %3 to double*
  %5 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %4, 0
  %6 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %5, double* %4, 1
  %7 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %6, i64 0, 2
  %8 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %7, i64 2000, 3, 0
  %9 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %8, i64 2600, 3, 1
  %10 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %9, i64 2600, 4, 0
  %11 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %10, i64 1, 4, 1
  %12 = call i8* @malloc(i64 mul (i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 6760000))
  %13 = bitcast i8* %12 to double*
  %14 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %13, 0
  %15 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %14, double* %13, 1
  %16 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %15, i64 0, 2
  %17 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %16, i64 2600, 3, 0
  %18 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %17, i64 2600, 3, 1
  %19 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %18, i64 2600, 4, 0
  %20 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %19, i64 1, 4, 1
  %21 = call i8* @malloc(i64 mul (i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 5200000))
  %22 = bitcast i8* %21 to double*
  %23 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %22, 0
  %24 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, double* %22, 1
  %25 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %24, i64 0, 2
  %26 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %25, i64 2000, 3, 0
  %27 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %26, i64 2600, 3, 1
  %28 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %27, i64 2600, 4, 0
  %29 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %28, i64 1, 4, 1
  %30 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 0
  %31 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 1
  %32 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 2
  %33 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 3, 0
  %34 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 3, 1
  %35 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 4, 0
  %36 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 4, 1
  %37 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, 0
  %38 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, 1
  %39 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, 2
  %40 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, 3, 0
  %41 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, 3, 1
  %42 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, 4, 0
  %43 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, 4, 1
  %44 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 0
  %45 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 1
  %46 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 2
  %47 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 3, 0
  %48 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 3, 1
  %49 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 4, 0
  %50 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 4, 1
  call void @init_array(i32 2000, i32 2600, double* %30, double* %31, i64 %32, i64 %33, i64 %34, i64 %35, i64 %36, double* %37, double* %38, i64 %39, i64 %40, i64 %41, i64 %42, i64 %43, double* %44, double* %45, i64 %46, i64 %47, i64 %48, i64 %49, i64 %50)
  call void @polybench_timer_start()
  %51 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 0
  %52 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 1
  %53 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 2
  %54 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 3, 0
  %55 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 3, 1
  %56 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 4, 0
  %57 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 4, 1
  %58 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, 0
  %59 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, 1
  %60 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, 2
  %61 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, 3, 0
  %62 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, 3, 1
  %63 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, 4, 0
  %64 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, 4, 1
  %65 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 0
  %66 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 1
  %67 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 2
  %68 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 3, 0
  %69 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 3, 1
  %70 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 4, 0
  %71 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 4, 1
  call void @kernel_gramschmidt(i32 2000, i32 2600, double* %51, double* %52, i64 %53, i64 %54, i64 %55, i64 %56, i64 %57, double* %58, double* %59, i64 %60, i64 %61, i64 %62, i64 %63, i64 %64, double* %65, double* %66, i64 %67, i64 %68, i64 %69, i64 %70, i64 %71)
  call void @polybench_timer_stop()
  call void @polybench_timer_print()
  %72 = icmp sgt i32 %0, 42
  br i1 %72, label %73, label %79

73:                                               ; preds = %2
  %74 = getelementptr i8*, i8** %1, i64 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @strcmp(i8* %75, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @str0, i64 0, i64 0))
  %77 = trunc i32 %76 to i1
  %78 = xor i1 %77, true
  br label %80

79:                                               ; preds = %2
  br label %80

80:                                               ; preds = %73, %79
  %81 = phi i1 [ %78, %73 ], [ false, %79 ]
  br label %82

82:                                               ; preds = %80
  br i1 %81, label %83, label %105

83:                                               ; preds = %82
  %84 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 0
  %85 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 1
  %86 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 2
  %87 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 3, 0
  %88 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 3, 1
  %89 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 4, 0
  %90 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 4, 1
  %91 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, 0
  %92 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, 1
  %93 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, 2
  %94 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, 3, 0
  %95 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, 3, 1
  %96 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, 4, 0
  %97 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, 4, 1
  %98 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 0
  %99 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 1
  %100 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 2
  %101 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 3, 0
  %102 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 3, 1
  %103 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 4, 0
  %104 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 4, 1
  call void @print_array(i32 2000, i32 2600, double* %84, double* %85, i64 %86, i64 %87, i64 %88, i64 %89, i64 %90, double* %91, double* %92, i64 %93, i64 %94, i64 %95, i64 %96, i64 %97, double* %98, double* %99, i64 %100, i64 %101, i64 %102, i64 %103, i64 %104)
  br label %105

105:                                              ; preds = %83, %82
  %106 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 0
  %107 = bitcast double* %106 to i8*
  call void @free(i8* %107)
  %108 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, 0
  %109 = bitcast double* %108 to i8*
  call void @free(i8* %109)
  %110 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 0
  %111 = bitcast double* %110 to i8*
  call void @free(i8* %111)
  ret i32 0
}

define private void @init_array(i32 %0, i32 %1, double* %2, double* %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, double* %9, double* %10, i64 %11, i64 %12, i64 %13, i64 %14, i64 %15, double* %16, double* %17, i64 %18, i64 %19, i64 %20, i64 %21, i64 %22) {
  %24 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %2, 0
  %25 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %24, double* %3, 1
  %26 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %25, i64 %4, 2
  %27 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %26, i64 %5, 3, 0
  %28 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %27, i64 %7, 4, 0
  %29 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %28, i64 %6, 3, 1
  %30 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, i64 %8, 4, 1
  %31 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %9, 0
  %32 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %31, double* %10, 1
  %33 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, i64 %11, 2
  %34 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %33, i64 %12, 3, 0
  %35 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %34, i64 %14, 4, 0
  %36 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %35, i64 %13, 3, 1
  %37 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %36, i64 %15, 4, 1
  %38 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %16, 0
  %39 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %38, double* %17, 1
  %40 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %39, i64 %18, 2
  %41 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %40, i64 %19, 3, 0
  %42 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %41, i64 %21, 4, 0
  %43 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %42, i64 %20, 3, 1
  %44 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %43, i64 %22, 4, 1
  br label %45

45:                                               ; preds = %74, %23
  %46 = phi i32 [ %75, %74 ], [ 0, %23 ]
  %47 = icmp slt i32 %46, %0
  br i1 %47, label %48, label %76

48:                                               ; preds = %45
  %49 = phi i32 [ 0, %45 ]
  %50 = phi i32 [ %46, %45 ]
  %51 = sext i32 %50 to i64
  br label %52

52:                                               ; preds = %55, %48
  %53 = phi i32 [ %73, %55 ], [ 0, %48 ]
  %54 = icmp slt i32 %53, %1
  br i1 %54, label %55, label %74

55:                                               ; preds = %52
  %56 = phi i32 [ %53, %52 ]
  %57 = sext i32 %56 to i64
  %58 = mul i32 %50, %56
  %59 = srem i32 %58, %0
  %60 = sitofp i32 %59 to double
  %61 = sitofp i32 %0 to double
  %62 = fdiv double %60, %61
  %63 = fmul double %62, 1.000000e+02
  %64 = fadd double %63, 1.000000e+01
  %65 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %30, 1
  %66 = mul i64 %51, 2600
  %67 = add i64 %66, %57
  %68 = getelementptr double, double* %65, i64 %67
  store double %64, double* %68, align 8
  %69 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %44, 1
  %70 = mul i64 %51, 2600
  %71 = add i64 %70, %57
  %72 = getelementptr double, double* %69, i64 %71
  store double 0.000000e+00, double* %72, align 8
  %73 = add i32 %56, 1
  br label %52

74:                                               ; preds = %52
  %75 = add i32 %50, 1
  br label %45

76:                                               ; preds = %45
  %77 = sext i32 %1 to i64
  br label %78

78:                                               ; preds = %93, %76
  %79 = phi i64 [ %95, %93 ], [ 0, %76 ]
  %80 = phi i32 [ %94, %93 ], [ 0, %76 ]
  %81 = icmp slt i64 %79, %77
  br i1 %81, label %82, label %96

82:                                               ; preds = %78
  %83 = sext i32 %80 to i64
  br label %84

84:                                               ; preds = %87, %82
  %85 = phi i64 [ %92, %87 ], [ 0, %82 ]
  %86 = icmp slt i64 %85, %77
  br i1 %86, label %87, label %93

87:                                               ; preds = %84
  %88 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %37, 1
  %89 = mul i64 %83, 2600
  %90 = add i64 %89, %85
  %91 = getelementptr double, double* %88, i64 %90
  store double 0.000000e+00, double* %91, align 8
  %92 = add i64 %85, 1
  br label %84

93:                                               ; preds = %84
  %94 = add i32 %80, 1
  %95 = add i64 %79, 1
  br label %78

96:                                               ; preds = %78
  ret void
}

declare void @polybench_timer_start()

define private void @kernel_gramschmidt(i32 %0, i32 %1, double* %2, double* %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, double* %9, double* %10, i64 %11, i64 %12, i64 %13, i64 %14, i64 %15, double* %16, double* %17, i64 %18, i64 %19, i64 %20, i64 %21, i64 %22) {
  %24 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %2, 0
  %25 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %24, double* %3, 1
  %26 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %25, i64 %4, 2
  %27 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %26, i64 %5, 3, 0
  %28 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %27, i64 %7, 4, 0
  %29 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %28, i64 %6, 3, 1
  %30 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, i64 %8, 4, 1
  %31 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %9, 0
  %32 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %31, double* %10, 1
  %33 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, i64 %11, 2
  %34 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %33, i64 %12, 3, 0
  %35 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %34, i64 %14, 4, 0
  %36 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %35, i64 %13, 3, 1
  %37 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %36, i64 %15, 4, 1
  %38 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %16, 0
  %39 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %38, double* %17, 1
  %40 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %39, i64 %18, 2
  %41 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %40, i64 %19, 3, 0
  %42 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %41, i64 %21, 4, 0
  %43 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %42, i64 %20, 3, 1
  %44 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %43, i64 %22, 4, 1
  %45 = sext i32 %0 to i64
  %46 = alloca double, i64 ptrtoint (double* getelementptr (double, double* null, i64 1) to i64), align 8
  %47 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %46, 0
  %48 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %47, double* %46, 1
  %49 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %48, i64 0, 2
  %50 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %49, i64 1, 3, 0
  %51 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %50, i64 1, 4, 0
  %52 = sext i32 %1 to i64
  br label %53

53:                                               ; preds = %165, %23
  %54 = phi i64 [ %166, %165 ], [ 0, %23 ]
  %55 = icmp slt i64 %54, %52
  br i1 %55, label %56, label %167

56:                                               ; preds = %53
  %57 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %51, 1
  %58 = getelementptr double, double* %57, i64 0
  store double 0.000000e+00, double* %58, align 8
  br label %59

59:                                               ; preds = %62, %56
  %60 = phi i64 [ %75, %62 ], [ 0, %56 ]
  %61 = icmp slt i64 %60, %45
  br i1 %61, label %62, label %76

62:                                               ; preds = %59
  %63 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %30, 1
  %64 = mul i64 %60, 2600
  %65 = add i64 %64, %54
  %66 = getelementptr double, double* %63, i64 %65
  %67 = load double, double* %66, align 8
  %68 = fmul double %67, %67
  %69 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %51, 1
  %70 = getelementptr double, double* %69, i64 0
  %71 = load double, double* %70, align 8
  %72 = fadd double %71, %68
  %73 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %51, 1
  %74 = getelementptr double, double* %73, i64 0
  store double %72, double* %74, align 8
  %75 = add i64 %60, 1
  br label %59

76:                                               ; preds = %59
  %77 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %51, 1
  %78 = getelementptr double, double* %77, i64 0
  %79 = load double, double* %78, align 8
  %80 = call double @llvm.sqrt.f64(double %79)
  %81 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %37, 1
  %82 = mul i64 %54, 2600
  %83 = add i64 %82, %54
  %84 = getelementptr double, double* %81, i64 %83
  store double %80, double* %84, align 8
  br label %85

85:                                               ; preds = %88, %76
  %86 = phi i64 [ %99, %88 ], [ 0, %76 ]
  %87 = icmp slt i64 %86, %45
  br i1 %87, label %88, label %100

88:                                               ; preds = %85
  %89 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %30, 1
  %90 = mul i64 %86, 2600
  %91 = add i64 %90, %54
  %92 = getelementptr double, double* %89, i64 %91
  %93 = load double, double* %92, align 8
  %94 = fdiv double %93, %80
  %95 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %44, 1
  %96 = mul i64 %86, 2600
  %97 = add i64 %96, %54
  %98 = getelementptr double, double* %95, i64 %97
  store double %94, double* %98, align 8
  %99 = add i64 %86, 1
  br label %85

100:                                              ; preds = %85
  %101 = add i64 %54, 1
  br label %102

102:                                              ; preds = %163, %100
  %103 = phi i64 [ %164, %163 ], [ %101, %100 ]
  %104 = icmp slt i64 %103, %52
  br i1 %104, label %105, label %165

105:                                              ; preds = %102
  %106 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %37, 1
  %107 = mul i64 %54, 2600
  %108 = add i64 %107, %103
  %109 = getelementptr double, double* %106, i64 %108
  store double 0.000000e+00, double* %109, align 8
  br label %110

110:                                              ; preds = %113, %105
  %111 = phi i64 [ %135, %113 ], [ 0, %105 ]
  %112 = icmp slt i64 %111, %45
  br i1 %112, label %113, label %136

113:                                              ; preds = %110
  %114 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %44, 1
  %115 = mul i64 %111, 2600
  %116 = add i64 %115, %54
  %117 = getelementptr double, double* %114, i64 %116
  %118 = load double, double* %117, align 8
  %119 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %30, 1
  %120 = mul i64 %111, 2600
  %121 = add i64 %120, %103
  %122 = getelementptr double, double* %119, i64 %121
  %123 = load double, double* %122, align 8
  %124 = fmul double %118, %123
  %125 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %37, 1
  %126 = mul i64 %54, 2600
  %127 = add i64 %126, %103
  %128 = getelementptr double, double* %125, i64 %127
  %129 = load double, double* %128, align 8
  %130 = fadd double %129, %124
  %131 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %37, 1
  %132 = mul i64 %54, 2600
  %133 = add i64 %132, %103
  %134 = getelementptr double, double* %131, i64 %133
  store double %130, double* %134, align 8
  %135 = add i64 %111, 1
  br label %110

136:                                              ; preds = %110
  br label %137

137:                                              ; preds = %140, %136
  %138 = phi i64 [ %162, %140 ], [ 0, %136 ]
  %139 = icmp slt i64 %138, %45
  br i1 %139, label %140, label %163

140:                                              ; preds = %137
  %141 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %30, 1
  %142 = mul i64 %138, 2600
  %143 = add i64 %142, %103
  %144 = getelementptr double, double* %141, i64 %143
  %145 = load double, double* %144, align 8
  %146 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %44, 1
  %147 = mul i64 %138, 2600
  %148 = add i64 %147, %54
  %149 = getelementptr double, double* %146, i64 %148
  %150 = load double, double* %149, align 8
  %151 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %37, 1
  %152 = mul i64 %54, 2600
  %153 = add i64 %152, %103
  %154 = getelementptr double, double* %151, i64 %153
  %155 = load double, double* %154, align 8
  %156 = fmul double %150, %155
  %157 = fsub double %145, %156
  %158 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %30, 1
  %159 = mul i64 %138, 2600
  %160 = add i64 %159, %103
  %161 = getelementptr double, double* %158, i64 %160
  store double %157, double* %161, align 8
  %162 = add i64 %138, 1
  br label %137

163:                                              ; preds = %137
  %164 = add i64 %103, 1
  br label %102

165:                                              ; preds = %102
  %166 = add i64 %54, 1
  br label %53

167:                                              ; preds = %53
  ret void
}

declare void @polybench_timer_stop()

declare void @polybench_timer_print()

define private void @print_array(i32 %0, i32 %1, double* %2, double* %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, double* %9, double* %10, i64 %11, i64 %12, i64 %13, i64 %14, i64 %15, double* %16, double* %17, i64 %18, i64 %19, i64 %20, i64 %21, i64 %22) {
  %24 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %2, 0
  %25 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %24, double* %3, 1
  %26 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %25, i64 %4, 2
  %27 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %26, i64 %5, 3, 0
  %28 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %27, i64 %7, 4, 0
  %29 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %28, i64 %6, 3, 1
  %30 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, i64 %8, 4, 1
  %31 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %9, 0
  %32 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %31, double* %10, 1
  %33 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, i64 %11, 2
  %34 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %33, i64 %12, 3, 0
  %35 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %34, i64 %14, 4, 0
  %36 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %35, i64 %13, 3, 1
  %37 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %36, i64 %15, 4, 1
  %38 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %16, 0
  %39 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %38, double* %17, 1
  %40 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %39, i64 %18, 2
  %41 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %40, i64 %19, 3, 0
  %42 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %41, i64 %21, 4, 0
  %43 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %42, i64 %20, 3, 1
  %44 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %43, i64 %22, 4, 1
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @str1, i64 0, i64 0))
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @str2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str3, i64 0, i64 0))
  br label %49

49:                                               ; preds = %77, %23
  %50 = phi i32 [ %78, %77 ], [ 0, %23 ]
  %51 = icmp slt i32 %50, %1
  br i1 %51, label %52, label %79

52:                                               ; preds = %49
  %53 = phi i32 [ %50, %49 ]
  %54 = sext i32 %53 to i64
  br label %55

55:                                               ; preds = %68, %52
  %56 = phi i32 [ %76, %68 ], [ 0, %52 ]
  %57 = icmp slt i32 %56, %1
  br i1 %57, label %58, label %77

58:                                               ; preds = %55
  %59 = phi i32 [ %56, %55 ]
  %60 = sext i32 %59 to i64
  %61 = mul i32 %53, %1
  %62 = add i32 %61, %59
  %63 = srem i32 %62, 20
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str4, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %58
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %70 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %37, 1
  %71 = mul i64 %54, 2600
  %72 = add i64 %71, %60
  %73 = getelementptr double, double* %70, i64 %72
  %74 = load double, double* %73, align 8
  %75 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %69, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @str5, i64 0, i64 0), double %74)
  %76 = add i32 %59, 1
  br label %55

77:                                               ; preds = %55
  %78 = add i32 %53, 1
  br label %49

79:                                               ; preds = %49
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %81 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %80, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @str6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str3, i64 0, i64 0))
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %83 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %82, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @str2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str7, i64 0, i64 0))
  br label %84

84:                                               ; preds = %112, %79
  %85 = phi i32 [ %113, %112 ], [ 0, %79 ]
  %86 = icmp slt i32 %85, %0
  br i1 %86, label %87, label %114

87:                                               ; preds = %84
  %88 = phi i32 [ %85, %84 ]
  %89 = sext i32 %88 to i64
  br label %90

90:                                               ; preds = %103, %87
  %91 = phi i32 [ %111, %103 ], [ 0, %87 ]
  %92 = icmp slt i32 %91, %1
  br i1 %92, label %93, label %112

93:                                               ; preds = %90
  %94 = phi i32 [ %91, %90 ]
  %95 = sext i32 %94 to i64
  %96 = mul i32 %88, %1
  %97 = add i32 %96, %94
  %98 = srem i32 %97, 20
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %93
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %102 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %101, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str4, i64 0, i64 0))
  br label %103

103:                                              ; preds = %100, %93
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %105 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %44, 1
  %106 = mul i64 %89, 2600
  %107 = add i64 %106, %95
  %108 = getelementptr double, double* %105, i64 %107
  %109 = load double, double* %108, align 8
  %110 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %104, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @str5, i64 0, i64 0), double %109)
  %111 = add i32 %94, 1
  br label %90

112:                                              ; preds = %90
  %113 = add i32 %88, 1
  br label %84

114:                                              ; preds = %84
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %116 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %115, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @str6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str7, i64 0, i64 0))
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %118 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %117, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @str8, i64 0, i64 0))
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.sqrt.f64(double) #0

attributes #0 = { nofree nosync nounwind readnone speculatable willreturn }


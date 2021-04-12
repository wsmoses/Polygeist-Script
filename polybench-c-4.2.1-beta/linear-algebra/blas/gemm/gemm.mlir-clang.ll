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
  %15 = call i8* @malloc(i64 mul (i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 4600000))
  %16 = bitcast i8* %15 to double*
  %17 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %16, 0
  %18 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %17, double* %16, 1
  %19 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %18, i64 0, 2
  %20 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %19, i64 2000, 3, 0
  %21 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, i64 2300, 3, 1
  %22 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %21, i64 2300, 4, 0
  %23 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %22, i64 1, 4, 1
  %24 = call i8* @malloc(i64 mul (i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 5200000))
  %25 = bitcast i8* %24 to double*
  %26 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %25, 0
  %27 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %26, double* %25, 1
  %28 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %27, i64 0, 2
  %29 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %28, i64 2000, 3, 0
  %30 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, i64 2600, 3, 1
  %31 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %30, i64 2600, 4, 0
  %32 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %31, i64 1, 4, 1
  %33 = call i8* @malloc(i64 mul (i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 5980000))
  %34 = bitcast i8* %33 to double*
  %35 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %34, 0
  %36 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %35, double* %34, 1
  %37 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %36, i64 0, 2
  %38 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %37, i64 2600, 3, 0
  %39 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %38, i64 2300, 3, 1
  %40 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %39, i64 2300, 4, 0
  %41 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %40, i64 1, 4, 1
  %42 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %8, 0
  %43 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %8, 1
  %44 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %8, 2
  %45 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %8, 3, 0
  %46 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %8, 4, 0
  %47 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %14, 0
  %48 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %14, 1
  %49 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %14, 2
  %50 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %14, 3, 0
  %51 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %14, 4, 0
  %52 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 0
  %53 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 1
  %54 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 2
  %55 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 3, 0
  %56 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 3, 1
  %57 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 4, 0
  %58 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 4, 1
  %59 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 0
  %60 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 1
  %61 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 2
  %62 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 3, 0
  %63 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 3, 1
  %64 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 4, 0
  %65 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 4, 1
  %66 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %41, 0
  %67 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %41, 1
  %68 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %41, 2
  %69 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %41, 3, 0
  %70 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %41, 3, 1
  %71 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %41, 4, 0
  %72 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %41, 4, 1
  call void @init_array(i32 2000, i32 2300, i32 2600, double* %42, double* %43, i64 %44, i64 %45, i64 %46, double* %47, double* %48, i64 %49, i64 %50, i64 %51, double* %52, double* %53, i64 %54, i64 %55, i64 %56, i64 %57, i64 %58, double* %59, double* %60, i64 %61, i64 %62, i64 %63, i64 %64, i64 %65, double* %66, double* %67, i64 %68, i64 %69, i64 %70, i64 %71, i64 %72)
  call void @polybench_timer_start()
  %73 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %8, 1
  %74 = getelementptr double, double* %73, i64 0
  %75 = load double, double* %74, align 8
  %76 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %14, 1
  %77 = getelementptr double, double* %76, i64 0
  %78 = load double, double* %77, align 8
  %79 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 0
  %80 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 1
  %81 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 2
  %82 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 3, 0
  %83 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 3, 1
  %84 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 4, 0
  %85 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 4, 1
  %86 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 0
  %87 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 1
  %88 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 2
  %89 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 3, 0
  %90 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 3, 1
  %91 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 4, 0
  %92 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 4, 1
  %93 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %41, 0
  %94 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %41, 1
  %95 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %41, 2
  %96 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %41, 3, 0
  %97 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %41, 3, 1
  %98 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %41, 4, 0
  %99 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %41, 4, 1
  call void @kernel_gemm(i32 2000, i32 2300, i32 2600, double %75, double %78, double* %79, double* %80, i64 %81, i64 %82, i64 %83, i64 %84, i64 %85, double* %86, double* %87, i64 %88, i64 %89, i64 %90, i64 %91, i64 %92, double* %93, double* %94, i64 %95, i64 %96, i64 %97, i64 %98, i64 %99)
  call void @polybench_timer_stop()
  call void @polybench_timer_print()
  %100 = icmp sgt i32 %0, 42
  br i1 %100, label %101, label %107

101:                                              ; preds = %2
  %102 = getelementptr i8*, i8** %1, i64 0
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @strcmp(i8* %103, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @str0, i64 0, i64 0))
  %105 = trunc i32 %104 to i1
  %106 = xor i1 %105, true
  br label %108

107:                                              ; preds = %2
  br label %108

108:                                              ; preds = %101, %107
  %109 = phi i1 [ %106, %101 ], [ false, %107 ]
  br label %110

110:                                              ; preds = %108
  br i1 %109, label %111, label %119

111:                                              ; preds = %110
  %112 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 0
  %113 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 1
  %114 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 2
  %115 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 3, 0
  %116 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 3, 1
  %117 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 4, 0
  %118 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 4, 1
  call void @print_array(i32 2000, i32 2300, double* %112, double* %113, i64 %114, i64 %115, i64 %116, i64 %117, i64 %118)
  br label %119

119:                                              ; preds = %111, %110
  %120 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 0
  %121 = bitcast double* %120 to i8*
  call void @free(i8* %121)
  %122 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 0
  %123 = bitcast double* %122 to i8*
  call void @free(i8* %123)
  %124 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %41, 0
  %125 = bitcast double* %124 to i8*
  call void @free(i8* %125)
  ret i32 0
}

define private void @init_array(i32 %0, i32 %1, i32 %2, double* %3, double* %4, i64 %5, i64 %6, i64 %7, double* %8, double* %9, i64 %10, i64 %11, i64 %12, double* %13, double* %14, i64 %15, i64 %16, i64 %17, i64 %18, i64 %19, double* %20, double* %21, i64 %22, i64 %23, i64 %24, i64 %25, i64 %26, double* %27, double* %28, i64 %29, i64 %30, i64 %31, i64 %32, i64 %33) {
  %35 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %3, 0
  %36 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %35, double* %4, 1
  %37 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %36, i64 %5, 2
  %38 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %37, i64 %6, 3, 0
  %39 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %38, i64 %7, 4, 0
  %40 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %8, 0
  %41 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %40, double* %9, 1
  %42 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %41, i64 %10, 2
  %43 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %42, i64 %11, 3, 0
  %44 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %43, i64 %12, 4, 0
  %45 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %13, 0
  %46 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %45, double* %14, 1
  %47 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %46, i64 %15, 2
  %48 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %47, i64 %16, 3, 0
  %49 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %48, i64 %18, 4, 0
  %50 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %49, i64 %17, 3, 1
  %51 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %50, i64 %19, 4, 1
  %52 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %20, 0
  %53 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %52, double* %21, 1
  %54 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %53, i64 %22, 2
  %55 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %54, i64 %23, 3, 0
  %56 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %55, i64 %25, 4, 0
  %57 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %56, i64 %24, 3, 1
  %58 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %57, i64 %26, 4, 1
  %59 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %27, 0
  %60 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %59, double* %28, 1
  %61 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %60, i64 %29, 2
  %62 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %61, i64 %30, 3, 0
  %63 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %62, i64 %32, 4, 0
  %64 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %63, i64 %31, 3, 1
  %65 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %64, i64 %33, 4, 1
  %66 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %39, 1
  %67 = getelementptr double, double* %66, i64 0
  store double 1.500000e+00, double* %67, align 8
  %68 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %44, 1
  %69 = getelementptr double, double* %68, i64 0
  store double 1.200000e+00, double* %69, align 8
  br label %70

70:                                               ; preds = %94, %34
  %71 = phi i32 [ %95, %94 ], [ 0, %34 ]
  %72 = icmp slt i32 %71, %0
  br i1 %72, label %73, label %96

73:                                               ; preds = %70
  %74 = phi i32 [ 0, %70 ]
  %75 = phi i32 [ %71, %70 ]
  %76 = sext i32 %75 to i64
  br label %77

77:                                               ; preds = %80, %73
  %78 = phi i32 [ %93, %80 ], [ 0, %73 ]
  %79 = icmp slt i32 %78, %1
  br i1 %79, label %80, label %94

80:                                               ; preds = %77
  %81 = phi i32 [ %78, %77 ]
  %82 = sext i32 %81 to i64
  %83 = mul i32 %75, %81
  %84 = add i32 %83, 1
  %85 = srem i32 %84, %0
  %86 = sitofp i32 %85 to double
  %87 = sitofp i32 %0 to double
  %88 = fdiv double %86, %87
  %89 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %51, 1
  %90 = mul i64 %76, 2300
  %91 = add i64 %90, %82
  %92 = getelementptr double, double* %89, i64 %91
  store double %88, double* %92, align 8
  %93 = add i32 %81, 1
  br label %77

94:                                               ; preds = %77
  %95 = add i32 %75, 1
  br label %70

96:                                               ; preds = %70
  br label %97

97:                                               ; preds = %122, %96
  %98 = phi i32 [ %123, %122 ], [ 0, %96 ]
  %99 = icmp slt i32 %98, %0
  br i1 %99, label %100, label %124

100:                                              ; preds = %97
  %101 = phi i32 [ 0, %97 ]
  %102 = phi i32 [ %98, %97 ]
  %103 = sext i32 %102 to i64
  %104 = sext i32 %2 to i64
  br label %105

105:                                              ; preds = %109, %100
  %106 = phi i64 [ %121, %109 ], [ 0, %100 ]
  %107 = phi i32 [ %111, %109 ], [ 0, %100 ]
  %108 = icmp slt i64 %106, %104
  br i1 %108, label %109, label %122

109:                                              ; preds = %105
  %110 = sext i32 %107 to i64
  %111 = add i32 %107, 1
  %112 = mul i32 %102, %111
  %113 = srem i32 %112, %2
  %114 = sitofp i32 %113 to double
  %115 = sitofp i32 %2 to double
  %116 = fdiv double %114, %115
  %117 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %58, 1
  %118 = mul i64 %103, 2600
  %119 = add i64 %118, %110
  %120 = getelementptr double, double* %117, i64 %119
  store double %116, double* %120, align 8
  %121 = add i64 %106, 1
  br label %105

122:                                              ; preds = %105
  %123 = add i32 %102, 1
  br label %97

124:                                              ; preds = %97
  br label %125

125:                                              ; preds = %148, %124
  %126 = phi i32 [ %149, %148 ], [ 0, %124 ]
  %127 = icmp slt i32 %126, %2
  br i1 %127, label %128, label %150

128:                                              ; preds = %125
  %129 = phi i32 [ %126, %125 ]
  %130 = sext i32 %129 to i64
  br label %131

131:                                              ; preds = %134, %128
  %132 = phi i32 [ %147, %134 ], [ 0, %128 ]
  %133 = icmp slt i32 %132, %1
  br i1 %133, label %134, label %148

134:                                              ; preds = %131
  %135 = phi i32 [ %132, %131 ]
  %136 = sext i32 %135 to i64
  %137 = add i32 %135, 2
  %138 = mul i32 %129, %137
  %139 = srem i32 %138, %1
  %140 = sitofp i32 %139 to double
  %141 = sitofp i32 %1 to double
  %142 = fdiv double %140, %141
  %143 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %65, 1
  %144 = mul i64 %130, 2300
  %145 = add i64 %144, %136
  %146 = getelementptr double, double* %143, i64 %145
  store double %142, double* %146, align 8
  %147 = add i32 %135, 1
  br label %131

148:                                              ; preds = %131
  %149 = add i32 %129, 1
  br label %125

150:                                              ; preds = %125
  ret void
}

declare void @polybench_timer_start()

define private void @kernel_gemm(i32 %0, i32 %1, i32 %2, double %3, double %4, double* %5, double* %6, i64 %7, i64 %8, i64 %9, i64 %10, i64 %11, double* %12, double* %13, i64 %14, i64 %15, i64 %16, i64 %17, i64 %18, double* %19, double* %20, i64 %21, i64 %22, i64 %23, i64 %24, i64 %25) {
  %27 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %5, 0
  %28 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %27, double* %6, 1
  %29 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %28, i64 %7, 2
  %30 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, i64 %8, 3, 0
  %31 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %30, i64 %10, 4, 0
  %32 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %31, i64 %9, 3, 1
  %33 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, i64 %11, 4, 1
  %34 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %12, 0
  %35 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %34, double* %13, 1
  %36 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %35, i64 %14, 2
  %37 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %36, i64 %15, 3, 0
  %38 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %37, i64 %17, 4, 0
  %39 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %38, i64 %16, 3, 1
  %40 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %39, i64 %18, 4, 1
  %41 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %19, 0
  %42 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %41, double* %20, 1
  %43 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %42, i64 %21, 2
  %44 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %43, i64 %22, 3, 0
  %45 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %44, i64 %24, 4, 0
  %46 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %45, i64 %23, 3, 1
  %47 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %46, i64 %25, 4, 1
  %48 = sext i32 %0 to i64
  %49 = sext i32 %1 to i64
  %50 = sext i32 %2 to i64
  br label %51

51:                                               ; preds = %104, %26
  %52 = phi i64 [ %105, %104 ], [ 0, %26 ]
  %53 = icmp slt i64 %52, %48
  br i1 %53, label %54, label %106

54:                                               ; preds = %51
  br label %55

55:                                               ; preds = %58, %54
  %56 = phi i64 [ %69, %58 ], [ 0, %54 ]
  %57 = icmp slt i64 %56, %49
  br i1 %57, label %58, label %70

58:                                               ; preds = %55
  %59 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %33, 1
  %60 = mul i64 %52, 2300
  %61 = add i64 %60, %56
  %62 = getelementptr double, double* %59, i64 %61
  %63 = load double, double* %62, align 8
  %64 = fmul double %63, %4
  %65 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %33, 1
  %66 = mul i64 %52, 2300
  %67 = add i64 %66, %56
  %68 = getelementptr double, double* %65, i64 %67
  store double %64, double* %68, align 8
  %69 = add i64 %56, 1
  br label %55

70:                                               ; preds = %55
  br label %71

71:                                               ; preds = %102, %70
  %72 = phi i64 [ %103, %102 ], [ 0, %70 ]
  %73 = icmp slt i64 %72, %50
  br i1 %73, label %74, label %104

74:                                               ; preds = %71
  br label %75

75:                                               ; preds = %78, %74
  %76 = phi i64 [ %101, %78 ], [ 0, %74 ]
  %77 = icmp slt i64 %76, %49
  br i1 %77, label %78, label %102

78:                                               ; preds = %75
  %79 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %40, 1
  %80 = mul i64 %52, 2600
  %81 = add i64 %80, %72
  %82 = getelementptr double, double* %79, i64 %81
  %83 = load double, double* %82, align 8
  %84 = fmul double %3, %83
  %85 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %47, 1
  %86 = mul i64 %72, 2300
  %87 = add i64 %86, %76
  %88 = getelementptr double, double* %85, i64 %87
  %89 = load double, double* %88, align 8
  %90 = fmul double %84, %89
  %91 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %33, 1
  %92 = mul i64 %52, 2300
  %93 = add i64 %92, %76
  %94 = getelementptr double, double* %91, i64 %93
  %95 = load double, double* %94, align 8
  %96 = fadd double %95, %90
  %97 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %33, 1
  %98 = mul i64 %52, 2300
  %99 = add i64 %98, %76
  %100 = getelementptr double, double* %97, i64 %99
  store double %96, double* %100, align 8
  %101 = add i64 %76, 1
  br label %75

102:                                              ; preds = %75
  %103 = add i64 %72, 1
  br label %71

104:                                              ; preds = %71
  %105 = add i64 %52, 1
  br label %51

106:                                              ; preds = %51
  ret void
}

declare void @polybench_timer_stop()

declare void @polybench_timer_print()

define private void @print_array(i32 %0, i32 %1, double* %2, double* %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8) {
  %10 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %2, 0
  %11 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %10, double* %3, 1
  %12 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, i64 %4, 2
  %13 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %12, i64 %5, 3, 0
  %14 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %13, i64 %7, 4, 0
  %15 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %14, i64 %6, 3, 1
  %16 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %15, i64 %8, 4, 1
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @str1, i64 0, i64 0))
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @str2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str3, i64 0, i64 0))
  br label %21

21:                                               ; preds = %49, %9
  %22 = phi i32 [ %50, %49 ], [ 0, %9 ]
  %23 = icmp slt i32 %22, %0
  br i1 %23, label %24, label %51

24:                                               ; preds = %21
  %25 = phi i32 [ %22, %21 ]
  %26 = sext i32 %25 to i64
  br label %27

27:                                               ; preds = %40, %24
  %28 = phi i32 [ %48, %40 ], [ 0, %24 ]
  %29 = icmp slt i32 %28, %1
  br i1 %29, label %30, label %49

30:                                               ; preds = %27
  %31 = phi i32 [ %28, %27 ]
  %32 = sext i32 %31 to i64
  %33 = mul i32 %25, %0
  %34 = add i32 %33, %31
  %35 = srem i32 %34, 20
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str4, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %30
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %42 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %16, 1
  %43 = mul i64 %26, 2300
  %44 = add i64 %43, %32
  %45 = getelementptr double, double* %42, i64 %44
  %46 = load double, double* %45, align 8
  %47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @str5, i64 0, i64 0), double %46)
  %48 = add i32 %31, 1
  br label %27

49:                                               ; preds = %27
  %50 = add i32 %25, 1
  br label %21

51:                                               ; preds = %21
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @str6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str3, i64 0, i64 0))
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @str7, i64 0, i64 0))
  ret void
}


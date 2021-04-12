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
  %15 = call i8* @malloc(i64 mul (i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 5200000))
  %16 = bitcast i8* %15 to double*
  %17 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %16, 0
  %18 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %17, double* %16, 1
  %19 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %18, i64 0, 2
  %20 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %19, i64 2000, 3, 0
  %21 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, i64 2600, 3, 1
  %22 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %21, i64 2600, 4, 0
  %23 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %22, i64 1, 4, 1
  %24 = call i8* @malloc(i64 mul (i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 4000000))
  %25 = bitcast i8* %24 to double*
  %26 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %25, 0
  %27 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %26, double* %25, 1
  %28 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %27, i64 0, 2
  %29 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %28, i64 2000, 3, 0
  %30 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, i64 2000, 3, 1
  %31 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %30, i64 2000, 4, 0
  %32 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %31, i64 1, 4, 1
  %33 = call i8* @malloc(i64 mul (i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 5200000))
  %34 = bitcast i8* %33 to double*
  %35 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %34, 0
  %36 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %35, double* %34, 1
  %37 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %36, i64 0, 2
  %38 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %37, i64 2000, 3, 0
  %39 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %38, i64 2600, 3, 1
  %40 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %39, i64 2600, 4, 0
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
  call void @init_array(i32 2000, i32 2600, double* %42, double* %43, i64 %44, i64 %45, i64 %46, double* %47, double* %48, i64 %49, i64 %50, i64 %51, double* %52, double* %53, i64 %54, i64 %55, i64 %56, i64 %57, i64 %58, double* %59, double* %60, i64 %61, i64 %62, i64 %63, i64 %64, i64 %65, double* %66, double* %67, i64 %68, i64 %69, i64 %70, i64 %71, i64 %72)
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
  call void @kernel_symm(i32 2000, i32 2600, double %75, double %78, double* %79, double* %80, i64 %81, i64 %82, i64 %83, i64 %84, i64 %85, double* %86, double* %87, i64 %88, i64 %89, i64 %90, i64 %91, i64 %92, double* %93, double* %94, i64 %95, i64 %96, i64 %97, i64 %98, i64 %99)
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
  call void @print_array(i32 2000, i32 2600, double* %112, double* %113, i64 %114, i64 %115, i64 %116, i64 %117, i64 %118)
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

define private void @init_array(i32 %0, i32 %1, double* %2, double* %3, i64 %4, i64 %5, i64 %6, double* %7, double* %8, i64 %9, i64 %10, i64 %11, double* %12, double* %13, i64 %14, i64 %15, i64 %16, i64 %17, i64 %18, double* %19, double* %20, i64 %21, i64 %22, i64 %23, i64 %24, i64 %25, double* %26, double* %27, i64 %28, i64 %29, i64 %30, i64 %31, i64 %32) {
  %34 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %2, 0
  %35 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %34, double* %3, 1
  %36 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %35, i64 %4, 2
  %37 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %36, i64 %5, 3, 0
  %38 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %37, i64 %6, 4, 0
  %39 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %7, 0
  %40 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %39, double* %8, 1
  %41 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %40, i64 %9, 2
  %42 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %41, i64 %10, 3, 0
  %43 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %42, i64 %11, 4, 0
  %44 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %12, 0
  %45 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %44, double* %13, 1
  %46 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %45, i64 %14, 2
  %47 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %46, i64 %15, 3, 0
  %48 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %47, i64 %17, 4, 0
  %49 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %48, i64 %16, 3, 1
  %50 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %49, i64 %18, 4, 1
  %51 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %19, 0
  %52 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %51, double* %20, 1
  %53 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %52, i64 %21, 2
  %54 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %53, i64 %22, 3, 0
  %55 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %54, i64 %24, 4, 0
  %56 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %55, i64 %23, 3, 1
  %57 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %56, i64 %25, 4, 1
  %58 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %26, 0
  %59 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %58, double* %27, 1
  %60 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %59, i64 %28, 2
  %61 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %60, i64 %29, 3, 0
  %62 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %61, i64 %31, 4, 0
  %63 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %62, i64 %30, 3, 1
  %64 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %63, i64 %32, 4, 1
  %65 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %38, 1
  %66 = getelementptr double, double* %65, i64 0
  store double 1.500000e+00, double* %66, align 8
  %67 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %43, 1
  %68 = getelementptr double, double* %67, i64 0
  store double 1.200000e+00, double* %68, align 8
  br label %69

69:                                               ; preds = %101, %33
  %70 = phi i32 [ %102, %101 ], [ 0, %33 ]
  %71 = icmp slt i32 %70, %0
  br i1 %71, label %72, label %103

72:                                               ; preds = %69
  %73 = phi i32 [ 0, %69 ]
  %74 = phi i32 [ %70, %69 ]
  %75 = sext i32 %74 to i64
  br label %76

76:                                               ; preds = %79, %72
  %77 = phi i32 [ %100, %79 ], [ 0, %72 ]
  %78 = icmp slt i32 %77, %1
  br i1 %78, label %79, label %101

79:                                               ; preds = %76
  %80 = phi i32 [ %77, %76 ]
  %81 = sext i32 %80 to i64
  %82 = add i32 %74, %80
  %83 = srem i32 %82, 100
  %84 = sitofp i32 %83 to double
  %85 = sitofp i32 %0 to double
  %86 = fdiv double %84, %85
  %87 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %50, 1
  %88 = mul i64 %75, 2600
  %89 = add i64 %88, %81
  %90 = getelementptr double, double* %87, i64 %89
  store double %86, double* %90, align 8
  %91 = add i32 %1, %74
  %92 = sub i32 %91, %80
  %93 = srem i32 %92, 100
  %94 = sitofp i32 %93 to double
  %95 = fdiv double %94, %85
  %96 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %64, 1
  %97 = mul i64 %75, 2600
  %98 = add i64 %97, %81
  %99 = getelementptr double, double* %96, i64 %98
  store double %95, double* %99, align 8
  %100 = add i32 %80, 1
  br label %76

101:                                              ; preds = %76
  %102 = add i32 %74, 1
  br label %69

103:                                              ; preds = %69
  br label %104

104:                                              ; preds = %142, %103
  %105 = phi i32 [ %127, %142 ], [ 0, %103 ]
  %106 = icmp slt i32 %105, %0
  br i1 %106, label %107, label %143

107:                                              ; preds = %104
  %108 = phi i32 [ %105, %104 ]
  %109 = sext i32 %108 to i64
  br label %110

110:                                              ; preds = %113, %107
  %111 = phi i32 [ %125, %113 ], [ 0, %107 ]
  %112 = icmp sle i32 %111, %108
  br i1 %112, label %113, label %126

113:                                              ; preds = %110
  %114 = phi i32 [ %111, %110 ]
  %115 = sext i32 %114 to i64
  %116 = add i32 %108, %114
  %117 = srem i32 %116, 100
  %118 = sitofp i32 %117 to double
  %119 = sitofp i32 %0 to double
  %120 = fdiv double %118, %119
  %121 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %57, 1
  %122 = mul i64 %109, 2000
  %123 = add i64 %122, %115
  %124 = getelementptr double, double* %121, i64 %123
  store double %120, double* %124, align 8
  %125 = add i32 %114, 1
  br label %110

126:                                              ; preds = %110
  %127 = add i32 %108, 1
  %128 = sext i32 %0 to i64
  %129 = add i64 %109, 1
  br label %130

130:                                              ; preds = %134, %126
  %131 = phi i64 [ %141, %134 ], [ %129, %126 ]
  %132 = phi i32 [ %140, %134 ], [ %127, %126 ]
  %133 = icmp slt i64 %131, %128
  br i1 %133, label %134, label %142

134:                                              ; preds = %130
  %135 = sext i32 %132 to i64
  %136 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %57, 1
  %137 = mul i64 %109, 2000
  %138 = add i64 %137, %135
  %139 = getelementptr double, double* %136, i64 %138
  store double -9.990000e+02, double* %139, align 8
  %140 = add i32 %132, 1
  %141 = add i64 %131, 1
  br label %130

142:                                              ; preds = %130
  br label %104

143:                                              ; preds = %104
  ret void
}

declare void @polybench_timer_start()

define private void @kernel_symm(i32 %0, i32 %1, double %2, double %3, double* %4, double* %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10, double* %11, double* %12, i64 %13, i64 %14, i64 %15, i64 %16, i64 %17, double* %18, double* %19, i64 %20, i64 %21, i64 %22, i64 %23, i64 %24) {
  %26 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %4, 0
  %27 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %26, double* %5, 1
  %28 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %27, i64 %6, 2
  %29 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %28, i64 %7, 3, 0
  %30 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, i64 %9, 4, 0
  %31 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %30, i64 %8, 3, 1
  %32 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %31, i64 %10, 4, 1
  %33 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %11, 0
  %34 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %33, double* %12, 1
  %35 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %34, i64 %13, 2
  %36 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %35, i64 %14, 3, 0
  %37 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %36, i64 %16, 4, 0
  %38 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %37, i64 %15, 3, 1
  %39 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %38, i64 %17, 4, 1
  %40 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %18, 0
  %41 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %40, double* %19, 1
  %42 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %41, i64 %20, 2
  %43 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %42, i64 %21, 3, 0
  %44 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %43, i64 %23, 4, 0
  %45 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %44, i64 %22, 3, 1
  %46 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %45, i64 %24, 4, 1
  %47 = sext i32 %1 to i64
  %48 = alloca double, i64 ptrtoint (double* getelementptr (double, double* null, i64 1) to i64), align 8
  %49 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %48, 0
  %50 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %49, double* %48, 1
  %51 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %50, i64 0, 2
  %52 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %51, i64 1, 3, 0
  %53 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %52, i64 1, 4, 0
  %54 = sext i32 %0 to i64
  br label %55

55:                                               ; preds = %134, %25
  %56 = phi i64 [ %135, %134 ], [ 0, %25 ]
  %57 = icmp slt i64 %56, %54
  br i1 %57, label %58, label %136

58:                                               ; preds = %55
  br label %59

59:                                               ; preds = %104, %58
  %60 = phi i64 [ %133, %104 ], [ 0, %58 ]
  %61 = icmp slt i64 %60, %47
  br i1 %61, label %62, label %134

62:                                               ; preds = %59
  %63 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %53, 1
  %64 = getelementptr double, double* %63, i64 0
  store double 0.000000e+00, double* %64, align 8
  br label %65

65:                                               ; preds = %68, %62
  %66 = phi i64 [ %103, %68 ], [ 0, %62 ]
  %67 = icmp slt i64 %66, %56
  br i1 %67, label %68, label %104

68:                                               ; preds = %65
  %69 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %46, 1
  %70 = mul i64 %56, 2600
  %71 = add i64 %70, %60
  %72 = getelementptr double, double* %69, i64 %71
  %73 = load double, double* %72, align 8
  %74 = fmul double %2, %73
  %75 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %39, 1
  %76 = mul i64 %56, 2000
  %77 = add i64 %76, %66
  %78 = getelementptr double, double* %75, i64 %77
  %79 = load double, double* %78, align 8
  %80 = fmul double %74, %79
  %81 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 1
  %82 = mul i64 %66, 2600
  %83 = add i64 %82, %60
  %84 = getelementptr double, double* %81, i64 %83
  %85 = load double, double* %84, align 8
  %86 = fadd double %85, %80
  %87 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 1
  %88 = mul i64 %66, 2600
  %89 = add i64 %88, %60
  %90 = getelementptr double, double* %87, i64 %89
  store double %86, double* %90, align 8
  %91 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %46, 1
  %92 = mul i64 %66, 2600
  %93 = add i64 %92, %60
  %94 = getelementptr double, double* %91, i64 %93
  %95 = load double, double* %94, align 8
  %96 = fmul double %95, %79
  %97 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %53, 1
  %98 = getelementptr double, double* %97, i64 0
  %99 = load double, double* %98, align 8
  %100 = fadd double %99, %96
  %101 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %53, 1
  %102 = getelementptr double, double* %101, i64 0
  store double %100, double* %102, align 8
  %103 = add i64 %66, 1
  br label %65

104:                                              ; preds = %65
  %105 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 1
  %106 = mul i64 %56, 2600
  %107 = add i64 %106, %60
  %108 = getelementptr double, double* %105, i64 %107
  %109 = load double, double* %108, align 8
  %110 = fmul double %3, %109
  %111 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %46, 1
  %112 = mul i64 %56, 2600
  %113 = add i64 %112, %60
  %114 = getelementptr double, double* %111, i64 %113
  %115 = load double, double* %114, align 8
  %116 = fmul double %2, %115
  %117 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %39, 1
  %118 = mul i64 %56, 2000
  %119 = add i64 %118, %56
  %120 = getelementptr double, double* %117, i64 %119
  %121 = load double, double* %120, align 8
  %122 = fmul double %116, %121
  %123 = fadd double %110, %122
  %124 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %53, 1
  %125 = getelementptr double, double* %124, i64 0
  %126 = load double, double* %125, align 8
  %127 = fmul double %2, %126
  %128 = fadd double %123, %127
  %129 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 1
  %130 = mul i64 %56, 2600
  %131 = add i64 %130, %60
  %132 = getelementptr double, double* %129, i64 %131
  store double %128, double* %132, align 8
  %133 = add i64 %60, 1
  br label %59

134:                                              ; preds = %59
  %135 = add i64 %56, 1
  br label %55

136:                                              ; preds = %55
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
  %43 = mul i64 %26, 2600
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


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
  %33 = call i8* @malloc(i64 mul (i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 5200000))
  %34 = bitcast i8* %33 to double*
  %35 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %34, 0
  %36 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %35, double* %34, 1
  %37 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %36, i64 0, 2
  %38 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %37, i64 2600, 3, 0
  %39 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %38, i64 2000, 3, 1
  %40 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %39, i64 2000, 4, 0
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
  call void @init_array(i32 2600, i32 2000, double* %42, double* %43, i64 %44, i64 %45, i64 %46, double* %47, double* %48, i64 %49, i64 %50, i64 %51, double* %52, double* %53, i64 %54, i64 %55, i64 %56, i64 %57, i64 %58, double* %59, double* %60, i64 %61, i64 %62, i64 %63, i64 %64, i64 %65, double* %66, double* %67, i64 %68, i64 %69, i64 %70, i64 %71, i64 %72)
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
  call void @kernel_syr2k(i32 2600, i32 2000, double %75, double %78, double* %79, double* %80, i64 %81, i64 %82, i64 %83, i64 %84, i64 %85, double* %86, double* %87, i64 %88, i64 %89, i64 %90, i64 %91, i64 %92, double* %93, double* %94, i64 %95, i64 %96, i64 %97, i64 %98, i64 %99)
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
  call void @print_array(i32 2600, double* %112, double* %113, i64 %114, i64 %115, i64 %116, i64 %117, i64 %118)
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

69:                                               ; preds = %102, %33
  %70 = phi i32 [ %103, %102 ], [ 0, %33 ]
  %71 = icmp slt i32 %70, %0
  br i1 %71, label %72, label %104

72:                                               ; preds = %69
  %73 = phi i32 [ 0, %69 ]
  %74 = phi i32 [ %70, %69 ]
  %75 = sext i32 %74 to i64
  br label %76

76:                                               ; preds = %79, %72
  %77 = phi i32 [ %101, %79 ], [ 0, %72 ]
  %78 = icmp slt i32 %77, %1
  br i1 %78, label %79, label %102

79:                                               ; preds = %76
  %80 = phi i32 [ %77, %76 ]
  %81 = sext i32 %80 to i64
  %82 = mul i32 %74, %80
  %83 = add i32 %82, 1
  %84 = srem i32 %83, %0
  %85 = sitofp i32 %84 to double
  %86 = sitofp i32 %0 to double
  %87 = fdiv double %85, %86
  %88 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %57, 1
  %89 = mul i64 %75, 2000
  %90 = add i64 %89, %81
  %91 = getelementptr double, double* %88, i64 %90
  store double %87, double* %91, align 8
  %92 = add i32 %82, 2
  %93 = srem i32 %92, %1
  %94 = sitofp i32 %93 to double
  %95 = sitofp i32 %1 to double
  %96 = fdiv double %94, %95
  %97 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %64, 1
  %98 = mul i64 %75, 2000
  %99 = add i64 %98, %81
  %100 = getelementptr double, double* %97, i64 %99
  store double %96, double* %100, align 8
  %101 = add i32 %80, 1
  br label %76

102:                                              ; preds = %76
  %103 = add i32 %74, 1
  br label %69

104:                                              ; preds = %69
  br label %105

105:                                              ; preds = %128, %104
  %106 = phi i32 [ %129, %128 ], [ 0, %104 ]
  %107 = icmp slt i32 %106, %0
  br i1 %107, label %108, label %130

108:                                              ; preds = %105
  %109 = phi i32 [ %106, %105 ]
  %110 = sext i32 %109 to i64
  br label %111

111:                                              ; preds = %114, %108
  %112 = phi i32 [ %127, %114 ], [ 0, %108 ]
  %113 = icmp slt i32 %112, %0
  br i1 %113, label %114, label %128

114:                                              ; preds = %111
  %115 = phi i32 [ %112, %111 ]
  %116 = sext i32 %115 to i64
  %117 = mul i32 %109, %115
  %118 = add i32 %117, 3
  %119 = srem i32 %118, %0
  %120 = sitofp i32 %119 to double
  %121 = sitofp i32 %1 to double
  %122 = fdiv double %120, %121
  %123 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %50, 1
  %124 = mul i64 %110, 2600
  %125 = add i64 %124, %116
  %126 = getelementptr double, double* %123, i64 %125
  store double %122, double* %126, align 8
  %127 = add i32 %115, 1
  br label %111

128:                                              ; preds = %111
  %129 = add i32 %109, 1
  br label %105

130:                                              ; preds = %105
  ret void
}

declare void @polybench_timer_start()

define private void @kernel_syr2k(i32 %0, i32 %1, double %2, double %3, double* %4, double* %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10, double* %11, double* %12, i64 %13, i64 %14, i64 %15, i64 %16, i64 %17, double* %18, double* %19, i64 %20, i64 %21, i64 %22, i64 %23, i64 %24) {
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
  %47 = sext i32 %0 to i64
  %48 = sext i32 %1 to i64
  br label %49

49:                                               ; preds = %117, %25
  %50 = phi i64 [ %118, %117 ], [ 0, %25 ]
  %51 = icmp slt i64 %50, %47
  br i1 %51, label %52, label %119

52:                                               ; preds = %49
  %53 = add i64 %50, 1
  br label %54

54:                                               ; preds = %57, %52
  %55 = phi i64 [ %68, %57 ], [ 0, %52 ]
  %56 = icmp slt i64 %55, %53
  br i1 %56, label %57, label %69

57:                                               ; preds = %54
  %58 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 1
  %59 = mul i64 %50, 2600
  %60 = add i64 %59, %55
  %61 = getelementptr double, double* %58, i64 %60
  %62 = load double, double* %61, align 8
  %63 = fmul double %62, %3
  %64 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 1
  %65 = mul i64 %50, 2600
  %66 = add i64 %65, %55
  %67 = getelementptr double, double* %64, i64 %66
  store double %63, double* %67, align 8
  %68 = add i64 %55, 1
  br label %54

69:                                               ; preds = %54
  br label %70

70:                                               ; preds = %115, %69
  %71 = phi i64 [ %116, %115 ], [ 0, %69 ]
  %72 = icmp slt i64 %71, %48
  br i1 %72, label %73, label %117

73:                                               ; preds = %70
  %74 = add i64 %50, 1
  br label %75

75:                                               ; preds = %78, %73
  %76 = phi i64 [ %114, %78 ], [ 0, %73 ]
  %77 = icmp slt i64 %76, %74
  br i1 %77, label %78, label %115

78:                                               ; preds = %75
  %79 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %39, 1
  %80 = mul i64 %76, 2000
  %81 = add i64 %80, %71
  %82 = getelementptr double, double* %79, i64 %81
  %83 = load double, double* %82, align 8
  %84 = fmul double %83, %2
  %85 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %46, 1
  %86 = mul i64 %50, 2000
  %87 = add i64 %86, %71
  %88 = getelementptr double, double* %85, i64 %87
  %89 = load double, double* %88, align 8
  %90 = fmul double %84, %89
  %91 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %46, 1
  %92 = mul i64 %76, 2000
  %93 = add i64 %92, %71
  %94 = getelementptr double, double* %91, i64 %93
  %95 = load double, double* %94, align 8
  %96 = fmul double %95, %2
  %97 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %39, 1
  %98 = mul i64 %50, 2000
  %99 = add i64 %98, %71
  %100 = getelementptr double, double* %97, i64 %99
  %101 = load double, double* %100, align 8
  %102 = fmul double %96, %101
  %103 = fadd double %90, %102
  %104 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 1
  %105 = mul i64 %50, 2600
  %106 = add i64 %105, %76
  %107 = getelementptr double, double* %104, i64 %106
  %108 = load double, double* %107, align 8
  %109 = fadd double %108, %103
  %110 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 1
  %111 = mul i64 %50, 2600
  %112 = add i64 %111, %76
  %113 = getelementptr double, double* %110, i64 %112
  store double %109, double* %113, align 8
  %114 = add i64 %76, 1
  br label %75

115:                                              ; preds = %75
  %116 = add i64 %71, 1
  br label %70

117:                                              ; preds = %70
  %118 = add i64 %50, 1
  br label %49

119:                                              ; preds = %49
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


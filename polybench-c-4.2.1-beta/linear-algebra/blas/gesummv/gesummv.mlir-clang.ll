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
  %15 = call i8* @malloc(i64 mul (i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 7840000))
  %16 = bitcast i8* %15 to double*
  %17 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %16, 0
  %18 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %17, double* %16, 1
  %19 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %18, i64 0, 2
  %20 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %19, i64 2800, 3, 0
  %21 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, i64 2800, 3, 1
  %22 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %21, i64 2800, 4, 0
  %23 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %22, i64 1, 4, 1
  %24 = call i8* @malloc(i64 mul (i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 7840000))
  %25 = bitcast i8* %24 to double*
  %26 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %25, 0
  %27 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %26, double* %25, 1
  %28 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %27, i64 0, 2
  %29 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %28, i64 2800, 3, 0
  %30 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, i64 2800, 3, 1
  %31 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %30, i64 2800, 4, 0
  %32 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %31, i64 1, 4, 1
  %33 = call i8* @malloc(i64 mul (i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 2800))
  %34 = bitcast i8* %33 to double*
  %35 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %34, 0
  %36 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %35, double* %34, 1
  %37 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %36, i64 0, 2
  %38 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %37, i64 2800, 3, 0
  %39 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %38, i64 1, 4, 0
  %40 = call i8* @malloc(i64 mul (i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 2800))
  %41 = bitcast i8* %40 to double*
  %42 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %41, 0
  %43 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %42, double* %41, 1
  %44 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %43, i64 0, 2
  %45 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %44, i64 2800, 3, 0
  %46 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %45, i64 1, 4, 0
  %47 = call i8* @malloc(i64 mul (i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 2800))
  %48 = bitcast i8* %47 to double*
  %49 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %48, 0
  %50 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %49, double* %48, 1
  %51 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %50, i64 0, 2
  %52 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %51, i64 2800, 3, 0
  %53 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %52, i64 1, 4, 0
  %54 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %8, 0
  %55 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %8, 1
  %56 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %8, 2
  %57 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %8, 3, 0
  %58 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %8, 4, 0
  %59 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %14, 0
  %60 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %14, 1
  %61 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %14, 2
  %62 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %14, 3, 0
  %63 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %14, 4, 0
  %64 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 0
  %65 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 1
  %66 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 2
  %67 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 3, 0
  %68 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 3, 1
  %69 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 4, 0
  %70 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 4, 1
  %71 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 0
  %72 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 1
  %73 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 2
  %74 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 3, 0
  %75 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 3, 1
  %76 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 4, 0
  %77 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 4, 1
  %78 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %46, 0
  %79 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %46, 1
  %80 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %46, 2
  %81 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %46, 3, 0
  %82 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %46, 4, 0
  call void @init_array(i32 2800, double* %54, double* %55, i64 %56, i64 %57, i64 %58, double* %59, double* %60, i64 %61, i64 %62, i64 %63, double* %64, double* %65, i64 %66, i64 %67, i64 %68, i64 %69, i64 %70, double* %71, double* %72, i64 %73, i64 %74, i64 %75, i64 %76, i64 %77, double* %78, double* %79, i64 %80, i64 %81, i64 %82)
  call void @polybench_timer_start()
  %83 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %8, 1
  %84 = getelementptr double, double* %83, i64 0
  %85 = load double, double* %84, align 8
  %86 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %14, 1
  %87 = getelementptr double, double* %86, i64 0
  %88 = load double, double* %87, align 8
  %89 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 0
  %90 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 1
  %91 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 2
  %92 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 3, 0
  %93 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 3, 1
  %94 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 4, 0
  %95 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 4, 1
  %96 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 0
  %97 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 1
  %98 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 2
  %99 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 3, 0
  %100 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 3, 1
  %101 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 4, 0
  %102 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 4, 1
  %103 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %39, 0
  %104 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %39, 1
  %105 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %39, 2
  %106 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %39, 3, 0
  %107 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %39, 4, 0
  %108 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %46, 0
  %109 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %46, 1
  %110 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %46, 2
  %111 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %46, 3, 0
  %112 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %46, 4, 0
  %113 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %53, 0
  %114 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %53, 1
  %115 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %53, 2
  %116 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %53, 3, 0
  %117 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %53, 4, 0
  call void @kernel_gesummv(i32 2800, double %85, double %88, double* %89, double* %90, i64 %91, i64 %92, i64 %93, i64 %94, i64 %95, double* %96, double* %97, i64 %98, i64 %99, i64 %100, i64 %101, i64 %102, double* %103, double* %104, i64 %105, i64 %106, i64 %107, double* %108, double* %109, i64 %110, i64 %111, i64 %112, double* %113, double* %114, i64 %115, i64 %116, i64 %117)
  call void @polybench_timer_stop()
  call void @polybench_timer_print()
  %118 = icmp sgt i32 %0, 42
  br i1 %118, label %119, label %125

119:                                              ; preds = %2
  %120 = getelementptr i8*, i8** %1, i64 0
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @strcmp(i8* %121, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @str0, i64 0, i64 0))
  %123 = trunc i32 %122 to i1
  %124 = xor i1 %123, true
  br label %126

125:                                              ; preds = %2
  br label %126

126:                                              ; preds = %119, %125
  %127 = phi i1 [ %124, %119 ], [ false, %125 ]
  br label %128

128:                                              ; preds = %126
  br i1 %127, label %129, label %135

129:                                              ; preds = %128
  %130 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %53, 0
  %131 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %53, 1
  %132 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %53, 2
  %133 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %53, 3, 0
  %134 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %53, 4, 0
  call void @print_array(i32 2800, double* %130, double* %131, i64 %132, i64 %133, i64 %134)
  br label %135

135:                                              ; preds = %129, %128
  %136 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 0
  %137 = bitcast double* %136 to i8*
  call void @free(i8* %137)
  %138 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 0
  %139 = bitcast double* %138 to i8*
  call void @free(i8* %139)
  %140 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %39, 0
  %141 = bitcast double* %140 to i8*
  call void @free(i8* %141)
  %142 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %46, 0
  %143 = bitcast double* %142 to i8*
  call void @free(i8* %143)
  %144 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %53, 0
  %145 = bitcast double* %144 to i8*
  call void @free(i8* %145)
  ret i32 0
}

define private void @init_array(i32 %0, double* %1, double* %2, i64 %3, i64 %4, i64 %5, double* %6, double* %7, i64 %8, i64 %9, i64 %10, double* %11, double* %12, i64 %13, i64 %14, i64 %15, i64 %16, i64 %17, double* %18, double* %19, i64 %20, i64 %21, i64 %22, i64 %23, i64 %24, double* %25, double* %26, i64 %27, i64 %28, i64 %29) {
  %31 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %1, 0
  %32 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %31, double* %2, 1
  %33 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %32, i64 %3, 2
  %34 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %33, i64 %4, 3, 0
  %35 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %34, i64 %5, 4, 0
  %36 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %6, 0
  %37 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %36, double* %7, 1
  %38 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %37, i64 %8, 2
  %39 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %38, i64 %9, 3, 0
  %40 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %39, i64 %10, 4, 0
  %41 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %11, 0
  %42 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %41, double* %12, 1
  %43 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %42, i64 %13, 2
  %44 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %43, i64 %14, 3, 0
  %45 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %44, i64 %16, 4, 0
  %46 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %45, i64 %15, 3, 1
  %47 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %46, i64 %17, 4, 1
  %48 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %18, 0
  %49 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %48, double* %19, 1
  %50 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %49, i64 %20, 2
  %51 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %50, i64 %21, 3, 0
  %52 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %51, i64 %23, 4, 0
  %53 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %52, i64 %22, 3, 1
  %54 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %53, i64 %24, 4, 1
  %55 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %25, 0
  %56 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %55, double* %26, 1
  %57 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %56, i64 %27, 2
  %58 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %57, i64 %28, 3, 0
  %59 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %58, i64 %29, 4, 0
  %60 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %35, 1
  %61 = getelementptr double, double* %60, i64 0
  store double 1.500000e+00, double* %61, align 8
  %62 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %40, 1
  %63 = getelementptr double, double* %62, i64 0
  store double 1.200000e+00, double* %63, align 8
  br label %64

64:                                               ; preds = %100, %30
  %65 = phi i32 [ %101, %100 ], [ 0, %30 ]
  %66 = icmp slt i32 %65, %0
  br i1 %66, label %67, label %102

67:                                               ; preds = %64
  %68 = phi i32 [ %65, %64 ]
  %69 = sext i32 %68 to i64
  %70 = srem i32 %68, %0
  %71 = sitofp i32 %70 to double
  %72 = sitofp i32 %0 to double
  %73 = fdiv double %71, %72
  %74 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %59, 1
  %75 = getelementptr double, double* %74, i64 %69
  store double %73, double* %75, align 8
  br label %76

76:                                               ; preds = %79, %67
  %77 = phi i32 [ %99, %79 ], [ 0, %67 ]
  %78 = icmp slt i32 %77, %0
  br i1 %78, label %79, label %100

79:                                               ; preds = %76
  %80 = phi i32 [ %77, %76 ]
  %81 = sext i32 %80 to i64
  %82 = mul i32 %68, %80
  %83 = add i32 %82, 1
  %84 = srem i32 %83, %0
  %85 = sitofp i32 %84 to double
  %86 = fdiv double %85, %72
  %87 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %47, 1
  %88 = mul i64 %69, 2800
  %89 = add i64 %88, %81
  %90 = getelementptr double, double* %87, i64 %89
  store double %86, double* %90, align 8
  %91 = add i32 %82, 2
  %92 = srem i32 %91, %0
  %93 = sitofp i32 %92 to double
  %94 = fdiv double %93, %72
  %95 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %54, 1
  %96 = mul i64 %69, 2800
  %97 = add i64 %96, %81
  %98 = getelementptr double, double* %95, i64 %97
  store double %94, double* %98, align 8
  %99 = add i32 %80, 1
  br label %76

100:                                              ; preds = %76
  %101 = add i32 %68, 1
  br label %64

102:                                              ; preds = %64
  ret void
}

declare void @polybench_timer_start()

define private void @kernel_gesummv(i32 %0, double %1, double %2, double* %3, double* %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9, double* %10, double* %11, i64 %12, i64 %13, i64 %14, i64 %15, i64 %16, double* %17, double* %18, i64 %19, i64 %20, i64 %21, double* %22, double* %23, i64 %24, i64 %25, i64 %26, double* %27, double* %28, i64 %29, i64 %30, i64 %31) {
  %33 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %3, 0
  %34 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %33, double* %4, 1
  %35 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %34, i64 %5, 2
  %36 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %35, i64 %6, 3, 0
  %37 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %36, i64 %8, 4, 0
  %38 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %37, i64 %7, 3, 1
  %39 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %38, i64 %9, 4, 1
  %40 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %10, 0
  %41 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %40, double* %11, 1
  %42 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %41, i64 %12, 2
  %43 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %42, i64 %13, 3, 0
  %44 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %43, i64 %15, 4, 0
  %45 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %44, i64 %14, 3, 1
  %46 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %45, i64 %16, 4, 1
  %47 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %17, 0
  %48 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %47, double* %18, 1
  %49 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %48, i64 %19, 2
  %50 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %49, i64 %20, 3, 0
  %51 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %50, i64 %21, 4, 0
  %52 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %22, 0
  %53 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %52, double* %23, 1
  %54 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %53, i64 %24, 2
  %55 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %54, i64 %25, 3, 0
  %56 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %55, i64 %26, 4, 0
  %57 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %27, 0
  %58 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %57, double* %28, 1
  %59 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %58, i64 %29, 2
  %60 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %59, i64 %30, 3, 0
  %61 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %60, i64 %31, 4, 0
  %62 = sext i32 %0 to i64
  br label %63

63:                                               ; preds = %103, %32
  %64 = phi i64 [ %115, %103 ], [ 0, %32 ]
  %65 = icmp slt i64 %64, %62
  br i1 %65, label %66, label %116

66:                                               ; preds = %63
  %67 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %51, 1
  %68 = getelementptr double, double* %67, i64 %64
  store double 0.000000e+00, double* %68, align 8
  %69 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %61, 1
  %70 = getelementptr double, double* %69, i64 %64
  store double 0.000000e+00, double* %70, align 8
  br label %71

71:                                               ; preds = %74, %66
  %72 = phi i64 [ %102, %74 ], [ 0, %66 ]
  %73 = icmp slt i64 %72, %62
  br i1 %73, label %74, label %103

74:                                               ; preds = %71
  %75 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %39, 1
  %76 = mul i64 %64, 2800
  %77 = add i64 %76, %72
  %78 = getelementptr double, double* %75, i64 %77
  %79 = load double, double* %78, align 8
  %80 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %56, 1
  %81 = getelementptr double, double* %80, i64 %72
  %82 = load double, double* %81, align 8
  %83 = fmul double %79, %82
  %84 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %51, 1
  %85 = getelementptr double, double* %84, i64 %64
  %86 = load double, double* %85, align 8
  %87 = fadd double %83, %86
  %88 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %51, 1
  %89 = getelementptr double, double* %88, i64 %64
  store double %87, double* %89, align 8
  %90 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %46, 1
  %91 = mul i64 %64, 2800
  %92 = add i64 %91, %72
  %93 = getelementptr double, double* %90, i64 %92
  %94 = load double, double* %93, align 8
  %95 = fmul double %94, %82
  %96 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %61, 1
  %97 = getelementptr double, double* %96, i64 %64
  %98 = load double, double* %97, align 8
  %99 = fadd double %95, %98
  %100 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %61, 1
  %101 = getelementptr double, double* %100, i64 %64
  store double %99, double* %101, align 8
  %102 = add i64 %72, 1
  br label %71

103:                                              ; preds = %71
  %104 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %51, 1
  %105 = getelementptr double, double* %104, i64 %64
  %106 = load double, double* %105, align 8
  %107 = fmul double %1, %106
  %108 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %61, 1
  %109 = getelementptr double, double* %108, i64 %64
  %110 = load double, double* %109, align 8
  %111 = fmul double %2, %110
  %112 = fadd double %107, %111
  %113 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %61, 1
  %114 = getelementptr double, double* %113, i64 %64
  store double %112, double* %114, align 8
  %115 = add i64 %64, 1
  br label %63

116:                                              ; preds = %63
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


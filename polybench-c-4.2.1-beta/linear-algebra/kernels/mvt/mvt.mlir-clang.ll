; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@str8 = internal constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00"
@str7 = internal constant [3 x i8] c"x2\00"
@str6 = internal constant [17 x i8] c"\0Aend   dump: %s\0A\00"
@str5 = internal constant [8 x i8] c"%0.2lf \00"
@str4 = internal constant [2 x i8] c"\0A\00"
@str3 = internal constant [3 x i8] c"x1\00"
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
  %12 = call i8* @malloc(i64 mul (i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 4000))
  %13 = bitcast i8* %12 to double*
  %14 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %13, 0
  %15 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %14, double* %13, 1
  %16 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %15, i64 0, 2
  %17 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %16, i64 4000, 3, 0
  %18 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %17, i64 1, 4, 0
  %19 = call i8* @malloc(i64 mul (i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 4000))
  %20 = bitcast i8* %19 to double*
  %21 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %20, 0
  %22 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %21, double* %20, 1
  %23 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %22, i64 0, 2
  %24 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %23, i64 4000, 3, 0
  %25 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %24, i64 1, 4, 0
  %26 = call i8* @malloc(i64 mul (i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 4000))
  %27 = bitcast i8* %26 to double*
  %28 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %27, 0
  %29 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %28, double* %27, 1
  %30 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %29, i64 0, 2
  %31 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %30, i64 4000, 3, 0
  %32 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %31, i64 1, 4, 0
  %33 = call i8* @malloc(i64 mul (i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 4000))
  %34 = bitcast i8* %33 to double*
  %35 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %34, 0
  %36 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %35, double* %34, 1
  %37 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %36, i64 0, 2
  %38 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %37, i64 4000, 3, 0
  %39 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %38, i64 1, 4, 0
  %40 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 0
  %41 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 1
  %42 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 2
  %43 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 3, 0
  %44 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 4, 0
  %45 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 0
  %46 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 1
  %47 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 2
  %48 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 3, 0
  %49 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 4, 0
  %50 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %32, 0
  %51 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %32, 1
  %52 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %32, 2
  %53 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %32, 3, 0
  %54 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %32, 4, 0
  %55 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %39, 0
  %56 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %39, 1
  %57 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %39, 2
  %58 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %39, 3, 0
  %59 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %39, 4, 0
  %60 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 0
  %61 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 1
  %62 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 2
  %63 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 3, 0
  %64 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 3, 1
  %65 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 4, 0
  %66 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 4, 1
  call void @init_array(i32 4000, double* %40, double* %41, i64 %42, i64 %43, i64 %44, double* %45, double* %46, i64 %47, i64 %48, i64 %49, double* %50, double* %51, i64 %52, i64 %53, i64 %54, double* %55, double* %56, i64 %57, i64 %58, i64 %59, double* %60, double* %61, i64 %62, i64 %63, i64 %64, i64 %65, i64 %66)
  call void @polybench_timer_start()
  %67 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 0
  %68 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 1
  %69 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 2
  %70 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 3, 0
  %71 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 4, 0
  %72 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 0
  %73 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 1
  %74 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 2
  %75 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 3, 0
  %76 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 4, 0
  %77 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %32, 0
  %78 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %32, 1
  %79 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %32, 2
  %80 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %32, 3, 0
  %81 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %32, 4, 0
  %82 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %39, 0
  %83 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %39, 1
  %84 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %39, 2
  %85 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %39, 3, 0
  %86 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %39, 4, 0
  %87 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 0
  %88 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 1
  %89 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 2
  %90 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 3, 0
  %91 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 3, 1
  %92 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 4, 0
  %93 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 4, 1
  call void @kernel_mvt(i32 4000, double* %67, double* %68, i64 %69, i64 %70, i64 %71, double* %72, double* %73, i64 %74, i64 %75, i64 %76, double* %77, double* %78, i64 %79, i64 %80, i64 %81, double* %82, double* %83, i64 %84, i64 %85, i64 %86, double* %87, double* %88, i64 %89, i64 %90, i64 %91, i64 %92, i64 %93)
  call void @polybench_timer_stop()
  call void @polybench_timer_print()
  %94 = icmp sgt i32 %0, 42
  br i1 %94, label %95, label %101

95:                                               ; preds = %2
  %96 = getelementptr i8*, i8** %1, i64 0
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @strcmp(i8* %97, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @str0, i64 0, i64 0))
  %99 = trunc i32 %98 to i1
  %100 = xor i1 %99, true
  br label %102

101:                                              ; preds = %2
  br label %102

102:                                              ; preds = %95, %101
  %103 = phi i1 [ %100, %95 ], [ false, %101 ]
  br label %104

104:                                              ; preds = %102
  br i1 %103, label %105, label %116

105:                                              ; preds = %104
  %106 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 0
  %107 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 1
  %108 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 2
  %109 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 3, 0
  %110 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 4, 0
  %111 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 0
  %112 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 1
  %113 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 2
  %114 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 3, 0
  %115 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 4, 0
  call void @print_array(i32 4000, double* %106, double* %107, i64 %108, i64 %109, i64 %110, double* %111, double* %112, i64 %113, i64 %114, i64 %115)
  br label %116

116:                                              ; preds = %105, %104
  %117 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 0
  %118 = bitcast double* %117 to i8*
  call void @free(i8* %118)
  %119 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 0
  %120 = bitcast double* %119 to i8*
  call void @free(i8* %120)
  %121 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 0
  %122 = bitcast double* %121 to i8*
  call void @free(i8* %122)
  %123 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %32, 0
  %124 = bitcast double* %123 to i8*
  call void @free(i8* %124)
  %125 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %39, 0
  %126 = bitcast double* %125 to i8*
  call void @free(i8* %126)
  ret i32 0
}

define private void @init_array(i32 %0, double* %1, double* %2, i64 %3, i64 %4, i64 %5, double* %6, double* %7, i64 %8, i64 %9, i64 %10, double* %11, double* %12, i64 %13, i64 %14, i64 %15, double* %16, double* %17, i64 %18, i64 %19, i64 %20, double* %21, double* %22, i64 %23, i64 %24, i64 %25, i64 %26, i64 %27) {
  %29 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %1, 0
  %30 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %29, double* %2, 1
  %31 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %30, i64 %3, 2
  %32 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %31, i64 %4, 3, 0
  %33 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %32, i64 %5, 4, 0
  %34 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %6, 0
  %35 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %34, double* %7, 1
  %36 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %35, i64 %8, 2
  %37 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %36, i64 %9, 3, 0
  %38 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %37, i64 %10, 4, 0
  %39 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %11, 0
  %40 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %39, double* %12, 1
  %41 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %40, i64 %13, 2
  %42 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %41, i64 %14, 3, 0
  %43 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %42, i64 %15, 4, 0
  %44 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %16, 0
  %45 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %44, double* %17, 1
  %46 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %45, i64 %18, 2
  %47 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %46, i64 %19, 3, 0
  %48 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %47, i64 %20, 4, 0
  %49 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %21, 0
  %50 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %49, double* %22, 1
  %51 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %50, i64 %23, 2
  %52 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %51, i64 %24, 3, 0
  %53 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %52, i64 %26, 4, 0
  %54 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %53, i64 %25, 3, 1
  %55 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %54, i64 %27, 4, 1
  br label %56

56:                                               ; preds = %101, %28
  %57 = phi i32 [ %68, %101 ], [ 0, %28 ]
  %58 = icmp slt i32 %57, %0
  br i1 %58, label %59, label %102

59:                                               ; preds = %56
  %60 = phi i32 [ %57, %56 ]
  %61 = sext i32 %60 to i64
  %62 = srem i32 %60, %0
  %63 = sitofp i32 %62 to double
  %64 = sitofp i32 %0 to double
  %65 = fdiv double %63, %64
  %66 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %33, 1
  %67 = getelementptr double, double* %66, i64 %61
  store double %65, double* %67, align 8
  %68 = add i32 %60, 1
  %69 = srem i32 %68, %0
  %70 = sitofp i32 %69 to double
  %71 = fdiv double %70, %64
  %72 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %38, 1
  %73 = getelementptr double, double* %72, i64 %61
  store double %71, double* %73, align 8
  %74 = add i32 %60, 3
  %75 = srem i32 %74, %0
  %76 = sitofp i32 %75 to double
  %77 = fdiv double %76, %64
  %78 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %43, 1
  %79 = getelementptr double, double* %78, i64 %61
  store double %77, double* %79, align 8
  %80 = add i32 %60, 4
  %81 = srem i32 %80, %0
  %82 = sitofp i32 %81 to double
  %83 = fdiv double %82, %64
  %84 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %48, 1
  %85 = getelementptr double, double* %84, i64 %61
  store double %83, double* %85, align 8
  br label %86

86:                                               ; preds = %89, %59
  %87 = phi i32 [ %100, %89 ], [ 0, %59 ]
  %88 = icmp slt i32 %87, %0
  br i1 %88, label %89, label %101

89:                                               ; preds = %86
  %90 = phi i32 [ %87, %86 ]
  %91 = sext i32 %90 to i64
  %92 = mul i32 %60, %90
  %93 = srem i32 %92, %0
  %94 = sitofp i32 %93 to double
  %95 = fdiv double %94, %64
  %96 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %55, 1
  %97 = mul i64 %61, 4000
  %98 = add i64 %97, %91
  %99 = getelementptr double, double* %96, i64 %98
  store double %95, double* %99, align 8
  %100 = add i32 %90, 1
  br label %86

101:                                              ; preds = %86
  br label %56

102:                                              ; preds = %56
  ret void
}

declare void @polybench_timer_start()

define private void @kernel_mvt(i32 %0, double* %1, double* %2, i64 %3, i64 %4, i64 %5, double* %6, double* %7, i64 %8, i64 %9, i64 %10, double* %11, double* %12, i64 %13, i64 %14, i64 %15, double* %16, double* %17, i64 %18, i64 %19, i64 %20, double* %21, double* %22, i64 %23, i64 %24, i64 %25, i64 %26, i64 %27) {
  %29 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %1, 0
  %30 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %29, double* %2, 1
  %31 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %30, i64 %3, 2
  %32 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %31, i64 %4, 3, 0
  %33 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %32, i64 %5, 4, 0
  %34 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %6, 0
  %35 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %34, double* %7, 1
  %36 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %35, i64 %8, 2
  %37 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %36, i64 %9, 3, 0
  %38 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %37, i64 %10, 4, 0
  %39 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %11, 0
  %40 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %39, double* %12, 1
  %41 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %40, i64 %13, 2
  %42 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %41, i64 %14, 3, 0
  %43 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %42, i64 %15, 4, 0
  %44 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %16, 0
  %45 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %44, double* %17, 1
  %46 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %45, i64 %18, 2
  %47 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %46, i64 %19, 3, 0
  %48 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %47, i64 %20, 4, 0
  %49 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %21, 0
  %50 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %49, double* %22, 1
  %51 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %50, i64 %23, 2
  %52 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %51, i64 %24, 3, 0
  %53 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %52, i64 %26, 4, 0
  %54 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %53, i64 %25, 3, 1
  %55 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %54, i64 %27, 4, 1
  %56 = sext i32 %0 to i64
  br label %57

57:                                               ; preds = %81, %28
  %58 = phi i64 [ %82, %81 ], [ 0, %28 ]
  %59 = icmp slt i64 %58, %56
  br i1 %59, label %60, label %83

60:                                               ; preds = %57
  br label %61

61:                                               ; preds = %64, %60
  %62 = phi i64 [ %80, %64 ], [ 0, %60 ]
  %63 = icmp slt i64 %62, %56
  br i1 %63, label %64, label %81

64:                                               ; preds = %61
  %65 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %33, 1
  %66 = getelementptr double, double* %65, i64 %58
  %67 = load double, double* %66, align 8
  %68 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %55, 1
  %69 = mul i64 %58, 4000
  %70 = add i64 %69, %62
  %71 = getelementptr double, double* %68, i64 %70
  %72 = load double, double* %71, align 8
  %73 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %43, 1
  %74 = getelementptr double, double* %73, i64 %62
  %75 = load double, double* %74, align 8
  %76 = fmul double %72, %75
  %77 = fadd double %67, %76
  %78 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %33, 1
  %79 = getelementptr double, double* %78, i64 %58
  store double %77, double* %79, align 8
  %80 = add i64 %62, 1
  br label %61

81:                                               ; preds = %61
  %82 = add i64 %58, 1
  br label %57

83:                                               ; preds = %57
  br label %84

84:                                               ; preds = %108, %83
  %85 = phi i64 [ %109, %108 ], [ 0, %83 ]
  %86 = icmp slt i64 %85, %56
  br i1 %86, label %87, label %110

87:                                               ; preds = %84
  br label %88

88:                                               ; preds = %91, %87
  %89 = phi i64 [ %107, %91 ], [ 0, %87 ]
  %90 = icmp slt i64 %89, %56
  br i1 %90, label %91, label %108

91:                                               ; preds = %88
  %92 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %38, 1
  %93 = getelementptr double, double* %92, i64 %85
  %94 = load double, double* %93, align 8
  %95 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %55, 1
  %96 = mul i64 %89, 4000
  %97 = add i64 %96, %85
  %98 = getelementptr double, double* %95, i64 %97
  %99 = load double, double* %98, align 8
  %100 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %48, 1
  %101 = getelementptr double, double* %100, i64 %89
  %102 = load double, double* %101, align 8
  %103 = fmul double %99, %102
  %104 = fadd double %94, %103
  %105 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %38, 1
  %106 = getelementptr double, double* %105, i64 %85
  store double %104, double* %106, align 8
  %107 = add i64 %89, 1
  br label %88

108:                                              ; preds = %88
  %109 = add i64 %85, 1
  br label %84

110:                                              ; preds = %84
  ret void
}

declare void @polybench_timer_stop()

declare void @polybench_timer_print()

define private void @print_array(i32 %0, double* %1, double* %2, i64 %3, i64 %4, i64 %5, double* %6, double* %7, i64 %8, i64 %9, i64 %10) {
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
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @str1, i64 0, i64 0))
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @str2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @str3, i64 0, i64 0))
  br label %26

26:                                               ; preds = %37, %11
  %27 = phi i32 [ %43, %37 ], [ 0, %11 ]
  %28 = icmp slt i32 %27, %0
  br i1 %28, label %29, label %44

29:                                               ; preds = %26
  %30 = phi i32 [ %27, %26 ]
  %31 = sext i32 %30 to i64
  %32 = srem i32 %30, 20
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str4, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %29
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %39 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %16, 1
  %40 = getelementptr double, double* %39, i64 %31
  %41 = load double, double* %40, align 8
  %42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @str5, i64 0, i64 0), double %41)
  %43 = add i32 %30, 1
  br label %26

44:                                               ; preds = %26
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @str6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @str3, i64 0, i64 0))
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @str2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @str7, i64 0, i64 0))
  br label %49

49:                                               ; preds = %60, %44
  %50 = phi i32 [ %66, %60 ], [ 0, %44 ]
  %51 = icmp slt i32 %50, %0
  br i1 %51, label %52, label %67

52:                                               ; preds = %49
  %53 = phi i32 [ %50, %49 ]
  %54 = sext i32 %53 to i64
  %55 = srem i32 %53, 20
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str4, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %52
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %62 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %21, 1
  %63 = getelementptr double, double* %62, i64 %54
  %64 = load double, double* %63, align 8
  %65 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @str5, i64 0, i64 0), double %64)
  %66 = add i32 %53, 1
  br label %49

67:                                               ; preds = %49
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %68, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @str6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @str7, i64 0, i64 0))
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %71 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %70, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @str8, i64 0, i64 0))
  ret void
}


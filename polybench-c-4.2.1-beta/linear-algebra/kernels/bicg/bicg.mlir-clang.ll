; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@str8 = internal constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00"
@str7 = internal constant [2 x i8] c"q\00"
@str6 = internal constant [17 x i8] c"\0Aend   dump: %s\0A\00"
@str5 = internal constant [8 x i8] c"%0.2lf \00"
@str4 = internal constant [2 x i8] c"\0A\00"
@str3 = internal constant [2 x i8] c"s\00"
@str2 = internal constant [15 x i8] c"begin dump: %s\00"
@str1 = internal constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00"
@stderr = external global %struct._IO_FILE*
@str0 = internal constant [1 x i8] zeroinitializer

declare i8* @malloc(i64)

declare void @free(i8*)

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...)

declare i32 @strcmp(i8*, i8*)

define i32 @main(i32 %0, i8** %1) {
  %3 = call i8* @malloc(i64 mul (i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 3960000))
  %4 = bitcast i8* %3 to double*
  %5 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %4, 0
  %6 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %5, double* %4, 1
  %7 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %6, i64 0, 2
  %8 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %7, i64 2200, 3, 0
  %9 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %8, i64 1800, 3, 1
  %10 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %9, i64 1800, 4, 0
  %11 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %10, i64 1, 4, 1
  %12 = call i8* @malloc(i64 mul (i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 1800))
  %13 = bitcast i8* %12 to double*
  %14 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %13, 0
  %15 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %14, double* %13, 1
  %16 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %15, i64 0, 2
  %17 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %16, i64 1800, 3, 0
  %18 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %17, i64 1, 4, 0
  %19 = call i8* @malloc(i64 mul (i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 2200))
  %20 = bitcast i8* %19 to double*
  %21 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %20, 0
  %22 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %21, double* %20, 1
  %23 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %22, i64 0, 2
  %24 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %23, i64 2200, 3, 0
  %25 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %24, i64 1, 4, 0
  %26 = call i8* @malloc(i64 mul (i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 1800))
  %27 = bitcast i8* %26 to double*
  %28 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %27, 0
  %29 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %28, double* %27, 1
  %30 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %29, i64 0, 2
  %31 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %30, i64 1800, 3, 0
  %32 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %31, i64 1, 4, 0
  %33 = call i8* @malloc(i64 mul (i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 2200))
  %34 = bitcast i8* %33 to double*
  %35 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %34, 0
  %36 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %35, double* %34, 1
  %37 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %36, i64 0, 2
  %38 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %37, i64 2200, 3, 0
  %39 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %38, i64 1, 4, 0
  %40 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 0
  %41 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 1
  %42 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 2
  %43 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 3, 0
  %44 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 3, 1
  %45 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 4, 0
  %46 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 4, 1
  %47 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %39, 0
  %48 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %39, 1
  %49 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %39, 2
  %50 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %39, 3, 0
  %51 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %39, 4, 0
  %52 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %32, 0
  %53 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %32, 1
  %54 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %32, 2
  %55 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %32, 3, 0
  %56 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %32, 4, 0
  call void @init_array(i32 1800, i32 2200, double* %40, double* %41, i64 %42, i64 %43, i64 %44, i64 %45, i64 %46, double* %47, double* %48, i64 %49, i64 %50, i64 %51, double* %52, double* %53, i64 %54, i64 %55, i64 %56)
  call void @polybench_timer_start()
  %57 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 0
  %58 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 1
  %59 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 2
  %60 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 3, 0
  %61 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 3, 1
  %62 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 4, 0
  %63 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 4, 1
  %64 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 0
  %65 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 1
  %66 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 2
  %67 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 3, 0
  %68 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 4, 0
  %69 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 0
  %70 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 1
  %71 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 2
  %72 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 3, 0
  %73 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 4, 0
  %74 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %32, 0
  %75 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %32, 1
  %76 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %32, 2
  %77 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %32, 3, 0
  %78 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %32, 4, 0
  %79 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %39, 0
  %80 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %39, 1
  %81 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %39, 2
  %82 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %39, 3, 0
  %83 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %39, 4, 0
  call void @kernel_bicg(i32 1800, i32 2200, double* %57, double* %58, i64 %59, i64 %60, i64 %61, i64 %62, i64 %63, double* %64, double* %65, i64 %66, i64 %67, i64 %68, double* %69, double* %70, i64 %71, i64 %72, i64 %73, double* %74, double* %75, i64 %76, i64 %77, i64 %78, double* %79, double* %80, i64 %81, i64 %82, i64 %83)
  call void @polybench_timer_stop()
  call void @polybench_timer_print()
  %84 = icmp sgt i32 %0, 42
  br i1 %84, label %85, label %91

85:                                               ; preds = %2
  %86 = getelementptr i8*, i8** %1, i64 0
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @strcmp(i8* %87, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @str0, i64 0, i64 0))
  %89 = trunc i32 %88 to i1
  %90 = xor i1 %89, true
  br label %92

91:                                               ; preds = %2
  br label %92

92:                                               ; preds = %85, %91
  %93 = phi i1 [ %90, %85 ], [ false, %91 ]
  br label %94

94:                                               ; preds = %92
  br i1 %93, label %95, label %106

95:                                               ; preds = %94
  %96 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 0
  %97 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 1
  %98 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 2
  %99 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 3, 0
  %100 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 4, 0
  %101 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 0
  %102 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 1
  %103 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 2
  %104 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 3, 0
  %105 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 4, 0
  call void @print_array(i32 1800, i32 2200, double* %96, double* %97, i64 %98, i64 %99, i64 %100, double* %101, double* %102, i64 %103, i64 %104, i64 %105)
  br label %106

106:                                              ; preds = %95, %94
  %107 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 0
  %108 = bitcast double* %107 to i8*
  call void @free(i8* %108)
  %109 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 0
  %110 = bitcast double* %109 to i8*
  call void @free(i8* %110)
  %111 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 0
  %112 = bitcast double* %111 to i8*
  call void @free(i8* %112)
  %113 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %32, 0
  %114 = bitcast double* %113 to i8*
  call void @free(i8* %114)
  %115 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %39, 0
  %116 = bitcast double* %115 to i8*
  call void @free(i8* %116)
  ret i32 0
}

define private void @init_array(i32 %0, i32 %1, double* %2, double* %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, double* %9, double* %10, i64 %11, i64 %12, i64 %13, double* %14, double* %15, i64 %16, i64 %17, i64 %18) {
  %20 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %2, 0
  %21 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, double* %3, 1
  %22 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %21, i64 %4, 2
  %23 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %22, i64 %5, 3, 0
  %24 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, i64 %7, 4, 0
  %25 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %24, i64 %6, 3, 1
  %26 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %25, i64 %8, 4, 1
  %27 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %9, 0
  %28 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %27, double* %10, 1
  %29 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %28, i64 %11, 2
  %30 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %29, i64 %12, 3, 0
  %31 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %30, i64 %13, 4, 0
  %32 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %14, 0
  %33 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %32, double* %15, 1
  %34 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %33, i64 %16, 2
  %35 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %34, i64 %17, 3, 0
  %36 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %35, i64 %18, 4, 0
  br label %37

37:                                               ; preds = %40, %19
  %38 = phi i32 [ %50, %40 ], [ 0, %19 ]
  %39 = icmp slt i32 %38, %0
  br i1 %39, label %40, label %51

40:                                               ; preds = %37
  %41 = phi i32 [ 0, %37 ]
  %42 = phi i32 [ %38, %37 ]
  %43 = sext i32 %42 to i64
  %44 = srem i32 %42, %0
  %45 = sitofp i32 %44 to double
  %46 = sitofp i32 %0 to double
  %47 = fdiv double %45, %46
  %48 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %36, 1
  %49 = getelementptr double, double* %48, i64 %43
  store double %47, double* %49, align 8
  %50 = add i32 %42, 1
  br label %37

51:                                               ; preds = %37
  br label %52

52:                                               ; preds = %81, %51
  %53 = phi i32 [ %82, %81 ], [ 0, %51 ]
  %54 = icmp slt i32 %53, %1
  br i1 %54, label %55, label %83

55:                                               ; preds = %52
  %56 = phi i32 [ %53, %52 ]
  %57 = sext i32 %56 to i64
  %58 = srem i32 %56, %1
  %59 = sitofp i32 %58 to double
  %60 = sitofp i32 %1 to double
  %61 = fdiv double %59, %60
  %62 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %31, 1
  %63 = getelementptr double, double* %62, i64 %57
  store double %61, double* %63, align 8
  %64 = sext i32 %0 to i64
  br label %65

65:                                               ; preds = %69, %55
  %66 = phi i64 [ %80, %69 ], [ 0, %55 ]
  %67 = phi i32 [ %71, %69 ], [ 0, %55 ]
  %68 = icmp slt i64 %66, %64
  br i1 %68, label %69, label %81

69:                                               ; preds = %65
  %70 = sext i32 %67 to i64
  %71 = add i32 %67, 1
  %72 = mul i32 %56, %71
  %73 = srem i32 %72, %1
  %74 = sitofp i32 %73 to double
  %75 = fdiv double %74, %60
  %76 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %26, 1
  %77 = mul i64 %57, 1800
  %78 = add i64 %77, %70
  %79 = getelementptr double, double* %76, i64 %78
  store double %75, double* %79, align 8
  %80 = add i64 %66, 1
  br label %65

81:                                               ; preds = %65
  %82 = add i32 %56, 1
  br label %52

83:                                               ; preds = %52
  ret void
}

declare void @polybench_timer_start()

define private void @kernel_bicg(i32 %0, i32 %1, double* %2, double* %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, double* %9, double* %10, i64 %11, i64 %12, i64 %13, double* %14, double* %15, i64 %16, i64 %17, i64 %18, double* %19, double* %20, i64 %21, i64 %22, i64 %23, double* %24, double* %25, i64 %26, i64 %27, i64 %28) {
  %30 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %2, 0
  %31 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %30, double* %3, 1
  %32 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %31, i64 %4, 2
  %33 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, i64 %5, 3, 0
  %34 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %33, i64 %7, 4, 0
  %35 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %34, i64 %6, 3, 1
  %36 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %35, i64 %8, 4, 1
  %37 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %9, 0
  %38 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %37, double* %10, 1
  %39 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %38, i64 %11, 2
  %40 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %39, i64 %12, 3, 0
  %41 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %40, i64 %13, 4, 0
  %42 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %14, 0
  %43 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %42, double* %15, 1
  %44 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %43, i64 %16, 2
  %45 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %44, i64 %17, 3, 0
  %46 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %45, i64 %18, 4, 0
  %47 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %19, 0
  %48 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %47, double* %20, 1
  %49 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %48, i64 %21, 2
  %50 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %49, i64 %22, 3, 0
  %51 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %50, i64 %23, 4, 0
  %52 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %24, 0
  %53 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %52, double* %25, 1
  %54 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %53, i64 %26, 2
  %55 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %54, i64 %27, 3, 0
  %56 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %55, i64 %28, 4, 0
  %57 = sext i32 %0 to i64
  br label %58

58:                                               ; preds = %61, %29
  %59 = phi i64 [ %64, %61 ], [ 0, %29 ]
  %60 = icmp slt i64 %59, %57
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %41, 1
  %63 = getelementptr double, double* %62, i64 %59
  store double 0.000000e+00, double* %63, align 8
  %64 = add i64 %59, 1
  br label %58

65:                                               ; preds = %58
  %66 = sext i32 %1 to i64
  br label %67

67:                                               ; preds = %103, %65
  %68 = phi i64 [ %104, %103 ], [ 0, %65 ]
  %69 = icmp slt i64 %68, %66
  br i1 %69, label %70, label %105

70:                                               ; preds = %67
  %71 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %46, 1
  %72 = getelementptr double, double* %71, i64 %68
  store double 0.000000e+00, double* %72, align 8
  br label %73

73:                                               ; preds = %76, %70
  %74 = phi i64 [ %102, %76 ], [ 0, %70 ]
  %75 = icmp slt i64 %74, %57
  br i1 %75, label %76, label %103

76:                                               ; preds = %73
  %77 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %41, 1
  %78 = getelementptr double, double* %77, i64 %74
  %79 = load double, double* %78, align 8
  %80 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %56, 1
  %81 = getelementptr double, double* %80, i64 %68
  %82 = load double, double* %81, align 8
  %83 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %36, 1
  %84 = mul i64 %68, 1800
  %85 = add i64 %84, %74
  %86 = getelementptr double, double* %83, i64 %85
  %87 = load double, double* %86, align 8
  %88 = fmul double %82, %87
  %89 = fadd double %79, %88
  %90 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %41, 1
  %91 = getelementptr double, double* %90, i64 %74
  store double %89, double* %91, align 8
  %92 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %46, 1
  %93 = getelementptr double, double* %92, i64 %68
  %94 = load double, double* %93, align 8
  %95 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %51, 1
  %96 = getelementptr double, double* %95, i64 %74
  %97 = load double, double* %96, align 8
  %98 = fmul double %87, %97
  %99 = fadd double %94, %98
  %100 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %46, 1
  %101 = getelementptr double, double* %100, i64 %68
  store double %99, double* %101, align 8
  %102 = add i64 %74, 1
  br label %73

103:                                              ; preds = %73
  %104 = add i64 %68, 1
  br label %67

105:                                              ; preds = %67
  ret void
}

declare void @polybench_timer_stop()

declare void @polybench_timer_print()

define private void @print_array(i32 %0, i32 %1, double* %2, double* %3, i64 %4, i64 %5, i64 %6, double* %7, double* %8, i64 %9, i64 %10, i64 %11) {
  %13 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %2, 0
  %14 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %13, double* %3, 1
  %15 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %14, i64 %4, 2
  %16 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %15, i64 %5, 3, 0
  %17 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %16, i64 %6, 4, 0
  %18 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %7, 0
  %19 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, double* %8, 1
  %20 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %19, i64 %9, 2
  %21 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %20, i64 %10, 3, 0
  %22 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %21, i64 %11, 4, 0
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @str1, i64 0, i64 0))
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @str2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str3, i64 0, i64 0))
  br label %27

27:                                               ; preds = %38, %12
  %28 = phi i32 [ %44, %38 ], [ 0, %12 ]
  %29 = icmp slt i32 %28, %0
  br i1 %29, label %30, label %45

30:                                               ; preds = %27
  %31 = phi i32 [ %28, %27 ]
  %32 = sext i32 %31 to i64
  %33 = srem i32 %31, 20
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str4, i64 0, i64 0))
  br label %38

38:                                               ; preds = %35, %30
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %40 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %17, 1
  %41 = getelementptr double, double* %40, i64 %32
  %42 = load double, double* %41, align 8
  %43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @str5, i64 0, i64 0), double %42)
  %44 = add i32 %31, 1
  br label %27

45:                                               ; preds = %27
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @str6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str3, i64 0, i64 0))
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @str2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str7, i64 0, i64 0))
  br label %50

50:                                               ; preds = %61, %45
  %51 = phi i32 [ %67, %61 ], [ 0, %45 ]
  %52 = icmp slt i32 %51, %1
  br i1 %52, label %53, label %68

53:                                               ; preds = %50
  %54 = phi i32 [ %51, %50 ]
  %55 = sext i32 %54 to i64
  %56 = srem i32 %54, 20
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str4, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %53
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %63 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %22, 1
  %64 = getelementptr double, double* %63, i64 %55
  %65 = load double, double* %64, align 8
  %66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @str5, i64 0, i64 0), double %65)
  %67 = add i32 %54, 1
  br label %50

68:                                               ; preds = %50
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %69, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @str6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str7, i64 0, i64 0))
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %72 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @str8, i64 0, i64 0))
  ret void
}


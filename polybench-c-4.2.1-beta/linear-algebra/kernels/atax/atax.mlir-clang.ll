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
  %3 = call i8* @malloc(i64 mul (i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 3960000))
  %4 = bitcast i8* %3 to double*
  %5 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %4, 0
  %6 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %5, double* %4, 1
  %7 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %6, i64 0, 2
  %8 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %7, i64 1800, 3, 0
  %9 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %8, i64 2200, 3, 1
  %10 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %9, i64 2200, 4, 0
  %11 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %10, i64 1, 4, 1
  %12 = call i8* @malloc(i64 mul (i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 2200))
  %13 = bitcast i8* %12 to double*
  %14 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %13, 0
  %15 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %14, double* %13, 1
  %16 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %15, i64 0, 2
  %17 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %16, i64 2200, 3, 0
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
  %33 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 0
  %34 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 1
  %35 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 2
  %36 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 3, 0
  %37 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 3, 1
  %38 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 4, 0
  %39 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 4, 1
  %40 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 0
  %41 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 1
  %42 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 2
  %43 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 3, 0
  %44 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 4, 0
  call void @init_array(i32 1800, i32 2200, double* %33, double* %34, i64 %35, i64 %36, i64 %37, i64 %38, i64 %39, double* %40, double* %41, i64 %42, i64 %43, i64 %44)
  call void @polybench_timer_start()
  %45 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 0
  %46 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 1
  %47 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 2
  %48 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 3, 0
  %49 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 3, 1
  %50 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 4, 0
  %51 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 4, 1
  %52 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 0
  %53 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 1
  %54 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 2
  %55 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 3, 0
  %56 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 4, 0
  %57 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 0
  %58 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 1
  %59 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 2
  %60 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 3, 0
  %61 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 4, 0
  %62 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %32, 0
  %63 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %32, 1
  %64 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %32, 2
  %65 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %32, 3, 0
  %66 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %32, 4, 0
  call void @kernel_atax(i32 1800, i32 2200, double* %45, double* %46, i64 %47, i64 %48, i64 %49, i64 %50, i64 %51, double* %52, double* %53, i64 %54, i64 %55, i64 %56, double* %57, double* %58, i64 %59, i64 %60, i64 %61, double* %62, double* %63, i64 %64, i64 %65, i64 %66)
  call void @polybench_timer_stop()
  call void @polybench_timer_print()
  %67 = icmp sgt i32 %0, 42
  br i1 %67, label %68, label %74

68:                                               ; preds = %2
  %69 = getelementptr i8*, i8** %1, i64 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @strcmp(i8* %70, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @str0, i64 0, i64 0))
  %72 = trunc i32 %71 to i1
  %73 = xor i1 %72, true
  br label %75

74:                                               ; preds = %2
  br label %75

75:                                               ; preds = %68, %74
  %76 = phi i1 [ %73, %68 ], [ false, %74 ]
  br label %77

77:                                               ; preds = %75
  br i1 %76, label %78, label %84

78:                                               ; preds = %77
  %79 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 0
  %80 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 1
  %81 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 2
  %82 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 3, 0
  %83 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 4, 0
  call void @print_array(i32 2200, double* %79, double* %80, i64 %81, i64 %82, i64 %83)
  br label %84

84:                                               ; preds = %78, %77
  %85 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 0
  %86 = bitcast double* %85 to i8*
  call void @free(i8* %86)
  %87 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 0
  %88 = bitcast double* %87 to i8*
  call void @free(i8* %88)
  %89 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 0
  %90 = bitcast double* %89 to i8*
  call void @free(i8* %90)
  %91 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %32, 0
  %92 = bitcast double* %91 to i8*
  call void @free(i8* %92)
  ret i32 0
}

define private void @init_array(i32 %0, i32 %1, double* %2, double* %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, double* %9, double* %10, i64 %11, i64 %12, i64 %13) {
  %15 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %2, 0
  %16 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %15, double* %3, 1
  %17 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %16, i64 %4, 2
  %18 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %17, i64 %5, 3, 0
  %19 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %18, i64 %7, 4, 0
  %20 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %19, i64 %6, 3, 1
  %21 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, i64 %8, 4, 1
  %22 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %9, 0
  %23 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %22, double* %10, 1
  %24 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %23, i64 %11, 2
  %25 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %24, i64 %12, 3, 0
  %26 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, i64 %13, 4, 0
  %27 = sitofp i32 %1 to double
  %28 = sext i32 %1 to i64
  br label %29

29:                                               ; preds = %33, %14
  %30 = phi i64 [ %41, %33 ], [ 0, %14 ]
  %31 = phi i32 [ %40, %33 ], [ 0, %14 ]
  %32 = icmp slt i64 %30, %28
  br i1 %32, label %33, label %42

33:                                               ; preds = %29
  %34 = sext i32 %31 to i64
  %35 = sitofp i32 %31 to double
  %36 = fdiv double %35, %27
  %37 = fadd double 1.000000e+00, %36
  %38 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %26, 1
  %39 = getelementptr double, double* %38, i64 %34
  store double %37, double* %39, align 8
  %40 = add i32 %31, 1
  %41 = add i64 %30, 1
  br label %29

42:                                               ; preds = %29
  br label %43

43:                                               ; preds = %66, %42
  %44 = phi i32 [ %67, %66 ], [ 0, %42 ]
  %45 = icmp slt i32 %44, %0
  br i1 %45, label %46, label %68

46:                                               ; preds = %43
  %47 = phi i32 [ %44, %43 ]
  %48 = sext i32 %47 to i64
  br label %49

49:                                               ; preds = %52, %46
  %50 = phi i32 [ %65, %52 ], [ 0, %46 ]
  %51 = icmp slt i32 %50, %1
  br i1 %51, label %52, label %66

52:                                               ; preds = %49
  %53 = phi i32 [ %50, %49 ]
  %54 = sext i32 %53 to i64
  %55 = add i32 %47, %53
  %56 = srem i32 %55, %1
  %57 = sitofp i32 %56 to double
  %58 = mul i32 %0, 5
  %59 = sitofp i32 %58 to double
  %60 = fdiv double %57, %59
  %61 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %21, 1
  %62 = mul i64 %48, 2200
  %63 = add i64 %62, %54
  %64 = getelementptr double, double* %61, i64 %63
  store double %60, double* %64, align 8
  %65 = add i32 %53, 1
  br label %49

66:                                               ; preds = %49
  %67 = add i32 %47, 1
  br label %43

68:                                               ; preds = %43
  ret void
}

declare void @polybench_timer_start()

define private void @kernel_atax(i32 %0, i32 %1, double* %2, double* %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, double* %9, double* %10, i64 %11, i64 %12, i64 %13, double* %14, double* %15, i64 %16, i64 %17, i64 %18, double* %19, double* %20, i64 %21, i64 %22, i64 %23) {
  %25 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %2, 0
  %26 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %25, double* %3, 1
  %27 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %26, i64 %4, 2
  %28 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %27, i64 %5, 3, 0
  %29 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %28, i64 %7, 4, 0
  %30 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, i64 %6, 3, 1
  %31 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %30, i64 %8, 4, 1
  %32 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %9, 0
  %33 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %32, double* %10, 1
  %34 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %33, i64 %11, 2
  %35 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %34, i64 %12, 3, 0
  %36 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %35, i64 %13, 4, 0
  %37 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %14, 0
  %38 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %37, double* %15, 1
  %39 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %38, i64 %16, 2
  %40 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %39, i64 %17, 3, 0
  %41 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %40, i64 %18, 4, 0
  %42 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %19, 0
  %43 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %42, double* %20, 1
  %44 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %43, i64 %21, 2
  %45 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %44, i64 %22, 3, 0
  %46 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %45, i64 %23, 4, 0
  %47 = sext i32 %1 to i64
  br label %48

48:                                               ; preds = %51, %24
  %49 = phi i64 [ %54, %51 ], [ 0, %24 ]
  %50 = icmp slt i64 %49, %47
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %41, 1
  %53 = getelementptr double, double* %52, i64 %49
  store double 0.000000e+00, double* %53, align 8
  %54 = add i64 %49, 1
  br label %48

55:                                               ; preds = %48
  %56 = sext i32 %0 to i64
  br label %57

57:                                               ; preds = %104, %55
  %58 = phi i64 [ %105, %104 ], [ 0, %55 ]
  %59 = icmp slt i64 %58, %56
  br i1 %59, label %60, label %106

60:                                               ; preds = %57
  %61 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %46, 1
  %62 = getelementptr double, double* %61, i64 %58
  store double 0.000000e+00, double* %62, align 8
  br label %63

63:                                               ; preds = %66, %60
  %64 = phi i64 [ %82, %66 ], [ 0, %60 ]
  %65 = icmp slt i64 %64, %47
  br i1 %65, label %66, label %83

66:                                               ; preds = %63
  %67 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %46, 1
  %68 = getelementptr double, double* %67, i64 %58
  %69 = load double, double* %68, align 8
  %70 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %31, 1
  %71 = mul i64 %58, 2200
  %72 = add i64 %71, %64
  %73 = getelementptr double, double* %70, i64 %72
  %74 = load double, double* %73, align 8
  %75 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %36, 1
  %76 = getelementptr double, double* %75, i64 %64
  %77 = load double, double* %76, align 8
  %78 = fmul double %74, %77
  %79 = fadd double %69, %78
  %80 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %46, 1
  %81 = getelementptr double, double* %80, i64 %58
  store double %79, double* %81, align 8
  %82 = add i64 %64, 1
  br label %63

83:                                               ; preds = %63
  br label %84

84:                                               ; preds = %87, %83
  %85 = phi i64 [ %103, %87 ], [ 0, %83 ]
  %86 = icmp slt i64 %85, %47
  br i1 %86, label %87, label %104

87:                                               ; preds = %84
  %88 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %41, 1
  %89 = getelementptr double, double* %88, i64 %85
  %90 = load double, double* %89, align 8
  %91 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %31, 1
  %92 = mul i64 %58, 2200
  %93 = add i64 %92, %85
  %94 = getelementptr double, double* %91, i64 %93
  %95 = load double, double* %94, align 8
  %96 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %46, 1
  %97 = getelementptr double, double* %96, i64 %58
  %98 = load double, double* %97, align 8
  %99 = fmul double %95, %98
  %100 = fadd double %90, %99
  %101 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %41, 1
  %102 = getelementptr double, double* %101, i64 %85
  store double %100, double* %102, align 8
  %103 = add i64 %85, 1
  br label %84

104:                                              ; preds = %84
  %105 = add i64 %58, 1
  br label %57

106:                                              ; preds = %57
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


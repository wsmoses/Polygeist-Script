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
@str3 = internal constant [2 x i8] c"B\00"
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
  %9 = call i8* @malloc(i64 mul (i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 4000000))
  %10 = bitcast i8* %9 to double*
  %11 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %10, 0
  %12 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, double* %10, 1
  %13 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %12, i64 0, 2
  %14 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %13, i64 2000, 3, 0
  %15 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %14, i64 2000, 3, 1
  %16 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %15, i64 2000, 4, 0
  %17 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %16, i64 1, 4, 1
  %18 = call i8* @malloc(i64 mul (i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 5200000))
  %19 = bitcast i8* %18 to double*
  %20 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %19, 0
  %21 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, double* %19, 1
  %22 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %21, i64 0, 2
  %23 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %22, i64 2000, 3, 0
  %24 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, i64 2600, 3, 1
  %25 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %24, i64 2600, 4, 0
  %26 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %25, i64 1, 4, 1
  %27 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %8, 0
  %28 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %8, 1
  %29 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %8, 2
  %30 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %8, 3, 0
  %31 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %8, 4, 0
  %32 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %17, 0
  %33 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %17, 1
  %34 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %17, 2
  %35 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %17, 3, 0
  %36 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %17, 3, 1
  %37 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %17, 4, 0
  %38 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %17, 4, 1
  %39 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %26, 0
  %40 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %26, 1
  %41 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %26, 2
  %42 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %26, 3, 0
  %43 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %26, 3, 1
  %44 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %26, 4, 0
  %45 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %26, 4, 1
  call void @init_array(i32 2000, i32 2600, double* %27, double* %28, i64 %29, i64 %30, i64 %31, double* %32, double* %33, i64 %34, i64 %35, i64 %36, i64 %37, i64 %38, double* %39, double* %40, i64 %41, i64 %42, i64 %43, i64 %44, i64 %45)
  call void @polybench_timer_start()
  %46 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %8, 1
  %47 = getelementptr double, double* %46, i64 0
  %48 = load double, double* %47, align 8
  %49 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %17, 0
  %50 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %17, 1
  %51 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %17, 2
  %52 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %17, 3, 0
  %53 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %17, 3, 1
  %54 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %17, 4, 0
  %55 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %17, 4, 1
  %56 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %26, 0
  %57 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %26, 1
  %58 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %26, 2
  %59 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %26, 3, 0
  %60 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %26, 3, 1
  %61 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %26, 4, 0
  %62 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %26, 4, 1
  call void @kernel_trmm(i32 2000, i32 2600, double %48, double* %49, double* %50, i64 %51, i64 %52, i64 %53, i64 %54, i64 %55, double* %56, double* %57, i64 %58, i64 %59, i64 %60, i64 %61, i64 %62)
  call void @polybench_timer_stop()
  call void @polybench_timer_print()
  %63 = icmp sgt i32 %0, 42
  br i1 %63, label %64, label %70

64:                                               ; preds = %2
  %65 = getelementptr i8*, i8** %1, i64 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @strcmp(i8* %66, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @str0, i64 0, i64 0))
  %68 = trunc i32 %67 to i1
  %69 = xor i1 %68, true
  br label %71

70:                                               ; preds = %2
  br label %71

71:                                               ; preds = %64, %70
  %72 = phi i1 [ %69, %64 ], [ false, %70 ]
  br label %73

73:                                               ; preds = %71
  br i1 %72, label %74, label %82

74:                                               ; preds = %73
  %75 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %26, 0
  %76 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %26, 1
  %77 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %26, 2
  %78 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %26, 3, 0
  %79 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %26, 3, 1
  %80 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %26, 4, 0
  %81 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %26, 4, 1
  call void @print_array(i32 2000, i32 2600, double* %75, double* %76, i64 %77, i64 %78, i64 %79, i64 %80, i64 %81)
  br label %82

82:                                               ; preds = %74, %73
  %83 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %17, 0
  %84 = bitcast double* %83 to i8*
  call void @free(i8* %84)
  %85 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %26, 0
  %86 = bitcast double* %85 to i8*
  call void @free(i8* %86)
  ret i32 0
}

define private void @init_array(i32 %0, i32 %1, double* %2, double* %3, i64 %4, i64 %5, i64 %6, double* %7, double* %8, i64 %9, i64 %10, i64 %11, i64 %12, i64 %13, double* %14, double* %15, i64 %16, i64 %17, i64 %18, i64 %19, i64 %20) {
  %22 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %2, 0
  %23 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %22, double* %3, 1
  %24 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %23, i64 %4, 2
  %25 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %24, i64 %5, 3, 0
  %26 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, i64 %6, 4, 0
  %27 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %7, 0
  %28 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %27, double* %8, 1
  %29 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %28, i64 %9, 2
  %30 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, i64 %10, 3, 0
  %31 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %30, i64 %12, 4, 0
  %32 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %31, i64 %11, 3, 1
  %33 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, i64 %13, 4, 1
  %34 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %14, 0
  %35 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %34, double* %15, 1
  %36 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %35, i64 %16, 2
  %37 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %36, i64 %17, 3, 0
  %38 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %37, i64 %19, 4, 0
  %39 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %38, i64 %18, 3, 1
  %40 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %39, i64 %20, 4, 1
  %41 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %26, 1
  %42 = getelementptr double, double* %41, i64 0
  store double 1.500000e+00, double* %42, align 8
  br label %43

43:                                               ; preds = %87, %21
  %44 = phi i32 [ %88, %87 ], [ 0, %21 ]
  %45 = icmp slt i32 %44, %0
  br i1 %45, label %46, label %89

46:                                               ; preds = %43
  %47 = phi i32 [ %44, %43 ]
  %48 = sext i32 %47 to i64
  br label %49

49:                                               ; preds = %52, %46
  %50 = phi i32 [ %64, %52 ], [ 0, %46 ]
  %51 = icmp slt i32 %50, %47
  br i1 %51, label %52, label %65

52:                                               ; preds = %49
  %53 = phi i32 [ %50, %49 ]
  %54 = sext i32 %53 to i64
  %55 = add i32 %47, %53
  %56 = srem i32 %55, %0
  %57 = sitofp i32 %56 to double
  %58 = sitofp i32 %0 to double
  %59 = fdiv double %57, %58
  %60 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %33, 1
  %61 = mul i64 %48, 2000
  %62 = add i64 %61, %54
  %63 = getelementptr double, double* %60, i64 %62
  store double %59, double* %63, align 8
  %64 = add i32 %53, 1
  br label %49

65:                                               ; preds = %49
  %66 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %33, 1
  %67 = mul i64 %48, 2000
  %68 = add i64 %67, %48
  %69 = getelementptr double, double* %66, i64 %68
  store double 1.000000e+00, double* %69, align 8
  br label %70

70:                                               ; preds = %73, %65
  %71 = phi i32 [ %86, %73 ], [ 0, %65 ]
  %72 = icmp slt i32 %71, %1
  br i1 %72, label %73, label %87

73:                                               ; preds = %70
  %74 = phi i32 [ %71, %70 ]
  %75 = sext i32 %74 to i64
  %76 = sub i32 %47, %74
  %77 = add i32 %1, %76
  %78 = srem i32 %77, %1
  %79 = sitofp i32 %78 to double
  %80 = sitofp i32 %1 to double
  %81 = fdiv double %79, %80
  %82 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %40, 1
  %83 = mul i64 %48, 2600
  %84 = add i64 %83, %75
  %85 = getelementptr double, double* %82, i64 %84
  store double %81, double* %85, align 8
  %86 = add i32 %74, 1
  br label %70

87:                                               ; preds = %70
  %88 = add i32 %47, 1
  br label %43

89:                                               ; preds = %43
  ret void
}

declare void @polybench_timer_start()

define private void @kernel_trmm(i32 %0, i32 %1, double %2, double* %3, double* %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9, double* %10, double* %11, i64 %12, i64 %13, i64 %14, i64 %15, i64 %16) {
  %18 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %3, 0
  %19 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %18, double* %4, 1
  %20 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %19, i64 %5, 2
  %21 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, i64 %6, 3, 0
  %22 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %21, i64 %8, 4, 0
  %23 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %22, i64 %7, 3, 1
  %24 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, i64 %9, 4, 1
  %25 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %10, 0
  %26 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %25, double* %11, 1
  %27 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %26, i64 %12, 2
  %28 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %27, i64 %13, 3, 0
  %29 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %28, i64 %15, 4, 0
  %30 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, i64 %14, 3, 1
  %31 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %30, i64 %16, 4, 1
  %32 = sext i32 %0 to i64
  %33 = sext i32 %1 to i64
  br label %34

34:                                               ; preds = %81, %17
  %35 = phi i64 [ %82, %81 ], [ 0, %17 ]
  %36 = icmp slt i64 %35, %32
  br i1 %36, label %37, label %83

37:                                               ; preds = %34
  br label %38

38:                                               ; preds = %69, %37
  %39 = phi i64 [ %80, %69 ], [ 0, %37 ]
  %40 = icmp slt i64 %39, %33
  br i1 %40, label %41, label %81

41:                                               ; preds = %38
  %42 = add i64 %35, 1
  br label %43

43:                                               ; preds = %46, %41
  %44 = phi i64 [ %68, %46 ], [ %42, %41 ]
  %45 = icmp slt i64 %44, %32
  br i1 %45, label %46, label %69

46:                                               ; preds = %43
  %47 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %24, 1
  %48 = mul i64 %44, 2000
  %49 = add i64 %48, %35
  %50 = getelementptr double, double* %47, i64 %49
  %51 = load double, double* %50, align 8
  %52 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %31, 1
  %53 = mul i64 %44, 2600
  %54 = add i64 %53, %39
  %55 = getelementptr double, double* %52, i64 %54
  %56 = load double, double* %55, align 8
  %57 = fmul double %51, %56
  %58 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %31, 1
  %59 = mul i64 %35, 2600
  %60 = add i64 %59, %39
  %61 = getelementptr double, double* %58, i64 %60
  %62 = load double, double* %61, align 8
  %63 = fadd double %62, %57
  %64 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %31, 1
  %65 = mul i64 %35, 2600
  %66 = add i64 %65, %39
  %67 = getelementptr double, double* %64, i64 %66
  store double %63, double* %67, align 8
  %68 = add i64 %44, 1
  br label %43

69:                                               ; preds = %43
  %70 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %31, 1
  %71 = mul i64 %35, 2600
  %72 = add i64 %71, %39
  %73 = getelementptr double, double* %70, i64 %72
  %74 = load double, double* %73, align 8
  %75 = fmul double %2, %74
  %76 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %31, 1
  %77 = mul i64 %35, 2600
  %78 = add i64 %77, %39
  %79 = getelementptr double, double* %76, i64 %78
  store double %75, double* %79, align 8
  %80 = add i64 %39, 1
  br label %38

81:                                               ; preds = %38
  %82 = add i64 %35, 1
  br label %34

83:                                               ; preds = %34
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


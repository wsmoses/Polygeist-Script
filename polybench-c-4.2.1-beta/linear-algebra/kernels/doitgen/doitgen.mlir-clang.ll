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
@str3 = internal constant [2 x i8] c"A\00"
@str2 = internal constant [15 x i8] c"begin dump: %s\00"
@str1 = internal constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00"
@stderr = external global %struct._IO_FILE*
@str0 = internal constant [1 x i8] zeroinitializer

declare i8* @malloc(i64)

declare void @free(i8*)

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...)

declare i32 @strcmp(i8*, i8*)

define i32 @main(i32 %0, i8** %1) {
  %3 = call i8* @malloc(i64 mul (i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 14850000))
  %4 = bitcast i8* %3 to double*
  %5 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } undef, double* %4, 0
  %6 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %5, double* %4, 1
  %7 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %6, i64 0, 2
  %8 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %7, i64 250, 3, 0
  %9 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %8, i64 220, 3, 1
  %10 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %9, i64 270, 3, 2
  %11 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %10, i64 59400, 4, 0
  %12 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %11, i64 270, 4, 1
  %13 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %12, i64 1, 4, 2
  %14 = call i8* @malloc(i64 mul (i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 270))
  %15 = bitcast i8* %14 to double*
  %16 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %15, 0
  %17 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %16, double* %15, 1
  %18 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %17, i64 0, 2
  %19 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, i64 270, 3, 0
  %20 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %19, i64 1, 4, 0
  %21 = call i8* @malloc(i64 mul (i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 72900))
  %22 = bitcast i8* %21 to double*
  %23 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %22, 0
  %24 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, double* %22, 1
  %25 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %24, i64 0, 2
  %26 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %25, i64 270, 3, 0
  %27 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %26, i64 270, 3, 1
  %28 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %27, i64 270, 4, 0
  %29 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %28, i64 1, 4, 1
  %30 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %13, 0
  %31 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %13, 1
  %32 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %13, 2
  %33 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %13, 3, 0
  %34 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %13, 3, 1
  %35 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %13, 3, 2
  %36 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %13, 4, 0
  %37 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %13, 4, 1
  %38 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %13, 4, 2
  %39 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 0
  %40 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 1
  %41 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 2
  %42 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 3, 0
  %43 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 3, 1
  %44 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 4, 0
  %45 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 4, 1
  call void @init_array(i32 250, i32 220, i32 270, double* %30, double* %31, i64 %32, i64 %33, i64 %34, i64 %35, i64 %36, i64 %37, i64 %38, double* %39, double* %40, i64 %41, i64 %42, i64 %43, i64 %44, i64 %45)
  call void @polybench_timer_start()
  %46 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %13, 0
  %47 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %13, 1
  %48 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %13, 2
  %49 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %13, 3, 0
  %50 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %13, 3, 1
  %51 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %13, 3, 2
  %52 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %13, 4, 0
  %53 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %13, 4, 1
  %54 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %13, 4, 2
  %55 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 0
  %56 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 1
  %57 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 2
  %58 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 3, 0
  %59 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 3, 1
  %60 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 4, 0
  %61 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 4, 1
  %62 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %20, 0
  %63 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %20, 1
  %64 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %20, 2
  %65 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %20, 3, 0
  %66 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %20, 4, 0
  call void @kernel_doitgen(i32 250, i32 220, i32 270, double* %46, double* %47, i64 %48, i64 %49, i64 %50, i64 %51, i64 %52, i64 %53, i64 %54, double* %55, double* %56, i64 %57, i64 %58, i64 %59, i64 %60, i64 %61, double* %62, double* %63, i64 %64, i64 %65, i64 %66)
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
  br i1 %76, label %78, label %88

78:                                               ; preds = %77
  %79 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %13, 0
  %80 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %13, 1
  %81 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %13, 2
  %82 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %13, 3, 0
  %83 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %13, 3, 1
  %84 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %13, 3, 2
  %85 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %13, 4, 0
  %86 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %13, 4, 1
  %87 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %13, 4, 2
  call void @print_array(i32 250, i32 220, i32 270, double* %79, double* %80, i64 %81, i64 %82, i64 %83, i64 %84, i64 %85, i64 %86, i64 %87)
  br label %88

88:                                               ; preds = %78, %77
  %89 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %13, 0
  %90 = bitcast double* %89 to i8*
  call void @free(i8* %90)
  %91 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %20, 0
  %92 = bitcast double* %91 to i8*
  call void @free(i8* %92)
  %93 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 0
  %94 = bitcast double* %93 to i8*
  call void @free(i8* %94)
  ret i32 0
}

define private void @init_array(i32 %0, i32 %1, i32 %2, double* %3, double* %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10, i64 %11, double* %12, double* %13, i64 %14, i64 %15, i64 %16, i64 %17, i64 %18) {
  %20 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } undef, double* %3, 0
  %21 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %20, double* %4, 1
  %22 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %21, i64 %5, 2
  %23 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %22, i64 %6, 3, 0
  %24 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %23, i64 %9, 4, 0
  %25 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %24, i64 %7, 3, 1
  %26 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %25, i64 %10, 4, 1
  %27 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %26, i64 %8, 3, 2
  %28 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %27, i64 %11, 4, 2
  %29 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %12, 0
  %30 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, double* %13, 1
  %31 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %30, i64 %14, 2
  %32 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %31, i64 %15, 3, 0
  %33 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, i64 %17, 4, 0
  %34 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %33, i64 %16, 3, 1
  %35 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %34, i64 %18, 4, 1
  br label %36

36:                                               ; preds = %70, %19
  %37 = phi i32 [ %71, %70 ], [ 0, %19 ]
  %38 = icmp slt i32 %37, %0
  br i1 %38, label %39, label %72

39:                                               ; preds = %36
  %40 = phi i32 [ 0, %36 ]
  %41 = phi i32 [ %37, %36 ]
  %42 = sext i32 %41 to i64
  br label %43

43:                                               ; preds = %68, %39
  %44 = phi i32 [ %69, %68 ], [ 0, %39 ]
  %45 = icmp slt i32 %44, %1
  br i1 %45, label %46, label %70

46:                                               ; preds = %43
  %47 = phi i32 [ %44, %43 ]
  %48 = sext i32 %47 to i64
  br label %49

49:                                               ; preds = %52, %46
  %50 = phi i32 [ %67, %52 ], [ 0, %46 ]
  %51 = icmp slt i32 %50, %2
  br i1 %51, label %52, label %68

52:                                               ; preds = %49
  %53 = phi i32 [ %50, %49 ]
  %54 = sext i32 %53 to i64
  %55 = mul i32 %41, %47
  %56 = add i32 %55, %53
  %57 = srem i32 %56, %2
  %58 = sitofp i32 %57 to double
  %59 = sitofp i32 %2 to double
  %60 = fdiv double %58, %59
  %61 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %28, 1
  %62 = mul i64 %42, 59400
  %63 = mul i64 %48, 270
  %64 = add i64 %62, %63
  %65 = add i64 %64, %54
  %66 = getelementptr double, double* %61, i64 %65
  store double %60, double* %66, align 8
  %67 = add i32 %53, 1
  br label %49

68:                                               ; preds = %49
  %69 = add i32 %47, 1
  br label %43

70:                                               ; preds = %43
  %71 = add i32 %41, 1
  br label %36

72:                                               ; preds = %36
  br label %73

73:                                               ; preds = %95, %72
  %74 = phi i32 [ %96, %95 ], [ 0, %72 ]
  %75 = icmp slt i32 %74, %2
  br i1 %75, label %76, label %97

76:                                               ; preds = %73
  %77 = phi i32 [ %74, %73 ]
  %78 = sext i32 %77 to i64
  br label %79

79:                                               ; preds = %82, %76
  %80 = phi i32 [ %94, %82 ], [ 0, %76 ]
  %81 = icmp slt i32 %80, %2
  br i1 %81, label %82, label %95

82:                                               ; preds = %79
  %83 = phi i32 [ %80, %79 ]
  %84 = sext i32 %83 to i64
  %85 = mul i32 %77, %83
  %86 = srem i32 %85, %2
  %87 = sitofp i32 %86 to double
  %88 = sitofp i32 %2 to double
  %89 = fdiv double %87, %88
  %90 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %35, 1
  %91 = mul i64 %78, 270
  %92 = add i64 %91, %84
  %93 = getelementptr double, double* %90, i64 %92
  store double %89, double* %93, align 8
  %94 = add i32 %83, 1
  br label %79

95:                                               ; preds = %79
  %96 = add i32 %77, 1
  br label %73

97:                                               ; preds = %73
  ret void
}

declare void @polybench_timer_start()

define void @kernel_doitgen(i32 %0, i32 %1, i32 %2, double* %3, double* %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10, i64 %11, double* %12, double* %13, i64 %14, i64 %15, i64 %16, i64 %17, i64 %18, double* %19, double* %20, i64 %21, i64 %22, i64 %23) {
  %25 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } undef, double* %3, 0
  %26 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %25, double* %4, 1
  %27 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %26, i64 %5, 2
  %28 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %27, i64 %6, 3, 0
  %29 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %28, i64 %9, 4, 0
  %30 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %29, i64 %7, 3, 1
  %31 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %30, i64 %10, 4, 1
  %32 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %31, i64 %8, 3, 2
  %33 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %32, i64 %11, 4, 2
  %34 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %12, 0
  %35 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %34, double* %13, 1
  %36 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %35, i64 %14, 2
  %37 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %36, i64 %15, 3, 0
  %38 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %37, i64 %17, 4, 0
  %39 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %38, i64 %16, 3, 1
  %40 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %39, i64 %18, 4, 1
  %41 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %19, 0
  %42 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %41, double* %20, 1
  %43 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %42, i64 %21, 2
  %44 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %43, i64 %22, 3, 0
  %45 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %44, i64 %23, 4, 0
  %46 = sext i32 %1 to i64
  %47 = sext i32 %2 to i64
  %48 = sext i32 %0 to i64
  br label %49

49:                                               ; preds = %106, %24
  %50 = phi i64 [ %107, %106 ], [ 0, %24 ]
  %51 = icmp slt i64 %50, %48
  br i1 %51, label %52, label %108

52:                                               ; preds = %49
  br label %53

53:                                               ; preds = %104, %52
  %54 = phi i64 [ %105, %104 ], [ 0, %52 ]
  %55 = icmp slt i64 %54, %46
  br i1 %55, label %56, label %106

56:                                               ; preds = %53
  br label %57

57:                                               ; preds = %87, %56
  %58 = phi i64 [ %88, %87 ], [ 0, %56 ]
  %59 = icmp slt i64 %58, %47
  br i1 %59, label %60, label %89

60:                                               ; preds = %57
  %61 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %45, 1
  %62 = getelementptr double, double* %61, i64 %58
  store double 0.000000e+00, double* %62, align 8
  br label %63

63:                                               ; preds = %66, %60
  %64 = phi i64 [ %86, %66 ], [ 0, %60 ]
  %65 = icmp slt i64 %64, %47
  br i1 %65, label %66, label %87

66:                                               ; preds = %63
  %67 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %33, 1
  %68 = mul i64 %50, 59400
  %69 = mul i64 %54, 270
  %70 = add i64 %68, %69
  %71 = add i64 %70, %64
  %72 = getelementptr double, double* %67, i64 %71
  %73 = load double, double* %72, align 8
  %74 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %40, 1
  %75 = mul i64 %64, 270
  %76 = add i64 %75, %58
  %77 = getelementptr double, double* %74, i64 %76
  %78 = load double, double* %77, align 8
  %79 = fmul double %73, %78
  %80 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %45, 1
  %81 = getelementptr double, double* %80, i64 %58
  %82 = load double, double* %81, align 8
  %83 = fadd double %82, %79
  %84 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %45, 1
  %85 = getelementptr double, double* %84, i64 %58
  store double %83, double* %85, align 8
  %86 = add i64 %64, 1
  br label %63

87:                                               ; preds = %63
  %88 = add i64 %58, 1
  br label %57

89:                                               ; preds = %57
  br label %90

90:                                               ; preds = %93, %89
  %91 = phi i64 [ %103, %93 ], [ 0, %89 ]
  %92 = icmp slt i64 %91, %47
  br i1 %92, label %93, label %104

93:                                               ; preds = %90
  %94 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %45, 1
  %95 = getelementptr double, double* %94, i64 %91
  %96 = load double, double* %95, align 8
  %97 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %33, 1
  %98 = mul i64 %50, 59400
  %99 = mul i64 %54, 270
  %100 = add i64 %98, %99
  %101 = add i64 %100, %91
  %102 = getelementptr double, double* %97, i64 %101
  store double %96, double* %102, align 8
  %103 = add i64 %91, 1
  br label %90

104:                                              ; preds = %90
  %105 = add i64 %54, 1
  br label %53

106:                                              ; preds = %53
  %107 = add i64 %50, 1
  br label %49

108:                                              ; preds = %49
  ret void
}

declare void @polybench_timer_stop()

declare void @polybench_timer_print()

define private void @print_array(i32 %0, i32 %1, i32 %2, double* %3, double* %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10, i64 %11) {
  %13 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } undef, double* %3, 0
  %14 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %13, double* %4, 1
  %15 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %14, i64 %5, 2
  %16 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %15, i64 %6, 3, 0
  %17 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %16, i64 %9, 4, 0
  %18 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %17, i64 %7, 3, 1
  %19 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %18, i64 %10, 4, 1
  %20 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %19, i64 %8, 3, 2
  %21 = insertvalue { double*, double*, i64, [3 x i64], [3 x i64] } %20, i64 %11, 4, 2
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @str1, i64 0, i64 0))
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @str2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str3, i64 0, i64 0))
  br label %26

26:                                               ; preds = %67, %12
  %27 = phi i32 [ %68, %67 ], [ 0, %12 ]
  %28 = icmp slt i32 %27, %0
  br i1 %28, label %29, label %69

29:                                               ; preds = %26
  %30 = phi i32 [ %27, %26 ]
  %31 = sext i32 %30 to i64
  br label %32

32:                                               ; preds = %65, %29
  %33 = phi i32 [ %66, %65 ], [ 0, %29 ]
  %34 = icmp slt i32 %33, %1
  br i1 %34, label %35, label %67

35:                                               ; preds = %32
  %36 = phi i32 [ %33, %32 ]
  %37 = sext i32 %36 to i64
  br label %38

38:                                               ; preds = %54, %35
  %39 = phi i32 [ %64, %54 ], [ 0, %35 ]
  %40 = icmp slt i32 %39, %2
  br i1 %40, label %41, label %65

41:                                               ; preds = %38
  %42 = phi i32 [ %39, %38 ]
  %43 = sext i32 %42 to i64
  %44 = mul i32 %30, %1
  %45 = mul i32 %44, %2
  %46 = mul i32 %36, %2
  %47 = add i32 %45, %46
  %48 = add i32 %47, %42
  %49 = srem i32 %48, 20
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %41
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str4, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %41
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %56 = extractvalue { double*, double*, i64, [3 x i64], [3 x i64] } %21, 1
  %57 = mul i64 %31, 59400
  %58 = mul i64 %37, 270
  %59 = add i64 %57, %58
  %60 = add i64 %59, %43
  %61 = getelementptr double, double* %56, i64 %60
  %62 = load double, double* %61, align 8
  %63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @str5, i64 0, i64 0), double %62)
  %64 = add i32 %42, 1
  br label %38

65:                                               ; preds = %38
  %66 = add i32 %36, 1
  br label %32

67:                                               ; preds = %32
  %68 = add i32 %30, 1
  br label %26

69:                                               ; preds = %26
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %71 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %70, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @str6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str3, i64 0, i64 0))
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %73 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %72, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @str7, i64 0, i64 0))
  ret void
}


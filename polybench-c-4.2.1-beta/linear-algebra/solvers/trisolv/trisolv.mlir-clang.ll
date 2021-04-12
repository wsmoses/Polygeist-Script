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
@str5 = internal constant [2 x i8] c"\0A\00"
@str4 = internal constant [8 x i8] c"%0.2lf \00"
@str3 = internal constant [2 x i8] c"x\00"
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
  %26 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 0
  %27 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 1
  %28 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 2
  %29 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 3, 0
  %30 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 3, 1
  %31 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 4, 0
  %32 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 4, 1
  %33 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 0
  %34 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 1
  %35 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 2
  %36 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 3, 0
  %37 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 4, 0
  %38 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 0
  %39 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 1
  %40 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 2
  %41 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 3, 0
  %42 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 4, 0
  call void @init_array(i32 4000, double* %26, double* %27, i64 %28, i64 %29, i64 %30, i64 %31, i64 %32, double* %33, double* %34, i64 %35, i64 %36, i64 %37, double* %38, double* %39, i64 %40, i64 %41, i64 %42)
  call void @polybench_timer_start()
  %43 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 0
  %44 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 1
  %45 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 2
  %46 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 3, 0
  %47 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 3, 1
  %48 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 4, 0
  %49 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 4, 1
  %50 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 0
  %51 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 1
  %52 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 2
  %53 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 3, 0
  %54 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 4, 0
  %55 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 0
  %56 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 1
  %57 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 2
  %58 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 3, 0
  %59 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 4, 0
  call void @kernel_trisolv(i32 4000, double* %43, double* %44, i64 %45, i64 %46, i64 %47, i64 %48, i64 %49, double* %50, double* %51, i64 %52, i64 %53, i64 %54, double* %55, double* %56, i64 %57, i64 %58, i64 %59)
  call void @polybench_timer_stop()
  call void @polybench_timer_print()
  %60 = icmp sgt i32 %0, 42
  br i1 %60, label %61, label %67

61:                                               ; preds = %2
  %62 = getelementptr i8*, i8** %1, i64 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @strcmp(i8* %63, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @str0, i64 0, i64 0))
  %65 = trunc i32 %64 to i1
  %66 = xor i1 %65, true
  br label %68

67:                                               ; preds = %2
  br label %68

68:                                               ; preds = %61, %67
  %69 = phi i1 [ %66, %61 ], [ false, %67 ]
  br label %70

70:                                               ; preds = %68
  br i1 %69, label %71, label %77

71:                                               ; preds = %70
  %72 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 0
  %73 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 1
  %74 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 2
  %75 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 3, 0
  %76 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 4, 0
  call void @print_array(i32 4000, double* %72, double* %73, i64 %74, i64 %75, i64 %76)
  br label %77

77:                                               ; preds = %71, %70
  %78 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 0
  %79 = bitcast double* %78 to i8*
  call void @free(i8* %79)
  %80 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 0
  %81 = bitcast double* %80 to i8*
  call void @free(i8* %81)
  %82 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 0
  %83 = bitcast double* %82 to i8*
  call void @free(i8* %83)
  ret i32 0
}

define private void @init_array(i32 %0, double* %1, double* %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, double* %8, double* %9, i64 %10, i64 %11, i64 %12, double* %13, double* %14, i64 %15, i64 %16, i64 %17) {
  %19 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %1, 0
  %20 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %19, double* %2, 1
  %21 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, i64 %3, 2
  %22 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %21, i64 %4, 3, 0
  %23 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %22, i64 %6, 4, 0
  %24 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, i64 %5, 3, 1
  %25 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %24, i64 %7, 4, 1
  %26 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %8, 0
  %27 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %26, double* %9, 1
  %28 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %27, i64 %10, 2
  %29 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %28, i64 %11, 3, 0
  %30 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %29, i64 %12, 4, 0
  %31 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %13, 0
  %32 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %31, double* %14, 1
  %33 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %32, i64 %15, 2
  %34 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %33, i64 %16, 3, 0
  %35 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %34, i64 %17, 4, 0
  br label %36

36:                                               ; preds = %65, %18
  %37 = phi i32 [ %66, %65 ], [ 0, %18 ]
  %38 = icmp slt i32 %37, %0
  br i1 %38, label %39, label %67

39:                                               ; preds = %36
  %40 = phi i32 [ %37, %36 ]
  %41 = sext i32 %40 to i64
  %42 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %30, 1
  %43 = getelementptr double, double* %42, i64 %41
  store double -9.990000e+02, double* %43, align 8
  %44 = sitofp i32 %40 to double
  %45 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %35, 1
  %46 = getelementptr double, double* %45, i64 %41
  store double %44, double* %46, align 8
  br label %47

47:                                               ; preds = %50, %39
  %48 = phi i32 [ %64, %50 ], [ 0, %39 ]
  %49 = icmp sle i32 %48, %40
  br i1 %49, label %50, label %65

50:                                               ; preds = %47
  %51 = phi i32 [ %48, %47 ]
  %52 = sext i32 %51 to i64
  %53 = add i32 %40, %0
  %54 = sub i32 %53, %51
  %55 = add i32 %54, 1
  %56 = sitofp i32 %55 to double
  %57 = fmul double %56, 2.000000e+00
  %58 = sitofp i32 %0 to double
  %59 = fdiv double %57, %58
  %60 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %25, 1
  %61 = mul i64 %41, 4000
  %62 = add i64 %61, %52
  %63 = getelementptr double, double* %60, i64 %62
  store double %59, double* %63, align 8
  %64 = add i32 %51, 1
  br label %47

65:                                               ; preds = %47
  %66 = add i32 %40, 1
  br label %36

67:                                               ; preds = %36
  ret void
}

declare void @polybench_timer_start()

define private void @kernel_trisolv(i32 %0, double* %1, double* %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, double* %8, double* %9, i64 %10, i64 %11, i64 %12, double* %13, double* %14, i64 %15, i64 %16, i64 %17) {
  %19 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %1, 0
  %20 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %19, double* %2, 1
  %21 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, i64 %3, 2
  %22 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %21, i64 %4, 3, 0
  %23 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %22, i64 %6, 4, 0
  %24 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, i64 %5, 3, 1
  %25 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %24, i64 %7, 4, 1
  %26 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %8, 0
  %27 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %26, double* %9, 1
  %28 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %27, i64 %10, 2
  %29 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %28, i64 %11, 3, 0
  %30 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %29, i64 %12, 4, 0
  %31 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %13, 0
  %32 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %31, double* %14, 1
  %33 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %32, i64 %15, 2
  %34 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %33, i64 %16, 3, 0
  %35 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %34, i64 %17, 4, 0
  %36 = sext i32 %0 to i64
  br label %37

37:                                               ; preds = %66, %18
  %38 = phi i64 [ %78, %66 ], [ 0, %18 ]
  %39 = icmp slt i64 %38, %36
  br i1 %39, label %40, label %79

40:                                               ; preds = %37
  %41 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %35, 1
  %42 = getelementptr double, double* %41, i64 %38
  %43 = load double, double* %42, align 8
  %44 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %30, 1
  %45 = getelementptr double, double* %44, i64 %38
  store double %43, double* %45, align 8
  br label %46

46:                                               ; preds = %49, %40
  %47 = phi i64 [ %65, %49 ], [ 0, %40 ]
  %48 = icmp slt i64 %47, %38
  br i1 %48, label %49, label %66

49:                                               ; preds = %46
  %50 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %25, 1
  %51 = mul i64 %38, 4000
  %52 = add i64 %51, %47
  %53 = getelementptr double, double* %50, i64 %52
  %54 = load double, double* %53, align 8
  %55 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %30, 1
  %56 = getelementptr double, double* %55, i64 %47
  %57 = load double, double* %56, align 8
  %58 = fmul double %54, %57
  %59 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %30, 1
  %60 = getelementptr double, double* %59, i64 %38
  %61 = load double, double* %60, align 8
  %62 = fsub double %61, %58
  %63 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %30, 1
  %64 = getelementptr double, double* %63, i64 %38
  store double %62, double* %64, align 8
  %65 = add i64 %47, 1
  br label %46

66:                                               ; preds = %46
  %67 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %30, 1
  %68 = getelementptr double, double* %67, i64 %38
  %69 = load double, double* %68, align 8
  %70 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %25, 1
  %71 = mul i64 %38, 4000
  %72 = add i64 %71, %38
  %73 = getelementptr double, double* %70, i64 %72
  %74 = load double, double* %73, align 8
  %75 = fdiv double %69, %74
  %76 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %30, 1
  %77 = getelementptr double, double* %76, i64 %38
  store double %75, double* %77, align 8
  %78 = add i64 %38, 1
  br label %37

79:                                               ; preds = %37
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

16:                                               ; preds = %32, %6
  %17 = phi i32 [ %33, %32 ], [ 0, %6 ]
  %18 = icmp slt i32 %17, %0
  br i1 %18, label %19, label %34

19:                                               ; preds = %16
  %20 = phi i32 [ %17, %16 ]
  %21 = sext i32 %20 to i64
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %11, 1
  %24 = getelementptr double, double* %23, i64 %21
  %25 = load double, double* %24, align 8
  %26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @str4, i64 0, i64 0), double %25)
  %27 = srem i32 %20, 20
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str5, i64 0, i64 0))
  br label %32

32:                                               ; preds = %29, %19
  %33 = add i32 %20, 1
  br label %16

34:                                               ; preds = %16
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @str6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @str3, i64 0, i64 0))
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @str7, i64 0, i64 0))
  ret void
}


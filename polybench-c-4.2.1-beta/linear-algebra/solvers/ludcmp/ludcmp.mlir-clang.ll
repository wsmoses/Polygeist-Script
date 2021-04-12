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
  %26 = call i8* @malloc(i64 mul (i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 4000))
  %27 = bitcast i8* %26 to double*
  %28 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %27, 0
  %29 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %28, double* %27, 1
  %30 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %29, i64 0, 2
  %31 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %30, i64 4000, 3, 0
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
  call void @init_array(i32 4000, double* %33, double* %34, i64 %35, i64 %36, i64 %37, i64 %38, i64 %39, double* %40, double* %41, i64 %42, i64 %43, i64 %44, double* %45, double* %46, i64 %47, i64 %48, i64 %49, double* %50, double* %51, i64 %52, i64 %53, i64 %54)
  call void @polybench_timer_start()
  %55 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 0
  %56 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 1
  %57 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 2
  %58 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 3, 0
  %59 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 3, 1
  %60 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 4, 0
  %61 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 4, 1
  %62 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 0
  %63 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 1
  %64 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 2
  %65 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 3, 0
  %66 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 4, 0
  %67 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 0
  %68 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 1
  %69 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 2
  %70 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 3, 0
  %71 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 4, 0
  %72 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %32, 0
  %73 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %32, 1
  %74 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %32, 2
  %75 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %32, 3, 0
  %76 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %32, 4, 0
  call void @kernel_ludcmp(i32 4000, double* %55, double* %56, i64 %57, i64 %58, i64 %59, i64 %60, i64 %61, double* %62, double* %63, i64 %64, i64 %65, i64 %66, double* %67, double* %68, i64 %69, i64 %70, i64 %71, double* %72, double* %73, i64 %74, i64 %75, i64 %76)
  call void @polybench_timer_stop()
  call void @polybench_timer_print()
  %77 = icmp sgt i32 %0, 42
  br i1 %77, label %78, label %84

78:                                               ; preds = %2
  %79 = getelementptr i8*, i8** %1, i64 0
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @strcmp(i8* %80, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @str0, i64 0, i64 0))
  %82 = trunc i32 %81 to i1
  %83 = xor i1 %82, true
  br label %85

84:                                               ; preds = %2
  br label %85

85:                                               ; preds = %78, %84
  %86 = phi i1 [ %83, %78 ], [ false, %84 ]
  br label %87

87:                                               ; preds = %85
  br i1 %86, label %88, label %94

88:                                               ; preds = %87
  %89 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 0
  %90 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 1
  %91 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 2
  %92 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 3, 0
  %93 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 4, 0
  call void @print_array(i32 4000, double* %89, double* %90, i64 %91, i64 %92, i64 %93)
  br label %94

94:                                               ; preds = %88, %87
  %95 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 0
  %96 = bitcast double* %95 to i8*
  call void @free(i8* %96)
  %97 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %18, 0
  %98 = bitcast double* %97 to i8*
  call void @free(i8* %98)
  %99 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %25, 0
  %100 = bitcast double* %99 to i8*
  call void @free(i8* %100)
  %101 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %32, 0
  %102 = bitcast double* %101 to i8*
  call void @free(i8* %102)
  ret i32 0
}

define private void @init_array(i32 %0, double* %1, double* %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, double* %8, double* %9, i64 %10, i64 %11, i64 %12, double* %13, double* %14, i64 %15, i64 %16, i64 %17, double* %18, double* %19, i64 %20, i64 %21, i64 %22) {
  %24 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %1, 0
  %25 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %24, double* %2, 1
  %26 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %25, i64 %3, 2
  %27 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %26, i64 %4, 3, 0
  %28 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %27, i64 %6, 4, 0
  %29 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %28, i64 %5, 3, 1
  %30 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, i64 %7, 4, 1
  %31 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %8, 0
  %32 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %31, double* %9, 1
  %33 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %32, i64 %10, 2
  %34 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %33, i64 %11, 3, 0
  %35 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %34, i64 %12, 4, 0
  %36 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %13, 0
  %37 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %36, double* %14, 1
  %38 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %37, i64 %15, 2
  %39 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %38, i64 %16, 3, 0
  %40 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %39, i64 %17, 4, 0
  %41 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %18, 0
  %42 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %41, double* %19, 1
  %43 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %42, i64 %20, 2
  %44 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %43, i64 %21, 3, 0
  %45 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %44, i64 %22, 4, 0
  %46 = sitofp i32 %0 to double
  %47 = sext i32 %0 to i64
  br label %48

48:                                               ; preds = %52, %23
  %49 = phi i64 [ %65, %52 ], [ 0, %23 ]
  %50 = phi i32 [ %58, %52 ], [ 0, %23 ]
  %51 = icmp slt i64 %49, %47
  br i1 %51, label %52, label %66

52:                                               ; preds = %48
  %53 = sext i32 %50 to i64
  %54 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %40, 1
  %55 = getelementptr double, double* %54, i64 %53
  store double 0.000000e+00, double* %55, align 8
  %56 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %45, 1
  %57 = getelementptr double, double* %56, i64 %53
  store double 0.000000e+00, double* %57, align 8
  %58 = add i32 %50, 1
  %59 = sitofp i32 %58 to double
  %60 = fdiv double %59, %46
  %61 = fdiv double %60, 2.000000e+00
  %62 = fadd double %61, 4.000000e+00
  %63 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %35, 1
  %64 = getelementptr double, double* %63, i64 %53
  store double %62, double* %64, align 8
  %65 = add i64 %49, 1
  br label %48

66:                                               ; preds = %48
  br label %67

67:                                               ; preds = %105, %66
  %68 = phi i32 [ %90, %105 ], [ 0, %66 ]
  %69 = icmp slt i32 %68, %0
  br i1 %69, label %70, label %110

70:                                               ; preds = %67
  %71 = phi i32 [ %68, %67 ]
  %72 = sext i32 %71 to i64
  br label %73

73:                                               ; preds = %76, %70
  %74 = phi i32 [ %88, %76 ], [ 0, %70 ]
  %75 = icmp sle i32 %74, %71
  br i1 %75, label %76, label %89

76:                                               ; preds = %73
  %77 = phi i32 [ %74, %73 ]
  %78 = sext i32 %77 to i64
  %79 = sub i32 0, %77
  %80 = srem i32 %79, %0
  %81 = sitofp i32 %80 to double
  %82 = fdiv double %81, %46
  %83 = fadd double %82, 1.000000e+00
  %84 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %30, 1
  %85 = mul i64 %72, 4000
  %86 = add i64 %85, %78
  %87 = getelementptr double, double* %84, i64 %86
  store double %83, double* %87, align 8
  %88 = add i32 %77, 1
  br label %73

89:                                               ; preds = %73
  %90 = add i32 %71, 1
  %91 = sext i32 %0 to i64
  %92 = add i64 %72, 1
  br label %93

93:                                               ; preds = %97, %89
  %94 = phi i64 [ %104, %97 ], [ %92, %89 ]
  %95 = phi i32 [ %103, %97 ], [ %90, %89 ]
  %96 = icmp slt i64 %94, %91
  br i1 %96, label %97, label %105

97:                                               ; preds = %93
  %98 = sext i32 %95 to i64
  %99 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %30, 1
  %100 = mul i64 %72, 4000
  %101 = add i64 %100, %98
  %102 = getelementptr double, double* %99, i64 %101
  store double 0.000000e+00, double* %102, align 8
  %103 = add i32 %95, 1
  %104 = add i64 %94, 1
  br label %93

105:                                              ; preds = %93
  %106 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %30, 1
  %107 = mul i64 %72, 4000
  %108 = add i64 %107, %72
  %109 = getelementptr double, double* %106, i64 %108
  store double 1.000000e+00, double* %109, align 8
  br label %67

110:                                              ; preds = %67
  %111 = call i8* @malloc(i64 mul (i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 16000000))
  %112 = bitcast i8* %111 to double*
  %113 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %112, 0
  %114 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %113, double* %112, 1
  %115 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %114, i64 0, 2
  %116 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %115, i64 4000, 3, 0
  %117 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %116, i64 4000, 3, 1
  %118 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %117, i64 4000, 4, 0
  %119 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %118, i64 1, 4, 1
  %120 = sext i32 %0 to i64
  br label %121

121:                                              ; preds = %134, %110
  %122 = phi i64 [ %135, %134 ], [ 0, %110 ]
  %123 = icmp slt i64 %122, %120
  br i1 %123, label %124, label %136

124:                                              ; preds = %121
  br label %125

125:                                              ; preds = %128, %124
  %126 = phi i64 [ %133, %128 ], [ 0, %124 ]
  %127 = icmp slt i64 %126, %120
  br i1 %127, label %128, label %134

128:                                              ; preds = %125
  %129 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %119, 1
  %130 = mul i64 %122, 4000
  %131 = add i64 %130, %126
  %132 = getelementptr double, double* %129, i64 %131
  store double 0.000000e+00, double* %132, align 8
  %133 = add i64 %126, 1
  br label %125

134:                                              ; preds = %125
  %135 = add i64 %122, 1
  br label %121

136:                                              ; preds = %121
  br label %137

137:                                              ; preds = %173, %136
  %138 = phi i64 [ %174, %173 ], [ 0, %136 ]
  %139 = icmp slt i64 %138, %120
  br i1 %139, label %140, label %175

140:                                              ; preds = %137
  br label %141

141:                                              ; preds = %171, %140
  %142 = phi i64 [ %172, %171 ], [ 0, %140 ]
  %143 = icmp slt i64 %142, %120
  br i1 %143, label %144, label %173

144:                                              ; preds = %141
  br label %145

145:                                              ; preds = %148, %144
  %146 = phi i64 [ %170, %148 ], [ 0, %144 ]
  %147 = icmp slt i64 %146, %120
  br i1 %147, label %148, label %171

148:                                              ; preds = %145
  %149 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %30, 1
  %150 = mul i64 %142, 4000
  %151 = add i64 %150, %138
  %152 = getelementptr double, double* %149, i64 %151
  %153 = load double, double* %152, align 8
  %154 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %30, 1
  %155 = mul i64 %146, 4000
  %156 = add i64 %155, %138
  %157 = getelementptr double, double* %154, i64 %156
  %158 = load double, double* %157, align 8
  %159 = fmul double %153, %158
  %160 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %119, 1
  %161 = mul i64 %142, 4000
  %162 = add i64 %161, %146
  %163 = getelementptr double, double* %160, i64 %162
  %164 = load double, double* %163, align 8
  %165 = fadd double %164, %159
  %166 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %119, 1
  %167 = mul i64 %142, 4000
  %168 = add i64 %167, %146
  %169 = getelementptr double, double* %166, i64 %168
  store double %165, double* %169, align 8
  %170 = add i64 %146, 1
  br label %145

171:                                              ; preds = %145
  %172 = add i64 %142, 1
  br label %141

173:                                              ; preds = %141
  %174 = add i64 %138, 1
  br label %137

175:                                              ; preds = %137
  br label %176

176:                                              ; preds = %194, %175
  %177 = phi i64 [ %195, %194 ], [ 0, %175 ]
  %178 = icmp slt i64 %177, %120
  br i1 %178, label %179, label %196

179:                                              ; preds = %176
  br label %180

180:                                              ; preds = %183, %179
  %181 = phi i64 [ %193, %183 ], [ 0, %179 ]
  %182 = icmp slt i64 %181, %120
  br i1 %182, label %183, label %194

183:                                              ; preds = %180
  %184 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %119, 1
  %185 = mul i64 %177, 4000
  %186 = add i64 %185, %181
  %187 = getelementptr double, double* %184, i64 %186
  %188 = load double, double* %187, align 8
  %189 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %30, 1
  %190 = mul i64 %177, 4000
  %191 = add i64 %190, %181
  %192 = getelementptr double, double* %189, i64 %191
  store double %188, double* %192, align 8
  %193 = add i64 %181, 1
  br label %180

194:                                              ; preds = %180
  %195 = add i64 %177, 1
  br label %176

196:                                              ; preds = %176
  %197 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %119, 0
  %198 = bitcast double* %197 to i8*
  call void @free(i8* %198)
  ret void
}

declare void @polybench_timer_start()

define private void @kernel_ludcmp(i32 %0, double* %1, double* %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, double* %8, double* %9, i64 %10, i64 %11, i64 %12, double* %13, double* %14, i64 %15, i64 %16, i64 %17, double* %18, double* %19, i64 %20, i64 %21, i64 %22) {
  %24 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %1, 0
  %25 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %24, double* %2, 1
  %26 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %25, i64 %3, 2
  %27 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %26, i64 %4, 3, 0
  %28 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %27, i64 %6, 4, 0
  %29 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %28, i64 %5, 3, 1
  %30 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, i64 %7, 4, 1
  %31 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %8, 0
  %32 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %31, double* %9, 1
  %33 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %32, i64 %10, 2
  %34 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %33, i64 %11, 3, 0
  %35 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %34, i64 %12, 4, 0
  %36 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %13, 0
  %37 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %36, double* %14, 1
  %38 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %37, i64 %15, 2
  %39 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %38, i64 %16, 3, 0
  %40 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %39, i64 %17, 4, 0
  %41 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %18, 0
  %42 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %41, double* %19, 1
  %43 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %42, i64 %20, 2
  %44 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %43, i64 %21, 3, 0
  %45 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %44, i64 %22, 4, 0
  %46 = sext i32 %0 to i64
  %47 = alloca double, i64 ptrtoint (double* getelementptr (double, double* null, i64 1) to i64), align 8
  %48 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %47, 0
  %49 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %48, double* %47, 1
  %50 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %49, i64 0, 2
  %51 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %50, i64 1, 3, 0
  %52 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %51, i64 1, 4, 0
  br label %53

53:                                               ; preds = %148, %23
  %54 = phi i64 [ %149, %148 ], [ 0, %23 ]
  %55 = icmp slt i64 %54, %46
  br i1 %55, label %56, label %150

56:                                               ; preds = %53
  br label %57

57:                                               ; preds = %90, %56
  %58 = phi i64 [ %104, %90 ], [ 0, %56 ]
  %59 = icmp slt i64 %58, %54
  br i1 %59, label %60, label %105

60:                                               ; preds = %57
  %61 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %30, 1
  %62 = mul i64 %54, 4000
  %63 = add i64 %62, %58
  %64 = getelementptr double, double* %61, i64 %63
  %65 = load double, double* %64, align 8
  %66 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %52, 1
  %67 = getelementptr double, double* %66, i64 0
  store double %65, double* %67, align 8
  br label %68

68:                                               ; preds = %71, %60
  %69 = phi i64 [ %89, %71 ], [ 0, %60 ]
  %70 = icmp slt i64 %69, %58
  br i1 %70, label %71, label %90

71:                                               ; preds = %68
  %72 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %30, 1
  %73 = mul i64 %54, 4000
  %74 = add i64 %73, %69
  %75 = getelementptr double, double* %72, i64 %74
  %76 = load double, double* %75, align 8
  %77 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %30, 1
  %78 = mul i64 %69, 4000
  %79 = add i64 %78, %58
  %80 = getelementptr double, double* %77, i64 %79
  %81 = load double, double* %80, align 8
  %82 = fmul double %76, %81
  %83 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %52, 1
  %84 = getelementptr double, double* %83, i64 0
  %85 = load double, double* %84, align 8
  %86 = fsub double %85, %82
  %87 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %52, 1
  %88 = getelementptr double, double* %87, i64 0
  store double %86, double* %88, align 8
  %89 = add i64 %69, 1
  br label %68

90:                                               ; preds = %68
  %91 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %52, 1
  %92 = getelementptr double, double* %91, i64 0
  %93 = load double, double* %92, align 8
  %94 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %30, 1
  %95 = mul i64 %58, 4000
  %96 = add i64 %95, %58
  %97 = getelementptr double, double* %94, i64 %96
  %98 = load double, double* %97, align 8
  %99 = fdiv double %93, %98
  %100 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %30, 1
  %101 = mul i64 %54, 4000
  %102 = add i64 %101, %58
  %103 = getelementptr double, double* %100, i64 %102
  store double %99, double* %103, align 8
  %104 = add i64 %58, 1
  br label %57

105:                                              ; preds = %57
  br label %106

106:                                              ; preds = %139, %105
  %107 = phi i64 [ %147, %139 ], [ %54, %105 ]
  %108 = icmp slt i64 %107, %46
  br i1 %108, label %109, label %148

109:                                              ; preds = %106
  %110 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %30, 1
  %111 = mul i64 %54, 4000
  %112 = add i64 %111, %107
  %113 = getelementptr double, double* %110, i64 %112
  %114 = load double, double* %113, align 8
  %115 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %52, 1
  %116 = getelementptr double, double* %115, i64 0
  store double %114, double* %116, align 8
  br label %117

117:                                              ; preds = %120, %109
  %118 = phi i64 [ %138, %120 ], [ 0, %109 ]
  %119 = icmp slt i64 %118, %54
  br i1 %119, label %120, label %139

120:                                              ; preds = %117
  %121 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %30, 1
  %122 = mul i64 %54, 4000
  %123 = add i64 %122, %118
  %124 = getelementptr double, double* %121, i64 %123
  %125 = load double, double* %124, align 8
  %126 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %30, 1
  %127 = mul i64 %118, 4000
  %128 = add i64 %127, %107
  %129 = getelementptr double, double* %126, i64 %128
  %130 = load double, double* %129, align 8
  %131 = fmul double %125, %130
  %132 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %52, 1
  %133 = getelementptr double, double* %132, i64 0
  %134 = load double, double* %133, align 8
  %135 = fsub double %134, %131
  %136 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %52, 1
  %137 = getelementptr double, double* %136, i64 0
  store double %135, double* %137, align 8
  %138 = add i64 %118, 1
  br label %117

139:                                              ; preds = %117
  %140 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %52, 1
  %141 = getelementptr double, double* %140, i64 0
  %142 = load double, double* %141, align 8
  %143 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %30, 1
  %144 = mul i64 %54, 4000
  %145 = add i64 %144, %107
  %146 = getelementptr double, double* %143, i64 %145
  store double %142, double* %146, align 8
  %147 = add i64 %107, 1
  br label %106

148:                                              ; preds = %106
  %149 = add i64 %54, 1
  br label %53

150:                                              ; preds = %53
  br label %151

151:                                              ; preds = %180, %150
  %152 = phi i64 [ %186, %180 ], [ 0, %150 ]
  %153 = icmp slt i64 %152, %46
  br i1 %153, label %154, label %187

154:                                              ; preds = %151
  %155 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %35, 1
  %156 = getelementptr double, double* %155, i64 %152
  %157 = load double, double* %156, align 8
  %158 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %52, 1
  %159 = getelementptr double, double* %158, i64 0
  store double %157, double* %159, align 8
  br label %160

160:                                              ; preds = %163, %154
  %161 = phi i64 [ %179, %163 ], [ 0, %154 ]
  %162 = icmp slt i64 %161, %152
  br i1 %162, label %163, label %180

163:                                              ; preds = %160
  %164 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %30, 1
  %165 = mul i64 %152, 4000
  %166 = add i64 %165, %161
  %167 = getelementptr double, double* %164, i64 %166
  %168 = load double, double* %167, align 8
  %169 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %45, 1
  %170 = getelementptr double, double* %169, i64 %161
  %171 = load double, double* %170, align 8
  %172 = fmul double %168, %171
  %173 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %52, 1
  %174 = getelementptr double, double* %173, i64 0
  %175 = load double, double* %174, align 8
  %176 = fsub double %175, %172
  %177 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %52, 1
  %178 = getelementptr double, double* %177, i64 0
  store double %176, double* %178, align 8
  %179 = add i64 %161, 1
  br label %160

180:                                              ; preds = %160
  %181 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %52, 1
  %182 = getelementptr double, double* %181, i64 0
  %183 = load double, double* %182, align 8
  %184 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %45, 1
  %185 = getelementptr double, double* %184, i64 %152
  store double %183, double* %185, align 8
  %186 = add i64 %152, 1
  br label %151

187:                                              ; preds = %151
  br label %188

188:                                              ; preds = %225, %187
  %189 = phi i64 [ %246, %225 ], [ 0, %187 ]
  %190 = icmp slt i64 %189, %46
  br i1 %190, label %191, label %247

191:                                              ; preds = %188
  %192 = mul i64 %189, -1
  %193 = add i64 %192, %46
  %194 = add i64 %193, -1
  %195 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %45, 1
  %196 = getelementptr double, double* %195, i64 %194
  %197 = load double, double* %196, align 8
  %198 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %52, 1
  %199 = getelementptr double, double* %198, i64 0
  store double %197, double* %199, align 8
  %200 = mul i64 %189, -1
  %201 = add i64 %200, %46
  br label %202

202:                                              ; preds = %205, %191
  %203 = phi i64 [ %224, %205 ], [ %201, %191 ]
  %204 = icmp slt i64 %203, %46
  br i1 %204, label %205, label %225

205:                                              ; preds = %202
  %206 = mul i64 %189, -1
  %207 = add i64 %206, %46
  %208 = add i64 %207, -1
  %209 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %30, 1
  %210 = mul i64 %208, 4000
  %211 = add i64 %210, %203
  %212 = getelementptr double, double* %209, i64 %211
  %213 = load double, double* %212, align 8
  %214 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %40, 1
  %215 = getelementptr double, double* %214, i64 %203
  %216 = load double, double* %215, align 8
  %217 = fmul double %213, %216
  %218 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %52, 1
  %219 = getelementptr double, double* %218, i64 0
  %220 = load double, double* %219, align 8
  %221 = fsub double %220, %217
  %222 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %52, 1
  %223 = getelementptr double, double* %222, i64 0
  store double %221, double* %223, align 8
  %224 = add i64 %203, 1
  br label %202

225:                                              ; preds = %202
  %226 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %52, 1
  %227 = getelementptr double, double* %226, i64 0
  %228 = load double, double* %227, align 8
  %229 = mul i64 %189, -1
  %230 = add i64 %229, %46
  %231 = add i64 %230, -1
  %232 = mul i64 %189, -1
  %233 = add i64 %232, %46
  %234 = add i64 %233, -1
  %235 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %30, 1
  %236 = mul i64 %231, 4000
  %237 = add i64 %236, %234
  %238 = getelementptr double, double* %235, i64 %237
  %239 = load double, double* %238, align 8
  %240 = fdiv double %228, %239
  %241 = mul i64 %189, -1
  %242 = add i64 %241, %46
  %243 = add i64 %242, -1
  %244 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %40, 1
  %245 = getelementptr double, double* %244, i64 %243
  store double %240, double* %245, align 8
  %246 = add i64 %189, 1
  br label %188

247:                                              ; preds = %188
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


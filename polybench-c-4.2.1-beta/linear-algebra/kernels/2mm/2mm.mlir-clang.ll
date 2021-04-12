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
@str3 = internal constant [2 x i8] c"D\00"
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
  %15 = call i8* @malloc(i64 mul (i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 2880000))
  %16 = bitcast i8* %15 to double*
  %17 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %16, 0
  %18 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %17, double* %16, 1
  %19 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %18, i64 0, 2
  %20 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %19, i64 1600, 3, 0
  %21 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, i64 1800, 3, 1
  %22 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %21, i64 1800, 4, 0
  %23 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %22, i64 1, 4, 1
  %24 = call i8* @malloc(i64 mul (i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 3520000))
  %25 = bitcast i8* %24 to double*
  %26 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %25, 0
  %27 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %26, double* %25, 1
  %28 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %27, i64 0, 2
  %29 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %28, i64 1600, 3, 0
  %30 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, i64 2200, 3, 1
  %31 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %30, i64 2200, 4, 0
  %32 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %31, i64 1, 4, 1
  %33 = call i8* @malloc(i64 mul (i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 3960000))
  %34 = bitcast i8* %33 to double*
  %35 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %34, 0
  %36 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %35, double* %34, 1
  %37 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %36, i64 0, 2
  %38 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %37, i64 2200, 3, 0
  %39 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %38, i64 1800, 3, 1
  %40 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %39, i64 1800, 4, 0
  %41 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %40, i64 1, 4, 1
  %42 = call i8* @malloc(i64 mul (i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 4320000))
  %43 = bitcast i8* %42 to double*
  %44 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %43, 0
  %45 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %44, double* %43, 1
  %46 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %45, i64 0, 2
  %47 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %46, i64 1800, 3, 0
  %48 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %47, i64 2400, 3, 1
  %49 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %48, i64 2400, 4, 0
  %50 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %49, i64 1, 4, 1
  %51 = call i8* @malloc(i64 mul (i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 3840000))
  %52 = bitcast i8* %51 to double*
  %53 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %52, 0
  %54 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %53, double* %52, 1
  %55 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %54, i64 0, 2
  %56 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %55, i64 1600, 3, 0
  %57 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %56, i64 2400, 3, 1
  %58 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %57, i64 2400, 4, 0
  %59 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %58, i64 1, 4, 1
  %60 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %8, 0
  %61 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %8, 1
  %62 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %8, 2
  %63 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %8, 3, 0
  %64 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %8, 4, 0
  %65 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %14, 0
  %66 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %14, 1
  %67 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %14, 2
  %68 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %14, 3, 0
  %69 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %14, 4, 0
  %70 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 0
  %71 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 1
  %72 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 2
  %73 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 3, 0
  %74 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 3, 1
  %75 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 4, 0
  %76 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 4, 1
  %77 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %41, 0
  %78 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %41, 1
  %79 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %41, 2
  %80 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %41, 3, 0
  %81 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %41, 3, 1
  %82 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %41, 4, 0
  %83 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %41, 4, 1
  %84 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %50, 0
  %85 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %50, 1
  %86 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %50, 2
  %87 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %50, 3, 0
  %88 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %50, 3, 1
  %89 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %50, 4, 0
  %90 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %50, 4, 1
  %91 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %59, 0
  %92 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %59, 1
  %93 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %59, 2
  %94 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %59, 3, 0
  %95 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %59, 3, 1
  %96 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %59, 4, 0
  %97 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %59, 4, 1
  call void @init_array(i32 1600, i32 1800, i32 2200, i32 2400, double* %60, double* %61, i64 %62, i64 %63, i64 %64, double* %65, double* %66, i64 %67, i64 %68, i64 %69, double* %70, double* %71, i64 %72, i64 %73, i64 %74, i64 %75, i64 %76, double* %77, double* %78, i64 %79, i64 %80, i64 %81, i64 %82, i64 %83, double* %84, double* %85, i64 %86, i64 %87, i64 %88, i64 %89, i64 %90, double* %91, double* %92, i64 %93, i64 %94, i64 %95, i64 %96, i64 %97)
  call void @polybench_timer_start()
  %98 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %8, 1
  %99 = getelementptr double, double* %98, i64 0
  %100 = load double, double* %99, align 8
  %101 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %14, 1
  %102 = getelementptr double, double* %101, i64 0
  %103 = load double, double* %102, align 8
  %104 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 0
  %105 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 1
  %106 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 2
  %107 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 3, 0
  %108 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 3, 1
  %109 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 4, 0
  %110 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 4, 1
  %111 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 0
  %112 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 1
  %113 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 2
  %114 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 3, 0
  %115 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 3, 1
  %116 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 4, 0
  %117 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 4, 1
  %118 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %41, 0
  %119 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %41, 1
  %120 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %41, 2
  %121 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %41, 3, 0
  %122 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %41, 3, 1
  %123 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %41, 4, 0
  %124 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %41, 4, 1
  %125 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %50, 0
  %126 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %50, 1
  %127 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %50, 2
  %128 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %50, 3, 0
  %129 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %50, 3, 1
  %130 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %50, 4, 0
  %131 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %50, 4, 1
  %132 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %59, 0
  %133 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %59, 1
  %134 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %59, 2
  %135 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %59, 3, 0
  %136 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %59, 3, 1
  %137 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %59, 4, 0
  %138 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %59, 4, 1
  call void @kernel_2mm(i32 1600, i32 1800, i32 2200, i32 2400, double %100, double %103, double* %104, double* %105, i64 %106, i64 %107, i64 %108, i64 %109, i64 %110, double* %111, double* %112, i64 %113, i64 %114, i64 %115, i64 %116, i64 %117, double* %118, double* %119, i64 %120, i64 %121, i64 %122, i64 %123, i64 %124, double* %125, double* %126, i64 %127, i64 %128, i64 %129, i64 %130, i64 %131, double* %132, double* %133, i64 %134, i64 %135, i64 %136, i64 %137, i64 %138)
  call void @polybench_timer_stop()
  call void @polybench_timer_print()
  %139 = icmp sgt i32 %0, 42
  br i1 %139, label %140, label %146

140:                                              ; preds = %2
  %141 = getelementptr i8*, i8** %1, i64 0
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 @strcmp(i8* %142, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @str0, i64 0, i64 0))
  %144 = trunc i32 %143 to i1
  %145 = xor i1 %144, true
  br label %147

146:                                              ; preds = %2
  br label %147

147:                                              ; preds = %140, %146
  %148 = phi i1 [ %145, %140 ], [ false, %146 ]
  br label %149

149:                                              ; preds = %147
  br i1 %148, label %150, label %158

150:                                              ; preds = %149
  %151 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %59, 0
  %152 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %59, 1
  %153 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %59, 2
  %154 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %59, 3, 0
  %155 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %59, 3, 1
  %156 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %59, 4, 0
  %157 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %59, 4, 1
  call void @print_array(i32 1600, i32 2400, double* %151, double* %152, i64 %153, i64 %154, i64 %155, i64 %156, i64 %157)
  br label %158

158:                                              ; preds = %150, %149
  %159 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 0
  %160 = bitcast double* %159 to i8*
  call void @free(i8* %160)
  %161 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, 0
  %162 = bitcast double* %161 to i8*
  call void @free(i8* %162)
  %163 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %41, 0
  %164 = bitcast double* %163 to i8*
  call void @free(i8* %164)
  %165 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %50, 0
  %166 = bitcast double* %165 to i8*
  call void @free(i8* %166)
  %167 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %59, 0
  %168 = bitcast double* %167 to i8*
  call void @free(i8* %168)
  ret i32 0
}

define private void @init_array(i32 %0, i32 %1, i32 %2, i32 %3, double* %4, double* %5, i64 %6, i64 %7, i64 %8, double* %9, double* %10, i64 %11, i64 %12, i64 %13, double* %14, double* %15, i64 %16, i64 %17, i64 %18, i64 %19, i64 %20, double* %21, double* %22, i64 %23, i64 %24, i64 %25, i64 %26, i64 %27, double* %28, double* %29, i64 %30, i64 %31, i64 %32, i64 %33, i64 %34, double* %35, double* %36, i64 %37, i64 %38, i64 %39, i64 %40, i64 %41) {
  %43 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %4, 0
  %44 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %43, double* %5, 1
  %45 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %44, i64 %6, 2
  %46 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %45, i64 %7, 3, 0
  %47 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %46, i64 %8, 4, 0
  %48 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %9, 0
  %49 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %48, double* %10, 1
  %50 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %49, i64 %11, 2
  %51 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %50, i64 %12, 3, 0
  %52 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %51, i64 %13, 4, 0
  %53 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %14, 0
  %54 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %53, double* %15, 1
  %55 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %54, i64 %16, 2
  %56 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %55, i64 %17, 3, 0
  %57 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %56, i64 %19, 4, 0
  %58 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %57, i64 %18, 3, 1
  %59 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %58, i64 %20, 4, 1
  %60 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %21, 0
  %61 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %60, double* %22, 1
  %62 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %61, i64 %23, 2
  %63 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %62, i64 %24, 3, 0
  %64 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %63, i64 %26, 4, 0
  %65 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %64, i64 %25, 3, 1
  %66 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %65, i64 %27, 4, 1
  %67 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %28, 0
  %68 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %67, double* %29, 1
  %69 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %68, i64 %30, 2
  %70 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %69, i64 %31, 3, 0
  %71 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %70, i64 %33, 4, 0
  %72 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %71, i64 %32, 3, 1
  %73 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %72, i64 %34, 4, 1
  %74 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %35, 0
  %75 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %74, double* %36, 1
  %76 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %75, i64 %37, 2
  %77 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %76, i64 %38, 3, 0
  %78 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %77, i64 %40, 4, 0
  %79 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %78, i64 %39, 3, 1
  %80 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %79, i64 %41, 4, 1
  %81 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %47, 1
  %82 = getelementptr double, double* %81, i64 0
  store double 1.500000e+00, double* %82, align 8
  %83 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %52, 1
  %84 = getelementptr double, double* %83, i64 0
  store double 1.200000e+00, double* %84, align 8
  br label %85

85:                                               ; preds = %109, %42
  %86 = phi i32 [ %110, %109 ], [ 0, %42 ]
  %87 = icmp slt i32 %86, %0
  br i1 %87, label %88, label %111

88:                                               ; preds = %85
  %89 = phi i32 [ 0, %85 ]
  %90 = phi i32 [ %86, %85 ]
  %91 = sext i32 %90 to i64
  br label %92

92:                                               ; preds = %95, %88
  %93 = phi i32 [ %108, %95 ], [ 0, %88 ]
  %94 = icmp slt i32 %93, %2
  br i1 %94, label %95, label %109

95:                                               ; preds = %92
  %96 = phi i32 [ %93, %92 ]
  %97 = sext i32 %96 to i64
  %98 = mul i32 %90, %96
  %99 = add i32 %98, 1
  %100 = srem i32 %99, %0
  %101 = sitofp i32 %100 to double
  %102 = sitofp i32 %0 to double
  %103 = fdiv double %101, %102
  %104 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %59, 1
  %105 = mul i64 %91, 2200
  %106 = add i64 %105, %97
  %107 = getelementptr double, double* %104, i64 %106
  store double %103, double* %107, align 8
  %108 = add i32 %96, 1
  br label %92

109:                                              ; preds = %92
  %110 = add i32 %90, 1
  br label %85

111:                                              ; preds = %85
  br label %112

112:                                              ; preds = %137, %111
  %113 = phi i32 [ %138, %137 ], [ 0, %111 ]
  %114 = icmp slt i32 %113, %2
  br i1 %114, label %115, label %139

115:                                              ; preds = %112
  %116 = phi i32 [ 0, %112 ]
  %117 = phi i32 [ %113, %112 ]
  %118 = sext i32 %117 to i64
  %119 = sext i32 %1 to i64
  br label %120

120:                                              ; preds = %124, %115
  %121 = phi i64 [ %136, %124 ], [ 0, %115 ]
  %122 = phi i32 [ %126, %124 ], [ 0, %115 ]
  %123 = icmp slt i64 %121, %119
  br i1 %123, label %124, label %137

124:                                              ; preds = %120
  %125 = sext i32 %122 to i64
  %126 = add i32 %122, 1
  %127 = mul i32 %117, %126
  %128 = srem i32 %127, %1
  %129 = sitofp i32 %128 to double
  %130 = sitofp i32 %1 to double
  %131 = fdiv double %129, %130
  %132 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %66, 1
  %133 = mul i64 %118, 1800
  %134 = add i64 %133, %125
  %135 = getelementptr double, double* %132, i64 %134
  store double %131, double* %135, align 8
  %136 = add i64 %121, 1
  br label %120

137:                                              ; preds = %120
  %138 = add i32 %117, 1
  br label %112

139:                                              ; preds = %112
  br label %140

140:                                              ; preds = %165, %139
  %141 = phi i32 [ %166, %165 ], [ 0, %139 ]
  %142 = icmp slt i32 %141, %1
  br i1 %142, label %143, label %167

143:                                              ; preds = %140
  %144 = phi i32 [ 0, %140 ]
  %145 = phi i32 [ %141, %140 ]
  %146 = sext i32 %145 to i64
  br label %147

147:                                              ; preds = %150, %143
  %148 = phi i32 [ %164, %150 ], [ 0, %143 ]
  %149 = icmp slt i32 %148, %3
  br i1 %149, label %150, label %165

150:                                              ; preds = %147
  %151 = phi i32 [ %148, %147 ]
  %152 = sext i32 %151 to i64
  %153 = add i32 %151, 3
  %154 = mul i32 %145, %153
  %155 = add i32 %154, 1
  %156 = srem i32 %155, %3
  %157 = sitofp i32 %156 to double
  %158 = sitofp i32 %3 to double
  %159 = fdiv double %157, %158
  %160 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %73, 1
  %161 = mul i64 %146, 2400
  %162 = add i64 %161, %152
  %163 = getelementptr double, double* %160, i64 %162
  store double %159, double* %163, align 8
  %164 = add i32 %151, 1
  br label %147

165:                                              ; preds = %147
  %166 = add i32 %145, 1
  br label %140

167:                                              ; preds = %140
  br label %168

168:                                              ; preds = %191, %167
  %169 = phi i32 [ %192, %191 ], [ 0, %167 ]
  %170 = icmp slt i32 %169, %0
  br i1 %170, label %171, label %193

171:                                              ; preds = %168
  %172 = phi i32 [ %169, %168 ]
  %173 = sext i32 %172 to i64
  br label %174

174:                                              ; preds = %177, %171
  %175 = phi i32 [ %190, %177 ], [ 0, %171 ]
  %176 = icmp slt i32 %175, %3
  br i1 %176, label %177, label %191

177:                                              ; preds = %174
  %178 = phi i32 [ %175, %174 ]
  %179 = sext i32 %178 to i64
  %180 = add i32 %178, 2
  %181 = mul i32 %172, %180
  %182 = srem i32 %181, %2
  %183 = sitofp i32 %182 to double
  %184 = sitofp i32 %2 to double
  %185 = fdiv double %183, %184
  %186 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %80, 1
  %187 = mul i64 %173, 2400
  %188 = add i64 %187, %179
  %189 = getelementptr double, double* %186, i64 %188
  store double %185, double* %189, align 8
  %190 = add i32 %178, 1
  br label %174

191:                                              ; preds = %174
  %192 = add i32 %172, 1
  br label %168

193:                                              ; preds = %168
  ret void
}

declare void @polybench_timer_start()

define private void @kernel_2mm(i32 %0, i32 %1, i32 %2, i32 %3, double %4, double %5, double* %6, double* %7, i64 %8, i64 %9, i64 %10, i64 %11, i64 %12, double* %13, double* %14, i64 %15, i64 %16, i64 %17, i64 %18, i64 %19, double* %20, double* %21, i64 %22, i64 %23, i64 %24, i64 %25, i64 %26, double* %27, double* %28, i64 %29, i64 %30, i64 %31, i64 %32, i64 %33, double* %34, double* %35, i64 %36, i64 %37, i64 %38, i64 %39, i64 %40) {
  %42 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %6, 0
  %43 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %42, double* %7, 1
  %44 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %43, i64 %8, 2
  %45 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %44, i64 %9, 3, 0
  %46 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %45, i64 %11, 4, 0
  %47 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %46, i64 %10, 3, 1
  %48 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %47, i64 %12, 4, 1
  %49 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %13, 0
  %50 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %49, double* %14, 1
  %51 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %50, i64 %15, 2
  %52 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %51, i64 %16, 3, 0
  %53 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %52, i64 %18, 4, 0
  %54 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %53, i64 %17, 3, 1
  %55 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %54, i64 %19, 4, 1
  %56 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %20, 0
  %57 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %56, double* %21, 1
  %58 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %57, i64 %22, 2
  %59 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %58, i64 %23, 3, 0
  %60 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %59, i64 %25, 4, 0
  %61 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %60, i64 %24, 3, 1
  %62 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %61, i64 %26, 4, 1
  %63 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %27, 0
  %64 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %63, double* %28, 1
  %65 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %64, i64 %29, 2
  %66 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %65, i64 %30, 3, 0
  %67 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %66, i64 %32, 4, 0
  %68 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %67, i64 %31, 3, 1
  %69 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %68, i64 %33, 4, 1
  %70 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %34, 0
  %71 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %70, double* %35, 1
  %72 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %71, i64 %36, 2
  %73 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %72, i64 %37, 3, 0
  %74 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %73, i64 %39, 4, 0
  %75 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %74, i64 %38, 3, 1
  %76 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %75, i64 %40, 4, 1
  %77 = sext i32 %1 to i64
  %78 = sext i32 %2 to i64
  %79 = sext i32 %3 to i64
  %80 = sext i32 %0 to i64
  br label %81

81:                                               ; preds = %122, %41
  %82 = phi i64 [ %123, %122 ], [ 0, %41 ]
  %83 = icmp slt i64 %82, %80
  br i1 %83, label %84, label %124

84:                                               ; preds = %81
  br label %85

85:                                               ; preds = %120, %84
  %86 = phi i64 [ %121, %120 ], [ 0, %84 ]
  %87 = icmp slt i64 %86, %77
  br i1 %87, label %88, label %122

88:                                               ; preds = %85
  %89 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %48, 1
  %90 = mul i64 %82, 1800
  %91 = add i64 %90, %86
  %92 = getelementptr double, double* %89, i64 %91
  store double 0.000000e+00, double* %92, align 8
  br label %93

93:                                               ; preds = %96, %88
  %94 = phi i64 [ %119, %96 ], [ 0, %88 ]
  %95 = icmp slt i64 %94, %78
  br i1 %95, label %96, label %120

96:                                               ; preds = %93
  %97 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %55, 1
  %98 = mul i64 %82, 2200
  %99 = add i64 %98, %94
  %100 = getelementptr double, double* %97, i64 %99
  %101 = load double, double* %100, align 8
  %102 = fmul double %4, %101
  %103 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %62, 1
  %104 = mul i64 %94, 1800
  %105 = add i64 %104, %86
  %106 = getelementptr double, double* %103, i64 %105
  %107 = load double, double* %106, align 8
  %108 = fmul double %102, %107
  %109 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %48, 1
  %110 = mul i64 %82, 1800
  %111 = add i64 %110, %86
  %112 = getelementptr double, double* %109, i64 %111
  %113 = load double, double* %112, align 8
  %114 = fadd double %113, %108
  %115 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %48, 1
  %116 = mul i64 %82, 1800
  %117 = add i64 %116, %86
  %118 = getelementptr double, double* %115, i64 %117
  store double %114, double* %118, align 8
  %119 = add i64 %94, 1
  br label %93

120:                                              ; preds = %93
  %121 = add i64 %86, 1
  br label %85

122:                                              ; preds = %85
  %123 = add i64 %82, 1
  br label %81

124:                                              ; preds = %81
  br label %125

125:                                              ; preds = %171, %124
  %126 = phi i64 [ %172, %171 ], [ 0, %124 ]
  %127 = icmp slt i64 %126, %80
  br i1 %127, label %128, label %173

128:                                              ; preds = %125
  br label %129

129:                                              ; preds = %169, %128
  %130 = phi i64 [ %170, %169 ], [ 0, %128 ]
  %131 = icmp slt i64 %130, %79
  br i1 %131, label %132, label %171

132:                                              ; preds = %129
  %133 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %76, 1
  %134 = mul i64 %126, 2400
  %135 = add i64 %134, %130
  %136 = getelementptr double, double* %133, i64 %135
  %137 = load double, double* %136, align 8
  %138 = fmul double %137, %5
  %139 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %76, 1
  %140 = mul i64 %126, 2400
  %141 = add i64 %140, %130
  %142 = getelementptr double, double* %139, i64 %141
  store double %138, double* %142, align 8
  br label %143

143:                                              ; preds = %146, %132
  %144 = phi i64 [ %168, %146 ], [ 0, %132 ]
  %145 = icmp slt i64 %144, %77
  br i1 %145, label %146, label %169

146:                                              ; preds = %143
  %147 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %48, 1
  %148 = mul i64 %126, 1800
  %149 = add i64 %148, %144
  %150 = getelementptr double, double* %147, i64 %149
  %151 = load double, double* %150, align 8
  %152 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %69, 1
  %153 = mul i64 %144, 2400
  %154 = add i64 %153, %130
  %155 = getelementptr double, double* %152, i64 %154
  %156 = load double, double* %155, align 8
  %157 = fmul double %151, %156
  %158 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %76, 1
  %159 = mul i64 %126, 2400
  %160 = add i64 %159, %130
  %161 = getelementptr double, double* %158, i64 %160
  %162 = load double, double* %161, align 8
  %163 = fadd double %162, %157
  %164 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %76, 1
  %165 = mul i64 %126, 2400
  %166 = add i64 %165, %130
  %167 = getelementptr double, double* %164, i64 %166
  store double %163, double* %167, align 8
  %168 = add i64 %144, 1
  br label %143

169:                                              ; preds = %143
  %170 = add i64 %130, 1
  br label %129

171:                                              ; preds = %129
  %172 = add i64 %126, 1
  br label %125

173:                                              ; preds = %125
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
  %43 = mul i64 %26, 2400
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


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
@str3 = internal constant [2 x i8] c"G\00"
@str2 = internal constant [15 x i8] c"begin dump: %s\00"
@str1 = internal constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00"
@stderr = external global %struct._IO_FILE*
@str0 = internal constant [1 x i8] zeroinitializer

declare i8* @malloc(i64)

declare void @free(i8*)

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...)

declare i32 @strcmp(i8*, i8*)

define i32 @main(i32 %0, i8** %1) {
  %3 = call i8* @malloc(i64 mul (i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 2880000))
  %4 = bitcast i8* %3 to double*
  %5 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %4, 0
  %6 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %5, double* %4, 1
  %7 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %6, i64 0, 2
  %8 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %7, i64 1600, 3, 0
  %9 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %8, i64 1800, 3, 1
  %10 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %9, i64 1800, 4, 0
  %11 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %10, i64 1, 4, 1
  %12 = call i8* @malloc(i64 mul (i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 3200000))
  %13 = bitcast i8* %12 to double*
  %14 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %13, 0
  %15 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %14, double* %13, 1
  %16 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %15, i64 0, 2
  %17 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %16, i64 1600, 3, 0
  %18 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %17, i64 2000, 3, 1
  %19 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %18, i64 2000, 4, 0
  %20 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %19, i64 1, 4, 1
  %21 = call i8* @malloc(i64 mul (i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 3600000))
  %22 = bitcast i8* %21 to double*
  %23 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %22, 0
  %24 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, double* %22, 1
  %25 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %24, i64 0, 2
  %26 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %25, i64 2000, 3, 0
  %27 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %26, i64 1800, 3, 1
  %28 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %27, i64 1800, 4, 0
  %29 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %28, i64 1, 4, 1
  %30 = call i8* @malloc(i64 mul (i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 3960000))
  %31 = bitcast i8* %30 to double*
  %32 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %31, 0
  %33 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %32, double* %31, 1
  %34 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %33, i64 0, 2
  %35 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %34, i64 1800, 3, 0
  %36 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %35, i64 2200, 3, 1
  %37 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %36, i64 2200, 4, 0
  %38 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %37, i64 1, 4, 1
  %39 = call i8* @malloc(i64 mul (i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 4320000))
  %40 = bitcast i8* %39 to double*
  %41 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %40, 0
  %42 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %41, double* %40, 1
  %43 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %42, i64 0, 2
  %44 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %43, i64 1800, 3, 0
  %45 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %44, i64 2400, 3, 1
  %46 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %45, i64 2400, 4, 0
  %47 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %46, i64 1, 4, 1
  %48 = call i8* @malloc(i64 mul (i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 5280000))
  %49 = bitcast i8* %48 to double*
  %50 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %49, 0
  %51 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %50, double* %49, 1
  %52 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %51, i64 0, 2
  %53 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %52, i64 2400, 3, 0
  %54 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %53, i64 2200, 3, 1
  %55 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %54, i64 2200, 4, 0
  %56 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %55, i64 1, 4, 1
  %57 = call i8* @malloc(i64 mul (i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 3520000))
  %58 = bitcast i8* %57 to double*
  %59 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %58, 0
  %60 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %59, double* %58, 1
  %61 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %60, i64 0, 2
  %62 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %61, i64 1600, 3, 0
  %63 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %62, i64 2200, 3, 1
  %64 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %63, i64 2200, 4, 0
  %65 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %64, i64 1, 4, 1
  %66 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, 0
  %67 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, 1
  %68 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, 2
  %69 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, 3, 0
  %70 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, 3, 1
  %71 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, 4, 0
  %72 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, 4, 1
  %73 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 0
  %74 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 1
  %75 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 2
  %76 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 3, 0
  %77 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 3, 1
  %78 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 4, 0
  %79 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 4, 1
  %80 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %47, 0
  %81 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %47, 1
  %82 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %47, 2
  %83 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %47, 3, 0
  %84 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %47, 3, 1
  %85 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %47, 4, 0
  %86 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %47, 4, 1
  %87 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %56, 0
  %88 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %56, 1
  %89 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %56, 2
  %90 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %56, 3, 0
  %91 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %56, 3, 1
  %92 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %56, 4, 0
  %93 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %56, 4, 1
  call void @init_array(i32 1600, i32 1800, i32 2000, i32 2200, i32 2400, double* %66, double* %67, i64 %68, i64 %69, i64 %70, i64 %71, i64 %72, double* %73, double* %74, i64 %75, i64 %76, i64 %77, i64 %78, i64 %79, double* %80, double* %81, i64 %82, i64 %83, i64 %84, i64 %85, i64 %86, double* %87, double* %88, i64 %89, i64 %90, i64 %91, i64 %92, i64 %93)
  call void @polybench_timer_start()
  %94 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 0
  %95 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 1
  %96 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 2
  %97 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 3, 0
  %98 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 3, 1
  %99 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 4, 0
  %100 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 4, 1
  %101 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, 0
  %102 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, 1
  %103 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, 2
  %104 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, 3, 0
  %105 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, 3, 1
  %106 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, 4, 0
  %107 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, 4, 1
  %108 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 0
  %109 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 1
  %110 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 2
  %111 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 3, 0
  %112 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 3, 1
  %113 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 4, 0
  %114 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 4, 1
  %115 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %38, 0
  %116 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %38, 1
  %117 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %38, 2
  %118 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %38, 3, 0
  %119 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %38, 3, 1
  %120 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %38, 4, 0
  %121 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %38, 4, 1
  %122 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %47, 0
  %123 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %47, 1
  %124 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %47, 2
  %125 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %47, 3, 0
  %126 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %47, 3, 1
  %127 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %47, 4, 0
  %128 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %47, 4, 1
  %129 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %56, 0
  %130 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %56, 1
  %131 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %56, 2
  %132 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %56, 3, 0
  %133 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %56, 3, 1
  %134 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %56, 4, 0
  %135 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %56, 4, 1
  %136 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %65, 0
  %137 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %65, 1
  %138 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %65, 2
  %139 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %65, 3, 0
  %140 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %65, 3, 1
  %141 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %65, 4, 0
  %142 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %65, 4, 1
  call void @kernel_3mm(i32 1600, i32 1800, i32 2000, i32 2200, i32 2400, double* %94, double* %95, i64 %96, i64 %97, i64 %98, i64 %99, i64 %100, double* %101, double* %102, i64 %103, i64 %104, i64 %105, i64 %106, i64 %107, double* %108, double* %109, i64 %110, i64 %111, i64 %112, i64 %113, i64 %114, double* %115, double* %116, i64 %117, i64 %118, i64 %119, i64 %120, i64 %121, double* %122, double* %123, i64 %124, i64 %125, i64 %126, i64 %127, i64 %128, double* %129, double* %130, i64 %131, i64 %132, i64 %133, i64 %134, i64 %135, double* %136, double* %137, i64 %138, i64 %139, i64 %140, i64 %141, i64 %142)
  call void @polybench_timer_stop()
  call void @polybench_timer_print()
  %143 = icmp sgt i32 %0, 42
  br i1 %143, label %144, label %150

144:                                              ; preds = %2
  %145 = getelementptr i8*, i8** %1, i64 0
  %146 = load i8*, i8** %145, align 8
  %147 = call i32 @strcmp(i8* %146, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @str0, i64 0, i64 0))
  %148 = trunc i32 %147 to i1
  %149 = xor i1 %148, true
  br label %151

150:                                              ; preds = %2
  br label %151

151:                                              ; preds = %144, %150
  %152 = phi i1 [ %149, %144 ], [ false, %150 ]
  br label %153

153:                                              ; preds = %151
  br i1 %152, label %154, label %162

154:                                              ; preds = %153
  %155 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %65, 0
  %156 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %65, 1
  %157 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %65, 2
  %158 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %65, 3, 0
  %159 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %65, 3, 1
  %160 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %65, 4, 0
  %161 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %65, 4, 1
  call void @print_array(i32 1600, i32 2200, double* %155, double* %156, i64 %157, i64 %158, i64 %159, i64 %160, i64 %161)
  br label %162

162:                                              ; preds = %154, %153
  %163 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %11, 0
  %164 = bitcast double* %163 to i8*
  call void @free(i8* %164)
  %165 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, 0
  %166 = bitcast double* %165 to i8*
  call void @free(i8* %166)
  %167 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %29, 0
  %168 = bitcast double* %167 to i8*
  call void @free(i8* %168)
  %169 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %38, 0
  %170 = bitcast double* %169 to i8*
  call void @free(i8* %170)
  %171 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %47, 0
  %172 = bitcast double* %171 to i8*
  call void @free(i8* %172)
  %173 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %56, 0
  %174 = bitcast double* %173 to i8*
  call void @free(i8* %174)
  %175 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %65, 0
  %176 = bitcast double* %175 to i8*
  call void @free(i8* %176)
  ret i32 0
}

define private void @init_array(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, double* %5, double* %6, i64 %7, i64 %8, i64 %9, i64 %10, i64 %11, double* %12, double* %13, i64 %14, i64 %15, i64 %16, i64 %17, i64 %18, double* %19, double* %20, i64 %21, i64 %22, i64 %23, i64 %24, i64 %25, double* %26, double* %27, i64 %28, i64 %29, i64 %30, i64 %31, i64 %32) {
  %34 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %5, 0
  %35 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %34, double* %6, 1
  %36 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %35, i64 %7, 2
  %37 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %36, i64 %8, 3, 0
  %38 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %37, i64 %10, 4, 0
  %39 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %38, i64 %9, 3, 1
  %40 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %39, i64 %11, 4, 1
  %41 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %12, 0
  %42 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %41, double* %13, 1
  %43 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %42, i64 %14, 2
  %44 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %43, i64 %15, 3, 0
  %45 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %44, i64 %17, 4, 0
  %46 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %45, i64 %16, 3, 1
  %47 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %46, i64 %18, 4, 1
  %48 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %19, 0
  %49 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %48, double* %20, 1
  %50 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %49, i64 %21, 2
  %51 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %50, i64 %22, 3, 0
  %52 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %51, i64 %24, 4, 0
  %53 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %52, i64 %23, 3, 1
  %54 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %53, i64 %25, 4, 1
  %55 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %26, 0
  %56 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %55, double* %27, 1
  %57 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %56, i64 %28, 2
  %58 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %57, i64 %29, 3, 0
  %59 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %58, i64 %31, 4, 0
  %60 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %59, i64 %30, 3, 1
  %61 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %60, i64 %32, 4, 1
  br label %62

62:                                               ; preds = %87, %33
  %63 = phi i32 [ %88, %87 ], [ 0, %33 ]
  %64 = icmp slt i32 %63, %0
  br i1 %64, label %65, label %89

65:                                               ; preds = %62
  %66 = phi i32 [ 0, %62 ]
  %67 = phi i32 [ %63, %62 ]
  %68 = sext i32 %67 to i64
  br label %69

69:                                               ; preds = %72, %65
  %70 = phi i32 [ %86, %72 ], [ 0, %65 ]
  %71 = icmp slt i32 %70, %2
  br i1 %71, label %72, label %87

72:                                               ; preds = %69
  %73 = phi i32 [ %70, %69 ]
  %74 = sext i32 %73 to i64
  %75 = mul i32 %67, %73
  %76 = add i32 %75, 1
  %77 = srem i32 %76, %0
  %78 = sitofp i32 %77 to double
  %79 = mul i32 %0, 5
  %80 = sitofp i32 %79 to double
  %81 = fdiv double %78, %80
  %82 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %40, 1
  %83 = mul i64 %68, 2000
  %84 = add i64 %83, %74
  %85 = getelementptr double, double* %82, i64 %84
  store double %81, double* %85, align 8
  %86 = add i32 %73, 1
  br label %69

87:                                               ; preds = %69
  %88 = add i32 %67, 1
  br label %62

89:                                               ; preds = %62
  br label %90

90:                                               ; preds = %117, %89
  %91 = phi i32 [ %118, %117 ], [ 0, %89 ]
  %92 = icmp slt i32 %91, %2
  br i1 %92, label %93, label %119

93:                                               ; preds = %90
  %94 = phi i32 [ 0, %90 ]
  %95 = phi i32 [ %91, %90 ]
  %96 = sext i32 %95 to i64
  %97 = sext i32 %1 to i64
  br label %98

98:                                               ; preds = %102, %93
  %99 = phi i64 [ %116, %102 ], [ 0, %93 ]
  %100 = phi i32 [ %104, %102 ], [ 0, %93 ]
  %101 = icmp slt i64 %99, %97
  br i1 %101, label %102, label %117

102:                                              ; preds = %98
  %103 = sext i32 %100 to i64
  %104 = add i32 %100, 1
  %105 = mul i32 %95, %104
  %106 = add i32 %105, 2
  %107 = srem i32 %106, %1
  %108 = sitofp i32 %107 to double
  %109 = mul i32 %1, 5
  %110 = sitofp i32 %109 to double
  %111 = fdiv double %108, %110
  %112 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %47, 1
  %113 = mul i64 %96, 1800
  %114 = add i64 %113, %103
  %115 = getelementptr double, double* %112, i64 %114
  store double %111, double* %115, align 8
  %116 = add i64 %99, 1
  br label %98

117:                                              ; preds = %98
  %118 = add i32 %95, 1
  br label %90

119:                                              ; preds = %90
  br label %120

120:                                              ; preds = %145, %119
  %121 = phi i32 [ %146, %145 ], [ 0, %119 ]
  %122 = icmp slt i32 %121, %1
  br i1 %122, label %123, label %147

123:                                              ; preds = %120
  %124 = phi i32 [ 0, %120 ]
  %125 = phi i32 [ %121, %120 ]
  %126 = sext i32 %125 to i64
  br label %127

127:                                              ; preds = %130, %123
  %128 = phi i32 [ %144, %130 ], [ 0, %123 ]
  %129 = icmp slt i32 %128, %4
  br i1 %129, label %130, label %145

130:                                              ; preds = %127
  %131 = phi i32 [ %128, %127 ]
  %132 = sext i32 %131 to i64
  %133 = add i32 %131, 3
  %134 = mul i32 %125, %133
  %135 = srem i32 %134, %3
  %136 = sitofp i32 %135 to double
  %137 = mul i32 %3, 5
  %138 = sitofp i32 %137 to double
  %139 = fdiv double %136, %138
  %140 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %54, 1
  %141 = mul i64 %126, 2400
  %142 = add i64 %141, %132
  %143 = getelementptr double, double* %140, i64 %142
  store double %139, double* %143, align 8
  %144 = add i32 %131, 1
  br label %127

145:                                              ; preds = %127
  %146 = add i32 %125, 1
  br label %120

147:                                              ; preds = %120
  br label %148

148:                                              ; preds = %173, %147
  %149 = phi i32 [ %174, %173 ], [ 0, %147 ]
  %150 = icmp slt i32 %149, %4
  br i1 %150, label %151, label %175

151:                                              ; preds = %148
  %152 = phi i32 [ %149, %148 ]
  %153 = sext i32 %152 to i64
  br label %154

154:                                              ; preds = %157, %151
  %155 = phi i32 [ %172, %157 ], [ 0, %151 ]
  %156 = icmp slt i32 %155, %3
  br i1 %156, label %157, label %173

157:                                              ; preds = %154
  %158 = phi i32 [ %155, %154 ]
  %159 = sext i32 %158 to i64
  %160 = add i32 %158, 2
  %161 = mul i32 %152, %160
  %162 = add i32 %161, 2
  %163 = srem i32 %162, %2
  %164 = sitofp i32 %163 to double
  %165 = mul i32 %2, 5
  %166 = sitofp i32 %165 to double
  %167 = fdiv double %164, %166
  %168 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %61, 1
  %169 = mul i64 %153, 2200
  %170 = add i64 %169, %159
  %171 = getelementptr double, double* %168, i64 %170
  store double %167, double* %171, align 8
  %172 = add i32 %158, 1
  br label %154

173:                                              ; preds = %154
  %174 = add i32 %152, 1
  br label %148

175:                                              ; preds = %148
  ret void
}

declare void @polybench_timer_start()

define private void @kernel_3mm(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, double* %5, double* %6, i64 %7, i64 %8, i64 %9, i64 %10, i64 %11, double* %12, double* %13, i64 %14, i64 %15, i64 %16, i64 %17, i64 %18, double* %19, double* %20, i64 %21, i64 %22, i64 %23, i64 %24, i64 %25, double* %26, double* %27, i64 %28, i64 %29, i64 %30, i64 %31, i64 %32, double* %33, double* %34, i64 %35, i64 %36, i64 %37, i64 %38, i64 %39, double* %40, double* %41, i64 %42, i64 %43, i64 %44, i64 %45, i64 %46, double* %47, double* %48, i64 %49, i64 %50, i64 %51, i64 %52, i64 %53) {
  %55 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %5, 0
  %56 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %55, double* %6, 1
  %57 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %56, i64 %7, 2
  %58 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %57, i64 %8, 3, 0
  %59 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %58, i64 %10, 4, 0
  %60 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %59, i64 %9, 3, 1
  %61 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %60, i64 %11, 4, 1
  %62 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %12, 0
  %63 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %62, double* %13, 1
  %64 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %63, i64 %14, 2
  %65 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %64, i64 %15, 3, 0
  %66 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %65, i64 %17, 4, 0
  %67 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %66, i64 %16, 3, 1
  %68 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %67, i64 %18, 4, 1
  %69 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %19, 0
  %70 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %69, double* %20, 1
  %71 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %70, i64 %21, 2
  %72 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %71, i64 %22, 3, 0
  %73 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %72, i64 %24, 4, 0
  %74 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %73, i64 %23, 3, 1
  %75 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %74, i64 %25, 4, 1
  %76 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %26, 0
  %77 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %76, double* %27, 1
  %78 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %77, i64 %28, 2
  %79 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %78, i64 %29, 3, 0
  %80 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %79, i64 %31, 4, 0
  %81 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %80, i64 %30, 3, 1
  %82 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %81, i64 %32, 4, 1
  %83 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %33, 0
  %84 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %83, double* %34, 1
  %85 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %84, i64 %35, 2
  %86 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %85, i64 %36, 3, 0
  %87 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %86, i64 %38, 4, 0
  %88 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %87, i64 %37, 3, 1
  %89 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %88, i64 %39, 4, 1
  %90 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %40, 0
  %91 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %90, double* %41, 1
  %92 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %91, i64 %42, 2
  %93 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %92, i64 %43, 3, 0
  %94 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %93, i64 %45, 4, 0
  %95 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %94, i64 %44, 3, 1
  %96 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %95, i64 %46, 4, 1
  %97 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %47, 0
  %98 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %97, double* %48, 1
  %99 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %98, i64 %49, 2
  %100 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %99, i64 %50, 3, 0
  %101 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %100, i64 %52, 4, 0
  %102 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %101, i64 %51, 3, 1
  %103 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %102, i64 %53, 4, 1
  %104 = sext i32 %1 to i64
  %105 = sext i32 %2 to i64
  %106 = sext i32 %3 to i64
  %107 = sext i32 %4 to i64
  %108 = sext i32 %0 to i64
  br label %109

109:                                              ; preds = %149, %54
  %110 = phi i64 [ %150, %149 ], [ 0, %54 ]
  %111 = icmp slt i64 %110, %108
  br i1 %111, label %112, label %151

112:                                              ; preds = %109
  br label %113

113:                                              ; preds = %147, %112
  %114 = phi i64 [ %148, %147 ], [ 0, %112 ]
  %115 = icmp slt i64 %114, %104
  br i1 %115, label %116, label %149

116:                                              ; preds = %113
  %117 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %61, 1
  %118 = mul i64 %110, 1800
  %119 = add i64 %118, %114
  %120 = getelementptr double, double* %117, i64 %119
  store double 0.000000e+00, double* %120, align 8
  br label %121

121:                                              ; preds = %124, %116
  %122 = phi i64 [ %146, %124 ], [ 0, %116 ]
  %123 = icmp slt i64 %122, %105
  br i1 %123, label %124, label %147

124:                                              ; preds = %121
  %125 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %68, 1
  %126 = mul i64 %110, 2000
  %127 = add i64 %126, %122
  %128 = getelementptr double, double* %125, i64 %127
  %129 = load double, double* %128, align 8
  %130 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %75, 1
  %131 = mul i64 %122, 1800
  %132 = add i64 %131, %114
  %133 = getelementptr double, double* %130, i64 %132
  %134 = load double, double* %133, align 8
  %135 = fmul double %129, %134
  %136 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %61, 1
  %137 = mul i64 %110, 1800
  %138 = add i64 %137, %114
  %139 = getelementptr double, double* %136, i64 %138
  %140 = load double, double* %139, align 8
  %141 = fadd double %140, %135
  %142 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %61, 1
  %143 = mul i64 %110, 1800
  %144 = add i64 %143, %114
  %145 = getelementptr double, double* %142, i64 %144
  store double %141, double* %145, align 8
  %146 = add i64 %122, 1
  br label %121

147:                                              ; preds = %121
  %148 = add i64 %114, 1
  br label %113

149:                                              ; preds = %113
  %150 = add i64 %110, 1
  br label %109

151:                                              ; preds = %109
  br label %152

152:                                              ; preds = %192, %151
  %153 = phi i64 [ %193, %192 ], [ 0, %151 ]
  %154 = icmp slt i64 %153, %104
  br i1 %154, label %155, label %194

155:                                              ; preds = %152
  br label %156

156:                                              ; preds = %190, %155
  %157 = phi i64 [ %191, %190 ], [ 0, %155 ]
  %158 = icmp slt i64 %157, %106
  br i1 %158, label %159, label %192

159:                                              ; preds = %156
  %160 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %82, 1
  %161 = mul i64 %153, 2200
  %162 = add i64 %161, %157
  %163 = getelementptr double, double* %160, i64 %162
  store double 0.000000e+00, double* %163, align 8
  br label %164

164:                                              ; preds = %167, %159
  %165 = phi i64 [ %189, %167 ], [ 0, %159 ]
  %166 = icmp slt i64 %165, %107
  br i1 %166, label %167, label %190

167:                                              ; preds = %164
  %168 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %89, 1
  %169 = mul i64 %153, 2400
  %170 = add i64 %169, %165
  %171 = getelementptr double, double* %168, i64 %170
  %172 = load double, double* %171, align 8
  %173 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %96, 1
  %174 = mul i64 %165, 2200
  %175 = add i64 %174, %157
  %176 = getelementptr double, double* %173, i64 %175
  %177 = load double, double* %176, align 8
  %178 = fmul double %172, %177
  %179 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %82, 1
  %180 = mul i64 %153, 2200
  %181 = add i64 %180, %157
  %182 = getelementptr double, double* %179, i64 %181
  %183 = load double, double* %182, align 8
  %184 = fadd double %183, %178
  %185 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %82, 1
  %186 = mul i64 %153, 2200
  %187 = add i64 %186, %157
  %188 = getelementptr double, double* %185, i64 %187
  store double %184, double* %188, align 8
  %189 = add i64 %165, 1
  br label %164

190:                                              ; preds = %164
  %191 = add i64 %157, 1
  br label %156

192:                                              ; preds = %156
  %193 = add i64 %153, 1
  br label %152

194:                                              ; preds = %152
  br label %195

195:                                              ; preds = %235, %194
  %196 = phi i64 [ %236, %235 ], [ 0, %194 ]
  %197 = icmp slt i64 %196, %108
  br i1 %197, label %198, label %237

198:                                              ; preds = %195
  br label %199

199:                                              ; preds = %233, %198
  %200 = phi i64 [ %234, %233 ], [ 0, %198 ]
  %201 = icmp slt i64 %200, %106
  br i1 %201, label %202, label %235

202:                                              ; preds = %199
  %203 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %103, 1
  %204 = mul i64 %196, 2200
  %205 = add i64 %204, %200
  %206 = getelementptr double, double* %203, i64 %205
  store double 0.000000e+00, double* %206, align 8
  br label %207

207:                                              ; preds = %210, %202
  %208 = phi i64 [ %232, %210 ], [ 0, %202 ]
  %209 = icmp slt i64 %208, %104
  br i1 %209, label %210, label %233

210:                                              ; preds = %207
  %211 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %61, 1
  %212 = mul i64 %196, 1800
  %213 = add i64 %212, %208
  %214 = getelementptr double, double* %211, i64 %213
  %215 = load double, double* %214, align 8
  %216 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %82, 1
  %217 = mul i64 %208, 2200
  %218 = add i64 %217, %200
  %219 = getelementptr double, double* %216, i64 %218
  %220 = load double, double* %219, align 8
  %221 = fmul double %215, %220
  %222 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %103, 1
  %223 = mul i64 %196, 2200
  %224 = add i64 %223, %200
  %225 = getelementptr double, double* %222, i64 %224
  %226 = load double, double* %225, align 8
  %227 = fadd double %226, %221
  %228 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %103, 1
  %229 = mul i64 %196, 2200
  %230 = add i64 %229, %200
  %231 = getelementptr double, double* %228, i64 %230
  store double %227, double* %231, align 8
  %232 = add i64 %208, 1
  br label %207

233:                                              ; preds = %207
  %234 = add i64 %200, 1
  br label %199

235:                                              ; preds = %199
  %236 = add i64 %196, 1
  br label %195

237:                                              ; preds = %195
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
  %43 = mul i64 %26, 2200
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


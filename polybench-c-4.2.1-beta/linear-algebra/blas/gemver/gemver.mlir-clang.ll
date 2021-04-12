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
@str3 = internal constant [2 x i8] c"w\00"
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
  %15 = call i8* @malloc(i64 mul (i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 16000000))
  %16 = bitcast i8* %15 to double*
  %17 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %16, 0
  %18 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %17, double* %16, 1
  %19 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %18, i64 0, 2
  %20 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %19, i64 4000, 3, 0
  %21 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %20, i64 4000, 3, 1
  %22 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %21, i64 4000, 4, 0
  %23 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %22, i64 1, 4, 1
  %24 = call i8* @malloc(i64 mul (i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 4000))
  %25 = bitcast i8* %24 to double*
  %26 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %25, 0
  %27 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %26, double* %25, 1
  %28 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %27, i64 0, 2
  %29 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %28, i64 4000, 3, 0
  %30 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %29, i64 1, 4, 0
  %31 = call i8* @malloc(i64 mul (i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 4000))
  %32 = bitcast i8* %31 to double*
  %33 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %32, 0
  %34 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %33, double* %32, 1
  %35 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %34, i64 0, 2
  %36 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %35, i64 4000, 3, 0
  %37 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %36, i64 1, 4, 0
  %38 = call i8* @malloc(i64 mul (i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 4000))
  %39 = bitcast i8* %38 to double*
  %40 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %39, 0
  %41 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %40, double* %39, 1
  %42 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %41, i64 0, 2
  %43 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %42, i64 4000, 3, 0
  %44 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %43, i64 1, 4, 0
  %45 = call i8* @malloc(i64 mul (i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 4000))
  %46 = bitcast i8* %45 to double*
  %47 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %46, 0
  %48 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %47, double* %46, 1
  %49 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %48, i64 0, 2
  %50 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %49, i64 4000, 3, 0
  %51 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %50, i64 1, 4, 0
  %52 = call i8* @malloc(i64 mul (i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 4000))
  %53 = bitcast i8* %52 to double*
  %54 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %53, 0
  %55 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %54, double* %53, 1
  %56 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %55, i64 0, 2
  %57 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %56, i64 4000, 3, 0
  %58 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %57, i64 1, 4, 0
  %59 = call i8* @malloc(i64 mul (i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 4000))
  %60 = bitcast i8* %59 to double*
  %61 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %60, 0
  %62 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %61, double* %60, 1
  %63 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %62, i64 0, 2
  %64 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %63, i64 4000, 3, 0
  %65 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %64, i64 1, 4, 0
  %66 = call i8* @malloc(i64 mul (i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 4000))
  %67 = bitcast i8* %66 to double*
  %68 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %67, 0
  %69 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %68, double* %67, 1
  %70 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %69, i64 0, 2
  %71 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %70, i64 4000, 3, 0
  %72 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %71, i64 1, 4, 0
  %73 = call i8* @malloc(i64 mul (i64 ptrtoint (double* getelementptr (double, double* null, i32 1) to i64), i64 4000))
  %74 = bitcast i8* %73 to double*
  %75 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %74, 0
  %76 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %75, double* %74, 1
  %77 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %76, i64 0, 2
  %78 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %77, i64 4000, 3, 0
  %79 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %78, i64 1, 4, 0
  %80 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %8, 0
  %81 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %8, 1
  %82 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %8, 2
  %83 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %8, 3, 0
  %84 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %8, 4, 0
  %85 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %14, 0
  %86 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %14, 1
  %87 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %14, 2
  %88 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %14, 3, 0
  %89 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %14, 4, 0
  %90 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 0
  %91 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 1
  %92 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 2
  %93 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 3, 0
  %94 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 3, 1
  %95 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 4, 0
  %96 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 4, 1
  %97 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %30, 0
  %98 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %30, 1
  %99 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %30, 2
  %100 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %30, 3, 0
  %101 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %30, 4, 0
  %102 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %37, 0
  %103 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %37, 1
  %104 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %37, 2
  %105 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %37, 3, 0
  %106 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %37, 4, 0
  %107 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %44, 0
  %108 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %44, 1
  %109 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %44, 2
  %110 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %44, 3, 0
  %111 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %44, 4, 0
  %112 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %51, 0
  %113 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %51, 1
  %114 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %51, 2
  %115 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %51, 3, 0
  %116 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %51, 4, 0
  %117 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %58, 0
  %118 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %58, 1
  %119 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %58, 2
  %120 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %58, 3, 0
  %121 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %58, 4, 0
  %122 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %65, 0
  %123 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %65, 1
  %124 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %65, 2
  %125 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %65, 3, 0
  %126 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %65, 4, 0
  %127 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %72, 0
  %128 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %72, 1
  %129 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %72, 2
  %130 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %72, 3, 0
  %131 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %72, 4, 0
  %132 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %79, 0
  %133 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %79, 1
  %134 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %79, 2
  %135 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %79, 3, 0
  %136 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %79, 4, 0
  call void @init_array(i32 4000, double* %80, double* %81, i64 %82, i64 %83, i64 %84, double* %85, double* %86, i64 %87, i64 %88, i64 %89, double* %90, double* %91, i64 %92, i64 %93, i64 %94, i64 %95, i64 %96, double* %97, double* %98, i64 %99, i64 %100, i64 %101, double* %102, double* %103, i64 %104, i64 %105, i64 %106, double* %107, double* %108, i64 %109, i64 %110, i64 %111, double* %112, double* %113, i64 %114, i64 %115, i64 %116, double* %117, double* %118, i64 %119, i64 %120, i64 %121, double* %122, double* %123, i64 %124, i64 %125, i64 %126, double* %127, double* %128, i64 %129, i64 %130, i64 %131, double* %132, double* %133, i64 %134, i64 %135, i64 %136)
  call void @polybench_timer_start()
  %137 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %8, 1
  %138 = getelementptr double, double* %137, i64 0
  %139 = load double, double* %138, align 8
  %140 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %14, 1
  %141 = getelementptr double, double* %140, i64 0
  %142 = load double, double* %141, align 8
  %143 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 0
  %144 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 1
  %145 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 2
  %146 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 3, 0
  %147 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 3, 1
  %148 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 4, 0
  %149 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 4, 1
  %150 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %30, 0
  %151 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %30, 1
  %152 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %30, 2
  %153 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %30, 3, 0
  %154 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %30, 4, 0
  %155 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %37, 0
  %156 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %37, 1
  %157 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %37, 2
  %158 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %37, 3, 0
  %159 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %37, 4, 0
  %160 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %44, 0
  %161 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %44, 1
  %162 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %44, 2
  %163 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %44, 3, 0
  %164 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %44, 4, 0
  %165 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %51, 0
  %166 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %51, 1
  %167 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %51, 2
  %168 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %51, 3, 0
  %169 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %51, 4, 0
  %170 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %58, 0
  %171 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %58, 1
  %172 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %58, 2
  %173 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %58, 3, 0
  %174 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %58, 4, 0
  %175 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %65, 0
  %176 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %65, 1
  %177 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %65, 2
  %178 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %65, 3, 0
  %179 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %65, 4, 0
  %180 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %72, 0
  %181 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %72, 1
  %182 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %72, 2
  %183 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %72, 3, 0
  %184 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %72, 4, 0
  %185 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %79, 0
  %186 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %79, 1
  %187 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %79, 2
  %188 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %79, 3, 0
  %189 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %79, 4, 0
  call void @kernel_gemver(i32 4000, double %139, double %142, double* %143, double* %144, i64 %145, i64 %146, i64 %147, i64 %148, i64 %149, double* %150, double* %151, i64 %152, i64 %153, i64 %154, double* %155, double* %156, i64 %157, i64 %158, i64 %159, double* %160, double* %161, i64 %162, i64 %163, i64 %164, double* %165, double* %166, i64 %167, i64 %168, i64 %169, double* %170, double* %171, i64 %172, i64 %173, i64 %174, double* %175, double* %176, i64 %177, i64 %178, i64 %179, double* %180, double* %181, i64 %182, i64 %183, i64 %184, double* %185, double* %186, i64 %187, i64 %188, i64 %189)
  call void @polybench_timer_stop()
  call void @polybench_timer_print()
  %190 = icmp sgt i32 %0, 42
  br i1 %190, label %191, label %197

191:                                              ; preds = %2
  %192 = getelementptr i8*, i8** %1, i64 0
  %193 = load i8*, i8** %192, align 8
  %194 = call i32 @strcmp(i8* %193, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @str0, i64 0, i64 0))
  %195 = trunc i32 %194 to i1
  %196 = xor i1 %195, true
  br label %198

197:                                              ; preds = %2
  br label %198

198:                                              ; preds = %191, %197
  %199 = phi i1 [ %196, %191 ], [ false, %197 ]
  br label %200

200:                                              ; preds = %198
  br i1 %199, label %201, label %207

201:                                              ; preds = %200
  %202 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %58, 0
  %203 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %58, 1
  %204 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %58, 2
  %205 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %58, 3, 0
  %206 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %58, 4, 0
  call void @print_array(i32 4000, double* %202, double* %203, i64 %204, i64 %205, i64 %206)
  br label %207

207:                                              ; preds = %201, %200
  %208 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %23, 0
  %209 = bitcast double* %208 to i8*
  call void @free(i8* %209)
  %210 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %30, 0
  %211 = bitcast double* %210 to i8*
  call void @free(i8* %211)
  %212 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %37, 0
  %213 = bitcast double* %212 to i8*
  call void @free(i8* %213)
  %214 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %44, 0
  %215 = bitcast double* %214 to i8*
  call void @free(i8* %215)
  %216 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %51, 0
  %217 = bitcast double* %216 to i8*
  call void @free(i8* %217)
  %218 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %58, 0
  %219 = bitcast double* %218 to i8*
  call void @free(i8* %219)
  %220 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %65, 0
  %221 = bitcast double* %220 to i8*
  call void @free(i8* %221)
  %222 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %72, 0
  %223 = bitcast double* %222 to i8*
  call void @free(i8* %223)
  %224 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %79, 0
  %225 = bitcast double* %224 to i8*
  call void @free(i8* %225)
  ret i32 0
}

define private void @init_array(i32 %0, double* %1, double* %2, i64 %3, i64 %4, i64 %5, double* %6, double* %7, i64 %8, i64 %9, i64 %10, double* %11, double* %12, i64 %13, i64 %14, i64 %15, i64 %16, i64 %17, double* %18, double* %19, i64 %20, i64 %21, i64 %22, double* %23, double* %24, i64 %25, i64 %26, i64 %27, double* %28, double* %29, i64 %30, i64 %31, i64 %32, double* %33, double* %34, i64 %35, i64 %36, i64 %37, double* %38, double* %39, i64 %40, i64 %41, i64 %42, double* %43, double* %44, i64 %45, i64 %46, i64 %47, double* %48, double* %49, i64 %50, i64 %51, i64 %52, double* %53, double* %54, i64 %55, i64 %56, i64 %57) {
  %59 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %1, 0
  %60 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %59, double* %2, 1
  %61 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %60, i64 %3, 2
  %62 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %61, i64 %4, 3, 0
  %63 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %62, i64 %5, 4, 0
  %64 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %6, 0
  %65 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %64, double* %7, 1
  %66 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %65, i64 %8, 2
  %67 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %66, i64 %9, 3, 0
  %68 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %67, i64 %10, 4, 0
  %69 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %11, 0
  %70 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %69, double* %12, 1
  %71 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %70, i64 %13, 2
  %72 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %71, i64 %14, 3, 0
  %73 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %72, i64 %16, 4, 0
  %74 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %73, i64 %15, 3, 1
  %75 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %74, i64 %17, 4, 1
  %76 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %18, 0
  %77 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %76, double* %19, 1
  %78 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %77, i64 %20, 2
  %79 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %78, i64 %21, 3, 0
  %80 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %79, i64 %22, 4, 0
  %81 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %23, 0
  %82 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %81, double* %24, 1
  %83 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %82, i64 %25, 2
  %84 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %83, i64 %26, 3, 0
  %85 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %84, i64 %27, 4, 0
  %86 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %28, 0
  %87 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %86, double* %29, 1
  %88 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %87, i64 %30, 2
  %89 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %88, i64 %31, 3, 0
  %90 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %89, i64 %32, 4, 0
  %91 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %33, 0
  %92 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %91, double* %34, 1
  %93 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %92, i64 %35, 2
  %94 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %93, i64 %36, 3, 0
  %95 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %94, i64 %37, 4, 0
  %96 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %38, 0
  %97 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %96, double* %39, 1
  %98 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %97, i64 %40, 2
  %99 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %98, i64 %41, 3, 0
  %100 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %99, i64 %42, 4, 0
  %101 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %43, 0
  %102 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %101, double* %44, 1
  %103 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %102, i64 %45, 2
  %104 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %103, i64 %46, 3, 0
  %105 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %104, i64 %47, 4, 0
  %106 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %48, 0
  %107 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %106, double* %49, 1
  %108 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %107, i64 %50, 2
  %109 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %108, i64 %51, 3, 0
  %110 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %109, i64 %52, 4, 0
  %111 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %53, 0
  %112 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %111, double* %54, 1
  %113 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %112, i64 %55, 2
  %114 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %113, i64 %56, 3, 0
  %115 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %114, i64 %57, 4, 0
  %116 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %63, 1
  %117 = getelementptr double, double* %116, i64 0
  store double 1.500000e+00, double* %117, align 8
  %118 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %68, 1
  %119 = getelementptr double, double* %118, i64 0
  store double 1.200000e+00, double* %119, align 8
  %120 = sitofp i32 %0 to double
  br label %121

121:                                              ; preds = %167, %58
  %122 = phi i32 [ %130, %167 ], [ 0, %58 ]
  %123 = icmp slt i32 %122, %0
  br i1 %123, label %124, label %168

124:                                              ; preds = %121
  %125 = phi i32 [ %122, %121 ]
  %126 = sext i32 %125 to i64
  %127 = sitofp i32 %125 to double
  %128 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %80, 1
  %129 = getelementptr double, double* %128, i64 %126
  store double %127, double* %129, align 8
  %130 = add i32 %125, 1
  %131 = sitofp i32 %130 to double
  %132 = fdiv double %131, %120
  %133 = fdiv double %132, 2.000000e+00
  %134 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %90, 1
  %135 = getelementptr double, double* %134, i64 %126
  store double %133, double* %135, align 8
  %136 = fdiv double %132, 4.000000e+00
  %137 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %85, 1
  %138 = getelementptr double, double* %137, i64 %126
  store double %136, double* %138, align 8
  %139 = fdiv double %132, 6.000000e+00
  %140 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %95, 1
  %141 = getelementptr double, double* %140, i64 %126
  store double %139, double* %141, align 8
  %142 = fdiv double %132, 8.000000e+00
  %143 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %110, 1
  %144 = getelementptr double, double* %143, i64 %126
  store double %142, double* %144, align 8
  %145 = fdiv double %132, 9.000000e+00
  %146 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %115, 1
  %147 = getelementptr double, double* %146, i64 %126
  store double %145, double* %147, align 8
  %148 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %105, 1
  %149 = getelementptr double, double* %148, i64 %126
  store double 0.000000e+00, double* %149, align 8
  %150 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %100, 1
  %151 = getelementptr double, double* %150, i64 %126
  store double 0.000000e+00, double* %151, align 8
  br label %152

152:                                              ; preds = %155, %124
  %153 = phi i32 [ %166, %155 ], [ 0, %124 ]
  %154 = icmp slt i32 %153, %0
  br i1 %154, label %155, label %167

155:                                              ; preds = %152
  %156 = phi i32 [ %153, %152 ]
  %157 = sext i32 %156 to i64
  %158 = mul i32 %125, %156
  %159 = srem i32 %158, %0
  %160 = sitofp i32 %159 to double
  %161 = fdiv double %160, %120
  %162 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %75, 1
  %163 = mul i64 %126, 4000
  %164 = add i64 %163, %157
  %165 = getelementptr double, double* %162, i64 %164
  store double %161, double* %165, align 8
  %166 = add i32 %156, 1
  br label %152

167:                                              ; preds = %152
  br label %121

168:                                              ; preds = %121
  ret void
}

declare void @polybench_timer_start()

define private void @kernel_gemver(i32 %0, double %1, double %2, double* %3, double* %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9, double* %10, double* %11, i64 %12, i64 %13, i64 %14, double* %15, double* %16, i64 %17, i64 %18, i64 %19, double* %20, double* %21, i64 %22, i64 %23, i64 %24, double* %25, double* %26, i64 %27, i64 %28, i64 %29, double* %30, double* %31, i64 %32, i64 %33, i64 %34, double* %35, double* %36, i64 %37, i64 %38, i64 %39, double* %40, double* %41, i64 %42, i64 %43, i64 %44, double* %45, double* %46, i64 %47, i64 %48, i64 %49) {
  %51 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } undef, double* %3, 0
  %52 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %51, double* %4, 1
  %53 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %52, i64 %5, 2
  %54 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %53, i64 %6, 3, 0
  %55 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %54, i64 %8, 4, 0
  %56 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %55, i64 %7, 3, 1
  %57 = insertvalue { double*, double*, i64, [2 x i64], [2 x i64] } %56, i64 %9, 4, 1
  %58 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %10, 0
  %59 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %58, double* %11, 1
  %60 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %59, i64 %12, 2
  %61 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %60, i64 %13, 3, 0
  %62 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %61, i64 %14, 4, 0
  %63 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %15, 0
  %64 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %63, double* %16, 1
  %65 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %64, i64 %17, 2
  %66 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %65, i64 %18, 3, 0
  %67 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %66, i64 %19, 4, 0
  %68 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %20, 0
  %69 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %68, double* %21, 1
  %70 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %69, i64 %22, 2
  %71 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %70, i64 %23, 3, 0
  %72 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %71, i64 %24, 4, 0
  %73 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %25, 0
  %74 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %73, double* %26, 1
  %75 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %74, i64 %27, 2
  %76 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %75, i64 %28, 3, 0
  %77 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %76, i64 %29, 4, 0
  %78 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %30, 0
  %79 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %78, double* %31, 1
  %80 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %79, i64 %32, 2
  %81 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %80, i64 %33, 3, 0
  %82 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %81, i64 %34, 4, 0
  %83 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %35, 0
  %84 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %83, double* %36, 1
  %85 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %84, i64 %37, 2
  %86 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %85, i64 %38, 3, 0
  %87 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %86, i64 %39, 4, 0
  %88 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %40, 0
  %89 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %88, double* %41, 1
  %90 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %89, i64 %42, 2
  %91 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %90, i64 %43, 3, 0
  %92 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %91, i64 %44, 4, 0
  %93 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } undef, double* %45, 0
  %94 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %93, double* %46, 1
  %95 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %94, i64 %47, 2
  %96 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %95, i64 %48, 3, 0
  %97 = insertvalue { double*, double*, i64, [1 x i64], [1 x i64] } %96, i64 %49, 4, 0
  %98 = sext i32 %0 to i64
  br label %99

99:                                               ; preds = %133, %50
  %100 = phi i64 [ %134, %133 ], [ 0, %50 ]
  %101 = icmp slt i64 %100, %98
  br i1 %101, label %102, label %135

102:                                              ; preds = %99
  br label %103

103:                                              ; preds = %106, %102
  %104 = phi i64 [ %132, %106 ], [ 0, %102 ]
  %105 = icmp slt i64 %104, %98
  br i1 %105, label %106, label %133

106:                                              ; preds = %103
  %107 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %57, 1
  %108 = mul i64 %100, 4000
  %109 = add i64 %108, %104
  %110 = getelementptr double, double* %107, i64 %109
  %111 = load double, double* %110, align 8
  %112 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %62, 1
  %113 = getelementptr double, double* %112, i64 %100
  %114 = load double, double* %113, align 8
  %115 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %67, 1
  %116 = getelementptr double, double* %115, i64 %104
  %117 = load double, double* %116, align 8
  %118 = fmul double %114, %117
  %119 = fadd double %111, %118
  %120 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %72, 1
  %121 = getelementptr double, double* %120, i64 %100
  %122 = load double, double* %121, align 8
  %123 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %77, 1
  %124 = getelementptr double, double* %123, i64 %104
  %125 = load double, double* %124, align 8
  %126 = fmul double %122, %125
  %127 = fadd double %119, %126
  %128 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %57, 1
  %129 = mul i64 %100, 4000
  %130 = add i64 %129, %104
  %131 = getelementptr double, double* %128, i64 %130
  store double %127, double* %131, align 8
  %132 = add i64 %104, 1
  br label %103

133:                                              ; preds = %103
  %134 = add i64 %100, 1
  br label %99

135:                                              ; preds = %99
  br label %136

136:                                              ; preds = %161, %135
  %137 = phi i64 [ %162, %161 ], [ 0, %135 ]
  %138 = icmp slt i64 %137, %98
  br i1 %138, label %139, label %163

139:                                              ; preds = %136
  br label %140

140:                                              ; preds = %143, %139
  %141 = phi i64 [ %160, %143 ], [ 0, %139 ]
  %142 = icmp slt i64 %141, %98
  br i1 %142, label %143, label %161

143:                                              ; preds = %140
  %144 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %87, 1
  %145 = getelementptr double, double* %144, i64 %137
  %146 = load double, double* %145, align 8
  %147 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %57, 1
  %148 = mul i64 %141, 4000
  %149 = add i64 %148, %137
  %150 = getelementptr double, double* %147, i64 %149
  %151 = load double, double* %150, align 8
  %152 = fmul double %2, %151
  %153 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %92, 1
  %154 = getelementptr double, double* %153, i64 %141
  %155 = load double, double* %154, align 8
  %156 = fmul double %152, %155
  %157 = fadd double %146, %156
  %158 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %87, 1
  %159 = getelementptr double, double* %158, i64 %137
  store double %157, double* %159, align 8
  %160 = add i64 %141, 1
  br label %140

161:                                              ; preds = %140
  %162 = add i64 %137, 1
  br label %136

163:                                              ; preds = %136
  br label %164

164:                                              ; preds = %167, %163
  %165 = phi i64 [ %177, %167 ], [ 0, %163 ]
  %166 = icmp slt i64 %165, %98
  br i1 %166, label %167, label %178

167:                                              ; preds = %164
  %168 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %87, 1
  %169 = getelementptr double, double* %168, i64 %165
  %170 = load double, double* %169, align 8
  %171 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %97, 1
  %172 = getelementptr double, double* %171, i64 %165
  %173 = load double, double* %172, align 8
  %174 = fadd double %170, %173
  %175 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %87, 1
  %176 = getelementptr double, double* %175, i64 %165
  store double %174, double* %176, align 8
  %177 = add i64 %165, 1
  br label %164

178:                                              ; preds = %164
  br label %179

179:                                              ; preds = %204, %178
  %180 = phi i64 [ %205, %204 ], [ 0, %178 ]
  %181 = icmp slt i64 %180, %98
  br i1 %181, label %182, label %206

182:                                              ; preds = %179
  br label %183

183:                                              ; preds = %186, %182
  %184 = phi i64 [ %203, %186 ], [ 0, %182 ]
  %185 = icmp slt i64 %184, %98
  br i1 %185, label %186, label %204

186:                                              ; preds = %183
  %187 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %82, 1
  %188 = getelementptr double, double* %187, i64 %180
  %189 = load double, double* %188, align 8
  %190 = extractvalue { double*, double*, i64, [2 x i64], [2 x i64] } %57, 1
  %191 = mul i64 %180, 4000
  %192 = add i64 %191, %184
  %193 = getelementptr double, double* %190, i64 %192
  %194 = load double, double* %193, align 8
  %195 = fmul double %1, %194
  %196 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %87, 1
  %197 = getelementptr double, double* %196, i64 %184
  %198 = load double, double* %197, align 8
  %199 = fmul double %195, %198
  %200 = fadd double %189, %199
  %201 = extractvalue { double*, double*, i64, [1 x i64], [1 x i64] } %82, 1
  %202 = getelementptr double, double* %201, i64 %180
  store double %200, double* %202, align 8
  %203 = add i64 %184, 1
  br label %183

204:                                              ; preds = %183
  %205 = add i64 %180, 1
  br label %179

206:                                              ; preds = %179
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


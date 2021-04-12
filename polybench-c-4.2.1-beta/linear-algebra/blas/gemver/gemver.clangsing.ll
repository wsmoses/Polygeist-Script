; ModuleID = 'gemver.c'
source_filename = "gemver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %n = alloca i32, align 4
  %alpha = alloca double, align 8
  %beta = alloca double, align 8
  %A = alloca [4000 x [4000 x double]]*, align 8
  %u1 = alloca [4000 x double]*, align 8
  %v1 = alloca [4000 x double]*, align 8
  %u2 = alloca [4000 x double]*, align 8
  %v2 = alloca [4000 x double]*, align 8
  %w = alloca [4000 x double]*, align 8
  %x = alloca [4000 x double]*, align 8
  %y = alloca [4000 x double]*, align 8
  %z = alloca [4000 x double]*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !2
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !6
  %0 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #6
  store i32 4000, i32* %n, align 4, !tbaa !2
  %1 = bitcast double* %alpha to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #6
  %2 = bitcast double* %beta to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #6
  %3 = bitcast [4000 x [4000 x double]]** %A to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #6
  %call = call i8* @polybench_alloc_data(i64 16000000, i32 8)
  %4 = bitcast i8* %call to [4000 x [4000 x double]]*
  store [4000 x [4000 x double]]* %4, [4000 x [4000 x double]]** %A, align 8, !tbaa !6
  %5 = bitcast [4000 x double]** %u1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %5) #6
  %call1 = call i8* @polybench_alloc_data(i64 4000, i32 8)
  %6 = bitcast i8* %call1 to [4000 x double]*
  store [4000 x double]* %6, [4000 x double]** %u1, align 8, !tbaa !6
  %7 = bitcast [4000 x double]** %v1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %7) #6
  %call2 = call i8* @polybench_alloc_data(i64 4000, i32 8)
  %8 = bitcast i8* %call2 to [4000 x double]*
  store [4000 x double]* %8, [4000 x double]** %v1, align 8, !tbaa !6
  %9 = bitcast [4000 x double]** %u2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %9) #6
  %call3 = call i8* @polybench_alloc_data(i64 4000, i32 8)
  %10 = bitcast i8* %call3 to [4000 x double]*
  store [4000 x double]* %10, [4000 x double]** %u2, align 8, !tbaa !6
  %11 = bitcast [4000 x double]** %v2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %11) #6
  %call4 = call i8* @polybench_alloc_data(i64 4000, i32 8)
  %12 = bitcast i8* %call4 to [4000 x double]*
  store [4000 x double]* %12, [4000 x double]** %v2, align 8, !tbaa !6
  %13 = bitcast [4000 x double]** %w to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %13) #6
  %call5 = call i8* @polybench_alloc_data(i64 4000, i32 8)
  %14 = bitcast i8* %call5 to [4000 x double]*
  store [4000 x double]* %14, [4000 x double]** %w, align 8, !tbaa !6
  %15 = bitcast [4000 x double]** %x to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %15) #6
  %call6 = call i8* @polybench_alloc_data(i64 4000, i32 8)
  %16 = bitcast i8* %call6 to [4000 x double]*
  store [4000 x double]* %16, [4000 x double]** %x, align 8, !tbaa !6
  %17 = bitcast [4000 x double]** %y to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %17) #6
  %call7 = call i8* @polybench_alloc_data(i64 4000, i32 8)
  %18 = bitcast i8* %call7 to [4000 x double]*
  store [4000 x double]* %18, [4000 x double]** %y, align 8, !tbaa !6
  %19 = bitcast [4000 x double]** %z to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %19) #6
  %call8 = call i8* @polybench_alloc_data(i64 4000, i32 8)
  %20 = bitcast i8* %call8 to [4000 x double]*
  store [4000 x double]* %20, [4000 x double]** %z, align 8, !tbaa !6
  %21 = load i32, i32* %n, align 4, !tbaa !2
  %22 = load [4000 x [4000 x double]]*, [4000 x [4000 x double]]** %A, align 8, !tbaa !6
  %arraydecay = getelementptr inbounds [4000 x [4000 x double]], [4000 x [4000 x double]]* %22, i64 0, i64 0
  %23 = load [4000 x double]*, [4000 x double]** %u1, align 8, !tbaa !6
  %arraydecay9 = getelementptr inbounds [4000 x double], [4000 x double]* %23, i64 0, i64 0
  %24 = load [4000 x double]*, [4000 x double]** %v1, align 8, !tbaa !6
  %arraydecay10 = getelementptr inbounds [4000 x double], [4000 x double]* %24, i64 0, i64 0
  %25 = load [4000 x double]*, [4000 x double]** %u2, align 8, !tbaa !6
  %arraydecay11 = getelementptr inbounds [4000 x double], [4000 x double]* %25, i64 0, i64 0
  %26 = load [4000 x double]*, [4000 x double]** %v2, align 8, !tbaa !6
  %arraydecay12 = getelementptr inbounds [4000 x double], [4000 x double]* %26, i64 0, i64 0
  %27 = load [4000 x double]*, [4000 x double]** %w, align 8, !tbaa !6
  %arraydecay13 = getelementptr inbounds [4000 x double], [4000 x double]* %27, i64 0, i64 0
  %28 = load [4000 x double]*, [4000 x double]** %x, align 8, !tbaa !6
  %arraydecay14 = getelementptr inbounds [4000 x double], [4000 x double]* %28, i64 0, i64 0
  %29 = load [4000 x double]*, [4000 x double]** %y, align 8, !tbaa !6
  %arraydecay15 = getelementptr inbounds [4000 x double], [4000 x double]* %29, i64 0, i64 0
  %30 = load [4000 x double]*, [4000 x double]** %z, align 8, !tbaa !6
  %arraydecay16 = getelementptr inbounds [4000 x double], [4000 x double]* %30, i64 0, i64 0
  call void @init_array(i32 %21, double* %alpha, double* %beta, [4000 x double]* %arraydecay, double* %arraydecay9, double* %arraydecay10, double* %arraydecay11, double* %arraydecay12, double* %arraydecay13, double* %arraydecay14, double* %arraydecay15, double* %arraydecay16)
  call void (...) @polybench_timer_start()
  %31 = load i32, i32* %n, align 4, !tbaa !2
  %32 = load double, double* %alpha, align 8, !tbaa !8
  %33 = load double, double* %beta, align 8, !tbaa !8
  %34 = load [4000 x [4000 x double]]*, [4000 x [4000 x double]]** %A, align 8, !tbaa !6
  %arraydecay17 = getelementptr inbounds [4000 x [4000 x double]], [4000 x [4000 x double]]* %34, i64 0, i64 0
  %35 = load [4000 x double]*, [4000 x double]** %u1, align 8, !tbaa !6
  %arraydecay18 = getelementptr inbounds [4000 x double], [4000 x double]* %35, i64 0, i64 0
  %36 = load [4000 x double]*, [4000 x double]** %v1, align 8, !tbaa !6
  %arraydecay19 = getelementptr inbounds [4000 x double], [4000 x double]* %36, i64 0, i64 0
  %37 = load [4000 x double]*, [4000 x double]** %u2, align 8, !tbaa !6
  %arraydecay20 = getelementptr inbounds [4000 x double], [4000 x double]* %37, i64 0, i64 0
  %38 = load [4000 x double]*, [4000 x double]** %v2, align 8, !tbaa !6
  %arraydecay21 = getelementptr inbounds [4000 x double], [4000 x double]* %38, i64 0, i64 0
  %39 = load [4000 x double]*, [4000 x double]** %w, align 8, !tbaa !6
  %arraydecay22 = getelementptr inbounds [4000 x double], [4000 x double]* %39, i64 0, i64 0
  %40 = load [4000 x double]*, [4000 x double]** %x, align 8, !tbaa !6
  %arraydecay23 = getelementptr inbounds [4000 x double], [4000 x double]* %40, i64 0, i64 0
  %41 = load [4000 x double]*, [4000 x double]** %y, align 8, !tbaa !6
  %arraydecay24 = getelementptr inbounds [4000 x double], [4000 x double]* %41, i64 0, i64 0
  %42 = load [4000 x double]*, [4000 x double]** %z, align 8, !tbaa !6
  %arraydecay25 = getelementptr inbounds [4000 x double], [4000 x double]* %42, i64 0, i64 0
  call void @kernel_gemver(i32 %31, double %32, double %33, [4000 x double]* %arraydecay17, double* %arraydecay18, double* %arraydecay19, double* %arraydecay20, double* %arraydecay21, double* %arraydecay22, double* %arraydecay23, double* %arraydecay24, double* %arraydecay25)
  call void (...) @polybench_timer_stop()
  call void (...) @polybench_timer_print()
  %43 = load i32, i32* %argc.addr, align 4, !tbaa !2
  %cmp = icmp sgt i32 %43, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %44 = load i8**, i8*** %argv.addr, align 8, !tbaa !6
  %arrayidx = getelementptr inbounds i8*, i8** %44, i64 0
  %45 = load i8*, i8** %arrayidx, align 8, !tbaa !6
  %call26 = call i32 @strcmp(i8* %45, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)) #7
  %tobool = icmp ne i32 %call26, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %46 = load i32, i32* %n, align 4, !tbaa !2
  %47 = load [4000 x double]*, [4000 x double]** %w, align 8, !tbaa !6
  %arraydecay27 = getelementptr inbounds [4000 x double], [4000 x double]* %47, i64 0, i64 0
  call void @print_array(i32 %46, double* %arraydecay27)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %48 = load [4000 x [4000 x double]]*, [4000 x [4000 x double]]** %A, align 8, !tbaa !6
  %49 = bitcast [4000 x [4000 x double]]* %48 to i8*
  call void @free(i8* %49) #6
  %50 = load [4000 x double]*, [4000 x double]** %u1, align 8, !tbaa !6
  %51 = bitcast [4000 x double]* %50 to i8*
  call void @free(i8* %51) #6
  %52 = load [4000 x double]*, [4000 x double]** %v1, align 8, !tbaa !6
  %53 = bitcast [4000 x double]* %52 to i8*
  call void @free(i8* %53) #6
  %54 = load [4000 x double]*, [4000 x double]** %u2, align 8, !tbaa !6
  %55 = bitcast [4000 x double]* %54 to i8*
  call void @free(i8* %55) #6
  %56 = load [4000 x double]*, [4000 x double]** %v2, align 8, !tbaa !6
  %57 = bitcast [4000 x double]* %56 to i8*
  call void @free(i8* %57) #6
  %58 = load [4000 x double]*, [4000 x double]** %w, align 8, !tbaa !6
  %59 = bitcast [4000 x double]* %58 to i8*
  call void @free(i8* %59) #6
  %60 = load [4000 x double]*, [4000 x double]** %x, align 8, !tbaa !6
  %61 = bitcast [4000 x double]* %60 to i8*
  call void @free(i8* %61) #6
  %62 = load [4000 x double]*, [4000 x double]** %y, align 8, !tbaa !6
  %63 = bitcast [4000 x double]* %62 to i8*
  call void @free(i8* %63) #6
  %64 = load [4000 x double]*, [4000 x double]** %z, align 8, !tbaa !6
  %65 = bitcast [4000 x double]* %64 to i8*
  call void @free(i8* %65) #6
  %66 = bitcast [4000 x double]** %z to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %66) #6
  %67 = bitcast [4000 x double]** %y to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %67) #6
  %68 = bitcast [4000 x double]** %x to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %68) #6
  %69 = bitcast [4000 x double]** %w to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %69) #6
  %70 = bitcast [4000 x double]** %v2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %70) #6
  %71 = bitcast [4000 x double]** %u2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %71) #6
  %72 = bitcast [4000 x double]** %v1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %72) #6
  %73 = bitcast [4000 x double]** %u1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %73) #6
  %74 = bitcast [4000 x [4000 x double]]** %A to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %74) #6
  %75 = bitcast double* %beta to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %75) #6
  %76 = bitcast double* %alpha to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %76) #6
  %77 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %77) #6
  ret i32 0
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @polybench_alloc_data(i64 %n, i32 %elt_size) #2 {
entry:
  %n.addr = alloca i64, align 8
  %elt_size.addr = alloca i32, align 4
  store i64 %n, i64* %n.addr, align 8, !tbaa !10
  store i32 %elt_size, i32* %elt_size.addr, align 4, !tbaa !2
  %0 = load i64, i64* %n.addr, align 8, !tbaa !10
  %1 = load i32, i32* %elt_size.addr, align 4, !tbaa !2
  %conv = sext i32 %1 to i64
  %mul = mul i64 %0, %conv
  %call = call noalias i8* @malloc(i64 %mul) #6
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define internal void @init_array(i32 %n, double* %alpha, double* %beta, [4000 x double]* %A, double* %u1, double* %v1, double* %u2, double* %v2, double* %w, double* %x, double* %y, double* %z) #0 {
entry:
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca double*, align 8
  %beta.addr = alloca double*, align 8
  %A.addr = alloca [4000 x double]*, align 8
  %u1.addr = alloca double*, align 8
  %v1.addr = alloca double*, align 8
  %u2.addr = alloca double*, align 8
  %v2.addr = alloca double*, align 8
  %w.addr = alloca double*, align 8
  %x.addr = alloca double*, align 8
  %y.addr = alloca double*, align 8
  %z.addr = alloca double*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %fn = alloca double, align 8
  store i32 %n, i32* %n.addr, align 4, !tbaa !2
  store double* %alpha, double** %alpha.addr, align 8, !tbaa !6
  store double* %beta, double** %beta.addr, align 8, !tbaa !6
  store [4000 x double]* %A, [4000 x double]** %A.addr, align 8, !tbaa !6
  store double* %u1, double** %u1.addr, align 8, !tbaa !6
  store double* %v1, double** %v1.addr, align 8, !tbaa !6
  store double* %u2, double** %u2.addr, align 8, !tbaa !6
  store double* %v2, double** %v2.addr, align 8, !tbaa !6
  store double* %w, double** %w.addr, align 8, !tbaa !6
  store double* %x, double** %x.addr, align 8, !tbaa !6
  store double* %y, double** %y.addr, align 8, !tbaa !6
  store double* %z, double** %z.addr, align 8, !tbaa !6
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #6
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #6
  %2 = load double*, double** %alpha.addr, align 8, !tbaa !6
  store double 1.500000e+00, double* %2, align 8, !tbaa !8
  %3 = load double*, double** %beta.addr, align 8, !tbaa !6
  store double 1.200000e+00, double* %3, align 8, !tbaa !8
  %4 = bitcast double* %fn to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #6
  %5 = load i32, i32* %n.addr, align 4, !tbaa !2
  %conv = sitofp i32 %5 to double
  store double %conv, double* %fn, align 8, !tbaa !8
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc46, %entry
  %6 = load i32, i32* %i, align 4, !tbaa !2
  %7 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end48

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4, !tbaa !2
  %conv2 = sitofp i32 %8 to double
  %9 = load double*, double** %u1.addr, align 8, !tbaa !6
  %10 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds double, double* %9, i64 %idxprom
  store double %conv2, double* %arrayidx, align 8, !tbaa !8
  %11 = load i32, i32* %i, align 4, !tbaa !2
  %add = add nsw i32 %11, 1
  %conv3 = sitofp i32 %add to double
  %12 = load double, double* %fn, align 8, !tbaa !8
  %div = fdiv double %conv3, %12
  %div4 = fdiv double %div, 2.000000e+00
  %13 = load double*, double** %u2.addr, align 8, !tbaa !6
  %14 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom5 = sext i32 %14 to i64
  %arrayidx6 = getelementptr inbounds double, double* %13, i64 %idxprom5
  store double %div4, double* %arrayidx6, align 8, !tbaa !8
  %15 = load i32, i32* %i, align 4, !tbaa !2
  %add7 = add nsw i32 %15, 1
  %conv8 = sitofp i32 %add7 to double
  %16 = load double, double* %fn, align 8, !tbaa !8
  %div9 = fdiv double %conv8, %16
  %div10 = fdiv double %div9, 4.000000e+00
  %17 = load double*, double** %v1.addr, align 8, !tbaa !6
  %18 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom11 = sext i32 %18 to i64
  %arrayidx12 = getelementptr inbounds double, double* %17, i64 %idxprom11
  store double %div10, double* %arrayidx12, align 8, !tbaa !8
  %19 = load i32, i32* %i, align 4, !tbaa !2
  %add13 = add nsw i32 %19, 1
  %conv14 = sitofp i32 %add13 to double
  %20 = load double, double* %fn, align 8, !tbaa !8
  %div15 = fdiv double %conv14, %20
  %div16 = fdiv double %div15, 6.000000e+00
  %21 = load double*, double** %v2.addr, align 8, !tbaa !6
  %22 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom17 = sext i32 %22 to i64
  %arrayidx18 = getelementptr inbounds double, double* %21, i64 %idxprom17
  store double %div16, double* %arrayidx18, align 8, !tbaa !8
  %23 = load i32, i32* %i, align 4, !tbaa !2
  %add19 = add nsw i32 %23, 1
  %conv20 = sitofp i32 %add19 to double
  %24 = load double, double* %fn, align 8, !tbaa !8
  %div21 = fdiv double %conv20, %24
  %div22 = fdiv double %div21, 8.000000e+00
  %25 = load double*, double** %y.addr, align 8, !tbaa !6
  %26 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom23 = sext i32 %26 to i64
  %arrayidx24 = getelementptr inbounds double, double* %25, i64 %idxprom23
  store double %div22, double* %arrayidx24, align 8, !tbaa !8
  %27 = load i32, i32* %i, align 4, !tbaa !2
  %add25 = add nsw i32 %27, 1
  %conv26 = sitofp i32 %add25 to double
  %28 = load double, double* %fn, align 8, !tbaa !8
  %div27 = fdiv double %conv26, %28
  %div28 = fdiv double %div27, 9.000000e+00
  %29 = load double*, double** %z.addr, align 8, !tbaa !6
  %30 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom29 = sext i32 %30 to i64
  %arrayidx30 = getelementptr inbounds double, double* %29, i64 %idxprom29
  store double %div28, double* %arrayidx30, align 8, !tbaa !8
  %31 = load double*, double** %x.addr, align 8, !tbaa !6
  %32 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom31 = sext i32 %32 to i64
  %arrayidx32 = getelementptr inbounds double, double* %31, i64 %idxprom31
  store double 0.000000e+00, double* %arrayidx32, align 8, !tbaa !8
  %33 = load double*, double** %w.addr, align 8, !tbaa !6
  %34 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom33 = sext i32 %34 to i64
  %arrayidx34 = getelementptr inbounds double, double* %33, i64 %idxprom33
  store double 0.000000e+00, double* %arrayidx34, align 8, !tbaa !8
  store i32 0, i32* %j, align 4, !tbaa !2
  br label %for.cond35

for.cond35:                                       ; preds = %for.inc, %for.body
  %35 = load i32, i32* %j, align 4, !tbaa !2
  %36 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp36 = icmp slt i32 %35, %36
  br i1 %cmp36, label %for.body38, label %for.end

for.body38:                                       ; preds = %for.cond35
  %37 = load i32, i32* %i, align 4, !tbaa !2
  %38 = load i32, i32* %j, align 4, !tbaa !2
  %mul = mul nsw i32 %37, %38
  %39 = load i32, i32* %n.addr, align 4, !tbaa !2
  %rem = srem i32 %mul, %39
  %conv39 = sitofp i32 %rem to double
  %40 = load i32, i32* %n.addr, align 4, !tbaa !2
  %conv40 = sitofp i32 %40 to double
  %div41 = fdiv double %conv39, %conv40
  %41 = load [4000 x double]*, [4000 x double]** %A.addr, align 8, !tbaa !6
  %42 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom42 = sext i32 %42 to i64
  %arrayidx43 = getelementptr inbounds [4000 x double], [4000 x double]* %41, i64 %idxprom42
  %43 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom44 = sext i32 %43 to i64
  %arrayidx45 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx43, i64 0, i64 %idxprom44
  store double %div41, double* %arrayidx45, align 8, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body38
  %44 = load i32, i32* %j, align 4, !tbaa !2
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %j, align 4, !tbaa !2
  br label %for.cond35, !llvm.loop !12

for.end:                                          ; preds = %for.cond35
  br label %for.inc46

for.inc46:                                        ; preds = %for.end
  %45 = load i32, i32* %i, align 4, !tbaa !2
  %inc47 = add nsw i32 %45, 1
  store i32 %inc47, i32* %i, align 4, !tbaa !2
  br label %for.cond, !llvm.loop !15

for.end48:                                        ; preds = %for.cond
  %46 = bitcast double* %fn to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %46) #6
  %47 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %47) #6
  %48 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %48) #6
  ret void
}

declare dso_local void @polybench_timer_start(...) #3

; Function Attrs: nounwind uwtable
define internal void @kernel_gemver(i32 %n, double %alpha, double %beta, [4000 x double]* %A, double* %u1, double* %v1, double* %u2, double* %v2, double* %w, double* %x, double* %y, double* %z) #0 {
entry:
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca double, align 8
  %beta.addr = alloca double, align 8
  %A.addr = alloca [4000 x double]*, align 8
  %u1.addr = alloca double*, align 8
  %v1.addr = alloca double*, align 8
  %u2.addr = alloca double*, align 8
  %v2.addr = alloca double*, align 8
  %w.addr = alloca double*, align 8
  %x.addr = alloca double*, align 8
  %y.addr = alloca double*, align 8
  %z.addr = alloca double*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4, !tbaa !2
  store double %alpha, double* %alpha.addr, align 8, !tbaa !8
  store double %beta, double* %beta.addr, align 8, !tbaa !8
  store [4000 x double]* %A, [4000 x double]** %A.addr, align 8, !tbaa !6
  store double* %u1, double** %u1.addr, align 8, !tbaa !6
  store double* %v1, double** %v1.addr, align 8, !tbaa !6
  store double* %u2, double** %u2.addr, align 8, !tbaa !6
  store double* %v2, double** %v2.addr, align 8, !tbaa !6
  store double* %w, double** %w.addr, align 8, !tbaa !6
  store double* %x, double** %x.addr, align 8, !tbaa !6
  store double* %y, double** %y.addr, align 8, !tbaa !6
  store double* %z, double** %z.addr, align 8, !tbaa !6
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #6
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #6
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %2 = load i32, i32* %i, align 4, !tbaa !2
  %3 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end22

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !tbaa !2
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %4 = load i32, i32* %j, align 4, !tbaa !2
  %5 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp2 = icmp slt i32 %4, %5
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %6 = load [4000 x double]*, [4000 x double]** %A.addr, align 8, !tbaa !6
  %7 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [4000 x double], [4000 x double]* %6, i64 %idxprom
  %8 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx, i64 0, i64 %idxprom4
  %9 = load double, double* %arrayidx5, align 8, !tbaa !8
  %10 = load double*, double** %u1.addr, align 8, !tbaa !6
  %11 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom6 = sext i32 %11 to i64
  %arrayidx7 = getelementptr inbounds double, double* %10, i64 %idxprom6
  %12 = load double, double* %arrayidx7, align 8, !tbaa !8
  %13 = load double*, double** %v1.addr, align 8, !tbaa !6
  %14 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom8 = sext i32 %14 to i64
  %arrayidx9 = getelementptr inbounds double, double* %13, i64 %idxprom8
  %15 = load double, double* %arrayidx9, align 8, !tbaa !8
  %mul = fmul double %12, %15
  %add = fadd double %9, %mul
  %16 = load double*, double** %u2.addr, align 8, !tbaa !6
  %17 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom10 = sext i32 %17 to i64
  %arrayidx11 = getelementptr inbounds double, double* %16, i64 %idxprom10
  %18 = load double, double* %arrayidx11, align 8, !tbaa !8
  %19 = load double*, double** %v2.addr, align 8, !tbaa !6
  %20 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom12 = sext i32 %20 to i64
  %arrayidx13 = getelementptr inbounds double, double* %19, i64 %idxprom12
  %21 = load double, double* %arrayidx13, align 8, !tbaa !8
  %mul14 = fmul double %18, %21
  %add15 = fadd double %add, %mul14
  %22 = load [4000 x double]*, [4000 x double]** %A.addr, align 8, !tbaa !6
  %23 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom16 = sext i32 %23 to i64
  %arrayidx17 = getelementptr inbounds [4000 x double], [4000 x double]* %22, i64 %idxprom16
  %24 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom18 = sext i32 %24 to i64
  %arrayidx19 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx17, i64 0, i64 %idxprom18
  store double %add15, double* %arrayidx19, align 8, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %25 = load i32, i32* %j, align 4, !tbaa !2
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %j, align 4, !tbaa !2
  br label %for.cond1, !llvm.loop !16

for.end:                                          ; preds = %for.cond1
  br label %for.inc20

for.inc20:                                        ; preds = %for.end
  %26 = load i32, i32* %i, align 4, !tbaa !2
  %inc21 = add nsw i32 %26, 1
  store i32 %inc21, i32* %i, align 4, !tbaa !2
  br label %for.cond, !llvm.loop !17

for.end22:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc45, %for.end22
  %27 = load i32, i32* %i, align 4, !tbaa !2
  %28 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp24 = icmp slt i32 %27, %28
  br i1 %cmp24, label %for.body25, label %for.end47

for.body25:                                       ; preds = %for.cond23
  store i32 0, i32* %j, align 4, !tbaa !2
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc42, %for.body25
  %29 = load i32, i32* %j, align 4, !tbaa !2
  %30 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp27 = icmp slt i32 %29, %30
  br i1 %cmp27, label %for.body28, label %for.end44

for.body28:                                       ; preds = %for.cond26
  %31 = load double*, double** %x.addr, align 8, !tbaa !6
  %32 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom29 = sext i32 %32 to i64
  %arrayidx30 = getelementptr inbounds double, double* %31, i64 %idxprom29
  %33 = load double, double* %arrayidx30, align 8, !tbaa !8
  %34 = load double, double* %beta.addr, align 8, !tbaa !8
  %35 = load [4000 x double]*, [4000 x double]** %A.addr, align 8, !tbaa !6
  %36 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom31 = sext i32 %36 to i64
  %arrayidx32 = getelementptr inbounds [4000 x double], [4000 x double]* %35, i64 %idxprom31
  %37 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom33 = sext i32 %37 to i64
  %arrayidx34 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx32, i64 0, i64 %idxprom33
  %38 = load double, double* %arrayidx34, align 8, !tbaa !8
  %mul35 = fmul double %34, %38
  %39 = load double*, double** %y.addr, align 8, !tbaa !6
  %40 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom36 = sext i32 %40 to i64
  %arrayidx37 = getelementptr inbounds double, double* %39, i64 %idxprom36
  %41 = load double, double* %arrayidx37, align 8, !tbaa !8
  %mul38 = fmul double %mul35, %41
  %add39 = fadd double %33, %mul38
  %42 = load double*, double** %x.addr, align 8, !tbaa !6
  %43 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom40 = sext i32 %43 to i64
  %arrayidx41 = getelementptr inbounds double, double* %42, i64 %idxprom40
  store double %add39, double* %arrayidx41, align 8, !tbaa !8
  br label %for.inc42

for.inc42:                                        ; preds = %for.body28
  %44 = load i32, i32* %j, align 4, !tbaa !2
  %inc43 = add nsw i32 %44, 1
  store i32 %inc43, i32* %j, align 4, !tbaa !2
  br label %for.cond26, !llvm.loop !18

for.end44:                                        ; preds = %for.cond26
  br label %for.inc45

for.inc45:                                        ; preds = %for.end44
  %45 = load i32, i32* %i, align 4, !tbaa !2
  %inc46 = add nsw i32 %45, 1
  store i32 %inc46, i32* %i, align 4, !tbaa !2
  br label %for.cond23, !llvm.loop !19

for.end47:                                        ; preds = %for.cond23
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc58, %for.end47
  %46 = load i32, i32* %i, align 4, !tbaa !2
  %47 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp49 = icmp slt i32 %46, %47
  br i1 %cmp49, label %for.body50, label %for.end60

for.body50:                                       ; preds = %for.cond48
  %48 = load double*, double** %x.addr, align 8, !tbaa !6
  %49 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom51 = sext i32 %49 to i64
  %arrayidx52 = getelementptr inbounds double, double* %48, i64 %idxprom51
  %50 = load double, double* %arrayidx52, align 8, !tbaa !8
  %51 = load double*, double** %z.addr, align 8, !tbaa !6
  %52 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom53 = sext i32 %52 to i64
  %arrayidx54 = getelementptr inbounds double, double* %51, i64 %idxprom53
  %53 = load double, double* %arrayidx54, align 8, !tbaa !8
  %add55 = fadd double %50, %53
  %54 = load double*, double** %x.addr, align 8, !tbaa !6
  %55 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom56 = sext i32 %55 to i64
  %arrayidx57 = getelementptr inbounds double, double* %54, i64 %idxprom56
  store double %add55, double* %arrayidx57, align 8, !tbaa !8
  br label %for.inc58

for.inc58:                                        ; preds = %for.body50
  %56 = load i32, i32* %i, align 4, !tbaa !2
  %inc59 = add nsw i32 %56, 1
  store i32 %inc59, i32* %i, align 4, !tbaa !2
  br label %for.cond48, !llvm.loop !20

for.end60:                                        ; preds = %for.cond48
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond61

for.cond61:                                       ; preds = %for.inc83, %for.end60
  %57 = load i32, i32* %i, align 4, !tbaa !2
  %58 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp62 = icmp slt i32 %57, %58
  br i1 %cmp62, label %for.body63, label %for.end85

for.body63:                                       ; preds = %for.cond61
  store i32 0, i32* %j, align 4, !tbaa !2
  br label %for.cond64

for.cond64:                                       ; preds = %for.inc80, %for.body63
  %59 = load i32, i32* %j, align 4, !tbaa !2
  %60 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp65 = icmp slt i32 %59, %60
  br i1 %cmp65, label %for.body66, label %for.end82

for.body66:                                       ; preds = %for.cond64
  %61 = load double*, double** %w.addr, align 8, !tbaa !6
  %62 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom67 = sext i32 %62 to i64
  %arrayidx68 = getelementptr inbounds double, double* %61, i64 %idxprom67
  %63 = load double, double* %arrayidx68, align 8, !tbaa !8
  %64 = load double, double* %alpha.addr, align 8, !tbaa !8
  %65 = load [4000 x double]*, [4000 x double]** %A.addr, align 8, !tbaa !6
  %66 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom69 = sext i32 %66 to i64
  %arrayidx70 = getelementptr inbounds [4000 x double], [4000 x double]* %65, i64 %idxprom69
  %67 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom71 = sext i32 %67 to i64
  %arrayidx72 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx70, i64 0, i64 %idxprom71
  %68 = load double, double* %arrayidx72, align 8, !tbaa !8
  %mul73 = fmul double %64, %68
  %69 = load double*, double** %x.addr, align 8, !tbaa !6
  %70 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom74 = sext i32 %70 to i64
  %arrayidx75 = getelementptr inbounds double, double* %69, i64 %idxprom74
  %71 = load double, double* %arrayidx75, align 8, !tbaa !8
  %mul76 = fmul double %mul73, %71
  %add77 = fadd double %63, %mul76
  %72 = load double*, double** %w.addr, align 8, !tbaa !6
  %73 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom78 = sext i32 %73 to i64
  %arrayidx79 = getelementptr inbounds double, double* %72, i64 %idxprom78
  store double %add77, double* %arrayidx79, align 8, !tbaa !8
  br label %for.inc80

for.inc80:                                        ; preds = %for.body66
  %74 = load i32, i32* %j, align 4, !tbaa !2
  %inc81 = add nsw i32 %74, 1
  store i32 %inc81, i32* %j, align 4, !tbaa !2
  br label %for.cond64, !llvm.loop !21

for.end82:                                        ; preds = %for.cond64
  br label %for.inc83

for.inc83:                                        ; preds = %for.end82
  %75 = load i32, i32* %i, align 4, !tbaa !2
  %inc84 = add nsw i32 %75, 1
  store i32 %inc84, i32* %i, align 4, !tbaa !2
  br label %for.cond61, !llvm.loop !22

for.end85:                                        ; preds = %for.cond61
  %76 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %76) #6
  %77 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %77) #6
  ret void
}

declare dso_local void @polybench_timer_stop(...) #3

declare dso_local void @polybench_timer_print(...) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define internal void @print_array(i32 %n, double* %w) #0 {
entry:
  %n.addr = alloca i32, align 4
  %w.addr = alloca double*, align 8
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4, !tbaa !2
  store double* %w, double** %w.addr, align 8, !tbaa !6
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #6
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !6
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !6
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !tbaa !2
  %4 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !tbaa !2
  %rem = srem i32 %5, 20
  %cmp2 = icmp eq i32 %rem, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !6
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !6
  %8 = load double*, double** %w.addr, align 8, !tbaa !6
  %9 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds double, double* %8, i64 %idxprom
  %10 = load double, double* %arrayidx, align 8, !tbaa !8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %10)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4, !tbaa !2
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4, !tbaa !2
  br label %for.cond, !llvm.loop !23

for.end:                                          ; preds = %for.cond
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !6
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !6
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %14 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %14) #6
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #5

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #5

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

attributes #0 = { nounwind uwtable "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind uwtable "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 13.0.0 (https://github.com/wsmoses/MLIR-GPU.git 19da7eee184e4d715d9870fe866ac10858e874d1)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"int", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !4, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !4, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"long long", !4, i64 0}
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !13, !14}
!16 = distinct !{!16, !13, !14}
!17 = distinct !{!17, !13, !14}
!18 = distinct !{!18, !13, !14}
!19 = distinct !{!19, !13, !14}
!20 = distinct !{!20, !13, !14}
!21 = distinct !{!21, !13, !14}
!22 = distinct !{!22, !13, !14}
!23 = distinct !{!23, !13, !14}

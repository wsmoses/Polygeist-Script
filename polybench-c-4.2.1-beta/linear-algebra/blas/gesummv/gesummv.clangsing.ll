; ModuleID = 'gesummv.c'
source_filename = "gesummv.c"
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
@.str.3 = private unnamed_addr constant [2 x i8] c"y\00", align 1
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
  %A = alloca [2800 x [2800 x double]]*, align 8
  %B = alloca [2800 x [2800 x double]]*, align 8
  %tmp = alloca [2800 x double]*, align 8
  %x = alloca [2800 x double]*, align 8
  %y = alloca [2800 x double]*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !2
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !6
  %0 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #6
  store i32 2800, i32* %n, align 4, !tbaa !2
  %1 = bitcast double* %alpha to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #6
  %2 = bitcast double* %beta to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #6
  %3 = bitcast [2800 x [2800 x double]]** %A to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #6
  %call = call i8* @polybench_alloc_data(i64 7840000, i32 8)
  %4 = bitcast i8* %call to [2800 x [2800 x double]]*
  store [2800 x [2800 x double]]* %4, [2800 x [2800 x double]]** %A, align 8, !tbaa !6
  %5 = bitcast [2800 x [2800 x double]]** %B to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %5) #6
  %call1 = call i8* @polybench_alloc_data(i64 7840000, i32 8)
  %6 = bitcast i8* %call1 to [2800 x [2800 x double]]*
  store [2800 x [2800 x double]]* %6, [2800 x [2800 x double]]** %B, align 8, !tbaa !6
  %7 = bitcast [2800 x double]** %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %7) #6
  %call2 = call i8* @polybench_alloc_data(i64 2800, i32 8)
  %8 = bitcast i8* %call2 to [2800 x double]*
  store [2800 x double]* %8, [2800 x double]** %tmp, align 8, !tbaa !6
  %9 = bitcast [2800 x double]** %x to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %9) #6
  %call3 = call i8* @polybench_alloc_data(i64 2800, i32 8)
  %10 = bitcast i8* %call3 to [2800 x double]*
  store [2800 x double]* %10, [2800 x double]** %x, align 8, !tbaa !6
  %11 = bitcast [2800 x double]** %y to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %11) #6
  %call4 = call i8* @polybench_alloc_data(i64 2800, i32 8)
  %12 = bitcast i8* %call4 to [2800 x double]*
  store [2800 x double]* %12, [2800 x double]** %y, align 8, !tbaa !6
  %13 = load i32, i32* %n, align 4, !tbaa !2
  %14 = load [2800 x [2800 x double]]*, [2800 x [2800 x double]]** %A, align 8, !tbaa !6
  %arraydecay = getelementptr inbounds [2800 x [2800 x double]], [2800 x [2800 x double]]* %14, i64 0, i64 0
  %15 = load [2800 x [2800 x double]]*, [2800 x [2800 x double]]** %B, align 8, !tbaa !6
  %arraydecay5 = getelementptr inbounds [2800 x [2800 x double]], [2800 x [2800 x double]]* %15, i64 0, i64 0
  %16 = load [2800 x double]*, [2800 x double]** %x, align 8, !tbaa !6
  %arraydecay6 = getelementptr inbounds [2800 x double], [2800 x double]* %16, i64 0, i64 0
  call void @init_array(i32 %13, double* %alpha, double* %beta, [2800 x double]* %arraydecay, [2800 x double]* %arraydecay5, double* %arraydecay6)
  call void (...) @polybench_timer_start()
  %17 = load i32, i32* %n, align 4, !tbaa !2
  %18 = load double, double* %alpha, align 8, !tbaa !8
  %19 = load double, double* %beta, align 8, !tbaa !8
  %20 = load [2800 x [2800 x double]]*, [2800 x [2800 x double]]** %A, align 8, !tbaa !6
  %arraydecay7 = getelementptr inbounds [2800 x [2800 x double]], [2800 x [2800 x double]]* %20, i64 0, i64 0
  %21 = load [2800 x [2800 x double]]*, [2800 x [2800 x double]]** %B, align 8, !tbaa !6
  %arraydecay8 = getelementptr inbounds [2800 x [2800 x double]], [2800 x [2800 x double]]* %21, i64 0, i64 0
  %22 = load [2800 x double]*, [2800 x double]** %tmp, align 8, !tbaa !6
  %arraydecay9 = getelementptr inbounds [2800 x double], [2800 x double]* %22, i64 0, i64 0
  %23 = load [2800 x double]*, [2800 x double]** %x, align 8, !tbaa !6
  %arraydecay10 = getelementptr inbounds [2800 x double], [2800 x double]* %23, i64 0, i64 0
  %24 = load [2800 x double]*, [2800 x double]** %y, align 8, !tbaa !6
  %arraydecay11 = getelementptr inbounds [2800 x double], [2800 x double]* %24, i64 0, i64 0
  call void @kernel_gesummv(i32 %17, double %18, double %19, [2800 x double]* %arraydecay7, [2800 x double]* %arraydecay8, double* %arraydecay9, double* %arraydecay10, double* %arraydecay11)
  call void (...) @polybench_timer_stop()
  call void (...) @polybench_timer_print()
  %25 = load i32, i32* %argc.addr, align 4, !tbaa !2
  %cmp = icmp sgt i32 %25, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %26 = load i8**, i8*** %argv.addr, align 8, !tbaa !6
  %arrayidx = getelementptr inbounds i8*, i8** %26, i64 0
  %27 = load i8*, i8** %arrayidx, align 8, !tbaa !6
  %call12 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)) #7
  %tobool = icmp ne i32 %call12, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %28 = load i32, i32* %n, align 4, !tbaa !2
  %29 = load [2800 x double]*, [2800 x double]** %y, align 8, !tbaa !6
  %arraydecay13 = getelementptr inbounds [2800 x double], [2800 x double]* %29, i64 0, i64 0
  call void @print_array(i32 %28, double* %arraydecay13)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %30 = load [2800 x [2800 x double]]*, [2800 x [2800 x double]]** %A, align 8, !tbaa !6
  %31 = bitcast [2800 x [2800 x double]]* %30 to i8*
  call void @free(i8* %31) #6
  %32 = load [2800 x [2800 x double]]*, [2800 x [2800 x double]]** %B, align 8, !tbaa !6
  %33 = bitcast [2800 x [2800 x double]]* %32 to i8*
  call void @free(i8* %33) #6
  %34 = load [2800 x double]*, [2800 x double]** %tmp, align 8, !tbaa !6
  %35 = bitcast [2800 x double]* %34 to i8*
  call void @free(i8* %35) #6
  %36 = load [2800 x double]*, [2800 x double]** %x, align 8, !tbaa !6
  %37 = bitcast [2800 x double]* %36 to i8*
  call void @free(i8* %37) #6
  %38 = load [2800 x double]*, [2800 x double]** %y, align 8, !tbaa !6
  %39 = bitcast [2800 x double]* %38 to i8*
  call void @free(i8* %39) #6
  %40 = bitcast [2800 x double]** %y to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %40) #6
  %41 = bitcast [2800 x double]** %x to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %41) #6
  %42 = bitcast [2800 x double]** %tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %42) #6
  %43 = bitcast [2800 x [2800 x double]]** %B to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %43) #6
  %44 = bitcast [2800 x [2800 x double]]** %A to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %44) #6
  %45 = bitcast double* %beta to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %45) #6
  %46 = bitcast double* %alpha to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %46) #6
  %47 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %47) #6
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
define internal void @init_array(i32 %n, double* %alpha, double* %beta, [2800 x double]* %A, [2800 x double]* %B, double* %x) #0 {
entry:
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca double*, align 8
  %beta.addr = alloca double*, align 8
  %A.addr = alloca [2800 x double]*, align 8
  %B.addr = alloca [2800 x double]*, align 8
  %x.addr = alloca double*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4, !tbaa !2
  store double* %alpha, double** %alpha.addr, align 8, !tbaa !6
  store double* %beta, double** %beta.addr, align 8, !tbaa !6
  store [2800 x double]* %A, [2800 x double]** %A.addr, align 8, !tbaa !6
  store [2800 x double]* %B, [2800 x double]** %B.addr, align 8, !tbaa !6
  store double* %x, double** %x.addr, align 8, !tbaa !6
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #6
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #6
  %2 = load double*, double** %alpha.addr, align 8, !tbaa !6
  store double 1.500000e+00, double* %2, align 8, !tbaa !8
  %3 = load double*, double** %beta.addr, align 8, !tbaa !6
  store double 1.200000e+00, double* %3, align 8, !tbaa !8
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc24, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !2
  %5 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end26

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !tbaa !2
  %7 = load i32, i32* %n.addr, align 4, !tbaa !2
  %rem = srem i32 %6, %7
  %conv = sitofp i32 %rem to double
  %8 = load i32, i32* %n.addr, align 4, !tbaa !2
  %conv1 = sitofp i32 %8 to double
  %div = fdiv double %conv, %conv1
  %9 = load double*, double** %x.addr, align 8, !tbaa !6
  %10 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds double, double* %9, i64 %idxprom
  store double %div, double* %arrayidx, align 8, !tbaa !8
  store i32 0, i32* %j, align 4, !tbaa !2
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %11 = load i32, i32* %j, align 4, !tbaa !2
  %12 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp3 = icmp slt i32 %11, %12
  br i1 %cmp3, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond2
  %13 = load i32, i32* %i, align 4, !tbaa !2
  %14 = load i32, i32* %j, align 4, !tbaa !2
  %mul = mul nsw i32 %13, %14
  %add = add nsw i32 %mul, 1
  %15 = load i32, i32* %n.addr, align 4, !tbaa !2
  %rem6 = srem i32 %add, %15
  %conv7 = sitofp i32 %rem6 to double
  %16 = load i32, i32* %n.addr, align 4, !tbaa !2
  %conv8 = sitofp i32 %16 to double
  %div9 = fdiv double %conv7, %conv8
  %17 = load [2800 x double]*, [2800 x double]** %A.addr, align 8, !tbaa !6
  %18 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom10 = sext i32 %18 to i64
  %arrayidx11 = getelementptr inbounds [2800 x double], [2800 x double]* %17, i64 %idxprom10
  %19 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom12 = sext i32 %19 to i64
  %arrayidx13 = getelementptr inbounds [2800 x double], [2800 x double]* %arrayidx11, i64 0, i64 %idxprom12
  store double %div9, double* %arrayidx13, align 8, !tbaa !8
  %20 = load i32, i32* %i, align 4, !tbaa !2
  %21 = load i32, i32* %j, align 4, !tbaa !2
  %mul14 = mul nsw i32 %20, %21
  %add15 = add nsw i32 %mul14, 2
  %22 = load i32, i32* %n.addr, align 4, !tbaa !2
  %rem16 = srem i32 %add15, %22
  %conv17 = sitofp i32 %rem16 to double
  %23 = load i32, i32* %n.addr, align 4, !tbaa !2
  %conv18 = sitofp i32 %23 to double
  %div19 = fdiv double %conv17, %conv18
  %24 = load [2800 x double]*, [2800 x double]** %B.addr, align 8, !tbaa !6
  %25 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom20 = sext i32 %25 to i64
  %arrayidx21 = getelementptr inbounds [2800 x double], [2800 x double]* %24, i64 %idxprom20
  %26 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom22 = sext i32 %26 to i64
  %arrayidx23 = getelementptr inbounds [2800 x double], [2800 x double]* %arrayidx21, i64 0, i64 %idxprom22
  store double %div19, double* %arrayidx23, align 8, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %27 = load i32, i32* %j, align 4, !tbaa !2
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %j, align 4, !tbaa !2
  br label %for.cond2, !llvm.loop !12

for.end:                                          ; preds = %for.cond2
  br label %for.inc24

for.inc24:                                        ; preds = %for.end
  %28 = load i32, i32* %i, align 4, !tbaa !2
  %inc25 = add nsw i32 %28, 1
  store i32 %inc25, i32* %i, align 4, !tbaa !2
  br label %for.cond, !llvm.loop !15

for.end26:                                        ; preds = %for.cond
  %29 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #6
  %30 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #6
  ret void
}

declare dso_local void @polybench_timer_start(...) #3

; Function Attrs: nounwind uwtable
define internal void @kernel_gesummv(i32 %n, double %alpha, double %beta, [2800 x double]* %A, [2800 x double]* %B, double* %tmp, double* %x, double* %y) #0 {
entry:
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca double, align 8
  %beta.addr = alloca double, align 8
  %A.addr = alloca [2800 x double]*, align 8
  %B.addr = alloca [2800 x double]*, align 8
  %tmp.addr = alloca double*, align 8
  %x.addr = alloca double*, align 8
  %y.addr = alloca double*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4, !tbaa !2
  store double %alpha, double* %alpha.addr, align 8, !tbaa !8
  store double %beta, double* %beta.addr, align 8, !tbaa !8
  store [2800 x double]* %A, [2800 x double]** %A.addr, align 8, !tbaa !6
  store [2800 x double]* %B, [2800 x double]** %B.addr, align 8, !tbaa !6
  store double* %tmp, double** %tmp.addr, align 8, !tbaa !6
  store double* %x, double** %x.addr, align 8, !tbaa !6
  store double* %y, double** %y.addr, align 8, !tbaa !6
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #6
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #6
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc37, %entry
  %2 = load i32, i32* %i, align 4, !tbaa !2
  %3 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end39

for.body:                                         ; preds = %for.cond
  %4 = load double*, double** %tmp.addr, align 8, !tbaa !6
  %5 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds double, double* %4, i64 %idxprom
  store double 0.000000e+00, double* %arrayidx, align 8, !tbaa !8
  %6 = load double*, double** %y.addr, align 8, !tbaa !6
  %7 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom1 = sext i32 %7 to i64
  %arrayidx2 = getelementptr inbounds double, double* %6, i64 %idxprom1
  store double 0.000000e+00, double* %arrayidx2, align 8, !tbaa !8
  store i32 0, i32* %j, align 4, !tbaa !2
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %8 = load i32, i32* %j, align 4, !tbaa !2
  %9 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp4 = icmp slt i32 %8, %9
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %10 = load [2800 x double]*, [2800 x double]** %A.addr, align 8, !tbaa !6
  %11 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom6 = sext i32 %11 to i64
  %arrayidx7 = getelementptr inbounds [2800 x double], [2800 x double]* %10, i64 %idxprom6
  %12 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom8 = sext i32 %12 to i64
  %arrayidx9 = getelementptr inbounds [2800 x double], [2800 x double]* %arrayidx7, i64 0, i64 %idxprom8
  %13 = load double, double* %arrayidx9, align 8, !tbaa !8
  %14 = load double*, double** %x.addr, align 8, !tbaa !6
  %15 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom10 = sext i32 %15 to i64
  %arrayidx11 = getelementptr inbounds double, double* %14, i64 %idxprom10
  %16 = load double, double* %arrayidx11, align 8, !tbaa !8
  %mul = fmul double %13, %16
  %17 = load double*, double** %tmp.addr, align 8, !tbaa !6
  %18 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom12 = sext i32 %18 to i64
  %arrayidx13 = getelementptr inbounds double, double* %17, i64 %idxprom12
  %19 = load double, double* %arrayidx13, align 8, !tbaa !8
  %add = fadd double %mul, %19
  %20 = load double*, double** %tmp.addr, align 8, !tbaa !6
  %21 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom14 = sext i32 %21 to i64
  %arrayidx15 = getelementptr inbounds double, double* %20, i64 %idxprom14
  store double %add, double* %arrayidx15, align 8, !tbaa !8
  %22 = load [2800 x double]*, [2800 x double]** %B.addr, align 8, !tbaa !6
  %23 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom16 = sext i32 %23 to i64
  %arrayidx17 = getelementptr inbounds [2800 x double], [2800 x double]* %22, i64 %idxprom16
  %24 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom18 = sext i32 %24 to i64
  %arrayidx19 = getelementptr inbounds [2800 x double], [2800 x double]* %arrayidx17, i64 0, i64 %idxprom18
  %25 = load double, double* %arrayidx19, align 8, !tbaa !8
  %26 = load double*, double** %x.addr, align 8, !tbaa !6
  %27 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom20 = sext i32 %27 to i64
  %arrayidx21 = getelementptr inbounds double, double* %26, i64 %idxprom20
  %28 = load double, double* %arrayidx21, align 8, !tbaa !8
  %mul22 = fmul double %25, %28
  %29 = load double*, double** %y.addr, align 8, !tbaa !6
  %30 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom23 = sext i32 %30 to i64
  %arrayidx24 = getelementptr inbounds double, double* %29, i64 %idxprom23
  %31 = load double, double* %arrayidx24, align 8, !tbaa !8
  %add25 = fadd double %mul22, %31
  %32 = load double*, double** %y.addr, align 8, !tbaa !6
  %33 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom26 = sext i32 %33 to i64
  %arrayidx27 = getelementptr inbounds double, double* %32, i64 %idxprom26
  store double %add25, double* %arrayidx27, align 8, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %34 = load i32, i32* %j, align 4, !tbaa !2
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %j, align 4, !tbaa !2
  br label %for.cond3, !llvm.loop !16

for.end:                                          ; preds = %for.cond3
  %35 = load double, double* %alpha.addr, align 8, !tbaa !8
  %36 = load double*, double** %tmp.addr, align 8, !tbaa !6
  %37 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom28 = sext i32 %37 to i64
  %arrayidx29 = getelementptr inbounds double, double* %36, i64 %idxprom28
  %38 = load double, double* %arrayidx29, align 8, !tbaa !8
  %mul30 = fmul double %35, %38
  %39 = load double, double* %beta.addr, align 8, !tbaa !8
  %40 = load double*, double** %y.addr, align 8, !tbaa !6
  %41 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom31 = sext i32 %41 to i64
  %arrayidx32 = getelementptr inbounds double, double* %40, i64 %idxprom31
  %42 = load double, double* %arrayidx32, align 8, !tbaa !8
  %mul33 = fmul double %39, %42
  %add34 = fadd double %mul30, %mul33
  %43 = load double*, double** %y.addr, align 8, !tbaa !6
  %44 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom35 = sext i32 %44 to i64
  %arrayidx36 = getelementptr inbounds double, double* %43, i64 %idxprom35
  store double %add34, double* %arrayidx36, align 8, !tbaa !8
  br label %for.inc37

for.inc37:                                        ; preds = %for.end
  %45 = load i32, i32* %i, align 4, !tbaa !2
  %inc38 = add nsw i32 %45, 1
  store i32 %inc38, i32* %i, align 4, !tbaa !2
  br label %for.cond, !llvm.loop !17

for.end39:                                        ; preds = %for.cond
  %46 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46) #6
  %47 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %47) #6
  ret void
}

declare dso_local void @polybench_timer_stop(...) #3

declare dso_local void @polybench_timer_print(...) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define internal void @print_array(i32 %n, double* %y) #0 {
entry:
  %n.addr = alloca i32, align 4
  %y.addr = alloca double*, align 8
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4, !tbaa !2
  store double* %y, double** %y.addr, align 8, !tbaa !6
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
  %8 = load double*, double** %y.addr, align 8, !tbaa !6
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
  br label %for.cond, !llvm.loop !18

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

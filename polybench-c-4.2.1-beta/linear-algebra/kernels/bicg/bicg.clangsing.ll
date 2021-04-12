; ModuleID = 'bicg.c'
source_filename = "bicg.c"
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
@.str.3 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %A = alloca [2200 x [1800 x double]]*, align 8
  %s = alloca [1800 x double]*, align 8
  %q = alloca [2200 x double]*, align 8
  %p = alloca [1800 x double]*, align 8
  %r = alloca [2200 x double]*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !2
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !6
  %0 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #6
  store i32 2200, i32* %n, align 4, !tbaa !2
  %1 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #6
  store i32 1800, i32* %m, align 4, !tbaa !2
  %2 = bitcast [2200 x [1800 x double]]** %A to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #6
  %call = call i8* @polybench_alloc_data(i64 3960000, i32 8)
  %3 = bitcast i8* %call to [2200 x [1800 x double]]*
  store [2200 x [1800 x double]]* %3, [2200 x [1800 x double]]** %A, align 8, !tbaa !6
  %4 = bitcast [1800 x double]** %s to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #6
  %call1 = call i8* @polybench_alloc_data(i64 1800, i32 8)
  %5 = bitcast i8* %call1 to [1800 x double]*
  store [1800 x double]* %5, [1800 x double]** %s, align 8, !tbaa !6
  %6 = bitcast [2200 x double]** %q to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %6) #6
  %call2 = call i8* @polybench_alloc_data(i64 2200, i32 8)
  %7 = bitcast i8* %call2 to [2200 x double]*
  store [2200 x double]* %7, [2200 x double]** %q, align 8, !tbaa !6
  %8 = bitcast [1800 x double]** %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %8) #6
  %call3 = call i8* @polybench_alloc_data(i64 1800, i32 8)
  %9 = bitcast i8* %call3 to [1800 x double]*
  store [1800 x double]* %9, [1800 x double]** %p, align 8, !tbaa !6
  %10 = bitcast [2200 x double]** %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %10) #6
  %call4 = call i8* @polybench_alloc_data(i64 2200, i32 8)
  %11 = bitcast i8* %call4 to [2200 x double]*
  store [2200 x double]* %11, [2200 x double]** %r, align 8, !tbaa !6
  %12 = load i32, i32* %m, align 4, !tbaa !2
  %13 = load i32, i32* %n, align 4, !tbaa !2
  %14 = load [2200 x [1800 x double]]*, [2200 x [1800 x double]]** %A, align 8, !tbaa !6
  %arraydecay = getelementptr inbounds [2200 x [1800 x double]], [2200 x [1800 x double]]* %14, i64 0, i64 0
  %15 = load [2200 x double]*, [2200 x double]** %r, align 8, !tbaa !6
  %arraydecay5 = getelementptr inbounds [2200 x double], [2200 x double]* %15, i64 0, i64 0
  %16 = load [1800 x double]*, [1800 x double]** %p, align 8, !tbaa !6
  %arraydecay6 = getelementptr inbounds [1800 x double], [1800 x double]* %16, i64 0, i64 0
  call void @init_array(i32 %12, i32 %13, [1800 x double]* %arraydecay, double* %arraydecay5, double* %arraydecay6)
  call void (...) @polybench_timer_start()
  %17 = load i32, i32* %m, align 4, !tbaa !2
  %18 = load i32, i32* %n, align 4, !tbaa !2
  %19 = load [2200 x [1800 x double]]*, [2200 x [1800 x double]]** %A, align 8, !tbaa !6
  %arraydecay7 = getelementptr inbounds [2200 x [1800 x double]], [2200 x [1800 x double]]* %19, i64 0, i64 0
  %20 = load [1800 x double]*, [1800 x double]** %s, align 8, !tbaa !6
  %arraydecay8 = getelementptr inbounds [1800 x double], [1800 x double]* %20, i64 0, i64 0
  %21 = load [2200 x double]*, [2200 x double]** %q, align 8, !tbaa !6
  %arraydecay9 = getelementptr inbounds [2200 x double], [2200 x double]* %21, i64 0, i64 0
  %22 = load [1800 x double]*, [1800 x double]** %p, align 8, !tbaa !6
  %arraydecay10 = getelementptr inbounds [1800 x double], [1800 x double]* %22, i64 0, i64 0
  %23 = load [2200 x double]*, [2200 x double]** %r, align 8, !tbaa !6
  %arraydecay11 = getelementptr inbounds [2200 x double], [2200 x double]* %23, i64 0, i64 0
  call void @kernel_bicg(i32 %17, i32 %18, [1800 x double]* %arraydecay7, double* %arraydecay8, double* %arraydecay9, double* %arraydecay10, double* %arraydecay11)
  call void (...) @polybench_timer_stop()
  call void (...) @polybench_timer_print()
  %24 = load i32, i32* %argc.addr, align 4, !tbaa !2
  %cmp = icmp sgt i32 %24, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %25 = load i8**, i8*** %argv.addr, align 8, !tbaa !6
  %arrayidx = getelementptr inbounds i8*, i8** %25, i64 0
  %26 = load i8*, i8** %arrayidx, align 8, !tbaa !6
  %call12 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)) #7
  %tobool = icmp ne i32 %call12, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %27 = load i32, i32* %m, align 4, !tbaa !2
  %28 = load i32, i32* %n, align 4, !tbaa !2
  %29 = load [1800 x double]*, [1800 x double]** %s, align 8, !tbaa !6
  %arraydecay13 = getelementptr inbounds [1800 x double], [1800 x double]* %29, i64 0, i64 0
  %30 = load [2200 x double]*, [2200 x double]** %q, align 8, !tbaa !6
  %arraydecay14 = getelementptr inbounds [2200 x double], [2200 x double]* %30, i64 0, i64 0
  call void @print_array(i32 %27, i32 %28, double* %arraydecay13, double* %arraydecay14)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %31 = load [2200 x [1800 x double]]*, [2200 x [1800 x double]]** %A, align 8, !tbaa !6
  %32 = bitcast [2200 x [1800 x double]]* %31 to i8*
  call void @free(i8* %32) #6
  %33 = load [1800 x double]*, [1800 x double]** %s, align 8, !tbaa !6
  %34 = bitcast [1800 x double]* %33 to i8*
  call void @free(i8* %34) #6
  %35 = load [2200 x double]*, [2200 x double]** %q, align 8, !tbaa !6
  %36 = bitcast [2200 x double]* %35 to i8*
  call void @free(i8* %36) #6
  %37 = load [1800 x double]*, [1800 x double]** %p, align 8, !tbaa !6
  %38 = bitcast [1800 x double]* %37 to i8*
  call void @free(i8* %38) #6
  %39 = load [2200 x double]*, [2200 x double]** %r, align 8, !tbaa !6
  %40 = bitcast [2200 x double]* %39 to i8*
  call void @free(i8* %40) #6
  %41 = bitcast [2200 x double]** %r to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %41) #6
  %42 = bitcast [1800 x double]** %p to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %42) #6
  %43 = bitcast [2200 x double]** %q to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %43) #6
  %44 = bitcast [1800 x double]** %s to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %44) #6
  %45 = bitcast [2200 x [1800 x double]]** %A to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %45) #6
  %46 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46) #6
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
  store i64 %n, i64* %n.addr, align 8, !tbaa !8
  store i32 %elt_size, i32* %elt_size.addr, align 4, !tbaa !2
  %0 = load i64, i64* %n.addr, align 8, !tbaa !8
  %1 = load i32, i32* %elt_size.addr, align 4, !tbaa !2
  %conv = sext i32 %1 to i64
  %mul = mul i64 %0, %conv
  %call = call noalias i8* @malloc(i64 %mul) #6
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define internal void @init_array(i32 %m, i32 %n, [1800 x double]* %A, double* %r, double* %p) #0 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %A.addr = alloca [1800 x double]*, align 8
  %r.addr = alloca double*, align 8
  %p.addr = alloca double*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4, !tbaa !2
  store i32 %n, i32* %n.addr, align 4, !tbaa !2
  store [1800 x double]* %A, [1800 x double]** %A.addr, align 8, !tbaa !6
  store double* %r, double** %r.addr, align 8, !tbaa !6
  store double* %p, double** %p.addr, align 8, !tbaa !6
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #6
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #6
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !tbaa !2
  %3 = load i32, i32* %m.addr, align 4, !tbaa !2
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !tbaa !2
  %5 = load i32, i32* %m.addr, align 4, !tbaa !2
  %rem = srem i32 %4, %5
  %conv = sitofp i32 %rem to double
  %6 = load i32, i32* %m.addr, align 4, !tbaa !2
  %conv1 = sitofp i32 %6 to double
  %div = fdiv double %conv, %conv1
  %7 = load double*, double** %p.addr, align 8, !tbaa !6
  %8 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds double, double* %7, i64 %idxprom
  store double %div, double* %arrayidx, align 8, !tbaa !10
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !tbaa !2
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4, !tbaa !2
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc27, %for.end
  %10 = load i32, i32* %i, align 4, !tbaa !2
  %11 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp3 = icmp slt i32 %10, %11
  br i1 %cmp3, label %for.body5, label %for.end29

for.body5:                                        ; preds = %for.cond2
  %12 = load i32, i32* %i, align 4, !tbaa !2
  %13 = load i32, i32* %n.addr, align 4, !tbaa !2
  %rem6 = srem i32 %12, %13
  %conv7 = sitofp i32 %rem6 to double
  %14 = load i32, i32* %n.addr, align 4, !tbaa !2
  %conv8 = sitofp i32 %14 to double
  %div9 = fdiv double %conv7, %conv8
  %15 = load double*, double** %r.addr, align 8, !tbaa !6
  %16 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom10 = sext i32 %16 to i64
  %arrayidx11 = getelementptr inbounds double, double* %15, i64 %idxprom10
  store double %div9, double* %arrayidx11, align 8, !tbaa !10
  store i32 0, i32* %j, align 4, !tbaa !2
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc24, %for.body5
  %17 = load i32, i32* %j, align 4, !tbaa !2
  %18 = load i32, i32* %m.addr, align 4, !tbaa !2
  %cmp13 = icmp slt i32 %17, %18
  br i1 %cmp13, label %for.body15, label %for.end26

for.body15:                                       ; preds = %for.cond12
  %19 = load i32, i32* %i, align 4, !tbaa !2
  %20 = load i32, i32* %j, align 4, !tbaa !2
  %add = add nsw i32 %20, 1
  %mul = mul nsw i32 %19, %add
  %21 = load i32, i32* %n.addr, align 4, !tbaa !2
  %rem16 = srem i32 %mul, %21
  %conv17 = sitofp i32 %rem16 to double
  %22 = load i32, i32* %n.addr, align 4, !tbaa !2
  %conv18 = sitofp i32 %22 to double
  %div19 = fdiv double %conv17, %conv18
  %23 = load [1800 x double]*, [1800 x double]** %A.addr, align 8, !tbaa !6
  %24 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom20 = sext i32 %24 to i64
  %arrayidx21 = getelementptr inbounds [1800 x double], [1800 x double]* %23, i64 %idxprom20
  %25 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom22 = sext i32 %25 to i64
  %arrayidx23 = getelementptr inbounds [1800 x double], [1800 x double]* %arrayidx21, i64 0, i64 %idxprom22
  store double %div19, double* %arrayidx23, align 8, !tbaa !10
  br label %for.inc24

for.inc24:                                        ; preds = %for.body15
  %26 = load i32, i32* %j, align 4, !tbaa !2
  %inc25 = add nsw i32 %26, 1
  store i32 %inc25, i32* %j, align 4, !tbaa !2
  br label %for.cond12, !llvm.loop !15

for.end26:                                        ; preds = %for.cond12
  br label %for.inc27

for.inc27:                                        ; preds = %for.end26
  %27 = load i32, i32* %i, align 4, !tbaa !2
  %inc28 = add nsw i32 %27, 1
  store i32 %inc28, i32* %i, align 4, !tbaa !2
  br label %for.cond2, !llvm.loop !16

for.end29:                                        ; preds = %for.cond2
  %28 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #6
  %29 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #6
  ret void
}

declare dso_local void @polybench_timer_start(...) #3

; Function Attrs: nounwind uwtable
define internal void @kernel_bicg(i32 %m, i32 %n, [1800 x double]* %A, double* %s, double* %q, double* %p, double* %r) #0 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %A.addr = alloca [1800 x double]*, align 8
  %s.addr = alloca double*, align 8
  %q.addr = alloca double*, align 8
  %p.addr = alloca double*, align 8
  %r.addr = alloca double*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4, !tbaa !2
  store i32 %n, i32* %n.addr, align 4, !tbaa !2
  store [1800 x double]* %A, [1800 x double]** %A.addr, align 8, !tbaa !6
  store double* %s, double** %s.addr, align 8, !tbaa !6
  store double* %q, double** %q.addr, align 8, !tbaa !6
  store double* %p, double** %p.addr, align 8, !tbaa !6
  store double* %r, double** %r.addr, align 8, !tbaa !6
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #6
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #6
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !tbaa !2
  %3 = load i32, i32* %m.addr, align 4, !tbaa !2
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load double*, double** %s.addr, align 8, !tbaa !6
  %5 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds double, double* %4, i64 %idxprom
  store double 0.000000e+00, double* %arrayidx, align 8, !tbaa !10
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !tbaa !2
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4, !tbaa !2
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc34, %for.end
  %7 = load i32, i32* %i, align 4, !tbaa !2
  %8 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp2 = icmp slt i32 %7, %8
  br i1 %cmp2, label %for.body3, label %for.end36

for.body3:                                        ; preds = %for.cond1
  %9 = load double*, double** %q.addr, align 8, !tbaa !6
  %10 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom4 = sext i32 %10 to i64
  %arrayidx5 = getelementptr inbounds double, double* %9, i64 %idxprom4
  store double 0.000000e+00, double* %arrayidx5, align 8, !tbaa !10
  store i32 0, i32* %j, align 4, !tbaa !2
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc31, %for.body3
  %11 = load i32, i32* %j, align 4, !tbaa !2
  %12 = load i32, i32* %m.addr, align 4, !tbaa !2
  %cmp7 = icmp slt i32 %11, %12
  br i1 %cmp7, label %for.body8, label %for.end33

for.body8:                                        ; preds = %for.cond6
  %13 = load double*, double** %s.addr, align 8, !tbaa !6
  %14 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom9 = sext i32 %14 to i64
  %arrayidx10 = getelementptr inbounds double, double* %13, i64 %idxprom9
  %15 = load double, double* %arrayidx10, align 8, !tbaa !10
  %16 = load double*, double** %r.addr, align 8, !tbaa !6
  %17 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom11 = sext i32 %17 to i64
  %arrayidx12 = getelementptr inbounds double, double* %16, i64 %idxprom11
  %18 = load double, double* %arrayidx12, align 8, !tbaa !10
  %19 = load [1800 x double]*, [1800 x double]** %A.addr, align 8, !tbaa !6
  %20 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom13 = sext i32 %20 to i64
  %arrayidx14 = getelementptr inbounds [1800 x double], [1800 x double]* %19, i64 %idxprom13
  %21 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom15 = sext i32 %21 to i64
  %arrayidx16 = getelementptr inbounds [1800 x double], [1800 x double]* %arrayidx14, i64 0, i64 %idxprom15
  %22 = load double, double* %arrayidx16, align 8, !tbaa !10
  %mul = fmul double %18, %22
  %add = fadd double %15, %mul
  %23 = load double*, double** %s.addr, align 8, !tbaa !6
  %24 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom17 = sext i32 %24 to i64
  %arrayidx18 = getelementptr inbounds double, double* %23, i64 %idxprom17
  store double %add, double* %arrayidx18, align 8, !tbaa !10
  %25 = load double*, double** %q.addr, align 8, !tbaa !6
  %26 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom19 = sext i32 %26 to i64
  %arrayidx20 = getelementptr inbounds double, double* %25, i64 %idxprom19
  %27 = load double, double* %arrayidx20, align 8, !tbaa !10
  %28 = load [1800 x double]*, [1800 x double]** %A.addr, align 8, !tbaa !6
  %29 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom21 = sext i32 %29 to i64
  %arrayidx22 = getelementptr inbounds [1800 x double], [1800 x double]* %28, i64 %idxprom21
  %30 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom23 = sext i32 %30 to i64
  %arrayidx24 = getelementptr inbounds [1800 x double], [1800 x double]* %arrayidx22, i64 0, i64 %idxprom23
  %31 = load double, double* %arrayidx24, align 8, !tbaa !10
  %32 = load double*, double** %p.addr, align 8, !tbaa !6
  %33 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom25 = sext i32 %33 to i64
  %arrayidx26 = getelementptr inbounds double, double* %32, i64 %idxprom25
  %34 = load double, double* %arrayidx26, align 8, !tbaa !10
  %mul27 = fmul double %31, %34
  %add28 = fadd double %27, %mul27
  %35 = load double*, double** %q.addr, align 8, !tbaa !6
  %36 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom29 = sext i32 %36 to i64
  %arrayidx30 = getelementptr inbounds double, double* %35, i64 %idxprom29
  store double %add28, double* %arrayidx30, align 8, !tbaa !10
  br label %for.inc31

for.inc31:                                        ; preds = %for.body8
  %37 = load i32, i32* %j, align 4, !tbaa !2
  %inc32 = add nsw i32 %37, 1
  store i32 %inc32, i32* %j, align 4, !tbaa !2
  br label %for.cond6, !llvm.loop !18

for.end33:                                        ; preds = %for.cond6
  br label %for.inc34

for.inc34:                                        ; preds = %for.end33
  %38 = load i32, i32* %i, align 4, !tbaa !2
  %inc35 = add nsw i32 %38, 1
  store i32 %inc35, i32* %i, align 4, !tbaa !2
  br label %for.cond1, !llvm.loop !19

for.end36:                                        ; preds = %for.cond1
  %39 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #6
  %40 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #6
  ret void
}

declare dso_local void @polybench_timer_stop(...) #3

declare dso_local void @polybench_timer_print(...) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define internal void @print_array(i32 %m, i32 %n, double* %s, double* %q) #0 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %s.addr = alloca double*, align 8
  %q.addr = alloca double*, align 8
  %i = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4, !tbaa !2
  store i32 %n, i32* %n.addr, align 4, !tbaa !2
  store double* %s, double** %s.addr, align 8, !tbaa !6
  store double* %q, double** %q.addr, align 8, !tbaa !6
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
  %4 = load i32, i32* %m.addr, align 4, !tbaa !2
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
  %8 = load double*, double** %s.addr, align 8, !tbaa !6
  %9 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds double, double* %8, i64 %idxprom
  %10 = load double, double* %arrayidx, align 8, !tbaa !10
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %10)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4, !tbaa !2
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4, !tbaa !2
  br label %for.cond, !llvm.loop !20

for.end:                                          ; preds = %for.cond
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !6
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !6
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc18, %for.end
  %14 = load i32, i32* %i, align 4, !tbaa !2
  %15 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp8 = icmp slt i32 %14, %15
  br i1 %cmp8, label %for.body9, label %for.end20

for.body9:                                        ; preds = %for.cond7
  %16 = load i32, i32* %i, align 4, !tbaa !2
  %rem10 = srem i32 %16, 20
  %cmp11 = icmp eq i32 %rem10, 0
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %for.body9
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !6
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %for.body9
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !6
  %19 = load double*, double** %q.addr, align 8, !tbaa !6
  %20 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom15 = sext i32 %20 to i64
  %arrayidx16 = getelementptr inbounds double, double* %19, i64 %idxprom15
  %21 = load double, double* %arrayidx16, align 8, !tbaa !10
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %21)
  br label %for.inc18

for.inc18:                                        ; preds = %if.end14
  %22 = load i32, i32* %i, align 4, !tbaa !2
  %inc19 = add nsw i32 %22, 1
  store i32 %inc19, i32* %i, align 4, !tbaa !2
  br label %for.cond7, !llvm.loop !21

for.end20:                                        ; preds = %for.cond7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !6
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !6
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  %25 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #6
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
!9 = !{!"long long", !4, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"double", !4, i64 0}
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

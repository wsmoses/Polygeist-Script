; ModuleID = 'trmm.c'
source_filename = "trmm.c"
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
@.str.3 = private unnamed_addr constant [2 x i8] c"B\00", align 1
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
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %alpha = alloca double, align 8
  %A = alloca [2000 x [2000 x double]]*, align 8
  %B = alloca [2000 x [2600 x double]]*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !2
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !6
  %0 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #6
  store i32 2000, i32* %m, align 4, !tbaa !2
  %1 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #6
  store i32 2600, i32* %n, align 4, !tbaa !2
  %2 = bitcast double* %alpha to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #6
  %3 = bitcast [2000 x [2000 x double]]** %A to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #6
  %call = call i8* @polybench_alloc_data(i64 4000000, i32 8)
  %4 = bitcast i8* %call to [2000 x [2000 x double]]*
  store [2000 x [2000 x double]]* %4, [2000 x [2000 x double]]** %A, align 8, !tbaa !6
  %5 = bitcast [2000 x [2600 x double]]** %B to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %5) #6
  %call1 = call i8* @polybench_alloc_data(i64 5200000, i32 8)
  %6 = bitcast i8* %call1 to [2000 x [2600 x double]]*
  store [2000 x [2600 x double]]* %6, [2000 x [2600 x double]]** %B, align 8, !tbaa !6
  %7 = load i32, i32* %m, align 4, !tbaa !2
  %8 = load i32, i32* %n, align 4, !tbaa !2
  %9 = load [2000 x [2000 x double]]*, [2000 x [2000 x double]]** %A, align 8, !tbaa !6
  %arraydecay = getelementptr inbounds [2000 x [2000 x double]], [2000 x [2000 x double]]* %9, i64 0, i64 0
  %10 = load [2000 x [2600 x double]]*, [2000 x [2600 x double]]** %B, align 8, !tbaa !6
  %arraydecay2 = getelementptr inbounds [2000 x [2600 x double]], [2000 x [2600 x double]]* %10, i64 0, i64 0
  call void @init_array(i32 %7, i32 %8, double* %alpha, [2000 x double]* %arraydecay, [2600 x double]* %arraydecay2)
  call void (...) @polybench_timer_start()
  %11 = load i32, i32* %m, align 4, !tbaa !2
  %12 = load i32, i32* %n, align 4, !tbaa !2
  %13 = load double, double* %alpha, align 8, !tbaa !8
  %14 = load [2000 x [2000 x double]]*, [2000 x [2000 x double]]** %A, align 8, !tbaa !6
  %arraydecay3 = getelementptr inbounds [2000 x [2000 x double]], [2000 x [2000 x double]]* %14, i64 0, i64 0
  %15 = load [2000 x [2600 x double]]*, [2000 x [2600 x double]]** %B, align 8, !tbaa !6
  %arraydecay4 = getelementptr inbounds [2000 x [2600 x double]], [2000 x [2600 x double]]* %15, i64 0, i64 0
  call void @kernel_trmm(i32 %11, i32 %12, double %13, [2000 x double]* %arraydecay3, [2600 x double]* %arraydecay4)
  call void (...) @polybench_timer_stop()
  call void (...) @polybench_timer_print()
  %16 = load i32, i32* %argc.addr, align 4, !tbaa !2
  %cmp = icmp sgt i32 %16, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %17 = load i8**, i8*** %argv.addr, align 8, !tbaa !6
  %arrayidx = getelementptr inbounds i8*, i8** %17, i64 0
  %18 = load i8*, i8** %arrayidx, align 8, !tbaa !6
  %call5 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)) #7
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %19 = load i32, i32* %m, align 4, !tbaa !2
  %20 = load i32, i32* %n, align 4, !tbaa !2
  %21 = load [2000 x [2600 x double]]*, [2000 x [2600 x double]]** %B, align 8, !tbaa !6
  %arraydecay6 = getelementptr inbounds [2000 x [2600 x double]], [2000 x [2600 x double]]* %21, i64 0, i64 0
  call void @print_array(i32 %19, i32 %20, [2600 x double]* %arraydecay6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %22 = load [2000 x [2000 x double]]*, [2000 x [2000 x double]]** %A, align 8, !tbaa !6
  %23 = bitcast [2000 x [2000 x double]]* %22 to i8*
  call void @free(i8* %23) #6
  %24 = load [2000 x [2600 x double]]*, [2000 x [2600 x double]]** %B, align 8, !tbaa !6
  %25 = bitcast [2000 x [2600 x double]]* %24 to i8*
  call void @free(i8* %25) #6
  %26 = bitcast [2000 x [2600 x double]]** %B to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %26) #6
  %27 = bitcast [2000 x [2000 x double]]** %A to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %27) #6
  %28 = bitcast double* %alpha to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %28) #6
  %29 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #6
  %30 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #6
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
define internal void @init_array(i32 %m, i32 %n, double* %alpha, [2000 x double]* %A, [2600 x double]* %B) #0 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca double*, align 8
  %A.addr = alloca [2000 x double]*, align 8
  %B.addr = alloca [2600 x double]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4, !tbaa !2
  store i32 %n, i32* %n.addr, align 4, !tbaa !2
  store double* %alpha, double** %alpha.addr, align 8, !tbaa !6
  store [2000 x double]* %A, [2000 x double]** %A.addr, align 8, !tbaa !6
  store [2600 x double]* %B, [2600 x double]** %B.addr, align 8, !tbaa !6
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #6
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #6
  %2 = load double*, double** %alpha.addr, align 8, !tbaa !6
  store double 1.500000e+00, double* %2, align 8, !tbaa !8
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc27, %entry
  %3 = load i32, i32* %i, align 4, !tbaa !2
  %4 = load i32, i32* %m.addr, align 4, !tbaa !2
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end29

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !tbaa !2
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %5 = load i32, i32* %j, align 4, !tbaa !2
  %6 = load i32, i32* %i, align 4, !tbaa !2
  %cmp2 = icmp slt i32 %5, %6
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %7 = load i32, i32* %i, align 4, !tbaa !2
  %8 = load i32, i32* %j, align 4, !tbaa !2
  %add = add nsw i32 %7, %8
  %9 = load i32, i32* %m.addr, align 4, !tbaa !2
  %rem = srem i32 %add, %9
  %conv = sitofp i32 %rem to double
  %10 = load i32, i32* %m.addr, align 4, !tbaa !2
  %conv4 = sitofp i32 %10 to double
  %div = fdiv double %conv, %conv4
  %11 = load [2000 x double]*, [2000 x double]** %A.addr, align 8, !tbaa !6
  %12 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [2000 x double], [2000 x double]* %11, i64 %idxprom
  %13 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom5 = sext i32 %13 to i64
  %arrayidx6 = getelementptr inbounds [2000 x double], [2000 x double]* %arrayidx, i64 0, i64 %idxprom5
  store double %div, double* %arrayidx6, align 8, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %14 = load i32, i32* %j, align 4, !tbaa !2
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %j, align 4, !tbaa !2
  br label %for.cond1, !llvm.loop !12

for.end:                                          ; preds = %for.cond1
  %15 = load [2000 x double]*, [2000 x double]** %A.addr, align 8, !tbaa !6
  %16 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom7 = sext i32 %16 to i64
  %arrayidx8 = getelementptr inbounds [2000 x double], [2000 x double]* %15, i64 %idxprom7
  %17 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom9 = sext i32 %17 to i64
  %arrayidx10 = getelementptr inbounds [2000 x double], [2000 x double]* %arrayidx8, i64 0, i64 %idxprom9
  store double 1.000000e+00, double* %arrayidx10, align 8, !tbaa !8
  store i32 0, i32* %j, align 4, !tbaa !2
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc24, %for.end
  %18 = load i32, i32* %j, align 4, !tbaa !2
  %19 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp12 = icmp slt i32 %18, %19
  br i1 %cmp12, label %for.body14, label %for.end26

for.body14:                                       ; preds = %for.cond11
  %20 = load i32, i32* %n.addr, align 4, !tbaa !2
  %21 = load i32, i32* %i, align 4, !tbaa !2
  %22 = load i32, i32* %j, align 4, !tbaa !2
  %sub = sub nsw i32 %21, %22
  %add15 = add nsw i32 %20, %sub
  %23 = load i32, i32* %n.addr, align 4, !tbaa !2
  %rem16 = srem i32 %add15, %23
  %conv17 = sitofp i32 %rem16 to double
  %24 = load i32, i32* %n.addr, align 4, !tbaa !2
  %conv18 = sitofp i32 %24 to double
  %div19 = fdiv double %conv17, %conv18
  %25 = load [2600 x double]*, [2600 x double]** %B.addr, align 8, !tbaa !6
  %26 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom20 = sext i32 %26 to i64
  %arrayidx21 = getelementptr inbounds [2600 x double], [2600 x double]* %25, i64 %idxprom20
  %27 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom22 = sext i32 %27 to i64
  %arrayidx23 = getelementptr inbounds [2600 x double], [2600 x double]* %arrayidx21, i64 0, i64 %idxprom22
  store double %div19, double* %arrayidx23, align 8, !tbaa !8
  br label %for.inc24

for.inc24:                                        ; preds = %for.body14
  %28 = load i32, i32* %j, align 4, !tbaa !2
  %inc25 = add nsw i32 %28, 1
  store i32 %inc25, i32* %j, align 4, !tbaa !2
  br label %for.cond11, !llvm.loop !15

for.end26:                                        ; preds = %for.cond11
  br label %for.inc27

for.inc27:                                        ; preds = %for.end26
  %29 = load i32, i32* %i, align 4, !tbaa !2
  %inc28 = add nsw i32 %29, 1
  store i32 %inc28, i32* %i, align 4, !tbaa !2
  br label %for.cond, !llvm.loop !16

for.end29:                                        ; preds = %for.cond
  %30 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #6
  %31 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #6
  ret void
}

declare dso_local void @polybench_timer_start(...) #3

; Function Attrs: nounwind uwtable
define internal void @kernel_trmm(i32 %m, i32 %n, double %alpha, [2000 x double]* %A, [2600 x double]* %B) #0 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca double, align 8
  %A.addr = alloca [2000 x double]*, align 8
  %B.addr = alloca [2600 x double]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4, !tbaa !2
  store i32 %n, i32* %n.addr, align 4, !tbaa !2
  store double %alpha, double* %alpha.addr, align 8, !tbaa !8
  store [2000 x double]* %A, [2000 x double]** %A.addr, align 8, !tbaa !6
  store [2600 x double]* %B, [2600 x double]** %B.addr, align 8, !tbaa !6
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #6
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #6
  %2 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #6
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc30, %entry
  %3 = load i32, i32* %i, align 4, !tbaa !2
  %4 = load i32, i32* %m.addr, align 4, !tbaa !2
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end32

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !tbaa !2
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc27, %for.body
  %5 = load i32, i32* %j, align 4, !tbaa !2
  %6 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp2 = icmp slt i32 %5, %6
  br i1 %cmp2, label %for.body3, label %for.end29

for.body3:                                        ; preds = %for.cond1
  %7 = load i32, i32* %i, align 4, !tbaa !2
  %add = add nsw i32 %7, 1
  store i32 %add, i32* %k, align 4, !tbaa !2
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %8 = load i32, i32* %k, align 4, !tbaa !2
  %9 = load i32, i32* %m.addr, align 4, !tbaa !2
  %cmp5 = icmp slt i32 %8, %9
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %10 = load [2000 x double]*, [2000 x double]** %A.addr, align 8, !tbaa !6
  %11 = load i32, i32* %k, align 4, !tbaa !2
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [2000 x double], [2000 x double]* %10, i64 %idxprom
  %12 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom7 = sext i32 %12 to i64
  %arrayidx8 = getelementptr inbounds [2000 x double], [2000 x double]* %arrayidx, i64 0, i64 %idxprom7
  %13 = load double, double* %arrayidx8, align 8, !tbaa !8
  %14 = load [2600 x double]*, [2600 x double]** %B.addr, align 8, !tbaa !6
  %15 = load i32, i32* %k, align 4, !tbaa !2
  %idxprom9 = sext i32 %15 to i64
  %arrayidx10 = getelementptr inbounds [2600 x double], [2600 x double]* %14, i64 %idxprom9
  %16 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom11 = sext i32 %16 to i64
  %arrayidx12 = getelementptr inbounds [2600 x double], [2600 x double]* %arrayidx10, i64 0, i64 %idxprom11
  %17 = load double, double* %arrayidx12, align 8, !tbaa !8
  %mul = fmul double %13, %17
  %18 = load [2600 x double]*, [2600 x double]** %B.addr, align 8, !tbaa !6
  %19 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom13 = sext i32 %19 to i64
  %arrayidx14 = getelementptr inbounds [2600 x double], [2600 x double]* %18, i64 %idxprom13
  %20 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom15 = sext i32 %20 to i64
  %arrayidx16 = getelementptr inbounds [2600 x double], [2600 x double]* %arrayidx14, i64 0, i64 %idxprom15
  %21 = load double, double* %arrayidx16, align 8, !tbaa !8
  %add17 = fadd double %21, %mul
  store double %add17, double* %arrayidx16, align 8, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %22 = load i32, i32* %k, align 4, !tbaa !2
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %k, align 4, !tbaa !2
  br label %for.cond4, !llvm.loop !17

for.end:                                          ; preds = %for.cond4
  %23 = load double, double* %alpha.addr, align 8, !tbaa !8
  %24 = load [2600 x double]*, [2600 x double]** %B.addr, align 8, !tbaa !6
  %25 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom18 = sext i32 %25 to i64
  %arrayidx19 = getelementptr inbounds [2600 x double], [2600 x double]* %24, i64 %idxprom18
  %26 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom20 = sext i32 %26 to i64
  %arrayidx21 = getelementptr inbounds [2600 x double], [2600 x double]* %arrayidx19, i64 0, i64 %idxprom20
  %27 = load double, double* %arrayidx21, align 8, !tbaa !8
  %mul22 = fmul double %23, %27
  %28 = load [2600 x double]*, [2600 x double]** %B.addr, align 8, !tbaa !6
  %29 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom23 = sext i32 %29 to i64
  %arrayidx24 = getelementptr inbounds [2600 x double], [2600 x double]* %28, i64 %idxprom23
  %30 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom25 = sext i32 %30 to i64
  %arrayidx26 = getelementptr inbounds [2600 x double], [2600 x double]* %arrayidx24, i64 0, i64 %idxprom25
  store double %mul22, double* %arrayidx26, align 8, !tbaa !8
  br label %for.inc27

for.inc27:                                        ; preds = %for.end
  %31 = load i32, i32* %j, align 4, !tbaa !2
  %inc28 = add nsw i32 %31, 1
  store i32 %inc28, i32* %j, align 4, !tbaa !2
  br label %for.cond1, !llvm.loop !18

for.end29:                                        ; preds = %for.cond1
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %32 = load i32, i32* %i, align 4, !tbaa !2
  %inc31 = add nsw i32 %32, 1
  store i32 %inc31, i32* %i, align 4, !tbaa !2
  br label %for.cond, !llvm.loop !19

for.end32:                                        ; preds = %for.cond
  %33 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #6
  %34 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #6
  %35 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #6
  ret void
}

declare dso_local void @polybench_timer_stop(...) #3

declare dso_local void @polybench_timer_print(...) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define internal void @print_array(i32 %m, i32 %n, [2600 x double]* %B) #0 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %B.addr = alloca [2600 x double]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4, !tbaa !2
  store i32 %n, i32* %n.addr, align 4, !tbaa !2
  store [2600 x double]* %B, [2600 x double]** %B.addr, align 8, !tbaa !6
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #6
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #6
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !6
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !6
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !2
  %5 = load i32, i32* %m.addr, align 4, !tbaa !2
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !tbaa !2
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %6 = load i32, i32* %j, align 4, !tbaa !2
  %7 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp3 = icmp slt i32 %6, %7
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %8 = load i32, i32* %i, align 4, !tbaa !2
  %9 = load i32, i32* %m.addr, align 4, !tbaa !2
  %mul = mul nsw i32 %8, %9
  %10 = load i32, i32* %j, align 4, !tbaa !2
  %add = add nsw i32 %mul, %10
  %rem = srem i32 %add, 20
  %cmp5 = icmp eq i32 %rem, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !6
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body4
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !6
  %13 = load [2600 x double]*, [2600 x double]** %B.addr, align 8, !tbaa !6
  %14 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds [2600 x double], [2600 x double]* %13, i64 %idxprom
  %15 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom7 = sext i32 %15 to i64
  %arrayidx8 = getelementptr inbounds [2600 x double], [2600 x double]* %arrayidx, i64 0, i64 %idxprom7
  %16 = load double, double* %arrayidx8, align 8, !tbaa !8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %16)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i32, i32* %j, align 4, !tbaa !2
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %j, align 4, !tbaa !2
  br label %for.cond2, !llvm.loop !20

for.end:                                          ; preds = %for.cond2
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %18 = load i32, i32* %i, align 4, !tbaa !2
  %inc11 = add nsw i32 %18, 1
  store i32 %inc11, i32* %i, align 4, !tbaa !2
  br label %for.cond, !llvm.loop !21

for.end12:                                        ; preds = %for.cond
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !6
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !6
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %21 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #6
  %22 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #6
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

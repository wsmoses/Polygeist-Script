; ModuleID = 'mvt.c'
source_filename = "mvt.c"
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
@.str.3 = private unnamed_addr constant [3 x i8] c"x1\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"x2\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %n = alloca i32, align 4
  %A = alloca [4000 x [4000 x double]]*, align 8
  %x1 = alloca [4000 x double]*, align 8
  %x2 = alloca [4000 x double]*, align 8
  %y_1 = alloca [4000 x double]*, align 8
  %y_2 = alloca [4000 x double]*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !2
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !6
  %0 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #6
  store i32 4000, i32* %n, align 4, !tbaa !2
  %1 = bitcast [4000 x [4000 x double]]** %A to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #6
  %call = call i8* @polybench_alloc_data(i64 16000000, i32 8)
  %2 = bitcast i8* %call to [4000 x [4000 x double]]*
  store [4000 x [4000 x double]]* %2, [4000 x [4000 x double]]** %A, align 8, !tbaa !6
  %3 = bitcast [4000 x double]** %x1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #6
  %call1 = call i8* @polybench_alloc_data(i64 4000, i32 8)
  %4 = bitcast i8* %call1 to [4000 x double]*
  store [4000 x double]* %4, [4000 x double]** %x1, align 8, !tbaa !6
  %5 = bitcast [4000 x double]** %x2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %5) #6
  %call2 = call i8* @polybench_alloc_data(i64 4000, i32 8)
  %6 = bitcast i8* %call2 to [4000 x double]*
  store [4000 x double]* %6, [4000 x double]** %x2, align 8, !tbaa !6
  %7 = bitcast [4000 x double]** %y_1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %7) #6
  %call3 = call i8* @polybench_alloc_data(i64 4000, i32 8)
  %8 = bitcast i8* %call3 to [4000 x double]*
  store [4000 x double]* %8, [4000 x double]** %y_1, align 8, !tbaa !6
  %9 = bitcast [4000 x double]** %y_2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %9) #6
  %call4 = call i8* @polybench_alloc_data(i64 4000, i32 8)
  %10 = bitcast i8* %call4 to [4000 x double]*
  store [4000 x double]* %10, [4000 x double]** %y_2, align 8, !tbaa !6
  %11 = load i32, i32* %n, align 4, !tbaa !2
  %12 = load [4000 x double]*, [4000 x double]** %x1, align 8, !tbaa !6
  %arraydecay = getelementptr inbounds [4000 x double], [4000 x double]* %12, i64 0, i64 0
  %13 = load [4000 x double]*, [4000 x double]** %x2, align 8, !tbaa !6
  %arraydecay5 = getelementptr inbounds [4000 x double], [4000 x double]* %13, i64 0, i64 0
  %14 = load [4000 x double]*, [4000 x double]** %y_1, align 8, !tbaa !6
  %arraydecay6 = getelementptr inbounds [4000 x double], [4000 x double]* %14, i64 0, i64 0
  %15 = load [4000 x double]*, [4000 x double]** %y_2, align 8, !tbaa !6
  %arraydecay7 = getelementptr inbounds [4000 x double], [4000 x double]* %15, i64 0, i64 0
  %16 = load [4000 x [4000 x double]]*, [4000 x [4000 x double]]** %A, align 8, !tbaa !6
  %arraydecay8 = getelementptr inbounds [4000 x [4000 x double]], [4000 x [4000 x double]]* %16, i64 0, i64 0
  call void @init_array(i32 %11, double* %arraydecay, double* %arraydecay5, double* %arraydecay6, double* %arraydecay7, [4000 x double]* %arraydecay8)
  call void (...) @polybench_timer_start()
  %17 = load i32, i32* %n, align 4, !tbaa !2
  %18 = load [4000 x double]*, [4000 x double]** %x1, align 8, !tbaa !6
  %arraydecay9 = getelementptr inbounds [4000 x double], [4000 x double]* %18, i64 0, i64 0
  %19 = load [4000 x double]*, [4000 x double]** %x2, align 8, !tbaa !6
  %arraydecay10 = getelementptr inbounds [4000 x double], [4000 x double]* %19, i64 0, i64 0
  %20 = load [4000 x double]*, [4000 x double]** %y_1, align 8, !tbaa !6
  %arraydecay11 = getelementptr inbounds [4000 x double], [4000 x double]* %20, i64 0, i64 0
  %21 = load [4000 x double]*, [4000 x double]** %y_2, align 8, !tbaa !6
  %arraydecay12 = getelementptr inbounds [4000 x double], [4000 x double]* %21, i64 0, i64 0
  %22 = load [4000 x [4000 x double]]*, [4000 x [4000 x double]]** %A, align 8, !tbaa !6
  %arraydecay13 = getelementptr inbounds [4000 x [4000 x double]], [4000 x [4000 x double]]* %22, i64 0, i64 0
  call void @kernel_mvt(i32 %17, double* %arraydecay9, double* %arraydecay10, double* %arraydecay11, double* %arraydecay12, [4000 x double]* %arraydecay13)
  call void (...) @polybench_timer_stop()
  call void (...) @polybench_timer_print()
  %23 = load i32, i32* %argc.addr, align 4, !tbaa !2
  %cmp = icmp sgt i32 %23, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %24 = load i8**, i8*** %argv.addr, align 8, !tbaa !6
  %arrayidx = getelementptr inbounds i8*, i8** %24, i64 0
  %25 = load i8*, i8** %arrayidx, align 8, !tbaa !6
  %call14 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)) #7
  %tobool = icmp ne i32 %call14, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %26 = load i32, i32* %n, align 4, !tbaa !2
  %27 = load [4000 x double]*, [4000 x double]** %x1, align 8, !tbaa !6
  %arraydecay15 = getelementptr inbounds [4000 x double], [4000 x double]* %27, i64 0, i64 0
  %28 = load [4000 x double]*, [4000 x double]** %x2, align 8, !tbaa !6
  %arraydecay16 = getelementptr inbounds [4000 x double], [4000 x double]* %28, i64 0, i64 0
  call void @print_array(i32 %26, double* %arraydecay15, double* %arraydecay16)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %29 = load [4000 x [4000 x double]]*, [4000 x [4000 x double]]** %A, align 8, !tbaa !6
  %30 = bitcast [4000 x [4000 x double]]* %29 to i8*
  call void @free(i8* %30) #6
  %31 = load [4000 x double]*, [4000 x double]** %x1, align 8, !tbaa !6
  %32 = bitcast [4000 x double]* %31 to i8*
  call void @free(i8* %32) #6
  %33 = load [4000 x double]*, [4000 x double]** %x2, align 8, !tbaa !6
  %34 = bitcast [4000 x double]* %33 to i8*
  call void @free(i8* %34) #6
  %35 = load [4000 x double]*, [4000 x double]** %y_1, align 8, !tbaa !6
  %36 = bitcast [4000 x double]* %35 to i8*
  call void @free(i8* %36) #6
  %37 = load [4000 x double]*, [4000 x double]** %y_2, align 8, !tbaa !6
  %38 = bitcast [4000 x double]* %37 to i8*
  call void @free(i8* %38) #6
  %39 = bitcast [4000 x double]** %y_2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %39) #6
  %40 = bitcast [4000 x double]** %y_1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %40) #6
  %41 = bitcast [4000 x double]** %x2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %41) #6
  %42 = bitcast [4000 x double]** %x1 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %42) #6
  %43 = bitcast [4000 x [4000 x double]]** %A to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %43) #6
  %44 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %44) #6
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
define internal void @init_array(i32 %n, double* %x1, double* %x2, double* %y_1, double* %y_2, [4000 x double]* %A) #0 {
entry:
  %n.addr = alloca i32, align 4
  %x1.addr = alloca double*, align 8
  %x2.addr = alloca double*, align 8
  %y_1.addr = alloca double*, align 8
  %y_2.addr = alloca double*, align 8
  %A.addr = alloca [4000 x double]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4, !tbaa !2
  store double* %x1, double** %x1.addr, align 8, !tbaa !6
  store double* %x2, double** %x2.addr, align 8, !tbaa !6
  store double* %y_1, double** %y_1.addr, align 8, !tbaa !6
  store double* %y_2, double** %y_2.addr, align 8, !tbaa !6
  store [4000 x double]* %A, [4000 x double]** %A.addr, align 8, !tbaa !6
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #6
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #6
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc34, %entry
  %2 = load i32, i32* %i, align 4, !tbaa !2
  %3 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end36

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !tbaa !2
  %5 = load i32, i32* %n.addr, align 4, !tbaa !2
  %rem = srem i32 %4, %5
  %conv = sitofp i32 %rem to double
  %6 = load i32, i32* %n.addr, align 4, !tbaa !2
  %conv1 = sitofp i32 %6 to double
  %div = fdiv double %conv, %conv1
  %7 = load double*, double** %x1.addr, align 8, !tbaa !6
  %8 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds double, double* %7, i64 %idxprom
  store double %div, double* %arrayidx, align 8, !tbaa !10
  %9 = load i32, i32* %i, align 4, !tbaa !2
  %add = add nsw i32 %9, 1
  %10 = load i32, i32* %n.addr, align 4, !tbaa !2
  %rem2 = srem i32 %add, %10
  %conv3 = sitofp i32 %rem2 to double
  %11 = load i32, i32* %n.addr, align 4, !tbaa !2
  %conv4 = sitofp i32 %11 to double
  %div5 = fdiv double %conv3, %conv4
  %12 = load double*, double** %x2.addr, align 8, !tbaa !6
  %13 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom6 = sext i32 %13 to i64
  %arrayidx7 = getelementptr inbounds double, double* %12, i64 %idxprom6
  store double %div5, double* %arrayidx7, align 8, !tbaa !10
  %14 = load i32, i32* %i, align 4, !tbaa !2
  %add8 = add nsw i32 %14, 3
  %15 = load i32, i32* %n.addr, align 4, !tbaa !2
  %rem9 = srem i32 %add8, %15
  %conv10 = sitofp i32 %rem9 to double
  %16 = load i32, i32* %n.addr, align 4, !tbaa !2
  %conv11 = sitofp i32 %16 to double
  %div12 = fdiv double %conv10, %conv11
  %17 = load double*, double** %y_1.addr, align 8, !tbaa !6
  %18 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom13 = sext i32 %18 to i64
  %arrayidx14 = getelementptr inbounds double, double* %17, i64 %idxprom13
  store double %div12, double* %arrayidx14, align 8, !tbaa !10
  %19 = load i32, i32* %i, align 4, !tbaa !2
  %add15 = add nsw i32 %19, 4
  %20 = load i32, i32* %n.addr, align 4, !tbaa !2
  %rem16 = srem i32 %add15, %20
  %conv17 = sitofp i32 %rem16 to double
  %21 = load i32, i32* %n.addr, align 4, !tbaa !2
  %conv18 = sitofp i32 %21 to double
  %div19 = fdiv double %conv17, %conv18
  %22 = load double*, double** %y_2.addr, align 8, !tbaa !6
  %23 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom20 = sext i32 %23 to i64
  %arrayidx21 = getelementptr inbounds double, double* %22, i64 %idxprom20
  store double %div19, double* %arrayidx21, align 8, !tbaa !10
  store i32 0, i32* %j, align 4, !tbaa !2
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc, %for.body
  %24 = load i32, i32* %j, align 4, !tbaa !2
  %25 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp23 = icmp slt i32 %24, %25
  br i1 %cmp23, label %for.body25, label %for.end

for.body25:                                       ; preds = %for.cond22
  %26 = load i32, i32* %i, align 4, !tbaa !2
  %27 = load i32, i32* %j, align 4, !tbaa !2
  %mul = mul nsw i32 %26, %27
  %28 = load i32, i32* %n.addr, align 4, !tbaa !2
  %rem26 = srem i32 %mul, %28
  %conv27 = sitofp i32 %rem26 to double
  %29 = load i32, i32* %n.addr, align 4, !tbaa !2
  %conv28 = sitofp i32 %29 to double
  %div29 = fdiv double %conv27, %conv28
  %30 = load [4000 x double]*, [4000 x double]** %A.addr, align 8, !tbaa !6
  %31 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom30 = sext i32 %31 to i64
  %arrayidx31 = getelementptr inbounds [4000 x double], [4000 x double]* %30, i64 %idxprom30
  %32 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom32 = sext i32 %32 to i64
  %arrayidx33 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx31, i64 0, i64 %idxprom32
  store double %div29, double* %arrayidx33, align 8, !tbaa !10
  br label %for.inc

for.inc:                                          ; preds = %for.body25
  %33 = load i32, i32* %j, align 4, !tbaa !2
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %j, align 4, !tbaa !2
  br label %for.cond22, !llvm.loop !12

for.end:                                          ; preds = %for.cond22
  br label %for.inc34

for.inc34:                                        ; preds = %for.end
  %34 = load i32, i32* %i, align 4, !tbaa !2
  %inc35 = add nsw i32 %34, 1
  store i32 %inc35, i32* %i, align 4, !tbaa !2
  br label %for.cond, !llvm.loop !15

for.end36:                                        ; preds = %for.cond
  %35 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #6
  %36 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #6
  ret void
}

declare dso_local void @polybench_timer_start(...) #3

; Function Attrs: nounwind uwtable
define internal void @kernel_mvt(i32 %n, double* %x1, double* %x2, double* %y_1, double* %y_2, [4000 x double]* %A) #0 {
entry:
  %n.addr = alloca i32, align 4
  %x1.addr = alloca double*, align 8
  %x2.addr = alloca double*, align 8
  %y_1.addr = alloca double*, align 8
  %y_2.addr = alloca double*, align 8
  %A.addr = alloca [4000 x double]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4, !tbaa !2
  store double* %x1, double** %x1.addr, align 8, !tbaa !6
  store double* %x2, double** %x2.addr, align 8, !tbaa !6
  store double* %y_1, double** %y_1.addr, align 8, !tbaa !6
  store double* %y_2, double** %y_2.addr, align 8, !tbaa !6
  store [4000 x double]* %A, [4000 x double]** %A.addr, align 8, !tbaa !6
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #6
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #6
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc12, %entry
  %2 = load i32, i32* %i, align 4, !tbaa !2
  %3 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end14

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !tbaa !2
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %4 = load i32, i32* %j, align 4, !tbaa !2
  %5 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp2 = icmp slt i32 %4, %5
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %6 = load double*, double** %x1.addr, align 8, !tbaa !6
  %7 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds double, double* %6, i64 %idxprom
  %8 = load double, double* %arrayidx, align 8, !tbaa !10
  %9 = load [4000 x double]*, [4000 x double]** %A.addr, align 8, !tbaa !6
  %10 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom4 = sext i32 %10 to i64
  %arrayidx5 = getelementptr inbounds [4000 x double], [4000 x double]* %9, i64 %idxprom4
  %11 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom6 = sext i32 %11 to i64
  %arrayidx7 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx5, i64 0, i64 %idxprom6
  %12 = load double, double* %arrayidx7, align 8, !tbaa !10
  %13 = load double*, double** %y_1.addr, align 8, !tbaa !6
  %14 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom8 = sext i32 %14 to i64
  %arrayidx9 = getelementptr inbounds double, double* %13, i64 %idxprom8
  %15 = load double, double* %arrayidx9, align 8, !tbaa !10
  %mul = fmul double %12, %15
  %add = fadd double %8, %mul
  %16 = load double*, double** %x1.addr, align 8, !tbaa !6
  %17 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom10 = sext i32 %17 to i64
  %arrayidx11 = getelementptr inbounds double, double* %16, i64 %idxprom10
  store double %add, double* %arrayidx11, align 8, !tbaa !10
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %18 = load i32, i32* %j, align 4, !tbaa !2
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %j, align 4, !tbaa !2
  br label %for.cond1, !llvm.loop !16

for.end:                                          ; preds = %for.cond1
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %19 = load i32, i32* %i, align 4, !tbaa !2
  %inc13 = add nsw i32 %19, 1
  store i32 %inc13, i32* %i, align 4, !tbaa !2
  br label %for.cond, !llvm.loop !17

for.end14:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc36, %for.end14
  %20 = load i32, i32* %i, align 4, !tbaa !2
  %21 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp16 = icmp slt i32 %20, %21
  br i1 %cmp16, label %for.body17, label %for.end38

for.body17:                                       ; preds = %for.cond15
  store i32 0, i32* %j, align 4, !tbaa !2
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc33, %for.body17
  %22 = load i32, i32* %j, align 4, !tbaa !2
  %23 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp19 = icmp slt i32 %22, %23
  br i1 %cmp19, label %for.body20, label %for.end35

for.body20:                                       ; preds = %for.cond18
  %24 = load double*, double** %x2.addr, align 8, !tbaa !6
  %25 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom21 = sext i32 %25 to i64
  %arrayidx22 = getelementptr inbounds double, double* %24, i64 %idxprom21
  %26 = load double, double* %arrayidx22, align 8, !tbaa !10
  %27 = load [4000 x double]*, [4000 x double]** %A.addr, align 8, !tbaa !6
  %28 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom23 = sext i32 %28 to i64
  %arrayidx24 = getelementptr inbounds [4000 x double], [4000 x double]* %27, i64 %idxprom23
  %29 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom25 = sext i32 %29 to i64
  %arrayidx26 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx24, i64 0, i64 %idxprom25
  %30 = load double, double* %arrayidx26, align 8, !tbaa !10
  %31 = load double*, double** %y_2.addr, align 8, !tbaa !6
  %32 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom27 = sext i32 %32 to i64
  %arrayidx28 = getelementptr inbounds double, double* %31, i64 %idxprom27
  %33 = load double, double* %arrayidx28, align 8, !tbaa !10
  %mul29 = fmul double %30, %33
  %add30 = fadd double %26, %mul29
  %34 = load double*, double** %x2.addr, align 8, !tbaa !6
  %35 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom31 = sext i32 %35 to i64
  %arrayidx32 = getelementptr inbounds double, double* %34, i64 %idxprom31
  store double %add30, double* %arrayidx32, align 8, !tbaa !10
  br label %for.inc33

for.inc33:                                        ; preds = %for.body20
  %36 = load i32, i32* %j, align 4, !tbaa !2
  %inc34 = add nsw i32 %36, 1
  store i32 %inc34, i32* %j, align 4, !tbaa !2
  br label %for.cond18, !llvm.loop !18

for.end35:                                        ; preds = %for.cond18
  br label %for.inc36

for.inc36:                                        ; preds = %for.end35
  %37 = load i32, i32* %i, align 4, !tbaa !2
  %inc37 = add nsw i32 %37, 1
  store i32 %inc37, i32* %i, align 4, !tbaa !2
  br label %for.cond15, !llvm.loop !19

for.end38:                                        ; preds = %for.cond15
  %38 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #6
  %39 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #6
  ret void
}

declare dso_local void @polybench_timer_stop(...) #3

declare dso_local void @polybench_timer_print(...) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define internal void @print_array(i32 %n, double* %x1, double* %x2) #0 {
entry:
  %n.addr = alloca i32, align 4
  %x1.addr = alloca double*, align 8
  %x2.addr = alloca double*, align 8
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4, !tbaa !2
  store double* %x1, double** %x1.addr, align 8, !tbaa !6
  store double* %x2, double** %x2.addr, align 8, !tbaa !6
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #6
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !6
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !6
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
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
  %8 = load double*, double** %x1.addr, align 8, !tbaa !6
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
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !6
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
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
  %19 = load double*, double** %x2.addr, align 8, !tbaa !6
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
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
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

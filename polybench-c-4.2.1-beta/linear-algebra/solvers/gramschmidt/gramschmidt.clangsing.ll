; ModuleID = 'gramschmidt.c'
source_filename = "gramschmidt.c"
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
@.str.3 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"Q\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %A = alloca [2000 x [2600 x double]]*, align 8
  %R = alloca [2600 x [2600 x double]]*, align 8
  %Q = alloca [2000 x [2600 x double]]*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !2
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !6
  %0 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #6
  store i32 2000, i32* %m, align 4, !tbaa !2
  %1 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #6
  store i32 2600, i32* %n, align 4, !tbaa !2
  %2 = bitcast [2000 x [2600 x double]]** %A to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #6
  %call = call i8* @polybench_alloc_data(i64 5200000, i32 8)
  %3 = bitcast i8* %call to [2000 x [2600 x double]]*
  store [2000 x [2600 x double]]* %3, [2000 x [2600 x double]]** %A, align 8, !tbaa !6
  %4 = bitcast [2600 x [2600 x double]]** %R to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #6
  %call1 = call i8* @polybench_alloc_data(i64 6760000, i32 8)
  %5 = bitcast i8* %call1 to [2600 x [2600 x double]]*
  store [2600 x [2600 x double]]* %5, [2600 x [2600 x double]]** %R, align 8, !tbaa !6
  %6 = bitcast [2000 x [2600 x double]]** %Q to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %6) #6
  %call2 = call i8* @polybench_alloc_data(i64 5200000, i32 8)
  %7 = bitcast i8* %call2 to [2000 x [2600 x double]]*
  store [2000 x [2600 x double]]* %7, [2000 x [2600 x double]]** %Q, align 8, !tbaa !6
  %8 = load i32, i32* %m, align 4, !tbaa !2
  %9 = load i32, i32* %n, align 4, !tbaa !2
  %10 = load [2000 x [2600 x double]]*, [2000 x [2600 x double]]** %A, align 8, !tbaa !6
  %arraydecay = getelementptr inbounds [2000 x [2600 x double]], [2000 x [2600 x double]]* %10, i64 0, i64 0
  %11 = load [2600 x [2600 x double]]*, [2600 x [2600 x double]]** %R, align 8, !tbaa !6
  %arraydecay3 = getelementptr inbounds [2600 x [2600 x double]], [2600 x [2600 x double]]* %11, i64 0, i64 0
  %12 = load [2000 x [2600 x double]]*, [2000 x [2600 x double]]** %Q, align 8, !tbaa !6
  %arraydecay4 = getelementptr inbounds [2000 x [2600 x double]], [2000 x [2600 x double]]* %12, i64 0, i64 0
  call void @init_array(i32 %8, i32 %9, [2600 x double]* %arraydecay, [2600 x double]* %arraydecay3, [2600 x double]* %arraydecay4)
  call void (...) @polybench_timer_start()
  %13 = load i32, i32* %m, align 4, !tbaa !2
  %14 = load i32, i32* %n, align 4, !tbaa !2
  %15 = load [2000 x [2600 x double]]*, [2000 x [2600 x double]]** %A, align 8, !tbaa !6
  %arraydecay5 = getelementptr inbounds [2000 x [2600 x double]], [2000 x [2600 x double]]* %15, i64 0, i64 0
  %16 = load [2600 x [2600 x double]]*, [2600 x [2600 x double]]** %R, align 8, !tbaa !6
  %arraydecay6 = getelementptr inbounds [2600 x [2600 x double]], [2600 x [2600 x double]]* %16, i64 0, i64 0
  %17 = load [2000 x [2600 x double]]*, [2000 x [2600 x double]]** %Q, align 8, !tbaa !6
  %arraydecay7 = getelementptr inbounds [2000 x [2600 x double]], [2000 x [2600 x double]]* %17, i64 0, i64 0
  call void @kernel_gramschmidt(i32 %13, i32 %14, [2600 x double]* %arraydecay5, [2600 x double]* %arraydecay6, [2600 x double]* %arraydecay7)
  call void (...) @polybench_timer_stop()
  call void (...) @polybench_timer_print()
  %18 = load i32, i32* %argc.addr, align 4, !tbaa !2
  %cmp = icmp sgt i32 %18, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %19 = load i8**, i8*** %argv.addr, align 8, !tbaa !6
  %arrayidx = getelementptr inbounds i8*, i8** %19, i64 0
  %20 = load i8*, i8** %arrayidx, align 8, !tbaa !6
  %call8 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)) #7
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %21 = load i32, i32* %m, align 4, !tbaa !2
  %22 = load i32, i32* %n, align 4, !tbaa !2
  %23 = load [2000 x [2600 x double]]*, [2000 x [2600 x double]]** %A, align 8, !tbaa !6
  %arraydecay9 = getelementptr inbounds [2000 x [2600 x double]], [2000 x [2600 x double]]* %23, i64 0, i64 0
  %24 = load [2600 x [2600 x double]]*, [2600 x [2600 x double]]** %R, align 8, !tbaa !6
  %arraydecay10 = getelementptr inbounds [2600 x [2600 x double]], [2600 x [2600 x double]]* %24, i64 0, i64 0
  %25 = load [2000 x [2600 x double]]*, [2000 x [2600 x double]]** %Q, align 8, !tbaa !6
  %arraydecay11 = getelementptr inbounds [2000 x [2600 x double]], [2000 x [2600 x double]]* %25, i64 0, i64 0
  call void @print_array(i32 %21, i32 %22, [2600 x double]* %arraydecay9, [2600 x double]* %arraydecay10, [2600 x double]* %arraydecay11)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %26 = load [2000 x [2600 x double]]*, [2000 x [2600 x double]]** %A, align 8, !tbaa !6
  %27 = bitcast [2000 x [2600 x double]]* %26 to i8*
  call void @free(i8* %27) #6
  %28 = load [2600 x [2600 x double]]*, [2600 x [2600 x double]]** %R, align 8, !tbaa !6
  %29 = bitcast [2600 x [2600 x double]]* %28 to i8*
  call void @free(i8* %29) #6
  %30 = load [2000 x [2600 x double]]*, [2000 x [2600 x double]]** %Q, align 8, !tbaa !6
  %31 = bitcast [2000 x [2600 x double]]* %30 to i8*
  call void @free(i8* %31) #6
  %32 = bitcast [2000 x [2600 x double]]** %Q to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %32) #6
  %33 = bitcast [2600 x [2600 x double]]** %R to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %33) #6
  %34 = bitcast [2000 x [2600 x double]]** %A to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %34) #6
  %35 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #6
  %36 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #6
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
define internal void @init_array(i32 %m, i32 %n, [2600 x double]* %A, [2600 x double]* %R, [2600 x double]* %Q) #0 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %A.addr = alloca [2600 x double]*, align 8
  %R.addr = alloca [2600 x double]*, align 8
  %Q.addr = alloca [2600 x double]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4, !tbaa !2
  store i32 %n, i32* %n.addr, align 4, !tbaa !2
  store [2600 x double]* %A, [2600 x double]** %A.addr, align 8, !tbaa !6
  store [2600 x double]* %R, [2600 x double]** %R.addr, align 8, !tbaa !6
  store [2600 x double]* %Q, [2600 x double]** %Q.addr, align 8, !tbaa !6
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #6
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #6
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc12, %entry
  %2 = load i32, i32* %i, align 4, !tbaa !2
  %3 = load i32, i32* %m.addr, align 4, !tbaa !2
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
  %6 = load i32, i32* %i, align 4, !tbaa !2
  %7 = load i32, i32* %j, align 4, !tbaa !2
  %mul = mul nsw i32 %6, %7
  %8 = load i32, i32* %m.addr, align 4, !tbaa !2
  %rem = srem i32 %mul, %8
  %conv = sitofp i32 %rem to double
  %9 = load i32, i32* %m.addr, align 4, !tbaa !2
  %conv4 = sitofp i32 %9 to double
  %div = fdiv double %conv, %conv4
  %mul5 = fmul double %div, 1.000000e+02
  %add = fadd double %mul5, 1.000000e+01
  %10 = load [2600 x double]*, [2600 x double]** %A.addr, align 8, !tbaa !6
  %11 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [2600 x double], [2600 x double]* %10, i64 %idxprom
  %12 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom6 = sext i32 %12 to i64
  %arrayidx7 = getelementptr inbounds [2600 x double], [2600 x double]* %arrayidx, i64 0, i64 %idxprom6
  store double %add, double* %arrayidx7, align 8, !tbaa !10
  %13 = load [2600 x double]*, [2600 x double]** %Q.addr, align 8, !tbaa !6
  %14 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom8 = sext i32 %14 to i64
  %arrayidx9 = getelementptr inbounds [2600 x double], [2600 x double]* %13, i64 %idxprom8
  %15 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom10 = sext i32 %15 to i64
  %arrayidx11 = getelementptr inbounds [2600 x double], [2600 x double]* %arrayidx9, i64 0, i64 %idxprom10
  store double 0.000000e+00, double* %arrayidx11, align 8, !tbaa !10
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %16 = load i32, i32* %j, align 4, !tbaa !2
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %j, align 4, !tbaa !2
  br label %for.cond1, !llvm.loop !12

for.end:                                          ; preds = %for.cond1
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %17 = load i32, i32* %i, align 4, !tbaa !2
  %inc13 = add nsw i32 %17, 1
  store i32 %inc13, i32* %i, align 4, !tbaa !2
  br label %for.cond, !llvm.loop !15

for.end14:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc30, %for.end14
  %18 = load i32, i32* %i, align 4, !tbaa !2
  %19 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp16 = icmp slt i32 %18, %19
  br i1 %cmp16, label %for.body18, label %for.end32

for.body18:                                       ; preds = %for.cond15
  store i32 0, i32* %j, align 4, !tbaa !2
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc27, %for.body18
  %20 = load i32, i32* %j, align 4, !tbaa !2
  %21 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp20 = icmp slt i32 %20, %21
  br i1 %cmp20, label %for.body22, label %for.end29

for.body22:                                       ; preds = %for.cond19
  %22 = load [2600 x double]*, [2600 x double]** %R.addr, align 8, !tbaa !6
  %23 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom23 = sext i32 %23 to i64
  %arrayidx24 = getelementptr inbounds [2600 x double], [2600 x double]* %22, i64 %idxprom23
  %24 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom25 = sext i32 %24 to i64
  %arrayidx26 = getelementptr inbounds [2600 x double], [2600 x double]* %arrayidx24, i64 0, i64 %idxprom25
  store double 0.000000e+00, double* %arrayidx26, align 8, !tbaa !10
  br label %for.inc27

for.inc27:                                        ; preds = %for.body22
  %25 = load i32, i32* %j, align 4, !tbaa !2
  %inc28 = add nsw i32 %25, 1
  store i32 %inc28, i32* %j, align 4, !tbaa !2
  br label %for.cond19, !llvm.loop !16

for.end29:                                        ; preds = %for.cond19
  br label %for.inc30

for.inc30:                                        ; preds = %for.end29
  %26 = load i32, i32* %i, align 4, !tbaa !2
  %inc31 = add nsw i32 %26, 1
  store i32 %inc31, i32* %i, align 4, !tbaa !2
  br label %for.cond15, !llvm.loop !17

for.end32:                                        ; preds = %for.cond15
  %27 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #6
  %28 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #6
  ret void
}

declare dso_local void @polybench_timer_start(...) #3

; Function Attrs: nounwind uwtable
define internal void @kernel_gramschmidt(i32 %m, i32 %n, [2600 x double]* %A, [2600 x double]* %R, [2600 x double]* %Q) #0 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %A.addr = alloca [2600 x double]*, align 8
  %R.addr = alloca [2600 x double]*, align 8
  %Q.addr = alloca [2600 x double]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %nrm = alloca double, align 8
  store i32 %m, i32* %m.addr, align 4, !tbaa !2
  store i32 %n, i32* %n.addr, align 4, !tbaa !2
  store [2600 x double]* %A, [2600 x double]** %A.addr, align 8, !tbaa !6
  store [2600 x double]* %R, [2600 x double]** %R.addr, align 8, !tbaa !6
  store [2600 x double]* %Q, [2600 x double]** %Q.addr, align 8, !tbaa !6
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #6
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #6
  %2 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #6
  %3 = bitcast double* %nrm to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #6
  store i32 0, i32* %k, align 4, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc86, %entry
  %4 = load i32, i32* %k, align 4, !tbaa !2
  %5 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end88

for.body:                                         ; preds = %for.cond
  store double 0.000000e+00, double* %nrm, align 8, !tbaa !10
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %6 = load i32, i32* %i, align 4, !tbaa !2
  %7 = load i32, i32* %m.addr, align 4, !tbaa !2
  %cmp2 = icmp slt i32 %6, %7
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %8 = load [2600 x double]*, [2600 x double]** %A.addr, align 8, !tbaa !6
  %9 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [2600 x double], [2600 x double]* %8, i64 %idxprom
  %10 = load i32, i32* %k, align 4, !tbaa !2
  %idxprom4 = sext i32 %10 to i64
  %arrayidx5 = getelementptr inbounds [2600 x double], [2600 x double]* %arrayidx, i64 0, i64 %idxprom4
  %11 = load double, double* %arrayidx5, align 8, !tbaa !10
  %12 = load [2600 x double]*, [2600 x double]** %A.addr, align 8, !tbaa !6
  %13 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom6 = sext i32 %13 to i64
  %arrayidx7 = getelementptr inbounds [2600 x double], [2600 x double]* %12, i64 %idxprom6
  %14 = load i32, i32* %k, align 4, !tbaa !2
  %idxprom8 = sext i32 %14 to i64
  %arrayidx9 = getelementptr inbounds [2600 x double], [2600 x double]* %arrayidx7, i64 0, i64 %idxprom8
  %15 = load double, double* %arrayidx9, align 8, !tbaa !10
  %mul = fmul double %11, %15
  %16 = load double, double* %nrm, align 8, !tbaa !10
  %add = fadd double %16, %mul
  store double %add, double* %nrm, align 8, !tbaa !10
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %17 = load i32, i32* %i, align 4, !tbaa !2
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4, !tbaa !2
  br label %for.cond1, !llvm.loop !18

for.end:                                          ; preds = %for.cond1
  %18 = load double, double* %nrm, align 8, !tbaa !10
  %call = call double @sqrt(double %18) #6
  %19 = load [2600 x double]*, [2600 x double]** %R.addr, align 8, !tbaa !6
  %20 = load i32, i32* %k, align 4, !tbaa !2
  %idxprom10 = sext i32 %20 to i64
  %arrayidx11 = getelementptr inbounds [2600 x double], [2600 x double]* %19, i64 %idxprom10
  %21 = load i32, i32* %k, align 4, !tbaa !2
  %idxprom12 = sext i32 %21 to i64
  %arrayidx13 = getelementptr inbounds [2600 x double], [2600 x double]* %arrayidx11, i64 0, i64 %idxprom12
  store double %call, double* %arrayidx13, align 8, !tbaa !10
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc29, %for.end
  %22 = load i32, i32* %i, align 4, !tbaa !2
  %23 = load i32, i32* %m.addr, align 4, !tbaa !2
  %cmp15 = icmp slt i32 %22, %23
  br i1 %cmp15, label %for.body16, label %for.end31

for.body16:                                       ; preds = %for.cond14
  %24 = load [2600 x double]*, [2600 x double]** %A.addr, align 8, !tbaa !6
  %25 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom17 = sext i32 %25 to i64
  %arrayidx18 = getelementptr inbounds [2600 x double], [2600 x double]* %24, i64 %idxprom17
  %26 = load i32, i32* %k, align 4, !tbaa !2
  %idxprom19 = sext i32 %26 to i64
  %arrayidx20 = getelementptr inbounds [2600 x double], [2600 x double]* %arrayidx18, i64 0, i64 %idxprom19
  %27 = load double, double* %arrayidx20, align 8, !tbaa !10
  %28 = load [2600 x double]*, [2600 x double]** %R.addr, align 8, !tbaa !6
  %29 = load i32, i32* %k, align 4, !tbaa !2
  %idxprom21 = sext i32 %29 to i64
  %arrayidx22 = getelementptr inbounds [2600 x double], [2600 x double]* %28, i64 %idxprom21
  %30 = load i32, i32* %k, align 4, !tbaa !2
  %idxprom23 = sext i32 %30 to i64
  %arrayidx24 = getelementptr inbounds [2600 x double], [2600 x double]* %arrayidx22, i64 0, i64 %idxprom23
  %31 = load double, double* %arrayidx24, align 8, !tbaa !10
  %div = fdiv double %27, %31
  %32 = load [2600 x double]*, [2600 x double]** %Q.addr, align 8, !tbaa !6
  %33 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom25 = sext i32 %33 to i64
  %arrayidx26 = getelementptr inbounds [2600 x double], [2600 x double]* %32, i64 %idxprom25
  %34 = load i32, i32* %k, align 4, !tbaa !2
  %idxprom27 = sext i32 %34 to i64
  %arrayidx28 = getelementptr inbounds [2600 x double], [2600 x double]* %arrayidx26, i64 0, i64 %idxprom27
  store double %div, double* %arrayidx28, align 8, !tbaa !10
  br label %for.inc29

for.inc29:                                        ; preds = %for.body16
  %35 = load i32, i32* %i, align 4, !tbaa !2
  %inc30 = add nsw i32 %35, 1
  store i32 %inc30, i32* %i, align 4, !tbaa !2
  br label %for.cond14, !llvm.loop !19

for.end31:                                        ; preds = %for.cond14
  %36 = load i32, i32* %k, align 4, !tbaa !2
  %add32 = add nsw i32 %36, 1
  store i32 %add32, i32* %j, align 4, !tbaa !2
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc83, %for.end31
  %37 = load i32, i32* %j, align 4, !tbaa !2
  %38 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp34 = icmp slt i32 %37, %38
  br i1 %cmp34, label %for.body35, label %for.end85

for.body35:                                       ; preds = %for.cond33
  %39 = load [2600 x double]*, [2600 x double]** %R.addr, align 8, !tbaa !6
  %40 = load i32, i32* %k, align 4, !tbaa !2
  %idxprom36 = sext i32 %40 to i64
  %arrayidx37 = getelementptr inbounds [2600 x double], [2600 x double]* %39, i64 %idxprom36
  %41 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom38 = sext i32 %41 to i64
  %arrayidx39 = getelementptr inbounds [2600 x double], [2600 x double]* %arrayidx37, i64 0, i64 %idxprom38
  store double 0.000000e+00, double* %arrayidx39, align 8, !tbaa !10
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc57, %for.body35
  %42 = load i32, i32* %i, align 4, !tbaa !2
  %43 = load i32, i32* %m.addr, align 4, !tbaa !2
  %cmp41 = icmp slt i32 %42, %43
  br i1 %cmp41, label %for.body42, label %for.end59

for.body42:                                       ; preds = %for.cond40
  %44 = load [2600 x double]*, [2600 x double]** %Q.addr, align 8, !tbaa !6
  %45 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom43 = sext i32 %45 to i64
  %arrayidx44 = getelementptr inbounds [2600 x double], [2600 x double]* %44, i64 %idxprom43
  %46 = load i32, i32* %k, align 4, !tbaa !2
  %idxprom45 = sext i32 %46 to i64
  %arrayidx46 = getelementptr inbounds [2600 x double], [2600 x double]* %arrayidx44, i64 0, i64 %idxprom45
  %47 = load double, double* %arrayidx46, align 8, !tbaa !10
  %48 = load [2600 x double]*, [2600 x double]** %A.addr, align 8, !tbaa !6
  %49 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom47 = sext i32 %49 to i64
  %arrayidx48 = getelementptr inbounds [2600 x double], [2600 x double]* %48, i64 %idxprom47
  %50 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom49 = sext i32 %50 to i64
  %arrayidx50 = getelementptr inbounds [2600 x double], [2600 x double]* %arrayidx48, i64 0, i64 %idxprom49
  %51 = load double, double* %arrayidx50, align 8, !tbaa !10
  %mul51 = fmul double %47, %51
  %52 = load [2600 x double]*, [2600 x double]** %R.addr, align 8, !tbaa !6
  %53 = load i32, i32* %k, align 4, !tbaa !2
  %idxprom52 = sext i32 %53 to i64
  %arrayidx53 = getelementptr inbounds [2600 x double], [2600 x double]* %52, i64 %idxprom52
  %54 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom54 = sext i32 %54 to i64
  %arrayidx55 = getelementptr inbounds [2600 x double], [2600 x double]* %arrayidx53, i64 0, i64 %idxprom54
  %55 = load double, double* %arrayidx55, align 8, !tbaa !10
  %add56 = fadd double %55, %mul51
  store double %add56, double* %arrayidx55, align 8, !tbaa !10
  br label %for.inc57

for.inc57:                                        ; preds = %for.body42
  %56 = load i32, i32* %i, align 4, !tbaa !2
  %inc58 = add nsw i32 %56, 1
  store i32 %inc58, i32* %i, align 4, !tbaa !2
  br label %for.cond40, !llvm.loop !20

for.end59:                                        ; preds = %for.cond40
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc80, %for.end59
  %57 = load i32, i32* %i, align 4, !tbaa !2
  %58 = load i32, i32* %m.addr, align 4, !tbaa !2
  %cmp61 = icmp slt i32 %57, %58
  br i1 %cmp61, label %for.body62, label %for.end82

for.body62:                                       ; preds = %for.cond60
  %59 = load [2600 x double]*, [2600 x double]** %A.addr, align 8, !tbaa !6
  %60 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom63 = sext i32 %60 to i64
  %arrayidx64 = getelementptr inbounds [2600 x double], [2600 x double]* %59, i64 %idxprom63
  %61 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom65 = sext i32 %61 to i64
  %arrayidx66 = getelementptr inbounds [2600 x double], [2600 x double]* %arrayidx64, i64 0, i64 %idxprom65
  %62 = load double, double* %arrayidx66, align 8, !tbaa !10
  %63 = load [2600 x double]*, [2600 x double]** %Q.addr, align 8, !tbaa !6
  %64 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom67 = sext i32 %64 to i64
  %arrayidx68 = getelementptr inbounds [2600 x double], [2600 x double]* %63, i64 %idxprom67
  %65 = load i32, i32* %k, align 4, !tbaa !2
  %idxprom69 = sext i32 %65 to i64
  %arrayidx70 = getelementptr inbounds [2600 x double], [2600 x double]* %arrayidx68, i64 0, i64 %idxprom69
  %66 = load double, double* %arrayidx70, align 8, !tbaa !10
  %67 = load [2600 x double]*, [2600 x double]** %R.addr, align 8, !tbaa !6
  %68 = load i32, i32* %k, align 4, !tbaa !2
  %idxprom71 = sext i32 %68 to i64
  %arrayidx72 = getelementptr inbounds [2600 x double], [2600 x double]* %67, i64 %idxprom71
  %69 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom73 = sext i32 %69 to i64
  %arrayidx74 = getelementptr inbounds [2600 x double], [2600 x double]* %arrayidx72, i64 0, i64 %idxprom73
  %70 = load double, double* %arrayidx74, align 8, !tbaa !10
  %mul75 = fmul double %66, %70
  %sub = fsub double %62, %mul75
  %71 = load [2600 x double]*, [2600 x double]** %A.addr, align 8, !tbaa !6
  %72 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom76 = sext i32 %72 to i64
  %arrayidx77 = getelementptr inbounds [2600 x double], [2600 x double]* %71, i64 %idxprom76
  %73 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom78 = sext i32 %73 to i64
  %arrayidx79 = getelementptr inbounds [2600 x double], [2600 x double]* %arrayidx77, i64 0, i64 %idxprom78
  store double %sub, double* %arrayidx79, align 8, !tbaa !10
  br label %for.inc80

for.inc80:                                        ; preds = %for.body62
  %74 = load i32, i32* %i, align 4, !tbaa !2
  %inc81 = add nsw i32 %74, 1
  store i32 %inc81, i32* %i, align 4, !tbaa !2
  br label %for.cond60, !llvm.loop !21

for.end82:                                        ; preds = %for.cond60
  br label %for.inc83

for.inc83:                                        ; preds = %for.end82
  %75 = load i32, i32* %j, align 4, !tbaa !2
  %inc84 = add nsw i32 %75, 1
  store i32 %inc84, i32* %j, align 4, !tbaa !2
  br label %for.cond33, !llvm.loop !22

for.end85:                                        ; preds = %for.cond33
  br label %for.inc86

for.inc86:                                        ; preds = %for.end85
  %76 = load i32, i32* %k, align 4, !tbaa !2
  %inc87 = add nsw i32 %76, 1
  store i32 %inc87, i32* %k, align 4, !tbaa !2
  br label %for.cond, !llvm.loop !23

for.end88:                                        ; preds = %for.cond
  %77 = bitcast double* %nrm to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %77) #6
  %78 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %78) #6
  %79 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %79) #6
  %80 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %80) #6
  ret void
}

declare dso_local void @polybench_timer_stop(...) #3

declare dso_local void @polybench_timer_print(...) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define internal void @print_array(i32 %m, i32 %n, [2600 x double]* %A, [2600 x double]* %R, [2600 x double]* %Q) #0 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %A.addr = alloca [2600 x double]*, align 8
  %R.addr = alloca [2600 x double]*, align 8
  %Q.addr = alloca [2600 x double]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4, !tbaa !2
  store i32 %n, i32* %n.addr, align 4, !tbaa !2
  store [2600 x double]* %A, [2600 x double]** %A.addr, align 8, !tbaa !6
  store [2600 x double]* %R, [2600 x double]** %R.addr, align 8, !tbaa !6
  store [2600 x double]* %Q, [2600 x double]** %Q.addr, align 8, !tbaa !6
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
  %5 = load i32, i32* %n.addr, align 4, !tbaa !2
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
  %9 = load i32, i32* %n.addr, align 4, !tbaa !2
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
  %13 = load [2600 x double]*, [2600 x double]** %R.addr, align 8, !tbaa !6
  %14 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds [2600 x double], [2600 x double]* %13, i64 %idxprom
  %15 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom7 = sext i32 %15 to i64
  %arrayidx8 = getelementptr inbounds [2600 x double], [2600 x double]* %arrayidx, i64 0, i64 %idxprom7
  %16 = load double, double* %arrayidx8, align 8, !tbaa !10
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %16)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i32, i32* %j, align 4, !tbaa !2
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %j, align 4, !tbaa !2
  br label %for.cond2, !llvm.loop !24

for.end:                                          ; preds = %for.cond2
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %18 = load i32, i32* %i, align 4, !tbaa !2
  %inc11 = add nsw i32 %18, 1
  store i32 %inc11, i32* %i, align 4, !tbaa !2
  br label %for.cond, !llvm.loop !25

for.end12:                                        ; preds = %for.cond
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !6
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !6
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc36, %for.end12
  %21 = load i32, i32* %i, align 4, !tbaa !2
  %22 = load i32, i32* %m.addr, align 4, !tbaa !2
  %cmp16 = icmp slt i32 %21, %22
  br i1 %cmp16, label %for.body17, label %for.end38

for.body17:                                       ; preds = %for.cond15
  store i32 0, i32* %j, align 4, !tbaa !2
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc33, %for.body17
  %23 = load i32, i32* %j, align 4, !tbaa !2
  %24 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp19 = icmp slt i32 %23, %24
  br i1 %cmp19, label %for.body20, label %for.end35

for.body20:                                       ; preds = %for.cond18
  %25 = load i32, i32* %i, align 4, !tbaa !2
  %26 = load i32, i32* %n.addr, align 4, !tbaa !2
  %mul21 = mul nsw i32 %25, %26
  %27 = load i32, i32* %j, align 4, !tbaa !2
  %add22 = add nsw i32 %mul21, %27
  %rem23 = srem i32 %add22, 20
  %cmp24 = icmp eq i32 %rem23, 0
  br i1 %cmp24, label %if.then25, label %if.end27

if.then25:                                        ; preds = %for.body20
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !6
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %for.body20
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !6
  %30 = load [2600 x double]*, [2600 x double]** %Q.addr, align 8, !tbaa !6
  %31 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom28 = sext i32 %31 to i64
  %arrayidx29 = getelementptr inbounds [2600 x double], [2600 x double]* %30, i64 %idxprom28
  %32 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom30 = sext i32 %32 to i64
  %arrayidx31 = getelementptr inbounds [2600 x double], [2600 x double]* %arrayidx29, i64 0, i64 %idxprom30
  %33 = load double, double* %arrayidx31, align 8, !tbaa !10
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %33)
  br label %for.inc33

for.inc33:                                        ; preds = %if.end27
  %34 = load i32, i32* %j, align 4, !tbaa !2
  %inc34 = add nsw i32 %34, 1
  store i32 %inc34, i32* %j, align 4, !tbaa !2
  br label %for.cond18, !llvm.loop !26

for.end35:                                        ; preds = %for.cond18
  br label %for.inc36

for.inc36:                                        ; preds = %for.end35
  %35 = load i32, i32* %i, align 4, !tbaa !2
  %inc37 = add nsw i32 %35, 1
  store i32 %inc37, i32* %i, align 4, !tbaa !2
  br label %for.cond15, !llvm.loop !27

for.end38:                                        ; preds = %for.cond15
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !6
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !6
  %call40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  %38 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #6
  %39 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #6
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #5

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #5

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #5

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
!22 = distinct !{!22, !13, !14}
!23 = distinct !{!23, !13, !14}
!24 = distinct !{!24, !13, !14}
!25 = distinct !{!25, !13, !14}
!26 = distinct !{!26, !13, !14}
!27 = distinct !{!27, !13, !14}

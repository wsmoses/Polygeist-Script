; ModuleID = 'gemm.c'
source_filename = "gemm.c"
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
@.str.3 = private unnamed_addr constant [2 x i8] c"C\00", align 1
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
  %ni = alloca i32, align 4
  %nj = alloca i32, align 4
  %nk = alloca i32, align 4
  %alpha = alloca double, align 8
  %beta = alloca double, align 8
  %C = alloca [2000 x [2300 x double]]*, align 8
  %A = alloca [2000 x [2600 x double]]*, align 8
  %B = alloca [2600 x [2300 x double]]*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !2
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !6
  %0 = bitcast i32* %ni to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #6
  store i32 2000, i32* %ni, align 4, !tbaa !2
  %1 = bitcast i32* %nj to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #6
  store i32 2300, i32* %nj, align 4, !tbaa !2
  %2 = bitcast i32* %nk to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #6
  store i32 2600, i32* %nk, align 4, !tbaa !2
  %3 = bitcast double* %alpha to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #6
  %4 = bitcast double* %beta to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #6
  %5 = bitcast [2000 x [2300 x double]]** %C to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %5) #6
  %call = call i8* @polybench_alloc_data(i64 4600000, i32 8)
  %6 = bitcast i8* %call to [2000 x [2300 x double]]*
  store [2000 x [2300 x double]]* %6, [2000 x [2300 x double]]** %C, align 8, !tbaa !6
  %7 = bitcast [2000 x [2600 x double]]** %A to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %7) #6
  %call1 = call i8* @polybench_alloc_data(i64 5200000, i32 8)
  %8 = bitcast i8* %call1 to [2000 x [2600 x double]]*
  store [2000 x [2600 x double]]* %8, [2000 x [2600 x double]]** %A, align 8, !tbaa !6
  %9 = bitcast [2600 x [2300 x double]]** %B to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %9) #6
  %call2 = call i8* @polybench_alloc_data(i64 5980000, i32 8)
  %10 = bitcast i8* %call2 to [2600 x [2300 x double]]*
  store [2600 x [2300 x double]]* %10, [2600 x [2300 x double]]** %B, align 8, !tbaa !6
  %11 = load i32, i32* %ni, align 4, !tbaa !2
  %12 = load i32, i32* %nj, align 4, !tbaa !2
  %13 = load i32, i32* %nk, align 4, !tbaa !2
  %14 = load [2000 x [2300 x double]]*, [2000 x [2300 x double]]** %C, align 8, !tbaa !6
  %arraydecay = getelementptr inbounds [2000 x [2300 x double]], [2000 x [2300 x double]]* %14, i64 0, i64 0
  %15 = load [2000 x [2600 x double]]*, [2000 x [2600 x double]]** %A, align 8, !tbaa !6
  %arraydecay3 = getelementptr inbounds [2000 x [2600 x double]], [2000 x [2600 x double]]* %15, i64 0, i64 0
  %16 = load [2600 x [2300 x double]]*, [2600 x [2300 x double]]** %B, align 8, !tbaa !6
  %arraydecay4 = getelementptr inbounds [2600 x [2300 x double]], [2600 x [2300 x double]]* %16, i64 0, i64 0
  call void @init_array(i32 %11, i32 %12, i32 %13, double* %alpha, double* %beta, [2300 x double]* %arraydecay, [2600 x double]* %arraydecay3, [2300 x double]* %arraydecay4)
  call void (...) @polybench_timer_start()
  %17 = load i32, i32* %ni, align 4, !tbaa !2
  %18 = load i32, i32* %nj, align 4, !tbaa !2
  %19 = load i32, i32* %nk, align 4, !tbaa !2
  %20 = load double, double* %alpha, align 8, !tbaa !8
  %21 = load double, double* %beta, align 8, !tbaa !8
  %22 = load [2000 x [2300 x double]]*, [2000 x [2300 x double]]** %C, align 8, !tbaa !6
  %arraydecay5 = getelementptr inbounds [2000 x [2300 x double]], [2000 x [2300 x double]]* %22, i64 0, i64 0
  %23 = load [2000 x [2600 x double]]*, [2000 x [2600 x double]]** %A, align 8, !tbaa !6
  %arraydecay6 = getelementptr inbounds [2000 x [2600 x double]], [2000 x [2600 x double]]* %23, i64 0, i64 0
  %24 = load [2600 x [2300 x double]]*, [2600 x [2300 x double]]** %B, align 8, !tbaa !6
  %arraydecay7 = getelementptr inbounds [2600 x [2300 x double]], [2600 x [2300 x double]]* %24, i64 0, i64 0
  call void @kernel_gemm(i32 %17, i32 %18, i32 %19, double %20, double %21, [2300 x double]* %arraydecay5, [2600 x double]* %arraydecay6, [2300 x double]* %arraydecay7)
  call void (...) @polybench_timer_stop()
  call void (...) @polybench_timer_print()
  %25 = load i32, i32* %argc.addr, align 4, !tbaa !2
  %cmp = icmp sgt i32 %25, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %26 = load i8**, i8*** %argv.addr, align 8, !tbaa !6
  %arrayidx = getelementptr inbounds i8*, i8** %26, i64 0
  %27 = load i8*, i8** %arrayidx, align 8, !tbaa !6
  %call8 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)) #7
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %28 = load i32, i32* %ni, align 4, !tbaa !2
  %29 = load i32, i32* %nj, align 4, !tbaa !2
  %30 = load [2000 x [2300 x double]]*, [2000 x [2300 x double]]** %C, align 8, !tbaa !6
  %arraydecay9 = getelementptr inbounds [2000 x [2300 x double]], [2000 x [2300 x double]]* %30, i64 0, i64 0
  call void @print_array(i32 %28, i32 %29, [2300 x double]* %arraydecay9)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %31 = load [2000 x [2300 x double]]*, [2000 x [2300 x double]]** %C, align 8, !tbaa !6
  %32 = bitcast [2000 x [2300 x double]]* %31 to i8*
  call void @free(i8* %32) #6
  %33 = load [2000 x [2600 x double]]*, [2000 x [2600 x double]]** %A, align 8, !tbaa !6
  %34 = bitcast [2000 x [2600 x double]]* %33 to i8*
  call void @free(i8* %34) #6
  %35 = load [2600 x [2300 x double]]*, [2600 x [2300 x double]]** %B, align 8, !tbaa !6
  %36 = bitcast [2600 x [2300 x double]]* %35 to i8*
  call void @free(i8* %36) #6
  %37 = bitcast [2600 x [2300 x double]]** %B to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %37) #6
  %38 = bitcast [2000 x [2600 x double]]** %A to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %38) #6
  %39 = bitcast [2000 x [2300 x double]]** %C to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %39) #6
  %40 = bitcast double* %beta to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %40) #6
  %41 = bitcast double* %alpha to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %41) #6
  %42 = bitcast i32* %nk to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #6
  %43 = bitcast i32* %nj to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #6
  %44 = bitcast i32* %ni to i8*
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
define internal void @init_array(i32 %ni, i32 %nj, i32 %nk, double* %alpha, double* %beta, [2300 x double]* %C, [2600 x double]* %A, [2300 x double]* %B) #0 {
entry:
  %ni.addr = alloca i32, align 4
  %nj.addr = alloca i32, align 4
  %nk.addr = alloca i32, align 4
  %alpha.addr = alloca double*, align 8
  %beta.addr = alloca double*, align 8
  %C.addr = alloca [2300 x double]*, align 8
  %A.addr = alloca [2600 x double]*, align 8
  %B.addr = alloca [2300 x double]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %ni, i32* %ni.addr, align 4, !tbaa !2
  store i32 %nj, i32* %nj.addr, align 4, !tbaa !2
  store i32 %nk, i32* %nk.addr, align 4, !tbaa !2
  store double* %alpha, double** %alpha.addr, align 8, !tbaa !6
  store double* %beta, double** %beta.addr, align 8, !tbaa !6
  store [2300 x double]* %C, [2300 x double]** %C.addr, align 8, !tbaa !6
  store [2600 x double]* %A, [2600 x double]** %A.addr, align 8, !tbaa !6
  store [2300 x double]* %B, [2300 x double]** %B.addr, align 8, !tbaa !6
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

for.cond:                                         ; preds = %for.inc7, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !2
  %5 = load i32, i32* %ni.addr, align 4, !tbaa !2
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !tbaa !2
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %6 = load i32, i32* %j, align 4, !tbaa !2
  %7 = load i32, i32* %nj.addr, align 4, !tbaa !2
  %cmp2 = icmp slt i32 %6, %7
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %8 = load i32, i32* %i, align 4, !tbaa !2
  %9 = load i32, i32* %j, align 4, !tbaa !2
  %mul = mul nsw i32 %8, %9
  %add = add nsw i32 %mul, 1
  %10 = load i32, i32* %ni.addr, align 4, !tbaa !2
  %rem = srem i32 %add, %10
  %conv = sitofp i32 %rem to double
  %11 = load i32, i32* %ni.addr, align 4, !tbaa !2
  %conv4 = sitofp i32 %11 to double
  %div = fdiv double %conv, %conv4
  %12 = load [2300 x double]*, [2300 x double]** %C.addr, align 8, !tbaa !6
  %13 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds [2300 x double], [2300 x double]* %12, i64 %idxprom
  %14 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom5 = sext i32 %14 to i64
  %arrayidx6 = getelementptr inbounds [2300 x double], [2300 x double]* %arrayidx, i64 0, i64 %idxprom5
  store double %div, double* %arrayidx6, align 8, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %15 = load i32, i32* %j, align 4, !tbaa !2
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %j, align 4, !tbaa !2
  br label %for.cond1, !llvm.loop !12

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %16 = load i32, i32* %i, align 4, !tbaa !2
  %inc8 = add nsw i32 %16, 1
  store i32 %inc8, i32* %i, align 4, !tbaa !2
  br label %for.cond, !llvm.loop !15

for.end9:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc31, %for.end9
  %17 = load i32, i32* %i, align 4, !tbaa !2
  %18 = load i32, i32* %ni.addr, align 4, !tbaa !2
  %cmp11 = icmp slt i32 %17, %18
  br i1 %cmp11, label %for.body13, label %for.end33

for.body13:                                       ; preds = %for.cond10
  store i32 0, i32* %j, align 4, !tbaa !2
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc28, %for.body13
  %19 = load i32, i32* %j, align 4, !tbaa !2
  %20 = load i32, i32* %nk.addr, align 4, !tbaa !2
  %cmp15 = icmp slt i32 %19, %20
  br i1 %cmp15, label %for.body17, label %for.end30

for.body17:                                       ; preds = %for.cond14
  %21 = load i32, i32* %i, align 4, !tbaa !2
  %22 = load i32, i32* %j, align 4, !tbaa !2
  %add18 = add nsw i32 %22, 1
  %mul19 = mul nsw i32 %21, %add18
  %23 = load i32, i32* %nk.addr, align 4, !tbaa !2
  %rem20 = srem i32 %mul19, %23
  %conv21 = sitofp i32 %rem20 to double
  %24 = load i32, i32* %nk.addr, align 4, !tbaa !2
  %conv22 = sitofp i32 %24 to double
  %div23 = fdiv double %conv21, %conv22
  %25 = load [2600 x double]*, [2600 x double]** %A.addr, align 8, !tbaa !6
  %26 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom24 = sext i32 %26 to i64
  %arrayidx25 = getelementptr inbounds [2600 x double], [2600 x double]* %25, i64 %idxprom24
  %27 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom26 = sext i32 %27 to i64
  %arrayidx27 = getelementptr inbounds [2600 x double], [2600 x double]* %arrayidx25, i64 0, i64 %idxprom26
  store double %div23, double* %arrayidx27, align 8, !tbaa !8
  br label %for.inc28

for.inc28:                                        ; preds = %for.body17
  %28 = load i32, i32* %j, align 4, !tbaa !2
  %inc29 = add nsw i32 %28, 1
  store i32 %inc29, i32* %j, align 4, !tbaa !2
  br label %for.cond14, !llvm.loop !16

for.end30:                                        ; preds = %for.cond14
  br label %for.inc31

for.inc31:                                        ; preds = %for.end30
  %29 = load i32, i32* %i, align 4, !tbaa !2
  %inc32 = add nsw i32 %29, 1
  store i32 %inc32, i32* %i, align 4, !tbaa !2
  br label %for.cond10, !llvm.loop !17

for.end33:                                        ; preds = %for.cond10
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc55, %for.end33
  %30 = load i32, i32* %i, align 4, !tbaa !2
  %31 = load i32, i32* %nk.addr, align 4, !tbaa !2
  %cmp35 = icmp slt i32 %30, %31
  br i1 %cmp35, label %for.body37, label %for.end57

for.body37:                                       ; preds = %for.cond34
  store i32 0, i32* %j, align 4, !tbaa !2
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc52, %for.body37
  %32 = load i32, i32* %j, align 4, !tbaa !2
  %33 = load i32, i32* %nj.addr, align 4, !tbaa !2
  %cmp39 = icmp slt i32 %32, %33
  br i1 %cmp39, label %for.body41, label %for.end54

for.body41:                                       ; preds = %for.cond38
  %34 = load i32, i32* %i, align 4, !tbaa !2
  %35 = load i32, i32* %j, align 4, !tbaa !2
  %add42 = add nsw i32 %35, 2
  %mul43 = mul nsw i32 %34, %add42
  %36 = load i32, i32* %nj.addr, align 4, !tbaa !2
  %rem44 = srem i32 %mul43, %36
  %conv45 = sitofp i32 %rem44 to double
  %37 = load i32, i32* %nj.addr, align 4, !tbaa !2
  %conv46 = sitofp i32 %37 to double
  %div47 = fdiv double %conv45, %conv46
  %38 = load [2300 x double]*, [2300 x double]** %B.addr, align 8, !tbaa !6
  %39 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom48 = sext i32 %39 to i64
  %arrayidx49 = getelementptr inbounds [2300 x double], [2300 x double]* %38, i64 %idxprom48
  %40 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom50 = sext i32 %40 to i64
  %arrayidx51 = getelementptr inbounds [2300 x double], [2300 x double]* %arrayidx49, i64 0, i64 %idxprom50
  store double %div47, double* %arrayidx51, align 8, !tbaa !8
  br label %for.inc52

for.inc52:                                        ; preds = %for.body41
  %41 = load i32, i32* %j, align 4, !tbaa !2
  %inc53 = add nsw i32 %41, 1
  store i32 %inc53, i32* %j, align 4, !tbaa !2
  br label %for.cond38, !llvm.loop !18

for.end54:                                        ; preds = %for.cond38
  br label %for.inc55

for.inc55:                                        ; preds = %for.end54
  %42 = load i32, i32* %i, align 4, !tbaa !2
  %inc56 = add nsw i32 %42, 1
  store i32 %inc56, i32* %i, align 4, !tbaa !2
  br label %for.cond34, !llvm.loop !19

for.end57:                                        ; preds = %for.cond34
  %43 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #6
  %44 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %44) #6
  ret void
}

declare dso_local void @polybench_timer_start(...) #3

; Function Attrs: nounwind uwtable
define internal void @kernel_gemm(i32 %ni, i32 %nj, i32 %nk, double %alpha, double %beta, [2300 x double]* %C, [2600 x double]* %A, [2300 x double]* %B) #0 {
entry:
  %ni.addr = alloca i32, align 4
  %nj.addr = alloca i32, align 4
  %nk.addr = alloca i32, align 4
  %alpha.addr = alloca double, align 8
  %beta.addr = alloca double, align 8
  %C.addr = alloca [2300 x double]*, align 8
  %A.addr = alloca [2600 x double]*, align 8
  %B.addr = alloca [2300 x double]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %ni, i32* %ni.addr, align 4, !tbaa !2
  store i32 %nj, i32* %nj.addr, align 4, !tbaa !2
  store i32 %nk, i32* %nk.addr, align 4, !tbaa !2
  store double %alpha, double* %alpha.addr, align 8, !tbaa !8
  store double %beta, double* %beta.addr, align 8, !tbaa !8
  store [2300 x double]* %C, [2300 x double]** %C.addr, align 8, !tbaa !6
  store [2600 x double]* %A, [2600 x double]** %A.addr, align 8, !tbaa !6
  store [2300 x double]* %B, [2300 x double]** %B.addr, align 8, !tbaa !6
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #6
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #6
  %2 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #6
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc32, %entry
  %3 = load i32, i32* %i, align 4, !tbaa !2
  %4 = load i32, i32* %ni.addr, align 4, !tbaa !2
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end34

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !tbaa !2
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %5 = load i32, i32* %j, align 4, !tbaa !2
  %6 = load i32, i32* %nj.addr, align 4, !tbaa !2
  %cmp2 = icmp slt i32 %5, %6
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %7 = load double, double* %beta.addr, align 8, !tbaa !8
  %8 = load [2300 x double]*, [2300 x double]** %C.addr, align 8, !tbaa !6
  %9 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [2300 x double], [2300 x double]* %8, i64 %idxprom
  %10 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom4 = sext i32 %10 to i64
  %arrayidx5 = getelementptr inbounds [2300 x double], [2300 x double]* %arrayidx, i64 0, i64 %idxprom4
  %11 = load double, double* %arrayidx5, align 8, !tbaa !8
  %mul = fmul double %11, %7
  store double %mul, double* %arrayidx5, align 8, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %12 = load i32, i32* %j, align 4, !tbaa !2
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %j, align 4, !tbaa !2
  br label %for.cond1, !llvm.loop !20

for.end:                                          ; preds = %for.cond1
  store i32 0, i32* %k, align 4, !tbaa !2
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc29, %for.end
  %13 = load i32, i32* %k, align 4, !tbaa !2
  %14 = load i32, i32* %nk.addr, align 4, !tbaa !2
  %cmp7 = icmp slt i32 %13, %14
  br i1 %cmp7, label %for.body8, label %for.end31

for.body8:                                        ; preds = %for.cond6
  store i32 0, i32* %j, align 4, !tbaa !2
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc26, %for.body8
  %15 = load i32, i32* %j, align 4, !tbaa !2
  %16 = load i32, i32* %nj.addr, align 4, !tbaa !2
  %cmp10 = icmp slt i32 %15, %16
  br i1 %cmp10, label %for.body11, label %for.end28

for.body11:                                       ; preds = %for.cond9
  %17 = load double, double* %alpha.addr, align 8, !tbaa !8
  %18 = load [2600 x double]*, [2600 x double]** %A.addr, align 8, !tbaa !6
  %19 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom12 = sext i32 %19 to i64
  %arrayidx13 = getelementptr inbounds [2600 x double], [2600 x double]* %18, i64 %idxprom12
  %20 = load i32, i32* %k, align 4, !tbaa !2
  %idxprom14 = sext i32 %20 to i64
  %arrayidx15 = getelementptr inbounds [2600 x double], [2600 x double]* %arrayidx13, i64 0, i64 %idxprom14
  %21 = load double, double* %arrayidx15, align 8, !tbaa !8
  %mul16 = fmul double %17, %21
  %22 = load [2300 x double]*, [2300 x double]** %B.addr, align 8, !tbaa !6
  %23 = load i32, i32* %k, align 4, !tbaa !2
  %idxprom17 = sext i32 %23 to i64
  %arrayidx18 = getelementptr inbounds [2300 x double], [2300 x double]* %22, i64 %idxprom17
  %24 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom19 = sext i32 %24 to i64
  %arrayidx20 = getelementptr inbounds [2300 x double], [2300 x double]* %arrayidx18, i64 0, i64 %idxprom19
  %25 = load double, double* %arrayidx20, align 8, !tbaa !8
  %mul21 = fmul double %mul16, %25
  %26 = load [2300 x double]*, [2300 x double]** %C.addr, align 8, !tbaa !6
  %27 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom22 = sext i32 %27 to i64
  %arrayidx23 = getelementptr inbounds [2300 x double], [2300 x double]* %26, i64 %idxprom22
  %28 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom24 = sext i32 %28 to i64
  %arrayidx25 = getelementptr inbounds [2300 x double], [2300 x double]* %arrayidx23, i64 0, i64 %idxprom24
  %29 = load double, double* %arrayidx25, align 8, !tbaa !8
  %add = fadd double %29, %mul21
  store double %add, double* %arrayidx25, align 8, !tbaa !8
  br label %for.inc26

for.inc26:                                        ; preds = %for.body11
  %30 = load i32, i32* %j, align 4, !tbaa !2
  %inc27 = add nsw i32 %30, 1
  store i32 %inc27, i32* %j, align 4, !tbaa !2
  br label %for.cond9, !llvm.loop !21

for.end28:                                        ; preds = %for.cond9
  br label %for.inc29

for.inc29:                                        ; preds = %for.end28
  %31 = load i32, i32* %k, align 4, !tbaa !2
  %inc30 = add nsw i32 %31, 1
  store i32 %inc30, i32* %k, align 4, !tbaa !2
  br label %for.cond6, !llvm.loop !22

for.end31:                                        ; preds = %for.cond6
  br label %for.inc32

for.inc32:                                        ; preds = %for.end31
  %32 = load i32, i32* %i, align 4, !tbaa !2
  %inc33 = add nsw i32 %32, 1
  store i32 %inc33, i32* %i, align 4, !tbaa !2
  br label %for.cond, !llvm.loop !23

for.end34:                                        ; preds = %for.cond
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
define internal void @print_array(i32 %ni, i32 %nj, [2300 x double]* %C) #0 {
entry:
  %ni.addr = alloca i32, align 4
  %nj.addr = alloca i32, align 4
  %C.addr = alloca [2300 x double]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %ni, i32* %ni.addr, align 4, !tbaa !2
  store i32 %nj, i32* %nj.addr, align 4, !tbaa !2
  store [2300 x double]* %C, [2300 x double]** %C.addr, align 8, !tbaa !6
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
  %5 = load i32, i32* %ni.addr, align 4, !tbaa !2
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !tbaa !2
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %6 = load i32, i32* %j, align 4, !tbaa !2
  %7 = load i32, i32* %nj.addr, align 4, !tbaa !2
  %cmp3 = icmp slt i32 %6, %7
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %8 = load i32, i32* %i, align 4, !tbaa !2
  %9 = load i32, i32* %ni.addr, align 4, !tbaa !2
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
  %13 = load [2300 x double]*, [2300 x double]** %C.addr, align 8, !tbaa !6
  %14 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds [2300 x double], [2300 x double]* %13, i64 %idxprom
  %15 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom7 = sext i32 %15 to i64
  %arrayidx8 = getelementptr inbounds [2300 x double], [2300 x double]* %arrayidx, i64 0, i64 %idxprom7
  %16 = load double, double* %arrayidx8, align 8, !tbaa !8
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
!22 = distinct !{!22, !13, !14}
!23 = distinct !{!23, !13, !14}
!24 = distinct !{!24, !13, !14}
!25 = distinct !{!25, !13, !14}

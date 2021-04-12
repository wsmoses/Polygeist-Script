; ModuleID = 'symm.c'
source_filename = "symm.c"
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
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %alpha = alloca double, align 8
  %beta = alloca double, align 8
  %C = alloca [2000 x [2600 x double]]*, align 8
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
  %3 = bitcast double* %beta to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #6
  %4 = bitcast [2000 x [2600 x double]]** %C to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #6
  %call = call i8* @polybench_alloc_data(i64 5200000, i32 8)
  %5 = bitcast i8* %call to [2000 x [2600 x double]]*
  store [2000 x [2600 x double]]* %5, [2000 x [2600 x double]]** %C, align 8, !tbaa !6
  %6 = bitcast [2000 x [2000 x double]]** %A to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %6) #6
  %call1 = call i8* @polybench_alloc_data(i64 4000000, i32 8)
  %7 = bitcast i8* %call1 to [2000 x [2000 x double]]*
  store [2000 x [2000 x double]]* %7, [2000 x [2000 x double]]** %A, align 8, !tbaa !6
  %8 = bitcast [2000 x [2600 x double]]** %B to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %8) #6
  %call2 = call i8* @polybench_alloc_data(i64 5200000, i32 8)
  %9 = bitcast i8* %call2 to [2000 x [2600 x double]]*
  store [2000 x [2600 x double]]* %9, [2000 x [2600 x double]]** %B, align 8, !tbaa !6
  %10 = load i32, i32* %m, align 4, !tbaa !2
  %11 = load i32, i32* %n, align 4, !tbaa !2
  %12 = load [2000 x [2600 x double]]*, [2000 x [2600 x double]]** %C, align 8, !tbaa !6
  %arraydecay = getelementptr inbounds [2000 x [2600 x double]], [2000 x [2600 x double]]* %12, i64 0, i64 0
  %13 = load [2000 x [2000 x double]]*, [2000 x [2000 x double]]** %A, align 8, !tbaa !6
  %arraydecay3 = getelementptr inbounds [2000 x [2000 x double]], [2000 x [2000 x double]]* %13, i64 0, i64 0
  %14 = load [2000 x [2600 x double]]*, [2000 x [2600 x double]]** %B, align 8, !tbaa !6
  %arraydecay4 = getelementptr inbounds [2000 x [2600 x double]], [2000 x [2600 x double]]* %14, i64 0, i64 0
  call void @init_array(i32 %10, i32 %11, double* %alpha, double* %beta, [2600 x double]* %arraydecay, [2000 x double]* %arraydecay3, [2600 x double]* %arraydecay4)
  call void (...) @polybench_timer_start()
  %15 = load i32, i32* %m, align 4, !tbaa !2
  %16 = load i32, i32* %n, align 4, !tbaa !2
  %17 = load double, double* %alpha, align 8, !tbaa !8
  %18 = load double, double* %beta, align 8, !tbaa !8
  %19 = load [2000 x [2600 x double]]*, [2000 x [2600 x double]]** %C, align 8, !tbaa !6
  %arraydecay5 = getelementptr inbounds [2000 x [2600 x double]], [2000 x [2600 x double]]* %19, i64 0, i64 0
  %20 = load [2000 x [2000 x double]]*, [2000 x [2000 x double]]** %A, align 8, !tbaa !6
  %arraydecay6 = getelementptr inbounds [2000 x [2000 x double]], [2000 x [2000 x double]]* %20, i64 0, i64 0
  %21 = load [2000 x [2600 x double]]*, [2000 x [2600 x double]]** %B, align 8, !tbaa !6
  %arraydecay7 = getelementptr inbounds [2000 x [2600 x double]], [2000 x [2600 x double]]* %21, i64 0, i64 0
  call void @kernel_symm(i32 %15, i32 %16, double %17, double %18, [2600 x double]* %arraydecay5, [2000 x double]* %arraydecay6, [2600 x double]* %arraydecay7)
  call void (...) @polybench_timer_stop()
  call void (...) @polybench_timer_print()
  %22 = load i32, i32* %argc.addr, align 4, !tbaa !2
  %cmp = icmp sgt i32 %22, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %23 = load i8**, i8*** %argv.addr, align 8, !tbaa !6
  %arrayidx = getelementptr inbounds i8*, i8** %23, i64 0
  %24 = load i8*, i8** %arrayidx, align 8, !tbaa !6
  %call8 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)) #7
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %25 = load i32, i32* %m, align 4, !tbaa !2
  %26 = load i32, i32* %n, align 4, !tbaa !2
  %27 = load [2000 x [2600 x double]]*, [2000 x [2600 x double]]** %C, align 8, !tbaa !6
  %arraydecay9 = getelementptr inbounds [2000 x [2600 x double]], [2000 x [2600 x double]]* %27, i64 0, i64 0
  call void @print_array(i32 %25, i32 %26, [2600 x double]* %arraydecay9)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %28 = load [2000 x [2600 x double]]*, [2000 x [2600 x double]]** %C, align 8, !tbaa !6
  %29 = bitcast [2000 x [2600 x double]]* %28 to i8*
  call void @free(i8* %29) #6
  %30 = load [2000 x [2000 x double]]*, [2000 x [2000 x double]]** %A, align 8, !tbaa !6
  %31 = bitcast [2000 x [2000 x double]]* %30 to i8*
  call void @free(i8* %31) #6
  %32 = load [2000 x [2600 x double]]*, [2000 x [2600 x double]]** %B, align 8, !tbaa !6
  %33 = bitcast [2000 x [2600 x double]]* %32 to i8*
  call void @free(i8* %33) #6
  %34 = bitcast [2000 x [2600 x double]]** %B to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %34) #6
  %35 = bitcast [2000 x [2000 x double]]** %A to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %35) #6
  %36 = bitcast [2000 x [2600 x double]]** %C to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %36) #6
  %37 = bitcast double* %beta to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %37) #6
  %38 = bitcast double* %alpha to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %38) #6
  %39 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #6
  %40 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #6
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
define internal void @init_array(i32 %m, i32 %n, double* %alpha, double* %beta, [2600 x double]* %C, [2000 x double]* %A, [2600 x double]* %B) #0 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca double*, align 8
  %beta.addr = alloca double*, align 8
  %C.addr = alloca [2600 x double]*, align 8
  %A.addr = alloca [2000 x double]*, align 8
  %B.addr = alloca [2600 x double]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4, !tbaa !2
  store i32 %n, i32* %n.addr, align 4, !tbaa !2
  store double* %alpha, double** %alpha.addr, align 8, !tbaa !6
  store double* %beta, double** %beta.addr, align 8, !tbaa !6
  store [2600 x double]* %C, [2600 x double]** %C.addr, align 8, !tbaa !6
  store [2000 x double]* %A, [2000 x double]** %A.addr, align 8, !tbaa !6
  store [2600 x double]* %B, [2600 x double]** %B.addr, align 8, !tbaa !6
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

for.cond:                                         ; preds = %for.inc16, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !2
  %5 = load i32, i32* %m.addr, align 4, !tbaa !2
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end18

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !tbaa !2
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %6 = load i32, i32* %j, align 4, !tbaa !2
  %7 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp2 = icmp slt i32 %6, %7
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %8 = load i32, i32* %i, align 4, !tbaa !2
  %9 = load i32, i32* %j, align 4, !tbaa !2
  %add = add nsw i32 %8, %9
  %rem = srem i32 %add, 100
  %conv = sitofp i32 %rem to double
  %10 = load i32, i32* %m.addr, align 4, !tbaa !2
  %conv4 = sitofp i32 %10 to double
  %div = fdiv double %conv, %conv4
  %11 = load [2600 x double]*, [2600 x double]** %C.addr, align 8, !tbaa !6
  %12 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [2600 x double], [2600 x double]* %11, i64 %idxprom
  %13 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom5 = sext i32 %13 to i64
  %arrayidx6 = getelementptr inbounds [2600 x double], [2600 x double]* %arrayidx, i64 0, i64 %idxprom5
  store double %div, double* %arrayidx6, align 8, !tbaa !8
  %14 = load i32, i32* %n.addr, align 4, !tbaa !2
  %15 = load i32, i32* %i, align 4, !tbaa !2
  %add7 = add nsw i32 %14, %15
  %16 = load i32, i32* %j, align 4, !tbaa !2
  %sub = sub nsw i32 %add7, %16
  %rem8 = srem i32 %sub, 100
  %conv9 = sitofp i32 %rem8 to double
  %17 = load i32, i32* %m.addr, align 4, !tbaa !2
  %conv10 = sitofp i32 %17 to double
  %div11 = fdiv double %conv9, %conv10
  %18 = load [2600 x double]*, [2600 x double]** %B.addr, align 8, !tbaa !6
  %19 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom12 = sext i32 %19 to i64
  %arrayidx13 = getelementptr inbounds [2600 x double], [2600 x double]* %18, i64 %idxprom12
  %20 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom14 = sext i32 %20 to i64
  %arrayidx15 = getelementptr inbounds [2600 x double], [2600 x double]* %arrayidx13, i64 0, i64 %idxprom14
  store double %div11, double* %arrayidx15, align 8, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %21 = load i32, i32* %j, align 4, !tbaa !2
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %j, align 4, !tbaa !2
  br label %for.cond1, !llvm.loop !12

for.end:                                          ; preds = %for.cond1
  br label %for.inc16

for.inc16:                                        ; preds = %for.end
  %22 = load i32, i32* %i, align 4, !tbaa !2
  %inc17 = add nsw i32 %22, 1
  store i32 %inc17, i32* %i, align 4, !tbaa !2
  br label %for.cond, !llvm.loop !15

for.end18:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc51, %for.end18
  %23 = load i32, i32* %i, align 4, !tbaa !2
  %24 = load i32, i32* %m.addr, align 4, !tbaa !2
  %cmp20 = icmp slt i32 %23, %24
  br i1 %cmp20, label %for.body22, label %for.end53

for.body22:                                       ; preds = %for.cond19
  store i32 0, i32* %j, align 4, !tbaa !2
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc36, %for.body22
  %25 = load i32, i32* %j, align 4, !tbaa !2
  %26 = load i32, i32* %i, align 4, !tbaa !2
  %cmp24 = icmp sle i32 %25, %26
  br i1 %cmp24, label %for.body26, label %for.end38

for.body26:                                       ; preds = %for.cond23
  %27 = load i32, i32* %i, align 4, !tbaa !2
  %28 = load i32, i32* %j, align 4, !tbaa !2
  %add27 = add nsw i32 %27, %28
  %rem28 = srem i32 %add27, 100
  %conv29 = sitofp i32 %rem28 to double
  %29 = load i32, i32* %m.addr, align 4, !tbaa !2
  %conv30 = sitofp i32 %29 to double
  %div31 = fdiv double %conv29, %conv30
  %30 = load [2000 x double]*, [2000 x double]** %A.addr, align 8, !tbaa !6
  %31 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom32 = sext i32 %31 to i64
  %arrayidx33 = getelementptr inbounds [2000 x double], [2000 x double]* %30, i64 %idxprom32
  %32 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom34 = sext i32 %32 to i64
  %arrayidx35 = getelementptr inbounds [2000 x double], [2000 x double]* %arrayidx33, i64 0, i64 %idxprom34
  store double %div31, double* %arrayidx35, align 8, !tbaa !8
  br label %for.inc36

for.inc36:                                        ; preds = %for.body26
  %33 = load i32, i32* %j, align 4, !tbaa !2
  %inc37 = add nsw i32 %33, 1
  store i32 %inc37, i32* %j, align 4, !tbaa !2
  br label %for.cond23, !llvm.loop !16

for.end38:                                        ; preds = %for.cond23
  %34 = load i32, i32* %i, align 4, !tbaa !2
  %add39 = add nsw i32 %34, 1
  store i32 %add39, i32* %j, align 4, !tbaa !2
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc48, %for.end38
  %35 = load i32, i32* %j, align 4, !tbaa !2
  %36 = load i32, i32* %m.addr, align 4, !tbaa !2
  %cmp41 = icmp slt i32 %35, %36
  br i1 %cmp41, label %for.body43, label %for.end50

for.body43:                                       ; preds = %for.cond40
  %37 = load [2000 x double]*, [2000 x double]** %A.addr, align 8, !tbaa !6
  %38 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom44 = sext i32 %38 to i64
  %arrayidx45 = getelementptr inbounds [2000 x double], [2000 x double]* %37, i64 %idxprom44
  %39 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom46 = sext i32 %39 to i64
  %arrayidx47 = getelementptr inbounds [2000 x double], [2000 x double]* %arrayidx45, i64 0, i64 %idxprom46
  store double -9.990000e+02, double* %arrayidx47, align 8, !tbaa !8
  br label %for.inc48

for.inc48:                                        ; preds = %for.body43
  %40 = load i32, i32* %j, align 4, !tbaa !2
  %inc49 = add nsw i32 %40, 1
  store i32 %inc49, i32* %j, align 4, !tbaa !2
  br label %for.cond40, !llvm.loop !17

for.end50:                                        ; preds = %for.cond40
  br label %for.inc51

for.inc51:                                        ; preds = %for.end50
  %41 = load i32, i32* %i, align 4, !tbaa !2
  %inc52 = add nsw i32 %41, 1
  store i32 %inc52, i32* %i, align 4, !tbaa !2
  br label %for.cond19, !llvm.loop !18

for.end53:                                        ; preds = %for.cond19
  %42 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #6
  %43 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #6
  ret void
}

declare dso_local void @polybench_timer_start(...) #3

; Function Attrs: nounwind uwtable
define internal void @kernel_symm(i32 %m, i32 %n, double %alpha, double %beta, [2600 x double]* %C, [2000 x double]* %A, [2600 x double]* %B) #0 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %alpha.addr = alloca double, align 8
  %beta.addr = alloca double, align 8
  %C.addr = alloca [2600 x double]*, align 8
  %A.addr = alloca [2000 x double]*, align 8
  %B.addr = alloca [2600 x double]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %temp2 = alloca double, align 8
  store i32 %m, i32* %m.addr, align 4, !tbaa !2
  store i32 %n, i32* %n.addr, align 4, !tbaa !2
  store double %alpha, double* %alpha.addr, align 8, !tbaa !8
  store double %beta, double* %beta.addr, align 8, !tbaa !8
  store [2600 x double]* %C, [2600 x double]** %C.addr, align 8, !tbaa !6
  store [2000 x double]* %A, [2000 x double]** %A.addr, align 8, !tbaa !6
  store [2600 x double]* %B, [2600 x double]** %B.addr, align 8, !tbaa !6
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #6
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #6
  %2 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #6
  %3 = bitcast double* %temp2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #6
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc53, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !2
  %5 = load i32, i32* %m.addr, align 4, !tbaa !2
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end55

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !tbaa !2
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc50, %for.body
  %6 = load i32, i32* %j, align 4, !tbaa !2
  %7 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp2 = icmp slt i32 %6, %7
  br i1 %cmp2, label %for.body3, label %for.end52

for.body3:                                        ; preds = %for.cond1
  store double 0.000000e+00, double* %temp2, align 8, !tbaa !8
  store i32 0, i32* %k, align 4, !tbaa !2
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %8 = load i32, i32* %k, align 4, !tbaa !2
  %9 = load i32, i32* %i, align 4, !tbaa !2
  %cmp5 = icmp slt i32 %8, %9
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %10 = load double, double* %alpha.addr, align 8, !tbaa !8
  %11 = load [2600 x double]*, [2600 x double]** %B.addr, align 8, !tbaa !6
  %12 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom = sext i32 %12 to i64
  %arrayidx = getelementptr inbounds [2600 x double], [2600 x double]* %11, i64 %idxprom
  %13 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom7 = sext i32 %13 to i64
  %arrayidx8 = getelementptr inbounds [2600 x double], [2600 x double]* %arrayidx, i64 0, i64 %idxprom7
  %14 = load double, double* %arrayidx8, align 8, !tbaa !8
  %mul = fmul double %10, %14
  %15 = load [2000 x double]*, [2000 x double]** %A.addr, align 8, !tbaa !6
  %16 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom9 = sext i32 %16 to i64
  %arrayidx10 = getelementptr inbounds [2000 x double], [2000 x double]* %15, i64 %idxprom9
  %17 = load i32, i32* %k, align 4, !tbaa !2
  %idxprom11 = sext i32 %17 to i64
  %arrayidx12 = getelementptr inbounds [2000 x double], [2000 x double]* %arrayidx10, i64 0, i64 %idxprom11
  %18 = load double, double* %arrayidx12, align 8, !tbaa !8
  %mul13 = fmul double %mul, %18
  %19 = load [2600 x double]*, [2600 x double]** %C.addr, align 8, !tbaa !6
  %20 = load i32, i32* %k, align 4, !tbaa !2
  %idxprom14 = sext i32 %20 to i64
  %arrayidx15 = getelementptr inbounds [2600 x double], [2600 x double]* %19, i64 %idxprom14
  %21 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom16 = sext i32 %21 to i64
  %arrayidx17 = getelementptr inbounds [2600 x double], [2600 x double]* %arrayidx15, i64 0, i64 %idxprom16
  %22 = load double, double* %arrayidx17, align 8, !tbaa !8
  %add = fadd double %22, %mul13
  store double %add, double* %arrayidx17, align 8, !tbaa !8
  %23 = load [2600 x double]*, [2600 x double]** %B.addr, align 8, !tbaa !6
  %24 = load i32, i32* %k, align 4, !tbaa !2
  %idxprom18 = sext i32 %24 to i64
  %arrayidx19 = getelementptr inbounds [2600 x double], [2600 x double]* %23, i64 %idxprom18
  %25 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom20 = sext i32 %25 to i64
  %arrayidx21 = getelementptr inbounds [2600 x double], [2600 x double]* %arrayidx19, i64 0, i64 %idxprom20
  %26 = load double, double* %arrayidx21, align 8, !tbaa !8
  %27 = load [2000 x double]*, [2000 x double]** %A.addr, align 8, !tbaa !6
  %28 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom22 = sext i32 %28 to i64
  %arrayidx23 = getelementptr inbounds [2000 x double], [2000 x double]* %27, i64 %idxprom22
  %29 = load i32, i32* %k, align 4, !tbaa !2
  %idxprom24 = sext i32 %29 to i64
  %arrayidx25 = getelementptr inbounds [2000 x double], [2000 x double]* %arrayidx23, i64 0, i64 %idxprom24
  %30 = load double, double* %arrayidx25, align 8, !tbaa !8
  %mul26 = fmul double %26, %30
  %31 = load double, double* %temp2, align 8, !tbaa !8
  %add27 = fadd double %31, %mul26
  store double %add27, double* %temp2, align 8, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %32 = load i32, i32* %k, align 4, !tbaa !2
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %k, align 4, !tbaa !2
  br label %for.cond4, !llvm.loop !19

for.end:                                          ; preds = %for.cond4
  %33 = load double, double* %beta.addr, align 8, !tbaa !8
  %34 = load [2600 x double]*, [2600 x double]** %C.addr, align 8, !tbaa !6
  %35 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom28 = sext i32 %35 to i64
  %arrayidx29 = getelementptr inbounds [2600 x double], [2600 x double]* %34, i64 %idxprom28
  %36 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom30 = sext i32 %36 to i64
  %arrayidx31 = getelementptr inbounds [2600 x double], [2600 x double]* %arrayidx29, i64 0, i64 %idxprom30
  %37 = load double, double* %arrayidx31, align 8, !tbaa !8
  %mul32 = fmul double %33, %37
  %38 = load double, double* %alpha.addr, align 8, !tbaa !8
  %39 = load [2600 x double]*, [2600 x double]** %B.addr, align 8, !tbaa !6
  %40 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom33 = sext i32 %40 to i64
  %arrayidx34 = getelementptr inbounds [2600 x double], [2600 x double]* %39, i64 %idxprom33
  %41 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom35 = sext i32 %41 to i64
  %arrayidx36 = getelementptr inbounds [2600 x double], [2600 x double]* %arrayidx34, i64 0, i64 %idxprom35
  %42 = load double, double* %arrayidx36, align 8, !tbaa !8
  %mul37 = fmul double %38, %42
  %43 = load [2000 x double]*, [2000 x double]** %A.addr, align 8, !tbaa !6
  %44 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom38 = sext i32 %44 to i64
  %arrayidx39 = getelementptr inbounds [2000 x double], [2000 x double]* %43, i64 %idxprom38
  %45 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom40 = sext i32 %45 to i64
  %arrayidx41 = getelementptr inbounds [2000 x double], [2000 x double]* %arrayidx39, i64 0, i64 %idxprom40
  %46 = load double, double* %arrayidx41, align 8, !tbaa !8
  %mul42 = fmul double %mul37, %46
  %add43 = fadd double %mul32, %mul42
  %47 = load double, double* %alpha.addr, align 8, !tbaa !8
  %48 = load double, double* %temp2, align 8, !tbaa !8
  %mul44 = fmul double %47, %48
  %add45 = fadd double %add43, %mul44
  %49 = load [2600 x double]*, [2600 x double]** %C.addr, align 8, !tbaa !6
  %50 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom46 = sext i32 %50 to i64
  %arrayidx47 = getelementptr inbounds [2600 x double], [2600 x double]* %49, i64 %idxprom46
  %51 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom48 = sext i32 %51 to i64
  %arrayidx49 = getelementptr inbounds [2600 x double], [2600 x double]* %arrayidx47, i64 0, i64 %idxprom48
  store double %add45, double* %arrayidx49, align 8, !tbaa !8
  br label %for.inc50

for.inc50:                                        ; preds = %for.end
  %52 = load i32, i32* %j, align 4, !tbaa !2
  %inc51 = add nsw i32 %52, 1
  store i32 %inc51, i32* %j, align 4, !tbaa !2
  br label %for.cond1, !llvm.loop !20

for.end52:                                        ; preds = %for.cond1
  br label %for.inc53

for.inc53:                                        ; preds = %for.end52
  %53 = load i32, i32* %i, align 4, !tbaa !2
  %inc54 = add nsw i32 %53, 1
  store i32 %inc54, i32* %i, align 4, !tbaa !2
  br label %for.cond, !llvm.loop !21

for.end55:                                        ; preds = %for.cond
  %54 = bitcast double* %temp2 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %54) #6
  %55 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %55) #6
  %56 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %56) #6
  %57 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %57) #6
  ret void
}

declare dso_local void @polybench_timer_stop(...) #3

declare dso_local void @polybench_timer_print(...) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define internal void @print_array(i32 %m, i32 %n, [2600 x double]* %C) #0 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %C.addr = alloca [2600 x double]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4, !tbaa !2
  store i32 %n, i32* %n.addr, align 4, !tbaa !2
  store [2600 x double]* %C, [2600 x double]** %C.addr, align 8, !tbaa !6
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
  %13 = load [2600 x double]*, [2600 x double]** %C.addr, align 8, !tbaa !6
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
  br label %for.cond2, !llvm.loop !22

for.end:                                          ; preds = %for.cond2
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %18 = load i32, i32* %i, align 4, !tbaa !2
  %inc11 = add nsw i32 %18, 1
  store i32 %inc11, i32* %i, align 4, !tbaa !2
  br label %for.cond, !llvm.loop !23

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

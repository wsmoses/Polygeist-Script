; ModuleID = 'atax.c'
source_filename = "atax.c"
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
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %A = alloca [1800 x [2200 x double]]*, align 8
  %x = alloca [2200 x double]*, align 8
  %y = alloca [2200 x double]*, align 8
  %tmp = alloca [1800 x double]*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !2
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !6
  %0 = bitcast i32* %m to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #6
  store i32 1800, i32* %m, align 4, !tbaa !2
  %1 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #6
  store i32 2200, i32* %n, align 4, !tbaa !2
  %2 = bitcast [1800 x [2200 x double]]** %A to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #6
  %call = call i8* @polybench_alloc_data(i64 3960000, i32 8)
  %3 = bitcast i8* %call to [1800 x [2200 x double]]*
  store [1800 x [2200 x double]]* %3, [1800 x [2200 x double]]** %A, align 8, !tbaa !6
  %4 = bitcast [2200 x double]** %x to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #6
  %call1 = call i8* @polybench_alloc_data(i64 2200, i32 8)
  %5 = bitcast i8* %call1 to [2200 x double]*
  store [2200 x double]* %5, [2200 x double]** %x, align 8, !tbaa !6
  %6 = bitcast [2200 x double]** %y to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %6) #6
  %call2 = call i8* @polybench_alloc_data(i64 2200, i32 8)
  %7 = bitcast i8* %call2 to [2200 x double]*
  store [2200 x double]* %7, [2200 x double]** %y, align 8, !tbaa !6
  %8 = bitcast [1800 x double]** %tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %8) #6
  %call3 = call i8* @polybench_alloc_data(i64 1800, i32 8)
  %9 = bitcast i8* %call3 to [1800 x double]*
  store [1800 x double]* %9, [1800 x double]** %tmp, align 8, !tbaa !6
  %10 = load i32, i32* %m, align 4, !tbaa !2
  %11 = load i32, i32* %n, align 4, !tbaa !2
  %12 = load [1800 x [2200 x double]]*, [1800 x [2200 x double]]** %A, align 8, !tbaa !6
  %arraydecay = getelementptr inbounds [1800 x [2200 x double]], [1800 x [2200 x double]]* %12, i64 0, i64 0
  %13 = load [2200 x double]*, [2200 x double]** %x, align 8, !tbaa !6
  %arraydecay4 = getelementptr inbounds [2200 x double], [2200 x double]* %13, i64 0, i64 0
  call void @init_array(i32 %10, i32 %11, [2200 x double]* %arraydecay, double* %arraydecay4)
  call void (...) @polybench_timer_start()
  %14 = load i32, i32* %m, align 4, !tbaa !2
  %15 = load i32, i32* %n, align 4, !tbaa !2
  %16 = load [1800 x [2200 x double]]*, [1800 x [2200 x double]]** %A, align 8, !tbaa !6
  %arraydecay5 = getelementptr inbounds [1800 x [2200 x double]], [1800 x [2200 x double]]* %16, i64 0, i64 0
  %17 = load [2200 x double]*, [2200 x double]** %x, align 8, !tbaa !6
  %arraydecay6 = getelementptr inbounds [2200 x double], [2200 x double]* %17, i64 0, i64 0
  %18 = load [2200 x double]*, [2200 x double]** %y, align 8, !tbaa !6
  %arraydecay7 = getelementptr inbounds [2200 x double], [2200 x double]* %18, i64 0, i64 0
  %19 = load [1800 x double]*, [1800 x double]** %tmp, align 8, !tbaa !6
  %arraydecay8 = getelementptr inbounds [1800 x double], [1800 x double]* %19, i64 0, i64 0
  call void @kernel_atax(i32 %14, i32 %15, [2200 x double]* %arraydecay5, double* %arraydecay6, double* %arraydecay7, double* %arraydecay8)
  call void (...) @polybench_timer_stop()
  call void (...) @polybench_timer_print()
  %20 = load i32, i32* %argc.addr, align 4, !tbaa !2
  %cmp = icmp sgt i32 %20, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %21 = load i8**, i8*** %argv.addr, align 8, !tbaa !6
  %arrayidx = getelementptr inbounds i8*, i8** %21, i64 0
  %22 = load i8*, i8** %arrayidx, align 8, !tbaa !6
  %call9 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)) #7
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %23 = load i32, i32* %n, align 4, !tbaa !2
  %24 = load [2200 x double]*, [2200 x double]** %y, align 8, !tbaa !6
  %arraydecay10 = getelementptr inbounds [2200 x double], [2200 x double]* %24, i64 0, i64 0
  call void @print_array(i32 %23, double* %arraydecay10)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %25 = load [1800 x [2200 x double]]*, [1800 x [2200 x double]]** %A, align 8, !tbaa !6
  %26 = bitcast [1800 x [2200 x double]]* %25 to i8*
  call void @free(i8* %26) #6
  %27 = load [2200 x double]*, [2200 x double]** %x, align 8, !tbaa !6
  %28 = bitcast [2200 x double]* %27 to i8*
  call void @free(i8* %28) #6
  %29 = load [2200 x double]*, [2200 x double]** %y, align 8, !tbaa !6
  %30 = bitcast [2200 x double]* %29 to i8*
  call void @free(i8* %30) #6
  %31 = load [1800 x double]*, [1800 x double]** %tmp, align 8, !tbaa !6
  %32 = bitcast [1800 x double]* %31 to i8*
  call void @free(i8* %32) #6
  %33 = bitcast [1800 x double]** %tmp to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %33) #6
  %34 = bitcast [2200 x double]** %y to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %34) #6
  %35 = bitcast [2200 x double]** %x to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %35) #6
  %36 = bitcast [1800 x [2200 x double]]** %A to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %36) #6
  %37 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #6
  %38 = bitcast i32* %m to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #6
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
define internal void @init_array(i32 %m, i32 %n, [2200 x double]* %A, double* %x) #0 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %A.addr = alloca [2200 x double]*, align 8
  %x.addr = alloca double*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %fn = alloca double, align 8
  store i32 %m, i32* %m.addr, align 4, !tbaa !2
  store i32 %n, i32* %n.addr, align 4, !tbaa !2
  store [2200 x double]* %A, [2200 x double]** %A.addr, align 8, !tbaa !6
  store double* %x, double** %x.addr, align 8, !tbaa !6
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #6
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #6
  %2 = bitcast double* %fn to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #6
  %3 = load i32, i32* %n.addr, align 4, !tbaa !2
  %conv = sitofp i32 %3 to double
  store double %conv, double* %fn, align 8, !tbaa !10
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !2
  %5 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !tbaa !2
  %conv2 = sitofp i32 %6 to double
  %7 = load double, double* %fn, align 8, !tbaa !10
  %div = fdiv double %conv2, %7
  %add = fadd double 1.000000e+00, %div
  %8 = load double*, double** %x.addr, align 8, !tbaa !6
  %9 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds double, double* %8, i64 %idxprom
  store double %add, double* %arrayidx, align 8, !tbaa !10
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4, !tbaa !2
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4, !tbaa !2
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc22, %for.end
  %11 = load i32, i32* %i, align 4, !tbaa !2
  %12 = load i32, i32* %m.addr, align 4, !tbaa !2
  %cmp4 = icmp slt i32 %11, %12
  br i1 %cmp4, label %for.body6, label %for.end24

for.body6:                                        ; preds = %for.cond3
  store i32 0, i32* %j, align 4, !tbaa !2
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc19, %for.body6
  %13 = load i32, i32* %j, align 4, !tbaa !2
  %14 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp8 = icmp slt i32 %13, %14
  br i1 %cmp8, label %for.body10, label %for.end21

for.body10:                                       ; preds = %for.cond7
  %15 = load i32, i32* %i, align 4, !tbaa !2
  %16 = load i32, i32* %j, align 4, !tbaa !2
  %add11 = add nsw i32 %15, %16
  %17 = load i32, i32* %n.addr, align 4, !tbaa !2
  %rem = srem i32 %add11, %17
  %conv12 = sitofp i32 %rem to double
  %18 = load i32, i32* %m.addr, align 4, !tbaa !2
  %mul = mul nsw i32 5, %18
  %conv13 = sitofp i32 %mul to double
  %div14 = fdiv double %conv12, %conv13
  %19 = load [2200 x double]*, [2200 x double]** %A.addr, align 8, !tbaa !6
  %20 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom15 = sext i32 %20 to i64
  %arrayidx16 = getelementptr inbounds [2200 x double], [2200 x double]* %19, i64 %idxprom15
  %21 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom17 = sext i32 %21 to i64
  %arrayidx18 = getelementptr inbounds [2200 x double], [2200 x double]* %arrayidx16, i64 0, i64 %idxprom17
  store double %div14, double* %arrayidx18, align 8, !tbaa !10
  br label %for.inc19

for.inc19:                                        ; preds = %for.body10
  %22 = load i32, i32* %j, align 4, !tbaa !2
  %inc20 = add nsw i32 %22, 1
  store i32 %inc20, i32* %j, align 4, !tbaa !2
  br label %for.cond7, !llvm.loop !15

for.end21:                                        ; preds = %for.cond7
  br label %for.inc22

for.inc22:                                        ; preds = %for.end21
  %23 = load i32, i32* %i, align 4, !tbaa !2
  %inc23 = add nsw i32 %23, 1
  store i32 %inc23, i32* %i, align 4, !tbaa !2
  br label %for.cond3, !llvm.loop !16

for.end24:                                        ; preds = %for.cond3
  %24 = bitcast double* %fn to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %24) #6
  %25 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #6
  %26 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #6
  ret void
}

declare dso_local void @polybench_timer_start(...) #3

; Function Attrs: nounwind uwtable
define internal void @kernel_atax(i32 %m, i32 %n, [2200 x double]* %A, double* %x, double* %y, double* %tmp) #0 {
entry:
  %m.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %A.addr = alloca [2200 x double]*, align 8
  %x.addr = alloca double*, align 8
  %y.addr = alloca double*, align 8
  %tmp.addr = alloca double*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4, !tbaa !2
  store i32 %n, i32* %n.addr, align 4, !tbaa !2
  store [2200 x double]* %A, [2200 x double]** %A.addr, align 8, !tbaa !6
  store double* %x, double** %x.addr, align 8, !tbaa !6
  store double* %y, double** %y.addr, align 8, !tbaa !6
  store double* %tmp, double** %tmp.addr, align 8, !tbaa !6
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #6
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #6
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !tbaa !2
  %3 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load double*, double** %y.addr, align 8, !tbaa !6
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

for.cond1:                                        ; preds = %for.inc40, %for.end
  %7 = load i32, i32* %i, align 4, !tbaa !2
  %8 = load i32, i32* %m.addr, align 4, !tbaa !2
  %cmp2 = icmp slt i32 %7, %8
  br i1 %cmp2, label %for.body3, label %for.end42

for.body3:                                        ; preds = %for.cond1
  %9 = load double*, double** %tmp.addr, align 8, !tbaa !6
  %10 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom4 = sext i32 %10 to i64
  %arrayidx5 = getelementptr inbounds double, double* %9, i64 %idxprom4
  store double 0.000000e+00, double* %arrayidx5, align 8, !tbaa !10
  store i32 0, i32* %j, align 4, !tbaa !2
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc19, %for.body3
  %11 = load i32, i32* %j, align 4, !tbaa !2
  %12 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp7 = icmp slt i32 %11, %12
  br i1 %cmp7, label %for.body8, label %for.end21

for.body8:                                        ; preds = %for.cond6
  %13 = load double*, double** %tmp.addr, align 8, !tbaa !6
  %14 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom9 = sext i32 %14 to i64
  %arrayidx10 = getelementptr inbounds double, double* %13, i64 %idxprom9
  %15 = load double, double* %arrayidx10, align 8, !tbaa !10
  %16 = load [2200 x double]*, [2200 x double]** %A.addr, align 8, !tbaa !6
  %17 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom11 = sext i32 %17 to i64
  %arrayidx12 = getelementptr inbounds [2200 x double], [2200 x double]* %16, i64 %idxprom11
  %18 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom13 = sext i32 %18 to i64
  %arrayidx14 = getelementptr inbounds [2200 x double], [2200 x double]* %arrayidx12, i64 0, i64 %idxprom13
  %19 = load double, double* %arrayidx14, align 8, !tbaa !10
  %20 = load double*, double** %x.addr, align 8, !tbaa !6
  %21 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom15 = sext i32 %21 to i64
  %arrayidx16 = getelementptr inbounds double, double* %20, i64 %idxprom15
  %22 = load double, double* %arrayidx16, align 8, !tbaa !10
  %mul = fmul double %19, %22
  %add = fadd double %15, %mul
  %23 = load double*, double** %tmp.addr, align 8, !tbaa !6
  %24 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom17 = sext i32 %24 to i64
  %arrayidx18 = getelementptr inbounds double, double* %23, i64 %idxprom17
  store double %add, double* %arrayidx18, align 8, !tbaa !10
  br label %for.inc19

for.inc19:                                        ; preds = %for.body8
  %25 = load i32, i32* %j, align 4, !tbaa !2
  %inc20 = add nsw i32 %25, 1
  store i32 %inc20, i32* %j, align 4, !tbaa !2
  br label %for.cond6, !llvm.loop !18

for.end21:                                        ; preds = %for.cond6
  store i32 0, i32* %j, align 4, !tbaa !2
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc37, %for.end21
  %26 = load i32, i32* %j, align 4, !tbaa !2
  %27 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp23 = icmp slt i32 %26, %27
  br i1 %cmp23, label %for.body24, label %for.end39

for.body24:                                       ; preds = %for.cond22
  %28 = load double*, double** %y.addr, align 8, !tbaa !6
  %29 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom25 = sext i32 %29 to i64
  %arrayidx26 = getelementptr inbounds double, double* %28, i64 %idxprom25
  %30 = load double, double* %arrayidx26, align 8, !tbaa !10
  %31 = load [2200 x double]*, [2200 x double]** %A.addr, align 8, !tbaa !6
  %32 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom27 = sext i32 %32 to i64
  %arrayidx28 = getelementptr inbounds [2200 x double], [2200 x double]* %31, i64 %idxprom27
  %33 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom29 = sext i32 %33 to i64
  %arrayidx30 = getelementptr inbounds [2200 x double], [2200 x double]* %arrayidx28, i64 0, i64 %idxprom29
  %34 = load double, double* %arrayidx30, align 8, !tbaa !10
  %35 = load double*, double** %tmp.addr, align 8, !tbaa !6
  %36 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom31 = sext i32 %36 to i64
  %arrayidx32 = getelementptr inbounds double, double* %35, i64 %idxprom31
  %37 = load double, double* %arrayidx32, align 8, !tbaa !10
  %mul33 = fmul double %34, %37
  %add34 = fadd double %30, %mul33
  %38 = load double*, double** %y.addr, align 8, !tbaa !6
  %39 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom35 = sext i32 %39 to i64
  %arrayidx36 = getelementptr inbounds double, double* %38, i64 %idxprom35
  store double %add34, double* %arrayidx36, align 8, !tbaa !10
  br label %for.inc37

for.inc37:                                        ; preds = %for.body24
  %40 = load i32, i32* %j, align 4, !tbaa !2
  %inc38 = add nsw i32 %40, 1
  store i32 %inc38, i32* %j, align 4, !tbaa !2
  br label %for.cond22, !llvm.loop !19

for.end39:                                        ; preds = %for.cond22
  br label %for.inc40

for.inc40:                                        ; preds = %for.end39
  %41 = load i32, i32* %i, align 4, !tbaa !2
  %inc41 = add nsw i32 %41, 1
  store i32 %inc41, i32* %i, align 4, !tbaa !2
  br label %for.cond1, !llvm.loop !20

for.end42:                                        ; preds = %for.cond1
  %42 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #6
  %43 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #6
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
  %10 = load double, double* %arrayidx, align 8, !tbaa !10
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %10)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4, !tbaa !2
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4, !tbaa !2
  br label %for.cond, !llvm.loop !21

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

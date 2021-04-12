; ModuleID = 'ludcmp.c'
source_filename = "ludcmp.c"
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
@.str.3 = private unnamed_addr constant [2 x i8] c"x\00", align 1
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
  %A = alloca [4000 x [4000 x double]]*, align 8
  %b = alloca [4000 x double]*, align 8
  %x = alloca [4000 x double]*, align 8
  %y = alloca [4000 x double]*, align 8
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
  %3 = bitcast [4000 x double]** %b to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #6
  %call1 = call i8* @polybench_alloc_data(i64 4000, i32 8)
  %4 = bitcast i8* %call1 to [4000 x double]*
  store [4000 x double]* %4, [4000 x double]** %b, align 8, !tbaa !6
  %5 = bitcast [4000 x double]** %x to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %5) #6
  %call2 = call i8* @polybench_alloc_data(i64 4000, i32 8)
  %6 = bitcast i8* %call2 to [4000 x double]*
  store [4000 x double]* %6, [4000 x double]** %x, align 8, !tbaa !6
  %7 = bitcast [4000 x double]** %y to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %7) #6
  %call3 = call i8* @polybench_alloc_data(i64 4000, i32 8)
  %8 = bitcast i8* %call3 to [4000 x double]*
  store [4000 x double]* %8, [4000 x double]** %y, align 8, !tbaa !6
  %9 = load i32, i32* %n, align 4, !tbaa !2
  %10 = load [4000 x [4000 x double]]*, [4000 x [4000 x double]]** %A, align 8, !tbaa !6
  %arraydecay = getelementptr inbounds [4000 x [4000 x double]], [4000 x [4000 x double]]* %10, i64 0, i64 0
  %11 = load [4000 x double]*, [4000 x double]** %b, align 8, !tbaa !6
  %arraydecay4 = getelementptr inbounds [4000 x double], [4000 x double]* %11, i64 0, i64 0
  %12 = load [4000 x double]*, [4000 x double]** %x, align 8, !tbaa !6
  %arraydecay5 = getelementptr inbounds [4000 x double], [4000 x double]* %12, i64 0, i64 0
  %13 = load [4000 x double]*, [4000 x double]** %y, align 8, !tbaa !6
  %arraydecay6 = getelementptr inbounds [4000 x double], [4000 x double]* %13, i64 0, i64 0
  call void @init_array(i32 %9, [4000 x double]* %arraydecay, double* %arraydecay4, double* %arraydecay5, double* %arraydecay6)
  call void (...) @polybench_timer_start()
  %14 = load i32, i32* %n, align 4, !tbaa !2
  %15 = load [4000 x [4000 x double]]*, [4000 x [4000 x double]]** %A, align 8, !tbaa !6
  %arraydecay7 = getelementptr inbounds [4000 x [4000 x double]], [4000 x [4000 x double]]* %15, i64 0, i64 0
  %16 = load [4000 x double]*, [4000 x double]** %b, align 8, !tbaa !6
  %arraydecay8 = getelementptr inbounds [4000 x double], [4000 x double]* %16, i64 0, i64 0
  %17 = load [4000 x double]*, [4000 x double]** %x, align 8, !tbaa !6
  %arraydecay9 = getelementptr inbounds [4000 x double], [4000 x double]* %17, i64 0, i64 0
  %18 = load [4000 x double]*, [4000 x double]** %y, align 8, !tbaa !6
  %arraydecay10 = getelementptr inbounds [4000 x double], [4000 x double]* %18, i64 0, i64 0
  call void @kernel_ludcmp(i32 %14, [4000 x double]* %arraydecay7, double* %arraydecay8, double* %arraydecay9, double* %arraydecay10)
  call void (...) @polybench_timer_stop()
  call void (...) @polybench_timer_print()
  %19 = load i32, i32* %argc.addr, align 4, !tbaa !2
  %cmp = icmp sgt i32 %19, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %20 = load i8**, i8*** %argv.addr, align 8, !tbaa !6
  %arrayidx = getelementptr inbounds i8*, i8** %20, i64 0
  %21 = load i8*, i8** %arrayidx, align 8, !tbaa !6
  %call11 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)) #7
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %22 = load i32, i32* %n, align 4, !tbaa !2
  %23 = load [4000 x double]*, [4000 x double]** %x, align 8, !tbaa !6
  %arraydecay12 = getelementptr inbounds [4000 x double], [4000 x double]* %23, i64 0, i64 0
  call void @print_array(i32 %22, double* %arraydecay12)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %24 = load [4000 x [4000 x double]]*, [4000 x [4000 x double]]** %A, align 8, !tbaa !6
  %25 = bitcast [4000 x [4000 x double]]* %24 to i8*
  call void @free(i8* %25) #6
  %26 = load [4000 x double]*, [4000 x double]** %b, align 8, !tbaa !6
  %27 = bitcast [4000 x double]* %26 to i8*
  call void @free(i8* %27) #6
  %28 = load [4000 x double]*, [4000 x double]** %x, align 8, !tbaa !6
  %29 = bitcast [4000 x double]* %28 to i8*
  call void @free(i8* %29) #6
  %30 = load [4000 x double]*, [4000 x double]** %y, align 8, !tbaa !6
  %31 = bitcast [4000 x double]* %30 to i8*
  call void @free(i8* %31) #6
  %32 = bitcast [4000 x double]** %y to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %32) #6
  %33 = bitcast [4000 x double]** %x to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %33) #6
  %34 = bitcast [4000 x double]** %b to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %34) #6
  %35 = bitcast [4000 x [4000 x double]]** %A to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %35) #6
  %36 = bitcast i32* %n to i8*
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
define internal void @init_array(i32 %n, [4000 x double]* %A, double* %b, double* %x, double* %y) #0 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca [4000 x double]*, align 8
  %b.addr = alloca double*, align 8
  %x.addr = alloca double*, align 8
  %y.addr = alloca double*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %fn = alloca double, align 8
  %r = alloca i32, align 4
  %s = alloca i32, align 4
  %t = alloca i32, align 4
  %B = alloca [4000 x [4000 x double]]*, align 8
  store i32 %n, i32* %n.addr, align 4, !tbaa !2
  store [4000 x double]* %A, [4000 x double]** %A.addr, align 8, !tbaa !6
  store double* %b, double** %b.addr, align 8, !tbaa !6
  store double* %x, double** %x.addr, align 8, !tbaa !6
  store double* %y, double** %y.addr, align 8, !tbaa !6
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
  %6 = load double*, double** %x.addr, align 8, !tbaa !6
  %7 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds double, double* %6, i64 %idxprom
  store double 0.000000e+00, double* %arrayidx, align 8, !tbaa !10
  %8 = load double*, double** %y.addr, align 8, !tbaa !6
  %9 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom2 = sext i32 %9 to i64
  %arrayidx3 = getelementptr inbounds double, double* %8, i64 %idxprom2
  store double 0.000000e+00, double* %arrayidx3, align 8, !tbaa !10
  %10 = load i32, i32* %i, align 4, !tbaa !2
  %add = add nsw i32 %10, 1
  %conv4 = sitofp i32 %add to double
  %11 = load double, double* %fn, align 8, !tbaa !10
  %div = fdiv double %conv4, %11
  %div5 = fdiv double %div, 2.000000e+00
  %add6 = fadd double %div5, 4.000000e+00
  %12 = load double*, double** %b.addr, align 8, !tbaa !6
  %13 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom7 = sext i32 %13 to i64
  %arrayidx8 = getelementptr inbounds double, double* %12, i64 %idxprom7
  store double %add6, double* %arrayidx8, align 8, !tbaa !10
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !tbaa !2
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4, !tbaa !2
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc44, %for.end
  %15 = load i32, i32* %i, align 4, !tbaa !2
  %16 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp10 = icmp slt i32 %15, %16
  br i1 %cmp10, label %for.body12, label %for.end46

for.body12:                                       ; preds = %for.cond9
  store i32 0, i32* %j, align 4, !tbaa !2
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc25, %for.body12
  %17 = load i32, i32* %j, align 4, !tbaa !2
  %18 = load i32, i32* %i, align 4, !tbaa !2
  %cmp14 = icmp sle i32 %17, %18
  br i1 %cmp14, label %for.body16, label %for.end27

for.body16:                                       ; preds = %for.cond13
  %19 = load i32, i32* %j, align 4, !tbaa !2
  %sub = sub nsw i32 0, %19
  %20 = load i32, i32* %n.addr, align 4, !tbaa !2
  %rem = srem i32 %sub, %20
  %conv17 = sitofp i32 %rem to double
  %21 = load i32, i32* %n.addr, align 4, !tbaa !2
  %conv18 = sitofp i32 %21 to double
  %div19 = fdiv double %conv17, %conv18
  %add20 = fadd double %div19, 1.000000e+00
  %22 = load [4000 x double]*, [4000 x double]** %A.addr, align 8, !tbaa !6
  %23 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom21 = sext i32 %23 to i64
  %arrayidx22 = getelementptr inbounds [4000 x double], [4000 x double]* %22, i64 %idxprom21
  %24 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom23 = sext i32 %24 to i64
  %arrayidx24 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx22, i64 0, i64 %idxprom23
  store double %add20, double* %arrayidx24, align 8, !tbaa !10
  br label %for.inc25

for.inc25:                                        ; preds = %for.body16
  %25 = load i32, i32* %j, align 4, !tbaa !2
  %inc26 = add nsw i32 %25, 1
  store i32 %inc26, i32* %j, align 4, !tbaa !2
  br label %for.cond13, !llvm.loop !15

for.end27:                                        ; preds = %for.cond13
  %26 = load i32, i32* %i, align 4, !tbaa !2
  %add28 = add nsw i32 %26, 1
  store i32 %add28, i32* %j, align 4, !tbaa !2
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc37, %for.end27
  %27 = load i32, i32* %j, align 4, !tbaa !2
  %28 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp30 = icmp slt i32 %27, %28
  br i1 %cmp30, label %for.body32, label %for.end39

for.body32:                                       ; preds = %for.cond29
  %29 = load [4000 x double]*, [4000 x double]** %A.addr, align 8, !tbaa !6
  %30 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom33 = sext i32 %30 to i64
  %arrayidx34 = getelementptr inbounds [4000 x double], [4000 x double]* %29, i64 %idxprom33
  %31 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom35 = sext i32 %31 to i64
  %arrayidx36 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx34, i64 0, i64 %idxprom35
  store double 0.000000e+00, double* %arrayidx36, align 8, !tbaa !10
  br label %for.inc37

for.inc37:                                        ; preds = %for.body32
  %32 = load i32, i32* %j, align 4, !tbaa !2
  %inc38 = add nsw i32 %32, 1
  store i32 %inc38, i32* %j, align 4, !tbaa !2
  br label %for.cond29, !llvm.loop !16

for.end39:                                        ; preds = %for.cond29
  %33 = load [4000 x double]*, [4000 x double]** %A.addr, align 8, !tbaa !6
  %34 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom40 = sext i32 %34 to i64
  %arrayidx41 = getelementptr inbounds [4000 x double], [4000 x double]* %33, i64 %idxprom40
  %35 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom42 = sext i32 %35 to i64
  %arrayidx43 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx41, i64 0, i64 %idxprom42
  store double 1.000000e+00, double* %arrayidx43, align 8, !tbaa !10
  br label %for.inc44

for.inc44:                                        ; preds = %for.end39
  %36 = load i32, i32* %i, align 4, !tbaa !2
  %inc45 = add nsw i32 %36, 1
  store i32 %inc45, i32* %i, align 4, !tbaa !2
  br label %for.cond9, !llvm.loop !17

for.end46:                                        ; preds = %for.cond9
  %37 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %37) #6
  %38 = bitcast i32* %s to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %38) #6
  %39 = bitcast i32* %t to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %39) #6
  %40 = bitcast [4000 x [4000 x double]]** %B to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %40) #6
  %call = call i8* @polybench_alloc_data(i64 16000000, i32 8)
  %41 = bitcast i8* %call to [4000 x [4000 x double]]*
  store [4000 x [4000 x double]]* %41, [4000 x [4000 x double]]** %B, align 8, !tbaa !6
  store i32 0, i32* %r, align 4, !tbaa !2
  br label %for.cond47

for.cond47:                                       ; preds = %for.inc62, %for.end46
  %42 = load i32, i32* %r, align 4, !tbaa !2
  %43 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp48 = icmp slt i32 %42, %43
  br i1 %cmp48, label %for.body50, label %for.end64

for.body50:                                       ; preds = %for.cond47
  store i32 0, i32* %s, align 4, !tbaa !2
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc59, %for.body50
  %44 = load i32, i32* %s, align 4, !tbaa !2
  %45 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp52 = icmp slt i32 %44, %45
  br i1 %cmp52, label %for.body54, label %for.end61

for.body54:                                       ; preds = %for.cond51
  %46 = load [4000 x [4000 x double]]*, [4000 x [4000 x double]]** %B, align 8, !tbaa !6
  %47 = load i32, i32* %r, align 4, !tbaa !2
  %idxprom55 = sext i32 %47 to i64
  %arrayidx56 = getelementptr inbounds [4000 x [4000 x double]], [4000 x [4000 x double]]* %46, i64 0, i64 %idxprom55
  %48 = load i32, i32* %s, align 4, !tbaa !2
  %idxprom57 = sext i32 %48 to i64
  %arrayidx58 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx56, i64 0, i64 %idxprom57
  store double 0.000000e+00, double* %arrayidx58, align 8, !tbaa !10
  br label %for.inc59

for.inc59:                                        ; preds = %for.body54
  %49 = load i32, i32* %s, align 4, !tbaa !2
  %inc60 = add nsw i32 %49, 1
  store i32 %inc60, i32* %s, align 4, !tbaa !2
  br label %for.cond51, !llvm.loop !18

for.end61:                                        ; preds = %for.cond51
  br label %for.inc62

for.inc62:                                        ; preds = %for.end61
  %50 = load i32, i32* %r, align 4, !tbaa !2
  %inc63 = add nsw i32 %50, 1
  store i32 %inc63, i32* %r, align 4, !tbaa !2
  br label %for.cond47, !llvm.loop !19

for.end64:                                        ; preds = %for.cond47
  store i32 0, i32* %t, align 4, !tbaa !2
  br label %for.cond65

for.cond65:                                       ; preds = %for.inc96, %for.end64
  %51 = load i32, i32* %t, align 4, !tbaa !2
  %52 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp66 = icmp slt i32 %51, %52
  br i1 %cmp66, label %for.body68, label %for.end98

for.body68:                                       ; preds = %for.cond65
  store i32 0, i32* %r, align 4, !tbaa !2
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc93, %for.body68
  %53 = load i32, i32* %r, align 4, !tbaa !2
  %54 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp70 = icmp slt i32 %53, %54
  br i1 %cmp70, label %for.body72, label %for.end95

for.body72:                                       ; preds = %for.cond69
  store i32 0, i32* %s, align 4, !tbaa !2
  br label %for.cond73

for.cond73:                                       ; preds = %for.inc90, %for.body72
  %55 = load i32, i32* %s, align 4, !tbaa !2
  %56 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp74 = icmp slt i32 %55, %56
  br i1 %cmp74, label %for.body76, label %for.end92

for.body76:                                       ; preds = %for.cond73
  %57 = load [4000 x double]*, [4000 x double]** %A.addr, align 8, !tbaa !6
  %58 = load i32, i32* %r, align 4, !tbaa !2
  %idxprom77 = sext i32 %58 to i64
  %arrayidx78 = getelementptr inbounds [4000 x double], [4000 x double]* %57, i64 %idxprom77
  %59 = load i32, i32* %t, align 4, !tbaa !2
  %idxprom79 = sext i32 %59 to i64
  %arrayidx80 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx78, i64 0, i64 %idxprom79
  %60 = load double, double* %arrayidx80, align 8, !tbaa !10
  %61 = load [4000 x double]*, [4000 x double]** %A.addr, align 8, !tbaa !6
  %62 = load i32, i32* %s, align 4, !tbaa !2
  %idxprom81 = sext i32 %62 to i64
  %arrayidx82 = getelementptr inbounds [4000 x double], [4000 x double]* %61, i64 %idxprom81
  %63 = load i32, i32* %t, align 4, !tbaa !2
  %idxprom83 = sext i32 %63 to i64
  %arrayidx84 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx82, i64 0, i64 %idxprom83
  %64 = load double, double* %arrayidx84, align 8, !tbaa !10
  %mul = fmul double %60, %64
  %65 = load [4000 x [4000 x double]]*, [4000 x [4000 x double]]** %B, align 8, !tbaa !6
  %66 = load i32, i32* %r, align 4, !tbaa !2
  %idxprom85 = sext i32 %66 to i64
  %arrayidx86 = getelementptr inbounds [4000 x [4000 x double]], [4000 x [4000 x double]]* %65, i64 0, i64 %idxprom85
  %67 = load i32, i32* %s, align 4, !tbaa !2
  %idxprom87 = sext i32 %67 to i64
  %arrayidx88 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx86, i64 0, i64 %idxprom87
  %68 = load double, double* %arrayidx88, align 8, !tbaa !10
  %add89 = fadd double %68, %mul
  store double %add89, double* %arrayidx88, align 8, !tbaa !10
  br label %for.inc90

for.inc90:                                        ; preds = %for.body76
  %69 = load i32, i32* %s, align 4, !tbaa !2
  %inc91 = add nsw i32 %69, 1
  store i32 %inc91, i32* %s, align 4, !tbaa !2
  br label %for.cond73, !llvm.loop !20

for.end92:                                        ; preds = %for.cond73
  br label %for.inc93

for.inc93:                                        ; preds = %for.end92
  %70 = load i32, i32* %r, align 4, !tbaa !2
  %inc94 = add nsw i32 %70, 1
  store i32 %inc94, i32* %r, align 4, !tbaa !2
  br label %for.cond69, !llvm.loop !21

for.end95:                                        ; preds = %for.cond69
  br label %for.inc96

for.inc96:                                        ; preds = %for.end95
  %71 = load i32, i32* %t, align 4, !tbaa !2
  %inc97 = add nsw i32 %71, 1
  store i32 %inc97, i32* %t, align 4, !tbaa !2
  br label %for.cond65, !llvm.loop !22

for.end98:                                        ; preds = %for.cond65
  store i32 0, i32* %r, align 4, !tbaa !2
  br label %for.cond99

for.cond99:                                       ; preds = %for.inc118, %for.end98
  %72 = load i32, i32* %r, align 4, !tbaa !2
  %73 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp100 = icmp slt i32 %72, %73
  br i1 %cmp100, label %for.body102, label %for.end120

for.body102:                                      ; preds = %for.cond99
  store i32 0, i32* %s, align 4, !tbaa !2
  br label %for.cond103

for.cond103:                                      ; preds = %for.inc115, %for.body102
  %74 = load i32, i32* %s, align 4, !tbaa !2
  %75 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp104 = icmp slt i32 %74, %75
  br i1 %cmp104, label %for.body106, label %for.end117

for.body106:                                      ; preds = %for.cond103
  %76 = load [4000 x [4000 x double]]*, [4000 x [4000 x double]]** %B, align 8, !tbaa !6
  %77 = load i32, i32* %r, align 4, !tbaa !2
  %idxprom107 = sext i32 %77 to i64
  %arrayidx108 = getelementptr inbounds [4000 x [4000 x double]], [4000 x [4000 x double]]* %76, i64 0, i64 %idxprom107
  %78 = load i32, i32* %s, align 4, !tbaa !2
  %idxprom109 = sext i32 %78 to i64
  %arrayidx110 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx108, i64 0, i64 %idxprom109
  %79 = load double, double* %arrayidx110, align 8, !tbaa !10
  %80 = load [4000 x double]*, [4000 x double]** %A.addr, align 8, !tbaa !6
  %81 = load i32, i32* %r, align 4, !tbaa !2
  %idxprom111 = sext i32 %81 to i64
  %arrayidx112 = getelementptr inbounds [4000 x double], [4000 x double]* %80, i64 %idxprom111
  %82 = load i32, i32* %s, align 4, !tbaa !2
  %idxprom113 = sext i32 %82 to i64
  %arrayidx114 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx112, i64 0, i64 %idxprom113
  store double %79, double* %arrayidx114, align 8, !tbaa !10
  br label %for.inc115

for.inc115:                                       ; preds = %for.body106
  %83 = load i32, i32* %s, align 4, !tbaa !2
  %inc116 = add nsw i32 %83, 1
  store i32 %inc116, i32* %s, align 4, !tbaa !2
  br label %for.cond103, !llvm.loop !23

for.end117:                                       ; preds = %for.cond103
  br label %for.inc118

for.inc118:                                       ; preds = %for.end117
  %84 = load i32, i32* %r, align 4, !tbaa !2
  %inc119 = add nsw i32 %84, 1
  store i32 %inc119, i32* %r, align 4, !tbaa !2
  br label %for.cond99, !llvm.loop !24

for.end120:                                       ; preds = %for.cond99
  %85 = load [4000 x [4000 x double]]*, [4000 x [4000 x double]]** %B, align 8, !tbaa !6
  %86 = bitcast [4000 x [4000 x double]]* %85 to i8*
  call void @free(i8* %86) #6
  %87 = bitcast [4000 x [4000 x double]]** %B to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %87) #6
  %88 = bitcast i32* %t to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %88) #6
  %89 = bitcast i32* %s to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %89) #6
  %90 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %90) #6
  %91 = bitcast double* %fn to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %91) #6
  %92 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %92) #6
  %93 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %93) #6
  ret void
}

declare dso_local void @polybench_timer_start(...) #3

; Function Attrs: nounwind uwtable
define internal void @kernel_ludcmp(i32 %n, [4000 x double]* %A, double* %b, double* %x, double* %y) #0 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca [4000 x double]*, align 8
  %b.addr = alloca double*, align 8
  %x.addr = alloca double*, align 8
  %y.addr = alloca double*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %w = alloca double, align 8
  store i32 %n, i32* %n.addr, align 4, !tbaa !2
  store [4000 x double]* %A, [4000 x double]** %A.addr, align 8, !tbaa !6
  store double* %b, double** %b.addr, align 8, !tbaa !6
  store double* %x, double** %x.addr, align 8, !tbaa !6
  store double* %y, double** %y.addr, align 8, !tbaa !6
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #6
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #6
  %2 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #6
  %3 = bitcast double* %w to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #6
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc58, %entry
  %4 = load i32, i32* %i, align 4, !tbaa !2
  %5 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end60

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !tbaa !2
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc25, %for.body
  %6 = load i32, i32* %j, align 4, !tbaa !2
  %7 = load i32, i32* %i, align 4, !tbaa !2
  %cmp2 = icmp slt i32 %6, %7
  br i1 %cmp2, label %for.body3, label %for.end27

for.body3:                                        ; preds = %for.cond1
  %8 = load [4000 x double]*, [4000 x double]** %A.addr, align 8, !tbaa !6
  %9 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds [4000 x double], [4000 x double]* %8, i64 %idxprom
  %10 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom4 = sext i32 %10 to i64
  %arrayidx5 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx, i64 0, i64 %idxprom4
  %11 = load double, double* %arrayidx5, align 8, !tbaa !10
  store double %11, double* %w, align 8, !tbaa !10
  store i32 0, i32* %k, align 4, !tbaa !2
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body3
  %12 = load i32, i32* %k, align 4, !tbaa !2
  %13 = load i32, i32* %j, align 4, !tbaa !2
  %cmp7 = icmp slt i32 %12, %13
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond6
  %14 = load [4000 x double]*, [4000 x double]** %A.addr, align 8, !tbaa !6
  %15 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom9 = sext i32 %15 to i64
  %arrayidx10 = getelementptr inbounds [4000 x double], [4000 x double]* %14, i64 %idxprom9
  %16 = load i32, i32* %k, align 4, !tbaa !2
  %idxprom11 = sext i32 %16 to i64
  %arrayidx12 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx10, i64 0, i64 %idxprom11
  %17 = load double, double* %arrayidx12, align 8, !tbaa !10
  %18 = load [4000 x double]*, [4000 x double]** %A.addr, align 8, !tbaa !6
  %19 = load i32, i32* %k, align 4, !tbaa !2
  %idxprom13 = sext i32 %19 to i64
  %arrayidx14 = getelementptr inbounds [4000 x double], [4000 x double]* %18, i64 %idxprom13
  %20 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom15 = sext i32 %20 to i64
  %arrayidx16 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx14, i64 0, i64 %idxprom15
  %21 = load double, double* %arrayidx16, align 8, !tbaa !10
  %mul = fmul double %17, %21
  %22 = load double, double* %w, align 8, !tbaa !10
  %sub = fsub double %22, %mul
  store double %sub, double* %w, align 8, !tbaa !10
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %23 = load i32, i32* %k, align 4, !tbaa !2
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %k, align 4, !tbaa !2
  br label %for.cond6, !llvm.loop !25

for.end:                                          ; preds = %for.cond6
  %24 = load double, double* %w, align 8, !tbaa !10
  %25 = load [4000 x double]*, [4000 x double]** %A.addr, align 8, !tbaa !6
  %26 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom17 = sext i32 %26 to i64
  %arrayidx18 = getelementptr inbounds [4000 x double], [4000 x double]* %25, i64 %idxprom17
  %27 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom19 = sext i32 %27 to i64
  %arrayidx20 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx18, i64 0, i64 %idxprom19
  %28 = load double, double* %arrayidx20, align 8, !tbaa !10
  %div = fdiv double %24, %28
  %29 = load [4000 x double]*, [4000 x double]** %A.addr, align 8, !tbaa !6
  %30 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom21 = sext i32 %30 to i64
  %arrayidx22 = getelementptr inbounds [4000 x double], [4000 x double]* %29, i64 %idxprom21
  %31 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom23 = sext i32 %31 to i64
  %arrayidx24 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx22, i64 0, i64 %idxprom23
  store double %div, double* %arrayidx24, align 8, !tbaa !10
  br label %for.inc25

for.inc25:                                        ; preds = %for.end
  %32 = load i32, i32* %j, align 4, !tbaa !2
  %inc26 = add nsw i32 %32, 1
  store i32 %inc26, i32* %j, align 4, !tbaa !2
  br label %for.cond1, !llvm.loop !26

for.end27:                                        ; preds = %for.cond1
  %33 = load i32, i32* %i, align 4, !tbaa !2
  store i32 %33, i32* %j, align 4, !tbaa !2
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc55, %for.end27
  %34 = load i32, i32* %j, align 4, !tbaa !2
  %35 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp29 = icmp slt i32 %34, %35
  br i1 %cmp29, label %for.body30, label %for.end57

for.body30:                                       ; preds = %for.cond28
  %36 = load [4000 x double]*, [4000 x double]** %A.addr, align 8, !tbaa !6
  %37 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom31 = sext i32 %37 to i64
  %arrayidx32 = getelementptr inbounds [4000 x double], [4000 x double]* %36, i64 %idxprom31
  %38 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom33 = sext i32 %38 to i64
  %arrayidx34 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx32, i64 0, i64 %idxprom33
  %39 = load double, double* %arrayidx34, align 8, !tbaa !10
  store double %39, double* %w, align 8, !tbaa !10
  store i32 0, i32* %k, align 4, !tbaa !2
  br label %for.cond35

for.cond35:                                       ; preds = %for.inc48, %for.body30
  %40 = load i32, i32* %k, align 4, !tbaa !2
  %41 = load i32, i32* %i, align 4, !tbaa !2
  %cmp36 = icmp slt i32 %40, %41
  br i1 %cmp36, label %for.body37, label %for.end50

for.body37:                                       ; preds = %for.cond35
  %42 = load [4000 x double]*, [4000 x double]** %A.addr, align 8, !tbaa !6
  %43 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom38 = sext i32 %43 to i64
  %arrayidx39 = getelementptr inbounds [4000 x double], [4000 x double]* %42, i64 %idxprom38
  %44 = load i32, i32* %k, align 4, !tbaa !2
  %idxprom40 = sext i32 %44 to i64
  %arrayidx41 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx39, i64 0, i64 %idxprom40
  %45 = load double, double* %arrayidx41, align 8, !tbaa !10
  %46 = load [4000 x double]*, [4000 x double]** %A.addr, align 8, !tbaa !6
  %47 = load i32, i32* %k, align 4, !tbaa !2
  %idxprom42 = sext i32 %47 to i64
  %arrayidx43 = getelementptr inbounds [4000 x double], [4000 x double]* %46, i64 %idxprom42
  %48 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom44 = sext i32 %48 to i64
  %arrayidx45 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx43, i64 0, i64 %idxprom44
  %49 = load double, double* %arrayidx45, align 8, !tbaa !10
  %mul46 = fmul double %45, %49
  %50 = load double, double* %w, align 8, !tbaa !10
  %sub47 = fsub double %50, %mul46
  store double %sub47, double* %w, align 8, !tbaa !10
  br label %for.inc48

for.inc48:                                        ; preds = %for.body37
  %51 = load i32, i32* %k, align 4, !tbaa !2
  %inc49 = add nsw i32 %51, 1
  store i32 %inc49, i32* %k, align 4, !tbaa !2
  br label %for.cond35, !llvm.loop !27

for.end50:                                        ; preds = %for.cond35
  %52 = load double, double* %w, align 8, !tbaa !10
  %53 = load [4000 x double]*, [4000 x double]** %A.addr, align 8, !tbaa !6
  %54 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom51 = sext i32 %54 to i64
  %arrayidx52 = getelementptr inbounds [4000 x double], [4000 x double]* %53, i64 %idxprom51
  %55 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom53 = sext i32 %55 to i64
  %arrayidx54 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx52, i64 0, i64 %idxprom53
  store double %52, double* %arrayidx54, align 8, !tbaa !10
  br label %for.inc55

for.inc55:                                        ; preds = %for.end50
  %56 = load i32, i32* %j, align 4, !tbaa !2
  %inc56 = add nsw i32 %56, 1
  store i32 %inc56, i32* %j, align 4, !tbaa !2
  br label %for.cond28, !llvm.loop !28

for.end57:                                        ; preds = %for.cond28
  br label %for.inc58

for.inc58:                                        ; preds = %for.end57
  %57 = load i32, i32* %i, align 4, !tbaa !2
  %inc59 = add nsw i32 %57, 1
  store i32 %inc59, i32* %i, align 4, !tbaa !2
  br label %for.cond, !llvm.loop !29

for.end60:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond61

for.cond61:                                       ; preds = %for.inc82, %for.end60
  %58 = load i32, i32* %i, align 4, !tbaa !2
  %59 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp62 = icmp slt i32 %58, %59
  br i1 %cmp62, label %for.body63, label %for.end84

for.body63:                                       ; preds = %for.cond61
  %60 = load double*, double** %b.addr, align 8, !tbaa !6
  %61 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom64 = sext i32 %61 to i64
  %arrayidx65 = getelementptr inbounds double, double* %60, i64 %idxprom64
  %62 = load double, double* %arrayidx65, align 8, !tbaa !10
  store double %62, double* %w, align 8, !tbaa !10
  store i32 0, i32* %j, align 4, !tbaa !2
  br label %for.cond66

for.cond66:                                       ; preds = %for.inc77, %for.body63
  %63 = load i32, i32* %j, align 4, !tbaa !2
  %64 = load i32, i32* %i, align 4, !tbaa !2
  %cmp67 = icmp slt i32 %63, %64
  br i1 %cmp67, label %for.body68, label %for.end79

for.body68:                                       ; preds = %for.cond66
  %65 = load [4000 x double]*, [4000 x double]** %A.addr, align 8, !tbaa !6
  %66 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom69 = sext i32 %66 to i64
  %arrayidx70 = getelementptr inbounds [4000 x double], [4000 x double]* %65, i64 %idxprom69
  %67 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom71 = sext i32 %67 to i64
  %arrayidx72 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx70, i64 0, i64 %idxprom71
  %68 = load double, double* %arrayidx72, align 8, !tbaa !10
  %69 = load double*, double** %y.addr, align 8, !tbaa !6
  %70 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom73 = sext i32 %70 to i64
  %arrayidx74 = getelementptr inbounds double, double* %69, i64 %idxprom73
  %71 = load double, double* %arrayidx74, align 8, !tbaa !10
  %mul75 = fmul double %68, %71
  %72 = load double, double* %w, align 8, !tbaa !10
  %sub76 = fsub double %72, %mul75
  store double %sub76, double* %w, align 8, !tbaa !10
  br label %for.inc77

for.inc77:                                        ; preds = %for.body68
  %73 = load i32, i32* %j, align 4, !tbaa !2
  %inc78 = add nsw i32 %73, 1
  store i32 %inc78, i32* %j, align 4, !tbaa !2
  br label %for.cond66, !llvm.loop !30

for.end79:                                        ; preds = %for.cond66
  %74 = load double, double* %w, align 8, !tbaa !10
  %75 = load double*, double** %y.addr, align 8, !tbaa !6
  %76 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom80 = sext i32 %76 to i64
  %arrayidx81 = getelementptr inbounds double, double* %75, i64 %idxprom80
  store double %74, double* %arrayidx81, align 8, !tbaa !10
  br label %for.inc82

for.inc82:                                        ; preds = %for.end79
  %77 = load i32, i32* %i, align 4, !tbaa !2
  %inc83 = add nsw i32 %77, 1
  store i32 %inc83, i32* %i, align 4, !tbaa !2
  br label %for.cond61, !llvm.loop !31

for.end84:                                        ; preds = %for.cond61
  %78 = load i32, i32* %n.addr, align 4, !tbaa !2
  %sub85 = sub nsw i32 %78, 1
  store i32 %sub85, i32* %i, align 4, !tbaa !2
  br label %for.cond86

for.cond86:                                       ; preds = %for.inc112, %for.end84
  %79 = load i32, i32* %i, align 4, !tbaa !2
  %cmp87 = icmp sge i32 %79, 0
  br i1 %cmp87, label %for.body88, label %for.end113

for.body88:                                       ; preds = %for.cond86
  %80 = load double*, double** %y.addr, align 8, !tbaa !6
  %81 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom89 = sext i32 %81 to i64
  %arrayidx90 = getelementptr inbounds double, double* %80, i64 %idxprom89
  %82 = load double, double* %arrayidx90, align 8, !tbaa !10
  store double %82, double* %w, align 8, !tbaa !10
  %83 = load i32, i32* %i, align 4, !tbaa !2
  %add = add nsw i32 %83, 1
  store i32 %add, i32* %j, align 4, !tbaa !2
  br label %for.cond91

for.cond91:                                       ; preds = %for.inc102, %for.body88
  %84 = load i32, i32* %j, align 4, !tbaa !2
  %85 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp92 = icmp slt i32 %84, %85
  br i1 %cmp92, label %for.body93, label %for.end104

for.body93:                                       ; preds = %for.cond91
  %86 = load [4000 x double]*, [4000 x double]** %A.addr, align 8, !tbaa !6
  %87 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom94 = sext i32 %87 to i64
  %arrayidx95 = getelementptr inbounds [4000 x double], [4000 x double]* %86, i64 %idxprom94
  %88 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom96 = sext i32 %88 to i64
  %arrayidx97 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx95, i64 0, i64 %idxprom96
  %89 = load double, double* %arrayidx97, align 8, !tbaa !10
  %90 = load double*, double** %x.addr, align 8, !tbaa !6
  %91 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom98 = sext i32 %91 to i64
  %arrayidx99 = getelementptr inbounds double, double* %90, i64 %idxprom98
  %92 = load double, double* %arrayidx99, align 8, !tbaa !10
  %mul100 = fmul double %89, %92
  %93 = load double, double* %w, align 8, !tbaa !10
  %sub101 = fsub double %93, %mul100
  store double %sub101, double* %w, align 8, !tbaa !10
  br label %for.inc102

for.inc102:                                       ; preds = %for.body93
  %94 = load i32, i32* %j, align 4, !tbaa !2
  %inc103 = add nsw i32 %94, 1
  store i32 %inc103, i32* %j, align 4, !tbaa !2
  br label %for.cond91, !llvm.loop !32

for.end104:                                       ; preds = %for.cond91
  %95 = load double, double* %w, align 8, !tbaa !10
  %96 = load [4000 x double]*, [4000 x double]** %A.addr, align 8, !tbaa !6
  %97 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom105 = sext i32 %97 to i64
  %arrayidx106 = getelementptr inbounds [4000 x double], [4000 x double]* %96, i64 %idxprom105
  %98 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom107 = sext i32 %98 to i64
  %arrayidx108 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx106, i64 0, i64 %idxprom107
  %99 = load double, double* %arrayidx108, align 8, !tbaa !10
  %div109 = fdiv double %95, %99
  %100 = load double*, double** %x.addr, align 8, !tbaa !6
  %101 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom110 = sext i32 %101 to i64
  %arrayidx111 = getelementptr inbounds double, double* %100, i64 %idxprom110
  store double %div109, double* %arrayidx111, align 8, !tbaa !10
  br label %for.inc112

for.inc112:                                       ; preds = %for.end104
  %102 = load i32, i32* %i, align 4, !tbaa !2
  %dec = add nsw i32 %102, -1
  store i32 %dec, i32* %i, align 4, !tbaa !2
  br label %for.cond86, !llvm.loop !33

for.end113:                                       ; preds = %for.cond86
  %103 = bitcast double* %w to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %103) #6
  %104 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %104) #6
  %105 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %105) #6
  %106 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %106) #6
  ret void
}

declare dso_local void @polybench_timer_stop(...) #3

declare dso_local void @polybench_timer_print(...) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define internal void @print_array(i32 %n, double* %x) #0 {
entry:
  %n.addr = alloca i32, align 4
  %x.addr = alloca double*, align 8
  %i = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4, !tbaa !2
  store double* %x, double** %x.addr, align 8, !tbaa !6
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
  %8 = load double*, double** %x.addr, align 8, !tbaa !6
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
  br label %for.cond, !llvm.loop !34

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
!22 = distinct !{!22, !13, !14}
!23 = distinct !{!23, !13, !14}
!24 = distinct !{!24, !13, !14}
!25 = distinct !{!25, !13, !14}
!26 = distinct !{!26, !13, !14}
!27 = distinct !{!27, !13, !14}
!28 = distinct !{!28, !13, !14}
!29 = distinct !{!29, !13, !14}
!30 = distinct !{!30, !13, !14}
!31 = distinct !{!31, !13, !14}
!32 = distinct !{!32, !13, !14}
!33 = distinct !{!33, !13, !14}
!34 = distinct !{!34, !13, !14}

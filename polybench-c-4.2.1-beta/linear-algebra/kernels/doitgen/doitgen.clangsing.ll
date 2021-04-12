; ModuleID = 'doitgen.c'
source_filename = "doitgen.c"
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
@.str.3 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @kernel_doitgen(i32 %nr, i32 %nq, i32 %np, [220 x [270 x double]]* %A, [270 x double]* %C4, double* %sum) #0 {
entry:
  %nr.addr = alloca i32, align 4
  %nq.addr = alloca i32, align 4
  %np.addr = alloca i32, align 4
  %A.addr = alloca [220 x [270 x double]]*, align 8
  %C4.addr = alloca [270 x double]*, align 8
  %sum.addr = alloca double*, align 8
  %r = alloca i32, align 4
  %q = alloca i32, align 4
  %p = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 %nr, i32* %nr.addr, align 4, !tbaa !2
  store i32 %nq, i32* %nq.addr, align 4, !tbaa !2
  store i32 %np, i32* %np.addr, align 4, !tbaa !2
  store [220 x [270 x double]]* %A, [220 x [270 x double]]** %A.addr, align 8, !tbaa !6
  store [270 x double]* %C4, [270 x double]** %C4.addr, align 8, !tbaa !6
  store double* %sum, double** %sum.addr, align 8, !tbaa !6
  %0 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #6
  %1 = bitcast i32* %q to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #6
  %2 = bitcast i32* %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #6
  %3 = bitcast i32* %s to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #6
  store i32 0, i32* %r, align 4, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc42, %entry
  %4 = load i32, i32* %r, align 4, !tbaa !2
  %5 = load i32, i32* %nr.addr, align 4, !tbaa !2
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end44

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %q, align 4, !tbaa !2
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc39, %for.body
  %6 = load i32, i32* %q, align 4, !tbaa !2
  %7 = load i32, i32* %nq.addr, align 4, !tbaa !2
  %cmp2 = icmp slt i32 %6, %7
  br i1 %cmp2, label %for.body3, label %for.end41

for.body3:                                        ; preds = %for.cond1
  store i32 0, i32* %p, align 4, !tbaa !2
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc22, %for.body3
  %8 = load i32, i32* %p, align 4, !tbaa !2
  %9 = load i32, i32* %np.addr, align 4, !tbaa !2
  %cmp5 = icmp slt i32 %8, %9
  br i1 %cmp5, label %for.body6, label %for.end24

for.body6:                                        ; preds = %for.cond4
  %10 = load double*, double** %sum.addr, align 8, !tbaa !6
  %11 = load i32, i32* %p, align 4, !tbaa !2
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds double, double* %10, i64 %idxprom
  store double 0.000000e+00, double* %arrayidx, align 8, !tbaa !8
  store i32 0, i32* %s, align 4, !tbaa !2
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc, %for.body6
  %12 = load i32, i32* %s, align 4, !tbaa !2
  %13 = load i32, i32* %np.addr, align 4, !tbaa !2
  %cmp8 = icmp slt i32 %12, %13
  br i1 %cmp8, label %for.body9, label %for.end

for.body9:                                        ; preds = %for.cond7
  %14 = load [220 x [270 x double]]*, [220 x [270 x double]]** %A.addr, align 8, !tbaa !6
  %15 = load i32, i32* %r, align 4, !tbaa !2
  %idxprom10 = sext i32 %15 to i64
  %arrayidx11 = getelementptr inbounds [220 x [270 x double]], [220 x [270 x double]]* %14, i64 %idxprom10
  %16 = load i32, i32* %q, align 4, !tbaa !2
  %idxprom12 = sext i32 %16 to i64
  %arrayidx13 = getelementptr inbounds [220 x [270 x double]], [220 x [270 x double]]* %arrayidx11, i64 0, i64 %idxprom12
  %17 = load i32, i32* %s, align 4, !tbaa !2
  %idxprom14 = sext i32 %17 to i64
  %arrayidx15 = getelementptr inbounds [270 x double], [270 x double]* %arrayidx13, i64 0, i64 %idxprom14
  %18 = load double, double* %arrayidx15, align 8, !tbaa !8
  %19 = load [270 x double]*, [270 x double]** %C4.addr, align 8, !tbaa !6
  %20 = load i32, i32* %s, align 4, !tbaa !2
  %idxprom16 = sext i32 %20 to i64
  %arrayidx17 = getelementptr inbounds [270 x double], [270 x double]* %19, i64 %idxprom16
  %21 = load i32, i32* %p, align 4, !tbaa !2
  %idxprom18 = sext i32 %21 to i64
  %arrayidx19 = getelementptr inbounds [270 x double], [270 x double]* %arrayidx17, i64 0, i64 %idxprom18
  %22 = load double, double* %arrayidx19, align 8, !tbaa !8
  %mul = fmul double %18, %22
  %23 = load double*, double** %sum.addr, align 8, !tbaa !6
  %24 = load i32, i32* %p, align 4, !tbaa !2
  %idxprom20 = sext i32 %24 to i64
  %arrayidx21 = getelementptr inbounds double, double* %23, i64 %idxprom20
  %25 = load double, double* %arrayidx21, align 8, !tbaa !8
  %add = fadd double %25, %mul
  store double %add, double* %arrayidx21, align 8, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %26 = load i32, i32* %s, align 4, !tbaa !2
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %s, align 4, !tbaa !2
  br label %for.cond7, !llvm.loop !10

for.end:                                          ; preds = %for.cond7
  br label %for.inc22

for.inc22:                                        ; preds = %for.end
  %27 = load i32, i32* %p, align 4, !tbaa !2
  %inc23 = add nsw i32 %27, 1
  store i32 %inc23, i32* %p, align 4, !tbaa !2
  br label %for.cond4, !llvm.loop !13

for.end24:                                        ; preds = %for.cond4
  store i32 0, i32* %p, align 4, !tbaa !2
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc36, %for.end24
  %28 = load i32, i32* %p, align 4, !tbaa !2
  %29 = load i32, i32* %np.addr, align 4, !tbaa !2
  %cmp26 = icmp slt i32 %28, %29
  br i1 %cmp26, label %for.body27, label %for.end38

for.body27:                                       ; preds = %for.cond25
  %30 = load double*, double** %sum.addr, align 8, !tbaa !6
  %31 = load i32, i32* %p, align 4, !tbaa !2
  %idxprom28 = sext i32 %31 to i64
  %arrayidx29 = getelementptr inbounds double, double* %30, i64 %idxprom28
  %32 = load double, double* %arrayidx29, align 8, !tbaa !8
  %33 = load [220 x [270 x double]]*, [220 x [270 x double]]** %A.addr, align 8, !tbaa !6
  %34 = load i32, i32* %r, align 4, !tbaa !2
  %idxprom30 = sext i32 %34 to i64
  %arrayidx31 = getelementptr inbounds [220 x [270 x double]], [220 x [270 x double]]* %33, i64 %idxprom30
  %35 = load i32, i32* %q, align 4, !tbaa !2
  %idxprom32 = sext i32 %35 to i64
  %arrayidx33 = getelementptr inbounds [220 x [270 x double]], [220 x [270 x double]]* %arrayidx31, i64 0, i64 %idxprom32
  %36 = load i32, i32* %p, align 4, !tbaa !2
  %idxprom34 = sext i32 %36 to i64
  %arrayidx35 = getelementptr inbounds [270 x double], [270 x double]* %arrayidx33, i64 0, i64 %idxprom34
  store double %32, double* %arrayidx35, align 8, !tbaa !8
  br label %for.inc36

for.inc36:                                        ; preds = %for.body27
  %37 = load i32, i32* %p, align 4, !tbaa !2
  %inc37 = add nsw i32 %37, 1
  store i32 %inc37, i32* %p, align 4, !tbaa !2
  br label %for.cond25, !llvm.loop !14

for.end38:                                        ; preds = %for.cond25
  br label %for.inc39

for.inc39:                                        ; preds = %for.end38
  %38 = load i32, i32* %q, align 4, !tbaa !2
  %inc40 = add nsw i32 %38, 1
  store i32 %inc40, i32* %q, align 4, !tbaa !2
  br label %for.cond1, !llvm.loop !15

for.end41:                                        ; preds = %for.cond1
  br label %for.inc42

for.inc42:                                        ; preds = %for.end41
  %39 = load i32, i32* %r, align 4, !tbaa !2
  %inc43 = add nsw i32 %39, 1
  store i32 %inc43, i32* %r, align 4, !tbaa !2
  br label %for.cond, !llvm.loop !16

for.end44:                                        ; preds = %for.cond
  %40 = bitcast i32* %s to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #6
  %41 = bitcast i32* %p to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #6
  %42 = bitcast i32* %q to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #6
  %43 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #6
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %nr = alloca i32, align 4
  %nq = alloca i32, align 4
  %np = alloca i32, align 4
  %A = alloca [250 x [220 x [270 x double]]]*, align 8
  %sum = alloca [270 x double]*, align 8
  %C4 = alloca [270 x [270 x double]]*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !2
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !6
  %0 = bitcast i32* %nr to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #6
  store i32 250, i32* %nr, align 4, !tbaa !2
  %1 = bitcast i32* %nq to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #6
  store i32 220, i32* %nq, align 4, !tbaa !2
  %2 = bitcast i32* %np to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #6
  store i32 270, i32* %np, align 4, !tbaa !2
  %3 = bitcast [250 x [220 x [270 x double]]]** %A to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #6
  %call = call i8* @polybench_alloc_data(i64 14850000, i32 8)
  %4 = bitcast i8* %call to [250 x [220 x [270 x double]]]*
  store [250 x [220 x [270 x double]]]* %4, [250 x [220 x [270 x double]]]** %A, align 8, !tbaa !6
  %5 = bitcast [270 x double]** %sum to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %5) #6
  %call1 = call i8* @polybench_alloc_data(i64 270, i32 8)
  %6 = bitcast i8* %call1 to [270 x double]*
  store [270 x double]* %6, [270 x double]** %sum, align 8, !tbaa !6
  %7 = bitcast [270 x [270 x double]]** %C4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %7) #6
  %call2 = call i8* @polybench_alloc_data(i64 72900, i32 8)
  %8 = bitcast i8* %call2 to [270 x [270 x double]]*
  store [270 x [270 x double]]* %8, [270 x [270 x double]]** %C4, align 8, !tbaa !6
  %9 = load i32, i32* %nr, align 4, !tbaa !2
  %10 = load i32, i32* %nq, align 4, !tbaa !2
  %11 = load i32, i32* %np, align 4, !tbaa !2
  %12 = load [250 x [220 x [270 x double]]]*, [250 x [220 x [270 x double]]]** %A, align 8, !tbaa !6
  %arraydecay = getelementptr inbounds [250 x [220 x [270 x double]]], [250 x [220 x [270 x double]]]* %12, i64 0, i64 0
  %13 = load [270 x [270 x double]]*, [270 x [270 x double]]** %C4, align 8, !tbaa !6
  %arraydecay3 = getelementptr inbounds [270 x [270 x double]], [270 x [270 x double]]* %13, i64 0, i64 0
  call void @init_array(i32 %9, i32 %10, i32 %11, [220 x [270 x double]]* %arraydecay, [270 x double]* %arraydecay3)
  call void (...) @polybench_timer_start()
  %14 = load i32, i32* %nr, align 4, !tbaa !2
  %15 = load i32, i32* %nq, align 4, !tbaa !2
  %16 = load i32, i32* %np, align 4, !tbaa !2
  %17 = load [250 x [220 x [270 x double]]]*, [250 x [220 x [270 x double]]]** %A, align 8, !tbaa !6
  %arraydecay4 = getelementptr inbounds [250 x [220 x [270 x double]]], [250 x [220 x [270 x double]]]* %17, i64 0, i64 0
  %18 = load [270 x [270 x double]]*, [270 x [270 x double]]** %C4, align 8, !tbaa !6
  %arraydecay5 = getelementptr inbounds [270 x [270 x double]], [270 x [270 x double]]* %18, i64 0, i64 0
  %19 = load [270 x double]*, [270 x double]** %sum, align 8, !tbaa !6
  %arraydecay6 = getelementptr inbounds [270 x double], [270 x double]* %19, i64 0, i64 0
  call void @kernel_doitgen(i32 %14, i32 %15, i32 %16, [220 x [270 x double]]* %arraydecay4, [270 x double]* %arraydecay5, double* %arraydecay6)
  call void (...) @polybench_timer_stop()
  call void (...) @polybench_timer_print()
  %20 = load i32, i32* %argc.addr, align 4, !tbaa !2
  %cmp = icmp sgt i32 %20, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %21 = load i8**, i8*** %argv.addr, align 8, !tbaa !6
  %arrayidx = getelementptr inbounds i8*, i8** %21, i64 0
  %22 = load i8*, i8** %arrayidx, align 8, !tbaa !6
  %call7 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)) #7
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %23 = load i32, i32* %nr, align 4, !tbaa !2
  %24 = load i32, i32* %nq, align 4, !tbaa !2
  %25 = load i32, i32* %np, align 4, !tbaa !2
  %26 = load [250 x [220 x [270 x double]]]*, [250 x [220 x [270 x double]]]** %A, align 8, !tbaa !6
  %arraydecay8 = getelementptr inbounds [250 x [220 x [270 x double]]], [250 x [220 x [270 x double]]]* %26, i64 0, i64 0
  call void @print_array(i32 %23, i32 %24, i32 %25, [220 x [270 x double]]* %arraydecay8)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %27 = load [250 x [220 x [270 x double]]]*, [250 x [220 x [270 x double]]]** %A, align 8, !tbaa !6
  %28 = bitcast [250 x [220 x [270 x double]]]* %27 to i8*
  call void @free(i8* %28) #6
  %29 = load [270 x double]*, [270 x double]** %sum, align 8, !tbaa !6
  %30 = bitcast [270 x double]* %29 to i8*
  call void @free(i8* %30) #6
  %31 = load [270 x [270 x double]]*, [270 x [270 x double]]** %C4, align 8, !tbaa !6
  %32 = bitcast [270 x [270 x double]]* %31 to i8*
  call void @free(i8* %32) #6
  %33 = bitcast [270 x [270 x double]]** %C4 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %33) #6
  %34 = bitcast [270 x double]** %sum to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %34) #6
  %35 = bitcast [250 x [220 x [270 x double]]]** %A to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %35) #6
  %36 = bitcast i32* %np to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #6
  %37 = bitcast i32* %nq to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #6
  %38 = bitcast i32* %nr to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #6
  ret i32 0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @polybench_alloc_data(i64 %n, i32 %elt_size) #2 {
entry:
  %n.addr = alloca i64, align 8
  %elt_size.addr = alloca i32, align 4
  store i64 %n, i64* %n.addr, align 8, !tbaa !17
  store i32 %elt_size, i32* %elt_size.addr, align 4, !tbaa !2
  %0 = load i64, i64* %n.addr, align 8, !tbaa !17
  %1 = load i32, i32* %elt_size.addr, align 4, !tbaa !2
  %conv = sext i32 %1 to i64
  %mul = mul i64 %0, %conv
  %call = call noalias i8* @malloc(i64 %mul) #6
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define internal void @init_array(i32 %nr, i32 %nq, i32 %np, [220 x [270 x double]]* %A, [270 x double]* %C4) #0 {
entry:
  %nr.addr = alloca i32, align 4
  %nq.addr = alloca i32, align 4
  %np.addr = alloca i32, align 4
  %A.addr = alloca [220 x [270 x double]]*, align 8
  %C4.addr = alloca [270 x double]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %nr, i32* %nr.addr, align 4, !tbaa !2
  store i32 %nq, i32* %nq.addr, align 4, !tbaa !2
  store i32 %np, i32* %np.addr, align 4, !tbaa !2
  store [220 x [270 x double]]* %A, [220 x [270 x double]]** %A.addr, align 8, !tbaa !6
  store [270 x double]* %C4, [270 x double]** %C4.addr, align 8, !tbaa !6
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #6
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #6
  %2 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #6
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc15, %entry
  %3 = load i32, i32* %i, align 4, !tbaa !2
  %4 = load i32, i32* %nr.addr, align 4, !tbaa !2
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end17

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !tbaa !2
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc12, %for.body
  %5 = load i32, i32* %j, align 4, !tbaa !2
  %6 = load i32, i32* %nq.addr, align 4, !tbaa !2
  %cmp2 = icmp slt i32 %5, %6
  br i1 %cmp2, label %for.body3, label %for.end14

for.body3:                                        ; preds = %for.cond1
  store i32 0, i32* %k, align 4, !tbaa !2
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %7 = load i32, i32* %k, align 4, !tbaa !2
  %8 = load i32, i32* %np.addr, align 4, !tbaa !2
  %cmp5 = icmp slt i32 %7, %8
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %9 = load i32, i32* %i, align 4, !tbaa !2
  %10 = load i32, i32* %j, align 4, !tbaa !2
  %mul = mul nsw i32 %9, %10
  %11 = load i32, i32* %k, align 4, !tbaa !2
  %add = add nsw i32 %mul, %11
  %12 = load i32, i32* %np.addr, align 4, !tbaa !2
  %rem = srem i32 %add, %12
  %conv = sitofp i32 %rem to double
  %13 = load i32, i32* %np.addr, align 4, !tbaa !2
  %conv7 = sitofp i32 %13 to double
  %div = fdiv double %conv, %conv7
  %14 = load [220 x [270 x double]]*, [220 x [270 x double]]** %A.addr, align 8, !tbaa !6
  %15 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds [220 x [270 x double]], [220 x [270 x double]]* %14, i64 %idxprom
  %16 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom8 = sext i32 %16 to i64
  %arrayidx9 = getelementptr inbounds [220 x [270 x double]], [220 x [270 x double]]* %arrayidx, i64 0, i64 %idxprom8
  %17 = load i32, i32* %k, align 4, !tbaa !2
  %idxprom10 = sext i32 %17 to i64
  %arrayidx11 = getelementptr inbounds [270 x double], [270 x double]* %arrayidx9, i64 0, i64 %idxprom10
  store double %div, double* %arrayidx11, align 8, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %18 = load i32, i32* %k, align 4, !tbaa !2
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %k, align 4, !tbaa !2
  br label %for.cond4, !llvm.loop !19

for.end:                                          ; preds = %for.cond4
  br label %for.inc12

for.inc12:                                        ; preds = %for.end
  %19 = load i32, i32* %j, align 4, !tbaa !2
  %inc13 = add nsw i32 %19, 1
  store i32 %inc13, i32* %j, align 4, !tbaa !2
  br label %for.cond1, !llvm.loop !20

for.end14:                                        ; preds = %for.cond1
  br label %for.inc15

for.inc15:                                        ; preds = %for.end14
  %20 = load i32, i32* %i, align 4, !tbaa !2
  %inc16 = add nsw i32 %20, 1
  store i32 %inc16, i32* %i, align 4, !tbaa !2
  br label %for.cond, !llvm.loop !21

for.end17:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc38, %for.end17
  %21 = load i32, i32* %i, align 4, !tbaa !2
  %22 = load i32, i32* %np.addr, align 4, !tbaa !2
  %cmp19 = icmp slt i32 %21, %22
  br i1 %cmp19, label %for.body21, label %for.end40

for.body21:                                       ; preds = %for.cond18
  store i32 0, i32* %j, align 4, !tbaa !2
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc35, %for.body21
  %23 = load i32, i32* %j, align 4, !tbaa !2
  %24 = load i32, i32* %np.addr, align 4, !tbaa !2
  %cmp23 = icmp slt i32 %23, %24
  br i1 %cmp23, label %for.body25, label %for.end37

for.body25:                                       ; preds = %for.cond22
  %25 = load i32, i32* %i, align 4, !tbaa !2
  %26 = load i32, i32* %j, align 4, !tbaa !2
  %mul26 = mul nsw i32 %25, %26
  %27 = load i32, i32* %np.addr, align 4, !tbaa !2
  %rem27 = srem i32 %mul26, %27
  %conv28 = sitofp i32 %rem27 to double
  %28 = load i32, i32* %np.addr, align 4, !tbaa !2
  %conv29 = sitofp i32 %28 to double
  %div30 = fdiv double %conv28, %conv29
  %29 = load [270 x double]*, [270 x double]** %C4.addr, align 8, !tbaa !6
  %30 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom31 = sext i32 %30 to i64
  %arrayidx32 = getelementptr inbounds [270 x double], [270 x double]* %29, i64 %idxprom31
  %31 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom33 = sext i32 %31 to i64
  %arrayidx34 = getelementptr inbounds [270 x double], [270 x double]* %arrayidx32, i64 0, i64 %idxprom33
  store double %div30, double* %arrayidx34, align 8, !tbaa !8
  br label %for.inc35

for.inc35:                                        ; preds = %for.body25
  %32 = load i32, i32* %j, align 4, !tbaa !2
  %inc36 = add nsw i32 %32, 1
  store i32 %inc36, i32* %j, align 4, !tbaa !2
  br label %for.cond22, !llvm.loop !22

for.end37:                                        ; preds = %for.cond22
  br label %for.inc38

for.inc38:                                        ; preds = %for.end37
  %33 = load i32, i32* %i, align 4, !tbaa !2
  %inc39 = add nsw i32 %33, 1
  store i32 %inc39, i32* %i, align 4, !tbaa !2
  br label %for.cond18, !llvm.loop !23

for.end40:                                        ; preds = %for.cond18
  %34 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #6
  %35 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #6
  %36 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #6
  ret void
}

declare dso_local void @polybench_timer_start(...) #3

declare dso_local void @polybench_timer_stop(...) #3

declare dso_local void @polybench_timer_print(...) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define internal void @print_array(i32 %nr, i32 %nq, i32 %np, [220 x [270 x double]]* %A) #0 {
entry:
  %nr.addr = alloca i32, align 4
  %nq.addr = alloca i32, align 4
  %np.addr = alloca i32, align 4
  %A.addr = alloca [220 x [270 x double]]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %nr, i32* %nr.addr, align 4, !tbaa !2
  store i32 %nq, i32* %nq.addr, align 4, !tbaa !2
  store i32 %np, i32* %np.addr, align 4, !tbaa !2
  store [220 x [270 x double]]* %A, [220 x [270 x double]]** %A.addr, align 8, !tbaa !6
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #6
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #6
  %2 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #6
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !6
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !6
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc21, %entry
  %5 = load i32, i32* %i, align 4, !tbaa !2
  %6 = load i32, i32* %nr.addr, align 4, !tbaa !2
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end23

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !tbaa !2
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc18, %for.body
  %7 = load i32, i32* %j, align 4, !tbaa !2
  %8 = load i32, i32* %nq.addr, align 4, !tbaa !2
  %cmp3 = icmp slt i32 %7, %8
  br i1 %cmp3, label %for.body4, label %for.end20

for.body4:                                        ; preds = %for.cond2
  store i32 0, i32* %k, align 4, !tbaa !2
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body4
  %9 = load i32, i32* %k, align 4, !tbaa !2
  %10 = load i32, i32* %np.addr, align 4, !tbaa !2
  %cmp6 = icmp slt i32 %9, %10
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %11 = load i32, i32* %i, align 4, !tbaa !2
  %12 = load i32, i32* %nq.addr, align 4, !tbaa !2
  %mul = mul nsw i32 %11, %12
  %13 = load i32, i32* %np.addr, align 4, !tbaa !2
  %mul8 = mul nsw i32 %mul, %13
  %14 = load i32, i32* %j, align 4, !tbaa !2
  %15 = load i32, i32* %np.addr, align 4, !tbaa !2
  %mul9 = mul nsw i32 %14, %15
  %add = add nsw i32 %mul8, %mul9
  %16 = load i32, i32* %k, align 4, !tbaa !2
  %add10 = add nsw i32 %add, %16
  %rem = srem i32 %add10, 20
  %cmp11 = icmp eq i32 %rem, 0
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %for.body7
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !6
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body7
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !6
  %19 = load [220 x [270 x double]]*, [220 x [270 x double]]** %A.addr, align 8, !tbaa !6
  %20 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom = sext i32 %20 to i64
  %arrayidx = getelementptr inbounds [220 x [270 x double]], [220 x [270 x double]]* %19, i64 %idxprom
  %21 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom13 = sext i32 %21 to i64
  %arrayidx14 = getelementptr inbounds [220 x [270 x double]], [220 x [270 x double]]* %arrayidx, i64 0, i64 %idxprom13
  %22 = load i32, i32* %k, align 4, !tbaa !2
  %idxprom15 = sext i32 %22 to i64
  %arrayidx16 = getelementptr inbounds [270 x double], [270 x double]* %arrayidx14, i64 0, i64 %idxprom15
  %23 = load double, double* %arrayidx16, align 8, !tbaa !8
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %23)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %24 = load i32, i32* %k, align 4, !tbaa !2
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %k, align 4, !tbaa !2
  br label %for.cond5, !llvm.loop !24

for.end:                                          ; preds = %for.cond5
  br label %for.inc18

for.inc18:                                        ; preds = %for.end
  %25 = load i32, i32* %j, align 4, !tbaa !2
  %inc19 = add nsw i32 %25, 1
  store i32 %inc19, i32* %j, align 4, !tbaa !2
  br label %for.cond2, !llvm.loop !25

for.end20:                                        ; preds = %for.cond2
  br label %for.inc21

for.inc21:                                        ; preds = %for.end20
  %26 = load i32, i32* %i, align 4, !tbaa !2
  %inc22 = add nsw i32 %26, 1
  store i32 %inc22, i32* %i, align 4, !tbaa !2
  br label %for.cond, !llvm.loop !26

for.end23:                                        ; preds = %for.cond
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !6
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !6
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %29 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #6
  %30 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #6
  %31 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #6
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #5

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
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
!16 = distinct !{!16, !11, !12}
!17 = !{!18, !18, i64 0}
!18 = !{!"long long", !4, i64 0}
!19 = distinct !{!19, !11, !12}
!20 = distinct !{!20, !11, !12}
!21 = distinct !{!21, !11, !12}
!22 = distinct !{!22, !11, !12}
!23 = distinct !{!23, !11, !12}
!24 = distinct !{!24, !11, !12}
!25 = distinct !{!25, !11, !12}
!26 = distinct !{!26, !11, !12}

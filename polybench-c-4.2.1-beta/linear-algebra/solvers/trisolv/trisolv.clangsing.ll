; ModuleID = 'trisolv.c'
source_filename = "trisolv.c"
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
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %n = alloca i32, align 4
  %L = alloca [4000 x [4000 x double]]*, align 8
  %x = alloca [4000 x double]*, align 8
  %b = alloca [4000 x double]*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !2
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !6
  %0 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #6
  store i32 4000, i32* %n, align 4, !tbaa !2
  %1 = bitcast [4000 x [4000 x double]]** %L to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #6
  %call = call i8* @polybench_alloc_data(i64 16000000, i32 8)
  %2 = bitcast i8* %call to [4000 x [4000 x double]]*
  store [4000 x [4000 x double]]* %2, [4000 x [4000 x double]]** %L, align 8, !tbaa !6
  %3 = bitcast [4000 x double]** %x to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #6
  %call1 = call i8* @polybench_alloc_data(i64 4000, i32 8)
  %4 = bitcast i8* %call1 to [4000 x double]*
  store [4000 x double]* %4, [4000 x double]** %x, align 8, !tbaa !6
  %5 = bitcast [4000 x double]** %b to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %5) #6
  %call2 = call i8* @polybench_alloc_data(i64 4000, i32 8)
  %6 = bitcast i8* %call2 to [4000 x double]*
  store [4000 x double]* %6, [4000 x double]** %b, align 8, !tbaa !6
  %7 = load i32, i32* %n, align 4, !tbaa !2
  %8 = load [4000 x [4000 x double]]*, [4000 x [4000 x double]]** %L, align 8, !tbaa !6
  %arraydecay = getelementptr inbounds [4000 x [4000 x double]], [4000 x [4000 x double]]* %8, i64 0, i64 0
  %9 = load [4000 x double]*, [4000 x double]** %x, align 8, !tbaa !6
  %arraydecay3 = getelementptr inbounds [4000 x double], [4000 x double]* %9, i64 0, i64 0
  %10 = load [4000 x double]*, [4000 x double]** %b, align 8, !tbaa !6
  %arraydecay4 = getelementptr inbounds [4000 x double], [4000 x double]* %10, i64 0, i64 0
  call void @init_array(i32 %7, [4000 x double]* %arraydecay, double* %arraydecay3, double* %arraydecay4)
  call void (...) @polybench_timer_start()
  %11 = load i32, i32* %n, align 4, !tbaa !2
  %12 = load [4000 x [4000 x double]]*, [4000 x [4000 x double]]** %L, align 8, !tbaa !6
  %arraydecay5 = getelementptr inbounds [4000 x [4000 x double]], [4000 x [4000 x double]]* %12, i64 0, i64 0
  %13 = load [4000 x double]*, [4000 x double]** %x, align 8, !tbaa !6
  %arraydecay6 = getelementptr inbounds [4000 x double], [4000 x double]* %13, i64 0, i64 0
  %14 = load [4000 x double]*, [4000 x double]** %b, align 8, !tbaa !6
  %arraydecay7 = getelementptr inbounds [4000 x double], [4000 x double]* %14, i64 0, i64 0
  call void @kernel_trisolv(i32 %11, [4000 x double]* %arraydecay5, double* %arraydecay6, double* %arraydecay7)
  call void (...) @polybench_timer_stop()
  call void (...) @polybench_timer_print()
  %15 = load i32, i32* %argc.addr, align 4, !tbaa !2
  %cmp = icmp sgt i32 %15, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %16 = load i8**, i8*** %argv.addr, align 8, !tbaa !6
  %arrayidx = getelementptr inbounds i8*, i8** %16, i64 0
  %17 = load i8*, i8** %arrayidx, align 8, !tbaa !6
  %call8 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)) #7
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %18 = load i32, i32* %n, align 4, !tbaa !2
  %19 = load [4000 x double]*, [4000 x double]** %x, align 8, !tbaa !6
  %arraydecay9 = getelementptr inbounds [4000 x double], [4000 x double]* %19, i64 0, i64 0
  call void @print_array(i32 %18, double* %arraydecay9)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %20 = load [4000 x [4000 x double]]*, [4000 x [4000 x double]]** %L, align 8, !tbaa !6
  %21 = bitcast [4000 x [4000 x double]]* %20 to i8*
  call void @free(i8* %21) #6
  %22 = load [4000 x double]*, [4000 x double]** %x, align 8, !tbaa !6
  %23 = bitcast [4000 x double]* %22 to i8*
  call void @free(i8* %23) #6
  %24 = load [4000 x double]*, [4000 x double]** %b, align 8, !tbaa !6
  %25 = bitcast [4000 x double]* %24 to i8*
  call void @free(i8* %25) #6
  %26 = bitcast [4000 x double]** %b to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %26) #6
  %27 = bitcast [4000 x double]** %x to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %27) #6
  %28 = bitcast [4000 x [4000 x double]]** %L to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %28) #6
  %29 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #6
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
define internal void @init_array(i32 %n, [4000 x double]* %L, double* %x, double* %b) #0 {
entry:
  %n.addr = alloca i32, align 4
  %L.addr = alloca [4000 x double]*, align 8
  %x.addr = alloca double*, align 8
  %b.addr = alloca double*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4, !tbaa !2
  store [4000 x double]* %L, [4000 x double]** %L.addr, align 8, !tbaa !6
  store double* %x, double** %x.addr, align 8, !tbaa !6
  store double* %b, double** %b.addr, align 8, !tbaa !6
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #6
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #6
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc14, %entry
  %2 = load i32, i32* %i, align 4, !tbaa !2
  %3 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end16

for.body:                                         ; preds = %for.cond
  %4 = load double*, double** %x.addr, align 8, !tbaa !6
  %5 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds double, double* %4, i64 %idxprom
  store double -9.990000e+02, double* %arrayidx, align 8, !tbaa !10
  %6 = load i32, i32* %i, align 4, !tbaa !2
  %conv = sitofp i32 %6 to double
  %7 = load double*, double** %b.addr, align 8, !tbaa !6
  %8 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom1 = sext i32 %8 to i64
  %arrayidx2 = getelementptr inbounds double, double* %7, i64 %idxprom1
  store double %conv, double* %arrayidx2, align 8, !tbaa !10
  store i32 0, i32* %j, align 4, !tbaa !2
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %9 = load i32, i32* %j, align 4, !tbaa !2
  %10 = load i32, i32* %i, align 4, !tbaa !2
  %cmp4 = icmp sle i32 %9, %10
  br i1 %cmp4, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond3
  %11 = load i32, i32* %i, align 4, !tbaa !2
  %12 = load i32, i32* %n.addr, align 4, !tbaa !2
  %add = add nsw i32 %11, %12
  %13 = load i32, i32* %j, align 4, !tbaa !2
  %sub = sub nsw i32 %add, %13
  %add7 = add nsw i32 %sub, 1
  %conv8 = sitofp i32 %add7 to double
  %mul = fmul double %conv8, 2.000000e+00
  %14 = load i32, i32* %n.addr, align 4, !tbaa !2
  %conv9 = sitofp i32 %14 to double
  %div = fdiv double %mul, %conv9
  %15 = load [4000 x double]*, [4000 x double]** %L.addr, align 8, !tbaa !6
  %16 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom10 = sext i32 %16 to i64
  %arrayidx11 = getelementptr inbounds [4000 x double], [4000 x double]* %15, i64 %idxprom10
  %17 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom12 = sext i32 %17 to i64
  %arrayidx13 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx11, i64 0, i64 %idxprom12
  store double %div, double* %arrayidx13, align 8, !tbaa !10
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %18 = load i32, i32* %j, align 4, !tbaa !2
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %j, align 4, !tbaa !2
  br label %for.cond3, !llvm.loop !12

for.end:                                          ; preds = %for.cond3
  br label %for.inc14

for.inc14:                                        ; preds = %for.end
  %19 = load i32, i32* %i, align 4, !tbaa !2
  %inc15 = add nsw i32 %19, 1
  store i32 %inc15, i32* %i, align 4, !tbaa !2
  br label %for.cond, !llvm.loop !15

for.end16:                                        ; preds = %for.cond
  %20 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %20) #6
  %21 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #6
  ret void
}

declare dso_local void @polybench_timer_start(...) #3

; Function Attrs: nounwind uwtable
define internal void @kernel_trisolv(i32 %n, [4000 x double]* %L, double* %x, double* %b) #0 {
entry:
  %n.addr = alloca i32, align 4
  %L.addr = alloca [4000 x double]*, align 8
  %x.addr = alloca double*, align 8
  %b.addr = alloca double*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4, !tbaa !2
  store [4000 x double]* %L, [4000 x double]** %L.addr, align 8, !tbaa !6
  store double* %x, double** %x.addr, align 8, !tbaa !6
  store double* %b, double** %b.addr, align 8, !tbaa !6
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #6
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #6
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc22, %entry
  %2 = load i32, i32* %i, align 4, !tbaa !2
  %3 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end24

for.body:                                         ; preds = %for.cond
  %4 = load double*, double** %b.addr, align 8, !tbaa !6
  %5 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds double, double* %4, i64 %idxprom
  %6 = load double, double* %arrayidx, align 8, !tbaa !10
  %7 = load double*, double** %x.addr, align 8, !tbaa !6
  %8 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom1 = sext i32 %8 to i64
  %arrayidx2 = getelementptr inbounds double, double* %7, i64 %idxprom1
  store double %6, double* %arrayidx2, align 8, !tbaa !10
  store i32 0, i32* %j, align 4, !tbaa !2
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %9 = load i32, i32* %j, align 4, !tbaa !2
  %10 = load i32, i32* %i, align 4, !tbaa !2
  %cmp4 = icmp slt i32 %9, %10
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %11 = load [4000 x double]*, [4000 x double]** %L.addr, align 8, !tbaa !6
  %12 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom6 = sext i32 %12 to i64
  %arrayidx7 = getelementptr inbounds [4000 x double], [4000 x double]* %11, i64 %idxprom6
  %13 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom8 = sext i32 %13 to i64
  %arrayidx9 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx7, i64 0, i64 %idxprom8
  %14 = load double, double* %arrayidx9, align 8, !tbaa !10
  %15 = load double*, double** %x.addr, align 8, !tbaa !6
  %16 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom10 = sext i32 %16 to i64
  %arrayidx11 = getelementptr inbounds double, double* %15, i64 %idxprom10
  %17 = load double, double* %arrayidx11, align 8, !tbaa !10
  %mul = fmul double %14, %17
  %18 = load double*, double** %x.addr, align 8, !tbaa !6
  %19 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom12 = sext i32 %19 to i64
  %arrayidx13 = getelementptr inbounds double, double* %18, i64 %idxprom12
  %20 = load double, double* %arrayidx13, align 8, !tbaa !10
  %sub = fsub double %20, %mul
  store double %sub, double* %arrayidx13, align 8, !tbaa !10
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %21 = load i32, i32* %j, align 4, !tbaa !2
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %j, align 4, !tbaa !2
  br label %for.cond3, !llvm.loop !16

for.end:                                          ; preds = %for.cond3
  %22 = load double*, double** %x.addr, align 8, !tbaa !6
  %23 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom14 = sext i32 %23 to i64
  %arrayidx15 = getelementptr inbounds double, double* %22, i64 %idxprom14
  %24 = load double, double* %arrayidx15, align 8, !tbaa !10
  %25 = load [4000 x double]*, [4000 x double]** %L.addr, align 8, !tbaa !6
  %26 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom16 = sext i32 %26 to i64
  %arrayidx17 = getelementptr inbounds [4000 x double], [4000 x double]* %25, i64 %idxprom16
  %27 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom18 = sext i32 %27 to i64
  %arrayidx19 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx17, i64 0, i64 %idxprom18
  %28 = load double, double* %arrayidx19, align 8, !tbaa !10
  %div = fdiv double %24, %28
  %29 = load double*, double** %x.addr, align 8, !tbaa !6
  %30 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom20 = sext i32 %30 to i64
  %arrayidx21 = getelementptr inbounds double, double* %29, i64 %idxprom20
  store double %div, double* %arrayidx21, align 8, !tbaa !10
  br label %for.inc22

for.inc22:                                        ; preds = %for.end
  %31 = load i32, i32* %i, align 4, !tbaa !2
  %inc23 = add nsw i32 %31, 1
  store i32 %inc23, i32* %i, align 4, !tbaa !2
  br label %for.cond, !llvm.loop !17

for.end24:                                        ; preds = %for.cond
  %32 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #6
  %33 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #6
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
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !6
  %6 = load double*, double** %x.addr, align 8, !tbaa !6
  %7 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds double, double* %6, i64 %idxprom
  %8 = load double, double* %arrayidx, align 8, !tbaa !10
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), double %8)
  %9 = load i32, i32* %i, align 4, !tbaa !2
  %rem = srem i32 %9, 20
  %cmp3 = icmp eq i32 %rem, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !6
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
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

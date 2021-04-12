; ModuleID = 'durbin.c'
source_filename = "durbin.c"
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
  %n = alloca i32, align 4
  %r = alloca [4000 x double]*, align 8
  %y = alloca [4000 x double]*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !2
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !6
  %0 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #6
  store i32 4000, i32* %n, align 4, !tbaa !2
  %1 = bitcast [4000 x double]** %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #6
  %call = call i8* @polybench_alloc_data(i64 4000, i32 8)
  %2 = bitcast i8* %call to [4000 x double]*
  store [4000 x double]* %2, [4000 x double]** %r, align 8, !tbaa !6
  %3 = bitcast [4000 x double]** %y to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #6
  %call1 = call i8* @polybench_alloc_data(i64 4000, i32 8)
  %4 = bitcast i8* %call1 to [4000 x double]*
  store [4000 x double]* %4, [4000 x double]** %y, align 8, !tbaa !6
  %5 = load i32, i32* %n, align 4, !tbaa !2
  %6 = load [4000 x double]*, [4000 x double]** %r, align 8, !tbaa !6
  %arraydecay = getelementptr inbounds [4000 x double], [4000 x double]* %6, i64 0, i64 0
  call void @init_array(i32 %5, double* %arraydecay)
  call void (...) @polybench_timer_start()
  %7 = load i32, i32* %n, align 4, !tbaa !2
  %8 = load [4000 x double]*, [4000 x double]** %r, align 8, !tbaa !6
  %arraydecay2 = getelementptr inbounds [4000 x double], [4000 x double]* %8, i64 0, i64 0
  %9 = load [4000 x double]*, [4000 x double]** %y, align 8, !tbaa !6
  %arraydecay3 = getelementptr inbounds [4000 x double], [4000 x double]* %9, i64 0, i64 0
  call void @kernel_durbin(i32 %7, double* %arraydecay2, double* %arraydecay3)
  call void (...) @polybench_timer_stop()
  call void (...) @polybench_timer_print()
  %10 = load i32, i32* %argc.addr, align 4, !tbaa !2
  %cmp = icmp sgt i32 %10, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %11 = load i8**, i8*** %argv.addr, align 8, !tbaa !6
  %arrayidx = getelementptr inbounds i8*, i8** %11, i64 0
  %12 = load i8*, i8** %arrayidx, align 8, !tbaa !6
  %call4 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)) #7
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %13 = load i32, i32* %n, align 4, !tbaa !2
  %14 = load [4000 x double]*, [4000 x double]** %y, align 8, !tbaa !6
  %arraydecay5 = getelementptr inbounds [4000 x double], [4000 x double]* %14, i64 0, i64 0
  call void @print_array(i32 %13, double* %arraydecay5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %15 = load [4000 x double]*, [4000 x double]** %r, align 8, !tbaa !6
  %16 = bitcast [4000 x double]* %15 to i8*
  call void @free(i8* %16) #6
  %17 = load [4000 x double]*, [4000 x double]** %y, align 8, !tbaa !6
  %18 = bitcast [4000 x double]* %17 to i8*
  call void @free(i8* %18) #6
  %19 = bitcast [4000 x double]** %y to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %19) #6
  %20 = bitcast [4000 x double]** %r to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %20) #6
  %21 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #6
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
define internal void @init_array(i32 %n, double* %r) #0 {
entry:
  %n.addr = alloca i32, align 4
  %r.addr = alloca double*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4, !tbaa !2
  store double* %r, double** %r.addr, align 8, !tbaa !6
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
  %4 = load i32, i32* %n.addr, align 4, !tbaa !2
  %add = add nsw i32 %4, 1
  %5 = load i32, i32* %i, align 4, !tbaa !2
  %sub = sub nsw i32 %add, %5
  %conv = sitofp i32 %sub to double
  %6 = load double*, double** %r.addr, align 8, !tbaa !6
  %7 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds double, double* %6, i64 %idxprom
  store double %conv, double* %arrayidx, align 8, !tbaa !10
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !tbaa !2
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4, !tbaa !2
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %9 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #6
  %10 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %10) #6
  ret void
}

declare dso_local void @polybench_timer_start(...) #3

; Function Attrs: nounwind uwtable
define internal void @kernel_durbin(i32 %n, double* %r, double* %y) #0 {
entry:
  %n.addr = alloca i32, align 4
  %r.addr = alloca double*, align 8
  %y.addr = alloca double*, align 8
  %z = alloca [4000 x double], align 16
  %alpha = alloca double, align 8
  %beta = alloca double, align 8
  %sum = alloca double, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4, !tbaa !2
  store double* %r, double** %r.addr, align 8, !tbaa !6
  store double* %y, double** %y.addr, align 8, !tbaa !6
  %0 = bitcast [4000 x double]* %z to i8*
  call void @llvm.lifetime.start.p0i8(i64 32000, i8* %0) #6
  %1 = bitcast double* %alpha to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #6
  %2 = bitcast double* %beta to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #6
  %3 = bitcast double* %sum to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #6
  %4 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #6
  %5 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #6
  %6 = load double*, double** %r.addr, align 8, !tbaa !6
  %arrayidx = getelementptr inbounds double, double* %6, i64 0
  %7 = load double, double* %arrayidx, align 8, !tbaa !10
  %fneg = fneg double %7
  %8 = load double*, double** %y.addr, align 8, !tbaa !6
  %arrayidx1 = getelementptr inbounds double, double* %8, i64 0
  store double %fneg, double* %arrayidx1, align 8, !tbaa !10
  store double 1.000000e+00, double* %beta, align 8, !tbaa !10
  %9 = load double*, double** %r.addr, align 8, !tbaa !6
  %arrayidx2 = getelementptr inbounds double, double* %9, i64 0
  %10 = load double, double* %arrayidx2, align 8, !tbaa !10
  %fneg3 = fneg double %10
  store double %fneg3, double* %alpha, align 8, !tbaa !10
  store i32 1, i32* %k, align 4, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc46, %entry
  %11 = load i32, i32* %k, align 4, !tbaa !2
  %12 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp = icmp slt i32 %11, %12
  br i1 %cmp, label %for.body, label %for.end48

for.body:                                         ; preds = %for.cond
  %13 = load double, double* %alpha, align 8, !tbaa !10
  %14 = load double, double* %alpha, align 8, !tbaa !10
  %mul = fmul double %13, %14
  %sub = fsub double 1.000000e+00, %mul
  %15 = load double, double* %beta, align 8, !tbaa !10
  %mul4 = fmul double %sub, %15
  store double %mul4, double* %beta, align 8, !tbaa !10
  store double 0.000000e+00, double* %sum, align 8, !tbaa !10
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body
  %16 = load i32, i32* %i, align 4, !tbaa !2
  %17 = load i32, i32* %k, align 4, !tbaa !2
  %cmp6 = icmp slt i32 %16, %17
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %18 = load double*, double** %r.addr, align 8, !tbaa !6
  %19 = load i32, i32* %k, align 4, !tbaa !2
  %20 = load i32, i32* %i, align 4, !tbaa !2
  %sub8 = sub nsw i32 %19, %20
  %sub9 = sub nsw i32 %sub8, 1
  %idxprom = sext i32 %sub9 to i64
  %arrayidx10 = getelementptr inbounds double, double* %18, i64 %idxprom
  %21 = load double, double* %arrayidx10, align 8, !tbaa !10
  %22 = load double*, double** %y.addr, align 8, !tbaa !6
  %23 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom11 = sext i32 %23 to i64
  %arrayidx12 = getelementptr inbounds double, double* %22, i64 %idxprom11
  %24 = load double, double* %arrayidx12, align 8, !tbaa !10
  %mul13 = fmul double %21, %24
  %25 = load double, double* %sum, align 8, !tbaa !10
  %add = fadd double %25, %mul13
  store double %add, double* %sum, align 8, !tbaa !10
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %26 = load i32, i32* %i, align 4, !tbaa !2
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4, !tbaa !2
  br label %for.cond5, !llvm.loop !15

for.end:                                          ; preds = %for.cond5
  %27 = load double*, double** %r.addr, align 8, !tbaa !6
  %28 = load i32, i32* %k, align 4, !tbaa !2
  %idxprom14 = sext i32 %28 to i64
  %arrayidx15 = getelementptr inbounds double, double* %27, i64 %idxprom14
  %29 = load double, double* %arrayidx15, align 8, !tbaa !10
  %30 = load double, double* %sum, align 8, !tbaa !10
  %add16 = fadd double %29, %30
  %fneg17 = fneg double %add16
  %31 = load double, double* %beta, align 8, !tbaa !10
  %div = fdiv double %fneg17, %31
  store double %div, double* %alpha, align 8, !tbaa !10
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc31, %for.end
  %32 = load i32, i32* %i, align 4, !tbaa !2
  %33 = load i32, i32* %k, align 4, !tbaa !2
  %cmp19 = icmp slt i32 %32, %33
  br i1 %cmp19, label %for.body20, label %for.end33

for.body20:                                       ; preds = %for.cond18
  %34 = load double*, double** %y.addr, align 8, !tbaa !6
  %35 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom21 = sext i32 %35 to i64
  %arrayidx22 = getelementptr inbounds double, double* %34, i64 %idxprom21
  %36 = load double, double* %arrayidx22, align 8, !tbaa !10
  %37 = load double, double* %alpha, align 8, !tbaa !10
  %38 = load double*, double** %y.addr, align 8, !tbaa !6
  %39 = load i32, i32* %k, align 4, !tbaa !2
  %40 = load i32, i32* %i, align 4, !tbaa !2
  %sub23 = sub nsw i32 %39, %40
  %sub24 = sub nsw i32 %sub23, 1
  %idxprom25 = sext i32 %sub24 to i64
  %arrayidx26 = getelementptr inbounds double, double* %38, i64 %idxprom25
  %41 = load double, double* %arrayidx26, align 8, !tbaa !10
  %mul27 = fmul double %37, %41
  %add28 = fadd double %36, %mul27
  %42 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom29 = sext i32 %42 to i64
  %arrayidx30 = getelementptr inbounds [4000 x double], [4000 x double]* %z, i64 0, i64 %idxprom29
  store double %add28, double* %arrayidx30, align 8, !tbaa !10
  br label %for.inc31

for.inc31:                                        ; preds = %for.body20
  %43 = load i32, i32* %i, align 4, !tbaa !2
  %inc32 = add nsw i32 %43, 1
  store i32 %inc32, i32* %i, align 4, !tbaa !2
  br label %for.cond18, !llvm.loop !16

for.end33:                                        ; preds = %for.cond18
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc41, %for.end33
  %44 = load i32, i32* %i, align 4, !tbaa !2
  %45 = load i32, i32* %k, align 4, !tbaa !2
  %cmp35 = icmp slt i32 %44, %45
  br i1 %cmp35, label %for.body36, label %for.end43

for.body36:                                       ; preds = %for.cond34
  %46 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom37 = sext i32 %46 to i64
  %arrayidx38 = getelementptr inbounds [4000 x double], [4000 x double]* %z, i64 0, i64 %idxprom37
  %47 = load double, double* %arrayidx38, align 8, !tbaa !10
  %48 = load double*, double** %y.addr, align 8, !tbaa !6
  %49 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom39 = sext i32 %49 to i64
  %arrayidx40 = getelementptr inbounds double, double* %48, i64 %idxprom39
  store double %47, double* %arrayidx40, align 8, !tbaa !10
  br label %for.inc41

for.inc41:                                        ; preds = %for.body36
  %50 = load i32, i32* %i, align 4, !tbaa !2
  %inc42 = add nsw i32 %50, 1
  store i32 %inc42, i32* %i, align 4, !tbaa !2
  br label %for.cond34, !llvm.loop !17

for.end43:                                        ; preds = %for.cond34
  %51 = load double, double* %alpha, align 8, !tbaa !10
  %52 = load double*, double** %y.addr, align 8, !tbaa !6
  %53 = load i32, i32* %k, align 4, !tbaa !2
  %idxprom44 = sext i32 %53 to i64
  %arrayidx45 = getelementptr inbounds double, double* %52, i64 %idxprom44
  store double %51, double* %arrayidx45, align 8, !tbaa !10
  br label %for.inc46

for.inc46:                                        ; preds = %for.end43
  %54 = load i32, i32* %k, align 4, !tbaa !2
  %inc47 = add nsw i32 %54, 1
  store i32 %inc47, i32* %k, align 4, !tbaa !2
  br label %for.cond, !llvm.loop !18

for.end48:                                        ; preds = %for.cond
  %55 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %55) #6
  %56 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %56) #6
  %57 = bitcast double* %sum to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %57) #6
  %58 = bitcast double* %beta to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %58) #6
  %59 = bitcast double* %alpha to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %59) #6
  %60 = bitcast [4000 x double]* %z to i8*
  call void @llvm.lifetime.end.p0i8(i64 32000, i8* %60) #6
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
  br label %for.cond, !llvm.loop !19

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

; ModuleID = 'lu.c'
source_filename = "lu.c"
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
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %n = alloca i32, align 4
  %A = alloca [4000 x [4000 x double]]*, align 8
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
  %3 = load i32, i32* %n, align 4, !tbaa !2
  %4 = load [4000 x [4000 x double]]*, [4000 x [4000 x double]]** %A, align 8, !tbaa !6
  %arraydecay = getelementptr inbounds [4000 x [4000 x double]], [4000 x [4000 x double]]* %4, i64 0, i64 0
  call void @init_array(i32 %3, [4000 x double]* %arraydecay)
  call void (...) @polybench_timer_start()
  %5 = load i32, i32* %n, align 4, !tbaa !2
  %6 = load [4000 x [4000 x double]]*, [4000 x [4000 x double]]** %A, align 8, !tbaa !6
  %arraydecay1 = getelementptr inbounds [4000 x [4000 x double]], [4000 x [4000 x double]]* %6, i64 0, i64 0
  call void @kernel_lu(i32 %5, [4000 x double]* %arraydecay1)
  call void (...) @polybench_timer_stop()
  call void (...) @polybench_timer_print()
  %7 = load i32, i32* %argc.addr, align 4, !tbaa !2
  %cmp = icmp sgt i32 %7, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %8 = load i8**, i8*** %argv.addr, align 8, !tbaa !6
  %arrayidx = getelementptr inbounds i8*, i8** %8, i64 0
  %9 = load i8*, i8** %arrayidx, align 8, !tbaa !6
  %call2 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)) #7
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %10 = load i32, i32* %n, align 4, !tbaa !2
  %11 = load [4000 x [4000 x double]]*, [4000 x [4000 x double]]** %A, align 8, !tbaa !6
  %arraydecay3 = getelementptr inbounds [4000 x [4000 x double]], [4000 x [4000 x double]]* %11, i64 0, i64 0
  call void @print_array(i32 %10, [4000 x double]* %arraydecay3)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %12 = load [4000 x [4000 x double]]*, [4000 x [4000 x double]]** %A, align 8, !tbaa !6
  %13 = bitcast [4000 x [4000 x double]]* %12 to i8*
  call void @free(i8* %13) #6
  %14 = bitcast [4000 x [4000 x double]]** %A to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %14) #6
  %15 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %15) #6
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
define internal void @init_array(i32 %n, [4000 x double]* %A) #0 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca [4000 x double]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %r = alloca i32, align 4
  %s = alloca i32, align 4
  %t = alloca i32, align 4
  %B = alloca [4000 x [4000 x double]]*, align 8
  store i32 %n, i32* %n.addr, align 4, !tbaa !2
  store [4000 x double]* %A, [4000 x double]** %A.addr, align 8, !tbaa !6
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #6
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #6
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %2 = load i32, i32* %i, align 4, !tbaa !2
  %3 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !tbaa !2
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %4 = load i32, i32* %j, align 4, !tbaa !2
  %5 = load i32, i32* %i, align 4, !tbaa !2
  %cmp2 = icmp sle i32 %4, %5
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %6 = load i32, i32* %j, align 4, !tbaa !2
  %sub = sub nsw i32 0, %6
  %7 = load i32, i32* %n.addr, align 4, !tbaa !2
  %rem = srem i32 %sub, %7
  %conv = sitofp i32 %rem to double
  %8 = load i32, i32* %n.addr, align 4, !tbaa !2
  %conv4 = sitofp i32 %8 to double
  %div = fdiv double %conv, %conv4
  %add = fadd double %div, 1.000000e+00
  %9 = load [4000 x double]*, [4000 x double]** %A.addr, align 8, !tbaa !6
  %10 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [4000 x double], [4000 x double]* %9, i64 %idxprom
  %11 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom5 = sext i32 %11 to i64
  %arrayidx6 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx, i64 0, i64 %idxprom5
  store double %add, double* %arrayidx6, align 8, !tbaa !10
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %12 = load i32, i32* %j, align 4, !tbaa !2
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %j, align 4, !tbaa !2
  br label %for.cond1, !llvm.loop !12

for.end:                                          ; preds = %for.cond1
  %13 = load i32, i32* %i, align 4, !tbaa !2
  %add7 = add nsw i32 %13, 1
  store i32 %add7, i32* %j, align 4, !tbaa !2
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc16, %for.end
  %14 = load i32, i32* %j, align 4, !tbaa !2
  %15 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp9 = icmp slt i32 %14, %15
  br i1 %cmp9, label %for.body11, label %for.end18

for.body11:                                       ; preds = %for.cond8
  %16 = load [4000 x double]*, [4000 x double]** %A.addr, align 8, !tbaa !6
  %17 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom12 = sext i32 %17 to i64
  %arrayidx13 = getelementptr inbounds [4000 x double], [4000 x double]* %16, i64 %idxprom12
  %18 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom14 = sext i32 %18 to i64
  %arrayidx15 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx13, i64 0, i64 %idxprom14
  store double 0.000000e+00, double* %arrayidx15, align 8, !tbaa !10
  br label %for.inc16

for.inc16:                                        ; preds = %for.body11
  %19 = load i32, i32* %j, align 4, !tbaa !2
  %inc17 = add nsw i32 %19, 1
  store i32 %inc17, i32* %j, align 4, !tbaa !2
  br label %for.cond8, !llvm.loop !15

for.end18:                                        ; preds = %for.cond8
  %20 = load [4000 x double]*, [4000 x double]** %A.addr, align 8, !tbaa !6
  %21 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom19 = sext i32 %21 to i64
  %arrayidx20 = getelementptr inbounds [4000 x double], [4000 x double]* %20, i64 %idxprom19
  %22 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom21 = sext i32 %22 to i64
  %arrayidx22 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx20, i64 0, i64 %idxprom21
  store double 1.000000e+00, double* %arrayidx22, align 8, !tbaa !10
  br label %for.inc23

for.inc23:                                        ; preds = %for.end18
  %23 = load i32, i32* %i, align 4, !tbaa !2
  %inc24 = add nsw i32 %23, 1
  store i32 %inc24, i32* %i, align 4, !tbaa !2
  br label %for.cond, !llvm.loop !16

for.end25:                                        ; preds = %for.cond
  %24 = bitcast i32* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %24) #6
  %25 = bitcast i32* %s to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %25) #6
  %26 = bitcast i32* %t to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %26) #6
  %27 = bitcast [4000 x [4000 x double]]** %B to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %27) #6
  %call = call i8* @polybench_alloc_data(i64 16000000, i32 8)
  %28 = bitcast i8* %call to [4000 x [4000 x double]]*
  store [4000 x [4000 x double]]* %28, [4000 x [4000 x double]]** %B, align 8, !tbaa !6
  store i32 0, i32* %r, align 4, !tbaa !2
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc41, %for.end25
  %29 = load i32, i32* %r, align 4, !tbaa !2
  %30 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp27 = icmp slt i32 %29, %30
  br i1 %cmp27, label %for.body29, label %for.end43

for.body29:                                       ; preds = %for.cond26
  store i32 0, i32* %s, align 4, !tbaa !2
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc38, %for.body29
  %31 = load i32, i32* %s, align 4, !tbaa !2
  %32 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp31 = icmp slt i32 %31, %32
  br i1 %cmp31, label %for.body33, label %for.end40

for.body33:                                       ; preds = %for.cond30
  %33 = load [4000 x [4000 x double]]*, [4000 x [4000 x double]]** %B, align 8, !tbaa !6
  %34 = load i32, i32* %r, align 4, !tbaa !2
  %idxprom34 = sext i32 %34 to i64
  %arrayidx35 = getelementptr inbounds [4000 x [4000 x double]], [4000 x [4000 x double]]* %33, i64 0, i64 %idxprom34
  %35 = load i32, i32* %s, align 4, !tbaa !2
  %idxprom36 = sext i32 %35 to i64
  %arrayidx37 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx35, i64 0, i64 %idxprom36
  store double 0.000000e+00, double* %arrayidx37, align 8, !tbaa !10
  br label %for.inc38

for.inc38:                                        ; preds = %for.body33
  %36 = load i32, i32* %s, align 4, !tbaa !2
  %inc39 = add nsw i32 %36, 1
  store i32 %inc39, i32* %s, align 4, !tbaa !2
  br label %for.cond30, !llvm.loop !17

for.end40:                                        ; preds = %for.cond30
  br label %for.inc41

for.inc41:                                        ; preds = %for.end40
  %37 = load i32, i32* %r, align 4, !tbaa !2
  %inc42 = add nsw i32 %37, 1
  store i32 %inc42, i32* %r, align 4, !tbaa !2
  br label %for.cond26, !llvm.loop !18

for.end43:                                        ; preds = %for.cond26
  store i32 0, i32* %t, align 4, !tbaa !2
  br label %for.cond44

for.cond44:                                       ; preds = %for.inc75, %for.end43
  %38 = load i32, i32* %t, align 4, !tbaa !2
  %39 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp45 = icmp slt i32 %38, %39
  br i1 %cmp45, label %for.body47, label %for.end77

for.body47:                                       ; preds = %for.cond44
  store i32 0, i32* %r, align 4, !tbaa !2
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc72, %for.body47
  %40 = load i32, i32* %r, align 4, !tbaa !2
  %41 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp49 = icmp slt i32 %40, %41
  br i1 %cmp49, label %for.body51, label %for.end74

for.body51:                                       ; preds = %for.cond48
  store i32 0, i32* %s, align 4, !tbaa !2
  br label %for.cond52

for.cond52:                                       ; preds = %for.inc69, %for.body51
  %42 = load i32, i32* %s, align 4, !tbaa !2
  %43 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp53 = icmp slt i32 %42, %43
  br i1 %cmp53, label %for.body55, label %for.end71

for.body55:                                       ; preds = %for.cond52
  %44 = load [4000 x double]*, [4000 x double]** %A.addr, align 8, !tbaa !6
  %45 = load i32, i32* %r, align 4, !tbaa !2
  %idxprom56 = sext i32 %45 to i64
  %arrayidx57 = getelementptr inbounds [4000 x double], [4000 x double]* %44, i64 %idxprom56
  %46 = load i32, i32* %t, align 4, !tbaa !2
  %idxprom58 = sext i32 %46 to i64
  %arrayidx59 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx57, i64 0, i64 %idxprom58
  %47 = load double, double* %arrayidx59, align 8, !tbaa !10
  %48 = load [4000 x double]*, [4000 x double]** %A.addr, align 8, !tbaa !6
  %49 = load i32, i32* %s, align 4, !tbaa !2
  %idxprom60 = sext i32 %49 to i64
  %arrayidx61 = getelementptr inbounds [4000 x double], [4000 x double]* %48, i64 %idxprom60
  %50 = load i32, i32* %t, align 4, !tbaa !2
  %idxprom62 = sext i32 %50 to i64
  %arrayidx63 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx61, i64 0, i64 %idxprom62
  %51 = load double, double* %arrayidx63, align 8, !tbaa !10
  %mul = fmul double %47, %51
  %52 = load [4000 x [4000 x double]]*, [4000 x [4000 x double]]** %B, align 8, !tbaa !6
  %53 = load i32, i32* %r, align 4, !tbaa !2
  %idxprom64 = sext i32 %53 to i64
  %arrayidx65 = getelementptr inbounds [4000 x [4000 x double]], [4000 x [4000 x double]]* %52, i64 0, i64 %idxprom64
  %54 = load i32, i32* %s, align 4, !tbaa !2
  %idxprom66 = sext i32 %54 to i64
  %arrayidx67 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx65, i64 0, i64 %idxprom66
  %55 = load double, double* %arrayidx67, align 8, !tbaa !10
  %add68 = fadd double %55, %mul
  store double %add68, double* %arrayidx67, align 8, !tbaa !10
  br label %for.inc69

for.inc69:                                        ; preds = %for.body55
  %56 = load i32, i32* %s, align 4, !tbaa !2
  %inc70 = add nsw i32 %56, 1
  store i32 %inc70, i32* %s, align 4, !tbaa !2
  br label %for.cond52, !llvm.loop !19

for.end71:                                        ; preds = %for.cond52
  br label %for.inc72

for.inc72:                                        ; preds = %for.end71
  %57 = load i32, i32* %r, align 4, !tbaa !2
  %inc73 = add nsw i32 %57, 1
  store i32 %inc73, i32* %r, align 4, !tbaa !2
  br label %for.cond48, !llvm.loop !20

for.end74:                                        ; preds = %for.cond48
  br label %for.inc75

for.inc75:                                        ; preds = %for.end74
  %58 = load i32, i32* %t, align 4, !tbaa !2
  %inc76 = add nsw i32 %58, 1
  store i32 %inc76, i32* %t, align 4, !tbaa !2
  br label %for.cond44, !llvm.loop !21

for.end77:                                        ; preds = %for.cond44
  store i32 0, i32* %r, align 4, !tbaa !2
  br label %for.cond78

for.cond78:                                       ; preds = %for.inc97, %for.end77
  %59 = load i32, i32* %r, align 4, !tbaa !2
  %60 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp79 = icmp slt i32 %59, %60
  br i1 %cmp79, label %for.body81, label %for.end99

for.body81:                                       ; preds = %for.cond78
  store i32 0, i32* %s, align 4, !tbaa !2
  br label %for.cond82

for.cond82:                                       ; preds = %for.inc94, %for.body81
  %61 = load i32, i32* %s, align 4, !tbaa !2
  %62 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp83 = icmp slt i32 %61, %62
  br i1 %cmp83, label %for.body85, label %for.end96

for.body85:                                       ; preds = %for.cond82
  %63 = load [4000 x [4000 x double]]*, [4000 x [4000 x double]]** %B, align 8, !tbaa !6
  %64 = load i32, i32* %r, align 4, !tbaa !2
  %idxprom86 = sext i32 %64 to i64
  %arrayidx87 = getelementptr inbounds [4000 x [4000 x double]], [4000 x [4000 x double]]* %63, i64 0, i64 %idxprom86
  %65 = load i32, i32* %s, align 4, !tbaa !2
  %idxprom88 = sext i32 %65 to i64
  %arrayidx89 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx87, i64 0, i64 %idxprom88
  %66 = load double, double* %arrayidx89, align 8, !tbaa !10
  %67 = load [4000 x double]*, [4000 x double]** %A.addr, align 8, !tbaa !6
  %68 = load i32, i32* %r, align 4, !tbaa !2
  %idxprom90 = sext i32 %68 to i64
  %arrayidx91 = getelementptr inbounds [4000 x double], [4000 x double]* %67, i64 %idxprom90
  %69 = load i32, i32* %s, align 4, !tbaa !2
  %idxprom92 = sext i32 %69 to i64
  %arrayidx93 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx91, i64 0, i64 %idxprom92
  store double %66, double* %arrayidx93, align 8, !tbaa !10
  br label %for.inc94

for.inc94:                                        ; preds = %for.body85
  %70 = load i32, i32* %s, align 4, !tbaa !2
  %inc95 = add nsw i32 %70, 1
  store i32 %inc95, i32* %s, align 4, !tbaa !2
  br label %for.cond82, !llvm.loop !22

for.end96:                                        ; preds = %for.cond82
  br label %for.inc97

for.inc97:                                        ; preds = %for.end96
  %71 = load i32, i32* %r, align 4, !tbaa !2
  %inc98 = add nsw i32 %71, 1
  store i32 %inc98, i32* %r, align 4, !tbaa !2
  br label %for.cond78, !llvm.loop !23

for.end99:                                        ; preds = %for.cond78
  %72 = load [4000 x [4000 x double]]*, [4000 x [4000 x double]]** %B, align 8, !tbaa !6
  %73 = bitcast [4000 x [4000 x double]]* %72 to i8*
  call void @free(i8* %73) #6
  %74 = bitcast [4000 x [4000 x double]]** %B to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %74) #6
  %75 = bitcast i32* %t to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %75) #6
  %76 = bitcast i32* %s to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %76) #6
  %77 = bitcast i32* %r to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %77) #6
  %78 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %78) #6
  %79 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %79) #6
  ret void
}

declare dso_local void @polybench_timer_start(...) #3

; Function Attrs: nounwind uwtable
define internal void @kernel_lu(i32 %n, [4000 x double]* %A) #0 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca [4000 x double]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4, !tbaa !2
  store [4000 x double]* %A, [4000 x double]** %A.addr, align 8, !tbaa !6
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #6
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #6
  %2 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #6
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc54, %entry
  %3 = load i32, i32* %i, align 4, !tbaa !2
  %4 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end56

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !tbaa !2
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc25, %for.body
  %5 = load i32, i32* %j, align 4, !tbaa !2
  %6 = load i32, i32* %i, align 4, !tbaa !2
  %cmp2 = icmp slt i32 %5, %6
  br i1 %cmp2, label %for.body3, label %for.end27

for.body3:                                        ; preds = %for.cond1
  store i32 0, i32* %k, align 4, !tbaa !2
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %7 = load i32, i32* %k, align 4, !tbaa !2
  %8 = load i32, i32* %j, align 4, !tbaa !2
  %cmp5 = icmp slt i32 %7, %8
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %9 = load [4000 x double]*, [4000 x double]** %A.addr, align 8, !tbaa !6
  %10 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [4000 x double], [4000 x double]* %9, i64 %idxprom
  %11 = load i32, i32* %k, align 4, !tbaa !2
  %idxprom7 = sext i32 %11 to i64
  %arrayidx8 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx, i64 0, i64 %idxprom7
  %12 = load double, double* %arrayidx8, align 8, !tbaa !10
  %13 = load [4000 x double]*, [4000 x double]** %A.addr, align 8, !tbaa !6
  %14 = load i32, i32* %k, align 4, !tbaa !2
  %idxprom9 = sext i32 %14 to i64
  %arrayidx10 = getelementptr inbounds [4000 x double], [4000 x double]* %13, i64 %idxprom9
  %15 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom11 = sext i32 %15 to i64
  %arrayidx12 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx10, i64 0, i64 %idxprom11
  %16 = load double, double* %arrayidx12, align 8, !tbaa !10
  %mul = fmul double %12, %16
  %17 = load [4000 x double]*, [4000 x double]** %A.addr, align 8, !tbaa !6
  %18 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom13 = sext i32 %18 to i64
  %arrayidx14 = getelementptr inbounds [4000 x double], [4000 x double]* %17, i64 %idxprom13
  %19 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom15 = sext i32 %19 to i64
  %arrayidx16 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx14, i64 0, i64 %idxprom15
  %20 = load double, double* %arrayidx16, align 8, !tbaa !10
  %sub = fsub double %20, %mul
  store double %sub, double* %arrayidx16, align 8, !tbaa !10
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %21 = load i32, i32* %k, align 4, !tbaa !2
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %k, align 4, !tbaa !2
  br label %for.cond4, !llvm.loop !24

for.end:                                          ; preds = %for.cond4
  %22 = load [4000 x double]*, [4000 x double]** %A.addr, align 8, !tbaa !6
  %23 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom17 = sext i32 %23 to i64
  %arrayidx18 = getelementptr inbounds [4000 x double], [4000 x double]* %22, i64 %idxprom17
  %24 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom19 = sext i32 %24 to i64
  %arrayidx20 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx18, i64 0, i64 %idxprom19
  %25 = load double, double* %arrayidx20, align 8, !tbaa !10
  %26 = load [4000 x double]*, [4000 x double]** %A.addr, align 8, !tbaa !6
  %27 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom21 = sext i32 %27 to i64
  %arrayidx22 = getelementptr inbounds [4000 x double], [4000 x double]* %26, i64 %idxprom21
  %28 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom23 = sext i32 %28 to i64
  %arrayidx24 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx22, i64 0, i64 %idxprom23
  %29 = load double, double* %arrayidx24, align 8, !tbaa !10
  %div = fdiv double %29, %25
  store double %div, double* %arrayidx24, align 8, !tbaa !10
  br label %for.inc25

for.inc25:                                        ; preds = %for.end
  %30 = load i32, i32* %j, align 4, !tbaa !2
  %inc26 = add nsw i32 %30, 1
  store i32 %inc26, i32* %j, align 4, !tbaa !2
  br label %for.cond1, !llvm.loop !25

for.end27:                                        ; preds = %for.cond1
  %31 = load i32, i32* %i, align 4, !tbaa !2
  store i32 %31, i32* %j, align 4, !tbaa !2
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc51, %for.end27
  %32 = load i32, i32* %j, align 4, !tbaa !2
  %33 = load i32, i32* %n.addr, align 4, !tbaa !2
  %cmp29 = icmp slt i32 %32, %33
  br i1 %cmp29, label %for.body30, label %for.end53

for.body30:                                       ; preds = %for.cond28
  store i32 0, i32* %k, align 4, !tbaa !2
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc48, %for.body30
  %34 = load i32, i32* %k, align 4, !tbaa !2
  %35 = load i32, i32* %i, align 4, !tbaa !2
  %cmp32 = icmp slt i32 %34, %35
  br i1 %cmp32, label %for.body33, label %for.end50

for.body33:                                       ; preds = %for.cond31
  %36 = load [4000 x double]*, [4000 x double]** %A.addr, align 8, !tbaa !6
  %37 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom34 = sext i32 %37 to i64
  %arrayidx35 = getelementptr inbounds [4000 x double], [4000 x double]* %36, i64 %idxprom34
  %38 = load i32, i32* %k, align 4, !tbaa !2
  %idxprom36 = sext i32 %38 to i64
  %arrayidx37 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx35, i64 0, i64 %idxprom36
  %39 = load double, double* %arrayidx37, align 8, !tbaa !10
  %40 = load [4000 x double]*, [4000 x double]** %A.addr, align 8, !tbaa !6
  %41 = load i32, i32* %k, align 4, !tbaa !2
  %idxprom38 = sext i32 %41 to i64
  %arrayidx39 = getelementptr inbounds [4000 x double], [4000 x double]* %40, i64 %idxprom38
  %42 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom40 = sext i32 %42 to i64
  %arrayidx41 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx39, i64 0, i64 %idxprom40
  %43 = load double, double* %arrayidx41, align 8, !tbaa !10
  %mul42 = fmul double %39, %43
  %44 = load [4000 x double]*, [4000 x double]** %A.addr, align 8, !tbaa !6
  %45 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom43 = sext i32 %45 to i64
  %arrayidx44 = getelementptr inbounds [4000 x double], [4000 x double]* %44, i64 %idxprom43
  %46 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom45 = sext i32 %46 to i64
  %arrayidx46 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx44, i64 0, i64 %idxprom45
  %47 = load double, double* %arrayidx46, align 8, !tbaa !10
  %sub47 = fsub double %47, %mul42
  store double %sub47, double* %arrayidx46, align 8, !tbaa !10
  br label %for.inc48

for.inc48:                                        ; preds = %for.body33
  %48 = load i32, i32* %k, align 4, !tbaa !2
  %inc49 = add nsw i32 %48, 1
  store i32 %inc49, i32* %k, align 4, !tbaa !2
  br label %for.cond31, !llvm.loop !26

for.end50:                                        ; preds = %for.cond31
  br label %for.inc51

for.inc51:                                        ; preds = %for.end50
  %49 = load i32, i32* %j, align 4, !tbaa !2
  %inc52 = add nsw i32 %49, 1
  store i32 %inc52, i32* %j, align 4, !tbaa !2
  br label %for.cond28, !llvm.loop !27

for.end53:                                        ; preds = %for.cond28
  br label %for.inc54

for.inc54:                                        ; preds = %for.end53
  %50 = load i32, i32* %i, align 4, !tbaa !2
  %inc55 = add nsw i32 %50, 1
  store i32 %inc55, i32* %i, align 4, !tbaa !2
  br label %for.cond, !llvm.loop !28

for.end56:                                        ; preds = %for.cond
  %51 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %51) #6
  %52 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %52) #6
  %53 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %53) #6
  ret void
}

declare dso_local void @polybench_timer_stop(...) #3

declare dso_local void @polybench_timer_print(...) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define internal void @print_array(i32 %n, [4000 x double]* %A) #0 {
entry:
  %n.addr = alloca i32, align 4
  %A.addr = alloca [4000 x double]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4, !tbaa !2
  store [4000 x double]* %A, [4000 x double]** %A.addr, align 8, !tbaa !6
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
  %13 = load [4000 x double]*, [4000 x double]** %A.addr, align 8, !tbaa !6
  %14 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds [4000 x double], [4000 x double]* %13, i64 %idxprom
  %15 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom7 = sext i32 %15 to i64
  %arrayidx8 = getelementptr inbounds [4000 x double], [4000 x double]* %arrayidx, i64 0, i64 %idxprom7
  %16 = load double, double* %arrayidx8, align 8, !tbaa !10
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %16)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i32, i32* %j, align 4, !tbaa !2
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %j, align 4, !tbaa !2
  br label %for.cond2, !llvm.loop !29

for.end:                                          ; preds = %for.cond2
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %18 = load i32, i32* %i, align 4, !tbaa !2
  %inc11 = add nsw i32 %18, 1
  store i32 %inc11, i32* %i, align 4, !tbaa !2
  br label %for.cond, !llvm.loop !30

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

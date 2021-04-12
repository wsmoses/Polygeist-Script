; ModuleID = '3mm.c'
source_filename = "3mm.c"
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
@.str.3 = private unnamed_addr constant [2 x i8] c"G\00", align 1
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
  %nl = alloca i32, align 4
  %nm = alloca i32, align 4
  %E = alloca [1600 x [1800 x double]]*, align 8
  %A = alloca [1600 x [2000 x double]]*, align 8
  %B = alloca [2000 x [1800 x double]]*, align 8
  %F = alloca [1800 x [2200 x double]]*, align 8
  %C = alloca [1800 x [2400 x double]]*, align 8
  %D = alloca [2400 x [2200 x double]]*, align 8
  %G = alloca [1600 x [2200 x double]]*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !2
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !6
  %0 = bitcast i32* %ni to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #6
  store i32 1600, i32* %ni, align 4, !tbaa !2
  %1 = bitcast i32* %nj to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #6
  store i32 1800, i32* %nj, align 4, !tbaa !2
  %2 = bitcast i32* %nk to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #6
  store i32 2000, i32* %nk, align 4, !tbaa !2
  %3 = bitcast i32* %nl to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #6
  store i32 2200, i32* %nl, align 4, !tbaa !2
  %4 = bitcast i32* %nm to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #6
  store i32 2400, i32* %nm, align 4, !tbaa !2
  %5 = bitcast [1600 x [1800 x double]]** %E to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %5) #6
  %call = call i8* @polybench_alloc_data(i64 2880000, i32 8)
  %6 = bitcast i8* %call to [1600 x [1800 x double]]*
  store [1600 x [1800 x double]]* %6, [1600 x [1800 x double]]** %E, align 8, !tbaa !6
  %7 = bitcast [1600 x [2000 x double]]** %A to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %7) #6
  %call1 = call i8* @polybench_alloc_data(i64 3200000, i32 8)
  %8 = bitcast i8* %call1 to [1600 x [2000 x double]]*
  store [1600 x [2000 x double]]* %8, [1600 x [2000 x double]]** %A, align 8, !tbaa !6
  %9 = bitcast [2000 x [1800 x double]]** %B to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %9) #6
  %call2 = call i8* @polybench_alloc_data(i64 3600000, i32 8)
  %10 = bitcast i8* %call2 to [2000 x [1800 x double]]*
  store [2000 x [1800 x double]]* %10, [2000 x [1800 x double]]** %B, align 8, !tbaa !6
  %11 = bitcast [1800 x [2200 x double]]** %F to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %11) #6
  %call3 = call i8* @polybench_alloc_data(i64 3960000, i32 8)
  %12 = bitcast i8* %call3 to [1800 x [2200 x double]]*
  store [1800 x [2200 x double]]* %12, [1800 x [2200 x double]]** %F, align 8, !tbaa !6
  %13 = bitcast [1800 x [2400 x double]]** %C to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %13) #6
  %call4 = call i8* @polybench_alloc_data(i64 4320000, i32 8)
  %14 = bitcast i8* %call4 to [1800 x [2400 x double]]*
  store [1800 x [2400 x double]]* %14, [1800 x [2400 x double]]** %C, align 8, !tbaa !6
  %15 = bitcast [2400 x [2200 x double]]** %D to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %15) #6
  %call5 = call i8* @polybench_alloc_data(i64 5280000, i32 8)
  %16 = bitcast i8* %call5 to [2400 x [2200 x double]]*
  store [2400 x [2200 x double]]* %16, [2400 x [2200 x double]]** %D, align 8, !tbaa !6
  %17 = bitcast [1600 x [2200 x double]]** %G to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %17) #6
  %call6 = call i8* @polybench_alloc_data(i64 3520000, i32 8)
  %18 = bitcast i8* %call6 to [1600 x [2200 x double]]*
  store [1600 x [2200 x double]]* %18, [1600 x [2200 x double]]** %G, align 8, !tbaa !6
  %19 = load i32, i32* %ni, align 4, !tbaa !2
  %20 = load i32, i32* %nj, align 4, !tbaa !2
  %21 = load i32, i32* %nk, align 4, !tbaa !2
  %22 = load i32, i32* %nl, align 4, !tbaa !2
  %23 = load i32, i32* %nm, align 4, !tbaa !2
  %24 = load [1600 x [2000 x double]]*, [1600 x [2000 x double]]** %A, align 8, !tbaa !6
  %arraydecay = getelementptr inbounds [1600 x [2000 x double]], [1600 x [2000 x double]]* %24, i64 0, i64 0
  %25 = load [2000 x [1800 x double]]*, [2000 x [1800 x double]]** %B, align 8, !tbaa !6
  %arraydecay7 = getelementptr inbounds [2000 x [1800 x double]], [2000 x [1800 x double]]* %25, i64 0, i64 0
  %26 = load [1800 x [2400 x double]]*, [1800 x [2400 x double]]** %C, align 8, !tbaa !6
  %arraydecay8 = getelementptr inbounds [1800 x [2400 x double]], [1800 x [2400 x double]]* %26, i64 0, i64 0
  %27 = load [2400 x [2200 x double]]*, [2400 x [2200 x double]]** %D, align 8, !tbaa !6
  %arraydecay9 = getelementptr inbounds [2400 x [2200 x double]], [2400 x [2200 x double]]* %27, i64 0, i64 0
  call void @init_array(i32 %19, i32 %20, i32 %21, i32 %22, i32 %23, [2000 x double]* %arraydecay, [1800 x double]* %arraydecay7, [2400 x double]* %arraydecay8, [2200 x double]* %arraydecay9)
  call void (...) @polybench_timer_start()
  %28 = load i32, i32* %ni, align 4, !tbaa !2
  %29 = load i32, i32* %nj, align 4, !tbaa !2
  %30 = load i32, i32* %nk, align 4, !tbaa !2
  %31 = load i32, i32* %nl, align 4, !tbaa !2
  %32 = load i32, i32* %nm, align 4, !tbaa !2
  %33 = load [1600 x [1800 x double]]*, [1600 x [1800 x double]]** %E, align 8, !tbaa !6
  %arraydecay10 = getelementptr inbounds [1600 x [1800 x double]], [1600 x [1800 x double]]* %33, i64 0, i64 0
  %34 = load [1600 x [2000 x double]]*, [1600 x [2000 x double]]** %A, align 8, !tbaa !6
  %arraydecay11 = getelementptr inbounds [1600 x [2000 x double]], [1600 x [2000 x double]]* %34, i64 0, i64 0
  %35 = load [2000 x [1800 x double]]*, [2000 x [1800 x double]]** %B, align 8, !tbaa !6
  %arraydecay12 = getelementptr inbounds [2000 x [1800 x double]], [2000 x [1800 x double]]* %35, i64 0, i64 0
  %36 = load [1800 x [2200 x double]]*, [1800 x [2200 x double]]** %F, align 8, !tbaa !6
  %arraydecay13 = getelementptr inbounds [1800 x [2200 x double]], [1800 x [2200 x double]]* %36, i64 0, i64 0
  %37 = load [1800 x [2400 x double]]*, [1800 x [2400 x double]]** %C, align 8, !tbaa !6
  %arraydecay14 = getelementptr inbounds [1800 x [2400 x double]], [1800 x [2400 x double]]* %37, i64 0, i64 0
  %38 = load [2400 x [2200 x double]]*, [2400 x [2200 x double]]** %D, align 8, !tbaa !6
  %arraydecay15 = getelementptr inbounds [2400 x [2200 x double]], [2400 x [2200 x double]]* %38, i64 0, i64 0
  %39 = load [1600 x [2200 x double]]*, [1600 x [2200 x double]]** %G, align 8, !tbaa !6
  %arraydecay16 = getelementptr inbounds [1600 x [2200 x double]], [1600 x [2200 x double]]* %39, i64 0, i64 0
  call void @kernel_3mm(i32 %28, i32 %29, i32 %30, i32 %31, i32 %32, [1800 x double]* %arraydecay10, [2000 x double]* %arraydecay11, [1800 x double]* %arraydecay12, [2200 x double]* %arraydecay13, [2400 x double]* %arraydecay14, [2200 x double]* %arraydecay15, [2200 x double]* %arraydecay16)
  call void (...) @polybench_timer_stop()
  call void (...) @polybench_timer_print()
  %40 = load i32, i32* %argc.addr, align 4, !tbaa !2
  %cmp = icmp sgt i32 %40, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %41 = load i8**, i8*** %argv.addr, align 8, !tbaa !6
  %arrayidx = getelementptr inbounds i8*, i8** %41, i64 0
  %42 = load i8*, i8** %arrayidx, align 8, !tbaa !6
  %call17 = call i32 @strcmp(i8* %42, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)) #7
  %tobool = icmp ne i32 %call17, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %43 = load i32, i32* %ni, align 4, !tbaa !2
  %44 = load i32, i32* %nl, align 4, !tbaa !2
  %45 = load [1600 x [2200 x double]]*, [1600 x [2200 x double]]** %G, align 8, !tbaa !6
  %arraydecay18 = getelementptr inbounds [1600 x [2200 x double]], [1600 x [2200 x double]]* %45, i64 0, i64 0
  call void @print_array(i32 %43, i32 %44, [2200 x double]* %arraydecay18)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %46 = load [1600 x [1800 x double]]*, [1600 x [1800 x double]]** %E, align 8, !tbaa !6
  %47 = bitcast [1600 x [1800 x double]]* %46 to i8*
  call void @free(i8* %47) #6
  %48 = load [1600 x [2000 x double]]*, [1600 x [2000 x double]]** %A, align 8, !tbaa !6
  %49 = bitcast [1600 x [2000 x double]]* %48 to i8*
  call void @free(i8* %49) #6
  %50 = load [2000 x [1800 x double]]*, [2000 x [1800 x double]]** %B, align 8, !tbaa !6
  %51 = bitcast [2000 x [1800 x double]]* %50 to i8*
  call void @free(i8* %51) #6
  %52 = load [1800 x [2200 x double]]*, [1800 x [2200 x double]]** %F, align 8, !tbaa !6
  %53 = bitcast [1800 x [2200 x double]]* %52 to i8*
  call void @free(i8* %53) #6
  %54 = load [1800 x [2400 x double]]*, [1800 x [2400 x double]]** %C, align 8, !tbaa !6
  %55 = bitcast [1800 x [2400 x double]]* %54 to i8*
  call void @free(i8* %55) #6
  %56 = load [2400 x [2200 x double]]*, [2400 x [2200 x double]]** %D, align 8, !tbaa !6
  %57 = bitcast [2400 x [2200 x double]]* %56 to i8*
  call void @free(i8* %57) #6
  %58 = load [1600 x [2200 x double]]*, [1600 x [2200 x double]]** %G, align 8, !tbaa !6
  %59 = bitcast [1600 x [2200 x double]]* %58 to i8*
  call void @free(i8* %59) #6
  %60 = bitcast [1600 x [2200 x double]]** %G to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %60) #6
  %61 = bitcast [2400 x [2200 x double]]** %D to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %61) #6
  %62 = bitcast [1800 x [2400 x double]]** %C to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %62) #6
  %63 = bitcast [1800 x [2200 x double]]** %F to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %63) #6
  %64 = bitcast [2000 x [1800 x double]]** %B to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %64) #6
  %65 = bitcast [1600 x [2000 x double]]** %A to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %65) #6
  %66 = bitcast [1600 x [1800 x double]]** %E to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %66) #6
  %67 = bitcast i32* %nm to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %67) #6
  %68 = bitcast i32* %nl to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %68) #6
  %69 = bitcast i32* %nk to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %69) #6
  %70 = bitcast i32* %nj to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %70) #6
  %71 = bitcast i32* %ni to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %71) #6
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
define internal void @init_array(i32 %ni, i32 %nj, i32 %nk, i32 %nl, i32 %nm, [2000 x double]* %A, [1800 x double]* %B, [2400 x double]* %C, [2200 x double]* %D) #0 {
entry:
  %ni.addr = alloca i32, align 4
  %nj.addr = alloca i32, align 4
  %nk.addr = alloca i32, align 4
  %nl.addr = alloca i32, align 4
  %nm.addr = alloca i32, align 4
  %A.addr = alloca [2000 x double]*, align 8
  %B.addr = alloca [1800 x double]*, align 8
  %C.addr = alloca [2400 x double]*, align 8
  %D.addr = alloca [2200 x double]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %ni, i32* %ni.addr, align 4, !tbaa !2
  store i32 %nj, i32* %nj.addr, align 4, !tbaa !2
  store i32 %nk, i32* %nk.addr, align 4, !tbaa !2
  store i32 %nl, i32* %nl.addr, align 4, !tbaa !2
  store i32 %nm, i32* %nm.addr, align 4, !tbaa !2
  store [2000 x double]* %A, [2000 x double]** %A.addr, align 8, !tbaa !6
  store [1800 x double]* %B, [1800 x double]** %B.addr, align 8, !tbaa !6
  store [2400 x double]* %C, [2400 x double]** %C.addr, align 8, !tbaa !6
  store [2200 x double]* %D, [2200 x double]** %D.addr, align 8, !tbaa !6
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #6
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #6
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %2 = load i32, i32* %i, align 4, !tbaa !2
  %3 = load i32, i32* %ni.addr, align 4, !tbaa !2
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !tbaa !2
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %4 = load i32, i32* %j, align 4, !tbaa !2
  %5 = load i32, i32* %nk.addr, align 4, !tbaa !2
  %cmp2 = icmp slt i32 %4, %5
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %6 = load i32, i32* %i, align 4, !tbaa !2
  %7 = load i32, i32* %j, align 4, !tbaa !2
  %mul = mul nsw i32 %6, %7
  %add = add nsw i32 %mul, 1
  %8 = load i32, i32* %ni.addr, align 4, !tbaa !2
  %rem = srem i32 %add, %8
  %conv = sitofp i32 %rem to double
  %9 = load i32, i32* %ni.addr, align 4, !tbaa !2
  %mul4 = mul nsw i32 5, %9
  %conv5 = sitofp i32 %mul4 to double
  %div = fdiv double %conv, %conv5
  %10 = load [2000 x double]*, [2000 x double]** %A.addr, align 8, !tbaa !6
  %11 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [2000 x double], [2000 x double]* %10, i64 %idxprom
  %12 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom6 = sext i32 %12 to i64
  %arrayidx7 = getelementptr inbounds [2000 x double], [2000 x double]* %arrayidx, i64 0, i64 %idxprom6
  store double %div, double* %arrayidx7, align 8, !tbaa !10
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %13 = load i32, i32* %j, align 4, !tbaa !2
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4, !tbaa !2
  br label %for.cond1, !llvm.loop !12

for.end:                                          ; preds = %for.cond1
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %14 = load i32, i32* %i, align 4, !tbaa !2
  %inc9 = add nsw i32 %14, 1
  store i32 %inc9, i32* %i, align 4, !tbaa !2
  br label %for.cond, !llvm.loop !15

for.end10:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc34, %for.end10
  %15 = load i32, i32* %i, align 4, !tbaa !2
  %16 = load i32, i32* %nk.addr, align 4, !tbaa !2
  %cmp12 = icmp slt i32 %15, %16
  br i1 %cmp12, label %for.body14, label %for.end36

for.body14:                                       ; preds = %for.cond11
  store i32 0, i32* %j, align 4, !tbaa !2
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc31, %for.body14
  %17 = load i32, i32* %j, align 4, !tbaa !2
  %18 = load i32, i32* %nj.addr, align 4, !tbaa !2
  %cmp16 = icmp slt i32 %17, %18
  br i1 %cmp16, label %for.body18, label %for.end33

for.body18:                                       ; preds = %for.cond15
  %19 = load i32, i32* %i, align 4, !tbaa !2
  %20 = load i32, i32* %j, align 4, !tbaa !2
  %add19 = add nsw i32 %20, 1
  %mul20 = mul nsw i32 %19, %add19
  %add21 = add nsw i32 %mul20, 2
  %21 = load i32, i32* %nj.addr, align 4, !tbaa !2
  %rem22 = srem i32 %add21, %21
  %conv23 = sitofp i32 %rem22 to double
  %22 = load i32, i32* %nj.addr, align 4, !tbaa !2
  %mul24 = mul nsw i32 5, %22
  %conv25 = sitofp i32 %mul24 to double
  %div26 = fdiv double %conv23, %conv25
  %23 = load [1800 x double]*, [1800 x double]** %B.addr, align 8, !tbaa !6
  %24 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom27 = sext i32 %24 to i64
  %arrayidx28 = getelementptr inbounds [1800 x double], [1800 x double]* %23, i64 %idxprom27
  %25 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom29 = sext i32 %25 to i64
  %arrayidx30 = getelementptr inbounds [1800 x double], [1800 x double]* %arrayidx28, i64 0, i64 %idxprom29
  store double %div26, double* %arrayidx30, align 8, !tbaa !10
  br label %for.inc31

for.inc31:                                        ; preds = %for.body18
  %26 = load i32, i32* %j, align 4, !tbaa !2
  %inc32 = add nsw i32 %26, 1
  store i32 %inc32, i32* %j, align 4, !tbaa !2
  br label %for.cond15, !llvm.loop !16

for.end33:                                        ; preds = %for.cond15
  br label %for.inc34

for.inc34:                                        ; preds = %for.end33
  %27 = load i32, i32* %i, align 4, !tbaa !2
  %inc35 = add nsw i32 %27, 1
  store i32 %inc35, i32* %i, align 4, !tbaa !2
  br label %for.cond11, !llvm.loop !17

for.end36:                                        ; preds = %for.cond11
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc59, %for.end36
  %28 = load i32, i32* %i, align 4, !tbaa !2
  %29 = load i32, i32* %nj.addr, align 4, !tbaa !2
  %cmp38 = icmp slt i32 %28, %29
  br i1 %cmp38, label %for.body40, label %for.end61

for.body40:                                       ; preds = %for.cond37
  store i32 0, i32* %j, align 4, !tbaa !2
  br label %for.cond41

for.cond41:                                       ; preds = %for.inc56, %for.body40
  %30 = load i32, i32* %j, align 4, !tbaa !2
  %31 = load i32, i32* %nm.addr, align 4, !tbaa !2
  %cmp42 = icmp slt i32 %30, %31
  br i1 %cmp42, label %for.body44, label %for.end58

for.body44:                                       ; preds = %for.cond41
  %32 = load i32, i32* %i, align 4, !tbaa !2
  %33 = load i32, i32* %j, align 4, !tbaa !2
  %add45 = add nsw i32 %33, 3
  %mul46 = mul nsw i32 %32, %add45
  %34 = load i32, i32* %nl.addr, align 4, !tbaa !2
  %rem47 = srem i32 %mul46, %34
  %conv48 = sitofp i32 %rem47 to double
  %35 = load i32, i32* %nl.addr, align 4, !tbaa !2
  %mul49 = mul nsw i32 5, %35
  %conv50 = sitofp i32 %mul49 to double
  %div51 = fdiv double %conv48, %conv50
  %36 = load [2400 x double]*, [2400 x double]** %C.addr, align 8, !tbaa !6
  %37 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom52 = sext i32 %37 to i64
  %arrayidx53 = getelementptr inbounds [2400 x double], [2400 x double]* %36, i64 %idxprom52
  %38 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom54 = sext i32 %38 to i64
  %arrayidx55 = getelementptr inbounds [2400 x double], [2400 x double]* %arrayidx53, i64 0, i64 %idxprom54
  store double %div51, double* %arrayidx55, align 8, !tbaa !10
  br label %for.inc56

for.inc56:                                        ; preds = %for.body44
  %39 = load i32, i32* %j, align 4, !tbaa !2
  %inc57 = add nsw i32 %39, 1
  store i32 %inc57, i32* %j, align 4, !tbaa !2
  br label %for.cond41, !llvm.loop !18

for.end58:                                        ; preds = %for.cond41
  br label %for.inc59

for.inc59:                                        ; preds = %for.end58
  %40 = load i32, i32* %i, align 4, !tbaa !2
  %inc60 = add nsw i32 %40, 1
  store i32 %inc60, i32* %i, align 4, !tbaa !2
  br label %for.cond37, !llvm.loop !19

for.end61:                                        ; preds = %for.cond37
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond62

for.cond62:                                       ; preds = %for.inc85, %for.end61
  %41 = load i32, i32* %i, align 4, !tbaa !2
  %42 = load i32, i32* %nm.addr, align 4, !tbaa !2
  %cmp63 = icmp slt i32 %41, %42
  br i1 %cmp63, label %for.body65, label %for.end87

for.body65:                                       ; preds = %for.cond62
  store i32 0, i32* %j, align 4, !tbaa !2
  br label %for.cond66

for.cond66:                                       ; preds = %for.inc82, %for.body65
  %43 = load i32, i32* %j, align 4, !tbaa !2
  %44 = load i32, i32* %nl.addr, align 4, !tbaa !2
  %cmp67 = icmp slt i32 %43, %44
  br i1 %cmp67, label %for.body69, label %for.end84

for.body69:                                       ; preds = %for.cond66
  %45 = load i32, i32* %i, align 4, !tbaa !2
  %46 = load i32, i32* %j, align 4, !tbaa !2
  %add70 = add nsw i32 %46, 2
  %mul71 = mul nsw i32 %45, %add70
  %add72 = add nsw i32 %mul71, 2
  %47 = load i32, i32* %nk.addr, align 4, !tbaa !2
  %rem73 = srem i32 %add72, %47
  %conv74 = sitofp i32 %rem73 to double
  %48 = load i32, i32* %nk.addr, align 4, !tbaa !2
  %mul75 = mul nsw i32 5, %48
  %conv76 = sitofp i32 %mul75 to double
  %div77 = fdiv double %conv74, %conv76
  %49 = load [2200 x double]*, [2200 x double]** %D.addr, align 8, !tbaa !6
  %50 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom78 = sext i32 %50 to i64
  %arrayidx79 = getelementptr inbounds [2200 x double], [2200 x double]* %49, i64 %idxprom78
  %51 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom80 = sext i32 %51 to i64
  %arrayidx81 = getelementptr inbounds [2200 x double], [2200 x double]* %arrayidx79, i64 0, i64 %idxprom80
  store double %div77, double* %arrayidx81, align 8, !tbaa !10
  br label %for.inc82

for.inc82:                                        ; preds = %for.body69
  %52 = load i32, i32* %j, align 4, !tbaa !2
  %inc83 = add nsw i32 %52, 1
  store i32 %inc83, i32* %j, align 4, !tbaa !2
  br label %for.cond66, !llvm.loop !20

for.end84:                                        ; preds = %for.cond66
  br label %for.inc85

for.inc85:                                        ; preds = %for.end84
  %53 = load i32, i32* %i, align 4, !tbaa !2
  %inc86 = add nsw i32 %53, 1
  store i32 %inc86, i32* %i, align 4, !tbaa !2
  br label %for.cond62, !llvm.loop !21

for.end87:                                        ; preds = %for.cond62
  %54 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %54) #6
  %55 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %55) #6
  ret void
}

declare dso_local void @polybench_timer_start(...) #3

; Function Attrs: nounwind uwtable
define internal void @kernel_3mm(i32 %ni, i32 %nj, i32 %nk, i32 %nl, i32 %nm, [1800 x double]* %E, [2000 x double]* %A, [1800 x double]* %B, [2200 x double]* %F, [2400 x double]* %C, [2200 x double]* %D, [2200 x double]* %G) #0 {
entry:
  %ni.addr = alloca i32, align 4
  %nj.addr = alloca i32, align 4
  %nk.addr = alloca i32, align 4
  %nl.addr = alloca i32, align 4
  %nm.addr = alloca i32, align 4
  %E.addr = alloca [1800 x double]*, align 8
  %A.addr = alloca [2000 x double]*, align 8
  %B.addr = alloca [1800 x double]*, align 8
  %F.addr = alloca [2200 x double]*, align 8
  %C.addr = alloca [2400 x double]*, align 8
  %D.addr = alloca [2200 x double]*, align 8
  %G.addr = alloca [2200 x double]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %ni, i32* %ni.addr, align 4, !tbaa !2
  store i32 %nj, i32* %nj.addr, align 4, !tbaa !2
  store i32 %nk, i32* %nk.addr, align 4, !tbaa !2
  store i32 %nl, i32* %nl.addr, align 4, !tbaa !2
  store i32 %nm, i32* %nm.addr, align 4, !tbaa !2
  store [1800 x double]* %E, [1800 x double]** %E.addr, align 8, !tbaa !6
  store [2000 x double]* %A, [2000 x double]** %A.addr, align 8, !tbaa !6
  store [1800 x double]* %B, [1800 x double]** %B.addr, align 8, !tbaa !6
  store [2200 x double]* %F, [2200 x double]** %F.addr, align 8, !tbaa !6
  store [2400 x double]* %C, [2400 x double]** %C.addr, align 8, !tbaa !6
  store [2200 x double]* %D, [2200 x double]** %D.addr, align 8, !tbaa !6
  store [2200 x double]* %G, [2200 x double]** %G.addr, align 8, !tbaa !6
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #6
  %1 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #6
  %2 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #6
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond

for.cond:                                         ; preds = %for.inc24, %entry
  %3 = load i32, i32* %i, align 4, !tbaa !2
  %4 = load i32, i32* %ni.addr, align 4, !tbaa !2
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end26

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !tbaa !2
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc21, %for.body
  %5 = load i32, i32* %j, align 4, !tbaa !2
  %6 = load i32, i32* %nj.addr, align 4, !tbaa !2
  %cmp2 = icmp slt i32 %5, %6
  br i1 %cmp2, label %for.body3, label %for.end23

for.body3:                                        ; preds = %for.cond1
  %7 = load [1800 x double]*, [1800 x double]** %E.addr, align 8, !tbaa !6
  %8 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [1800 x double], [1800 x double]* %7, i64 %idxprom
  %9 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom4 = sext i32 %9 to i64
  %arrayidx5 = getelementptr inbounds [1800 x double], [1800 x double]* %arrayidx, i64 0, i64 %idxprom4
  store double 0.000000e+00, double* %arrayidx5, align 8, !tbaa !10
  store i32 0, i32* %k, align 4, !tbaa !2
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body3
  %10 = load i32, i32* %k, align 4, !tbaa !2
  %11 = load i32, i32* %nk.addr, align 4, !tbaa !2
  %cmp7 = icmp slt i32 %10, %11
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond6
  %12 = load [2000 x double]*, [2000 x double]** %A.addr, align 8, !tbaa !6
  %13 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom9 = sext i32 %13 to i64
  %arrayidx10 = getelementptr inbounds [2000 x double], [2000 x double]* %12, i64 %idxprom9
  %14 = load i32, i32* %k, align 4, !tbaa !2
  %idxprom11 = sext i32 %14 to i64
  %arrayidx12 = getelementptr inbounds [2000 x double], [2000 x double]* %arrayidx10, i64 0, i64 %idxprom11
  %15 = load double, double* %arrayidx12, align 8, !tbaa !10
  %16 = load [1800 x double]*, [1800 x double]** %B.addr, align 8, !tbaa !6
  %17 = load i32, i32* %k, align 4, !tbaa !2
  %idxprom13 = sext i32 %17 to i64
  %arrayidx14 = getelementptr inbounds [1800 x double], [1800 x double]* %16, i64 %idxprom13
  %18 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom15 = sext i32 %18 to i64
  %arrayidx16 = getelementptr inbounds [1800 x double], [1800 x double]* %arrayidx14, i64 0, i64 %idxprom15
  %19 = load double, double* %arrayidx16, align 8, !tbaa !10
  %mul = fmul double %15, %19
  %20 = load [1800 x double]*, [1800 x double]** %E.addr, align 8, !tbaa !6
  %21 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom17 = sext i32 %21 to i64
  %arrayidx18 = getelementptr inbounds [1800 x double], [1800 x double]* %20, i64 %idxprom17
  %22 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom19 = sext i32 %22 to i64
  %arrayidx20 = getelementptr inbounds [1800 x double], [1800 x double]* %arrayidx18, i64 0, i64 %idxprom19
  %23 = load double, double* %arrayidx20, align 8, !tbaa !10
  %add = fadd double %23, %mul
  store double %add, double* %arrayidx20, align 8, !tbaa !10
  br label %for.inc

for.inc:                                          ; preds = %for.body8
  %24 = load i32, i32* %k, align 4, !tbaa !2
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %k, align 4, !tbaa !2
  br label %for.cond6, !llvm.loop !22

for.end:                                          ; preds = %for.cond6
  br label %for.inc21

for.inc21:                                        ; preds = %for.end
  %25 = load i32, i32* %j, align 4, !tbaa !2
  %inc22 = add nsw i32 %25, 1
  store i32 %inc22, i32* %j, align 4, !tbaa !2
  br label %for.cond1, !llvm.loop !23

for.end23:                                        ; preds = %for.cond1
  br label %for.inc24

for.inc24:                                        ; preds = %for.end23
  %26 = load i32, i32* %i, align 4, !tbaa !2
  %inc25 = add nsw i32 %26, 1
  store i32 %inc25, i32* %i, align 4, !tbaa !2
  br label %for.cond, !llvm.loop !24

for.end26:                                        ; preds = %for.cond
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond27

for.cond27:                                       ; preds = %for.inc60, %for.end26
  %27 = load i32, i32* %i, align 4, !tbaa !2
  %28 = load i32, i32* %nj.addr, align 4, !tbaa !2
  %cmp28 = icmp slt i32 %27, %28
  br i1 %cmp28, label %for.body29, label %for.end62

for.body29:                                       ; preds = %for.cond27
  store i32 0, i32* %j, align 4, !tbaa !2
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc57, %for.body29
  %29 = load i32, i32* %j, align 4, !tbaa !2
  %30 = load i32, i32* %nl.addr, align 4, !tbaa !2
  %cmp31 = icmp slt i32 %29, %30
  br i1 %cmp31, label %for.body32, label %for.end59

for.body32:                                       ; preds = %for.cond30
  %31 = load [2200 x double]*, [2200 x double]** %F.addr, align 8, !tbaa !6
  %32 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom33 = sext i32 %32 to i64
  %arrayidx34 = getelementptr inbounds [2200 x double], [2200 x double]* %31, i64 %idxprom33
  %33 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom35 = sext i32 %33 to i64
  %arrayidx36 = getelementptr inbounds [2200 x double], [2200 x double]* %arrayidx34, i64 0, i64 %idxprom35
  store double 0.000000e+00, double* %arrayidx36, align 8, !tbaa !10
  store i32 0, i32* %k, align 4, !tbaa !2
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc54, %for.body32
  %34 = load i32, i32* %k, align 4, !tbaa !2
  %35 = load i32, i32* %nm.addr, align 4, !tbaa !2
  %cmp38 = icmp slt i32 %34, %35
  br i1 %cmp38, label %for.body39, label %for.end56

for.body39:                                       ; preds = %for.cond37
  %36 = load [2400 x double]*, [2400 x double]** %C.addr, align 8, !tbaa !6
  %37 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom40 = sext i32 %37 to i64
  %arrayidx41 = getelementptr inbounds [2400 x double], [2400 x double]* %36, i64 %idxprom40
  %38 = load i32, i32* %k, align 4, !tbaa !2
  %idxprom42 = sext i32 %38 to i64
  %arrayidx43 = getelementptr inbounds [2400 x double], [2400 x double]* %arrayidx41, i64 0, i64 %idxprom42
  %39 = load double, double* %arrayidx43, align 8, !tbaa !10
  %40 = load [2200 x double]*, [2200 x double]** %D.addr, align 8, !tbaa !6
  %41 = load i32, i32* %k, align 4, !tbaa !2
  %idxprom44 = sext i32 %41 to i64
  %arrayidx45 = getelementptr inbounds [2200 x double], [2200 x double]* %40, i64 %idxprom44
  %42 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom46 = sext i32 %42 to i64
  %arrayidx47 = getelementptr inbounds [2200 x double], [2200 x double]* %arrayidx45, i64 0, i64 %idxprom46
  %43 = load double, double* %arrayidx47, align 8, !tbaa !10
  %mul48 = fmul double %39, %43
  %44 = load [2200 x double]*, [2200 x double]** %F.addr, align 8, !tbaa !6
  %45 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom49 = sext i32 %45 to i64
  %arrayidx50 = getelementptr inbounds [2200 x double], [2200 x double]* %44, i64 %idxprom49
  %46 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom51 = sext i32 %46 to i64
  %arrayidx52 = getelementptr inbounds [2200 x double], [2200 x double]* %arrayidx50, i64 0, i64 %idxprom51
  %47 = load double, double* %arrayidx52, align 8, !tbaa !10
  %add53 = fadd double %47, %mul48
  store double %add53, double* %arrayidx52, align 8, !tbaa !10
  br label %for.inc54

for.inc54:                                        ; preds = %for.body39
  %48 = load i32, i32* %k, align 4, !tbaa !2
  %inc55 = add nsw i32 %48, 1
  store i32 %inc55, i32* %k, align 4, !tbaa !2
  br label %for.cond37, !llvm.loop !25

for.end56:                                        ; preds = %for.cond37
  br label %for.inc57

for.inc57:                                        ; preds = %for.end56
  %49 = load i32, i32* %j, align 4, !tbaa !2
  %inc58 = add nsw i32 %49, 1
  store i32 %inc58, i32* %j, align 4, !tbaa !2
  br label %for.cond30, !llvm.loop !26

for.end59:                                        ; preds = %for.cond30
  br label %for.inc60

for.inc60:                                        ; preds = %for.end59
  %50 = load i32, i32* %i, align 4, !tbaa !2
  %inc61 = add nsw i32 %50, 1
  store i32 %inc61, i32* %i, align 4, !tbaa !2
  br label %for.cond27, !llvm.loop !27

for.end62:                                        ; preds = %for.cond27
  store i32 0, i32* %i, align 4, !tbaa !2
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc96, %for.end62
  %51 = load i32, i32* %i, align 4, !tbaa !2
  %52 = load i32, i32* %ni.addr, align 4, !tbaa !2
  %cmp64 = icmp slt i32 %51, %52
  br i1 %cmp64, label %for.body65, label %for.end98

for.body65:                                       ; preds = %for.cond63
  store i32 0, i32* %j, align 4, !tbaa !2
  br label %for.cond66

for.cond66:                                       ; preds = %for.inc93, %for.body65
  %53 = load i32, i32* %j, align 4, !tbaa !2
  %54 = load i32, i32* %nl.addr, align 4, !tbaa !2
  %cmp67 = icmp slt i32 %53, %54
  br i1 %cmp67, label %for.body68, label %for.end95

for.body68:                                       ; preds = %for.cond66
  %55 = load [2200 x double]*, [2200 x double]** %G.addr, align 8, !tbaa !6
  %56 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom69 = sext i32 %56 to i64
  %arrayidx70 = getelementptr inbounds [2200 x double], [2200 x double]* %55, i64 %idxprom69
  %57 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom71 = sext i32 %57 to i64
  %arrayidx72 = getelementptr inbounds [2200 x double], [2200 x double]* %arrayidx70, i64 0, i64 %idxprom71
  store double 0.000000e+00, double* %arrayidx72, align 8, !tbaa !10
  store i32 0, i32* %k, align 4, !tbaa !2
  br label %for.cond73

for.cond73:                                       ; preds = %for.inc90, %for.body68
  %58 = load i32, i32* %k, align 4, !tbaa !2
  %59 = load i32, i32* %nj.addr, align 4, !tbaa !2
  %cmp74 = icmp slt i32 %58, %59
  br i1 %cmp74, label %for.body75, label %for.end92

for.body75:                                       ; preds = %for.cond73
  %60 = load [1800 x double]*, [1800 x double]** %E.addr, align 8, !tbaa !6
  %61 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom76 = sext i32 %61 to i64
  %arrayidx77 = getelementptr inbounds [1800 x double], [1800 x double]* %60, i64 %idxprom76
  %62 = load i32, i32* %k, align 4, !tbaa !2
  %idxprom78 = sext i32 %62 to i64
  %arrayidx79 = getelementptr inbounds [1800 x double], [1800 x double]* %arrayidx77, i64 0, i64 %idxprom78
  %63 = load double, double* %arrayidx79, align 8, !tbaa !10
  %64 = load [2200 x double]*, [2200 x double]** %F.addr, align 8, !tbaa !6
  %65 = load i32, i32* %k, align 4, !tbaa !2
  %idxprom80 = sext i32 %65 to i64
  %arrayidx81 = getelementptr inbounds [2200 x double], [2200 x double]* %64, i64 %idxprom80
  %66 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom82 = sext i32 %66 to i64
  %arrayidx83 = getelementptr inbounds [2200 x double], [2200 x double]* %arrayidx81, i64 0, i64 %idxprom82
  %67 = load double, double* %arrayidx83, align 8, !tbaa !10
  %mul84 = fmul double %63, %67
  %68 = load [2200 x double]*, [2200 x double]** %G.addr, align 8, !tbaa !6
  %69 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom85 = sext i32 %69 to i64
  %arrayidx86 = getelementptr inbounds [2200 x double], [2200 x double]* %68, i64 %idxprom85
  %70 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom87 = sext i32 %70 to i64
  %arrayidx88 = getelementptr inbounds [2200 x double], [2200 x double]* %arrayidx86, i64 0, i64 %idxprom87
  %71 = load double, double* %arrayidx88, align 8, !tbaa !10
  %add89 = fadd double %71, %mul84
  store double %add89, double* %arrayidx88, align 8, !tbaa !10
  br label %for.inc90

for.inc90:                                        ; preds = %for.body75
  %72 = load i32, i32* %k, align 4, !tbaa !2
  %inc91 = add nsw i32 %72, 1
  store i32 %inc91, i32* %k, align 4, !tbaa !2
  br label %for.cond73, !llvm.loop !28

for.end92:                                        ; preds = %for.cond73
  br label %for.inc93

for.inc93:                                        ; preds = %for.end92
  %73 = load i32, i32* %j, align 4, !tbaa !2
  %inc94 = add nsw i32 %73, 1
  store i32 %inc94, i32* %j, align 4, !tbaa !2
  br label %for.cond66, !llvm.loop !29

for.end95:                                        ; preds = %for.cond66
  br label %for.inc96

for.inc96:                                        ; preds = %for.end95
  %74 = load i32, i32* %i, align 4, !tbaa !2
  %inc97 = add nsw i32 %74, 1
  store i32 %inc97, i32* %i, align 4, !tbaa !2
  br label %for.cond63, !llvm.loop !30

for.end98:                                        ; preds = %for.cond63
  %75 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %75) #6
  %76 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %76) #6
  %77 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %77) #6
  ret void
}

declare dso_local void @polybench_timer_stop(...) #3

declare dso_local void @polybench_timer_print(...) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define internal void @print_array(i32 %ni, i32 %nl, [2200 x double]* %G) #0 {
entry:
  %ni.addr = alloca i32, align 4
  %nl.addr = alloca i32, align 4
  %G.addr = alloca [2200 x double]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %ni, i32* %ni.addr, align 4, !tbaa !2
  store i32 %nl, i32* %nl.addr, align 4, !tbaa !2
  store [2200 x double]* %G, [2200 x double]** %G.addr, align 8, !tbaa !6
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
  %7 = load i32, i32* %nl.addr, align 4, !tbaa !2
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
  %13 = load [2200 x double]*, [2200 x double]** %G.addr, align 8, !tbaa !6
  %14 = load i32, i32* %i, align 4, !tbaa !2
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds [2200 x double], [2200 x double]* %13, i64 %idxprom
  %15 = load i32, i32* %j, align 4, !tbaa !2
  %idxprom7 = sext i32 %15 to i64
  %arrayidx8 = getelementptr inbounds [2200 x double], [2200 x double]* %arrayidx, i64 0, i64 %idxprom7
  %16 = load double, double* %arrayidx8, align 8, !tbaa !10
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %16)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i32, i32* %j, align 4, !tbaa !2
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %j, align 4, !tbaa !2
  br label %for.cond2, !llvm.loop !31

for.end:                                          ; preds = %for.cond2
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %18 = load i32, i32* %i, align 4, !tbaa !2
  %inc11 = add nsw i32 %18, 1
  store i32 %inc11, i32* %i, align 4, !tbaa !2
  br label %for.cond, !llvm.loop !32

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
!31 = distinct !{!31, !13, !14}
!32 = distinct !{!32, !13, !14}

; ModuleID = 'gemm.c'
source_filename = "gemm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** nocapture readonly %argv) local_unnamed_addr #0 {
entry.split:
  %call.i = tail call noalias dereferenceable_or_null(36800000) i8* @malloc(i64 36800000) #7
  %call.i28 = tail call noalias dereferenceable_or_null(41600000) i8* @malloc(i64 41600000) #7
  %call.i29 = tail call noalias dereferenceable_or_null(47840000) i8* @malloc(i64 47840000) #7
  %arraydecay = bitcast i8* %call.i to [2300 x double]*
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc7.i, %entry.split
  %indvars.iv9.i = phi i64 [ 0, %entry.split ], [ %indvars.iv.next10.i, %for.inc7.i ]
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.body3.i, %for.cond1.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.cond1.preheader.i ], [ %indvars.iv.next.i, %for.body3.i ]
  %0 = mul nuw nsw i64 %indvars.iv.i, %indvars.iv9.i
  %1 = trunc i64 %0 to i32
  %2 = add i32 %1, 1
  %rem.i = urem i32 %2, 2000
  %conv.i = sitofp i32 %rem.i to double
  %div.i = fdiv double %conv.i, 2.000000e+03
  %arrayidx6.i = getelementptr inbounds [2300 x double], [2300 x double]* %arraydecay, i64 %indvars.iv9.i, i64 %indvars.iv.i
  store double %div.i, double* %arrayidx6.i, align 8, !tbaa !2
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 2300
  br i1 %exitcond.not.i, label %for.inc7.i, label %for.body3.i, !llvm.loop !6

for.inc7.i:                                       ; preds = %for.body3.i
  %indvars.iv.next10.i = add nuw nsw i64 %indvars.iv9.i, 1
  %exitcond11.not.i = icmp eq i64 %indvars.iv.next10.i, 2000
  br i1 %exitcond11.not.i, label %for.cond14.preheader.i.preheader, label %for.cond1.preheader.i, !llvm.loop !8

for.cond14.preheader.i.preheader:                 ; preds = %for.inc7.i
  %arraydecay3 = bitcast i8* %call.i28 to [2600 x double]*
  br label %for.cond14.preheader.i

for.cond14.preheader.i:                           ; preds = %for.cond14.preheader.i.preheader, %for.inc31.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc31.i ], [ 0, %for.cond14.preheader.i.preheader ]
  br label %for.body17.i

for.body17.i:                                     ; preds = %for.body17.i, %for.cond14.preheader.i
  %indvars.iv12.i = phi i64 [ 0, %for.cond14.preheader.i ], [ %indvars.iv.next13.i, %for.body17.i ]
  %indvars.iv.next13.i = add nuw nsw i64 %indvars.iv12.i, 1
  %3 = mul nuw nsw i64 %indvars.iv.next13.i, %indvars.iv16.i
  %4 = trunc i64 %3 to i32
  %rem20.i = urem i32 %4, 2600
  %conv21.i = sitofp i32 %rem20.i to double
  %div23.i = fdiv double %conv21.i, 2.600000e+03
  %arrayidx27.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay3, i64 %indvars.iv16.i, i64 %indvars.iv12.i
  store double %div23.i, double* %arrayidx27.i, align 8, !tbaa !2
  %exitcond15.not.i = icmp eq i64 %indvars.iv.next13.i, 2600
  br i1 %exitcond15.not.i, label %for.inc31.i, label %for.body17.i, !llvm.loop !9

for.inc31.i:                                      ; preds = %for.body17.i
  %indvars.iv.next17.i = add nuw nsw i64 %indvars.iv16.i, 1
  %exitcond18.not.i = icmp eq i64 %indvars.iv.next17.i, 2000
  br i1 %exitcond18.not.i, label %for.cond38.preheader.i.preheader, label %for.cond14.preheader.i, !llvm.loop !10

for.cond38.preheader.i.preheader:                 ; preds = %for.inc31.i
  %arraydecay4 = bitcast i8* %call.i29 to [2300 x double]*
  br label %for.cond38.preheader.i

for.cond38.preheader.i:                           ; preds = %for.cond38.preheader.i.preheader, %for.inc55.i
  %indvars.iv24.i = phi i64 [ %indvars.iv.next25.i, %for.inc55.i ], [ 0, %for.cond38.preheader.i.preheader ]
  br label %for.body41.i

for.body41.i:                                     ; preds = %for.body41.i, %for.cond38.preheader.i
  %indvars.iv19.i = phi i64 [ 0, %for.cond38.preheader.i ], [ %indvars.iv.next20.i, %for.body41.i ]
  %5 = add nuw nsw i64 %indvars.iv19.i, 2
  %6 = mul nuw nsw i64 %5, %indvars.iv24.i
  %7 = trunc i64 %6 to i32
  %rem44.i = urem i32 %7, 2300
  %conv45.i = sitofp i32 %rem44.i to double
  %div47.i = fdiv double %conv45.i, 2.300000e+03
  %arrayidx51.i = getelementptr inbounds [2300 x double], [2300 x double]* %arraydecay4, i64 %indvars.iv24.i, i64 %indvars.iv19.i
  store double %div47.i, double* %arrayidx51.i, align 8, !tbaa !2
  %indvars.iv.next20.i = add nuw nsw i64 %indvars.iv19.i, 1
  %exitcond23.not.i = icmp eq i64 %indvars.iv.next20.i, 2300
  br i1 %exitcond23.not.i, label %for.inc55.i, label %for.body41.i, !llvm.loop !11

for.inc55.i:                                      ; preds = %for.body41.i
  %indvars.iv.next25.i = add nuw nsw i64 %indvars.iv24.i, 1
  %exitcond26.not.i = icmp eq i64 %indvars.iv.next25.i, 2600
  br i1 %exitcond26.not.i, label %polly.loop_preheader, label %for.cond38.preheader.i, !llvm.loop !12

kernel_gemm.exit:                                 ; preds = %polly.loop_exit69
  tail call void (...) @polybench_timer_stop() #7
  tail call void (...) @polybench_timer_print() #7
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_gemm.exit
  %8 = load i8*, i8** %argv, align 8, !tbaa !13
  %strcmpload = load i8, i8* %8, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !13
  %10 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %9) #8
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !13
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #8
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.inc10.i, %if.then
  %indvars.iv4.i = phi i64 [ 0, %if.then ], [ %indvars.iv.next5.i, %for.inc10.i ]
  %12 = mul nuw nsw i64 %indvars.iv4.i, 2000
  br label %for.body4.i

for.body4.i:                                      ; preds = %if.end.i, %for.cond2.preheader.i
  %indvars.iv.i35 = phi i64 [ 0, %for.cond2.preheader.i ], [ %indvars.iv.next.i37, %if.end.i ]
  %13 = add nuw nsw i64 %indvars.iv.i35, %12
  %14 = trunc i64 %13 to i32
  %rem.i36 = urem i32 %14, 20
  %cmp5.i = icmp eq i32 %rem.i36, 0
  br i1 %cmp5.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body4.i
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !13
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %15) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !13
  %arrayidx8.i = getelementptr inbounds [2300 x double], [2300 x double]* %arraydecay, i64 %indvars.iv4.i, i64 %indvars.iv.i35
  %17 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %17) #8
  %indvars.iv.next.i37 = add nuw nsw i64 %indvars.iv.i35, 1
  %exitcond.not.i38 = icmp eq i64 %indvars.iv.next.i37, 2300
  br i1 %exitcond.not.i38, label %for.inc10.i, label %for.body4.i, !llvm.loop !15

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i39 = icmp eq i64 %indvars.iv.next5.i, 2000
  br i1 %exitcond7.not.i39, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !16

print_array.exit:                                 ; preds = %for.inc10.i
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !13
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #8
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !13
  %20 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %19) #8
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_gemm.exit
  tail call void @free(i8* nonnull %call.i) #7
  tail call void @free(i8* %call.i28) #7
  tail call void @free(i8* %call.i29) #7
  ret i32 0

polly.loop_exit44:                                ; preds = %polly.loop_exit50
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %indvars.iv.next106 = add nsw i64 %indvars.iv105, -32
  %exitcond110.not = icmp eq i64 %polly.indvar_next, 63
  br i1 %exitcond110.not, label %polly.loop_preheader68.preheader, label %polly.loop_preheader43

polly.loop_preheader68.preheader:                 ; preds = %polly.loop_exit44
  %polly.access.cast.call.i28 = bitcast i8* %call.i28 to double*
  br label %polly.loop_preheader68

polly.loop_preheader:                             ; preds = %for.inc55.i
  tail call void (...) @polybench_timer_start() #7
  br label %polly.loop_preheader43

polly.loop_exit50:                                ; preds = %polly.loop_exit56
  %polly.indvar_next46 = add nuw nsw i64 %polly.indvar45, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -32
  %exitcond109.not = icmp eq i64 %polly.indvar_next46, 72
  br i1 %exitcond109.not, label %polly.loop_exit44, label %polly.loop_preheader49

polly.loop_preheader43:                           ; preds = %polly.loop_preheader, %polly.loop_exit44
  %indvars.iv105 = phi i64 [ 0, %polly.loop_preheader ], [ %indvars.iv.next106, %polly.loop_exit44 ]
  %polly.indvar = phi i64 [ 0, %polly.loop_preheader ], [ %polly.indvar_next, %polly.loop_exit44 ]
  %smin107 = call i64 @llvm.smin.i64(i64 %indvars.iv105, i64 -1968)
  %21 = shl nsw i64 %polly.indvar, 5
  %22 = add nsw i64 %smin107, 1999
  br label %polly.loop_preheader49

polly.loop_exit56:                                ; preds = %vector.body, %polly.stmt.for.body3.i34
  %polly.indvar_next52 = add nuw nsw i64 %polly.indvar51, 1
  %exitcond108.not = icmp eq i64 %polly.indvar51, %22
  br i1 %exitcond108.not, label %polly.loop_exit50, label %polly.loop_preheader55

polly.loop_preheader49:                           ; preds = %polly.loop_preheader43, %polly.loop_exit50
  %indvars.iv = phi i64 [ 0, %polly.loop_preheader43 ], [ %indvars.iv.next, %polly.loop_exit50 ]
  %polly.indvar45 = phi i64 [ 0, %polly.loop_preheader43 ], [ %polly.indvar_next46, %polly.loop_exit50 ]
  %23 = mul nsw i64 %polly.indvar45, -32
  %smin126 = call i64 @llvm.smin.i64(i64 %23, i64 -2268)
  %24 = add nsw i64 %smin126, 2300
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 -2268)
  %25 = shl nsw i64 %polly.indvar45, 5
  %26 = add nsw i64 %smin, 2299
  %min.iters.check = icmp eq i64 %24, 0
  br label %polly.loop_preheader55

polly.stmt.for.body3.i34:                         ; preds = %polly.loop_preheader55, %polly.stmt.for.body3.i34
  %polly.indvar57 = phi i64 [ %polly.indvar_next58, %polly.stmt.for.body3.i34 ], [ 0, %polly.loop_preheader55 ]
  %27 = add nuw nsw i64 %polly.indvar57, %25
  %28 = shl i64 %27, 3
  %29 = add nuw nsw i64 %28, %31
  %scevgep = getelementptr i8, i8* %call.i, i64 %29
  %scevgep60 = bitcast i8* %scevgep to double*
  %_p_scalar_ = load double, double* %scevgep60, align 8, !alias.scope !17, !noalias !19
  %p_mul.i = fmul double %_p_scalar_, 1.200000e+00
  store double %p_mul.i, double* %scevgep60, align 8, !alias.scope !17, !noalias !19
  %polly.indvar_next58 = add nuw nsw i64 %polly.indvar57, 1
  %exitcond.not = icmp eq i64 %polly.indvar57, %26
  br i1 %exitcond.not, label %polly.loop_exit56, label %polly.stmt.for.body3.i34, !llvm.loop !22

polly.loop_preheader55:                           ; preds = %polly.loop_preheader49, %polly.loop_exit56
  %polly.indvar51 = phi i64 [ 0, %polly.loop_preheader49 ], [ %polly.indvar_next52, %polly.loop_exit56 ]
  %30 = add nuw nsw i64 %polly.indvar51, %21
  %31 = mul nuw nsw i64 %30, 18400
  br i1 %min.iters.check, label %polly.stmt.for.body3.i34, label %vector.body

vector.body:                                      ; preds = %polly.loop_preheader55, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %polly.loop_preheader55 ]
  %32 = add nuw nsw i64 %index, %25
  %33 = shl i64 %32, 3
  %34 = add nuw nsw i64 %33, %31
  %35 = getelementptr i8, i8* %call.i, i64 %34
  %36 = bitcast i8* %35 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %36, align 8, !alias.scope !17, !noalias !19
  %37 = getelementptr i8, i8* %35, i64 16
  %38 = bitcast i8* %37 to <2 x double>*
  %wide.load127 = load <2 x double>, <2 x double>* %38, align 8, !alias.scope !17, !noalias !19
  %39 = fmul <2 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00>
  %40 = fmul <2 x double> %wide.load127, <double 1.200000e+00, double 1.200000e+00>
  %41 = bitcast i8* %35 to <2 x double>*
  store <2 x double> %39, <2 x double>* %41, align 8, !alias.scope !17, !noalias !19
  %42 = bitcast i8* %37 to <2 x double>*
  store <2 x double> %40, <2 x double>* %42, align 8, !alias.scope !17, !noalias !19
  %index.next = add i64 %index, 4
  %43 = icmp eq i64 %index.next, %24
  br i1 %43, label %polly.loop_exit56, label %vector.body, !llvm.loop !25

polly.loop_exit69:                                ; preds = %polly.loop_exit75
  %polly.indvar_next65 = add nuw nsw i64 %polly.indvar64, 1
  %indvars.iv.next120 = add nsw i64 %indvars.iv119, -32
  %exitcond125.not = icmp eq i64 %polly.indvar_next65, 63
  br i1 %exitcond125.not, label %kernel_gemm.exit, label %polly.loop_preheader68

polly.loop_exit75:                                ; preds = %polly.loop_exit81
  %polly.indvar_next71 = add nuw nsw i64 %polly.indvar70, 1
  %indvars.iv.next116 = add nsw i64 %indvars.iv115, -32
  %exitcond124.not = icmp eq i64 %polly.indvar_next71, 72
  br i1 %exitcond124.not, label %polly.loop_exit69, label %polly.loop_preheader74

polly.loop_preheader68:                           ; preds = %polly.loop_preheader68.preheader, %polly.loop_exit69
  %indvars.iv119 = phi i64 [ 0, %polly.loop_preheader68.preheader ], [ %indvars.iv.next120, %polly.loop_exit69 ]
  %polly.indvar64 = phi i64 [ 0, %polly.loop_preheader68.preheader ], [ %polly.indvar_next65, %polly.loop_exit69 ]
  %smin121 = call i64 @llvm.smin.i64(i64 %indvars.iv119, i64 -1968)
  %44 = shl nsw i64 %polly.indvar64, 5
  %45 = add nsw i64 %smin121, 1999
  br label %polly.loop_preheader74

polly.loop_exit81:                                ; preds = %polly.loop_exit87
  %polly.indvar_next77 = add nuw nsw i64 %polly.indvar76, 1
  %exitcond123.not = icmp eq i64 %polly.indvar_next77, 82
  br i1 %exitcond123.not, label %polly.loop_exit75, label %polly.loop_preheader80

polly.loop_preheader74:                           ; preds = %polly.loop_preheader68, %polly.loop_exit75
  %indvars.iv115 = phi i64 [ 0, %polly.loop_preheader68 ], [ %indvars.iv.next116, %polly.loop_exit75 ]
  %polly.indvar70 = phi i64 [ 0, %polly.loop_preheader68 ], [ %polly.indvar_next71, %polly.loop_exit75 ]
  %smin117 = call i64 @llvm.smin.i64(i64 %indvars.iv115, i64 -2268)
  %46 = shl nsw i64 %polly.indvar70, 5
  %47 = add nsw i64 %smin117, 2299
  br label %polly.loop_preheader80

polly.loop_exit87:                                ; preds = %polly.loop_exit93
  %polly.indvar_next83 = add nuw nsw i64 %polly.indvar82, 1
  %exitcond122.not = icmp eq i64 %polly.indvar82, %45
  br i1 %exitcond122.not, label %polly.loop_exit81, label %polly.loop_preheader86

polly.loop_preheader80:                           ; preds = %polly.loop_preheader74, %polly.loop_exit81
  %polly.indvar76 = phi i64 [ 0, %polly.loop_preheader74 ], [ %polly.indvar_next77, %polly.loop_exit81 ]
  %48 = mul nsw i64 %polly.indvar76, -32
  %smin129 = call i64 @llvm.smin.i64(i64 %48, i64 -2568)
  %49 = add nsw i64 %smin129, 2600
  %50 = shl nsw i64 %polly.indvar76, 5
  br label %polly.loop_preheader86

polly.loop_exit93:                                ; preds = %polly.stmt.for.body11.i
  store double %p_add.i.1, double* %scevgep101102, align 8, !alias.scope !26, !noalias !19
  %polly.indvar_next89 = add nuw nsw i64 %polly.indvar88, 1
  %exitcond118.not = icmp eq i64 %polly.indvar88, %47
  br i1 %exitcond118.not, label %polly.loop_exit87, label %polly.loop_preheader92

polly.loop_preheader86:                           ; preds = %polly.loop_preheader80, %polly.loop_exit87
  %polly.indvar82 = phi i64 [ 0, %polly.loop_preheader80 ], [ %polly.indvar_next83, %polly.loop_exit87 ]
  %51 = add nuw nsw i64 %polly.indvar82, %44
  %polly.access.mul.call.i28 = mul nuw nsw i64 %51, 2600
  %52 = mul nuw nsw i64 %51, 18400
  br label %polly.loop_preheader92

polly.stmt.for.body11.i:                          ; preds = %polly.stmt.for.body11.i, %polly.loop_preheader92
  %p_add.i104 = phi double [ %scevgep101102.promoted, %polly.loop_preheader92 ], [ %p_add.i.1, %polly.stmt.for.body11.i ]
  %polly.indvar94 = phi i64 [ 0, %polly.loop_preheader92 ], [ %polly.indvar_next95.1, %polly.stmt.for.body11.i ]
  %niter = phi i64 [ %49, %polly.loop_preheader92 ], [ %niter.nsub.1, %polly.stmt.for.body11.i ]
  %53 = add nuw nsw i64 %polly.indvar94, %50
  %polly.access.add.call.i28 = add nuw nsw i64 %53, %polly.access.mul.call.i28
  %polly.access.call.i28 = getelementptr double, double* %polly.access.cast.call.i28, i64 %polly.access.add.call.i28
  %_p_scalar_97 = load double, double* %polly.access.call.i28, align 8, !alias.scope !20, !noalias !27
  %p_mul16.i = fmul double %_p_scalar_97, 1.500000e+00
  %54 = mul nuw nsw i64 %53, 18400
  %55 = add nuw nsw i64 %54, %60
  %scevgep98 = getelementptr i8, i8* %call.i29, i64 %55
  %scevgep9899 = bitcast i8* %scevgep98 to double*
  %_p_scalar_100 = load double, double* %scevgep9899, align 8, !alias.scope !21, !noalias !28
  %p_mul21.i = fmul double %p_mul16.i, %_p_scalar_100
  %p_add.i = fadd double %p_add.i104, %p_mul21.i
  %polly.indvar_next95 = or i64 %polly.indvar94, 1
  %56 = add nuw nsw i64 %polly.indvar_next95, %50
  %polly.access.add.call.i28.1 = add nuw nsw i64 %56, %polly.access.mul.call.i28
  %polly.access.call.i28.1 = getelementptr double, double* %polly.access.cast.call.i28, i64 %polly.access.add.call.i28.1
  %_p_scalar_97.1 = load double, double* %polly.access.call.i28.1, align 8, !alias.scope !20, !noalias !27
  %p_mul16.i.1 = fmul double %_p_scalar_97.1, 1.500000e+00
  %57 = mul nuw nsw i64 %56, 18400
  %58 = add nuw nsw i64 %57, %60
  %scevgep98.1 = getelementptr i8, i8* %call.i29, i64 %58
  %scevgep9899.1 = bitcast i8* %scevgep98.1 to double*
  %_p_scalar_100.1 = load double, double* %scevgep9899.1, align 8, !alias.scope !21, !noalias !28
  %p_mul21.i.1 = fmul double %p_mul16.i.1, %_p_scalar_100.1
  %p_add.i.1 = fadd double %p_add.i, %p_mul21.i.1
  %polly.indvar_next95.1 = add nuw nsw i64 %polly.indvar94, 2
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %polly.loop_exit93, label %polly.stmt.for.body11.i

polly.loop_preheader92:                           ; preds = %polly.loop_preheader86, %polly.loop_exit93
  %polly.indvar88 = phi i64 [ 0, %polly.loop_preheader86 ], [ %polly.indvar_next89, %polly.loop_exit93 ]
  %59 = add nuw nsw i64 %polly.indvar88, %46
  %60 = shl i64 %59, 3
  %61 = add nuw nsw i64 %60, %52
  %scevgep101 = getelementptr i8, i8* %call.i, i64 %61
  %scevgep101102 = bitcast i8* %scevgep101 to double*
  %scevgep101102.promoted = load double, double* %scevgep101102, align 8, !alias.scope !26, !noalias !19
  br label %polly.stmt.for.body11.i
}

declare dso_local void @polybench_timer_start(...) local_unnamed_addr #1

declare dso_local void @polybench_timer_stop(...) local_unnamed_addr #1

declare dso_local void @polybench_timer_print(...) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fprintf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #6

attributes #0 = { nounwind uwtable "frame-pointer"="none" "no-trapping-math"="true" "polly-optimized" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inaccessiblemem_or_argmemonly nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inaccessiblememonly nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 13.0.0 (https://github.com/wsmoses/MLIR-GPU.git 19da7eee184e4d715d9870fe866ac10858e874d1)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"double", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = !{!14, !14, i64 0}
!14 = !{!"any pointer", !4, i64 0}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !18, !"polly.alias.scope.MemRef0"}
!18 = distinct !{!18, !"polly.alias.scope.domain"}
!19 = !{!20, !21}
!20 = distinct !{!20, !18, !"polly.alias.scope.MemRef1"}
!21 = distinct !{!21, !18, !"polly.alias.scope.MemRef3"}
!22 = distinct !{!22, !23, !24}
!23 = !{!"llvm.loop.unroll.runtime.disable"}
!24 = !{!"llvm.loop.isvectorized", i32 1}
!25 = distinct !{!25, !24}
!26 = !{!17}
!27 = !{!17, !21}
!28 = !{!17, !20}

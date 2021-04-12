; ModuleID = 'gramschmidt.c'
source_filename = "gramschmidt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"Q\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** nocapture readonly %argv) local_unnamed_addr #0 {
entry.split:
  %call.i = tail call noalias dereferenceable_or_null(41600000) i8* @malloc(i64 41600000) #9
  %call.i30 = tail call noalias dereferenceable_or_null(54080000) i8* @malloc(i64 54080000) #9
  %call.i31 = tail call noalias dereferenceable_or_null(41600000) i8* @malloc(i64 41600000) #9
  %arraydecay = bitcast i8* %call.i to [2600 x double]*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(41600000) %call.i31, i8 0, i64 41600000, i1 false)
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc12.i, %entry.split
  %indvars.iv7.i = phi i64 [ 0, %entry.split ], [ %indvars.iv.next8.i, %for.inc12.i ]
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.body3.i, %for.cond1.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.cond1.preheader.i ], [ %indvars.iv.next.i, %for.body3.i ]
  %0 = mul nuw nsw i64 %indvars.iv.i, %indvars.iv7.i
  %1 = trunc i64 %0 to i32
  %rem.i = urem i32 %1, 2000
  %conv.i = sitofp i32 %rem.i to double
  %div.i = fdiv double %conv.i, 2.000000e+03
  %mul5.i = fmul double %div.i, 1.000000e+02
  %add.i = fadd double %mul5.i, 1.000000e+01
  %arrayidx7.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv7.i, i64 %indvars.iv.i
  store double %add.i, double* %arrayidx7.i, align 8, !tbaa !2
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 2600
  br i1 %exitcond.not.i, label %for.inc12.i, label %for.body3.i, !llvm.loop !6

for.inc12.i:                                      ; preds = %for.body3.i
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 2000
  br i1 %exitcond9.not.i, label %init_array.exit, label %for.cond1.preheader.i, !llvm.loop !8

init_array.exit:                                  ; preds = %for.inc12.i
  %arraydecay3 = bitcast i8* %call.i30 to [2600 x double]*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(54080000) %call.i30, i8 0, i64 54080000, i1 false) #9
  tail call void (...) @polybench_timer_start() #9
  %scevgep110 = getelementptr i8, i8* %call.i, i64 8
  %polly.access.cast.call.i30102 = bitcast i8* %call.i30 to double*
  br label %for.cond1.preheader.i32

for.cond.loopexit.i:                              ; preds = %polly.loop_exit130, %polly.loop_if74.for.cond.loopexit.i_crit_edge
  %indvars.iv.next25.i.merge.pre-phi = phi i64 [ %.pre, %polly.loop_if74.for.cond.loopexit.i_crit_edge ], [ %38, %polly.loop_exit130 ]
  %exitcond26.not.i = icmp eq i64 %indvars.iv.next25.i.merge.pre-phi, 2600
  %indvars.iv.next170 = add nsw i64 %indvars.iv169, -1
  %indvars.iv.next177 = add nuw nsw i64 %indvars.iv176, 1
  br i1 %exitcond26.not.i, label %kernel_gramschmidt.exit, label %for.cond1.preheader.i32, !llvm.loop !9

for.cond1.preheader.i32:                          ; preds = %for.cond.loopexit.i, %init_array.exit
  %indvars.iv176 = phi i64 [ %indvars.iv.next177, %for.cond.loopexit.i ], [ 25, %init_array.exit ]
  %indvars.iv169 = phi i64 [ %indvars.iv.next170, %for.cond.loopexit.i ], [ 0, %init_array.exit ]
  %indvars.iv24.i = phi i64 [ %indvars.iv.next25.i.merge.pre-phi, %for.cond.loopexit.i ], [ 0, %init_array.exit ]
  %2 = lshr i64 %indvars.iv176, 5
  %3 = sub nsw i64 81, %2
  %smax190 = call i64 @llvm.smax.i64(i64 %3, i64 0)
  %4 = mul nuw nsw i64 %indvars.iv24.i, 20808
  %5 = add nuw nsw i64 %4, 8
  %scevgep = getelementptr i8, i8* %call.i30, i64 %5
  %6 = mul nsw i64 %indvars.iv24.i, -8
  %7 = add nsw i64 %6, 20792
  br label %for.body3.i37

for.body3.i37:                                    ; preds = %for.body3.i37, %for.cond1.preheader.i32
  %indvars.iv.i33 = phi i64 [ 0, %for.cond1.preheader.i32 ], [ %indvars.iv.next.i35.4, %for.body3.i37 ]
  %nrm.02.i = phi double [ 0.000000e+00, %for.cond1.preheader.i32 ], [ %add.i34.4, %for.body3.i37 ]
  %arrayidx5.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv.i33, i64 %indvars.iv24.i
  %8 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul double %8, %8
  %add.i34 = fadd double %nrm.02.i, %mul.i
  %indvars.iv.next.i35 = add nuw nsw i64 %indvars.iv.i33, 1
  %arrayidx5.i.1 = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv.next.i35, i64 %indvars.iv24.i
  %9 = load double, double* %arrayidx5.i.1, align 8, !tbaa !2
  %mul.i.1 = fmul double %9, %9
  %add.i34.1 = fadd double %add.i34, %mul.i.1
  %indvars.iv.next.i35.1 = add nuw nsw i64 %indvars.iv.i33, 2
  %arrayidx5.i.2 = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv.next.i35.1, i64 %indvars.iv24.i
  %10 = load double, double* %arrayidx5.i.2, align 8, !tbaa !2
  %mul.i.2 = fmul double %10, %10
  %add.i34.2 = fadd double %add.i34.1, %mul.i.2
  %indvars.iv.next.i35.2 = add nuw nsw i64 %indvars.iv.i33, 3
  %arrayidx5.i.3 = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv.next.i35.2, i64 %indvars.iv24.i
  %11 = load double, double* %arrayidx5.i.3, align 8, !tbaa !2
  %mul.i.3 = fmul double %11, %11
  %add.i34.3 = fadd double %add.i34.2, %mul.i.3
  %indvars.iv.next.i35.3 = add nuw nsw i64 %indvars.iv.i33, 4
  %arrayidx5.i.4 = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv.next.i35.3, i64 %indvars.iv24.i
  %12 = load double, double* %arrayidx5.i.4, align 8, !tbaa !2
  %mul.i.4 = fmul double %12, %12
  %add.i34.4 = fadd double %add.i34.3, %mul.i.4
  %indvars.iv.next.i35.4 = add nuw nsw i64 %indvars.iv.i33, 5
  %exitcond.not.i36.4 = icmp eq i64 %indvars.iv.next.i35.4, 2000
  br i1 %exitcond.not.i36.4, label %polly.loop_if, label %for.body3.i37, !llvm.loop !10

kernel_gramschmidt.exit:                          ; preds = %for.cond.loopexit.i
  %arraydecay4 = bitcast i8* %call.i31 to [2600 x double]*
  tail call void (...) @polybench_timer_stop() #9
  tail call void (...) @polybench_timer_print() #9
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_gramschmidt.exit
  %13 = load i8*, i8** %argv, align 8, !tbaa !11
  %strcmpload = load i8, i8* %13, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !11
  %15 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %14) #10
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !11
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #10
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.inc10.i, %if.then
  %indvars.iv7.i40 = phi i64 [ 0, %if.then ], [ %indvars.iv.next8.i45, %for.inc10.i ]
  %17 = mul nuw nsw i64 %indvars.iv7.i40, 2600
  br label %for.body4.i

for.body4.i:                                      ; preds = %if.end.i, %for.cond2.preheader.i
  %indvars.iv.i41 = phi i64 [ 0, %for.cond2.preheader.i ], [ %indvars.iv.next.i43, %if.end.i ]
  %18 = add nuw nsw i64 %indvars.iv.i41, %17
  %19 = trunc i64 %18 to i32
  %rem.i42 = urem i32 %19, 20
  %cmp5.i = icmp eq i32 %rem.i42, 0
  br i1 %cmp5.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body4.i
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !11
  %fputc1.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %20) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !11
  %arrayidx8.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay3, i64 %indvars.iv7.i40, i64 %indvars.iv.i41
  %22 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %22) #10
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 2600
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !13

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next8.i45 = add nuw nsw i64 %indvars.iv7.i40, 1
  %exitcond10.not.i = icmp eq i64 %indvars.iv.next8.i45, 2600
  br i1 %exitcond10.not.i, label %for.end12.i, label %for.cond2.preheader.i, !llvm.loop !14

for.end12.i:                                      ; preds = %for.inc10.i
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !11
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #10
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !11
  %call14.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #10
  br label %for.cond18.preheader.i

for.cond18.preheader.i:                           ; preds = %for.inc36.i, %for.end12.i
  %indvars.iv15.i46 = phi i64 [ 0, %for.end12.i ], [ %indvars.iv.next16.i48, %for.inc36.i ]
  %25 = mul nuw nsw i64 %indvars.iv15.i46, 2600
  br label %for.body20.i

for.body20.i:                                     ; preds = %if.end27.i, %for.cond18.preheader.i
  %indvars.iv11.i = phi i64 [ 0, %for.cond18.preheader.i ], [ %indvars.iv.next12.i, %if.end27.i ]
  %26 = add nuw nsw i64 %indvars.iv11.i, %25
  %27 = trunc i64 %26 to i32
  %rem23.i = urem i32 %27, 20
  %cmp24.i = icmp eq i32 %rem23.i, 0
  br i1 %cmp24.i, label %if.then25.i, label %if.end27.i

if.then25.i:                                      ; preds = %for.body20.i
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !11
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %28) #9
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then25.i, %for.body20.i
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !11
  %arrayidx31.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay4, i64 %indvars.iv15.i46, i64 %indvars.iv11.i
  %30 = load double, double* %arrayidx31.i, align 8, !tbaa !2
  %call32.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %30) #10
  %indvars.iv.next12.i = add nuw nsw i64 %indvars.iv11.i, 1
  %exitcond14.not.i47 = icmp eq i64 %indvars.iv.next12.i, 2600
  br i1 %exitcond14.not.i47, label %for.inc36.i, label %for.body20.i, !llvm.loop !15

for.inc36.i:                                      ; preds = %if.end27.i
  %indvars.iv.next16.i48 = add nuw nsw i64 %indvars.iv15.i46, 1
  %exitcond18.not.i = icmp eq i64 %indvars.iv.next16.i48, 2000
  br i1 %exitcond18.not.i, label %print_array.exit, label %for.cond18.preheader.i, !llvm.loop !16

print_array.exit:                                 ; preds = %for.inc36.i
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !11
  %call39.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #10
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !11
  %33 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %32) #10
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_gramschmidt.exit
  tail call void @free(i8* %call.i) #9
  tail call void @free(i8* %call.i30) #9
  tail call void @free(i8* nonnull %call.i31) #9
  ret i32 0

polly.loop_if:                                    ; preds = %for.body3.i37
  %call.i38 = tail call double @sqrt(double %add.i34.4) #9
  %arrayidx13.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay3, i64 %indvars.iv24.i, i64 %indvars.iv24.i
  store double %call.i38, double* %arrayidx13.i, align 8, !tbaa !2
  %34 = sub nsw i64 0, %indvars.iv24.i
  %polly.loop_guard = icmp slt i64 %indvars.iv24.i, 2599
  br i1 %polly.loop_guard, label %polly.stmt.for.body35.i61.preheader, label %polly.loop_preheader63

polly.stmt.for.body35.i61.preheader:              ; preds = %polly.loop_if
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %scevgep, i8 0, i64 %7, i1 false)
  br label %polly.loop_preheader63

polly.stmt.for.body16.i:                          ; preds = %polly.stmt.for.body16.i, %polly.loop_preheader63
  %polly.indvar65 = phi i64 [ 0, %polly.loop_preheader63 ], [ %polly.indvar_next66.1, %polly.stmt.for.body16.i ]
  %35 = mul nuw nsw i64 %polly.indvar65, 20800
  %scevgep69 = getelementptr i8, i8* %scevgep68, i64 %35
  %scevgep6970 = bitcast i8* %scevgep69 to double*
  %_p_scalar_ = load double, double* %scevgep6970, align 8, !alias.scope !17, !noalias !19
  %p_div.i39 = fdiv double %_p_scalar_, %call.i38
  %scevgep72 = getelementptr i8, i8* %scevgep71, i64 %35
  %scevgep7273 = bitcast i8* %scevgep72 to double*
  store double %p_div.i39, double* %scevgep7273, align 8, !alias.scope !20, !noalias !22
  %polly.indvar_next66 = or i64 %polly.indvar65, 1
  %36 = mul nuw nsw i64 %polly.indvar_next66, 20800
  %scevgep69.1 = getelementptr i8, i8* %scevgep68, i64 %36
  %scevgep6970.1 = bitcast i8* %scevgep69.1 to double*
  %_p_scalar_.1 = load double, double* %scevgep6970.1, align 8, !alias.scope !17, !noalias !19
  %p_div.i39.1 = fdiv double %_p_scalar_.1, %call.i38
  %scevgep72.1 = getelementptr i8, i8* %scevgep71, i64 %36
  %scevgep7273.1 = bitcast i8* %scevgep72.1 to double*
  store double %p_div.i39.1, double* %scevgep7273.1, align 8, !alias.scope !20, !noalias !22
  %polly.indvar_next66.1 = add nuw nsw i64 %polly.indvar65, 2
  %exitcond.not.1 = icmp eq i64 %polly.indvar_next66.1, 2000
  br i1 %exitcond.not.1, label %polly.loop_if74, label %polly.stmt.for.body16.i

polly.loop_preheader63:                           ; preds = %polly.stmt.for.body35.i61.preheader, %polly.loop_if
  %37 = shl i64 %indvars.iv24.i, 3
  %scevgep68 = getelementptr i8, i8* %call.i, i64 %37
  %scevgep71 = getelementptr i8, i8* %call.i31, i64 %37
  br label %polly.stmt.for.body16.i

polly.loop_if74:                                  ; preds = %polly.stmt.for.body16.i
  %polly.loop_guard78 = icmp ult i64 %indvars.iv24.i, 2599
  br i1 %polly.loop_guard78, label %polly.loop_preheader76, label %polly.loop_if74.for.cond.loopexit.i_crit_edge

polly.loop_if74.for.cond.loopexit.i_crit_edge:    ; preds = %polly.loop_if74
  %.pre = add nuw nsw i64 %indvars.iv24.i, 1
  br label %for.cond.loopexit.i

polly.loop_exit84:                                ; preds = %polly.loop_exit91.loopexit.us, %polly.loop_preheader83
  %polly.indvar_next80 = add nuw nsw i64 %polly.indvar79, 1
  %indvars.iv.next172 = add nsw i64 %indvars.iv171, -32
  %exitcond179.not = icmp eq i64 %polly.indvar79, %smax190
  br i1 %exitcond179.not, label %polly.loop_preheader129, label %polly.loop_preheader83

polly.loop_preheader76:                           ; preds = %polly.loop_if74
  %scevgep111 = getelementptr i8, i8* %scevgep110, i64 %37
  %polly.access.mul.call.i30103 = mul nuw nsw i64 %indvars.iv24.i, 2600
  %38 = add nuw nsw i64 %indvars.iv24.i, 1
  %39 = add nuw nsw i64 %38, %polly.access.mul.call.i30103
  br label %polly.loop_preheader83

polly.loop_preheader83:                           ; preds = %polly.loop_preheader76, %polly.loop_exit84
  %indvars.iv171 = phi i64 [ %indvars.iv169, %polly.loop_preheader76 ], [ %indvars.iv.next172, %polly.loop_exit84 ]
  %polly.indvar79 = phi i64 [ 0, %polly.loop_preheader76 ], [ %polly.indvar_next80, %polly.loop_exit84 ]
  %smin173 = call i64 @llvm.smin.i64(i64 %indvars.iv171, i64 -2567)
  %40 = add nsw i64 %smin173, 2598
  %smax = call i64 @llvm.smax.i64(i64 %40, i64 0)
  %41 = shl nsw i64 %polly.indvar79, 5
  %42 = sub nsw i64 %34, %41
  %polly.loop_guard92192 = icmp sgt i64 %42, -2599
  %43 = add nuw nsw i64 %39, %41
  br i1 %polly.loop_guard92192, label %polly.loop_if88.us, label %polly.loop_exit84

polly.loop_if88.us:                               ; preds = %polly.loop_preheader83, %polly.loop_exit91.loopexit.us
  %polly.indvar85.us = phi i64 [ %polly.indvar_next86.us, %polly.loop_exit91.loopexit.us ], [ 0, %polly.loop_preheader83 ]
  %44 = mul nsw i64 %polly.indvar85.us, -32
  %smin194 = call i64 @llvm.smin.i64(i64 %44, i64 -1968)
  %45 = add nsw i64 %smin194, 2000
  %46 = shl nsw i64 %polly.indvar85.us, 5
  br label %polly.loop_preheader97.us

polly.loop_preheader97.us:                        ; preds = %polly.loop_if88.us, %polly.loop_exit98.us
  %polly.indvar93.us = phi i64 [ %polly.indvar_next94.us, %polly.loop_exit98.us ], [ 0, %polly.loop_if88.us ]
  %47 = add nuw nsw i64 %polly.indvar93.us, %41
  %polly.access.add.call.i30104.us = add nuw nsw i64 %43, %polly.indvar93.us
  %polly.access.call.i30105.us = getelementptr double, double* %polly.access.cast.call.i30102, i64 %polly.access.add.call.i30104.us
  %48 = shl i64 %47, 3
  %polly.access.call.i30105.promoted.us = load double, double* %polly.access.call.i30105.us, align 8, !alias.scope !23, !noalias !24
  br label %polly.stmt.for.body42.i.us

polly.stmt.for.body42.i.us:                       ; preds = %polly.stmt.for.body42.i.us, %polly.loop_preheader97.us
  %p_add56.i164.us = phi double [ %polly.access.call.i30105.promoted.us, %polly.loop_preheader97.us ], [ %p_add56.i.us.1, %polly.stmt.for.body42.i.us ]
  %polly.indvar99.us = phi i64 [ 0, %polly.loop_preheader97.us ], [ %polly.indvar_next100.us.1, %polly.stmt.for.body42.i.us ]
  %niter = phi i64 [ %45, %polly.loop_preheader97.us ], [ %niter.nsub.1, %polly.stmt.for.body42.i.us ]
  %49 = add nuw nsw i64 %polly.indvar99.us, %46
  %50 = mul nuw nsw i64 %49, 20800
  %scevgep107.us = getelementptr i8, i8* %scevgep71, i64 %50
  %scevgep107108.us = bitcast i8* %scevgep107.us to double*
  %_p_scalar_109.us = load double, double* %scevgep107108.us, align 8, !alias.scope !20, !noalias !22
  %51 = add nuw nsw i64 %50, %48
  %scevgep112.us = getelementptr i8, i8* %scevgep111, i64 %51
  %scevgep112113.us = bitcast i8* %scevgep112.us to double*
  %_p_scalar_114.us = load double, double* %scevgep112113.us, align 8, !alias.scope !17, !noalias !19
  %p_mul51.i.us = fmul double %_p_scalar_109.us, %_p_scalar_114.us
  %p_add56.i.us = fadd double %p_add56.i164.us, %p_mul51.i.us
  %polly.indvar_next100.us = or i64 %polly.indvar99.us, 1
  %52 = add nuw nsw i64 %polly.indvar_next100.us, %46
  %53 = mul nuw nsw i64 %52, 20800
  %scevgep107.us.1 = getelementptr i8, i8* %scevgep71, i64 %53
  %scevgep107108.us.1 = bitcast i8* %scevgep107.us.1 to double*
  %_p_scalar_109.us.1 = load double, double* %scevgep107108.us.1, align 8, !alias.scope !20, !noalias !22
  %54 = add nuw nsw i64 %53, %48
  %scevgep112.us.1 = getelementptr i8, i8* %scevgep111, i64 %54
  %scevgep112113.us.1 = bitcast i8* %scevgep112.us.1 to double*
  %_p_scalar_114.us.1 = load double, double* %scevgep112113.us.1, align 8, !alias.scope !17, !noalias !19
  %p_mul51.i.us.1 = fmul double %_p_scalar_109.us.1, %_p_scalar_114.us.1
  %p_add56.i.us.1 = fadd double %p_add56.i.us, %p_mul51.i.us.1
  %polly.indvar_next100.us.1 = add nuw nsw i64 %polly.indvar99.us, 2
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %polly.loop_exit98.us, label %polly.stmt.for.body42.i.us

polly.loop_exit98.us:                             ; preds = %polly.stmt.for.body42.i.us
  store double %p_add56.i.us.1, double* %polly.access.call.i30105.us, align 8, !alias.scope !23, !noalias !24
  %polly.indvar_next94.us = add nuw nsw i64 %polly.indvar93.us, 1
  %exitcond174.not = icmp eq i64 %polly.indvar93.us, %smax
  br i1 %exitcond174.not, label %polly.loop_exit91.loopexit.us, label %polly.loop_preheader97.us

polly.loop_exit91.loopexit.us:                    ; preds = %polly.loop_exit98.us
  %polly.indvar_next86.us = add nuw nsw i64 %polly.indvar85.us, 1
  %exitcond175.not = icmp eq i64 %polly.indvar_next86.us, 63
  br i1 %exitcond175.not, label %polly.loop_exit84, label %polly.loop_if88.us

polly.loop_exit130:                               ; preds = %polly.loop_exit137.loopexit.us, %polly.loop_preheader129
  %polly.indvar_next126 = add nuw nsw i64 %polly.indvar125, 1
  %indvars.iv.next185 = add nsw i64 %indvars.iv184, -32
  %exitcond191.not = icmp eq i64 %polly.indvar125, %smax190
  br i1 %exitcond191.not, label %for.cond.loopexit.i, label %polly.loop_preheader129

polly.loop_preheader129:                          ; preds = %polly.loop_exit84, %polly.loop_exit130
  %indvars.iv184 = phi i64 [ %indvars.iv.next185, %polly.loop_exit130 ], [ %indvars.iv169, %polly.loop_exit84 ]
  %polly.indvar125 = phi i64 [ %polly.indvar_next126, %polly.loop_exit130 ], [ 0, %polly.loop_exit84 ]
  %smin186 = call i64 @llvm.smin.i64(i64 %indvars.iv184, i64 -2567)
  %55 = add nsw i64 %smin186, 2598
  %smax187 = call i64 @llvm.smax.i64(i64 %55, i64 0)
  %56 = shl nsw i64 %polly.indvar125, 5
  %57 = sub nsw i64 %34, %56
  %polly.loop_guard138193 = icmp sgt i64 %57, -2599
  %58 = add nuw nsw i64 %39, %56
  br i1 %polly.loop_guard138193, label %polly.loop_if134.us, label %polly.loop_exit130

polly.loop_if134.us:                              ; preds = %polly.loop_preheader129, %polly.loop_exit137.loopexit.us
  %polly.indvar131.us = phi i64 [ %polly.indvar_next132.us, %polly.loop_exit137.loopexit.us ], [ 0, %polly.loop_preheader129 ]
  %59 = mul nsw i64 %polly.indvar131.us, -32
  %smin195 = call i64 @llvm.smin.i64(i64 %59, i64 -1968)
  %60 = add nsw i64 %smin195, 2000
  %61 = shl nsw i64 %polly.indvar131.us, 5
  br label %polly.loop_preheader143.us

polly.loop_preheader143.us:                       ; preds = %polly.loop_if134.us, %polly.loop_exit144.us
  %polly.indvar139.us = phi i64 [ %polly.indvar_next140.us, %polly.loop_exit144.us ], [ 0, %polly.loop_if134.us ]
  %62 = add nuw nsw i64 %polly.indvar139.us, %56
  %polly.access.add.call.i30150.us = add nuw nsw i64 %58, %polly.indvar139.us
  %polly.access.call.i30151.us = getelementptr double, double* %polly.access.cast.call.i30102, i64 %polly.access.add.call.i30150.us
  %polly.access.call.i30151.reload.us = load double, double* %polly.access.call.i30151.us, align 8, !alias.scope !21, !noalias !24
  %63 = shl i64 %62, 3
  br label %polly.stmt.for.body62.i.us

polly.stmt.for.body62.i.us:                       ; preds = %polly.stmt.for.body62.i.us, %polly.loop_preheader143.us
  %polly.indvar145.us = phi i64 [ 0, %polly.loop_preheader143.us ], [ %polly.indvar_next146.us.1, %polly.stmt.for.body62.i.us ]
  %niter199 = phi i64 [ %60, %polly.loop_preheader143.us ], [ %niter199.nsub.1, %polly.stmt.for.body62.i.us ]
  %64 = add nuw nsw i64 %polly.indvar145.us, %61
  %65 = mul nuw nsw i64 %64, 20800
  %66 = add nuw nsw i64 %65, %63
  %scevgep154.us = getelementptr i8, i8* %scevgep111, i64 %66
  %scevgep154155.us = bitcast i8* %scevgep154.us to double*
  %_p_scalar_156.us = load double, double* %scevgep154155.us, align 8, !alias.scope !17, !noalias !19
  %scevgep158.us = getelementptr i8, i8* %scevgep71, i64 %65
  %scevgep158159.us = bitcast i8* %scevgep158.us to double*
  %_p_scalar_160.us = load double, double* %scevgep158159.us, align 8, !alias.scope !20, !noalias !22
  %p_mul75.i.us = fmul double %polly.access.call.i30151.reload.us, %_p_scalar_160.us
  %p_sub.i.us = fsub double %_p_scalar_156.us, %p_mul75.i.us
  store double %p_sub.i.us, double* %scevgep154155.us, align 8, !alias.scope !17, !noalias !19
  %polly.indvar_next146.us = or i64 %polly.indvar145.us, 1
  %67 = add nuw nsw i64 %polly.indvar_next146.us, %61
  %68 = mul nuw nsw i64 %67, 20800
  %69 = add nuw nsw i64 %68, %63
  %scevgep154.us.1 = getelementptr i8, i8* %scevgep111, i64 %69
  %scevgep154155.us.1 = bitcast i8* %scevgep154.us.1 to double*
  %_p_scalar_156.us.1 = load double, double* %scevgep154155.us.1, align 8, !alias.scope !17, !noalias !19
  %scevgep158.us.1 = getelementptr i8, i8* %scevgep71, i64 %68
  %scevgep158159.us.1 = bitcast i8* %scevgep158.us.1 to double*
  %_p_scalar_160.us.1 = load double, double* %scevgep158159.us.1, align 8, !alias.scope !20, !noalias !22
  %p_mul75.i.us.1 = fmul double %polly.access.call.i30151.reload.us, %_p_scalar_160.us.1
  %p_sub.i.us.1 = fsub double %_p_scalar_156.us.1, %p_mul75.i.us.1
  store double %p_sub.i.us.1, double* %scevgep154155.us.1, align 8, !alias.scope !17, !noalias !19
  %polly.indvar_next146.us.1 = add nuw nsw i64 %polly.indvar145.us, 2
  %niter199.nsub.1 = add i64 %niter199, -2
  %niter199.ncmp.1 = icmp eq i64 %niter199.nsub.1, 0
  br i1 %niter199.ncmp.1, label %polly.loop_exit144.us, label %polly.stmt.for.body62.i.us

polly.loop_exit144.us:                            ; preds = %polly.stmt.for.body62.i.us
  %polly.indvar_next140.us = add nuw nsw i64 %polly.indvar139.us, 1
  %exitcond188.not = icmp eq i64 %polly.indvar139.us, %smax187
  br i1 %exitcond188.not, label %polly.loop_exit137.loopexit.us, label %polly.loop_preheader143.us

polly.loop_exit137.loopexit.us:                   ; preds = %polly.loop_exit144.us
  %polly.indvar_next132.us = add nuw nsw i64 %polly.indvar131.us, 1
  %exitcond189.not = icmp eq i64 %polly.indvar_next132.us, 63
  br i1 %exitcond189.not, label %polly.loop_exit130, label %polly.loop_if134.us
}

declare dso_local void @polybench_timer_start(...) local_unnamed_addr #1

declare dso_local void @polybench_timer_stop(...) local_unnamed_addr #1

declare dso_local void @polybench_timer_print(...) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind willreturn
declare dso_local double @sqrt(double) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fprintf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #8

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #8

attributes #0 = { nounwind uwtable "frame-pointer"="none" "no-trapping-math"="true" "polly-optimized" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inaccessiblemem_or_argmemonly nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inaccessiblememonly nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #8 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

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
!11 = !{!12, !12, i64 0}
!12 = !{!"any pointer", !4, i64 0}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !18, !"polly.alias.scope.MemRef0"}
!18 = distinct !{!18, !"polly.alias.scope.domain"}
!19 = !{!20, !21}
!20 = distinct !{!20, !18, !"polly.alias.scope.MemRef2"}
!21 = distinct !{!21, !18, !"polly.alias.scope.MemRef4"}
!22 = !{!17, !21}
!23 = !{!21}
!24 = !{!17, !20}

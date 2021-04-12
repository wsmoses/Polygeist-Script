; ModuleID = 'mvt.c'
source_filename = "mvt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"x1\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"x2\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** nocapture readonly %argv) local_unnamed_addr #0 {
entry:
  %call.i = tail call noalias dereferenceable_or_null(128000000) i8* @malloc(i64 128000000) #6
  %call.i37 = tail call noalias dereferenceable_or_null(32000) i8* @malloc(i64 32000) #6
  %call.i38 = tail call noalias dereferenceable_or_null(32000) i8* @malloc(i64 32000) #6
  %call.i39 = tail call noalias dereferenceable_or_null(32000) i8* @malloc(i64 32000) #6
  %call.i40 = tail call noalias dereferenceable_or_null(32000) i8* @malloc(i64 32000) #6
  %arraydecay = bitcast i8* %call.i37 to double*
  %arraydecay5 = bitcast i8* %call.i38 to double*
  %arraydecay6 = bitcast i8* %call.i39 to double*
  %arraydecay7 = bitcast i8* %call.i40 to double*
  %arraydecay8 = bitcast i8* %call.i to [4000 x double]*
  br label %for.body.i

for.cond.loopexit.i:                              ; preds = %for.body25.i
  %add.i = add nuw nsw i32 %i.06.i, 1
  %exitcond10.not.i = icmp eq i64 %indvars.iv.next9.i, 4000
  br i1 %exitcond10.not.i, label %init_array.exit, label %for.body.i, !llvm.loop !2

for.body.i:                                       ; preds = %for.cond.loopexit.i, %entry
  %indvars.iv8.i = phi i64 [ 0, %entry ], [ %indvars.iv.next9.i, %for.cond.loopexit.i ]
  %i.06.i = phi i32 [ 0, %entry ], [ %add.i, %for.cond.loopexit.i ]
  %rem.lhs.trunc.i = trunc i32 %i.06.i to i16
  %rem1.i = urem i16 %rem.lhs.trunc.i, 4000
  %conv.i = uitofp i16 %rem1.i to double
  %div.i = fdiv double %conv.i, 4.000000e+03
  %arrayidx.i = getelementptr inbounds double, double* %arraydecay, i64 %indvars.iv8.i
  store double %div.i, double* %arrayidx.i, align 8, !tbaa !4
  %indvars.iv.next9.i = add nuw nsw i64 %indvars.iv8.i, 1
  %0 = trunc i64 %indvars.iv.next9.i to i16
  %rem22.i = urem i16 %0, 4000
  %conv3.i = uitofp i16 %rem22.i to double
  %div5.i = fdiv double %conv3.i, 4.000000e+03
  %arrayidx7.i = getelementptr inbounds double, double* %arraydecay5, i64 %indvars.iv8.i
  store double %div5.i, double* %arrayidx7.i, align 8, !tbaa !4
  %rem9.lhs.trunc.i = add i16 %rem.lhs.trunc.i, 3
  %rem93.i = urem i16 %rem9.lhs.trunc.i, 4000
  %conv10.i = uitofp i16 %rem93.i to double
  %div12.i = fdiv double %conv10.i, 4.000000e+03
  %arrayidx14.i = getelementptr inbounds double, double* %arraydecay6, i64 %indvars.iv8.i
  store double %div12.i, double* %arrayidx14.i, align 8, !tbaa !4
  %rem16.lhs.trunc.i = add i16 %rem.lhs.trunc.i, 4
  %rem164.i = urem i16 %rem16.lhs.trunc.i, 4000
  %conv17.i = uitofp i16 %rem164.i to double
  %div19.i = fdiv double %conv17.i, 4.000000e+03
  %arrayidx21.i = getelementptr inbounds double, double* %arraydecay7, i64 %indvars.iv8.i
  store double %div19.i, double* %arrayidx21.i, align 8, !tbaa !4
  br label %for.body25.i

for.body25.i:                                     ; preds = %for.body25.i, %for.body.i
  %indvars.iv.i = phi i64 [ 0, %for.body.i ], [ %indvars.iv.next.i, %for.body25.i ]
  %1 = mul nuw nsw i64 %indvars.iv.i, %indvars.iv8.i
  %2 = trunc i64 %1 to i32
  %rem26.i = urem i32 %2, 4000
  %conv27.i = sitofp i32 %rem26.i to double
  %div29.i = fdiv double %conv27.i, 4.000000e+03
  %arrayidx33.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay8, i64 %indvars.iv8.i, i64 %indvars.iv.i
  store double %div29.i, double* %arrayidx33.i, align 8, !tbaa !4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 4000
  br i1 %exitcond.not.i, label %for.cond.loopexit.i, label %for.body25.i, !llvm.loop !8

init_array.exit:                                  ; preds = %for.cond.loopexit.i
  tail call void (...) @polybench_timer_start() #6
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc12.i, %init_array.exit
  %indvars.iv5.i = phi i64 [ 0, %init_array.exit ], [ %indvars.iv.next6.i, %for.inc12.i ]
  %arrayidx.i41 = getelementptr inbounds double, double* %arraydecay, i64 %indvars.iv5.i
  %.pre.i = load double, double* %arrayidx.i41, align 8, !tbaa !4
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.body3.i, %for.cond1.preheader.i
  %3 = phi double [ %.pre.i, %for.cond1.preheader.i ], [ %add.i44.3, %for.body3.i ]
  %indvars.iv.i42 = phi i64 [ 0, %for.cond1.preheader.i ], [ %indvars.iv.next.i45.3, %for.body3.i ]
  %arrayidx7.i43 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay8, i64 %indvars.iv5.i, i64 %indvars.iv.i42
  %4 = load double, double* %arrayidx7.i43, align 8, !tbaa !4
  %arrayidx9.i = getelementptr inbounds double, double* %arraydecay6, i64 %indvars.iv.i42
  %5 = load double, double* %arrayidx9.i, align 8, !tbaa !4
  %mul.i = fmul double %4, %5
  %add.i44 = fadd double %3, %mul.i
  %indvars.iv.next.i45 = or i64 %indvars.iv.i42, 1
  %arrayidx7.i43.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay8, i64 %indvars.iv5.i, i64 %indvars.iv.next.i45
  %6 = load double, double* %arrayidx7.i43.1, align 8, !tbaa !4
  %arrayidx9.i.1 = getelementptr inbounds double, double* %arraydecay6, i64 %indvars.iv.next.i45
  %7 = load double, double* %arrayidx9.i.1, align 8, !tbaa !4
  %mul.i.1 = fmul double %6, %7
  %add.i44.1 = fadd double %add.i44, %mul.i.1
  %indvars.iv.next.i45.1 = or i64 %indvars.iv.i42, 2
  %arrayidx7.i43.2 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay8, i64 %indvars.iv5.i, i64 %indvars.iv.next.i45.1
  %8 = load double, double* %arrayidx7.i43.2, align 8, !tbaa !4
  %arrayidx9.i.2 = getelementptr inbounds double, double* %arraydecay6, i64 %indvars.iv.next.i45.1
  %9 = load double, double* %arrayidx9.i.2, align 8, !tbaa !4
  %mul.i.2 = fmul double %8, %9
  %add.i44.2 = fadd double %add.i44.1, %mul.i.2
  %indvars.iv.next.i45.2 = or i64 %indvars.iv.i42, 3
  %arrayidx7.i43.3 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay8, i64 %indvars.iv5.i, i64 %indvars.iv.next.i45.2
  %10 = load double, double* %arrayidx7.i43.3, align 8, !tbaa !4
  %arrayidx9.i.3 = getelementptr inbounds double, double* %arraydecay6, i64 %indvars.iv.next.i45.2
  %11 = load double, double* %arrayidx9.i.3, align 8, !tbaa !4
  %mul.i.3 = fmul double %10, %11
  %add.i44.3 = fadd double %add.i44.2, %mul.i.3
  %indvars.iv.next.i45.3 = add nuw nsw i64 %indvars.iv.i42, 4
  %exitcond.not.i46.3 = icmp eq i64 %indvars.iv.next.i45.3, 4000
  br i1 %exitcond.not.i46.3, label %for.inc12.i, label %for.body3.i, !llvm.loop !9

for.inc12.i:                                      ; preds = %for.body3.i
  store double %add.i44.3, double* %arrayidx.i41, align 8, !tbaa !4
  %indvars.iv.next6.i = add nuw nsw i64 %indvars.iv5.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next6.i, 4000
  br i1 %exitcond7.not.i, label %for.cond18.preheader.i, label %for.cond1.preheader.i, !llvm.loop !10

for.cond18.preheader.i:                           ; preds = %for.inc12.i, %for.inc36.i
  %indvars.iv11.i = phi i64 [ %indvars.iv.next12.i, %for.inc36.i ], [ 0, %for.inc12.i ]
  %arrayidx22.i = getelementptr inbounds double, double* %arraydecay5, i64 %indvars.iv11.i
  %.pre14.i = load double, double* %arrayidx22.i, align 8, !tbaa !4
  br label %for.body20.i

for.body20.i:                                     ; preds = %for.body20.i, %for.cond18.preheader.i
  %12 = phi double [ %.pre14.i, %for.cond18.preheader.i ], [ %add30.i.3, %for.body20.i ]
  %indvars.iv8.i47 = phi i64 [ 0, %for.cond18.preheader.i ], [ %indvars.iv.next9.i48.3, %for.body20.i ]
  %arrayidx26.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay8, i64 %indvars.iv8.i47, i64 %indvars.iv11.i
  %13 = load double, double* %arrayidx26.i, align 8, !tbaa !4
  %arrayidx28.i = getelementptr inbounds double, double* %arraydecay7, i64 %indvars.iv8.i47
  %14 = load double, double* %arrayidx28.i, align 8, !tbaa !4
  %mul29.i = fmul double %13, %14
  %add30.i = fadd double %12, %mul29.i
  %indvars.iv.next9.i48 = or i64 %indvars.iv8.i47, 1
  %arrayidx26.i.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay8, i64 %indvars.iv.next9.i48, i64 %indvars.iv11.i
  %15 = load double, double* %arrayidx26.i.1, align 8, !tbaa !4
  %arrayidx28.i.1 = getelementptr inbounds double, double* %arraydecay7, i64 %indvars.iv.next9.i48
  %16 = load double, double* %arrayidx28.i.1, align 8, !tbaa !4
  %mul29.i.1 = fmul double %15, %16
  %add30.i.1 = fadd double %add30.i, %mul29.i.1
  %indvars.iv.next9.i48.1 = or i64 %indvars.iv8.i47, 2
  %arrayidx26.i.2 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay8, i64 %indvars.iv.next9.i48.1, i64 %indvars.iv11.i
  %17 = load double, double* %arrayidx26.i.2, align 8, !tbaa !4
  %arrayidx28.i.2 = getelementptr inbounds double, double* %arraydecay7, i64 %indvars.iv.next9.i48.1
  %18 = load double, double* %arrayidx28.i.2, align 8, !tbaa !4
  %mul29.i.2 = fmul double %17, %18
  %add30.i.2 = fadd double %add30.i.1, %mul29.i.2
  %indvars.iv.next9.i48.2 = or i64 %indvars.iv8.i47, 3
  %arrayidx26.i.3 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay8, i64 %indvars.iv.next9.i48.2, i64 %indvars.iv11.i
  %19 = load double, double* %arrayidx26.i.3, align 8, !tbaa !4
  %arrayidx28.i.3 = getelementptr inbounds double, double* %arraydecay7, i64 %indvars.iv.next9.i48.2
  %20 = load double, double* %arrayidx28.i.3, align 8, !tbaa !4
  %mul29.i.3 = fmul double %19, %20
  %add30.i.3 = fadd double %add30.i.2, %mul29.i.3
  %indvars.iv.next9.i48.3 = add nuw nsw i64 %indvars.iv8.i47, 4
  %exitcond10.not.i49.3 = icmp eq i64 %indvars.iv.next9.i48.3, 4000
  br i1 %exitcond10.not.i49.3, label %for.inc36.i, label %for.body20.i, !llvm.loop !11

for.inc36.i:                                      ; preds = %for.body20.i
  store double %add30.i.3, double* %arrayidx22.i, align 8, !tbaa !4
  %indvars.iv.next12.i = add nuw nsw i64 %indvars.iv11.i, 1
  %exitcond13.not.i = icmp eq i64 %indvars.iv.next12.i, 4000
  br i1 %exitcond13.not.i, label %kernel_mvt.exit, label %for.cond18.preheader.i, !llvm.loop !12

kernel_mvt.exit:                                  ; preds = %for.inc36.i
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_mvt.exit
  %21 = load i8*, i8** %argv, align 8, !tbaa !13
  %strcmpload = load i8, i8* %21, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !13
  %23 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %22) #7
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !13
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #7
  br label %for.body.i52

for.body.i52:                                     ; preds = %if.end.i, %if.then
  %indvars.iv.i50 = phi i64 [ 0, %if.then ], [ %indvars.iv.next.i54, %if.end.i ]
  %i.04.i = phi i32 [ 0, %if.then ], [ %inc.i, %if.end.i ]
  %rem.lhs.trunc.i51 = trunc i32 %i.04.i to i16
  %rem2.i = urem i16 %rem.lhs.trunc.i51, 20
  %cmp2.i = icmp eq i16 %rem2.i, 0
  br i1 %cmp2.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i52
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !13
  %fputc1.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %25) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i52
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !13
  %arrayidx.i53 = getelementptr inbounds double, double* %arraydecay, i64 %indvars.iv.i50
  %27 = load double, double* %arrayidx.i53, align 8, !tbaa !4
  %call4.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %27) #7
  %indvars.iv.next.i54 = add nuw nsw i64 %indvars.iv.i50, 1
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i55 = icmp eq i64 %indvars.iv.next.i54, 4000
  br i1 %exitcond.not.i55, label %for.end.i, label %for.body.i52, !llvm.loop !15

for.end.i:                                        ; preds = %if.end.i
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !13
  %call5.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #7
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !13
  %call6.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #7
  br label %for.body9.i

for.body9.i:                                      ; preds = %if.end14.i, %for.end.i
  %indvars.iv6.i = phi i64 [ 0, %for.end.i ], [ %indvars.iv.next7.i, %if.end14.i ]
  %i.15.i = phi i32 [ 0, %for.end.i ], [ %inc19.i, %if.end14.i ]
  %rem10.lhs.trunc.i = trunc i32 %i.15.i to i16
  %rem103.i = urem i16 %rem10.lhs.trunc.i, 20
  %cmp11.i = icmp eq i16 %rem103.i, 0
  br i1 %cmp11.i, label %if.then12.i, label %if.end14.i

if.then12.i:                                      ; preds = %for.body9.i
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !13
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %30) #6
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then12.i, %for.body9.i
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !13
  %arrayidx16.i = getelementptr inbounds double, double* %arraydecay5, i64 %indvars.iv6.i
  %32 = load double, double* %arrayidx16.i, align 8, !tbaa !4
  %call17.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %32) #7
  %indvars.iv.next7.i = add nuw nsw i64 %indvars.iv6.i, 1
  %inc19.i = add nuw nsw i32 %i.15.i, 1
  %exitcond8.not.i = icmp eq i64 %indvars.iv.next7.i, 4000
  br i1 %exitcond8.not.i, label %print_array.exit, label %for.body9.i, !llvm.loop !16

print_array.exit:                                 ; preds = %if.end14.i
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !13
  %call21.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #7
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !13
  %35 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %34) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_mvt.exit
  tail call void @free(i8* %call.i) #6
  tail call void @free(i8* %call.i37) #6
  tail call void @free(i8* nonnull %call.i38) #6
  tail call void @free(i8* %call.i39) #6
  tail call void @free(i8* %call.i40) #6
  ret i32 0
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

attributes #0 = { nounwind uwtable "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inaccessiblemem_or_argmemonly nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inaccessiblememonly nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 13.0.0 (https://github.com/wsmoses/MLIR-GPU.git 19da7eee184e4d715d9870fe866ac10858e874d1)"}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.mustprogress"}
!4 = !{!5, !5, i64 0}
!5 = !{!"double", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !3}
!9 = distinct !{!9, !3}
!10 = distinct !{!10, !3}
!11 = distinct !{!11, !3}
!12 = distinct !{!12, !3}
!13 = !{!14, !14, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = distinct !{!15, !3}
!16 = distinct !{!16, !3}

; ModuleID = '2mm.c'
source_filename = "2mm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** nocapture readonly %argv) local_unnamed_addr #0 {
entry:
  %call.i = tail call noalias dereferenceable_or_null(23040000) i8* @malloc(i64 23040000) #6
  %call.i40 = tail call noalias dereferenceable_or_null(28160000) i8* @malloc(i64 28160000) #6
  %call.i41 = tail call noalias dereferenceable_or_null(31680000) i8* @malloc(i64 31680000) #6
  %call.i42 = tail call noalias dereferenceable_or_null(34560000) i8* @malloc(i64 34560000) #6
  %call.i43 = tail call noalias dereferenceable_or_null(30720000) i8* @malloc(i64 30720000) #6
  %arraydecay = bitcast i8* %call.i40 to [2200 x double]*
  %arraydecay6 = bitcast i8* %call.i42 to [2400 x double]*
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc7.i, %entry
  %indvars.iv11.i = phi i64 [ 0, %entry ], [ %indvars.iv.next12.i, %for.inc7.i ]
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.body3.i, %for.cond1.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.cond1.preheader.i ], [ %indvars.iv.next.i, %for.body3.i ]
  %0 = mul nuw nsw i64 %indvars.iv.i, %indvars.iv11.i
  %1 = trunc i64 %0 to i32
  %2 = add i32 %1, 1
  %rem.i = urem i32 %2, 1600
  %conv.i = sitofp i32 %rem.i to double
  %div.i = fdiv double %conv.i, 1.600000e+03
  %arrayidx6.i = getelementptr inbounds [2200 x double], [2200 x double]* %arraydecay, i64 %indvars.iv11.i, i64 %indvars.iv.i
  store double %div.i, double* %arrayidx6.i, align 8, !tbaa !2
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 2200
  br i1 %exitcond.not.i, label %for.inc7.i, label %for.body3.i, !llvm.loop !6

for.inc7.i:                                       ; preds = %for.body3.i
  %indvars.iv.next12.i = add nuw nsw i64 %indvars.iv11.i, 1
  %exitcond13.not.i = icmp eq i64 %indvars.iv.next12.i, 1600
  br i1 %exitcond13.not.i, label %for.cond14.preheader.i.preheader, label %for.cond1.preheader.i, !llvm.loop !8

for.cond14.preheader.i.preheader:                 ; preds = %for.inc7.i
  %arraydecay5 = bitcast i8* %call.i41 to [1800 x double]*
  br label %for.cond14.preheader.i

for.cond14.preheader.i:                           ; preds = %for.cond14.preheader.i.preheader, %for.inc31.i
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i, %for.inc31.i ], [ 0, %for.cond14.preheader.i.preheader ]
  br label %for.body17.i

for.body17.i:                                     ; preds = %for.body17.i, %for.cond14.preheader.i
  %indvars.iv14.i = phi i64 [ 0, %for.cond14.preheader.i ], [ %indvars.iv.next15.i, %for.body17.i ]
  %indvars.iv.next15.i = add nuw nsw i64 %indvars.iv14.i, 1
  %3 = mul nuw nsw i64 %indvars.iv.next15.i, %indvars.iv18.i
  %4 = trunc i64 %3 to i32
  %rem20.i = urem i32 %4, 1800
  %conv21.i = sitofp i32 %rem20.i to double
  %div23.i = fdiv double %conv21.i, 1.800000e+03
  %arrayidx27.i = getelementptr inbounds [1800 x double], [1800 x double]* %arraydecay5, i64 %indvars.iv18.i, i64 %indvars.iv14.i
  store double %div23.i, double* %arrayidx27.i, align 8, !tbaa !2
  %exitcond17.not.i = icmp eq i64 %indvars.iv.next15.i, 1800
  br i1 %exitcond17.not.i, label %for.inc31.i, label %for.body17.i, !llvm.loop !9

for.inc31.i:                                      ; preds = %for.body17.i
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1
  %exitcond20.not.i = icmp eq i64 %indvars.iv.next19.i, 2200
  br i1 %exitcond20.not.i, label %for.cond38.preheader.i, label %for.cond14.preheader.i, !llvm.loop !10

for.cond38.preheader.i:                           ; preds = %for.inc31.i, %for.inc56.i
  %indvars.iv27.i = phi i64 [ %indvars.iv.next28.i, %for.inc56.i ], [ 0, %for.inc31.i ]
  br label %for.body41.i

for.body41.i:                                     ; preds = %for.body41.i, %for.cond38.preheader.i
  %indvars.iv21.i = phi i64 [ 0, %for.cond38.preheader.i ], [ %indvars.iv.next22.i, %for.body41.i ]
  %5 = add nuw nsw i64 %indvars.iv21.i, 3
  %6 = mul nuw nsw i64 %5, %indvars.iv27.i
  %7 = trunc i64 %6 to i32
  %8 = add i32 %7, 1
  %rem45.i = urem i32 %8, 2400
  %conv46.i = sitofp i32 %rem45.i to double
  %div48.i = fdiv double %conv46.i, 2.400000e+03
  %arrayidx52.i = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay6, i64 %indvars.iv27.i, i64 %indvars.iv21.i
  store double %div48.i, double* %arrayidx52.i, align 8, !tbaa !2
  %indvars.iv.next22.i = add nuw nsw i64 %indvars.iv21.i, 1
  %exitcond26.not.i = icmp eq i64 %indvars.iv.next22.i, 2400
  br i1 %exitcond26.not.i, label %for.inc56.i, label %for.body41.i, !llvm.loop !11

for.inc56.i:                                      ; preds = %for.body41.i
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i, 1
  %exitcond29.not.i = icmp eq i64 %indvars.iv.next28.i, 1800
  br i1 %exitcond29.not.i, label %for.cond63.preheader.i.preheader, label %for.cond38.preheader.i, !llvm.loop !12

for.cond63.preheader.i.preheader:                 ; preds = %for.inc56.i
  %arraydecay7 = bitcast i8* %call.i43 to [2400 x double]*
  br label %for.cond63.preheader.i

for.cond63.preheader.i:                           ; preds = %for.cond63.preheader.i.preheader, %for.inc80.i
  %indvars.iv35.i = phi i64 [ %indvars.iv.next36.i, %for.inc80.i ], [ 0, %for.cond63.preheader.i.preheader ]
  br label %for.body66.i

for.body66.i:                                     ; preds = %for.body66.i, %for.cond63.preheader.i
  %indvars.iv30.i = phi i64 [ 0, %for.cond63.preheader.i ], [ %indvars.iv.next31.i, %for.body66.i ]
  %9 = add nuw nsw i64 %indvars.iv30.i, 2
  %10 = mul nuw nsw i64 %9, %indvars.iv35.i
  %11 = trunc i64 %10 to i32
  %rem69.i = urem i32 %11, 2200
  %conv70.i = sitofp i32 %rem69.i to double
  %div72.i = fdiv double %conv70.i, 2.200000e+03
  %arrayidx76.i = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv35.i, i64 %indvars.iv30.i
  store double %div72.i, double* %arrayidx76.i, align 8, !tbaa !2
  %indvars.iv.next31.i = add nuw nsw i64 %indvars.iv30.i, 1
  %exitcond34.not.i = icmp eq i64 %indvars.iv.next31.i, 2400
  br i1 %exitcond34.not.i, label %for.inc80.i, label %for.body66.i, !llvm.loop !13

for.inc80.i:                                      ; preds = %for.body66.i
  %indvars.iv.next36.i = add nuw nsw i64 %indvars.iv35.i, 1
  %exitcond37.not.i = icmp eq i64 %indvars.iv.next36.i, 1600
  br i1 %exitcond37.not.i, label %init_array.exit, label %for.cond63.preheader.i, !llvm.loop !14

init_array.exit:                                  ; preds = %for.inc80.i
  tail call void (...) @polybench_timer_start() #6
  %arraydecay8 = bitcast i8* %call.i to [1800 x double]*
  br label %for.cond1.preheader.i45

for.cond1.preheader.i45:                          ; preds = %for.inc25.i, %init_array.exit
  %indvars.iv11.i44 = phi i64 [ 0, %init_array.exit ], [ %indvars.iv.next12.i50, %for.inc25.i ]
  br label %for.body3.i46

for.body3.i46:                                    ; preds = %for.inc22.i, %for.cond1.preheader.i45
  %indvars.iv8.i = phi i64 [ 0, %for.cond1.preheader.i45 ], [ %indvars.iv.next9.i, %for.inc22.i ]
  %arrayidx5.i = getelementptr inbounds [1800 x double], [1800 x double]* %arraydecay8, i64 %indvars.iv11.i44, i64 %indvars.iv8.i
  store double 0.000000e+00, double* %arrayidx5.i, align 8, !tbaa !2
  br label %for.body8.i

for.body8.i:                                      ; preds = %for.body8.i, %for.body3.i46
  %12 = phi double [ 0.000000e+00, %for.body3.i46 ], [ %add.i.1, %for.body8.i ]
  %indvars.iv.i47 = phi i64 [ 0, %for.body3.i46 ], [ %indvars.iv.next.i48.1, %for.body8.i ]
  %arrayidx12.i = getelementptr inbounds [2200 x double], [2200 x double]* %arraydecay, i64 %indvars.iv11.i44, i64 %indvars.iv.i47
  %13 = load double, double* %arrayidx12.i, align 8, !tbaa !2
  %mul.i = fmul double %13, 1.500000e+00
  %arrayidx16.i = getelementptr inbounds [1800 x double], [1800 x double]* %arraydecay5, i64 %indvars.iv.i47, i64 %indvars.iv8.i
  %14 = load double, double* %arrayidx16.i, align 8, !tbaa !2
  %mul17.i = fmul double %mul.i, %14
  %add.i = fadd double %12, %mul17.i
  %indvars.iv.next.i48 = or i64 %indvars.iv.i47, 1
  %arrayidx12.i.1 = getelementptr inbounds [2200 x double], [2200 x double]* %arraydecay, i64 %indvars.iv11.i44, i64 %indvars.iv.next.i48
  %15 = load double, double* %arrayidx12.i.1, align 8, !tbaa !2
  %mul.i.1 = fmul double %15, 1.500000e+00
  %arrayidx16.i.1 = getelementptr inbounds [1800 x double], [1800 x double]* %arraydecay5, i64 %indvars.iv.next.i48, i64 %indvars.iv8.i
  %16 = load double, double* %arrayidx16.i.1, align 8, !tbaa !2
  %mul17.i.1 = fmul double %mul.i.1, %16
  %add.i.1 = fadd double %add.i, %mul17.i.1
  %indvars.iv.next.i48.1 = add nuw nsw i64 %indvars.iv.i47, 2
  %exitcond.not.i49.1 = icmp eq i64 %indvars.iv.next.i48.1, 2200
  br i1 %exitcond.not.i49.1, label %for.inc22.i, label %for.body8.i, !llvm.loop !15

for.inc22.i:                                      ; preds = %for.body8.i
  store double %add.i.1, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next9.i = add nuw nsw i64 %indvars.iv8.i, 1
  %exitcond10.not.i = icmp eq i64 %indvars.iv.next9.i, 1800
  br i1 %exitcond10.not.i, label %for.inc25.i, label %for.body3.i46, !llvm.loop !16

for.inc25.i:                                      ; preds = %for.inc22.i
  %indvars.iv.next12.i50 = add nuw nsw i64 %indvars.iv11.i44, 1
  %exitcond13.not.i51 = icmp eq i64 %indvars.iv.next12.i50, 1600
  br i1 %exitcond13.not.i51, label %for.cond31.preheader.i, label %for.cond1.preheader.i45, !llvm.loop !17

for.cond31.preheader.i:                           ; preds = %for.inc25.i, %for.inc62.i
  %indvars.iv20.i = phi i64 [ %indvars.iv.next21.i, %for.inc62.i ], [ 0, %for.inc25.i ]
  br label %for.body33.i

for.body33.i:                                     ; preds = %for.inc59.i, %for.cond31.preheader.i
  %indvars.iv17.i = phi i64 [ 0, %for.cond31.preheader.i ], [ %indvars.iv.next18.i, %for.inc59.i ]
  %arrayidx37.i = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv20.i, i64 %indvars.iv17.i
  %17 = load double, double* %arrayidx37.i, align 8, !tbaa !2
  %mul38.i = fmul double %17, 1.200000e+00
  store double %mul38.i, double* %arrayidx37.i, align 8, !tbaa !2
  br label %for.body41.i54

for.body41.i54:                                   ; preds = %for.body41.i54, %for.body33.i
  %18 = phi double [ %mul38.i, %for.body33.i ], [ %add55.i.2, %for.body41.i54 ]
  %indvars.iv14.i52 = phi i64 [ 0, %for.body33.i ], [ %indvars.iv.next15.i53.2, %for.body41.i54 ]
  %arrayidx45.i = getelementptr inbounds [1800 x double], [1800 x double]* %arraydecay8, i64 %indvars.iv20.i, i64 %indvars.iv14.i52
  %19 = load double, double* %arrayidx45.i, align 8, !tbaa !2
  %arrayidx49.i = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay6, i64 %indvars.iv14.i52, i64 %indvars.iv17.i
  %20 = load double, double* %arrayidx49.i, align 8, !tbaa !2
  %mul50.i = fmul double %19, %20
  %add55.i = fadd double %18, %mul50.i
  %indvars.iv.next15.i53 = add nuw nsw i64 %indvars.iv14.i52, 1
  %arrayidx45.i.1 = getelementptr inbounds [1800 x double], [1800 x double]* %arraydecay8, i64 %indvars.iv20.i, i64 %indvars.iv.next15.i53
  %21 = load double, double* %arrayidx45.i.1, align 8, !tbaa !2
  %arrayidx49.i.1 = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay6, i64 %indvars.iv.next15.i53, i64 %indvars.iv17.i
  %22 = load double, double* %arrayidx49.i.1, align 8, !tbaa !2
  %mul50.i.1 = fmul double %21, %22
  %add55.i.1 = fadd double %add55.i, %mul50.i.1
  %indvars.iv.next15.i53.1 = add nuw nsw i64 %indvars.iv14.i52, 2
  %arrayidx45.i.2 = getelementptr inbounds [1800 x double], [1800 x double]* %arraydecay8, i64 %indvars.iv20.i, i64 %indvars.iv.next15.i53.1
  %23 = load double, double* %arrayidx45.i.2, align 8, !tbaa !2
  %arrayidx49.i.2 = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay6, i64 %indvars.iv.next15.i53.1, i64 %indvars.iv17.i
  %24 = load double, double* %arrayidx49.i.2, align 8, !tbaa !2
  %mul50.i.2 = fmul double %23, %24
  %add55.i.2 = fadd double %add55.i.1, %mul50.i.2
  %indvars.iv.next15.i53.2 = add nuw nsw i64 %indvars.iv14.i52, 3
  %exitcond16.not.i.2 = icmp eq i64 %indvars.iv.next15.i53.2, 1800
  br i1 %exitcond16.not.i.2, label %for.inc59.i, label %for.body41.i54, !llvm.loop !18

for.inc59.i:                                      ; preds = %for.body41.i54
  store double %add55.i.2, double* %arrayidx37.i, align 8, !tbaa !2
  %indvars.iv.next18.i = add nuw nsw i64 %indvars.iv17.i, 1
  %exitcond19.not.i = icmp eq i64 %indvars.iv.next18.i, 2400
  br i1 %exitcond19.not.i, label %for.inc62.i, label %for.body33.i, !llvm.loop !19

for.inc62.i:                                      ; preds = %for.inc59.i
  %indvars.iv.next21.i = add nuw nsw i64 %indvars.iv20.i, 1
  %exitcond22.not.i = icmp eq i64 %indvars.iv.next21.i, 1600
  br i1 %exitcond22.not.i, label %kernel_2mm.exit, label %for.cond31.preheader.i, !llvm.loop !20

kernel_2mm.exit:                                  ; preds = %for.inc62.i
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_2mm.exit
  %25 = load i8*, i8** %argv, align 8, !tbaa !21
  %strcmpload = load i8, i8* %25, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !21
  %27 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %26) #7
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !21
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.inc10.i, %if.then
  %indvars.iv4.i = phi i64 [ 0, %if.then ], [ %indvars.iv.next5.i, %for.inc10.i ]
  %29 = mul nuw nsw i64 %indvars.iv4.i, 1600
  br label %for.body4.i

for.body4.i:                                      ; preds = %if.end.i, %for.cond2.preheader.i
  %indvars.iv.i55 = phi i64 [ 0, %for.cond2.preheader.i ], [ %indvars.iv.next.i57, %if.end.i ]
  %30 = add nuw nsw i64 %indvars.iv.i55, %29
  %31 = trunc i64 %30 to i32
  %rem.i56 = urem i32 %31, 20
  %cmp5.i = icmp eq i32 %rem.i56, 0
  br i1 %cmp5.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body4.i
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !21
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %32) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !21
  %arrayidx8.i = getelementptr inbounds [2400 x double], [2400 x double]* %arraydecay7, i64 %indvars.iv4.i, i64 %indvars.iv.i55
  %34 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %34) #7
  %indvars.iv.next.i57 = add nuw nsw i64 %indvars.iv.i55, 1
  %exitcond.not.i58 = icmp eq i64 %indvars.iv.next.i57, 2400
  br i1 %exitcond.not.i58, label %for.inc10.i, label %for.body4.i, !llvm.loop !23

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 1600
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !24

print_array.exit:                                 ; preds = %for.inc10.i
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !21
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !21
  %37 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %36) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_2mm.exit
  tail call void @free(i8* %call.i) #6
  tail call void @free(i8* %call.i40) #6
  tail call void @free(i8* %call.i41) #6
  tail call void @free(i8* %call.i42) #6
  tail call void @free(i8* nonnull %call.i43) #6
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
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = !{!22, !22, i64 0}
!22 = !{!"any pointer", !4, i64 0}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}

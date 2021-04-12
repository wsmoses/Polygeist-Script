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
entry:
  %call.i = tail call noalias dereferenceable_or_null(41600000) i8* @malloc(i64 41600000) #8
  %call.i30 = tail call noalias dereferenceable_or_null(54080000) i8* @malloc(i64 54080000) #8
  %call.i31 = tail call noalias dereferenceable_or_null(41600000) i8* @malloc(i64 41600000) #8
  %arraydecay = bitcast i8* %call.i to [2600 x double]*
  %arraydecay3 = bitcast i8* %call.i30 to [2600 x double]*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(41600000) %call.i31, i8 0, i64 41600000, i1 false)
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc12.i, %entry
  %indvars.iv7.i = phi i64 [ 0, %entry ], [ %indvars.iv.next8.i, %for.inc12.i ]
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
  %arraydecay4 = bitcast i8* %call.i31 to [2600 x double]*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(54080000) %call.i30, i8 0, i64 54080000, i1 false) #8
  tail call void (...) @polybench_timer_start() #8
  br label %for.cond1.preheader.i32

for.cond.loopexit.i:                              ; preds = %for.inc83.i, %for.end31.i
  %indvars.iv.next20.i = add nuw nsw i64 %indvars.iv19.i, 1
  %exitcond26.not.i = icmp eq i64 %indvars.iv.next25.i, 2600
  br i1 %exitcond26.not.i, label %kernel_gramschmidt.exit, label %for.cond1.preheader.i32, !llvm.loop !9

for.cond1.preheader.i32:                          ; preds = %for.cond.loopexit.i, %init_array.exit
  %indvars.iv24.i = phi i64 [ 0, %init_array.exit ], [ %indvars.iv.next25.i, %for.cond.loopexit.i ]
  %indvars.iv19.i = phi i64 [ 1, %init_array.exit ], [ %indvars.iv.next20.i, %for.cond.loopexit.i ]
  br label %for.body3.i37

for.body3.i37:                                    ; preds = %for.body3.i37, %for.cond1.preheader.i32
  %indvars.iv.i33 = phi i64 [ 0, %for.cond1.preheader.i32 ], [ %indvars.iv.next.i35.4, %for.body3.i37 ]
  %nrm.02.i = phi double [ 0.000000e+00, %for.cond1.preheader.i32 ], [ %add.i34.4, %for.body3.i37 ]
  %arrayidx5.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv.i33, i64 %indvars.iv24.i
  %2 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul double %2, %2
  %add.i34 = fadd double %nrm.02.i, %mul.i
  %indvars.iv.next.i35 = add nuw nsw i64 %indvars.iv.i33, 1
  %arrayidx5.i.1 = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv.next.i35, i64 %indvars.iv24.i
  %3 = load double, double* %arrayidx5.i.1, align 8, !tbaa !2
  %mul.i.1 = fmul double %3, %3
  %add.i34.1 = fadd double %add.i34, %mul.i.1
  %indvars.iv.next.i35.1 = add nuw nsw i64 %indvars.iv.i33, 2
  %arrayidx5.i.2 = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv.next.i35.1, i64 %indvars.iv24.i
  %4 = load double, double* %arrayidx5.i.2, align 8, !tbaa !2
  %mul.i.2 = fmul double %4, %4
  %add.i34.2 = fadd double %add.i34.1, %mul.i.2
  %indvars.iv.next.i35.2 = add nuw nsw i64 %indvars.iv.i33, 3
  %arrayidx5.i.3 = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv.next.i35.2, i64 %indvars.iv24.i
  %5 = load double, double* %arrayidx5.i.3, align 8, !tbaa !2
  %mul.i.3 = fmul double %5, %5
  %add.i34.3 = fadd double %add.i34.2, %mul.i.3
  %indvars.iv.next.i35.3 = add nuw nsw i64 %indvars.iv.i33, 4
  %arrayidx5.i.4 = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv.next.i35.3, i64 %indvars.iv24.i
  %6 = load double, double* %arrayidx5.i.4, align 8, !tbaa !2
  %mul.i.4 = fmul double %6, %6
  %add.i34.4 = fadd double %add.i34.3, %mul.i.4
  %indvars.iv.next.i35.4 = add nuw nsw i64 %indvars.iv.i33, 5
  %exitcond.not.i36.4 = icmp eq i64 %indvars.iv.next.i35.4, 2000
  br i1 %exitcond.not.i36.4, label %for.end.i, label %for.body3.i37, !llvm.loop !10

for.end.i:                                        ; preds = %for.body3.i37
  %call.i38 = tail call double @sqrt(double %add.i34.4) #8
  %arrayidx13.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay3, i64 %indvars.iv24.i, i64 %indvars.iv24.i
  store double %call.i38, double* %arrayidx13.i, align 8, !tbaa !2
  br label %for.body16.i

for.body16.i:                                     ; preds = %for.body16.i, %for.end.i
  %indvars.iv9.i = phi i64 [ 0, %for.end.i ], [ %indvars.iv.next10.i.1, %for.body16.i ]
  %arrayidx20.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv9.i, i64 %indvars.iv24.i
  %7 = load double, double* %arrayidx20.i, align 8, !tbaa !2
  %div.i39 = fdiv double %7, %call.i38
  %arrayidx28.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay4, i64 %indvars.iv9.i, i64 %indvars.iv24.i
  store double %div.i39, double* %arrayidx28.i, align 8, !tbaa !2
  %indvars.iv.next10.i = or i64 %indvars.iv9.i, 1
  %arrayidx20.i.1 = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv.next10.i, i64 %indvars.iv24.i
  %8 = load double, double* %arrayidx20.i.1, align 8, !tbaa !2
  %div.i39.1 = fdiv double %8, %call.i38
  %arrayidx28.i.1 = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay4, i64 %indvars.iv.next10.i, i64 %indvars.iv24.i
  store double %div.i39.1, double* %arrayidx28.i.1, align 8, !tbaa !2
  %indvars.iv.next10.i.1 = add nuw nsw i64 %indvars.iv9.i, 2
  %exitcond11.not.i.1 = icmp eq i64 %indvars.iv.next10.i.1, 2000
  br i1 %exitcond11.not.i.1, label %for.end31.i, label %for.body16.i, !llvm.loop !11

for.end31.i:                                      ; preds = %for.body16.i
  %indvars.iv.next25.i = add nuw nsw i64 %indvars.iv24.i, 1
  %cmp346.i = icmp ult i64 %indvars.iv24.i, 2599
  br i1 %cmp346.i, label %for.body35.i, label %for.cond.loopexit.i

for.body35.i:                                     ; preds = %for.end31.i, %for.inc83.i
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.inc83.i ], [ %indvars.iv19.i, %for.end31.i ]
  %arrayidx39.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay3, i64 %indvars.iv24.i, i64 %indvars.iv21.i
  store double 0.000000e+00, double* %arrayidx39.i, align 8, !tbaa !2
  br label %for.body42.i

for.body42.i:                                     ; preds = %for.body42.i, %for.body35.i
  %9 = phi double [ 0.000000e+00, %for.body35.i ], [ %add56.i.1, %for.body42.i ]
  %indvars.iv12.i = phi i64 [ 0, %for.body35.i ], [ %indvars.iv.next13.i.1, %for.body42.i ]
  %arrayidx46.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay4, i64 %indvars.iv12.i, i64 %indvars.iv24.i
  %10 = load double, double* %arrayidx46.i, align 8, !tbaa !2
  %arrayidx50.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv12.i, i64 %indvars.iv21.i
  %11 = load double, double* %arrayidx50.i, align 8, !tbaa !2
  %mul51.i = fmul double %10, %11
  %add56.i = fadd double %9, %mul51.i
  %indvars.iv.next13.i = or i64 %indvars.iv12.i, 1
  %arrayidx46.i.1 = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay4, i64 %indvars.iv.next13.i, i64 %indvars.iv24.i
  %12 = load double, double* %arrayidx46.i.1, align 8, !tbaa !2
  %arrayidx50.i.1 = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv.next13.i, i64 %indvars.iv21.i
  %13 = load double, double* %arrayidx50.i.1, align 8, !tbaa !2
  %mul51.i.1 = fmul double %12, %13
  %add56.i.1 = fadd double %add56.i, %mul51.i.1
  %indvars.iv.next13.i.1 = add nuw nsw i64 %indvars.iv12.i, 2
  %exitcond14.not.i.1 = icmp eq i64 %indvars.iv.next13.i.1, 2000
  br i1 %exitcond14.not.i.1, label %for.body62.i.preheader, label %for.body42.i, !llvm.loop !12

for.body62.i.preheader:                           ; preds = %for.body42.i
  store double %add56.i.1, double* %arrayidx39.i, align 8, !tbaa !2
  br label %for.body62.i

for.body62.i:                                     ; preds = %for.body62.i, %for.body62.i.preheader
  %indvars.iv15.i = phi i64 [ 0, %for.body62.i.preheader ], [ %indvars.iv.next16.i.1, %for.body62.i ]
  %arrayidx66.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv15.i, i64 %indvars.iv21.i
  %14 = load double, double* %arrayidx66.i, align 8, !tbaa !2
  %arrayidx70.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay4, i64 %indvars.iv15.i, i64 %indvars.iv24.i
  %15 = load double, double* %arrayidx70.i, align 8, !tbaa !2
  %mul75.i = fmul double %add56.i.1, %15
  %sub.i = fsub double %14, %mul75.i
  store double %sub.i, double* %arrayidx66.i, align 8, !tbaa !2
  %indvars.iv.next16.i = or i64 %indvars.iv15.i, 1
  %arrayidx66.i.1 = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv.next16.i, i64 %indvars.iv21.i
  %16 = load double, double* %arrayidx66.i.1, align 8, !tbaa !2
  %arrayidx70.i.1 = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay4, i64 %indvars.iv.next16.i, i64 %indvars.iv24.i
  %17 = load double, double* %arrayidx70.i.1, align 8, !tbaa !2
  %mul75.i.1 = fmul double %add56.i.1, %17
  %sub.i.1 = fsub double %16, %mul75.i.1
  store double %sub.i.1, double* %arrayidx66.i.1, align 8, !tbaa !2
  %indvars.iv.next16.i.1 = add nuw nsw i64 %indvars.iv15.i, 2
  %exitcond17.not.i.1 = icmp eq i64 %indvars.iv.next16.i.1, 2000
  br i1 %exitcond17.not.i.1, label %for.inc83.i, label %for.body62.i, !llvm.loop !13

for.inc83.i:                                      ; preds = %for.body62.i
  %indvars.iv.next22.i = add nuw nsw i64 %indvars.iv21.i, 1
  %exitcond23.not.i = icmp eq i64 %indvars.iv.next22.i, 2600
  br i1 %exitcond23.not.i, label %for.cond.loopexit.i, label %for.body35.i, !llvm.loop !14

kernel_gramschmidt.exit:                          ; preds = %for.cond.loopexit.i
  tail call void (...) @polybench_timer_stop() #8
  tail call void (...) @polybench_timer_print() #8
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_gramschmidt.exit
  %18 = load i8*, i8** %argv, align 8, !tbaa !15
  %strcmpload = load i8, i8* %18, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !15
  %20 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %19) #9
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !15
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #9
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.inc10.i, %if.then
  %indvars.iv7.i40 = phi i64 [ 0, %if.then ], [ %indvars.iv.next8.i45, %for.inc10.i ]
  %22 = mul nuw nsw i64 %indvars.iv7.i40, 2600
  br label %for.body4.i

for.body4.i:                                      ; preds = %if.end.i, %for.cond2.preheader.i
  %indvars.iv.i41 = phi i64 [ 0, %for.cond2.preheader.i ], [ %indvars.iv.next.i43, %if.end.i ]
  %23 = add nuw nsw i64 %indvars.iv.i41, %22
  %24 = trunc i64 %23 to i32
  %rem.i42 = urem i32 %24, 20
  %cmp5.i = icmp eq i32 %rem.i42, 0
  br i1 %cmp5.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body4.i
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !15
  %fputc1.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %25) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !15
  %arrayidx8.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay3, i64 %indvars.iv7.i40, i64 %indvars.iv.i41
  %27 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %27) #9
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i41, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 2600
  br i1 %exitcond.not.i44, label %for.inc10.i, label %for.body4.i, !llvm.loop !17

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next8.i45 = add nuw nsw i64 %indvars.iv7.i40, 1
  %exitcond10.not.i = icmp eq i64 %indvars.iv.next8.i45, 2600
  br i1 %exitcond10.not.i, label %for.end12.i, label %for.cond2.preheader.i, !llvm.loop !18

for.end12.i:                                      ; preds = %for.inc10.i
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !15
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #9
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !15
  %call14.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #9
  br label %for.cond18.preheader.i

for.cond18.preheader.i:                           ; preds = %for.inc36.i, %for.end12.i
  %indvars.iv15.i46 = phi i64 [ 0, %for.end12.i ], [ %indvars.iv.next16.i48, %for.inc36.i ]
  %30 = mul nuw nsw i64 %indvars.iv15.i46, 2600
  br label %for.body20.i

for.body20.i:                                     ; preds = %if.end27.i, %for.cond18.preheader.i
  %indvars.iv11.i = phi i64 [ 0, %for.cond18.preheader.i ], [ %indvars.iv.next12.i, %if.end27.i ]
  %31 = add nuw nsw i64 %indvars.iv11.i, %30
  %32 = trunc i64 %31 to i32
  %rem23.i = urem i32 %32, 20
  %cmp24.i = icmp eq i32 %rem23.i, 0
  br i1 %cmp24.i, label %if.then25.i, label %if.end27.i

if.then25.i:                                      ; preds = %for.body20.i
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !15
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %33) #8
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then25.i, %for.body20.i
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !15
  %arrayidx31.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay4, i64 %indvars.iv15.i46, i64 %indvars.iv11.i
  %35 = load double, double* %arrayidx31.i, align 8, !tbaa !2
  %call32.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %35) #9
  %indvars.iv.next12.i = add nuw nsw i64 %indvars.iv11.i, 1
  %exitcond14.not.i47 = icmp eq i64 %indvars.iv.next12.i, 2600
  br i1 %exitcond14.not.i47, label %for.inc36.i, label %for.body20.i, !llvm.loop !19

for.inc36.i:                                      ; preds = %if.end27.i
  %indvars.iv.next16.i48 = add nuw nsw i64 %indvars.iv15.i46, 1
  %exitcond18.not.i = icmp eq i64 %indvars.iv.next16.i48, 2000
  br i1 %exitcond18.not.i, label %print_array.exit, label %for.cond18.preheader.i, !llvm.loop !20

print_array.exit:                                 ; preds = %for.inc36.i
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !15
  %call39.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #9
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !15
  %38 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %37) #9
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_gramschmidt.exit
  tail call void @free(i8* %call.i) #8
  tail call void @free(i8* %call.i30) #8
  tail call void @free(i8* nonnull %call.i31) #8
  ret i32 0
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

attributes #0 = { nounwind uwtable "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inaccessiblemem_or_argmemonly nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inaccessiblememonly nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
!15 = !{!16, !16, i64 0}
!16 = !{!"any pointer", !4, i64 0}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}

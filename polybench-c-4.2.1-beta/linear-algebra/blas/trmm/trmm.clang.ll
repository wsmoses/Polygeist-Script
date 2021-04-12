; ModuleID = 'trmm.c'
source_filename = "trmm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** nocapture readonly %argv) local_unnamed_addr #0 {
entry:
  %call.i = tail call noalias dereferenceable_or_null(32000000) i8* @malloc(i64 32000000) #6
  %call.i20 = tail call noalias dereferenceable_or_null(41600000) i8* @malloc(i64 41600000) #6
  %arraydecay = bitcast i8* %call.i to [2000 x double]*
  %arraydecay2 = bitcast i8* %call.i20 to [2600 x double]*
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc27.i, %entry
  %indvars.iv10.i = phi i64 [ 0, %entry ], [ %indvars.iv.next11.i, %for.inc27.i ]
  %cmp21.not.i = icmp eq i64 %indvars.iv10.i, 0
  br i1 %cmp21.not.i, label %for.end.i, label %for.body3.i

for.body3.i:                                      ; preds = %for.cond1.preheader.i, %for.body3.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body3.i ], [ 0, %for.cond1.preheader.i ]
  %0 = add nuw nsw i64 %indvars.iv.i, %indvars.iv10.i
  %1 = trunc i64 %0 to i32
  %rem.i = urem i32 %1, 2000
  %conv.i = sitofp i32 %rem.i to double
  %div.i = fdiv double %conv.i, 2.000000e+03
  %arrayidx6.i = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay, i64 %indvars.iv10.i, i64 %indvars.iv.i
  store double %div.i, double* %arrayidx6.i, align 8, !tbaa !2
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %indvars.iv10.i
  br i1 %exitcond.not.i, label %for.end.i, label %for.body3.i, !llvm.loop !6

for.end.i:                                        ; preds = %for.body3.i, %for.cond1.preheader.i
  %arrayidx10.i = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay, i64 %indvars.iv10.i, i64 %indvars.iv10.i
  store double 1.000000e+00, double* %arrayidx10.i, align 8, !tbaa !2
  %2 = add nuw nsw i64 %indvars.iv10.i, 2600
  br label %for.body14.i

for.body14.i:                                     ; preds = %for.body14.i, %for.end.i
  %indvars.iv6.i = phi i64 [ 0, %for.end.i ], [ %indvars.iv.next7.i, %for.body14.i ]
  %3 = sub nuw nsw i64 %2, %indvars.iv6.i
  %4 = trunc i64 %3 to i32
  %rem16.urem.i = urem i32 %4, 2600
  %conv17.i = sitofp i32 %rem16.urem.i to double
  %div19.i = fdiv double %conv17.i, 2.600000e+03
  %arrayidx23.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay2, i64 %indvars.iv10.i, i64 %indvars.iv6.i
  store double %div19.i, double* %arrayidx23.i, align 8, !tbaa !2
  %indvars.iv.next7.i = add nuw nsw i64 %indvars.iv6.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next7.i, 2600
  br i1 %exitcond9.not.i, label %for.inc27.i, label %for.body14.i, !llvm.loop !8

for.inc27.i:                                      ; preds = %for.body14.i
  %indvars.iv.next11.i = add nuw nsw i64 %indvars.iv10.i, 1
  %exitcond13.not.i = icmp eq i64 %indvars.iv.next11.i, 2000
  br i1 %exitcond13.not.i, label %init_array.exit, label %for.cond1.preheader.i, !llvm.loop !9

init_array.exit:                                  ; preds = %for.inc27.i
  tail call void (...) @polybench_timer_start() #6
  br label %for.cond1.preheader.i21

for.cond1.preheader.i21:                          ; preds = %for.inc30.i, %init_array.exit
  %indvars.iv8.i = phi i64 [ 0, %init_array.exit ], [ %indvars.iv.next9.i, %for.inc30.i ]
  %5 = sub nsw i64 1, %indvars.iv8.i
  %cmp52.i = icmp ult i64 %indvars.iv8.i, 1999
  br i1 %cmp52.i, label %for.cond4.preheader.us.i.preheader, label %vector.body

for.cond4.preheader.us.i.preheader:               ; preds = %for.cond1.preheader.i21
  %xtraiter = and i64 %5, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %indvars.iv.next11.i23.prol = add nuw nsw i64 %indvars.iv8.i, 1
  %arrayidx8.us.i.prol = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay, i64 %indvars.iv.next11.i23.prol, i64 %indvars.iv8.i
  %6 = icmp eq i64 %indvars.iv8.i, 1998
  br label %for.cond4.preheader.us.i

vector.body:                                      ; preds = %for.cond1.preheader.i21, %vector.body
  %index = phi i64 [ %index.next.1, %vector.body ], [ 0, %for.cond1.preheader.i21 ]
  %7 = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay2, i64 %indvars.iv8.i, i64 %index
  %8 = bitcast double* %7 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %8, align 8, !tbaa !2
  %9 = getelementptr inbounds double, double* %7, i64 2
  %10 = bitcast double* %9 to <2 x double>*
  %wide.load36 = load <2 x double>, <2 x double>* %10, align 8, !tbaa !2
  %11 = fmul <2 x double> %wide.load, <double 1.500000e+00, double 1.500000e+00>
  %12 = fmul <2 x double> %wide.load36, <double 1.500000e+00, double 1.500000e+00>
  %13 = bitcast double* %7 to <2 x double>*
  store <2 x double> %11, <2 x double>* %13, align 8, !tbaa !2
  %14 = bitcast double* %9 to <2 x double>*
  store <2 x double> %12, <2 x double>* %14, align 8, !tbaa !2
  %index.next = or i64 %index, 4
  %15 = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay2, i64 %indvars.iv8.i, i64 %index.next
  %16 = bitcast double* %15 to <2 x double>*
  %wide.load.1 = load <2 x double>, <2 x double>* %16, align 8, !tbaa !2
  %17 = getelementptr inbounds double, double* %15, i64 2
  %18 = bitcast double* %17 to <2 x double>*
  %wide.load36.1 = load <2 x double>, <2 x double>* %18, align 8, !tbaa !2
  %19 = fmul <2 x double> %wide.load.1, <double 1.500000e+00, double 1.500000e+00>
  %20 = fmul <2 x double> %wide.load36.1, <double 1.500000e+00, double 1.500000e+00>
  %21 = bitcast double* %15 to <2 x double>*
  store <2 x double> %19, <2 x double>* %21, align 8, !tbaa !2
  %22 = bitcast double* %17 to <2 x double>*
  store <2 x double> %20, <2 x double>* %22, align 8, !tbaa !2
  %index.next.1 = add nuw nsw i64 %index, 8
  %23 = icmp eq i64 %index.next.1, 2600
  br i1 %23, label %for.inc30.i, label %vector.body, !llvm.loop !10

for.cond4.preheader.us.i:                         ; preds = %for.cond4.preheader.us.i.preheader, %for.cond4.for.end_crit_edge.us.i
  %indvars.iv13.i = phi i64 [ %indvars.iv.next14.i, %for.cond4.for.end_crit_edge.us.i ], [ 0, %for.cond4.preheader.us.i.preheader ]
  %arrayidx16.us.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay2, i64 %indvars.iv8.i, i64 %indvars.iv13.i
  %.pre.i = load double, double* %arrayidx16.us.i, align 8, !tbaa !2
  br i1 %lcmp.mod.not, label %for.body6.us.i.prol.loopexit, label %for.body6.us.i.prol

for.body6.us.i.prol:                              ; preds = %for.cond4.preheader.us.i
  %24 = load double, double* %arrayidx8.us.i.prol, align 8, !tbaa !2
  %arrayidx12.us.i.prol = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay2, i64 %indvars.iv.next11.i23.prol, i64 %indvars.iv13.i
  %25 = load double, double* %arrayidx12.us.i.prol, align 8, !tbaa !2
  %mul.us.i.prol = fmul double %24, %25
  %add17.us.i.prol = fadd double %.pre.i, %mul.us.i.prol
  store double %add17.us.i.prol, double* %arrayidx16.us.i, align 8, !tbaa !2
  br label %for.body6.us.i.prol.loopexit

for.body6.us.i.prol.loopexit:                     ; preds = %for.body6.us.i.prol, %for.cond4.preheader.us.i
  %add17.us.i.lcssa.unr.ph = phi double [ %add17.us.i.prol, %for.body6.us.i.prol ], [ undef, %for.cond4.preheader.us.i ]
  %.unr.ph = phi double [ %add17.us.i.prol, %for.body6.us.i.prol ], [ %.pre.i, %for.cond4.preheader.us.i ]
  %indvars.iv10.i22.unr.ph = phi i64 [ %indvars.iv.next11.i23.prol, %for.body6.us.i.prol ], [ %indvars.iv8.i, %for.cond4.preheader.us.i ]
  br i1 %6, label %for.cond4.for.end_crit_edge.us.i, label %for.body6.us.i

for.body6.us.i:                                   ; preds = %for.body6.us.i.prol.loopexit, %for.body6.us.i
  %26 = phi double [ %add17.us.i.1, %for.body6.us.i ], [ %.unr.ph, %for.body6.us.i.prol.loopexit ]
  %indvars.iv10.i22 = phi i64 [ %indvars.iv.next11.i23.1, %for.body6.us.i ], [ %indvars.iv10.i22.unr.ph, %for.body6.us.i.prol.loopexit ]
  %indvars.iv.next11.i23 = add nuw nsw i64 %indvars.iv10.i22, 1
  %arrayidx8.us.i = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay, i64 %indvars.iv.next11.i23, i64 %indvars.iv8.i
  %27 = load double, double* %arrayidx8.us.i, align 8, !tbaa !2
  %arrayidx12.us.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay2, i64 %indvars.iv.next11.i23, i64 %indvars.iv13.i
  %28 = load double, double* %arrayidx12.us.i, align 8, !tbaa !2
  %mul.us.i = fmul double %27, %28
  %add17.us.i = fadd double %26, %mul.us.i
  store double %add17.us.i, double* %arrayidx16.us.i, align 8, !tbaa !2
  %indvars.iv.next11.i23.1 = add nuw nsw i64 %indvars.iv10.i22, 2
  %arrayidx8.us.i.1 = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay, i64 %indvars.iv.next11.i23.1, i64 %indvars.iv8.i
  %29 = load double, double* %arrayidx8.us.i.1, align 8, !tbaa !2
  %arrayidx12.us.i.1 = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay2, i64 %indvars.iv.next11.i23.1, i64 %indvars.iv13.i
  %30 = load double, double* %arrayidx12.us.i.1, align 8, !tbaa !2
  %mul.us.i.1 = fmul double %29, %30
  %add17.us.i.1 = fadd double %add17.us.i, %mul.us.i.1
  store double %add17.us.i.1, double* %arrayidx16.us.i, align 8, !tbaa !2
  %exitcond12.not.i.1 = icmp eq i64 %indvars.iv.next11.i23.1, 1999
  br i1 %exitcond12.not.i.1, label %for.cond4.for.end_crit_edge.us.i, label %for.body6.us.i, !llvm.loop !12

for.cond4.for.end_crit_edge.us.i:                 ; preds = %for.body6.us.i, %for.body6.us.i.prol.loopexit
  %add17.us.i.lcssa = phi double [ %add17.us.i.lcssa.unr.ph, %for.body6.us.i.prol.loopexit ], [ %add17.us.i.1, %for.body6.us.i ]
  %mul22.us.i = fmul double %add17.us.i.lcssa, 1.500000e+00
  store double %mul22.us.i, double* %arrayidx16.us.i, align 8, !tbaa !2
  %indvars.iv.next14.i = add nuw nsw i64 %indvars.iv13.i, 1
  %exitcond15.not.i = icmp eq i64 %indvars.iv.next14.i, 2600
  br i1 %exitcond15.not.i, label %for.inc30.i, label %for.cond4.preheader.us.i, !llvm.loop !13

for.inc30.i:                                      ; preds = %vector.body, %for.cond4.for.end_crit_edge.us.i
  %indvars.iv.next9.i = add nuw nsw i64 %indvars.iv8.i, 1
  %exitcond16.not.i = icmp eq i64 %indvars.iv.next9.i, 2000
  br i1 %exitcond16.not.i, label %kernel_trmm.exit, label %for.cond1.preheader.i21, !llvm.loop !14

kernel_trmm.exit:                                 ; preds = %for.inc30.i
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_trmm.exit
  %31 = load i8*, i8** %argv, align 8, !tbaa !15
  %strcmpload = load i8, i8* %31, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !15
  %33 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %32) #7
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !15
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.inc10.i, %if.then
  %indvars.iv4.i = phi i64 [ 0, %if.then ], [ %indvars.iv.next5.i, %for.inc10.i ]
  %35 = mul nuw nsw i64 %indvars.iv4.i, 2000
  br label %for.body4.i

for.body4.i:                                      ; preds = %if.end.i, %for.cond2.preheader.i
  %indvars.iv.i27 = phi i64 [ 0, %for.cond2.preheader.i ], [ %indvars.iv.next.i29, %if.end.i ]
  %36 = add nuw nsw i64 %indvars.iv.i27, %35
  %37 = trunc i64 %36 to i32
  %rem.i28 = urem i32 %37, 20
  %cmp5.i = icmp eq i32 %rem.i28, 0
  br i1 %cmp5.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body4.i
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !15
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %38) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !15
  %arrayidx8.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay2, i64 %indvars.iv4.i, i64 %indvars.iv.i27
  %40 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %40) #7
  %indvars.iv.next.i29 = add nuw nsw i64 %indvars.iv.i27, 1
  %exitcond.not.i30 = icmp eq i64 %indvars.iv.next.i29, 2600
  br i1 %exitcond.not.i30, label %for.inc10.i, label %for.body4.i, !llvm.loop !17

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 2000
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !18

print_array.exit:                                 ; preds = %for.inc10.i
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !15
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !15
  %43 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %42) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_trmm.exit
  tail call void @free(i8* %call.i) #6
  tail call void @free(i8* nonnull %call.i20) #6
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
!10 = distinct !{!10, !7, !11}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = !{!16, !16, i64 0}
!16 = !{!"any pointer", !4, i64 0}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}

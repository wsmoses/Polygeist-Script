; ModuleID = 'bicg.c'
source_filename = "bicg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** nocapture readonly %argv) local_unnamed_addr #0 {
entry:
  %call.i = tail call noalias dereferenceable_or_null(31680000) i8* @malloc(i64 31680000) #7
  %call.i36 = tail call noalias dereferenceable_or_null(14400) i8* @malloc(i64 14400) #7
  %call.i37 = tail call noalias dereferenceable_or_null(17600) i8* @malloc(i64 17600) #7
  %call.i38 = tail call noalias dereferenceable_or_null(14400) i8* @malloc(i64 14400) #7
  %call.i39 = tail call noalias dereferenceable_or_null(17600) i8* @malloc(i64 17600) #7
  %arraydecay = bitcast i8* %call.i to [1800 x double]*
  %arraydecay6 = bitcast i8* %call.i38 to double*
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %entry
  %indvars.iv.i = phi i64 [ 0, %entry ], [ %indvars.iv.next.i.1, %for.body.i ]
  %i.03.i = phi i32 [ 0, %entry ], [ %inc.i.1, %for.body.i ]
  %rem.lhs.trunc.i = trunc i32 %i.03.i to i16
  %rem1.i = urem i16 %rem.lhs.trunc.i, 1800
  %conv.i = uitofp i16 %rem1.i to double
  %div.i = fdiv double %conv.i, 1.800000e+03
  %arrayidx.i = getelementptr inbounds double, double* %arraydecay6, i64 %indvars.iv.i
  store double %div.i, double* %arrayidx.i, align 8, !tbaa !2
  %indvars.iv.next.i = or i64 %indvars.iv.i, 1
  %0 = trunc i32 %i.03.i to i16
  %rem.lhs.trunc.i.1 = or i16 %0, 1
  %rem1.i.1 = urem i16 %rem.lhs.trunc.i.1, 1800
  %conv.i.1 = uitofp i16 %rem1.i.1 to double
  %div.i.1 = fdiv double %conv.i.1, 1.800000e+03
  %arrayidx.i.1 = getelementptr inbounds double, double* %arraydecay6, i64 %indvars.iv.next.i
  store double %div.i.1, double* %arrayidx.i.1, align 8, !tbaa !2
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2
  %inc.i.1 = add nuw nsw i32 %i.03.i, 2
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 1800
  br i1 %exitcond.not.i.1, label %for.body5.i.preheader, label %for.body.i, !llvm.loop !6

for.body5.i.preheader:                            ; preds = %for.body.i
  %arraydecay5 = bitcast i8* %call.i39 to double*
  br label %for.body5.i

for.body5.i:                                      ; preds = %for.body5.i.preheader, %for.inc27.i
  %indvars.iv10.i = phi i64 [ %indvars.iv.next11.i, %for.inc27.i ], [ 0, %for.body5.i.preheader ]
  %i.15.i = phi i32 [ %inc28.i, %for.inc27.i ], [ 0, %for.body5.i.preheader ]
  %rem6.lhs.trunc.i = trunc i32 %i.15.i to i16
  %rem62.i = urem i16 %rem6.lhs.trunc.i, 2200
  %conv7.i = uitofp i16 %rem62.i to double
  %div9.i = fdiv double %conv7.i, 2.200000e+03
  %arrayidx11.i = getelementptr inbounds double, double* %arraydecay5, i64 %indvars.iv10.i
  store double %div9.i, double* %arrayidx11.i, align 8, !tbaa !2
  br label %for.body15.i

for.body15.i:                                     ; preds = %for.body15.i, %for.body5.i
  %indvars.iv6.i = phi i64 [ 0, %for.body5.i ], [ %indvars.iv.next7.i, %for.body15.i ]
  %indvars.iv.next7.i = add nuw nsw i64 %indvars.iv6.i, 1
  %1 = mul nuw nsw i64 %indvars.iv.next7.i, %indvars.iv10.i
  %2 = trunc i64 %1 to i32
  %rem16.i = urem i32 %2, 2200
  %conv17.i = sitofp i32 %rem16.i to double
  %div19.i = fdiv double %conv17.i, 2.200000e+03
  %arrayidx23.i = getelementptr inbounds [1800 x double], [1800 x double]* %arraydecay, i64 %indvars.iv10.i, i64 %indvars.iv6.i
  store double %div19.i, double* %arrayidx23.i, align 8, !tbaa !2
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next7.i, 1800
  br i1 %exitcond9.not.i, label %for.inc27.i, label %for.body15.i, !llvm.loop !8

for.inc27.i:                                      ; preds = %for.body15.i
  %indvars.iv.next11.i = add nuw nsw i64 %indvars.iv10.i, 1
  %inc28.i = add nuw nsw i32 %i.15.i, 1
  %exitcond12.not.i = icmp eq i64 %indvars.iv.next11.i, 2200
  br i1 %exitcond12.not.i, label %init_array.exit, label %for.body5.i, !llvm.loop !9

init_array.exit:                                  ; preds = %for.inc27.i
  tail call void (...) @polybench_timer_start() #7
  %arraydecay8 = bitcast i8* %call.i36 to double*
  %arraydecay9 = bitcast i8* %call.i37 to double*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(14400) %call.i36, i8 0, i64 14400, i1 false) #7
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.inc34.i, %init_array.exit
  %indvars.iv6.i40 = phi i64 [ 0, %init_array.exit ], [ %indvars.iv.next7.i44, %for.inc34.i ]
  %arrayidx5.i = getelementptr inbounds double, double* %arraydecay9, i64 %indvars.iv6.i40
  store double 0.000000e+00, double* %arrayidx5.i, align 8, !tbaa !2
  %arrayidx12.i = getelementptr inbounds double, double* %arraydecay5, i64 %indvars.iv6.i40
  %3 = load double, double* %arrayidx12.i, align 8, !tbaa !2
  br label %for.body8.i

for.body8.i:                                      ; preds = %for.body8.i, %for.body3.i
  %add28.i57 = phi double [ 0.000000e+00, %for.body3.i ], [ %add28.i.1, %for.body8.i ]
  %indvars.iv.i41 = phi i64 [ 0, %for.body3.i ], [ %indvars.iv.next.i42.1, %for.body8.i ]
  %arrayidx10.i = getelementptr inbounds double, double* %arraydecay8, i64 %indvars.iv.i41
  %4 = load double, double* %arrayidx10.i, align 8, !tbaa !2
  %arrayidx16.i = getelementptr inbounds [1800 x double], [1800 x double]* %arraydecay, i64 %indvars.iv6.i40, i64 %indvars.iv.i41
  %5 = load double, double* %arrayidx16.i, align 8, !tbaa !2
  %mul.i = fmul double %3, %5
  %add.i = fadd double %4, %mul.i
  store double %add.i, double* %arrayidx10.i, align 8, !tbaa !2
  %arrayidx26.i = getelementptr inbounds double, double* %arraydecay6, i64 %indvars.iv.i41
  %6 = load double, double* %arrayidx26.i, align 8, !tbaa !2
  %mul27.i = fmul double %5, %6
  %add28.i = fadd double %add28.i57, %mul27.i
  %indvars.iv.next.i42 = or i64 %indvars.iv.i41, 1
  %arrayidx10.i.1 = getelementptr inbounds double, double* %arraydecay8, i64 %indvars.iv.next.i42
  %7 = load double, double* %arrayidx10.i.1, align 8, !tbaa !2
  %arrayidx16.i.1 = getelementptr inbounds [1800 x double], [1800 x double]* %arraydecay, i64 %indvars.iv6.i40, i64 %indvars.iv.next.i42
  %8 = load double, double* %arrayidx16.i.1, align 8, !tbaa !2
  %mul.i.1 = fmul double %3, %8
  %add.i.1 = fadd double %7, %mul.i.1
  store double %add.i.1, double* %arrayidx10.i.1, align 8, !tbaa !2
  %arrayidx26.i.1 = getelementptr inbounds double, double* %arraydecay6, i64 %indvars.iv.next.i42
  %9 = load double, double* %arrayidx26.i.1, align 8, !tbaa !2
  %mul27.i.1 = fmul double %8, %9
  %add28.i.1 = fadd double %add28.i, %mul27.i.1
  %indvars.iv.next.i42.1 = add nuw nsw i64 %indvars.iv.i41, 2
  %exitcond.not.i43.1 = icmp eq i64 %indvars.iv.next.i42.1, 1800
  br i1 %exitcond.not.i43.1, label %for.inc34.i, label %for.body8.i, !llvm.loop !10

for.inc34.i:                                      ; preds = %for.body8.i
  store double %add28.i.1, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next7.i44 = add nuw nsw i64 %indvars.iv6.i40, 1
  %exitcond8.not.i = icmp eq i64 %indvars.iv.next7.i44, 2200
  br i1 %exitcond8.not.i, label %kernel_bicg.exit, label %for.body3.i, !llvm.loop !11

kernel_bicg.exit:                                 ; preds = %for.inc34.i
  tail call void (...) @polybench_timer_stop() #7
  tail call void (...) @polybench_timer_print() #7
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_bicg.exit
  %10 = load i8*, i8** %argv, align 8, !tbaa !12
  %strcmpload = load i8, i8* %10, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %12 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %11) #8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #8
  br label %for.body.i47

for.body.i47:                                     ; preds = %if.end.i, %if.then
  %indvars.iv.i45 = phi i64 [ 0, %if.then ], [ %indvars.iv.next.i49, %if.end.i ]
  %i.04.i = phi i32 [ 0, %if.then ], [ %inc.i50, %if.end.i ]
  %rem.lhs.trunc.i46 = trunc i32 %i.04.i to i16
  %rem2.i = urem i16 %rem.lhs.trunc.i46, 20
  %cmp2.i = icmp eq i16 %rem2.i, 0
  br i1 %cmp2.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i47
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %fputc1.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %14) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i47
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %arrayidx.i48 = getelementptr inbounds double, double* %arraydecay8, i64 %indvars.iv.i45
  %16 = load double, double* %arrayidx.i48, align 8, !tbaa !2
  %call4.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %16) #8
  %indvars.iv.next.i49 = add nuw nsw i64 %indvars.iv.i45, 1
  %inc.i50 = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i51 = icmp eq i64 %indvars.iv.next.i49, 1800
  br i1 %exitcond.not.i51, label %for.end.i, label %for.body.i47, !llvm.loop !14

for.end.i:                                        ; preds = %if.end.i
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %call5.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #8
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %call6.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #8
  br label %for.body9.i

for.body9.i:                                      ; preds = %if.end14.i, %for.end.i
  %indvars.iv6.i52 = phi i64 [ 0, %for.end.i ], [ %indvars.iv.next7.i55, %if.end14.i ]
  %i.15.i53 = phi i32 [ 0, %for.end.i ], [ %inc19.i, %if.end14.i ]
  %rem10.lhs.trunc.i = trunc i32 %i.15.i53 to i16
  %rem103.i = urem i16 %rem10.lhs.trunc.i, 20
  %cmp11.i = icmp eq i16 %rem103.i, 0
  br i1 %cmp11.i, label %if.then12.i, label %if.end14.i

if.then12.i:                                      ; preds = %for.body9.i
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %19) #7
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then12.i, %for.body9.i
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %arrayidx16.i54 = getelementptr inbounds double, double* %arraydecay9, i64 %indvars.iv6.i52
  %21 = load double, double* %arrayidx16.i54, align 8, !tbaa !2
  %call17.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %21) #8
  %indvars.iv.next7.i55 = add nuw nsw i64 %indvars.iv6.i52, 1
  %inc19.i = add nuw nsw i32 %i.15.i53, 1
  %exitcond8.not.i56 = icmp eq i64 %indvars.iv.next7.i55, 2200
  br i1 %exitcond8.not.i56, label %print_array.exit, label %for.body9.i, !llvm.loop !15

print_array.exit:                                 ; preds = %if.end14.i
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %call21.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #8
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !12
  %24 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %23) #8
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_bicg.exit
  tail call void @free(i8* %call.i) #7
  tail call void @free(i8* %call.i36) #7
  tail call void @free(i8* nonnull %call.i37) #7
  tail call void @free(i8* %call.i38) #7
  tail call void @free(i8* %call.i39) #7
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

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inaccessiblemem_or_argmemonly nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inaccessiblememonly nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { argmemonly nofree nosync nounwind willreturn writeonly }
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
!12 = !{!13, !13, i64 0}
!13 = !{!"any pointer", !4, i64 0}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}

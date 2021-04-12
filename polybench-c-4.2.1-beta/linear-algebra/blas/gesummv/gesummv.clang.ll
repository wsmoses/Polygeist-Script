; ModuleID = 'gesummv.c'
source_filename = "gesummv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** nocapture readonly %argv) local_unnamed_addr #0 {
entry:
  %call.i = tail call noalias dereferenceable_or_null(62720000) i8* @malloc(i64 62720000) #6
  %call.i31 = tail call noalias dereferenceable_or_null(62720000) i8* @malloc(i64 62720000) #6
  %call.i33 = tail call noalias dereferenceable_or_null(22400) i8* @malloc(i64 22400) #6
  %call.i34 = tail call noalias dereferenceable_or_null(22400) i8* @malloc(i64 22400) #6
  %arraydecay = bitcast i8* %call.i to [2800 x double]*
  %arraydecay5 = bitcast i8* %call.i31 to [2800 x double]*
  %arraydecay6 = bitcast i8* %call.i33 to double*
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc24.i, %entry
  %indvars.iv7.i = phi i64 [ 0, %entry ], [ %indvars.iv.next8.i, %for.inc24.i ]
  %i.03.i = phi i32 [ 0, %entry ], [ %inc25.i, %for.inc24.i ]
  %rem.lhs.trunc.i = trunc i32 %i.03.i to i16
  %rem1.i = urem i16 %rem.lhs.trunc.i, 2800
  %conv.i = uitofp i16 %rem1.i to double
  %div.i = fdiv double %conv.i, 2.800000e+03
  %arrayidx.i = getelementptr inbounds double, double* %arraydecay6, i64 %indvars.iv7.i
  store double %div.i, double* %arrayidx.i, align 8, !tbaa !2
  br label %for.body5.i

for.body5.i:                                      ; preds = %for.body5.i, %for.body.i
  %indvars.iv.i = phi i64 [ 0, %for.body.i ], [ %indvars.iv.next.i, %for.body5.i ]
  %0 = mul nuw nsw i64 %indvars.iv.i, %indvars.iv7.i
  %1 = trunc i64 %0 to i32
  %2 = add i32 %1, 1
  %rem6.i = urem i32 %2, 2800
  %conv7.i = sitofp i32 %rem6.i to double
  %div9.i = fdiv double %conv7.i, 2.800000e+03
  %arrayidx13.i = getelementptr inbounds [2800 x double], [2800 x double]* %arraydecay, i64 %indvars.iv7.i, i64 %indvars.iv.i
  store double %div9.i, double* %arrayidx13.i, align 8, !tbaa !2
  %3 = add i32 %1, 2
  %rem16.i = urem i32 %3, 2800
  %conv17.i = sitofp i32 %rem16.i to double
  %div19.i = fdiv double %conv17.i, 2.800000e+03
  %arrayidx23.i = getelementptr inbounds [2800 x double], [2800 x double]* %arraydecay5, i64 %indvars.iv7.i, i64 %indvars.iv.i
  store double %div19.i, double* %arrayidx23.i, align 8, !tbaa !2
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 2800
  br i1 %exitcond.not.i, label %for.inc24.i, label %for.body5.i, !llvm.loop !6

for.inc24.i:                                      ; preds = %for.body5.i
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %inc25.i = add nuw nsw i32 %i.03.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 2800
  br i1 %exitcond9.not.i, label %init_array.exit, label %for.body.i, !llvm.loop !8

init_array.exit:                                  ; preds = %for.inc24.i
  tail call void (...) @polybench_timer_start() #6
  %arraydecay11 = bitcast i8* %call.i34 to double*
  br label %for.body.i36

for.body.i36:                                     ; preds = %for.end.i, %init_array.exit
  %indvars.iv5.i = phi i64 [ 0, %init_array.exit ], [ %indvars.iv.next6.i, %for.end.i ]
  %arrayidx2.i = getelementptr inbounds double, double* %arraydecay11, i64 %indvars.iv5.i
  store double 0.000000e+00, double* %arrayidx2.i, align 8, !tbaa !2
  br label %for.body5.i40

for.body5.i40:                                    ; preds = %for.body5.i40, %for.body.i36
  %indvars.iv.i37 = phi i64 [ 0, %for.body.i36 ], [ %indvars.iv.next.i38.1, %for.body5.i40 ]
  %4 = phi <2 x double> [ zeroinitializer, %for.body.i36 ], [ %22, %for.body5.i40 ]
  %arrayidx9.i = getelementptr inbounds [2800 x double], [2800 x double]* %arraydecay, i64 %indvars.iv5.i, i64 %indvars.iv.i37
  %5 = load double, double* %arrayidx9.i, align 8, !tbaa !2
  %arrayidx11.i = getelementptr inbounds double, double* %arraydecay6, i64 %indvars.iv.i37
  %6 = load double, double* %arrayidx11.i, align 8, !tbaa !2
  %arrayidx19.i = getelementptr inbounds [2800 x double], [2800 x double]* %arraydecay5, i64 %indvars.iv5.i, i64 %indvars.iv.i37
  %7 = load double, double* %arrayidx19.i, align 8, !tbaa !2
  %8 = insertelement <2 x double> poison, double %6, i32 0
  %9 = insertelement <2 x double> %8, double %5, i32 1
  %10 = insertelement <2 x double> poison, double %7, i32 0
  %11 = insertelement <2 x double> %10, double %6, i32 1
  %12 = fmul <2 x double> %9, %11
  %13 = fadd <2 x double> %12, %4
  %indvars.iv.next.i38 = or i64 %indvars.iv.i37, 1
  %arrayidx9.i.1 = getelementptr inbounds [2800 x double], [2800 x double]* %arraydecay, i64 %indvars.iv5.i, i64 %indvars.iv.next.i38
  %14 = load double, double* %arrayidx9.i.1, align 8, !tbaa !2
  %arrayidx11.i.1 = getelementptr inbounds double, double* %arraydecay6, i64 %indvars.iv.next.i38
  %15 = load double, double* %arrayidx11.i.1, align 8, !tbaa !2
  %arrayidx19.i.1 = getelementptr inbounds [2800 x double], [2800 x double]* %arraydecay5, i64 %indvars.iv5.i, i64 %indvars.iv.next.i38
  %16 = load double, double* %arrayidx19.i.1, align 8, !tbaa !2
  %17 = insertelement <2 x double> poison, double %15, i32 0
  %18 = insertelement <2 x double> %17, double %14, i32 1
  %19 = insertelement <2 x double> poison, double %16, i32 0
  %20 = insertelement <2 x double> %19, double %15, i32 1
  %21 = fmul <2 x double> %18, %20
  %22 = fadd <2 x double> %21, %13
  %indvars.iv.next.i38.1 = add nuw nsw i64 %indvars.iv.i37, 2
  %exitcond.not.i39.1 = icmp eq i64 %indvars.iv.next.i38.1, 2800
  br i1 %exitcond.not.i39.1, label %for.end.i, label %for.body5.i40, !llvm.loop !9

for.end.i:                                        ; preds = %for.body5.i40
  %23 = extractelement <2 x double> %22, i32 1
  %mul30.i = fmul double %23, 1.500000e+00
  %24 = extractelement <2 x double> %22, i32 0
  %mul33.i = fmul double %24, 1.200000e+00
  %add34.i = fadd double %mul30.i, %mul33.i
  store double %add34.i, double* %arrayidx2.i, align 8, !tbaa !2
  %indvars.iv.next6.i = add nuw nsw i64 %indvars.iv5.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next6.i, 2800
  br i1 %exitcond7.not.i, label %kernel_gesummv.exit, label %for.body.i36, !llvm.loop !10

kernel_gesummv.exit:                              ; preds = %for.end.i
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_gesummv.exit
  %25 = load i8*, i8** %argv, align 8, !tbaa !11
  %strcmpload = load i8, i8* %25, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !11
  %27 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %26) #7
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !11
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  br label %for.body.i44

for.body.i44:                                     ; preds = %if.end.i, %if.then
  %indvars.iv.i41 = phi i64 [ 0, %if.then ], [ %indvars.iv.next.i46, %if.end.i ]
  %i.02.i = phi i32 [ 0, %if.then ], [ %inc.i, %if.end.i ]
  %rem.lhs.trunc.i42 = trunc i32 %i.02.i to i16
  %rem1.i43 = urem i16 %rem.lhs.trunc.i42, 20
  %cmp2.i = icmp eq i16 %rem1.i43, 0
  br i1 %cmp2.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i44
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !11
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %29) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i44
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !11
  %arrayidx.i45 = getelementptr inbounds double, double* %arraydecay11, i64 %indvars.iv.i41
  %31 = load double, double* %arrayidx.i45, align 8, !tbaa !2
  %call4.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %31) #7
  %indvars.iv.next.i46 = add nuw nsw i64 %indvars.iv.i41, 1
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i47 = icmp eq i64 %indvars.iv.next.i46, 2800
  br i1 %exitcond.not.i47, label %print_array.exit, label %for.body.i44, !llvm.loop !13

print_array.exit:                                 ; preds = %if.end.i
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !11
  %call5.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !11
  %34 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %33) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_gesummv.exit
  tail call void @free(i8* %call.i) #6
  tail call void @free(i8* %call.i31) #6
  tail call void @free(i8* %call.i33) #6
  tail call void @free(i8* nonnull %call.i34) #6
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
!11 = !{!12, !12, i64 0}
!12 = !{!"any pointer", !4, i64 0}
!13 = distinct !{!13, !7}

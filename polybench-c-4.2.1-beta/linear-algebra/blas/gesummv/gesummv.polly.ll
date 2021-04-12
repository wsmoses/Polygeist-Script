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
entry.split:
  %call.i = tail call noalias dereferenceable_or_null(62720000) i8* @malloc(i64 62720000) #7
  %call.i31 = tail call noalias dereferenceable_or_null(62720000) i8* @malloc(i64 62720000) #7
  %call.i33 = tail call noalias dereferenceable_or_null(22400) i8* @malloc(i64 22400) #7
  %call.i34 = tail call noalias dereferenceable_or_null(22400) i8* @malloc(i64 22400) #7
  %arraydecay = bitcast i8* %call.i to [2800 x double]*
  %arraydecay5 = bitcast i8* %call.i31 to [2800 x double]*
  %arraydecay6 = bitcast i8* %call.i33 to double*
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc24.i, %entry.split
  %indvars.iv7.i = phi i64 [ 0, %entry.split ], [ %indvars.iv.next8.i, %for.inc24.i ]
  %i.03.i = phi i32 [ 0, %entry.split ], [ %inc25.i, %for.inc24.i ]
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
  br i1 %exitcond9.not.i, label %polly.loop_preheader, label %for.body.i, !llvm.loop !8

kernel_gesummv.exit:                              ; preds = %polly.stmt.for.end.i
  tail call void (...) @polybench_timer_stop() #7
  tail call void (...) @polybench_timer_print() #7
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_gesummv.exit
  %4 = load i8*, i8** %argv, align 8, !tbaa !9
  %strcmpload = load i8, i8* %4, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %6 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %5) #8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #8
  br label %for.body.i44

for.body.i44:                                     ; preds = %if.end.i, %if.then
  %indvars.iv.i41 = phi i64 [ 0, %if.then ], [ %indvars.iv.next.i46, %if.end.i ]
  %i.02.i = phi i32 [ 0, %if.then ], [ %inc.i, %if.end.i ]
  %rem.lhs.trunc.i42 = trunc i32 %i.02.i to i16
  %rem1.i43 = urem i16 %rem.lhs.trunc.i42, 20
  %cmp2.i = icmp eq i16 %rem1.i43, 0
  br i1 %cmp2.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i44
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %8) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i44
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %arrayidx.i45 = getelementptr inbounds double, double* %arraydecay11, i64 %indvars.iv.i41
  %10 = load double, double* %arrayidx.i45, align 8, !tbaa !2
  %call4.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %10) #8
  %indvars.iv.next.i46 = add nuw nsw i64 %indvars.iv.i41, 1
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i47 = icmp eq i64 %indvars.iv.next.i46, 2800
  br i1 %exitcond.not.i47, label %print_array.exit, label %for.body.i44, !llvm.loop !11

print_array.exit:                                 ; preds = %if.end.i
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %call5.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #8
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %13 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %12) #8
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_gesummv.exit
  tail call void @free(i8* %call.i) #7
  tail call void @free(i8* %call.i31) #7
  tail call void @free(i8* %call.i33) #7
  tail call void @free(i8* nonnull %call.i34) #7
  ret i32 0

polly.loop_preheader:                             ; preds = %for.inc24.i
  tail call void (...) @polybench_timer_start() #7
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(22400) %call.i34, i8 0, i64 22400, i1 false)
  %arraydecay11 = bitcast i8* %call.i34 to double*
  br label %polly.loop_preheader64

polly.stmt.for.end.i:                             ; preds = %polly.stmt.for.body5.i40
  %14 = extractelement <2 x double> %31, i32 1
  %p_mul30.i = fmul double %14, 1.500000e+00
  %15 = extractelement <2 x double> %31, i32 0
  %p_mul33.i = fmul double %15, 1.200000e+00
  %p_add34.i = fadd double %p_mul30.i, %p_mul33.i
  %16 = shl nuw nsw i64 %polly.indvar59, 3
  %scevgep85 = getelementptr i8, i8* %call.i34, i64 %16
  %scevgep8586 = bitcast i8* %scevgep85 to double*
  store double %p_add34.i, double* %scevgep8586, align 8, !alias.scope !12, !noalias !14
  %polly.indvar_next60 = add nuw nsw i64 %polly.indvar59, 1
  %exitcond89.not = icmp eq i64 %polly.indvar_next60, 2800
  br i1 %exitcond89.not, label %kernel_gesummv.exit, label %polly.loop_preheader64

polly.stmt.for.body5.i40:                         ; preds = %polly.stmt.for.body5.i40, %polly.loop_preheader64
  %polly.indvar66 = phi i64 [ 0, %polly.loop_preheader64 ], [ %polly.indvar_next67.1, %polly.stmt.for.body5.i40 ]
  %17 = phi <2 x double> [ zeroinitializer, %polly.loop_preheader64 ], [ %31, %polly.stmt.for.body5.i40 ]
  %18 = shl nuw nsw i64 %polly.indvar66, 3
  %scevgep72 = getelementptr i8, i8* %scevgep71, i64 %18
  %scevgep7273 = bitcast i8* %scevgep72 to double*
  %_p_scalar_ = load double, double* %scevgep7273, align 8, !alias.scope !15, !noalias !18
  %scevgep74 = getelementptr i8, i8* %call.i33, i64 %18
  %scevgep7475 = bitcast i8* %scevgep74 to double*
  %_p_scalar_76 = load double, double* %scevgep7475, align 8, !alias.scope !16, !noalias !19
  %scevgep78 = getelementptr i8, i8* %scevgep77, i64 %18
  %scevgep7879 = bitcast i8* %scevgep78 to double*
  %_p_scalar_80 = load double, double* %scevgep7879, align 8, !alias.scope !17, !noalias !20
  %19 = insertelement <2 x double> poison, double %_p_scalar_76, i32 0
  %20 = insertelement <2 x double> %19, double %_p_scalar_, i32 1
  %21 = insertelement <2 x double> poison, double %_p_scalar_80, i32 0
  %22 = insertelement <2 x double> %21, double %_p_scalar_76, i32 1
  %23 = fmul <2 x double> %20, %22
  %24 = fadd <2 x double> %17, %23
  %polly.indvar_next67 = shl i64 %polly.indvar66, 3
  %25 = or i64 %polly.indvar_next67, 8
  %scevgep72.1 = getelementptr i8, i8* %scevgep71, i64 %25
  %scevgep7273.1 = bitcast i8* %scevgep72.1 to double*
  %_p_scalar_.1 = load double, double* %scevgep7273.1, align 8, !alias.scope !15, !noalias !18
  %scevgep74.1 = getelementptr i8, i8* %call.i33, i64 %25
  %scevgep7475.1 = bitcast i8* %scevgep74.1 to double*
  %_p_scalar_76.1 = load double, double* %scevgep7475.1, align 8, !alias.scope !16, !noalias !19
  %scevgep78.1 = getelementptr i8, i8* %scevgep77, i64 %25
  %scevgep7879.1 = bitcast i8* %scevgep78.1 to double*
  %_p_scalar_80.1 = load double, double* %scevgep7879.1, align 8, !alias.scope !17, !noalias !20
  %26 = insertelement <2 x double> poison, double %_p_scalar_76.1, i32 0
  %27 = insertelement <2 x double> %26, double %_p_scalar_.1, i32 1
  %28 = insertelement <2 x double> poison, double %_p_scalar_80.1, i32 0
  %29 = insertelement <2 x double> %28, double %_p_scalar_76.1, i32 1
  %30 = fmul <2 x double> %27, %29
  %31 = fadd <2 x double> %24, %30
  %polly.indvar_next67.1 = add nuw nsw i64 %polly.indvar66, 2
  %exitcond.not.1 = icmp eq i64 %polly.indvar_next67.1, 2800
  br i1 %exitcond.not.1, label %polly.stmt.for.end.i, label %polly.stmt.for.body5.i40

polly.loop_preheader64:                           ; preds = %polly.loop_preheader, %polly.stmt.for.end.i
  %polly.indvar59 = phi i64 [ %polly.indvar_next60, %polly.stmt.for.end.i ], [ 0, %polly.loop_preheader ]
  %polly.access.call.i34 = getelementptr double, double* %arraydecay11, i64 %polly.indvar59
  store double 0.000000e+00, double* %polly.access.call.i34, align 8, !alias.scope !12, !noalias !14
  %32 = mul nuw nsw i64 %polly.indvar59, 22400
  %scevgep71 = getelementptr i8, i8* %call.i, i64 %32
  %scevgep77 = getelementptr i8, i8* %call.i31, i64 %32
  br label %polly.stmt.for.body5.i40
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

attributes #0 = { nounwind uwtable "frame-pointer"="none" "no-trapping-math"="true" "polly-optimized" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !4, i64 0}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !13, !"polly.alias.scope.MemRef0"}
!13 = distinct !{!13, !"polly.alias.scope.domain"}
!14 = !{!15, !16, !17}
!15 = distinct !{!15, !13, !"polly.alias.scope.MemRef3"}
!16 = distinct !{!16, !13, !"polly.alias.scope.MemRef4"}
!17 = distinct !{!17, !13, !"polly.alias.scope.MemRef5"}
!18 = !{!12, !16, !17}
!19 = !{!12, !15, !17}
!20 = !{!12, !15, !16}

; ModuleID = 'trisolv.c'
source_filename = "trisolv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** nocapture readonly %argv) local_unnamed_addr #0 {
entry:
  %call.i = tail call noalias dereferenceable_or_null(128000000) i8* @malloc(i64 128000000) #6
  %call.i23 = tail call noalias dereferenceable_or_null(32000) i8* @malloc(i64 32000) #6
  %call.i24 = tail call noalias dereferenceable_or_null(32000) i8* @malloc(i64 32000) #6
  %arraydecay = bitcast i8* %call.i to [4000 x double]*
  %arraydecay3 = bitcast i8* %call.i23 to double*
  %arraydecay4 = bitcast i8* %call.i24 to double*
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc14.i, %entry
  %indvars.iv8.i = phi i64 [ 0, %entry ], [ %indvars.iv.next9.i, %for.inc14.i ]
  %0 = add nuw i64 %indvars.iv8.i, 1
  %arrayidx.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv8.i
  store double -9.990000e+02, double* %arrayidx.i, align 8, !tbaa !2
  %1 = trunc i64 %indvars.iv8.i to i32
  %conv.i = sitofp i32 %1 to double
  %arrayidx2.i = getelementptr inbounds double, double* %arraydecay4, i64 %indvars.iv8.i
  store double %conv.i, double* %arrayidx2.i, align 8, !tbaa !2
  %2 = add nuw nsw i64 %indvars.iv8.i, 4001
  %xtraiter = and i64 %0, 1
  %3 = icmp eq i64 %indvars.iv8.i, 0
  br i1 %3, label %for.inc14.i.unr-lcssa, label %for.body.i.new

for.body.i.new:                                   ; preds = %for.body.i
  %unroll_iter = and i64 %0, -2
  br label %for.body6.i

for.body6.i:                                      ; preds = %for.body6.i, %for.body.i.new
  %indvars.iv.i = phi i64 [ 0, %for.body.i.new ], [ %indvars.iv.next.i.1, %for.body6.i ]
  %niter = phi i64 [ %unroll_iter, %for.body.i.new ], [ %niter.nsub.1, %for.body6.i ]
  %4 = sub nuw nsw i64 %2, %indvars.iv.i
  %5 = trunc i64 %4 to i32
  %conv8.i = sitofp i32 %5 to double
  %mul.i = fmul double %conv8.i, 2.000000e+00
  %div.i = fdiv double %mul.i, 4.000000e+03
  %arrayidx13.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv8.i, i64 %indvars.iv.i
  store double %div.i, double* %arrayidx13.i, align 8, !tbaa !2
  %indvars.iv.next.i = or i64 %indvars.iv.i, 1
  %6 = sub nuw nsw i64 %2, %indvars.iv.next.i
  %7 = trunc i64 %6 to i32
  %conv8.i.1 = sitofp i32 %7 to double
  %mul.i.1 = fmul double %conv8.i.1, 2.000000e+00
  %div.i.1 = fdiv double %mul.i.1, 4.000000e+03
  %arrayidx13.i.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv8.i, i64 %indvars.iv.next.i
  store double %div.i.1, double* %arrayidx13.i.1, align 8, !tbaa !2
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %for.inc14.i.unr-lcssa, label %for.body6.i, !llvm.loop !6

for.inc14.i.unr-lcssa:                            ; preds = %for.body6.i, %for.body.i
  %indvars.iv.i.unr = phi i64 [ 0, %for.body.i ], [ %indvars.iv.next.i.1, %for.body6.i ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.inc14.i, label %for.body6.i.epil

for.body6.i.epil:                                 ; preds = %for.inc14.i.unr-lcssa
  %8 = sub nuw nsw i64 %2, %indvars.iv.i.unr
  %9 = trunc i64 %8 to i32
  %conv8.i.epil = sitofp i32 %9 to double
  %mul.i.epil = fmul double %conv8.i.epil, 2.000000e+00
  %div.i.epil = fdiv double %mul.i.epil, 4.000000e+03
  %arrayidx13.i.epil = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv8.i, i64 %indvars.iv.i.unr
  store double %div.i.epil, double* %arrayidx13.i.epil, align 8, !tbaa !2
  br label %for.inc14.i

for.inc14.i:                                      ; preds = %for.inc14.i.unr-lcssa, %for.body6.i.epil
  %indvars.iv.next9.i = add nuw nsw i64 %indvars.iv8.i, 1
  %exitcond11.not.i = icmp eq i64 %indvars.iv.next9.i, 4000
  br i1 %exitcond11.not.i, label %init_array.exit, label %for.body.i, !llvm.loop !8

init_array.exit:                                  ; preds = %for.inc14.i
  tail call void (...) @polybench_timer_start() #6
  br label %for.body.i28

for.body.i28:                                     ; preds = %for.end.i, %init_array.exit
  %indvars.iv6.i25 = phi i64 [ 0, %init_array.exit ], [ %indvars.iv.next7.i34, %for.end.i ]
  %arrayidx.i26 = getelementptr inbounds double, double* %arraydecay4, i64 %indvars.iv6.i25
  %10 = load double, double* %arrayidx.i26, align 8, !tbaa !2
  %arrayidx2.i27 = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv6.i25
  store double %10, double* %arrayidx2.i27, align 8, !tbaa !2
  %cmp41.not.i = icmp eq i64 %indvars.iv6.i25, 0
  br i1 %cmp41.not.i, label %for.end.i, label %for.body5.i.preheader

for.body5.i.preheader:                            ; preds = %for.body.i28
  %xtraiter41 = and i64 %indvars.iv6.i25, 1
  %11 = icmp eq i64 %indvars.iv6.i25, 1
  br i1 %11, label %for.end.i.loopexit.unr-lcssa, label %for.body5.i.preheader.new

for.body5.i.preheader.new:                        ; preds = %for.body5.i.preheader
  %unroll_iter43 = and i64 %indvars.iv6.i25, 9223372036854775806
  br label %for.body5.i

for.body5.i:                                      ; preds = %for.body5.i, %for.body5.i.preheader.new
  %12 = phi double [ %10, %for.body5.i.preheader.new ], [ %sub.i.1, %for.body5.i ]
  %indvars.iv.i29 = phi i64 [ 0, %for.body5.i.preheader.new ], [ %indvars.iv.next.i31.1, %for.body5.i ]
  %niter44 = phi i64 [ %unroll_iter43, %for.body5.i.preheader.new ], [ %niter44.nsub.1, %for.body5.i ]
  %arrayidx9.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv6.i25, i64 %indvars.iv.i29
  %13 = load double, double* %arrayidx9.i, align 8, !tbaa !2
  %arrayidx11.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.i29
  %14 = load double, double* %arrayidx11.i, align 8, !tbaa !2
  %mul.i30 = fmul double %13, %14
  %sub.i = fsub double %12, %mul.i30
  store double %sub.i, double* %arrayidx2.i27, align 8, !tbaa !2
  %indvars.iv.next.i31 = or i64 %indvars.iv.i29, 1
  %arrayidx9.i.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv6.i25, i64 %indvars.iv.next.i31
  %15 = load double, double* %arrayidx9.i.1, align 8, !tbaa !2
  %arrayidx11.i.1 = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.next.i31
  %16 = load double, double* %arrayidx11.i.1, align 8, !tbaa !2
  %mul.i30.1 = fmul double %15, %16
  %sub.i.1 = fsub double %sub.i, %mul.i30.1
  store double %sub.i.1, double* %arrayidx2.i27, align 8, !tbaa !2
  %indvars.iv.next.i31.1 = add nuw nsw i64 %indvars.iv.i29, 2
  %niter44.nsub.1 = add i64 %niter44, -2
  %niter44.ncmp.1 = icmp eq i64 %niter44.nsub.1, 0
  br i1 %niter44.ncmp.1, label %for.end.i.loopexit.unr-lcssa, label %for.body5.i, !llvm.loop !9

for.end.i.loopexit.unr-lcssa:                     ; preds = %for.body5.i, %for.body5.i.preheader
  %sub.i.lcssa.ph = phi double [ undef, %for.body5.i.preheader ], [ %sub.i.1, %for.body5.i ]
  %.unr = phi double [ %10, %for.body5.i.preheader ], [ %sub.i.1, %for.body5.i ]
  %indvars.iv.i29.unr = phi i64 [ 0, %for.body5.i.preheader ], [ %indvars.iv.next.i31.1, %for.body5.i ]
  %lcmp.mod42.not = icmp eq i64 %xtraiter41, 0
  br i1 %lcmp.mod42.not, label %for.end.i, label %for.body5.i.epil

for.body5.i.epil:                                 ; preds = %for.end.i.loopexit.unr-lcssa
  %arrayidx9.i.epil = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv6.i25, i64 %indvars.iv.i29.unr
  %17 = load double, double* %arrayidx9.i.epil, align 8, !tbaa !2
  %arrayidx11.i.epil = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.i29.unr
  %18 = load double, double* %arrayidx11.i.epil, align 8, !tbaa !2
  %mul.i30.epil = fmul double %17, %18
  %sub.i.epil = fsub double %.unr, %mul.i30.epil
  store double %sub.i.epil, double* %arrayidx2.i27, align 8, !tbaa !2
  br label %for.end.i

for.end.i:                                        ; preds = %for.body5.i.epil, %for.end.i.loopexit.unr-lcssa, %for.body.i28
  %19 = phi double [ %10, %for.body.i28 ], [ %sub.i.lcssa.ph, %for.end.i.loopexit.unr-lcssa ], [ %sub.i.epil, %for.body5.i.epil ]
  %arrayidx19.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv6.i25, i64 %indvars.iv6.i25
  %20 = load double, double* %arrayidx19.i, align 8, !tbaa !2
  %div.i33 = fdiv double %19, %20
  store double %div.i33, double* %arrayidx2.i27, align 8, !tbaa !2
  %indvars.iv.next7.i34 = add nuw nsw i64 %indvars.iv6.i25, 1
  %exitcond8.not.i = icmp eq i64 %indvars.iv.next7.i34, 4000
  br i1 %exitcond8.not.i, label %kernel_trisolv.exit, label %for.body.i28, !llvm.loop !10

kernel_trisolv.exit:                              ; preds = %for.end.i
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_trisolv.exit
  %21 = load i8*, i8** %argv, align 8, !tbaa !11
  %strcmpload = load i8, i8* %21, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !11
  %23 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %22) #7
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !11
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  br label %for.body.i37

for.body.i37:                                     ; preds = %for.inc.i, %if.then
  %indvars.iv.i35 = phi i64 [ 0, %if.then ], [ %indvars.iv.next.i38, %for.inc.i ]
  %i.02.i = phi i32 [ 0, %if.then ], [ %inc.i, %for.inc.i ]
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !11
  %arrayidx.i36 = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.i35
  %26 = load double, double* %arrayidx.i36, align 8, !tbaa !2
  %call2.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), double %26) #7
  %rem.lhs.trunc.i = trunc i32 %i.02.i to i16
  %rem1.i = urem i16 %rem.lhs.trunc.i, 20
  %cmp3.i = icmp eq i16 %rem1.i, 0
  br i1 %cmp3.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i37
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !11
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %27) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i37
  %indvars.iv.next.i38 = add nuw nsw i64 %indvars.iv.i35, 1
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i39 = icmp eq i64 %indvars.iv.next.i38, 4000
  br i1 %exitcond.not.i39, label %print_array.exit, label %for.body.i37, !llvm.loop !13

print_array.exit:                                 ; preds = %for.inc.i
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !11
  %call5.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !11
  %30 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %29) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_trisolv.exit
  tail call void @free(i8* %call.i) #6
  tail call void @free(i8* nonnull %call.i23) #6
  tail call void @free(i8* %call.i24) #6
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

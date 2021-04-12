; ModuleID = 'atax.c'
source_filename = "atax.c"
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
  %call.i = tail call noalias dereferenceable_or_null(31680000) i8* @malloc(i64 31680000) #7
  %call.i27 = tail call noalias dereferenceable_or_null(17600) i8* @malloc(i64 17600) #7
  %call.i28 = tail call noalias dereferenceable_or_null(17600) i8* @malloc(i64 17600) #7
  %arraydecay4 = bitcast i8* %call.i27 to double*
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %entry
  %indvars.iv.i = phi i64 [ 0, %entry ], [ %indvars.iv.next.i.1, %for.body.i ]
  %0 = trunc i64 %indvars.iv.i to i32
  %conv2.i = sitofp i32 %0 to double
  %div.i = fdiv double %conv2.i, 2.200000e+03
  %add.i = fadd double %div.i, 1.000000e+00
  %arrayidx.i = getelementptr inbounds double, double* %arraydecay4, i64 %indvars.iv.i
  store double %add.i, double* %arrayidx.i, align 8, !tbaa !2
  %indvars.iv.next.i = or i64 %indvars.iv.i, 1
  %1 = trunc i64 %indvars.iv.next.i to i32
  %conv2.i.1 = sitofp i32 %1 to double
  %div.i.1 = fdiv double %conv2.i.1, 2.200000e+03
  %add.i.1 = fadd double %div.i.1, 1.000000e+00
  %arrayidx.i.1 = getelementptr inbounds double, double* %arraydecay4, i64 %indvars.iv.next.i
  store double %add.i.1, double* %arrayidx.i.1, align 8, !tbaa !2
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 2200
  br i1 %exitcond.not.i.1, label %for.cond7.preheader.i.preheader, label %for.body.i, !llvm.loop !6

for.cond7.preheader.i.preheader:                  ; preds = %for.body.i
  %arraydecay = bitcast i8* %call.i to [2200 x double]*
  br label %for.cond7.preheader.i

for.cond7.preheader.i:                            ; preds = %for.cond7.preheader.i.preheader, %for.inc22.i
  %indvars.iv8.i = phi i64 [ %indvars.iv.next9.i, %for.inc22.i ], [ 0, %for.cond7.preheader.i.preheader ]
  br label %for.body10.i

for.body10.i:                                     ; preds = %for.body10.i, %for.cond7.preheader.i
  %indvars.iv4.i = phi i64 [ 0, %for.cond7.preheader.i ], [ %indvars.iv.next5.i, %for.body10.i ]
  %2 = add nuw nsw i64 %indvars.iv4.i, %indvars.iv8.i
  %3 = trunc i64 %2 to i32
  %rem.i = urem i32 %3, 2200
  %conv12.i = sitofp i32 %rem.i to double
  %div14.i = fdiv double %conv12.i, 9.000000e+03
  %arrayidx18.i = getelementptr inbounds [2200 x double], [2200 x double]* %arraydecay, i64 %indvars.iv8.i, i64 %indvars.iv4.i
  store double %div14.i, double* %arrayidx18.i, align 8, !tbaa !2
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 2200
  br i1 %exitcond7.not.i, label %for.inc22.i, label %for.body10.i, !llvm.loop !8

for.inc22.i:                                      ; preds = %for.body10.i
  %indvars.iv.next9.i = add nuw nsw i64 %indvars.iv8.i, 1
  %exitcond10.not.i = icmp eq i64 %indvars.iv.next9.i, 1800
  br i1 %exitcond10.not.i, label %init_array.exit, label %for.cond7.preheader.i, !llvm.loop !9

init_array.exit:                                  ; preds = %for.inc22.i
  tail call void (...) @polybench_timer_start() #7
  %arraydecay7 = bitcast i8* %call.i28 to double*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(17600) %call.i28, i8 0, i64 17600, i1 false) #7
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.inc40.i, %init_array.exit
  %indvars.iv10.i = phi i64 [ 0, %init_array.exit ], [ %indvars.iv.next11.i, %for.inc40.i ]
  br label %for.body8.i

for.body8.i:                                      ; preds = %for.body8.i, %for.body3.i
  %4 = phi double [ 0.000000e+00, %for.body3.i ], [ %add.i31.3, %for.body8.i ]
  %indvars.iv.i30 = phi i64 [ 0, %for.body3.i ], [ %indvars.iv.next.i32.3, %for.body8.i ]
  %arrayidx14.i = getelementptr inbounds [2200 x double], [2200 x double]* %arraydecay, i64 %indvars.iv10.i, i64 %indvars.iv.i30
  %5 = load double, double* %arrayidx14.i, align 8, !tbaa !2
  %arrayidx16.i = getelementptr inbounds double, double* %arraydecay4, i64 %indvars.iv.i30
  %6 = load double, double* %arrayidx16.i, align 8, !tbaa !2
  %mul.i = fmul double %5, %6
  %add.i31 = fadd double %4, %mul.i
  %indvars.iv.next.i32 = or i64 %indvars.iv.i30, 1
  %arrayidx14.i.1 = getelementptr inbounds [2200 x double], [2200 x double]* %arraydecay, i64 %indvars.iv10.i, i64 %indvars.iv.next.i32
  %7 = load double, double* %arrayidx14.i.1, align 8, !tbaa !2
  %arrayidx16.i.1 = getelementptr inbounds double, double* %arraydecay4, i64 %indvars.iv.next.i32
  %8 = load double, double* %arrayidx16.i.1, align 8, !tbaa !2
  %mul.i.1 = fmul double %7, %8
  %add.i31.1 = fadd double %add.i31, %mul.i.1
  %indvars.iv.next.i32.1 = or i64 %indvars.iv.i30, 2
  %arrayidx14.i.2 = getelementptr inbounds [2200 x double], [2200 x double]* %arraydecay, i64 %indvars.iv10.i, i64 %indvars.iv.next.i32.1
  %9 = load double, double* %arrayidx14.i.2, align 8, !tbaa !2
  %arrayidx16.i.2 = getelementptr inbounds double, double* %arraydecay4, i64 %indvars.iv.next.i32.1
  %10 = load double, double* %arrayidx16.i.2, align 8, !tbaa !2
  %mul.i.2 = fmul double %9, %10
  %add.i31.2 = fadd double %add.i31.1, %mul.i.2
  %indvars.iv.next.i32.2 = or i64 %indvars.iv.i30, 3
  %arrayidx14.i.3 = getelementptr inbounds [2200 x double], [2200 x double]* %arraydecay, i64 %indvars.iv10.i, i64 %indvars.iv.next.i32.2
  %11 = load double, double* %arrayidx14.i.3, align 8, !tbaa !2
  %arrayidx16.i.3 = getelementptr inbounds double, double* %arraydecay4, i64 %indvars.iv.next.i32.2
  %12 = load double, double* %arrayidx16.i.3, align 8, !tbaa !2
  %mul.i.3 = fmul double %11, %12
  %add.i31.3 = fadd double %add.i31.2, %mul.i.3
  %indvars.iv.next.i32.3 = add nuw nsw i64 %indvars.iv.i30, 4
  %exitcond.not.i33.3 = icmp eq i64 %indvars.iv.next.i32.3, 2200
  br i1 %exitcond.not.i33.3, label %vector.ph, label %for.body8.i, !llvm.loop !10

vector.ph:                                        ; preds = %for.body8.i
  %broadcast.splatinsert = insertelement <2 x double> poison, double %add.i31.3, i32 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert42 = insertelement <2 x double> poison, double %add.i31.3, i32 0
  %broadcast.splat43 = shufflevector <2 x double> %broadcast.splatinsert42, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %13 = getelementptr inbounds double, double* %arraydecay7, i64 %index
  %14 = bitcast double* %13 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %14, align 8, !tbaa !2
  %15 = getelementptr inbounds double, double* %13, i64 2
  %16 = bitcast double* %15 to <2 x double>*
  %wide.load39 = load <2 x double>, <2 x double>* %16, align 8, !tbaa !2
  %17 = getelementptr inbounds [2200 x double], [2200 x double]* %arraydecay, i64 %indvars.iv10.i, i64 %index
  %18 = bitcast double* %17 to <2 x double>*
  %wide.load40 = load <2 x double>, <2 x double>* %18, align 8, !tbaa !2
  %19 = getelementptr inbounds double, double* %17, i64 2
  %20 = bitcast double* %19 to <2 x double>*
  %wide.load41 = load <2 x double>, <2 x double>* %20, align 8, !tbaa !2
  %21 = fmul <2 x double> %broadcast.splat, %wide.load40
  %22 = fmul <2 x double> %broadcast.splat43, %wide.load41
  %23 = fadd <2 x double> %wide.load, %21
  %24 = fadd <2 x double> %wide.load39, %22
  %25 = bitcast double* %13 to <2 x double>*
  store <2 x double> %23, <2 x double>* %25, align 8, !tbaa !2
  %26 = bitcast double* %15 to <2 x double>*
  store <2 x double> %24, <2 x double>* %26, align 8, !tbaa !2
  %index.next = or i64 %index, 4
  %27 = getelementptr inbounds double, double* %arraydecay7, i64 %index.next
  %28 = bitcast double* %27 to <2 x double>*
  %wide.load.1 = load <2 x double>, <2 x double>* %28, align 8, !tbaa !2
  %29 = getelementptr inbounds double, double* %27, i64 2
  %30 = bitcast double* %29 to <2 x double>*
  %wide.load39.1 = load <2 x double>, <2 x double>* %30, align 8, !tbaa !2
  %31 = getelementptr inbounds [2200 x double], [2200 x double]* %arraydecay, i64 %indvars.iv10.i, i64 %index.next
  %32 = bitcast double* %31 to <2 x double>*
  %wide.load40.1 = load <2 x double>, <2 x double>* %32, align 8, !tbaa !2
  %33 = getelementptr inbounds double, double* %31, i64 2
  %34 = bitcast double* %33 to <2 x double>*
  %wide.load41.1 = load <2 x double>, <2 x double>* %34, align 8, !tbaa !2
  %35 = fmul <2 x double> %broadcast.splat, %wide.load40.1
  %36 = fmul <2 x double> %broadcast.splat43, %wide.load41.1
  %37 = fadd <2 x double> %wide.load.1, %35
  %38 = fadd <2 x double> %wide.load39.1, %36
  %39 = bitcast double* %27 to <2 x double>*
  store <2 x double> %37, <2 x double>* %39, align 8, !tbaa !2
  %40 = bitcast double* %29 to <2 x double>*
  store <2 x double> %38, <2 x double>* %40, align 8, !tbaa !2
  %index.next.1 = add nuw nsw i64 %index, 8
  %41 = icmp eq i64 %index.next.1, 2200
  br i1 %41, label %for.inc40.i, label %vector.body, !llvm.loop !11

for.inc40.i:                                      ; preds = %vector.body
  %indvars.iv.next11.i = add nuw nsw i64 %indvars.iv10.i, 1
  %exitcond12.not.i = icmp eq i64 %indvars.iv.next11.i, 1800
  br i1 %exitcond12.not.i, label %kernel_atax.exit, label %for.body3.i, !llvm.loop !13

kernel_atax.exit:                                 ; preds = %for.inc40.i
  tail call void (...) @polybench_timer_stop() #7
  tail call void (...) @polybench_timer_print() #7
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_atax.exit
  %42 = load i8*, i8** %argv, align 8, !tbaa !14
  %strcmpload = load i8, i8* %42, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !14
  %44 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %43) #8
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !14
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #8
  br label %for.body.i35

for.body.i35:                                     ; preds = %if.end.i, %if.then
  %indvars.iv.i34 = phi i64 [ 0, %if.then ], [ %indvars.iv.next.i37, %if.end.i ]
  %i.02.i = phi i32 [ 0, %if.then ], [ %inc.i, %if.end.i ]
  %rem.lhs.trunc.i = trunc i32 %i.02.i to i16
  %rem1.i = urem i16 %rem.lhs.trunc.i, 20
  %cmp2.i = icmp eq i16 %rem1.i, 0
  br i1 %cmp2.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i35
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !14
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %46) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i35
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !14
  %arrayidx.i36 = getelementptr inbounds double, double* %arraydecay7, i64 %indvars.iv.i34
  %48 = load double, double* %arrayidx.i36, align 8, !tbaa !2
  %call4.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %48) #8
  %indvars.iv.next.i37 = add nuw nsw i64 %indvars.iv.i34, 1
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i38 = icmp eq i64 %indvars.iv.next.i37, 2200
  br i1 %exitcond.not.i38, label %print_array.exit, label %for.body.i35, !llvm.loop !16

print_array.exit:                                 ; preds = %if.end.i
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !14
  %call5.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #8
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !14
  %51 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %50) #8
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_atax.exit
  tail call void @free(i8* %call.i) #7
  tail call void @free(i8* %call.i27) #7
  tail call void @free(i8* nonnull %call.i28) #7
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
!11 = distinct !{!11, !7, !12}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = distinct !{!13, !7}
!14 = !{!15, !15, i64 0}
!15 = !{!"any pointer", !4, i64 0}
!16 = distinct !{!16, !7}

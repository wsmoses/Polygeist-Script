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
polly.loop_preheader:
  %call.i = tail call noalias dereferenceable_or_null(31680000) i8* @malloc(i64 31680000) #8
  %call.i27 = tail call noalias dereferenceable_or_null(17600) i8* @malloc(i64 17600) #8
  %call.i28 = tail call noalias dereferenceable_or_null(17600) i8* @malloc(i64 17600) #8
  br label %polly.stmt.for.body.i

init_array.exit:                                  ; preds = %polly.loop_exit48
  %arraydecay4 = bitcast i8* %call.i27 to double*
  tail call void (...) @polybench_timer_start() #8
  %arraydecay7 = bitcast i8* %call.i28 to double*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(17600) %call.i28, i8 0, i64 17600, i1 false) #8
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.inc40.i, %init_array.exit
  %indvars.iv10.i = phi i64 [ 0, %init_array.exit ], [ %indvars.iv.next11.i, %for.inc40.i ]
  br label %for.body8.i

for.body8.i:                                      ; preds = %for.body8.i, %for.body3.i
  %0 = phi double [ 0.000000e+00, %for.body3.i ], [ %add.i31.3, %for.body8.i ]
  %indvars.iv.i30 = phi i64 [ 0, %for.body3.i ], [ %indvars.iv.next.i32.3, %for.body8.i ]
  %arrayidx14.i = getelementptr inbounds [2200 x double], [2200 x double]* %call.i66, i64 %indvars.iv10.i, i64 %indvars.iv.i30
  %1 = load double, double* %arrayidx14.i, align 8, !tbaa !2
  %arrayidx16.i = getelementptr inbounds double, double* %arraydecay4, i64 %indvars.iv.i30
  %2 = load double, double* %arrayidx16.i, align 8, !tbaa !2
  %mul.i = fmul double %1, %2
  %add.i31 = fadd double %0, %mul.i
  %indvars.iv.next.i32 = or i64 %indvars.iv.i30, 1
  %arrayidx14.i.1 = getelementptr inbounds [2200 x double], [2200 x double]* %call.i66, i64 %indvars.iv10.i, i64 %indvars.iv.next.i32
  %3 = load double, double* %arrayidx14.i.1, align 8, !tbaa !2
  %arrayidx16.i.1 = getelementptr inbounds double, double* %arraydecay4, i64 %indvars.iv.next.i32
  %4 = load double, double* %arrayidx16.i.1, align 8, !tbaa !2
  %mul.i.1 = fmul double %3, %4
  %add.i31.1 = fadd double %add.i31, %mul.i.1
  %indvars.iv.next.i32.1 = or i64 %indvars.iv.i30, 2
  %arrayidx14.i.2 = getelementptr inbounds [2200 x double], [2200 x double]* %call.i66, i64 %indvars.iv10.i, i64 %indvars.iv.next.i32.1
  %5 = load double, double* %arrayidx14.i.2, align 8, !tbaa !2
  %arrayidx16.i.2 = getelementptr inbounds double, double* %arraydecay4, i64 %indvars.iv.next.i32.1
  %6 = load double, double* %arrayidx16.i.2, align 8, !tbaa !2
  %mul.i.2 = fmul double %5, %6
  %add.i31.2 = fadd double %add.i31.1, %mul.i.2
  %indvars.iv.next.i32.2 = or i64 %indvars.iv.i30, 3
  %arrayidx14.i.3 = getelementptr inbounds [2200 x double], [2200 x double]* %call.i66, i64 %indvars.iv10.i, i64 %indvars.iv.next.i32.2
  %7 = load double, double* %arrayidx14.i.3, align 8, !tbaa !2
  %arrayidx16.i.3 = getelementptr inbounds double, double* %arraydecay4, i64 %indvars.iv.next.i32.2
  %8 = load double, double* %arrayidx16.i.3, align 8, !tbaa !2
  %mul.i.3 = fmul double %7, %8
  %add.i31.3 = fadd double %add.i31.2, %mul.i.3
  %indvars.iv.next.i32.3 = add nuw nsw i64 %indvars.iv.i30, 4
  %exitcond.not.i33.3 = icmp eq i64 %indvars.iv.next.i32.3, 2200
  br i1 %exitcond.not.i33.3, label %vector.ph, label %for.body8.i, !llvm.loop !6

vector.ph:                                        ; preds = %for.body8.i
  %broadcast.splatinsert = insertelement <2 x double> poison, double %add.i31.3, i32 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert77 = insertelement <2 x double> poison, double %add.i31.3, i32 0
  %broadcast.splat78 = shufflevector <2 x double> %broadcast.splatinsert77, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %9 = getelementptr inbounds double, double* %arraydecay7, i64 %index
  %10 = bitcast double* %9 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %10, align 8, !tbaa !2
  %11 = getelementptr inbounds double, double* %9, i64 2
  %12 = bitcast double* %11 to <2 x double>*
  %wide.load74 = load <2 x double>, <2 x double>* %12, align 8, !tbaa !2
  %13 = getelementptr inbounds [2200 x double], [2200 x double]* %call.i66, i64 %indvars.iv10.i, i64 %index
  %14 = bitcast double* %13 to <2 x double>*
  %wide.load75 = load <2 x double>, <2 x double>* %14, align 8, !tbaa !2
  %15 = getelementptr inbounds double, double* %13, i64 2
  %16 = bitcast double* %15 to <2 x double>*
  %wide.load76 = load <2 x double>, <2 x double>* %16, align 8, !tbaa !2
  %17 = fmul <2 x double> %broadcast.splat, %wide.load75
  %18 = fmul <2 x double> %broadcast.splat78, %wide.load76
  %19 = fadd <2 x double> %wide.load, %17
  %20 = fadd <2 x double> %wide.load74, %18
  %21 = bitcast double* %9 to <2 x double>*
  store <2 x double> %19, <2 x double>* %21, align 8, !tbaa !2
  %22 = bitcast double* %11 to <2 x double>*
  store <2 x double> %20, <2 x double>* %22, align 8, !tbaa !2
  %index.next = or i64 %index, 4
  %23 = getelementptr inbounds double, double* %arraydecay7, i64 %index.next
  %24 = bitcast double* %23 to <2 x double>*
  %wide.load.1 = load <2 x double>, <2 x double>* %24, align 8, !tbaa !2
  %25 = getelementptr inbounds double, double* %23, i64 2
  %26 = bitcast double* %25 to <2 x double>*
  %wide.load74.1 = load <2 x double>, <2 x double>* %26, align 8, !tbaa !2
  %27 = getelementptr inbounds [2200 x double], [2200 x double]* %call.i66, i64 %indvars.iv10.i, i64 %index.next
  %28 = bitcast double* %27 to <2 x double>*
  %wide.load75.1 = load <2 x double>, <2 x double>* %28, align 8, !tbaa !2
  %29 = getelementptr inbounds double, double* %27, i64 2
  %30 = bitcast double* %29 to <2 x double>*
  %wide.load76.1 = load <2 x double>, <2 x double>* %30, align 8, !tbaa !2
  %31 = fmul <2 x double> %broadcast.splat, %wide.load75.1
  %32 = fmul <2 x double> %broadcast.splat78, %wide.load76.1
  %33 = fadd <2 x double> %wide.load.1, %31
  %34 = fadd <2 x double> %wide.load74.1, %32
  %35 = bitcast double* %23 to <2 x double>*
  store <2 x double> %33, <2 x double>* %35, align 8, !tbaa !2
  %36 = bitcast double* %25 to <2 x double>*
  store <2 x double> %34, <2 x double>* %36, align 8, !tbaa !2
  %index.next.1 = add nuw nsw i64 %index, 8
  %37 = icmp eq i64 %index.next.1, 2200
  br i1 %37, label %for.inc40.i, label %vector.body, !llvm.loop !8

for.inc40.i:                                      ; preds = %vector.body
  %indvars.iv.next11.i = add nuw nsw i64 %indvars.iv10.i, 1
  %exitcond12.not.i = icmp eq i64 %indvars.iv.next11.i, 1800
  br i1 %exitcond12.not.i, label %kernel_atax.exit, label %for.body3.i, !llvm.loop !10

kernel_atax.exit:                                 ; preds = %for.inc40.i
  tail call void (...) @polybench_timer_stop() #8
  tail call void (...) @polybench_timer_print() #8
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_atax.exit
  %38 = load i8*, i8** %argv, align 8, !tbaa !11
  %strcmpload = load i8, i8* %38, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !11
  %40 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %39) #9
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !11
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #9
  br label %for.body.i35

for.body.i35:                                     ; preds = %if.end.i, %if.then
  %indvars.iv.i34 = phi i64 [ 0, %if.then ], [ %indvars.iv.next.i37, %if.end.i ]
  %i.02.i = phi i32 [ 0, %if.then ], [ %inc.i, %if.end.i ]
  %rem.lhs.trunc.i = trunc i32 %i.02.i to i16
  %rem1.i = urem i16 %rem.lhs.trunc.i, 20
  %cmp2.i = icmp eq i16 %rem1.i, 0
  br i1 %cmp2.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i35
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !11
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %42) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i35
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !11
  %arrayidx.i36 = getelementptr inbounds double, double* %arraydecay7, i64 %indvars.iv.i34
  %44 = load double, double* %arrayidx.i36, align 8, !tbaa !2
  %call4.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %44) #9
  %indvars.iv.next.i37 = add nuw nsw i64 %indvars.iv.i34, 1
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i38 = icmp eq i64 %indvars.iv.next.i37, 2200
  br i1 %exitcond.not.i38, label %print_array.exit, label %for.body.i35, !llvm.loop !13

print_array.exit:                                 ; preds = %if.end.i
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !11
  %call5.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #9
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !11
  %47 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %46) #9
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_atax.exit
  tail call void @free(i8* %call.i) #8
  tail call void @free(i8* %call.i27) #8
  tail call void @free(i8* nonnull %call.i28) #8
  ret i32 0

polly.stmt.for.body.i:                            ; preds = %polly.stmt.for.body.i, %polly.loop_preheader
  %polly.indvar = phi i64 [ 0, %polly.loop_preheader ], [ %polly.indvar_next.1, %polly.stmt.for.body.i ]
  %48 = trunc i64 %polly.indvar to i32
  %p_conv2.i = sitofp i32 %48 to double
  %p_div.i = fdiv double %p_conv2.i, 2.200000e+03
  %p_add.i = fadd double %p_div.i, 1.000000e+00
  %49 = shl nuw nsw i64 %polly.indvar, 3
  %scevgep = getelementptr i8, i8* %call.i27, i64 %49
  %scevgep39 = bitcast i8* %scevgep to double*
  store double %p_add.i, double* %scevgep39, align 8, !alias.scope !14, !noalias !16
  %polly.indvar_next = or i64 %polly.indvar, 1
  %50 = trunc i64 %polly.indvar_next to i32
  %p_conv2.i.1 = sitofp i32 %50 to double
  %p_div.i.1 = fdiv double %p_conv2.i.1, 2.200000e+03
  %p_add.i.1 = fadd double %p_div.i.1, 1.000000e+00
  %51 = shl nuw nsw i64 %polly.indvar_next, 3
  %scevgep.1 = getelementptr i8, i8* %call.i27, i64 %51
  %scevgep39.1 = bitcast i8* %scevgep.1 to double*
  store double %p_add.i.1, double* %scevgep39.1, align 8, !alias.scope !14, !noalias !16
  %polly.indvar_next.1 = add nuw nsw i64 %polly.indvar, 2
  %exitcond.not.1 = icmp eq i64 %polly.indvar_next.1, 2200
  br i1 %exitcond.not.1, label %polly.loop_preheader47.preheader, label %polly.stmt.for.body.i

polly.loop_preheader47.preheader:                 ; preds = %polly.stmt.for.body.i
  %call.i66 = bitcast i8* %call.i to [2200 x double]*
  br label %polly.loop_preheader47

polly.loop_exit48:                                ; preds = %polly.loop_exit54
  %polly.indvar_next44 = add nuw nsw i64 %polly.indvar43, 1
  %indvars.iv.next69 = add nsw i64 %indvars.iv68, -32
  %exitcond73.not = icmp eq i64 %polly.indvar_next44, 57
  br i1 %exitcond73.not, label %init_array.exit, label %polly.loop_preheader47

polly.loop_exit54:                                ; preds = %polly.loop_exit60
  %polly.indvar_next50 = add nuw nsw i64 %polly.indvar49, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -32
  %exitcond72.not = icmp eq i64 %polly.indvar_next50, 69
  br i1 %exitcond72.not, label %polly.loop_exit48, label %polly.loop_preheader53

polly.loop_preheader47:                           ; preds = %polly.loop_preheader47.preheader, %polly.loop_exit48
  %indvars.iv68 = phi i64 [ 0, %polly.loop_preheader47.preheader ], [ %indvars.iv.next69, %polly.loop_exit48 ]
  %polly.indvar43 = phi i64 [ 0, %polly.loop_preheader47.preheader ], [ %polly.indvar_next44, %polly.loop_exit48 ]
  %smin70 = call i64 @llvm.smin.i64(i64 %indvars.iv68, i64 -1768)
  %52 = shl nsw i64 %polly.indvar43, 5
  %53 = add nsw i64 %smin70, 1799
  br label %polly.loop_preheader53

polly.loop_exit60:                                ; preds = %polly.stmt.for.body10.i
  %polly.indvar_next56 = add nuw nsw i64 %polly.indvar55, 1
  %exitcond71.not = icmp eq i64 %polly.indvar55, %53
  br i1 %exitcond71.not, label %polly.loop_exit54, label %polly.loop_preheader59

polly.loop_preheader53:                           ; preds = %polly.loop_preheader47, %polly.loop_exit54
  %indvars.iv = phi i64 [ 0, %polly.loop_preheader47 ], [ %indvars.iv.next, %polly.loop_exit54 ]
  %polly.indvar49 = phi i64 [ 0, %polly.loop_preheader47 ], [ %polly.indvar_next50, %polly.loop_exit54 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 -2168)
  %54 = shl nsw i64 %polly.indvar49, 5
  %55 = add nsw i64 %smin, 2199
  br label %polly.loop_preheader59

polly.stmt.for.body10.i:                          ; preds = %polly.loop_preheader59, %polly.stmt.for.body10.i
  %polly.indvar61 = phi i64 [ 0, %polly.loop_preheader59 ], [ %polly.indvar_next62, %polly.stmt.for.body10.i ]
  %56 = add nuw nsw i64 %polly.indvar61, %54
  %57 = trunc i64 %56 to i32
  %58 = add i32 %57, %63
  %59 = urem i32 %58, 2200
  %p_conv12.i = sitofp i32 %59 to double
  %p_div14.i = fdiv double %p_conv12.i, 9.000000e+03
  %60 = shl i64 %56, 3
  %61 = add nuw nsw i64 %60, %64
  %scevgep64 = getelementptr i8, i8* %call.i, i64 %61
  %scevgep6465 = bitcast i8* %scevgep64 to double*
  store double %p_div14.i, double* %scevgep6465, align 8, !alias.scope !17, !noalias !18
  %polly.indvar_next62 = add nuw nsw i64 %polly.indvar61, 1
  %exitcond67.not = icmp eq i64 %polly.indvar61, %55
  br i1 %exitcond67.not, label %polly.loop_exit60, label %polly.stmt.for.body10.i

polly.loop_preheader59:                           ; preds = %polly.loop_preheader53, %polly.loop_exit60
  %polly.indvar55 = phi i64 [ 0, %polly.loop_preheader53 ], [ %polly.indvar_next56, %polly.loop_exit60 ]
  %62 = add nuw nsw i64 %polly.indvar55, %52
  %63 = trunc i64 %62 to i32
  %64 = mul nuw nsw i64 %62, 17600
  br label %polly.stmt.for.body10.i
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

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #7

attributes #0 = { nounwind uwtable "frame-pointer"="none" "no-trapping-math"="true" "polly-optimized" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inaccessiblemem_or_argmemonly nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inaccessiblememonly nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #7 = { nofree nosync nounwind readnone speculatable willreturn }
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
!8 = distinct !{!8, !7, !9}
!9 = !{!"llvm.loop.isvectorized", i32 1}
!10 = distinct !{!10, !7}
!11 = !{!12, !12, i64 0}
!12 = !{!"any pointer", !4, i64 0}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !15, !"polly.alias.scope.MemRef0"}
!15 = distinct !{!15, !"polly.alias.scope.domain"}
!16 = !{!17}
!17 = distinct !{!17, !15, !"polly.alias.scope.MemRef2"}
!18 = !{!14}

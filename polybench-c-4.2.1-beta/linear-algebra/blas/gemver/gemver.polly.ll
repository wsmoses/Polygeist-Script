; ModuleID = 'gemver.c'
source_filename = "gemver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** nocapture readonly %argv) local_unnamed_addr #0 {
entry.split:
  %call.i = tail call noalias dereferenceable_or_null(128000000) i8* @malloc(i64 128000000) #7
  %call.i59 = tail call noalias dereferenceable_or_null(32000) i8* @malloc(i64 32000) #7
  %call.i60 = tail call noalias dereferenceable_or_null(32000) i8* @malloc(i64 32000) #7
  %call.i61 = tail call noalias dereferenceable_or_null(32000) i8* @malloc(i64 32000) #7
  %call.i62 = tail call noalias dereferenceable_or_null(32000) i8* @malloc(i64 32000) #7
  %call.i63 = tail call noalias dereferenceable_or_null(32000) i8* @malloc(i64 32000) #7
  %call.i64 = tail call noalias dereferenceable_or_null(32000) i8* @malloc(i64 32000) #7
  %call.i65 = tail call noalias dereferenceable_or_null(32000) i8* @malloc(i64 32000) #7
  %call.i66 = tail call noalias dereferenceable_or_null(32000) i8* @malloc(i64 32000) #7
  %arraydecay = bitcast i8* %call.i to [4000 x double]*
  %arraydecay9 = bitcast i8* %call.i59 to double*
  %arraydecay10 = bitcast i8* %call.i60 to double*
  %arraydecay11 = bitcast i8* %call.i61 to double*
  %arraydecay12 = bitcast i8* %call.i62 to double*
  %arraydecay15 = bitcast i8* %call.i65 to double*
  %arraydecay16 = bitcast i8* %call.i66 to double*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32000) %call.i64, i8 0, i64 32000, i1 false)
  %0 = getelementptr inbounds i8, i8* %call.i63, i64 8
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32000) %0, i8 0, i64 31992, i1 false)
  br label %for.body.i

for.cond.loopexit.i:                              ; preds = %for.body38.i
  %exitcond8.not.i = icmp eq i64 %indvars.iv.next7.i, 4000
  br i1 %exitcond8.not.i, label %polly.loop_preheader, label %for.body.i, !llvm.loop !2

for.body.i:                                       ; preds = %for.cond.loopexit.i, %entry.split
  %indvars.iv6.i = phi i64 [ 0, %entry.split ], [ %indvars.iv.next7.i, %for.cond.loopexit.i ]
  %1 = trunc i64 %indvars.iv6.i to i32
  %conv2.i = sitofp i32 %1 to double
  %arrayidx.i = getelementptr inbounds double, double* %arraydecay9, i64 %indvars.iv6.i
  store double %conv2.i, double* %arrayidx.i, align 8, !tbaa !4
  %indvars.iv.next7.i = add nuw nsw i64 %indvars.iv6.i, 1
  %2 = trunc i64 %indvars.iv.next7.i to i32
  %conv3.i = sitofp i32 %2 to double
  %div.i = fdiv double %conv3.i, 4.000000e+03
  %div4.i = fmul double %div.i, 5.000000e-01
  %arrayidx6.i = getelementptr inbounds double, double* %arraydecay11, i64 %indvars.iv6.i
  store double %div4.i, double* %arrayidx6.i, align 8, !tbaa !4
  %div10.i = fmul double %div.i, 2.500000e-01
  %arrayidx12.i = getelementptr inbounds double, double* %arraydecay10, i64 %indvars.iv6.i
  store double %div10.i, double* %arrayidx12.i, align 8, !tbaa !4
  %div16.i = fdiv double %div.i, 6.000000e+00
  %arrayidx18.i = getelementptr inbounds double, double* %arraydecay12, i64 %indvars.iv6.i
  store double %div16.i, double* %arrayidx18.i, align 8, !tbaa !4
  %div22.i = fmul double %div.i, 1.250000e-01
  %arrayidx24.i = getelementptr inbounds double, double* %arraydecay15, i64 %indvars.iv6.i
  store double %div22.i, double* %arrayidx24.i, align 8, !tbaa !4
  %div28.i = fdiv double %div.i, 9.000000e+00
  %arrayidx30.i = getelementptr inbounds double, double* %arraydecay16, i64 %indvars.iv6.i
  store double %div28.i, double* %arrayidx30.i, align 8, !tbaa !4
  br label %for.body38.i

for.body38.i:                                     ; preds = %for.body38.i, %for.body.i
  %indvars.iv.i = phi i64 [ 0, %for.body.i ], [ %indvars.iv.next.i, %for.body38.i ]
  %3 = mul nuw nsw i64 %indvars.iv.i, %indvars.iv6.i
  %4 = trunc i64 %3 to i32
  %rem.i = urem i32 %4, 4000
  %conv39.i = sitofp i32 %rem.i to double
  %div41.i = fdiv double %conv39.i, 4.000000e+03
  %arrayidx45.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv6.i, i64 %indvars.iv.i
  store double %div41.i, double* %arrayidx45.i, align 8, !tbaa !4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 4000
  br i1 %exitcond.not.i, label %for.cond.loopexit.i, label %for.body38.i, !llvm.loop !8

kernel_gemver.exit:                               ; preds = %polly.loop_exit169
  tail call void (...) @polybench_timer_stop() #7
  tail call void (...) @polybench_timer_print() #7
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_gemver.exit
  %5 = load i8*, i8** %argv, align 8, !tbaa !9
  %strcmpload = load i8, i8* %5, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %7 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %6) #8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #8
  br label %for.body.i73

for.body.i73:                                     ; preds = %if.end.i, %if.then
  %indvars.iv.i72 = phi i64 [ 0, %if.then ], [ %indvars.iv.next.i75, %if.end.i ]
  %i.02.i = phi i32 [ 0, %if.then ], [ %inc.i, %if.end.i ]
  %rem.lhs.trunc.i = trunc i32 %i.02.i to i16
  %rem1.i = urem i16 %rem.lhs.trunc.i, 20
  %cmp2.i = icmp eq i16 %rem1.i, 0
  br i1 %cmp2.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i73
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %9) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i73
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %arrayidx.i74 = getelementptr inbounds double, double* %arraydecay13, i64 %indvars.iv.i72
  %11 = load double, double* %arrayidx.i74, align 8, !tbaa !4
  %call4.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %11) #8
  %indvars.iv.next.i75 = add nuw nsw i64 %indvars.iv.i72, 1
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i76 = icmp eq i64 %indvars.iv.next.i75, 4000
  br i1 %exitcond.not.i76, label %print_array.exit, label %for.body.i73, !llvm.loop !11

print_array.exit:                                 ; preds = %if.end.i
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %call5.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %14 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %13) #8
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_gemver.exit
  tail call void @free(i8* %call.i) #7
  tail call void @free(i8* %call.i59) #7
  tail call void @free(i8* %call.i60) #7
  tail call void @free(i8* %call.i61) #7
  tail call void @free(i8* %call.i62) #7
  tail call void @free(i8* nonnull %call.i63) #7
  tail call void @free(i8* %call.i64) #7
  tail call void @free(i8* %call.i65) #7
  tail call void @free(i8* %call.i66) #7
  ret i32 0

polly.loop_exit83:                                ; preds = %polly.loop_exit89
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond201.not = icmp eq i64 %polly.indvar_next, 125
  br i1 %exitcond201.not, label %polly.stmt.for.body50.i.preheader, label %polly.loop_preheader82

polly.stmt.for.body50.i.preheader:                ; preds = %polly.loop_exit83
  %arraydecay13 = bitcast i8* %call.i63 to double*
  store double 0.000000e+00, double* %arraydecay13, align 8, !alias.scope !12, !noalias !14
  %polly.access.cast.call.i64 = bitcast i8* %call.i64 to double*
  store double 0.000000e+00, double* %polly.access.cast.call.i64, align 8, !alias.scope !21, !noalias !23
  br label %polly.loop_preheader121

polly.loop_preheader:                             ; preds = %for.cond.loopexit.i
  tail call void (...) @polybench_timer_start() #7
  br label %polly.loop_preheader82

polly.loop_exit89:                                ; preds = %polly.loop_preheader94
  %polly.indvar_next85 = add nuw nsw i64 %polly.indvar84, 1
  %exitcond200.not = icmp eq i64 %polly.indvar_next85, 125
  br i1 %exitcond200.not, label %polly.loop_exit83, label %polly.loop_preheader88

polly.loop_preheader82:                           ; preds = %polly.loop_preheader, %polly.loop_exit83
  %polly.indvar = phi i64 [ 0, %polly.loop_preheader ], [ %polly.indvar_next, %polly.loop_exit83 ]
  %15 = shl nsw i64 %polly.indvar, 5
  br label %polly.loop_preheader88

polly.loop_preheader88:                           ; preds = %polly.loop_preheader82, %polly.loop_exit89
  %polly.indvar84 = phi i64 [ 0, %polly.loop_preheader82 ], [ %polly.indvar_next85, %polly.loop_exit89 ]
  %16 = shl i64 %polly.indvar84, 8
  %17 = shl i64 %polly.indvar84, 8
  %18 = getelementptr i8, i8* %call.i60, i64 %17
  %19 = bitcast i8* %18 to <2 x double>*
  %wide.load211 = load <2 x double>, <2 x double>* %19, align 8, !alias.scope !18, !noalias !24
  %20 = getelementptr i8, i8* %call.i62, i64 %17
  %21 = bitcast i8* %20 to <2 x double>*
  %wide.load212 = load <2 x double>, <2 x double>* %21, align 8, !alias.scope !19, !noalias !25
  %22 = shl i64 %polly.indvar84, 8
  %23 = or i64 %22, 16
  %24 = getelementptr i8, i8* %call.i60, i64 %23
  %25 = bitcast i8* %24 to <2 x double>*
  %wide.load211.1 = load <2 x double>, <2 x double>* %25, align 8, !alias.scope !18, !noalias !24
  %26 = getelementptr i8, i8* %call.i62, i64 %23
  %27 = bitcast i8* %26 to <2 x double>*
  %wide.load212.1 = load <2 x double>, <2 x double>* %27, align 8, !alias.scope !19, !noalias !25
  %28 = shl i64 %polly.indvar84, 8
  %29 = or i64 %28, 32
  %30 = getelementptr i8, i8* %call.i60, i64 %29
  %31 = bitcast i8* %30 to <2 x double>*
  %wide.load211.2 = load <2 x double>, <2 x double>* %31, align 8, !alias.scope !18, !noalias !24
  %32 = getelementptr i8, i8* %call.i62, i64 %29
  %33 = bitcast i8* %32 to <2 x double>*
  %wide.load212.2 = load <2 x double>, <2 x double>* %33, align 8, !alias.scope !19, !noalias !25
  %34 = shl i64 %polly.indvar84, 8
  %35 = or i64 %34, 48
  %36 = getelementptr i8, i8* %call.i60, i64 %35
  %37 = bitcast i8* %36 to <2 x double>*
  %wide.load211.3 = load <2 x double>, <2 x double>* %37, align 8, !alias.scope !18, !noalias !24
  %38 = getelementptr i8, i8* %call.i62, i64 %35
  %39 = bitcast i8* %38 to <2 x double>*
  %wide.load212.3 = load <2 x double>, <2 x double>* %39, align 8, !alias.scope !19, !noalias !25
  %40 = shl i64 %polly.indvar84, 8
  %41 = or i64 %40, 64
  %42 = getelementptr i8, i8* %call.i60, i64 %41
  %43 = bitcast i8* %42 to <2 x double>*
  %wide.load211.4 = load <2 x double>, <2 x double>* %43, align 8, !alias.scope !18, !noalias !24
  %44 = getelementptr i8, i8* %call.i62, i64 %41
  %45 = bitcast i8* %44 to <2 x double>*
  %wide.load212.4 = load <2 x double>, <2 x double>* %45, align 8, !alias.scope !19, !noalias !25
  %46 = shl i64 %polly.indvar84, 8
  %47 = or i64 %46, 80
  %48 = getelementptr i8, i8* %call.i60, i64 %47
  %49 = bitcast i8* %48 to <2 x double>*
  %wide.load211.5 = load <2 x double>, <2 x double>* %49, align 8, !alias.scope !18, !noalias !24
  %50 = getelementptr i8, i8* %call.i62, i64 %47
  %51 = bitcast i8* %50 to <2 x double>*
  %wide.load212.5 = load <2 x double>, <2 x double>* %51, align 8, !alias.scope !19, !noalias !25
  %52 = shl i64 %polly.indvar84, 8
  %53 = or i64 %52, 96
  %54 = getelementptr i8, i8* %call.i60, i64 %53
  %55 = bitcast i8* %54 to <2 x double>*
  %wide.load211.6 = load <2 x double>, <2 x double>* %55, align 8, !alias.scope !18, !noalias !24
  %56 = getelementptr i8, i8* %call.i62, i64 %53
  %57 = bitcast i8* %56 to <2 x double>*
  %wide.load212.6 = load <2 x double>, <2 x double>* %57, align 8, !alias.scope !19, !noalias !25
  %58 = shl i64 %polly.indvar84, 8
  %59 = or i64 %58, 112
  %60 = getelementptr i8, i8* %call.i60, i64 %59
  %61 = bitcast i8* %60 to <2 x double>*
  %wide.load211.7 = load <2 x double>, <2 x double>* %61, align 8, !alias.scope !18, !noalias !24
  %62 = getelementptr i8, i8* %call.i62, i64 %59
  %63 = bitcast i8* %62 to <2 x double>*
  %wide.load212.7 = load <2 x double>, <2 x double>* %63, align 8, !alias.scope !19, !noalias !25
  %64 = shl i64 %polly.indvar84, 8
  %65 = or i64 %64, 128
  %66 = getelementptr i8, i8* %call.i60, i64 %65
  %67 = bitcast i8* %66 to <2 x double>*
  %wide.load211.8 = load <2 x double>, <2 x double>* %67, align 8, !alias.scope !18, !noalias !24
  %68 = getelementptr i8, i8* %call.i62, i64 %65
  %69 = bitcast i8* %68 to <2 x double>*
  %wide.load212.8 = load <2 x double>, <2 x double>* %69, align 8, !alias.scope !19, !noalias !25
  %70 = shl i64 %polly.indvar84, 8
  %71 = or i64 %70, 144
  %72 = getelementptr i8, i8* %call.i60, i64 %71
  %73 = bitcast i8* %72 to <2 x double>*
  %wide.load211.9 = load <2 x double>, <2 x double>* %73, align 8, !alias.scope !18, !noalias !24
  %74 = getelementptr i8, i8* %call.i62, i64 %71
  %75 = bitcast i8* %74 to <2 x double>*
  %wide.load212.9 = load <2 x double>, <2 x double>* %75, align 8, !alias.scope !19, !noalias !25
  %76 = shl i64 %polly.indvar84, 8
  %77 = or i64 %76, 160
  %78 = getelementptr i8, i8* %call.i60, i64 %77
  %79 = bitcast i8* %78 to <2 x double>*
  %wide.load211.10 = load <2 x double>, <2 x double>* %79, align 8, !alias.scope !18, !noalias !24
  %80 = getelementptr i8, i8* %call.i62, i64 %77
  %81 = bitcast i8* %80 to <2 x double>*
  %wide.load212.10 = load <2 x double>, <2 x double>* %81, align 8, !alias.scope !19, !noalias !25
  %82 = shl i64 %polly.indvar84, 8
  %83 = or i64 %82, 176
  %84 = getelementptr i8, i8* %call.i60, i64 %83
  %85 = bitcast i8* %84 to <2 x double>*
  %wide.load211.11 = load <2 x double>, <2 x double>* %85, align 8, !alias.scope !18, !noalias !24
  %86 = getelementptr i8, i8* %call.i62, i64 %83
  %87 = bitcast i8* %86 to <2 x double>*
  %wide.load212.11 = load <2 x double>, <2 x double>* %87, align 8, !alias.scope !19, !noalias !25
  %88 = shl i64 %polly.indvar84, 8
  %89 = or i64 %88, 192
  %90 = getelementptr i8, i8* %call.i60, i64 %89
  %91 = bitcast i8* %90 to <2 x double>*
  %wide.load211.12 = load <2 x double>, <2 x double>* %91, align 8, !alias.scope !18, !noalias !24
  %92 = getelementptr i8, i8* %call.i62, i64 %89
  %93 = bitcast i8* %92 to <2 x double>*
  %wide.load212.12 = load <2 x double>, <2 x double>* %93, align 8, !alias.scope !19, !noalias !25
  %94 = shl i64 %polly.indvar84, 8
  %95 = or i64 %94, 208
  %96 = getelementptr i8, i8* %call.i60, i64 %95
  %97 = bitcast i8* %96 to <2 x double>*
  %wide.load211.13 = load <2 x double>, <2 x double>* %97, align 8, !alias.scope !18, !noalias !24
  %98 = getelementptr i8, i8* %call.i62, i64 %95
  %99 = bitcast i8* %98 to <2 x double>*
  %wide.load212.13 = load <2 x double>, <2 x double>* %99, align 8, !alias.scope !19, !noalias !25
  %100 = shl i64 %polly.indvar84, 8
  %101 = or i64 %100, 224
  %102 = getelementptr i8, i8* %call.i60, i64 %101
  %103 = bitcast i8* %102 to <2 x double>*
  %wide.load211.14 = load <2 x double>, <2 x double>* %103, align 8, !alias.scope !18, !noalias !24
  %104 = getelementptr i8, i8* %call.i62, i64 %101
  %105 = bitcast i8* %104 to <2 x double>*
  %wide.load212.14 = load <2 x double>, <2 x double>* %105, align 8, !alias.scope !19, !noalias !25
  %106 = or i64 %16, 240
  %107 = getelementptr i8, i8* %call.i60, i64 %106
  %108 = bitcast i8* %107 to <2 x double>*
  %wide.load211.15 = load <2 x double>, <2 x double>* %108, align 8, !alias.scope !18, !noalias !24
  %109 = getelementptr i8, i8* %call.i62, i64 %106
  %110 = bitcast i8* %109 to <2 x double>*
  %wide.load212.15 = load <2 x double>, <2 x double>* %110, align 8, !alias.scope !19, !noalias !25
  br label %polly.loop_preheader94

polly.loop_preheader94:                           ; preds = %polly.loop_preheader88, %polly.loop_preheader94
  %polly.indvar90 = phi i64 [ 0, %polly.loop_preheader88 ], [ %polly.indvar_next91, %polly.loop_preheader94 ]
  %111 = add nuw nsw i64 %polly.indvar90, %15
  %112 = mul nuw nsw i64 %111, 32000
  %polly.access.call.i59 = getelementptr double, double* %arraydecay9, i64 %111
  %_p_scalar_99 = load double, double* %polly.access.call.i59, align 8, !alias.scope !15, !noalias !26
  %polly.access.call.i61 = getelementptr double, double* %arraydecay11, i64 %111
  %_p_scalar_ = load double, double* %polly.access.call.i61, align 8, !alias.scope !16, !noalias !27
  %broadcast.splatinsert = insertelement <2 x double> poison, double %_p_scalar_99, i32 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert213 = insertelement <2 x double> poison, double %_p_scalar_, i32 0
  %broadcast.splat214 = shufflevector <2 x double> %broadcast.splatinsert213, <2 x double> poison, <2 x i32> zeroinitializer
  %113 = add nuw nsw i64 %17, %112
  %114 = getelementptr i8, i8* %call.i, i64 %113
  %115 = bitcast i8* %114 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %115, align 8, !alias.scope !17, !noalias !28
  %116 = fmul <2 x double> %broadcast.splat, %wide.load211
  %117 = fadd <2 x double> %wide.load, %116
  %118 = fmul <2 x double> %broadcast.splat214, %wide.load212
  %119 = fadd <2 x double> %117, %118
  %120 = bitcast i8* %114 to <2 x double>*
  store <2 x double> %119, <2 x double>* %120, align 8, !alias.scope !17, !noalias !28
  %121 = add nuw nsw i64 %23, %112
  %122 = getelementptr i8, i8* %call.i, i64 %121
  %123 = bitcast i8* %122 to <2 x double>*
  %wide.load.1 = load <2 x double>, <2 x double>* %123, align 8, !alias.scope !17, !noalias !28
  %124 = fmul <2 x double> %broadcast.splat, %wide.load211.1
  %125 = fadd <2 x double> %wide.load.1, %124
  %126 = fmul <2 x double> %broadcast.splat214, %wide.load212.1
  %127 = fadd <2 x double> %125, %126
  %128 = bitcast i8* %122 to <2 x double>*
  store <2 x double> %127, <2 x double>* %128, align 8, !alias.scope !17, !noalias !28
  %129 = add nuw nsw i64 %29, %112
  %130 = getelementptr i8, i8* %call.i, i64 %129
  %131 = bitcast i8* %130 to <2 x double>*
  %wide.load.2 = load <2 x double>, <2 x double>* %131, align 8, !alias.scope !17, !noalias !28
  %132 = fmul <2 x double> %broadcast.splat, %wide.load211.2
  %133 = fadd <2 x double> %wide.load.2, %132
  %134 = fmul <2 x double> %broadcast.splat214, %wide.load212.2
  %135 = fadd <2 x double> %133, %134
  %136 = bitcast i8* %130 to <2 x double>*
  store <2 x double> %135, <2 x double>* %136, align 8, !alias.scope !17, !noalias !28
  %137 = add nuw nsw i64 %35, %112
  %138 = getelementptr i8, i8* %call.i, i64 %137
  %139 = bitcast i8* %138 to <2 x double>*
  %wide.load.3 = load <2 x double>, <2 x double>* %139, align 8, !alias.scope !17, !noalias !28
  %140 = fmul <2 x double> %broadcast.splat, %wide.load211.3
  %141 = fadd <2 x double> %wide.load.3, %140
  %142 = fmul <2 x double> %broadcast.splat214, %wide.load212.3
  %143 = fadd <2 x double> %141, %142
  %144 = bitcast i8* %138 to <2 x double>*
  store <2 x double> %143, <2 x double>* %144, align 8, !alias.scope !17, !noalias !28
  %145 = add nuw nsw i64 %41, %112
  %146 = getelementptr i8, i8* %call.i, i64 %145
  %147 = bitcast i8* %146 to <2 x double>*
  %wide.load.4 = load <2 x double>, <2 x double>* %147, align 8, !alias.scope !17, !noalias !28
  %148 = fmul <2 x double> %broadcast.splat, %wide.load211.4
  %149 = fadd <2 x double> %wide.load.4, %148
  %150 = fmul <2 x double> %broadcast.splat214, %wide.load212.4
  %151 = fadd <2 x double> %149, %150
  %152 = bitcast i8* %146 to <2 x double>*
  store <2 x double> %151, <2 x double>* %152, align 8, !alias.scope !17, !noalias !28
  %153 = add nuw nsw i64 %47, %112
  %154 = getelementptr i8, i8* %call.i, i64 %153
  %155 = bitcast i8* %154 to <2 x double>*
  %wide.load.5 = load <2 x double>, <2 x double>* %155, align 8, !alias.scope !17, !noalias !28
  %156 = fmul <2 x double> %broadcast.splat, %wide.load211.5
  %157 = fadd <2 x double> %wide.load.5, %156
  %158 = fmul <2 x double> %broadcast.splat214, %wide.load212.5
  %159 = fadd <2 x double> %157, %158
  %160 = bitcast i8* %154 to <2 x double>*
  store <2 x double> %159, <2 x double>* %160, align 8, !alias.scope !17, !noalias !28
  %161 = add nuw nsw i64 %53, %112
  %162 = getelementptr i8, i8* %call.i, i64 %161
  %163 = bitcast i8* %162 to <2 x double>*
  %wide.load.6 = load <2 x double>, <2 x double>* %163, align 8, !alias.scope !17, !noalias !28
  %164 = fmul <2 x double> %broadcast.splat, %wide.load211.6
  %165 = fadd <2 x double> %wide.load.6, %164
  %166 = fmul <2 x double> %broadcast.splat214, %wide.load212.6
  %167 = fadd <2 x double> %165, %166
  %168 = bitcast i8* %162 to <2 x double>*
  store <2 x double> %167, <2 x double>* %168, align 8, !alias.scope !17, !noalias !28
  %169 = add nuw nsw i64 %59, %112
  %170 = getelementptr i8, i8* %call.i, i64 %169
  %171 = bitcast i8* %170 to <2 x double>*
  %wide.load.7 = load <2 x double>, <2 x double>* %171, align 8, !alias.scope !17, !noalias !28
  %172 = fmul <2 x double> %broadcast.splat, %wide.load211.7
  %173 = fadd <2 x double> %wide.load.7, %172
  %174 = fmul <2 x double> %broadcast.splat214, %wide.load212.7
  %175 = fadd <2 x double> %173, %174
  %176 = bitcast i8* %170 to <2 x double>*
  store <2 x double> %175, <2 x double>* %176, align 8, !alias.scope !17, !noalias !28
  %177 = add nuw nsw i64 %65, %112
  %178 = getelementptr i8, i8* %call.i, i64 %177
  %179 = bitcast i8* %178 to <2 x double>*
  %wide.load.8 = load <2 x double>, <2 x double>* %179, align 8, !alias.scope !17, !noalias !28
  %180 = fmul <2 x double> %broadcast.splat, %wide.load211.8
  %181 = fadd <2 x double> %wide.load.8, %180
  %182 = fmul <2 x double> %broadcast.splat214, %wide.load212.8
  %183 = fadd <2 x double> %181, %182
  %184 = bitcast i8* %178 to <2 x double>*
  store <2 x double> %183, <2 x double>* %184, align 8, !alias.scope !17, !noalias !28
  %185 = add nuw nsw i64 %71, %112
  %186 = getelementptr i8, i8* %call.i, i64 %185
  %187 = bitcast i8* %186 to <2 x double>*
  %wide.load.9 = load <2 x double>, <2 x double>* %187, align 8, !alias.scope !17, !noalias !28
  %188 = fmul <2 x double> %broadcast.splat, %wide.load211.9
  %189 = fadd <2 x double> %wide.load.9, %188
  %190 = fmul <2 x double> %broadcast.splat214, %wide.load212.9
  %191 = fadd <2 x double> %189, %190
  %192 = bitcast i8* %186 to <2 x double>*
  store <2 x double> %191, <2 x double>* %192, align 8, !alias.scope !17, !noalias !28
  %193 = add nuw nsw i64 %77, %112
  %194 = getelementptr i8, i8* %call.i, i64 %193
  %195 = bitcast i8* %194 to <2 x double>*
  %wide.load.10 = load <2 x double>, <2 x double>* %195, align 8, !alias.scope !17, !noalias !28
  %196 = fmul <2 x double> %broadcast.splat, %wide.load211.10
  %197 = fadd <2 x double> %wide.load.10, %196
  %198 = fmul <2 x double> %broadcast.splat214, %wide.load212.10
  %199 = fadd <2 x double> %197, %198
  %200 = bitcast i8* %194 to <2 x double>*
  store <2 x double> %199, <2 x double>* %200, align 8, !alias.scope !17, !noalias !28
  %201 = add nuw nsw i64 %83, %112
  %202 = getelementptr i8, i8* %call.i, i64 %201
  %203 = bitcast i8* %202 to <2 x double>*
  %wide.load.11 = load <2 x double>, <2 x double>* %203, align 8, !alias.scope !17, !noalias !28
  %204 = fmul <2 x double> %broadcast.splat, %wide.load211.11
  %205 = fadd <2 x double> %wide.load.11, %204
  %206 = fmul <2 x double> %broadcast.splat214, %wide.load212.11
  %207 = fadd <2 x double> %205, %206
  %208 = bitcast i8* %202 to <2 x double>*
  store <2 x double> %207, <2 x double>* %208, align 8, !alias.scope !17, !noalias !28
  %209 = add nuw nsw i64 %89, %112
  %210 = getelementptr i8, i8* %call.i, i64 %209
  %211 = bitcast i8* %210 to <2 x double>*
  %wide.load.12 = load <2 x double>, <2 x double>* %211, align 8, !alias.scope !17, !noalias !28
  %212 = fmul <2 x double> %broadcast.splat, %wide.load211.12
  %213 = fadd <2 x double> %wide.load.12, %212
  %214 = fmul <2 x double> %broadcast.splat214, %wide.load212.12
  %215 = fadd <2 x double> %213, %214
  %216 = bitcast i8* %210 to <2 x double>*
  store <2 x double> %215, <2 x double>* %216, align 8, !alias.scope !17, !noalias !28
  %217 = add nuw nsw i64 %95, %112
  %218 = getelementptr i8, i8* %call.i, i64 %217
  %219 = bitcast i8* %218 to <2 x double>*
  %wide.load.13 = load <2 x double>, <2 x double>* %219, align 8, !alias.scope !17, !noalias !28
  %220 = fmul <2 x double> %broadcast.splat, %wide.load211.13
  %221 = fadd <2 x double> %wide.load.13, %220
  %222 = fmul <2 x double> %broadcast.splat214, %wide.load212.13
  %223 = fadd <2 x double> %221, %222
  %224 = bitcast i8* %218 to <2 x double>*
  store <2 x double> %223, <2 x double>* %224, align 8, !alias.scope !17, !noalias !28
  %225 = add nuw nsw i64 %101, %112
  %226 = getelementptr i8, i8* %call.i, i64 %225
  %227 = bitcast i8* %226 to <2 x double>*
  %wide.load.14 = load <2 x double>, <2 x double>* %227, align 8, !alias.scope !17, !noalias !28
  %228 = fmul <2 x double> %broadcast.splat, %wide.load211.14
  %229 = fadd <2 x double> %wide.load.14, %228
  %230 = fmul <2 x double> %broadcast.splat214, %wide.load212.14
  %231 = fadd <2 x double> %229, %230
  %232 = bitcast i8* %226 to <2 x double>*
  store <2 x double> %231, <2 x double>* %232, align 8, !alias.scope !17, !noalias !28
  %233 = add nuw nsw i64 %106, %112
  %234 = getelementptr i8, i8* %call.i, i64 %233
  %235 = bitcast i8* %234 to <2 x double>*
  %wide.load.15 = load <2 x double>, <2 x double>* %235, align 8, !alias.scope !17, !noalias !28
  %236 = fmul <2 x double> %broadcast.splat, %wide.load211.15
  %237 = fadd <2 x double> %wide.load.15, %236
  %238 = fmul <2 x double> %broadcast.splat214, %wide.load212.15
  %239 = fadd <2 x double> %237, %238
  %240 = bitcast i8* %234 to <2 x double>*
  store <2 x double> %239, <2 x double>* %240, align 8, !alias.scope !17, !noalias !28
  %polly.indvar_next91 = add nuw nsw i64 %polly.indvar90, 1
  %exitcond199.not = icmp eq i64 %polly.indvar_next91, 32
  br i1 %exitcond199.not, label %polly.loop_exit89, label %polly.loop_preheader94

polly.loop_exit122:                               ; preds = %polly.loop_exit128
  %polly.indvar_next118 = add nuw nsw i64 %polly.indvar117, 1
  %exitcond205.not = icmp eq i64 %polly.indvar_next118, 125
  br i1 %exitcond205.not, label %vector.body217, label %polly.loop_preheader121

vector.body217:                                   ; preds = %polly.loop_exit122, %vector.body217
  %index219 = phi i64 [ %index.next220.1, %vector.body217 ], [ 0, %polly.loop_exit122 ]
  %241 = shl nuw nsw i64 %index219, 3
  %242 = getelementptr i8, i8* %call.i64, i64 %241
  %243 = bitcast i8* %242 to <2 x double>*
  %wide.load223 = load <2 x double>, <2 x double>* %243, align 8, !alias.scope !21, !noalias !23
  %244 = getelementptr i8, i8* %242, i64 16
  %245 = bitcast i8* %244 to <2 x double>*
  %wide.load224 = load <2 x double>, <2 x double>* %245, align 8, !alias.scope !21, !noalias !23
  %246 = getelementptr i8, i8* %call.i66, i64 %241
  %247 = bitcast i8* %246 to <2 x double>*
  %wide.load225 = load <2 x double>, <2 x double>* %247, align 8, !alias.scope !22, !noalias !29
  %248 = getelementptr i8, i8* %246, i64 16
  %249 = bitcast i8* %248 to <2 x double>*
  %wide.load226 = load <2 x double>, <2 x double>* %249, align 8, !alias.scope !22, !noalias !29
  %250 = fadd <2 x double> %wide.load223, %wide.load225
  %251 = fadd <2 x double> %wide.load224, %wide.load226
  %252 = bitcast i8* %242 to <2 x double>*
  store <2 x double> %250, <2 x double>* %252, align 8, !alias.scope !21, !noalias !23
  %253 = bitcast i8* %244 to <2 x double>*
  store <2 x double> %251, <2 x double>* %253, align 8, !alias.scope !21, !noalias !23
  %index.next220 = shl i64 %index219, 3
  %254 = or i64 %index.next220, 32
  %255 = getelementptr i8, i8* %call.i64, i64 %254
  %256 = bitcast i8* %255 to <2 x double>*
  %wide.load223.1 = load <2 x double>, <2 x double>* %256, align 8, !alias.scope !21, !noalias !23
  %257 = getelementptr i8, i8* %255, i64 16
  %258 = bitcast i8* %257 to <2 x double>*
  %wide.load224.1 = load <2 x double>, <2 x double>* %258, align 8, !alias.scope !21, !noalias !23
  %259 = getelementptr i8, i8* %call.i66, i64 %254
  %260 = bitcast i8* %259 to <2 x double>*
  %wide.load225.1 = load <2 x double>, <2 x double>* %260, align 8, !alias.scope !22, !noalias !29
  %261 = getelementptr i8, i8* %259, i64 16
  %262 = bitcast i8* %261 to <2 x double>*
  %wide.load226.1 = load <2 x double>, <2 x double>* %262, align 8, !alias.scope !22, !noalias !29
  %263 = fadd <2 x double> %wide.load223.1, %wide.load225.1
  %264 = fadd <2 x double> %wide.load224.1, %wide.load226.1
  %265 = bitcast i8* %255 to <2 x double>*
  store <2 x double> %263, <2 x double>* %265, align 8, !alias.scope !21, !noalias !23
  %266 = bitcast i8* %257 to <2 x double>*
  store <2 x double> %264, <2 x double>* %266, align 8, !alias.scope !21, !noalias !23
  %index.next220.1 = add nuw nsw i64 %index219, 8
  %267 = icmp eq i64 %index.next220.1, 4000
  br i1 %267, label %polly.loop_preheader168, label %vector.body217, !llvm.loop !30

polly.loop_exit128:                               ; preds = %polly.loop_exit134
  %polly.indvar_next124 = add nuw nsw i64 %polly.indvar123, 1
  %exitcond204.not = icmp eq i64 %polly.indvar_next124, 125
  br i1 %exitcond204.not, label %polly.loop_exit122, label %polly.loop_preheader127

polly.loop_preheader121:                          ; preds = %polly.stmt.for.body50.i.preheader, %polly.loop_exit122
  %polly.indvar117 = phi i64 [ 0, %polly.stmt.for.body50.i.preheader ], [ %polly.indvar_next118, %polly.loop_exit122 ]
  %268 = shl nsw i64 %polly.indvar117, 5
  br label %polly.loop_preheader127

polly.loop_exit134:                               ; preds = %polly.stmt.for.body28.i
  store double %p_add39.i.1, double* %polly.access.call.i64139, align 8, !alias.scope !32, !noalias !23
  %polly.indvar_next130 = add nuw nsw i64 %polly.indvar129, 1
  %exitcond203.not = icmp eq i64 %polly.indvar_next130, 32
  br i1 %exitcond203.not, label %polly.loop_exit128, label %polly.loop_preheader133

polly.loop_preheader127:                          ; preds = %polly.loop_preheader121, %polly.loop_exit128
  %polly.indvar123 = phi i64 [ 0, %polly.loop_preheader121 ], [ %polly.indvar_next124, %polly.loop_exit128 ]
  %269 = shl nsw i64 %polly.indvar123, 5
  br label %polly.loop_preheader133

polly.stmt.for.body28.i:                          ; preds = %polly.stmt.for.body28.i, %polly.loop_preheader133
  %p_add39.i197 = phi double [ %polly.access.call.i64139.promoted, %polly.loop_preheader133 ], [ %p_add39.i.1, %polly.stmt.for.body28.i ]
  %polly.indvar135 = phi i64 [ 0, %polly.loop_preheader133 ], [ %polly.indvar_next136.1, %polly.stmt.for.body28.i ]
  %270 = add nuw nsw i64 %polly.indvar135, %269
  %271 = mul nuw nsw i64 %270, 32000
  %272 = add nuw nsw i64 %271, %279
  %scevgep140 = getelementptr i8, i8* %call.i, i64 %272
  %scevgep140141 = bitcast i8* %scevgep140 to double*
  %_p_scalar_142 = load double, double* %scevgep140141, align 8, !alias.scope !17, !noalias !28
  %p_mul35.i = fmul double %_p_scalar_142, 1.200000e+00
  %273 = shl i64 %270, 3
  %scevgep143 = getelementptr i8, i8* %call.i65, i64 %273
  %scevgep143144 = bitcast i8* %scevgep143 to double*
  %_p_scalar_145 = load double, double* %scevgep143144, align 8, !alias.scope !20, !noalias !33
  %p_mul38.i = fmul double %p_mul35.i, %_p_scalar_145
  %p_add39.i = fadd double %p_add39.i197, %p_mul38.i
  %polly.indvar_next136 = or i64 %polly.indvar135, 1
  %274 = add nuw nsw i64 %polly.indvar_next136, %269
  %275 = mul nuw nsw i64 %274, 32000
  %276 = add nuw nsw i64 %275, %279
  %scevgep140.1 = getelementptr i8, i8* %call.i, i64 %276
  %scevgep140141.1 = bitcast i8* %scevgep140.1 to double*
  %_p_scalar_142.1 = load double, double* %scevgep140141.1, align 8, !alias.scope !17, !noalias !28
  %p_mul35.i.1 = fmul double %_p_scalar_142.1, 1.200000e+00
  %277 = shl i64 %274, 3
  %scevgep143.1 = getelementptr i8, i8* %call.i65, i64 %277
  %scevgep143144.1 = bitcast i8* %scevgep143.1 to double*
  %_p_scalar_145.1 = load double, double* %scevgep143144.1, align 8, !alias.scope !20, !noalias !33
  %p_mul38.i.1 = fmul double %p_mul35.i.1, %_p_scalar_145.1
  %p_add39.i.1 = fadd double %p_add39.i, %p_mul38.i.1
  %polly.indvar_next136.1 = add nuw nsw i64 %polly.indvar135, 2
  %exitcond202.not.1 = icmp eq i64 %polly.indvar_next136.1, 32
  br i1 %exitcond202.not.1, label %polly.loop_exit134, label %polly.stmt.for.body28.i

polly.loop_preheader133:                          ; preds = %polly.loop_preheader127, %polly.loop_exit134
  %polly.indvar129 = phi i64 [ 0, %polly.loop_preheader127 ], [ %polly.indvar_next130, %polly.loop_exit134 ]
  %278 = add nuw nsw i64 %polly.indvar129, %268
  %polly.access.call.i64139 = getelementptr double, double* %polly.access.cast.call.i64, i64 %278
  %279 = shl i64 %278, 3
  %polly.access.call.i64139.promoted = load double, double* %polly.access.call.i64139, align 8, !alias.scope !32, !noalias !23
  br label %polly.stmt.for.body28.i

polly.loop_exit169:                               ; preds = %polly.loop_exit175
  %polly.indvar_next165 = add nuw nsw i64 %polly.indvar164, 1
  %exitcond210.not = icmp eq i64 %polly.indvar_next165, 125
  br i1 %exitcond210.not, label %kernel_gemver.exit, label %polly.loop_preheader168

polly.loop_exit175:                               ; preds = %polly.loop_preheader180
  %polly.indvar_next171 = add nuw nsw i64 %polly.indvar170, 1
  %exitcond209.not = icmp eq i64 %polly.indvar_next171, 125
  br i1 %exitcond209.not, label %polly.loop_exit169, label %polly.loop_preheader174

polly.loop_preheader168:                          ; preds = %vector.body217, %polly.loop_exit169
  %polly.indvar164 = phi i64 [ %polly.indvar_next165, %polly.loop_exit169 ], [ 0, %vector.body217 ]
  %280 = shl nsw i64 %polly.indvar164, 5
  br label %polly.loop_preheader174

polly.loop_preheader174:                          ; preds = %polly.loop_preheader168, %polly.loop_exit175
  %polly.indvar170 = phi i64 [ 0, %polly.loop_preheader168 ], [ %polly.indvar_next171, %polly.loop_exit175 ]
  %281 = shl i64 %polly.indvar170, 8
  %282 = shl i64 %polly.indvar170, 8
  %scevgep190 = getelementptr i8, i8* %call.i64, i64 %282
  %scevgep190191 = bitcast i8* %scevgep190 to double*
  %_p_scalar_192 = load double, double* %scevgep190191, align 8, !alias.scope !21, !noalias !23
  %283 = shl i64 %polly.indvar170, 8
  %284 = or i64 %283, 8
  %scevgep190.1 = getelementptr i8, i8* %call.i64, i64 %284
  %scevgep190191.1 = bitcast i8* %scevgep190.1 to double*
  %_p_scalar_192.1 = load double, double* %scevgep190191.1, align 8, !alias.scope !21, !noalias !23
  %285 = shl i64 %polly.indvar170, 8
  %286 = or i64 %285, 16
  %scevgep190.2 = getelementptr i8, i8* %call.i64, i64 %286
  %scevgep190191.2 = bitcast i8* %scevgep190.2 to double*
  %_p_scalar_192.2 = load double, double* %scevgep190191.2, align 8, !alias.scope !21, !noalias !23
  %287 = shl i64 %polly.indvar170, 8
  %288 = or i64 %287, 24
  %scevgep190.3 = getelementptr i8, i8* %call.i64, i64 %288
  %scevgep190191.3 = bitcast i8* %scevgep190.3 to double*
  %_p_scalar_192.3 = load double, double* %scevgep190191.3, align 8, !alias.scope !21, !noalias !23
  %289 = shl i64 %polly.indvar170, 8
  %290 = or i64 %289, 32
  %scevgep190.4 = getelementptr i8, i8* %call.i64, i64 %290
  %scevgep190191.4 = bitcast i8* %scevgep190.4 to double*
  %_p_scalar_192.4 = load double, double* %scevgep190191.4, align 8, !alias.scope !21, !noalias !23
  %291 = shl i64 %polly.indvar170, 8
  %292 = or i64 %291, 40
  %scevgep190.5 = getelementptr i8, i8* %call.i64, i64 %292
  %scevgep190191.5 = bitcast i8* %scevgep190.5 to double*
  %_p_scalar_192.5 = load double, double* %scevgep190191.5, align 8, !alias.scope !21, !noalias !23
  %293 = shl i64 %polly.indvar170, 8
  %294 = or i64 %293, 48
  %scevgep190.6 = getelementptr i8, i8* %call.i64, i64 %294
  %scevgep190191.6 = bitcast i8* %scevgep190.6 to double*
  %_p_scalar_192.6 = load double, double* %scevgep190191.6, align 8, !alias.scope !21, !noalias !23
  %295 = shl i64 %polly.indvar170, 8
  %296 = or i64 %295, 56
  %scevgep190.7 = getelementptr i8, i8* %call.i64, i64 %296
  %scevgep190191.7 = bitcast i8* %scevgep190.7 to double*
  %_p_scalar_192.7 = load double, double* %scevgep190191.7, align 8, !alias.scope !21, !noalias !23
  %297 = shl i64 %polly.indvar170, 8
  %298 = or i64 %297, 64
  %scevgep190.8 = getelementptr i8, i8* %call.i64, i64 %298
  %scevgep190191.8 = bitcast i8* %scevgep190.8 to double*
  %_p_scalar_192.8 = load double, double* %scevgep190191.8, align 8, !alias.scope !21, !noalias !23
  %299 = shl i64 %polly.indvar170, 8
  %300 = or i64 %299, 72
  %scevgep190.9 = getelementptr i8, i8* %call.i64, i64 %300
  %scevgep190191.9 = bitcast i8* %scevgep190.9 to double*
  %_p_scalar_192.9 = load double, double* %scevgep190191.9, align 8, !alias.scope !21, !noalias !23
  %301 = shl i64 %polly.indvar170, 8
  %302 = or i64 %301, 80
  %scevgep190.10 = getelementptr i8, i8* %call.i64, i64 %302
  %scevgep190191.10 = bitcast i8* %scevgep190.10 to double*
  %_p_scalar_192.10 = load double, double* %scevgep190191.10, align 8, !alias.scope !21, !noalias !23
  %303 = shl i64 %polly.indvar170, 8
  %304 = or i64 %303, 88
  %scevgep190.11 = getelementptr i8, i8* %call.i64, i64 %304
  %scevgep190191.11 = bitcast i8* %scevgep190.11 to double*
  %_p_scalar_192.11 = load double, double* %scevgep190191.11, align 8, !alias.scope !21, !noalias !23
  %305 = shl i64 %polly.indvar170, 8
  %306 = or i64 %305, 96
  %scevgep190.12 = getelementptr i8, i8* %call.i64, i64 %306
  %scevgep190191.12 = bitcast i8* %scevgep190.12 to double*
  %_p_scalar_192.12 = load double, double* %scevgep190191.12, align 8, !alias.scope !21, !noalias !23
  %307 = shl i64 %polly.indvar170, 8
  %308 = or i64 %307, 104
  %scevgep190.13 = getelementptr i8, i8* %call.i64, i64 %308
  %scevgep190191.13 = bitcast i8* %scevgep190.13 to double*
  %_p_scalar_192.13 = load double, double* %scevgep190191.13, align 8, !alias.scope !21, !noalias !23
  %309 = shl i64 %polly.indvar170, 8
  %310 = or i64 %309, 112
  %scevgep190.14 = getelementptr i8, i8* %call.i64, i64 %310
  %scevgep190191.14 = bitcast i8* %scevgep190.14 to double*
  %_p_scalar_192.14 = load double, double* %scevgep190191.14, align 8, !alias.scope !21, !noalias !23
  %311 = shl i64 %polly.indvar170, 8
  %312 = or i64 %311, 120
  %scevgep190.15 = getelementptr i8, i8* %call.i64, i64 %312
  %scevgep190191.15 = bitcast i8* %scevgep190.15 to double*
  %_p_scalar_192.15 = load double, double* %scevgep190191.15, align 8, !alias.scope !21, !noalias !23
  %313 = shl i64 %polly.indvar170, 8
  %314 = or i64 %313, 128
  %scevgep190.16 = getelementptr i8, i8* %call.i64, i64 %314
  %scevgep190191.16 = bitcast i8* %scevgep190.16 to double*
  %_p_scalar_192.16 = load double, double* %scevgep190191.16, align 8, !alias.scope !21, !noalias !23
  %315 = shl i64 %polly.indvar170, 8
  %316 = or i64 %315, 136
  %scevgep190.17 = getelementptr i8, i8* %call.i64, i64 %316
  %scevgep190191.17 = bitcast i8* %scevgep190.17 to double*
  %_p_scalar_192.17 = load double, double* %scevgep190191.17, align 8, !alias.scope !21, !noalias !23
  %317 = shl i64 %polly.indvar170, 8
  %318 = or i64 %317, 144
  %scevgep190.18 = getelementptr i8, i8* %call.i64, i64 %318
  %scevgep190191.18 = bitcast i8* %scevgep190.18 to double*
  %_p_scalar_192.18 = load double, double* %scevgep190191.18, align 8, !alias.scope !21, !noalias !23
  %319 = shl i64 %polly.indvar170, 8
  %320 = or i64 %319, 152
  %scevgep190.19 = getelementptr i8, i8* %call.i64, i64 %320
  %scevgep190191.19 = bitcast i8* %scevgep190.19 to double*
  %_p_scalar_192.19 = load double, double* %scevgep190191.19, align 8, !alias.scope !21, !noalias !23
  %321 = shl i64 %polly.indvar170, 8
  %322 = or i64 %321, 160
  %scevgep190.20 = getelementptr i8, i8* %call.i64, i64 %322
  %scevgep190191.20 = bitcast i8* %scevgep190.20 to double*
  %_p_scalar_192.20 = load double, double* %scevgep190191.20, align 8, !alias.scope !21, !noalias !23
  %323 = shl i64 %polly.indvar170, 8
  %324 = or i64 %323, 168
  %scevgep190.21 = getelementptr i8, i8* %call.i64, i64 %324
  %scevgep190191.21 = bitcast i8* %scevgep190.21 to double*
  %_p_scalar_192.21 = load double, double* %scevgep190191.21, align 8, !alias.scope !21, !noalias !23
  %325 = shl i64 %polly.indvar170, 8
  %326 = or i64 %325, 176
  %scevgep190.22 = getelementptr i8, i8* %call.i64, i64 %326
  %scevgep190191.22 = bitcast i8* %scevgep190.22 to double*
  %_p_scalar_192.22 = load double, double* %scevgep190191.22, align 8, !alias.scope !21, !noalias !23
  %327 = shl i64 %polly.indvar170, 8
  %328 = or i64 %327, 184
  %scevgep190.23 = getelementptr i8, i8* %call.i64, i64 %328
  %scevgep190191.23 = bitcast i8* %scevgep190.23 to double*
  %_p_scalar_192.23 = load double, double* %scevgep190191.23, align 8, !alias.scope !21, !noalias !23
  %329 = shl i64 %polly.indvar170, 8
  %330 = or i64 %329, 192
  %scevgep190.24 = getelementptr i8, i8* %call.i64, i64 %330
  %scevgep190191.24 = bitcast i8* %scevgep190.24 to double*
  %_p_scalar_192.24 = load double, double* %scevgep190191.24, align 8, !alias.scope !21, !noalias !23
  %331 = shl i64 %polly.indvar170, 8
  %332 = or i64 %331, 200
  %scevgep190.25 = getelementptr i8, i8* %call.i64, i64 %332
  %scevgep190191.25 = bitcast i8* %scevgep190.25 to double*
  %_p_scalar_192.25 = load double, double* %scevgep190191.25, align 8, !alias.scope !21, !noalias !23
  %333 = shl i64 %polly.indvar170, 8
  %334 = or i64 %333, 208
  %scevgep190.26 = getelementptr i8, i8* %call.i64, i64 %334
  %scevgep190191.26 = bitcast i8* %scevgep190.26 to double*
  %_p_scalar_192.26 = load double, double* %scevgep190191.26, align 8, !alias.scope !21, !noalias !23
  %335 = shl i64 %polly.indvar170, 8
  %336 = or i64 %335, 216
  %scevgep190.27 = getelementptr i8, i8* %call.i64, i64 %336
  %scevgep190191.27 = bitcast i8* %scevgep190.27 to double*
  %_p_scalar_192.27 = load double, double* %scevgep190191.27, align 8, !alias.scope !21, !noalias !23
  %337 = shl i64 %polly.indvar170, 8
  %338 = or i64 %337, 224
  %scevgep190.28 = getelementptr i8, i8* %call.i64, i64 %338
  %scevgep190191.28 = bitcast i8* %scevgep190.28 to double*
  %_p_scalar_192.28 = load double, double* %scevgep190191.28, align 8, !alias.scope !21, !noalias !23
  %339 = shl i64 %polly.indvar170, 8
  %340 = or i64 %339, 232
  %scevgep190.29 = getelementptr i8, i8* %call.i64, i64 %340
  %scevgep190191.29 = bitcast i8* %scevgep190.29 to double*
  %_p_scalar_192.29 = load double, double* %scevgep190191.29, align 8, !alias.scope !21, !noalias !23
  %341 = shl i64 %polly.indvar170, 8
  %342 = or i64 %341, 240
  %scevgep190.30 = getelementptr i8, i8* %call.i64, i64 %342
  %scevgep190191.30 = bitcast i8* %scevgep190.30 to double*
  %_p_scalar_192.30 = load double, double* %scevgep190191.30, align 8, !alias.scope !21, !noalias !23
  %343 = or i64 %281, 248
  %scevgep190.31 = getelementptr i8, i8* %call.i64, i64 %343
  %scevgep190191.31 = bitcast i8* %scevgep190.31 to double*
  %_p_scalar_192.31 = load double, double* %scevgep190191.31, align 8, !alias.scope !21, !noalias !23
  br label %polly.loop_preheader180

polly.loop_preheader180:                          ; preds = %polly.loop_preheader174, %polly.loop_preheader180
  %polly.indvar176 = phi i64 [ 0, %polly.loop_preheader174 ], [ %polly.indvar_next177, %polly.loop_preheader180 ]
  %344 = add nuw nsw i64 %polly.indvar176, %280
  %polly.access.call.i63186 = getelementptr double, double* %arraydecay13, i64 %344
  %345 = mul nuw nsw i64 %344, 32000
  %polly.access.call.i63186.promoted = load double, double* %polly.access.call.i63186, align 8, !alias.scope !34, !noalias !14
  %346 = add nuw nsw i64 %282, %345
  %scevgep187 = getelementptr i8, i8* %call.i, i64 %346
  %scevgep187188 = bitcast i8* %scevgep187 to double*
  %_p_scalar_189 = load double, double* %scevgep187188, align 8, !alias.scope !17, !noalias !28
  %p_mul73.i = fmul double %_p_scalar_189, 1.500000e+00
  %p_mul76.i = fmul double %p_mul73.i, %_p_scalar_192
  %p_add77.i = fadd double %polly.access.call.i63186.promoted, %p_mul76.i
  %347 = add nuw nsw i64 %284, %345
  %scevgep187.1 = getelementptr i8, i8* %call.i, i64 %347
  %scevgep187188.1 = bitcast i8* %scevgep187.1 to double*
  %_p_scalar_189.1 = load double, double* %scevgep187188.1, align 8, !alias.scope !17, !noalias !28
  %p_mul73.i.1 = fmul double %_p_scalar_189.1, 1.500000e+00
  %p_mul76.i.1 = fmul double %p_mul73.i.1, %_p_scalar_192.1
  %p_add77.i.1 = fadd double %p_add77.i, %p_mul76.i.1
  %348 = add nuw nsw i64 %286, %345
  %scevgep187.2 = getelementptr i8, i8* %call.i, i64 %348
  %scevgep187188.2 = bitcast i8* %scevgep187.2 to double*
  %_p_scalar_189.2 = load double, double* %scevgep187188.2, align 8, !alias.scope !17, !noalias !28
  %p_mul73.i.2 = fmul double %_p_scalar_189.2, 1.500000e+00
  %p_mul76.i.2 = fmul double %p_mul73.i.2, %_p_scalar_192.2
  %p_add77.i.2 = fadd double %p_add77.i.1, %p_mul76.i.2
  %349 = add nuw nsw i64 %288, %345
  %scevgep187.3 = getelementptr i8, i8* %call.i, i64 %349
  %scevgep187188.3 = bitcast i8* %scevgep187.3 to double*
  %_p_scalar_189.3 = load double, double* %scevgep187188.3, align 8, !alias.scope !17, !noalias !28
  %p_mul73.i.3 = fmul double %_p_scalar_189.3, 1.500000e+00
  %p_mul76.i.3 = fmul double %p_mul73.i.3, %_p_scalar_192.3
  %p_add77.i.3 = fadd double %p_add77.i.2, %p_mul76.i.3
  %350 = add nuw nsw i64 %290, %345
  %scevgep187.4 = getelementptr i8, i8* %call.i, i64 %350
  %scevgep187188.4 = bitcast i8* %scevgep187.4 to double*
  %_p_scalar_189.4 = load double, double* %scevgep187188.4, align 8, !alias.scope !17, !noalias !28
  %p_mul73.i.4 = fmul double %_p_scalar_189.4, 1.500000e+00
  %p_mul76.i.4 = fmul double %p_mul73.i.4, %_p_scalar_192.4
  %p_add77.i.4 = fadd double %p_add77.i.3, %p_mul76.i.4
  %351 = add nuw nsw i64 %292, %345
  %scevgep187.5 = getelementptr i8, i8* %call.i, i64 %351
  %scevgep187188.5 = bitcast i8* %scevgep187.5 to double*
  %_p_scalar_189.5 = load double, double* %scevgep187188.5, align 8, !alias.scope !17, !noalias !28
  %p_mul73.i.5 = fmul double %_p_scalar_189.5, 1.500000e+00
  %p_mul76.i.5 = fmul double %p_mul73.i.5, %_p_scalar_192.5
  %p_add77.i.5 = fadd double %p_add77.i.4, %p_mul76.i.5
  %352 = add nuw nsw i64 %294, %345
  %scevgep187.6 = getelementptr i8, i8* %call.i, i64 %352
  %scevgep187188.6 = bitcast i8* %scevgep187.6 to double*
  %_p_scalar_189.6 = load double, double* %scevgep187188.6, align 8, !alias.scope !17, !noalias !28
  %p_mul73.i.6 = fmul double %_p_scalar_189.6, 1.500000e+00
  %p_mul76.i.6 = fmul double %p_mul73.i.6, %_p_scalar_192.6
  %p_add77.i.6 = fadd double %p_add77.i.5, %p_mul76.i.6
  %353 = add nuw nsw i64 %296, %345
  %scevgep187.7 = getelementptr i8, i8* %call.i, i64 %353
  %scevgep187188.7 = bitcast i8* %scevgep187.7 to double*
  %_p_scalar_189.7 = load double, double* %scevgep187188.7, align 8, !alias.scope !17, !noalias !28
  %p_mul73.i.7 = fmul double %_p_scalar_189.7, 1.500000e+00
  %p_mul76.i.7 = fmul double %p_mul73.i.7, %_p_scalar_192.7
  %p_add77.i.7 = fadd double %p_add77.i.6, %p_mul76.i.7
  %354 = add nuw nsw i64 %298, %345
  %scevgep187.8 = getelementptr i8, i8* %call.i, i64 %354
  %scevgep187188.8 = bitcast i8* %scevgep187.8 to double*
  %_p_scalar_189.8 = load double, double* %scevgep187188.8, align 8, !alias.scope !17, !noalias !28
  %p_mul73.i.8 = fmul double %_p_scalar_189.8, 1.500000e+00
  %p_mul76.i.8 = fmul double %p_mul73.i.8, %_p_scalar_192.8
  %p_add77.i.8 = fadd double %p_add77.i.7, %p_mul76.i.8
  %355 = add nuw nsw i64 %300, %345
  %scevgep187.9 = getelementptr i8, i8* %call.i, i64 %355
  %scevgep187188.9 = bitcast i8* %scevgep187.9 to double*
  %_p_scalar_189.9 = load double, double* %scevgep187188.9, align 8, !alias.scope !17, !noalias !28
  %p_mul73.i.9 = fmul double %_p_scalar_189.9, 1.500000e+00
  %p_mul76.i.9 = fmul double %p_mul73.i.9, %_p_scalar_192.9
  %p_add77.i.9 = fadd double %p_add77.i.8, %p_mul76.i.9
  %356 = add nuw nsw i64 %302, %345
  %scevgep187.10 = getelementptr i8, i8* %call.i, i64 %356
  %scevgep187188.10 = bitcast i8* %scevgep187.10 to double*
  %_p_scalar_189.10 = load double, double* %scevgep187188.10, align 8, !alias.scope !17, !noalias !28
  %p_mul73.i.10 = fmul double %_p_scalar_189.10, 1.500000e+00
  %p_mul76.i.10 = fmul double %p_mul73.i.10, %_p_scalar_192.10
  %p_add77.i.10 = fadd double %p_add77.i.9, %p_mul76.i.10
  %357 = add nuw nsw i64 %304, %345
  %scevgep187.11 = getelementptr i8, i8* %call.i, i64 %357
  %scevgep187188.11 = bitcast i8* %scevgep187.11 to double*
  %_p_scalar_189.11 = load double, double* %scevgep187188.11, align 8, !alias.scope !17, !noalias !28
  %p_mul73.i.11 = fmul double %_p_scalar_189.11, 1.500000e+00
  %p_mul76.i.11 = fmul double %p_mul73.i.11, %_p_scalar_192.11
  %p_add77.i.11 = fadd double %p_add77.i.10, %p_mul76.i.11
  %358 = add nuw nsw i64 %306, %345
  %scevgep187.12 = getelementptr i8, i8* %call.i, i64 %358
  %scevgep187188.12 = bitcast i8* %scevgep187.12 to double*
  %_p_scalar_189.12 = load double, double* %scevgep187188.12, align 8, !alias.scope !17, !noalias !28
  %p_mul73.i.12 = fmul double %_p_scalar_189.12, 1.500000e+00
  %p_mul76.i.12 = fmul double %p_mul73.i.12, %_p_scalar_192.12
  %p_add77.i.12 = fadd double %p_add77.i.11, %p_mul76.i.12
  %359 = add nuw nsw i64 %308, %345
  %scevgep187.13 = getelementptr i8, i8* %call.i, i64 %359
  %scevgep187188.13 = bitcast i8* %scevgep187.13 to double*
  %_p_scalar_189.13 = load double, double* %scevgep187188.13, align 8, !alias.scope !17, !noalias !28
  %p_mul73.i.13 = fmul double %_p_scalar_189.13, 1.500000e+00
  %p_mul76.i.13 = fmul double %p_mul73.i.13, %_p_scalar_192.13
  %p_add77.i.13 = fadd double %p_add77.i.12, %p_mul76.i.13
  %360 = add nuw nsw i64 %310, %345
  %scevgep187.14 = getelementptr i8, i8* %call.i, i64 %360
  %scevgep187188.14 = bitcast i8* %scevgep187.14 to double*
  %_p_scalar_189.14 = load double, double* %scevgep187188.14, align 8, !alias.scope !17, !noalias !28
  %p_mul73.i.14 = fmul double %_p_scalar_189.14, 1.500000e+00
  %p_mul76.i.14 = fmul double %p_mul73.i.14, %_p_scalar_192.14
  %p_add77.i.14 = fadd double %p_add77.i.13, %p_mul76.i.14
  %361 = add nuw nsw i64 %312, %345
  %scevgep187.15 = getelementptr i8, i8* %call.i, i64 %361
  %scevgep187188.15 = bitcast i8* %scevgep187.15 to double*
  %_p_scalar_189.15 = load double, double* %scevgep187188.15, align 8, !alias.scope !17, !noalias !28
  %p_mul73.i.15 = fmul double %_p_scalar_189.15, 1.500000e+00
  %p_mul76.i.15 = fmul double %p_mul73.i.15, %_p_scalar_192.15
  %p_add77.i.15 = fadd double %p_add77.i.14, %p_mul76.i.15
  %362 = add nuw nsw i64 %314, %345
  %scevgep187.16 = getelementptr i8, i8* %call.i, i64 %362
  %scevgep187188.16 = bitcast i8* %scevgep187.16 to double*
  %_p_scalar_189.16 = load double, double* %scevgep187188.16, align 8, !alias.scope !17, !noalias !28
  %p_mul73.i.16 = fmul double %_p_scalar_189.16, 1.500000e+00
  %p_mul76.i.16 = fmul double %p_mul73.i.16, %_p_scalar_192.16
  %p_add77.i.16 = fadd double %p_add77.i.15, %p_mul76.i.16
  %363 = add nuw nsw i64 %316, %345
  %scevgep187.17 = getelementptr i8, i8* %call.i, i64 %363
  %scevgep187188.17 = bitcast i8* %scevgep187.17 to double*
  %_p_scalar_189.17 = load double, double* %scevgep187188.17, align 8, !alias.scope !17, !noalias !28
  %p_mul73.i.17 = fmul double %_p_scalar_189.17, 1.500000e+00
  %p_mul76.i.17 = fmul double %p_mul73.i.17, %_p_scalar_192.17
  %p_add77.i.17 = fadd double %p_add77.i.16, %p_mul76.i.17
  %364 = add nuw nsw i64 %318, %345
  %scevgep187.18 = getelementptr i8, i8* %call.i, i64 %364
  %scevgep187188.18 = bitcast i8* %scevgep187.18 to double*
  %_p_scalar_189.18 = load double, double* %scevgep187188.18, align 8, !alias.scope !17, !noalias !28
  %p_mul73.i.18 = fmul double %_p_scalar_189.18, 1.500000e+00
  %p_mul76.i.18 = fmul double %p_mul73.i.18, %_p_scalar_192.18
  %p_add77.i.18 = fadd double %p_add77.i.17, %p_mul76.i.18
  %365 = add nuw nsw i64 %320, %345
  %scevgep187.19 = getelementptr i8, i8* %call.i, i64 %365
  %scevgep187188.19 = bitcast i8* %scevgep187.19 to double*
  %_p_scalar_189.19 = load double, double* %scevgep187188.19, align 8, !alias.scope !17, !noalias !28
  %p_mul73.i.19 = fmul double %_p_scalar_189.19, 1.500000e+00
  %p_mul76.i.19 = fmul double %p_mul73.i.19, %_p_scalar_192.19
  %p_add77.i.19 = fadd double %p_add77.i.18, %p_mul76.i.19
  %366 = add nuw nsw i64 %322, %345
  %scevgep187.20 = getelementptr i8, i8* %call.i, i64 %366
  %scevgep187188.20 = bitcast i8* %scevgep187.20 to double*
  %_p_scalar_189.20 = load double, double* %scevgep187188.20, align 8, !alias.scope !17, !noalias !28
  %p_mul73.i.20 = fmul double %_p_scalar_189.20, 1.500000e+00
  %p_mul76.i.20 = fmul double %p_mul73.i.20, %_p_scalar_192.20
  %p_add77.i.20 = fadd double %p_add77.i.19, %p_mul76.i.20
  %367 = add nuw nsw i64 %324, %345
  %scevgep187.21 = getelementptr i8, i8* %call.i, i64 %367
  %scevgep187188.21 = bitcast i8* %scevgep187.21 to double*
  %_p_scalar_189.21 = load double, double* %scevgep187188.21, align 8, !alias.scope !17, !noalias !28
  %p_mul73.i.21 = fmul double %_p_scalar_189.21, 1.500000e+00
  %p_mul76.i.21 = fmul double %p_mul73.i.21, %_p_scalar_192.21
  %p_add77.i.21 = fadd double %p_add77.i.20, %p_mul76.i.21
  %368 = add nuw nsw i64 %326, %345
  %scevgep187.22 = getelementptr i8, i8* %call.i, i64 %368
  %scevgep187188.22 = bitcast i8* %scevgep187.22 to double*
  %_p_scalar_189.22 = load double, double* %scevgep187188.22, align 8, !alias.scope !17, !noalias !28
  %p_mul73.i.22 = fmul double %_p_scalar_189.22, 1.500000e+00
  %p_mul76.i.22 = fmul double %p_mul73.i.22, %_p_scalar_192.22
  %p_add77.i.22 = fadd double %p_add77.i.21, %p_mul76.i.22
  %369 = add nuw nsw i64 %328, %345
  %scevgep187.23 = getelementptr i8, i8* %call.i, i64 %369
  %scevgep187188.23 = bitcast i8* %scevgep187.23 to double*
  %_p_scalar_189.23 = load double, double* %scevgep187188.23, align 8, !alias.scope !17, !noalias !28
  %p_mul73.i.23 = fmul double %_p_scalar_189.23, 1.500000e+00
  %p_mul76.i.23 = fmul double %p_mul73.i.23, %_p_scalar_192.23
  %p_add77.i.23 = fadd double %p_add77.i.22, %p_mul76.i.23
  %370 = add nuw nsw i64 %330, %345
  %scevgep187.24 = getelementptr i8, i8* %call.i, i64 %370
  %scevgep187188.24 = bitcast i8* %scevgep187.24 to double*
  %_p_scalar_189.24 = load double, double* %scevgep187188.24, align 8, !alias.scope !17, !noalias !28
  %p_mul73.i.24 = fmul double %_p_scalar_189.24, 1.500000e+00
  %p_mul76.i.24 = fmul double %p_mul73.i.24, %_p_scalar_192.24
  %p_add77.i.24 = fadd double %p_add77.i.23, %p_mul76.i.24
  %371 = add nuw nsw i64 %332, %345
  %scevgep187.25 = getelementptr i8, i8* %call.i, i64 %371
  %scevgep187188.25 = bitcast i8* %scevgep187.25 to double*
  %_p_scalar_189.25 = load double, double* %scevgep187188.25, align 8, !alias.scope !17, !noalias !28
  %p_mul73.i.25 = fmul double %_p_scalar_189.25, 1.500000e+00
  %p_mul76.i.25 = fmul double %p_mul73.i.25, %_p_scalar_192.25
  %p_add77.i.25 = fadd double %p_add77.i.24, %p_mul76.i.25
  %372 = add nuw nsw i64 %334, %345
  %scevgep187.26 = getelementptr i8, i8* %call.i, i64 %372
  %scevgep187188.26 = bitcast i8* %scevgep187.26 to double*
  %_p_scalar_189.26 = load double, double* %scevgep187188.26, align 8, !alias.scope !17, !noalias !28
  %p_mul73.i.26 = fmul double %_p_scalar_189.26, 1.500000e+00
  %p_mul76.i.26 = fmul double %p_mul73.i.26, %_p_scalar_192.26
  %p_add77.i.26 = fadd double %p_add77.i.25, %p_mul76.i.26
  %373 = add nuw nsw i64 %336, %345
  %scevgep187.27 = getelementptr i8, i8* %call.i, i64 %373
  %scevgep187188.27 = bitcast i8* %scevgep187.27 to double*
  %_p_scalar_189.27 = load double, double* %scevgep187188.27, align 8, !alias.scope !17, !noalias !28
  %p_mul73.i.27 = fmul double %_p_scalar_189.27, 1.500000e+00
  %p_mul76.i.27 = fmul double %p_mul73.i.27, %_p_scalar_192.27
  %p_add77.i.27 = fadd double %p_add77.i.26, %p_mul76.i.27
  %374 = add nuw nsw i64 %338, %345
  %scevgep187.28 = getelementptr i8, i8* %call.i, i64 %374
  %scevgep187188.28 = bitcast i8* %scevgep187.28 to double*
  %_p_scalar_189.28 = load double, double* %scevgep187188.28, align 8, !alias.scope !17, !noalias !28
  %p_mul73.i.28 = fmul double %_p_scalar_189.28, 1.500000e+00
  %p_mul76.i.28 = fmul double %p_mul73.i.28, %_p_scalar_192.28
  %p_add77.i.28 = fadd double %p_add77.i.27, %p_mul76.i.28
  %375 = add nuw nsw i64 %340, %345
  %scevgep187.29 = getelementptr i8, i8* %call.i, i64 %375
  %scevgep187188.29 = bitcast i8* %scevgep187.29 to double*
  %_p_scalar_189.29 = load double, double* %scevgep187188.29, align 8, !alias.scope !17, !noalias !28
  %p_mul73.i.29 = fmul double %_p_scalar_189.29, 1.500000e+00
  %p_mul76.i.29 = fmul double %p_mul73.i.29, %_p_scalar_192.29
  %p_add77.i.29 = fadd double %p_add77.i.28, %p_mul76.i.29
  %376 = add nuw nsw i64 %342, %345
  %scevgep187.30 = getelementptr i8, i8* %call.i, i64 %376
  %scevgep187188.30 = bitcast i8* %scevgep187.30 to double*
  %_p_scalar_189.30 = load double, double* %scevgep187188.30, align 8, !alias.scope !17, !noalias !28
  %p_mul73.i.30 = fmul double %_p_scalar_189.30, 1.500000e+00
  %p_mul76.i.30 = fmul double %p_mul73.i.30, %_p_scalar_192.30
  %p_add77.i.30 = fadd double %p_add77.i.29, %p_mul76.i.30
  %377 = add nuw nsw i64 %343, %345
  %scevgep187.31 = getelementptr i8, i8* %call.i, i64 %377
  %scevgep187188.31 = bitcast i8* %scevgep187.31 to double*
  %_p_scalar_189.31 = load double, double* %scevgep187188.31, align 8, !alias.scope !17, !noalias !28
  %p_mul73.i.31 = fmul double %_p_scalar_189.31, 1.500000e+00
  %p_mul76.i.31 = fmul double %p_mul73.i.31, %_p_scalar_192.31
  %p_add77.i.31 = fadd double %p_add77.i.30, %p_mul76.i.31
  store double %p_add77.i.31, double* %polly.access.call.i63186, align 8, !alias.scope !34, !noalias !14
  %polly.indvar_next177 = add nuw nsw i64 %polly.indvar176, 1
  %exitcond208.not = icmp eq i64 %polly.indvar_next177, 32
  br i1 %exitcond208.not, label %polly.loop_exit175, label %polly.loop_preheader180
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
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.mustprogress"}
!4 = !{!5, !5, i64 0}
!5 = !{!"double", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !3}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = distinct !{!11, !3}
!12 = distinct !{!12, !13, !"polly.alias.scope.MemRef16"}
!13 = distinct !{!13, !"polly.alias.scope.domain"}
!14 = !{!15, !16, !17, !18, !19, !20, !21, !22}
!15 = distinct !{!15, !13, !"polly.alias.scope.MemRef0"}
!16 = distinct !{!16, !13, !"polly.alias.scope.MemRef2"}
!17 = distinct !{!17, !13, !"polly.alias.scope.MemRef4"}
!18 = distinct !{!18, !13, !"polly.alias.scope.MemRef5"}
!19 = distinct !{!19, !13, !"polly.alias.scope.MemRef6"}
!20 = distinct !{!20, !13, !"polly.alias.scope.MemRef9"}
!21 = distinct !{!21, !13, !"polly.alias.scope.MemRef11"}
!22 = distinct !{!22, !13, !"polly.alias.scope.MemRef12"}
!23 = !{!15, !16, !17, !18, !19, !20, !22, !12}
!24 = !{!15, !16, !17, !19, !20, !21, !22, !12}
!25 = !{!15, !16, !17, !18, !20, !21, !22, !12}
!26 = !{!16, !17, !18, !19, !20, !21, !22, !12}
!27 = !{!15, !17, !18, !19, !20, !21, !22, !12}
!28 = !{!15, !16, !18, !19, !20, !21, !22, !12}
!29 = !{!15, !16, !17, !18, !19, !20, !21, !12}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.isvectorized", i32 1}
!32 = !{!21}
!33 = !{!15, !16, !17, !18, !19, !21, !22, !12}
!34 = !{!12}

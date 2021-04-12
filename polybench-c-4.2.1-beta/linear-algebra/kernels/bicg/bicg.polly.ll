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
polly.loop_preheader:
  %call.i = tail call noalias dereferenceable_or_null(31680000) i8* @malloc(i64 31680000) #8
  %call.i36 = tail call noalias dereferenceable_or_null(14400) i8* @malloc(i64 14400) #8
  %call.i37 = tail call noalias dereferenceable_or_null(17600) i8* @malloc(i64 17600) #8
  %call.i38 = tail call noalias dereferenceable_or_null(14400) i8* @malloc(i64 14400) #8
  %call.i39 = tail call noalias dereferenceable_or_null(17600) i8* @malloc(i64 17600) #8
  br label %polly.stmt.for.body.i

kernel_bicg.exit:                                 ; preds = %polly.loop_exit121
  tail call void (...) @polybench_timer_stop() #8
  tail call void (...) @polybench_timer_print() #8
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_bicg.exit
  %0 = load i8*, i8** %argv, align 8, !tbaa !2
  %strcmpload = load i8, i8* %0, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %2 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %1) #9
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #9
  br label %for.body.i47

for.body.i47:                                     ; preds = %if.end.i, %if.then
  %indvars.iv.i45 = phi i64 [ 0, %if.then ], [ %indvars.iv.next.i49, %if.end.i ]
  %i.04.i = phi i32 [ 0, %if.then ], [ %inc.i50, %if.end.i ]
  %rem.lhs.trunc.i46 = trunc i32 %i.04.i to i16
  %rem2.i = urem i16 %rem.lhs.trunc.i46, 20
  %cmp2.i = icmp eq i16 %rem2.i, 0
  br i1 %cmp2.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i47
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %fputc1.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %4) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i47
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %arrayidx.i48 = getelementptr inbounds double, double* %arraydecay8, i64 %indvars.iv.i45
  %6 = load double, double* %arrayidx.i48, align 8, !tbaa !6
  %call4.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %6) #9
  %indvars.iv.next.i49 = add nuw nsw i64 %indvars.iv.i45, 1
  %inc.i50 = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i51 = icmp eq i64 %indvars.iv.next.i49, 1800
  br i1 %exitcond.not.i51, label %for.end.i, label %for.body.i47, !llvm.loop !8

for.end.i:                                        ; preds = %if.end.i
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %call5.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #9
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %call6.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #9
  br label %for.body9.i

for.body9.i:                                      ; preds = %if.end14.i, %for.end.i
  %indvars.iv6.i52 = phi i64 [ 0, %for.end.i ], [ %indvars.iv.next7.i55, %if.end14.i ]
  %i.15.i53 = phi i32 [ 0, %for.end.i ], [ %inc19.i, %if.end14.i ]
  %rem10.lhs.trunc.i = trunc i32 %i.15.i53 to i16
  %rem103.i = urem i16 %rem10.lhs.trunc.i, 20
  %cmp11.i = icmp eq i16 %rem103.i, 0
  br i1 %cmp11.i, label %if.then12.i, label %if.end14.i

if.then12.i:                                      ; preds = %for.body9.i
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %9) #8
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then12.i, %for.body9.i
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %arrayidx16.i54 = getelementptr inbounds double, double* %arraydecay9, i64 %indvars.iv6.i52
  %11 = load double, double* %arrayidx16.i54, align 8, !tbaa !6
  %call17.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %11) #9
  %indvars.iv.next7.i55 = add nuw nsw i64 %indvars.iv6.i52, 1
  %inc19.i = add nuw nsw i32 %i.15.i53, 1
  %exitcond8.not.i56 = icmp eq i64 %indvars.iv.next7.i55, 2200
  br i1 %exitcond8.not.i56, label %print_array.exit, label %for.body9.i, !llvm.loop !10

print_array.exit:                                 ; preds = %if.end14.i
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %call21.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #9
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %14 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %13) #9
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_bicg.exit
  tail call void @free(i8* %call.i) #8
  tail call void @free(i8* %call.i36) #8
  tail call void @free(i8* nonnull %call.i37) #8
  tail call void @free(i8* %call.i38) #8
  tail call void @free(i8* %call.i39) #8
  ret i32 0

polly.stmt.for.body.i:                            ; preds = %polly.stmt.for.body.i, %polly.loop_preheader
  %polly.indvar = phi i64 [ 0, %polly.loop_preheader ], [ %polly.indvar_next.1, %polly.stmt.for.body.i ]
  %15 = trunc i64 %polly.indvar to i16
  %16 = urem i16 %15, 1800
  %p_conv.i = uitofp i16 %16 to double
  %p_div.i = fdiv double %p_conv.i, 1.800000e+03
  %17 = shl nuw nsw i64 %polly.indvar, 3
  %scevgep = getelementptr i8, i8* %call.i38, i64 %17
  %scevgep58 = bitcast i8* %scevgep to double*
  store double %p_div.i, double* %scevgep58, align 8, !alias.scope !11, !noalias !13
  %polly.indvar_next = or i64 %polly.indvar, 1
  %18 = trunc i64 %polly.indvar_next to i16
  %19 = urem i16 %18, 1800
  %p_conv.i.1 = uitofp i16 %19 to double
  %p_div.i.1 = fdiv double %p_conv.i.1, 1.800000e+03
  %20 = shl nuw nsw i64 %polly.indvar_next, 3
  %scevgep.1 = getelementptr i8, i8* %call.i38, i64 %20
  %scevgep58.1 = bitcast i8* %scevgep.1 to double*
  store double %p_div.i.1, double* %scevgep58.1, align 8, !alias.scope !11, !noalias !13
  %polly.indvar_next.1 = add nuw nsw i64 %polly.indvar, 2
  %exitcond.not.1 = icmp eq i64 %polly.indvar_next.1, 1800
  br i1 %exitcond.not.1, label %polly.loop_preheader66, label %polly.stmt.for.body.i

polly.loop_exit67:                                ; preds = %polly.loop_exit73
  %polly.indvar_next63 = add nuw nsw i64 %polly.indvar62, 1
  %indvars.iv.next153 = add nsw i64 %indvars.iv152, -32
  %exitcond157.not = icmp eq i64 %polly.indvar_next63, 69
  br i1 %exitcond157.not, label %polly.stmt.for.body5.i, label %polly.loop_preheader66

polly.loop_exit73:                                ; preds = %polly.loop_exit79
  %polly.indvar_next69 = add nuw nsw i64 %polly.indvar68, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -32
  %exitcond156.not = icmp eq i64 %polly.indvar_next69, 57
  br i1 %exitcond156.not, label %polly.loop_exit67, label %polly.loop_preheader72

polly.loop_preheader66:                           ; preds = %polly.stmt.for.body.i, %polly.loop_exit67
  %indvars.iv152 = phi i64 [ %indvars.iv.next153, %polly.loop_exit67 ], [ 0, %polly.stmt.for.body.i ]
  %polly.indvar62 = phi i64 [ %polly.indvar_next63, %polly.loop_exit67 ], [ 0, %polly.stmt.for.body.i ]
  %smin154 = call i64 @llvm.smin.i64(i64 %indvars.iv152, i64 -2168)
  %21 = shl nsw i64 %polly.indvar62, 5
  %22 = add nsw i64 %smin154, 2199
  br label %polly.loop_preheader72

polly.loop_exit79:                                ; preds = %polly.stmt.for.body15.i
  %polly.indvar_next75 = add nuw nsw i64 %polly.indvar74, 1
  %exitcond155.not = icmp eq i64 %polly.indvar74, %22
  br i1 %exitcond155.not, label %polly.loop_exit73, label %polly.loop_preheader78

polly.loop_preheader72:                           ; preds = %polly.loop_preheader66, %polly.loop_exit73
  %indvars.iv = phi i64 [ 0, %polly.loop_preheader66 ], [ %indvars.iv.next, %polly.loop_exit73 ]
  %polly.indvar68 = phi i64 [ 0, %polly.loop_preheader66 ], [ %polly.indvar_next69, %polly.loop_exit73 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 -1768)
  %23 = shl nsw i64 %polly.indvar68, 5
  %24 = add nsw i64 %smin, 1799
  br label %polly.loop_preheader78

polly.stmt.for.body15.i:                          ; preds = %polly.loop_preheader78, %polly.stmt.for.body15.i
  %polly.indvar80 = phi i64 [ 0, %polly.loop_preheader78 ], [ %polly.indvar_next81, %polly.stmt.for.body15.i ]
  %25 = add nuw nsw i64 %polly.indvar80, %23
  %26 = trunc i64 %25 to i32
  %27 = add i32 %26, 1
  %28 = mul i32 %27, %33
  %29 = urem i32 %28, 2200
  %p_conv17.i = sitofp i32 %29 to double
  %p_div19.i = fdiv double %p_conv17.i, 2.200000e+03
  %30 = shl i64 %25, 3
  %31 = add nuw nsw i64 %30, %34
  %scevgep83 = getelementptr i8, i8* %call.i, i64 %31
  %scevgep8384 = bitcast i8* %scevgep83 to double*
  store double %p_div19.i, double* %scevgep8384, align 8, !alias.scope !15, !noalias !16
  %polly.indvar_next81 = add nuw nsw i64 %polly.indvar80, 1
  %exitcond151.not = icmp eq i64 %polly.indvar80, %24
  br i1 %exitcond151.not, label %polly.loop_exit79, label %polly.stmt.for.body15.i

polly.loop_preheader78:                           ; preds = %polly.loop_preheader72, %polly.loop_exit79
  %polly.indvar74 = phi i64 [ 0, %polly.loop_preheader72 ], [ %polly.indvar_next75, %polly.loop_exit79 ]
  %32 = add nuw nsw i64 %polly.indvar74, %21
  %33 = trunc i64 %32 to i32
  %34 = mul nuw nsw i64 %32, 14400
  br label %polly.stmt.for.body15.i

polly.stmt.for.body5.i:                           ; preds = %polly.loop_exit67, %polly.stmt.for.body5.i
  %polly.indvar88 = phi i64 [ %polly.indvar_next89.1, %polly.stmt.for.body5.i ], [ 0, %polly.loop_exit67 ]
  %35 = trunc i64 %polly.indvar88 to i16
  %36 = urem i16 %35, 2200
  %p_conv7.i = uitofp i16 %36 to double
  %p_div9.i = fdiv double %p_conv7.i, 2.200000e+03
  %37 = shl nuw nsw i64 %polly.indvar88, 3
  %scevgep91 = getelementptr i8, i8* %call.i39, i64 %37
  %scevgep9192 = bitcast i8* %scevgep91 to double*
  store double %p_div9.i, double* %scevgep9192, align 8, !alias.scope !14, !noalias !17
  %polly.indvar_next89 = or i64 %polly.indvar88, 1
  %38 = trunc i64 %polly.indvar_next89 to i16
  %39 = urem i16 %38, 2200
  %p_conv7.i.1 = uitofp i16 %39 to double
  %p_div9.i.1 = fdiv double %p_conv7.i.1, 2.200000e+03
  %40 = shl nuw nsw i64 %polly.indvar_next89, 3
  %scevgep91.1 = getelementptr i8, i8* %call.i39, i64 %40
  %scevgep9192.1 = bitcast i8* %scevgep91.1 to double*
  store double %p_div9.i.1, double* %scevgep9192.1, align 8, !alias.scope !14, !noalias !17
  %polly.indvar_next89.1 = add nuw nsw i64 %polly.indvar88, 2
  %exitcond158.not.1 = icmp eq i64 %polly.indvar_next89.1, 2200
  br i1 %exitcond158.not.1, label %polly.loop_preheader99, label %polly.stmt.for.body5.i

polly.loop_preheader99:                           ; preds = %polly.stmt.for.body5.i
  tail call void (...) @polybench_timer_start() #8
  %arraydecay8 = bitcast i8* %call.i36 to double*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(14400) %call.i36, i8 0, i64 14400, i1 false) #8
  %call.i3993 = bitcast i8* %call.i39 to double*
  %arraydecay9 = bitcast i8* %call.i37 to double*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(17600) %call.i37, i8 0, i64 17600, i1 false)
  br label %polly.loop_preheader120

polly.loop_exit121:                               ; preds = %polly.loop_exit127
  %polly.indvar_next117 = add nuw nsw i64 %polly.indvar116, 1
  %indvars.iv.next164 = add nsw i64 %indvars.iv163, -32
  %exitcond168.not = icmp eq i64 %polly.indvar_next117, 69
  br i1 %exitcond168.not, label %kernel_bicg.exit, label %polly.loop_preheader120

polly.loop_exit127:                               ; preds = %polly.loop_exit133
  %polly.indvar_next123 = add nuw nsw i64 %polly.indvar122, 1
  %exitcond167.not = icmp eq i64 %polly.indvar_next123, 57
  br i1 %exitcond167.not, label %polly.loop_exit121, label %polly.loop_preheader126

polly.loop_preheader120:                          ; preds = %polly.loop_preheader99, %polly.loop_exit121
  %indvars.iv163 = phi i64 [ 0, %polly.loop_preheader99 ], [ %indvars.iv.next164, %polly.loop_exit121 ]
  %polly.indvar116 = phi i64 [ 0, %polly.loop_preheader99 ], [ %polly.indvar_next117, %polly.loop_exit121 ]
  %smin165 = call i64 @llvm.smin.i64(i64 %indvars.iv163, i64 -2168)
  %41 = shl nsw i64 %polly.indvar116, 5
  %42 = add nsw i64 %smin165, 2199
  br label %polly.loop_preheader126

polly.loop_exit133:                               ; preds = %polly.stmt.for.body8.i
  store double %p_add28.i.1, double* %polly.access.call.i37138, align 8, !alias.scope !18, !noalias !21
  %polly.indvar_next129 = add nuw nsw i64 %polly.indvar128, 1
  %exitcond166.not = icmp eq i64 %polly.indvar128, %42
  br i1 %exitcond166.not, label %polly.loop_exit127, label %polly.loop_preheader132

polly.loop_preheader126:                          ; preds = %polly.loop_preheader120, %polly.loop_exit127
  %polly.indvar122 = phi i64 [ 0, %polly.loop_preheader120 ], [ %polly.indvar_next123, %polly.loop_exit127 ]
  %43 = mul nsw i64 %polly.indvar122, -32
  %smin169 = call i64 @llvm.smin.i64(i64 %43, i64 -1768)
  %44 = add nsw i64 %smin169, 1800
  %45 = shl nsw i64 %polly.indvar122, 5
  br label %polly.loop_preheader132

polly.stmt.for.body8.i:                           ; preds = %polly.stmt.for.body8.i, %polly.loop_preheader132
  %p_add28.i150 = phi double [ %polly.access.call.i37138.promoted, %polly.loop_preheader132 ], [ %p_add28.i.1, %polly.stmt.for.body8.i ]
  %polly.indvar134 = phi i64 [ 0, %polly.loop_preheader132 ], [ %polly.indvar_next135.1, %polly.stmt.for.body8.i ]
  %niter = phi i64 [ %44, %polly.loop_preheader132 ], [ %niter.nsub.1, %polly.stmt.for.body8.i ]
  %46 = add nuw nsw i64 %polly.indvar134, %45
  %47 = shl i64 %46, 3
  %scevgep139 = getelementptr i8, i8* %call.i36, i64 %47
  %scevgep139140 = bitcast i8* %scevgep139 to double*
  %_p_scalar_141 = load double, double* %scevgep139140, align 8, !alias.scope !23, !noalias !26
  %48 = add nuw nsw i64 %47, %53
  %scevgep142 = getelementptr i8, i8* %call.i, i64 %48
  %scevgep142143 = bitcast i8* %scevgep142 to double*
  %_p_scalar_144 = load double, double* %scevgep142143, align 8, !alias.scope !24, !noalias !27
  %p_mul.i = fmul double %_p_scalar_, %_p_scalar_144
  %p_add.i = fadd double %_p_scalar_141, %p_mul.i
  store double %p_add.i, double* %scevgep139140, align 8, !alias.scope !23, !noalias !26
  %scevgep145 = getelementptr i8, i8* %call.i38, i64 %47
  %scevgep145146 = bitcast i8* %scevgep145 to double*
  %_p_scalar_147 = load double, double* %scevgep145146, align 8, !alias.scope !25, !noalias !28
  %p_mul27.i = fmul double %_p_scalar_144, %_p_scalar_147
  %p_add28.i = fadd double %p_add28.i150, %p_mul27.i
  %polly.indvar_next135 = or i64 %polly.indvar134, 1
  %49 = add nuw nsw i64 %polly.indvar_next135, %45
  %50 = shl i64 %49, 3
  %scevgep139.1 = getelementptr i8, i8* %call.i36, i64 %50
  %scevgep139140.1 = bitcast i8* %scevgep139.1 to double*
  %_p_scalar_141.1 = load double, double* %scevgep139140.1, align 8, !alias.scope !23, !noalias !26
  %51 = add nuw nsw i64 %50, %53
  %scevgep142.1 = getelementptr i8, i8* %call.i, i64 %51
  %scevgep142143.1 = bitcast i8* %scevgep142.1 to double*
  %_p_scalar_144.1 = load double, double* %scevgep142143.1, align 8, !alias.scope !24, !noalias !27
  %p_mul.i.1 = fmul double %_p_scalar_, %_p_scalar_144.1
  %p_add.i.1 = fadd double %_p_scalar_141.1, %p_mul.i.1
  store double %p_add.i.1, double* %scevgep139140.1, align 8, !alias.scope !23, !noalias !26
  %scevgep145.1 = getelementptr i8, i8* %call.i38, i64 %50
  %scevgep145146.1 = bitcast i8* %scevgep145.1 to double*
  %_p_scalar_147.1 = load double, double* %scevgep145146.1, align 8, !alias.scope !25, !noalias !28
  %p_mul27.i.1 = fmul double %_p_scalar_144.1, %_p_scalar_147.1
  %p_add28.i.1 = fadd double %p_add28.i, %p_mul27.i.1
  %polly.indvar_next135.1 = add nuw nsw i64 %polly.indvar134, 2
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %polly.loop_exit133, label %polly.stmt.for.body8.i

polly.loop_preheader132:                          ; preds = %polly.loop_preheader126, %polly.loop_exit133
  %polly.indvar128 = phi i64 [ 0, %polly.loop_preheader126 ], [ %polly.indvar_next129, %polly.loop_exit133 ]
  %52 = add nuw nsw i64 %polly.indvar128, %41
  %polly.access.call.i37138 = getelementptr double, double* %arraydecay9, i64 %52
  %polly.access.arraydecay5.merge = getelementptr double, double* %call.i3993, i64 %52
  %_p_scalar_ = load double, double* %polly.access.arraydecay5.merge, align 8, !alias.scope !22, !noalias !29
  %53 = mul nuw nsw i64 %52, 14400
  %polly.access.call.i37138.promoted = load double, double* %polly.access.call.i37138, align 8, !alias.scope !18, !noalias !21
  br label %polly.stmt.for.body8.i
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
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"double", !4, i64 0}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !12, !"polly.alias.scope.MemRef0"}
!12 = distinct !{!12, !"polly.alias.scope.domain"}
!13 = !{!14, !15}
!14 = distinct !{!14, !12, !"polly.alias.scope.MemRef2"}
!15 = distinct !{!15, !12, !"polly.alias.scope.MemRef3"}
!16 = !{!11, !14}
!17 = !{!11, !15}
!18 = !{!19}
!19 = distinct !{!19, !20, !"polly.alias.scope.MemRef0"}
!20 = distinct !{!20, !"polly.alias.scope.domain"}
!21 = !{!22, !23, !24, !25}
!22 = distinct !{!22, !20, !"polly.alias.scope.MemRef1"}
!23 = distinct !{!23, !20, !"polly.alias.scope.MemRef4"}
!24 = distinct !{!24, !20, !"polly.alias.scope.MemRef5"}
!25 = distinct !{!25, !20, !"polly.alias.scope.MemRef6"}
!26 = !{!19, !22, !24, !25}
!27 = !{!19, !22, !23, !25}
!28 = !{!19, !22, !23, !24}
!29 = !{!19, !23, !24, !25}

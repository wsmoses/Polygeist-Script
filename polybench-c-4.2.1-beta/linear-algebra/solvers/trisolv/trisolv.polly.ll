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
entry.split:
  %call.i = tail call noalias dereferenceable_or_null(128000000) i8* @malloc(i64 128000000) #7
  %call.i23 = tail call noalias dereferenceable_or_null(32000) i8* @malloc(i64 32000) #7
  %call.i24 = tail call noalias dereferenceable_or_null(32000) i8* @malloc(i64 32000) #7
  %arraydecay = bitcast i8* %call.i to [4000 x double]*
  %arraydecay3 = bitcast i8* %call.i23 to double*
  %arraydecay4 = bitcast i8* %call.i24 to double*
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc14.i, %entry.split
  %indvars.iv8.i = phi i64 [ 0, %entry.split ], [ %indvars.iv.next9.i, %for.inc14.i ]
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
  br i1 %exitcond11.not.i, label %polly.loop_preheader, label %for.body.i, !llvm.loop !8

kernel_trisolv.exit:                              ; preds = %polly.loop_if.loopexit
  tail call void (...) @polybench_timer_stop() #7
  tail call void (...) @polybench_timer_print() #7
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_trisolv.exit
  %10 = load i8*, i8** %argv, align 8, !tbaa !9
  %strcmpload = load i8, i8* %10, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %12 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %11) #8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #8
  br label %for.body.i37

for.body.i37:                                     ; preds = %for.inc.i, %if.then
  %indvars.iv.i35 = phi i64 [ 0, %if.then ], [ %indvars.iv.next.i38, %for.inc.i ]
  %i.02.i = phi i32 [ 0, %if.then ], [ %inc.i, %for.inc.i ]
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %arrayidx.i36 = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.i35
  %15 = load double, double* %arrayidx.i36, align 8, !tbaa !2
  %call2.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), double %15) #8
  %rem.lhs.trunc.i = trunc i32 %i.02.i to i16
  %rem1.i = urem i16 %rem.lhs.trunc.i, 20
  %cmp3.i = icmp eq i16 %rem1.i, 0
  br i1 %cmp3.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i37
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %16) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i37
  %indvars.iv.next.i38 = add nuw nsw i64 %indvars.iv.i35, 1
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i39 = icmp eq i64 %indvars.iv.next.i38, 4000
  br i1 %exitcond.not.i39, label %print_array.exit, label %for.body.i37, !llvm.loop !11

print_array.exit:                                 ; preds = %for.inc.i
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %call5.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #8
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !9
  %19 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %18) #8
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_trisolv.exit
  tail call void @free(i8* %call.i) #7
  tail call void @free(i8* nonnull %call.i23) #7
  tail call void @free(i8* %call.i24) #7
  ret i32 0

polly.loop_preheader:                             ; preds = %for.inc14.i
  tail call void (...) @polybench_timer_start() #7
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32000) %call.i23, i8* noundef nonnull align 8 dereferenceable(32000) %call.i24, i64 32000, i1 false)
  %polly.access.call.i2349.reload84 = load double, double* %arraydecay3, align 8, !alias.scope !12, !noalias !14
  %scevgep505185 = bitcast i8* %call.i to double*
  %_p_scalar_5286 = load double, double* %scevgep505185, align 8, !alias.scope !16, !noalias !17
  %p_div.i3387 = fdiv double %polly.access.call.i2349.reload84, %_p_scalar_5286
  %scevgep535488 = bitcast i8* %call.i23 to double*
  store double %p_div.i3387, double* %scevgep535488, align 8, !alias.scope !12, !noalias !14
  br label %polly.loop_preheader56

polly.loop_if.loopexit:                           ; preds = %polly.stmt.for.body5.i.polly.stmt.for.body5.i_crit_edge.prol.loopexit, %polly.stmt.for.body5.i.polly.stmt.for.body5.i_crit_edge, %polly.loop_preheader56
  %polly.access.call.i2349 = getelementptr double, double* %arraydecay3, i64 %25
  %polly.access.call.i2349.reload = load double, double* %polly.access.call.i2349, align 8, !alias.scope !12, !noalias !14
  %20 = mul nuw nsw i64 %25, 32008
  %scevgep50 = getelementptr i8, i8* %call.i, i64 %20
  %scevgep5051 = bitcast i8* %scevgep50 to double*
  %_p_scalar_52 = load double, double* %scevgep5051, align 8, !alias.scope !16, !noalias !17
  %p_div.i33 = fdiv double %polly.access.call.i2349.reload, %_p_scalar_52
  %21 = shl nuw nsw i64 %25, 3
  %scevgep53 = getelementptr i8, i8* %call.i23, i64 %21
  %scevgep5354 = bitcast i8* %scevgep53 to double*
  store double %p_div.i33, double* %scevgep5354, align 8, !alias.scope !12, !noalias !14
  %22 = add nuw nsw i64 %25, 1
  %exitcond72.not = icmp eq i64 %25, 3999
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond72.not, label %kernel_trisolv.exit, label %polly.loop_preheader56

polly.stmt.for.body5.i.polly.stmt.for.body5.i_crit_edge: ; preds = %polly.stmt.for.body5.i.polly.stmt.for.body5.i_crit_edge.prol.loopexit, %polly.stmt.for.body5.i.polly.stmt.for.body5.i_crit_edge
  %polly.indvar_next5983 = phi i64 [ %polly.indvar_next59.1, %polly.stmt.for.body5.i.polly.stmt.for.body5.i_crit_edge ], [ %polly.indvar_next5983.unr.ph, %polly.stmt.for.body5.i.polly.stmt.for.body5.i_crit_edge.prol.loopexit ]
  %_p_scalar_69.pre = load double, double* %scevgep535490, align 8, !alias.scope !12, !noalias !14
  %polly.access.call.i2362 = getelementptr double, double* %arraydecay3, i64 %polly.indvar_next5983
  %polly.access.call.i2362.reload = load double, double* %polly.access.call.i2362, align 8, !alias.scope !12, !noalias !14
  %23 = mul nuw nsw i64 %polly.indvar_next5983, 32000
  %scevgep64 = getelementptr i8, i8* %scevgep63, i64 %23
  %scevgep6465 = bitcast i8* %scevgep64 to double*
  %_p_scalar_66 = load double, double* %scevgep6465, align 8, !alias.scope !16, !noalias !17
  %p_mul.i30 = fmul double %_p_scalar_66, %_p_scalar_69.pre
  %p_sub.i = fsub double %polly.access.call.i2362.reload, %p_mul.i30
  store double %p_sub.i, double* %polly.access.call.i2362, align 8, !alias.scope !12, !noalias !14
  %polly.indvar_next59 = add nuw nsw i64 %polly.indvar_next5983, 1
  %_p_scalar_69.pre.1 = load double, double* %scevgep535490, align 8, !alias.scope !12, !noalias !14
  %polly.access.call.i2362.1 = getelementptr double, double* %arraydecay3, i64 %polly.indvar_next59
  %polly.access.call.i2362.reload.1 = load double, double* %polly.access.call.i2362.1, align 8, !alias.scope !12, !noalias !14
  %24 = mul nuw nsw i64 %polly.indvar_next59, 32000
  %scevgep64.1 = getelementptr i8, i8* %scevgep63, i64 %24
  %scevgep6465.1 = bitcast i8* %scevgep64.1 to double*
  %_p_scalar_66.1 = load double, double* %scevgep6465.1, align 8, !alias.scope !16, !noalias !17
  %p_mul.i30.1 = fmul double %_p_scalar_66.1, %_p_scalar_69.pre.1
  %p_sub.i.1 = fsub double %polly.access.call.i2362.reload.1, %p_mul.i30.1
  store double %p_sub.i.1, double* %polly.access.call.i2362.1, align 8, !alias.scope !12, !noalias !14
  %polly.indvar_next59.1 = add nuw nsw i64 %polly.indvar_next5983, 2
  %exitcond.not.1 = icmp eq i64 %polly.indvar_next59.1, 4000
  br i1 %exitcond.not.1, label %polly.loop_if.loopexit, label %polly.stmt.for.body5.i.polly.stmt.for.body5.i_crit_edge

polly.loop_preheader56:                           ; preds = %polly.loop_preheader, %polly.loop_if.loopexit
  %indvar = phi i64 [ 0, %polly.loop_preheader ], [ %indvar.next, %polly.loop_if.loopexit ]
  %25 = phi i64 [ 1, %polly.loop_preheader ], [ %22, %polly.loop_if.loopexit ]
  %scevgep535490 = phi double* [ %scevgep535488, %polly.loop_preheader ], [ %scevgep5354, %polly.loop_if.loopexit ]
  %26 = phi i64 [ 0, %polly.loop_preheader ], [ %21, %polly.loop_if.loopexit ]
  %p_div.i3389 = phi double [ %p_div.i3387, %polly.loop_preheader ], [ %p_div.i33, %polly.loop_if.loopexit ]
  %scevgep63 = getelementptr i8, i8* %call.i, i64 %26
  %polly.access.call.i236274 = getelementptr double, double* %arraydecay3, i64 %25
  %polly.access.call.i2362.reload75 = load double, double* %polly.access.call.i236274, align 8, !alias.scope !12, !noalias !14
  %27 = mul nuw nsw i64 %25, 32000
  %scevgep6476 = getelementptr i8, i8* %scevgep63, i64 %27
  %scevgep646577 = bitcast i8* %scevgep6476 to double*
  %_p_scalar_6678 = load double, double* %scevgep646577, align 8, !alias.scope !16, !noalias !17
  %p_mul.i3079 = fmul double %_p_scalar_6678, %p_div.i3389
  %p_sub.i80 = fsub double %polly.access.call.i2362.reload75, %p_mul.i3079
  store double %p_sub.i80, double* %polly.access.call.i236274, align 8, !alias.scope !12, !noalias !14
  %polly.indvar_next5981 = add nuw nsw i64 %25, 1
  %exitcond.not82 = icmp eq i64 %polly.indvar_next5981, 4000
  br i1 %exitcond.not82, label %polly.loop_if.loopexit, label %polly.stmt.for.body5.i.polly.stmt.for.body5.i_crit_edge.preheader

polly.stmt.for.body5.i.polly.stmt.for.body5.i_crit_edge.preheader: ; preds = %polly.loop_preheader56
  %xtraiter91 = and i64 %indvar, 1
  %lcmp.mod92.not = icmp eq i64 %xtraiter91, 0
  br i1 %lcmp.mod92.not, label %polly.stmt.for.body5.i.polly.stmt.for.body5.i_crit_edge.prol.loopexit, label %polly.stmt.for.body5.i.polly.stmt.for.body5.i_crit_edge.prol

polly.stmt.for.body5.i.polly.stmt.for.body5.i_crit_edge.prol: ; preds = %polly.stmt.for.body5.i.polly.stmt.for.body5.i_crit_edge.preheader
  %_p_scalar_69.pre.prol = load double, double* %scevgep535490, align 8, !alias.scope !12, !noalias !14
  %polly.access.call.i2362.prol = getelementptr double, double* %arraydecay3, i64 %polly.indvar_next5981
  %polly.access.call.i2362.reload.prol = load double, double* %polly.access.call.i2362.prol, align 8, !alias.scope !12, !noalias !14
  %28 = mul nuw nsw i64 %polly.indvar_next5981, 32000
  %scevgep64.prol = getelementptr i8, i8* %scevgep63, i64 %28
  %scevgep6465.prol = bitcast i8* %scevgep64.prol to double*
  %_p_scalar_66.prol = load double, double* %scevgep6465.prol, align 8, !alias.scope !16, !noalias !17
  %p_mul.i30.prol = fmul double %_p_scalar_66.prol, %_p_scalar_69.pre.prol
  %p_sub.i.prol = fsub double %polly.access.call.i2362.reload.prol, %p_mul.i30.prol
  store double %p_sub.i.prol, double* %polly.access.call.i2362.prol, align 8, !alias.scope !12, !noalias !14
  %polly.indvar_next59.prol = add nuw nsw i64 %25, 2
  br label %polly.stmt.for.body5.i.polly.stmt.for.body5.i_crit_edge.prol.loopexit

polly.stmt.for.body5.i.polly.stmt.for.body5.i_crit_edge.prol.loopexit: ; preds = %polly.stmt.for.body5.i.polly.stmt.for.body5.i_crit_edge.prol, %polly.stmt.for.body5.i.polly.stmt.for.body5.i_crit_edge.preheader
  %polly.indvar_next5983.unr.ph = phi i64 [ %polly.indvar_next59.prol, %polly.stmt.for.body5.i.polly.stmt.for.body5.i_crit_edge.prol ], [ %polly.indvar_next5981, %polly.stmt.for.body5.i.polly.stmt.for.body5.i_crit_edge.preheader ]
  %29 = icmp eq i64 %indvar, 3997
  br i1 %29, label %polly.loop_if.loopexit, label %polly.stmt.for.body5.i.polly.stmt.for.body5.i_crit_edge
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

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

attributes #0 = { nounwind uwtable "frame-pointer"="none" "no-trapping-math"="true" "polly-optimized" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inaccessiblemem_or_argmemonly nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inaccessiblememonly nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { argmemonly nofree nosync nounwind willreturn }
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
!12 = distinct !{!12, !13, !"polly.alias.scope.MemRef1"}
!13 = distinct !{!13, !"polly.alias.scope.domain"}
!14 = !{!15, !16}
!15 = distinct !{!15, !13, !"polly.alias.scope.MemRef0"}
!16 = distinct !{!16, !13, !"polly.alias.scope.MemRef4"}
!17 = !{!15, !12}

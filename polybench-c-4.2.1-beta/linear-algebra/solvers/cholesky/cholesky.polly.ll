; ModuleID = 'cholesky.c'
source_filename = "cholesky.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** nocapture readonly %argv) local_unnamed_addr #0 {
entry.split:
  %call.i = tail call noalias dereferenceable_or_null(128000000) i8* @malloc(i64 128000000) #10
  %arraydecay = bitcast i8* %call.i to [4000 x double]*
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.end18.i, %entry.split
  %indvar.i = phi i64 [ 0, %entry.split ], [ %indvar.next.i, %for.end18.i ]
  %0 = add nuw i64 %indvar.i, 1
  %1 = mul nuw nsw i64 %indvar.i, 4001
  %2 = add nuw nsw i64 %1, 1
  %.neg.i = mul nsw i64 %indvar.i, -8
  %3 = add nsw i64 %.neg.i, 31984
  %xtraiter = and i64 %0, 1
  %4 = icmp eq i64 %indvar.i, 0
  br i1 %4, label %for.end.i.unr-lcssa, label %for.cond1.preheader.i.new

for.cond1.preheader.i.new:                        ; preds = %for.cond1.preheader.i
  %unroll_iter = and i64 %0, -2
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.body3.i, %for.cond1.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %for.cond1.preheader.i.new ], [ %indvars.iv.next.i.1, %for.body3.i ]
  %niter = phi i64 [ %unroll_iter, %for.cond1.preheader.i.new ], [ %niter.nsub.1, %for.body3.i ]
  %5 = trunc i64 %indvars.iv.i to i32
  %6 = sub i32 0, %5
  %conv.i = sitofp i32 %6 to double
  %div.i = fdiv double %conv.i, 4.000000e+03
  %add.i = fadd double %div.i, 1.000000e+00
  %arrayidx6.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvar.i, i64 %indvars.iv.i
  store double %add.i, double* %arrayidx6.i, align 8, !tbaa !2
  %indvars.iv.next.i = or i64 %indvars.iv.i, 1
  %7 = trunc i64 %indvars.iv.i to i32
  %.neg = xor i32 %7, -1
  %conv.i.1 = sitofp i32 %.neg to double
  %div.i.1 = fdiv double %conv.i.1, 4.000000e+03
  %add.i.1 = fadd double %div.i.1, 1.000000e+00
  %arrayidx6.i.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvar.i, i64 %indvars.iv.next.i
  store double %add.i.1, double* %arrayidx6.i.1, align 8, !tbaa !2
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %for.end.i.unr-lcssa, label %for.body3.i, !llvm.loop !6

for.end.i.unr-lcssa:                              ; preds = %for.body3.i, %for.cond1.preheader.i
  %indvars.iv.i.unr = phi i64 [ 0, %for.cond1.preheader.i ], [ %indvars.iv.next.i.1, %for.body3.i ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end.i, label %for.body3.i.epil

for.body3.i.epil:                                 ; preds = %for.end.i.unr-lcssa
  %8 = trunc i64 %indvars.iv.i.unr to i32
  %9 = sub i32 0, %8
  %conv.i.epil = sitofp i32 %9 to double
  %div.i.epil = fdiv double %conv.i.epil, 4.000000e+03
  %add.i.epil = fadd double %div.i.epil, 1.000000e+00
  %arrayidx6.i.epil = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvar.i, i64 %indvars.iv.i.unr
  store double %add.i.epil, double* %arrayidx6.i.epil, align 8, !tbaa !2
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.i.unr-lcssa, %for.body3.i.epil
  %indvar.next.i = add nuw nsw i64 %indvar.i, 1
  %cmp92.i = icmp ult i64 %indvar.i, 3999
  br i1 %cmp92.i, label %for.body11.lr.ph.i, label %for.end18.i

for.body11.lr.ph.i:                               ; preds = %for.end.i
  %10 = and i64 %3, 34359738360
  %scevgep.i = getelementptr [4000 x double], [4000 x double]* %arraydecay, i64 0, i64 %2
  %11 = add nuw nsw i64 %10, 8
  %scevgep16.i = bitcast double* %scevgep.i to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(1) %scevgep16.i, i8 0, i64 %11, i1 false) #10
  br label %for.end18.i

for.end18.i:                                      ; preds = %for.body11.lr.ph.i, %for.end.i
  %arrayidx22.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvar.i, i64 %indvar.i
  store double 1.000000e+00, double* %arrayidx22.i, align 8, !tbaa !2
  %exitcond21.not.i = icmp eq i64 %indvar.next.i, 4000
  br i1 %exitcond21.not.i, label %for.end25.i, label %for.cond1.preheader.i, !llvm.loop !8

for.end25.i:                                      ; preds = %for.end18.i
  %call.i.i = tail call noalias dereferenceable_or_null(128000000) i8* @malloc(i64 128000000) #10
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(128000000) %call.i.i, i8 0, i64 128000000, i1 false) #10
  %12 = bitcast i8* %call.i.i to [4000 x [4000 x double]]*
  br label %for.cond48.preheader.i

for.cond48.preheader.i:                           ; preds = %for.inc75.i, %for.end25.i
  %indvars.iv33.i = phi i64 [ 0, %for.end25.i ], [ %indvars.iv.next34.i, %for.inc75.i ]
  br label %for.cond52.preheader.i

for.cond52.preheader.i:                           ; preds = %for.inc72.i, %for.cond48.preheader.i
  %indvars.iv30.i = phi i64 [ 0, %for.cond48.preheader.i ], [ %indvars.iv.next31.i, %for.inc72.i ]
  %arrayidx59.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv30.i, i64 %indvars.iv33.i
  %13 = load double, double* %arrayidx59.i, align 8, !tbaa !2
  %broadcast.splatinsert = insertelement <2 x double> poison, double %13, i32 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert94 = insertelement <2 x double> poison, double %13, i32 0
  %broadcast.splat95 = shufflevector <2 x double> %broadcast.splatinsert94, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %for.cond52.preheader.i
  %index = phi i64 [ 0, %for.cond52.preheader.i ], [ %index.next, %vector.body ]
  %14 = or i64 %index, 1
  %15 = or i64 %index, 2
  %16 = or i64 %index, 3
  %17 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %index, i64 %indvars.iv33.i
  %18 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %14, i64 %indvars.iv33.i
  %19 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %15, i64 %indvars.iv33.i
  %20 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %16, i64 %indvars.iv33.i
  %21 = load double, double* %17, align 8, !tbaa !2
  %22 = load double, double* %18, align 8, !tbaa !2
  %23 = insertelement <2 x double> poison, double %21, i32 0
  %24 = insertelement <2 x double> %23, double %22, i32 1
  %25 = load double, double* %19, align 8, !tbaa !2
  %26 = load double, double* %20, align 8, !tbaa !2
  %27 = insertelement <2 x double> poison, double %25, i32 0
  %28 = insertelement <2 x double> %27, double %26, i32 1
  %29 = fmul <2 x double> %broadcast.splat, %24
  %30 = fmul <2 x double> %broadcast.splat95, %28
  %31 = getelementptr inbounds [4000 x [4000 x double]], [4000 x [4000 x double]]* %12, i64 0, i64 %indvars.iv30.i, i64 %index
  %32 = bitcast double* %31 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %32, align 8, !tbaa !2
  %33 = getelementptr inbounds double, double* %31, i64 2
  %34 = bitcast double* %33 to <2 x double>*
  %wide.load96 = load <2 x double>, <2 x double>* %34, align 8, !tbaa !2
  %35 = fadd <2 x double> %wide.load, %29
  %36 = fadd <2 x double> %wide.load96, %30
  %37 = bitcast double* %31 to <2 x double>*
  store <2 x double> %35, <2 x double>* %37, align 8, !tbaa !2
  %38 = bitcast double* %33 to <2 x double>*
  store <2 x double> %36, <2 x double>* %38, align 8, !tbaa !2
  %index.next = add i64 %index, 4
  %39 = icmp eq i64 %index.next, 4000
  br i1 %39, label %for.inc72.i, label %vector.body, !llvm.loop !9

for.inc72.i:                                      ; preds = %vector.body
  %indvars.iv.next31.i = add nuw nsw i64 %indvars.iv30.i, 1
  %exitcond32.not.i = icmp eq i64 %indvars.iv.next31.i, 4000
  br i1 %exitcond32.not.i, label %for.inc75.i, label %for.cond52.preheader.i, !llvm.loop !11

for.inc75.i:                                      ; preds = %for.inc72.i
  %indvars.iv.next34.i = add nuw nsw i64 %indvars.iv33.i, 1
  %exitcond35.not.i = icmp eq i64 %indvars.iv.next34.i, 4000
  br i1 %exitcond35.not.i, label %for.cond82.preheader.i, label %for.cond48.preheader.i, !llvm.loop !12

for.cond82.preheader.i:                           ; preds = %for.inc75.i, %for.cond82.preheader.i
  %indvar36.i = phi i64 [ %indvar.next37.i.1, %for.cond82.preheader.i ], [ 0, %for.inc75.i ]
  %scevgep38.i = getelementptr [4000 x double], [4000 x double]* %arraydecay, i64 %indvar36.i, i64 0
  %scevgep3839.i = bitcast double* %scevgep38.i to i8*
  %40 = mul nuw nsw i64 %indvar36.i, 32000
  %scevgep40.i = getelementptr i8, i8* %call.i.i, i64 %40
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32000) %scevgep3839.i, i8* noundef nonnull align 8 dereferenceable(32000) %scevgep40.i, i64 32000, i1 false) #10
  %indvar.next37.i = or i64 %indvar36.i, 1
  %scevgep38.i.1 = getelementptr [4000 x double], [4000 x double]* %arraydecay, i64 %indvar.next37.i, i64 0
  %scevgep3839.i.1 = bitcast double* %scevgep38.i.1 to i8*
  %41 = mul nuw nsw i64 %indvar.next37.i, 32000
  %scevgep40.i.1 = getelementptr i8, i8* %call.i.i, i64 %41
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32000) %scevgep3839.i.1, i8* noundef nonnull align 8 dereferenceable(32000) %scevgep40.i.1, i64 32000, i1 false) #10
  %indvar.next37.i.1 = add nuw nsw i64 %indvar36.i, 2
  %exitcond43.not.i.1 = icmp eq i64 %indvar.next37.i.1, 4000
  br i1 %exitcond43.not.i.1, label %init_array.exit, label %for.cond82.preheader.i, !llvm.loop !13

init_array.exit:                                  ; preds = %for.cond82.preheader.i
  tail call void @free(i8* nonnull %call.i.i) #10
  tail call void (...) @polybench_timer_start() #10
  %arrayidx51.phi.trans.insert.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 0, i64 0
  %polly.access.cast.call.i = bitcast i8* %call.i to double*
  %scevgep2586 = bitcast i8* %call.i to double*
  br label %for.cond1.preheader.i12

for.cond1.preheader.i12:                          ; preds = %for.end47.i, %init_array.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.end47.i ], [ -1, %init_array.exit ]
  %indvars.iv17.i11 = phi i64 [ %indvars.iv.next18.i20, %for.end47.i ], [ 0, %init_array.exit ]
  %umax97 = call i64 @llvm.umax.i64(i64 %indvars.iv17.i11, i64 1)
  %42 = add nsw i64 %umax97, -1
  %cmp23.not.i = icmp eq i64 %indvars.iv17.i11, 0
  br i1 %cmp23.not.i, label %for.cond28.preheader.for.end47_crit_edge.i, label %polly.loop_preheader

for.cond28.preheader.for.end47_crit_edge.i:       ; preds = %for.cond1.preheader.i12
  %.pre22.i = load double, double* %arrayidx51.phi.trans.insert.i, align 8, !tbaa !2
  br label %for.end47.i

for.end47.i.loopexit.unr-lcssa:                   ; preds = %polly.stmt.for.body30.i, %polly.stmt.for.body30.lr.ph.i
  %p_sub44.i.lcssa.ph = phi double [ undef, %polly.stmt.for.body30.lr.ph.i ], [ %p_sub44.i.3, %polly.stmt.for.body30.i ]
  %.phiops.5.unr = phi double [ %.pre21.i_p_scalar_, %polly.stmt.for.body30.lr.ph.i ], [ %p_sub44.i.3, %polly.stmt.for.body30.i ]
  %polly.indvar60.unr = phi i64 [ 0, %polly.stmt.for.body30.lr.ph.i ], [ %polly.indvar_next61.3, %polly.stmt.for.body30.i ]
  %lcmp.mod99.not = icmp eq i64 %xtraiter98, 0
  br i1 %lcmp.mod99.not, label %for.end47.i, label %polly.stmt.for.body30.i.epil

polly.stmt.for.body30.i.epil:                     ; preds = %for.end47.i.loopexit.unr-lcssa, %polly.stmt.for.body30.i.epil
  %.phiops.5.epil = phi double [ %p_sub44.i.epil, %polly.stmt.for.body30.i.epil ], [ %.phiops.5.unr, %for.end47.i.loopexit.unr-lcssa ]
  %polly.indvar60.epil = phi i64 [ %polly.indvar_next61.epil, %polly.stmt.for.body30.i.epil ], [ %polly.indvar60.unr, %for.end47.i.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.sub, %polly.stmt.for.body30.i.epil ], [ %xtraiter98, %for.end47.i.loopexit.unr-lcssa ]
  %43 = shl nuw nsw i64 %polly.indvar60.epil, 3
  %scevgep64.epil = getelementptr i8, i8* %scevgep26, i64 %43
  %scevgep6465.epil = bitcast i8* %scevgep64.epil to double*
  %_p_scalar_66.epil = load double, double* %scevgep6465.epil, align 8, !alias.scope !14, !noalias !16
  %p_mul39.i.epil = fmul double %_p_scalar_66.epil, %_p_scalar_66.epil
  %p_sub44.i.epil = fsub double %.phiops.5.epil, %p_mul39.i.epil
  store double %p_sub44.i.epil, double* %scevgep5354, align 8, !alias.scope !14, !noalias !16
  %polly.indvar_next61.epil = add nuw nsw i64 %polly.indvar60.epil, 1
  %epil.iter.sub = add i64 %epil.iter, -1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.sub, 0
  br i1 %epil.iter.cmp.not, label %for.end47.i, label %polly.stmt.for.body30.i.epil, !llvm.loop !17

for.end47.i:                                      ; preds = %for.end47.i.loopexit.unr-lcssa, %polly.stmt.for.body30.i.epil, %for.cond28.preheader.for.end47_crit_edge.i
  %44 = phi double [ %.pre22.i, %for.cond28.preheader.for.end47_crit_edge.i ], [ %p_sub44.i.lcssa.ph, %for.end47.i.loopexit.unr-lcssa ], [ %p_sub44.i.epil, %polly.stmt.for.body30.i.epil ]
  %arrayidx51.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv17.i11, i64 %indvars.iv17.i11
  %call.i19 = tail call double @sqrt(double %44) #10
  store double %call.i19, double* %arrayidx51.i, align 8, !tbaa !2
  %indvars.iv.next18.i20 = add nuw nsw i64 %indvars.iv17.i11, 1
  %exitcond19.not.i = icmp eq i64 %indvars.iv.next18.i20, 4000
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br i1 %exitcond19.not.i, label %kernel_cholesky.exit, label %for.cond1.preheader.i12, !llvm.loop !19

kernel_cholesky.exit:                             ; preds = %for.end47.i
  tail call void (...) @polybench_timer_stop() #10
  tail call void (...) @polybench_timer_print() #10
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_cholesky.exit
  %45 = load i8*, i8** %argv, align 8, !tbaa !20
  %strcmpload = load i8, i8* %45, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !20
  %47 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %46) #11
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !20
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #11
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.inc10.i, %if.then
  %indvars.iv8.i = phi i64 [ 0, %if.then ], [ %indvars.iv.next9.i, %for.inc10.i ]
  %indvars.iv6.i = phi i64 [ 1, %if.then ], [ %indvars.iv.next7.i, %for.inc10.i ]
  %49 = mul nuw nsw i64 %indvars.iv8.i, 4000
  br label %for.body4.i

for.body4.i:                                      ; preds = %if.end.i, %for.cond2.preheader.i
  %indvars.iv.i21 = phi i64 [ 0, %for.cond2.preheader.i ], [ %indvars.iv.next.i23, %if.end.i ]
  %50 = add nuw nsw i64 %indvars.iv.i21, %49
  %51 = trunc i64 %50 to i32
  %rem.i = urem i32 %51, 20
  %cmp5.i = icmp eq i32 %rem.i, 0
  br i1 %cmp5.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body4.i
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !20
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %52) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !20
  %arrayidx8.i22 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv8.i, i64 %indvars.iv.i21
  %54 = load double, double* %arrayidx8.i22, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %54) #11
  %indvars.iv.next.i23 = add nuw nsw i64 %indvars.iv.i21, 1
  %exitcond.not.i24 = icmp eq i64 %indvars.iv.next.i23, %indvars.iv6.i
  br i1 %exitcond.not.i24, label %for.inc10.i, label %for.body4.i, !llvm.loop !22

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next9.i = add nuw nsw i64 %indvars.iv8.i, 1
  %indvars.iv.next7.i = add nuw nsw i64 %indvars.iv6.i, 1
  %exitcond11.not.i = icmp eq i64 %indvars.iv.next9.i, 4000
  br i1 %exitcond11.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !23

print_array.exit:                                 ; preds = %for.inc10.i
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !20
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #11
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !20
  %57 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %56) #11
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_cholesky.exit
  tail call void @free(i8* nonnull %call.i) #10
  ret i32 0

polly.loop_preheader:                             ; preds = %for.cond1.preheader.i12
  %58 = mul nuw nsw i64 %indvars.iv17.i11, 32000
  %scevgep26 = getelementptr i8, i8* %call.i, i64 %58
  %polly.access.mul.call.i = mul nuw nsw i64 %indvars.iv17.i11, 4000
  %polly.access.call.i84 = getelementptr double, double* %polly.access.cast.call.i, i64 %polly.access.mul.call.i
  %polly.access.call.i.reload85 = load double, double* %polly.access.call.i84, align 8, !alias.scope !14, !noalias !16
  %_p_scalar_87 = load double, double* %scevgep2586, align 8, !alias.scope !14, !noalias !16
  %p_div.i1788 = fdiv double %polly.access.call.i.reload85, %_p_scalar_87
  %scevgep272890 = bitcast i8* %scevgep26 to double*
  store double %p_div.i1788, double* %scevgep272890, align 8, !alias.scope !14, !noalias !16
  %exitcond.not91 = icmp eq i64 %indvars.iv, 0
  br i1 %exitcond.not91, label %polly.stmt.for.body30.lr.ph.i, label %polly.loop_preheader31

polly.loop_if29.loopexit:                         ; preds = %polly.stmt.for.body6.i.polly.stmt.for.body6.i_crit_edge, %polly.loop_preheader31
  %polly.access.add.call.i = add nuw nsw i64 %63, %polly.access.mul.call.i
  %polly.access.call.i = getelementptr double, double* %polly.access.cast.call.i, i64 %polly.access.add.call.i
  %polly.access.call.i.reload = load double, double* %polly.access.call.i, align 8, !alias.scope !14, !noalias !16
  %59 = mul nuw nsw i64 %63, 32008
  %scevgep = getelementptr i8, i8* %call.i, i64 %59
  %scevgep25 = bitcast i8* %scevgep to double*
  %_p_scalar_ = load double, double* %scevgep25, align 8, !alias.scope !14, !noalias !16
  %p_div.i17 = fdiv double %polly.access.call.i.reload, %_p_scalar_
  %60 = shl nuw nsw i64 %63, 3
  %scevgep27 = getelementptr i8, i8* %scevgep26, i64 %60
  %scevgep2728 = bitcast i8* %scevgep27 to double*
  store double %p_div.i17, double* %scevgep2728, align 8, !alias.scope !14, !noalias !16
  %61 = add nuw nsw i64 %63, 1
  %exitcond.not = icmp eq i64 %63, %indvars.iv
  br i1 %exitcond.not, label %polly.stmt.for.body30.lr.ph.i, label %polly.loop_preheader31

polly.stmt.for.body6.i.polly.stmt.for.body6.i_crit_edge: ; preds = %polly.loop_preheader31, %polly.stmt.for.body6.i.polly.stmt.for.body6.i_crit_edge
  %polly.indvar_next3582 = phi i64 [ %polly.indvar_next35, %polly.stmt.for.body6.i.polly.stmt.for.body6.i_crit_edge ], [ %polly.indvar_next3580, %polly.loop_preheader31 ]
  %_p_scalar_44.pre = load double, double* %scevgep272893, align 8, !alias.scope !14, !noalias !16
  %polly.access.add.call.i39 = add nuw nsw i64 %polly.indvar_next3582, %polly.access.mul.call.i
  %polly.access.call.i40 = getelementptr double, double* %polly.access.cast.call.i, i64 %polly.access.add.call.i39
  %polly.access.call.i40.reload = load double, double* %polly.access.call.i40, align 8, !alias.scope !14, !noalias !16
  %62 = mul nuw nsw i64 %polly.indvar_next3582, 32000
  %scevgep46 = getelementptr i8, i8* %scevgep45, i64 %62
  %scevgep4647 = bitcast i8* %scevgep46 to double*
  %_p_scalar_48 = load double, double* %scevgep4647, align 8, !alias.scope !14, !noalias !16
  %p_mul.i14 = fmul double %_p_scalar_44.pre, %_p_scalar_48
  %p_sub.i = fsub double %polly.access.call.i40.reload, %p_mul.i14
  store double %p_sub.i, double* %polly.access.call.i40, align 8, !alias.scope !14, !noalias !16
  %polly.indvar_next35 = add nuw nsw i64 %polly.indvar_next3582, 1
  %polly.loop_cond36 = icmp ult i64 %polly.indvar_next35, %indvars.iv17.i11
  br i1 %polly.loop_cond36, label %polly.stmt.for.body6.i.polly.stmt.for.body6.i_crit_edge, label %polly.loop_if29.loopexit

polly.loop_preheader31:                           ; preds = %polly.loop_preheader, %polly.loop_if29.loopexit
  %63 = phi i64 [ %61, %polly.loop_if29.loopexit ], [ 1, %polly.loop_preheader ]
  %scevgep272893 = phi double* [ %scevgep2728, %polly.loop_if29.loopexit ], [ %scevgep272890, %polly.loop_preheader ]
  %64 = phi i64 [ %60, %polly.loop_if29.loopexit ], [ 0, %polly.loop_preheader ]
  %p_div.i1792 = phi double [ %p_div.i17, %polly.loop_if29.loopexit ], [ %p_div.i1788, %polly.loop_preheader ]
  %scevgep45 = getelementptr i8, i8* %call.i, i64 %64
  %polly.access.add.call.i3972 = add nuw nsw i64 %63, %polly.access.mul.call.i
  %polly.access.call.i4073 = getelementptr double, double* %polly.access.cast.call.i, i64 %polly.access.add.call.i3972
  %polly.access.call.i40.reload74 = load double, double* %polly.access.call.i4073, align 8, !alias.scope !14, !noalias !16
  %65 = mul nuw nsw i64 %63, 32000
  %scevgep4675 = getelementptr i8, i8* %scevgep45, i64 %65
  %scevgep464776 = bitcast i8* %scevgep4675 to double*
  %_p_scalar_4877 = load double, double* %scevgep464776, align 8, !alias.scope !14, !noalias !16
  %p_mul.i1478 = fmul double %p_div.i1792, %_p_scalar_4877
  %p_sub.i79 = fsub double %polly.access.call.i40.reload74, %p_mul.i1478
  store double %p_sub.i79, double* %polly.access.call.i4073, align 8, !alias.scope !14, !noalias !16
  %polly.indvar_next3580 = add nuw nsw i64 %63, 1
  %polly.loop_cond3681 = icmp ult i64 %polly.indvar_next3580, %indvars.iv17.i11
  br i1 %polly.loop_cond3681, label %polly.stmt.for.body6.i.polly.stmt.for.body6.i_crit_edge, label %polly.loop_if29.loopexit

polly.stmt.for.body30.lr.ph.i:                    ; preds = %polly.loop_if29.loopexit, %polly.loop_preheader
  %66 = mul nuw nsw i64 %indvars.iv17.i11, 32008
  %scevgep53 = getelementptr i8, i8* %call.i, i64 %66
  %scevgep5354 = bitcast i8* %scevgep53 to double*
  %.pre21.i_p_scalar_ = load double, double* %scevgep5354, align 8, !alias.scope !14, !noalias !16
  %xtraiter98 = and i64 %umax97, 3
  %67 = icmp ult i64 %42, 3
  br i1 %67, label %for.end47.i.loopexit.unr-lcssa, label %polly.stmt.for.body30.lr.ph.i.new

polly.stmt.for.body30.lr.ph.i.new:                ; preds = %polly.stmt.for.body30.lr.ph.i
  %unroll_iter101 = and i64 %umax97, 9223372036854775804
  br label %polly.stmt.for.body30.i

polly.stmt.for.body30.i:                          ; preds = %polly.stmt.for.body30.i, %polly.stmt.for.body30.lr.ph.i.new
  %.phiops.5 = phi double [ %.pre21.i_p_scalar_, %polly.stmt.for.body30.lr.ph.i.new ], [ %p_sub44.i.3, %polly.stmt.for.body30.i ]
  %polly.indvar60 = phi i64 [ 0, %polly.stmt.for.body30.lr.ph.i.new ], [ %polly.indvar_next61.3, %polly.stmt.for.body30.i ]
  %niter102 = phi i64 [ %unroll_iter101, %polly.stmt.for.body30.lr.ph.i.new ], [ %niter102.nsub.3, %polly.stmt.for.body30.i ]
  %68 = shl nuw nsw i64 %polly.indvar60, 3
  %scevgep64 = getelementptr i8, i8* %scevgep26, i64 %68
  %scevgep6465 = bitcast i8* %scevgep64 to double*
  %_p_scalar_66 = load double, double* %scevgep6465, align 8, !alias.scope !14, !noalias !16
  %p_mul39.i = fmul double %_p_scalar_66, %_p_scalar_66
  %p_sub44.i = fsub double %.phiops.5, %p_mul39.i
  store double %p_sub44.i, double* %scevgep5354, align 8, !alias.scope !14, !noalias !16
  %polly.indvar_next61 = shl i64 %polly.indvar60, 3
  %69 = or i64 %polly.indvar_next61, 8
  %scevgep64.1 = getelementptr i8, i8* %scevgep26, i64 %69
  %scevgep6465.1 = bitcast i8* %scevgep64.1 to double*
  %_p_scalar_66.1 = load double, double* %scevgep6465.1, align 8, !alias.scope !14, !noalias !16
  %p_mul39.i.1 = fmul double %_p_scalar_66.1, %_p_scalar_66.1
  %p_sub44.i.1 = fsub double %p_sub44.i, %p_mul39.i.1
  store double %p_sub44.i.1, double* %scevgep5354, align 8, !alias.scope !14, !noalias !16
  %polly.indvar_next61.1 = shl i64 %polly.indvar60, 3
  %70 = or i64 %polly.indvar_next61.1, 16
  %scevgep64.2 = getelementptr i8, i8* %scevgep26, i64 %70
  %scevgep6465.2 = bitcast i8* %scevgep64.2 to double*
  %_p_scalar_66.2 = load double, double* %scevgep6465.2, align 8, !alias.scope !14, !noalias !16
  %p_mul39.i.2 = fmul double %_p_scalar_66.2, %_p_scalar_66.2
  %p_sub44.i.2 = fsub double %p_sub44.i.1, %p_mul39.i.2
  store double %p_sub44.i.2, double* %scevgep5354, align 8, !alias.scope !14, !noalias !16
  %polly.indvar_next61.2 = shl i64 %polly.indvar60, 3
  %71 = or i64 %polly.indvar_next61.2, 24
  %scevgep64.3 = getelementptr i8, i8* %scevgep26, i64 %71
  %scevgep6465.3 = bitcast i8* %scevgep64.3 to double*
  %_p_scalar_66.3 = load double, double* %scevgep6465.3, align 8, !alias.scope !14, !noalias !16
  %p_mul39.i.3 = fmul double %_p_scalar_66.3, %_p_scalar_66.3
  %p_sub44.i.3 = fsub double %p_sub44.i.2, %p_mul39.i.3
  store double %p_sub44.i.3, double* %scevgep5354, align 8, !alias.scope !14, !noalias !16
  %polly.indvar_next61.3 = add nuw nsw i64 %polly.indvar60, 4
  %niter102.nsub.3 = add i64 %niter102, -4
  %niter102.ncmp.3 = icmp eq i64 %niter102.nsub.3, 0
  br i1 %niter102.ncmp.3, label %for.end47.i.loopexit.unr-lcssa, label %polly.stmt.for.body30.i
}

declare dso_local void @polybench_timer_start(...) local_unnamed_addr #1

declare dso_local void @polybench_timer_stop(...) local_unnamed_addr #1

declare dso_local void @polybench_timer_print(...) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind willreturn
declare dso_local double @sqrt(double) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fprintf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #9

attributes #0 = { nounwind uwtable "frame-pointer"="none" "no-trapping-math"="true" "polly-optimized" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inaccessiblemem_or_argmemonly nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inaccessiblememonly nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #8 = { argmemonly nofree nosync nounwind willreturn }
attributes #9 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }

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
!9 = distinct !{!9, !7, !10}
!10 = !{!"llvm.loop.isvectorized", i32 1}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !15, !"polly.alias.scope.MemRef0"}
!15 = distinct !{!15, !"polly.alias.scope.domain"}
!16 = !{}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.unroll.disable"}
!19 = distinct !{!19, !7}
!20 = !{!21, !21, i64 0}
!21 = !{!"any pointer", !4, i64 0}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}

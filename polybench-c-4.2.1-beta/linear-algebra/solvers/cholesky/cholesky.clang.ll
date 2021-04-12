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
entry:
  %call.i = tail call noalias dereferenceable_or_null(128000000) i8* @malloc(i64 128000000) #9
  %arraydecay = bitcast i8* %call.i to [4000 x double]*
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.end18.i, %entry
  %indvar.i = phi i64 [ 0, %entry ], [ %indvar.next.i, %for.end18.i ]
  %0 = add nuw i64 %indvar.i, 1
  %1 = mul nuw nsw i64 %indvar.i, 4001
  %2 = add nuw nsw i64 %1, 1
  %scevgep.i = getelementptr [4000 x double], [4000 x double]* %arraydecay, i64 0, i64 %2
  %.neg.i = mul nsw i64 %indvar.i, -8
  %3 = add nsw i64 %.neg.i, 31984
  %4 = and i64 %3, 34359738360
  %xtraiter = and i64 %0, 1
  %5 = icmp eq i64 %indvar.i, 0
  br i1 %5, label %for.end.i.unr-lcssa, label %for.cond1.preheader.i.new

for.cond1.preheader.i.new:                        ; preds = %for.cond1.preheader.i
  %unroll_iter = and i64 %0, -2
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.body3.i, %for.cond1.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %for.cond1.preheader.i.new ], [ %indvars.iv.next.i.1, %for.body3.i ]
  %niter = phi i64 [ %unroll_iter, %for.cond1.preheader.i.new ], [ %niter.nsub.1, %for.body3.i ]
  %6 = trunc i64 %indvars.iv.i to i32
  %7 = sub i32 0, %6
  %conv.i = sitofp i32 %7 to double
  %div.i = fdiv double %conv.i, 4.000000e+03
  %add.i = fadd double %div.i, 1.000000e+00
  %arrayidx6.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvar.i, i64 %indvars.iv.i
  store double %add.i, double* %arrayidx6.i, align 8, !tbaa !2
  %indvars.iv.next.i = or i64 %indvars.iv.i, 1
  %8 = trunc i64 %indvars.iv.i to i32
  %.neg = xor i32 %8, -1
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
  %9 = trunc i64 %indvars.iv.i.unr to i32
  %10 = sub i32 0, %9
  %conv.i.epil = sitofp i32 %10 to double
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
  %11 = add nuw nsw i64 %4, 8
  %scevgep16.i = bitcast double* %scevgep.i to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(1) %scevgep16.i, i8 0, i64 %11, i1 false) #9
  br label %for.end18.i

for.end18.i:                                      ; preds = %for.body11.lr.ph.i, %for.end.i
  %arrayidx22.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvar.i, i64 %indvar.i
  store double 1.000000e+00, double* %arrayidx22.i, align 8, !tbaa !2
  %exitcond21.not.i = icmp eq i64 %indvar.next.i, 4000
  br i1 %exitcond21.not.i, label %for.end25.i, label %for.cond1.preheader.i, !llvm.loop !8

for.end25.i:                                      ; preds = %for.end18.i
  %call.i.i = tail call noalias dereferenceable_or_null(128000000) i8* @malloc(i64 128000000) #9
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(128000000) %call.i.i, i8 0, i64 128000000, i1 false) #9
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
  %broadcast.splatinsert25 = insertelement <2 x double> poison, double %13, i32 0
  %broadcast.splat26 = shufflevector <2 x double> %broadcast.splatinsert25, <2 x double> poison, <2 x i32> zeroinitializer
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
  %30 = fmul <2 x double> %broadcast.splat26, %28
  %31 = getelementptr inbounds [4000 x [4000 x double]], [4000 x [4000 x double]]* %12, i64 0, i64 %indvars.iv30.i, i64 %index
  %32 = bitcast double* %31 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %32, align 8, !tbaa !2
  %33 = getelementptr inbounds double, double* %31, i64 2
  %34 = bitcast double* %33 to <2 x double>*
  %wide.load27 = load <2 x double>, <2 x double>* %34, align 8, !tbaa !2
  %35 = fadd <2 x double> %wide.load, %29
  %36 = fadd <2 x double> %wide.load27, %30
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
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32000) %scevgep3839.i, i8* noundef nonnull align 8 dereferenceable(32000) %scevgep40.i, i64 32000, i1 false) #9
  %indvar.next37.i = or i64 %indvar36.i, 1
  %scevgep38.i.1 = getelementptr [4000 x double], [4000 x double]* %arraydecay, i64 %indvar.next37.i, i64 0
  %scevgep3839.i.1 = bitcast double* %scevgep38.i.1 to i8*
  %41 = mul nuw nsw i64 %indvar.next37.i, 32000
  %scevgep40.i.1 = getelementptr i8, i8* %call.i.i, i64 %41
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32000) %scevgep3839.i.1, i8* noundef nonnull align 8 dereferenceable(32000) %scevgep40.i.1, i64 32000, i1 false) #9
  %indvar.next37.i.1 = add nuw nsw i64 %indvar36.i, 2
  %exitcond43.not.i.1 = icmp eq i64 %indvar.next37.i.1, 4000
  br i1 %exitcond43.not.i.1, label %init_array.exit, label %for.cond82.preheader.i, !llvm.loop !13

init_array.exit:                                  ; preds = %for.cond82.preheader.i
  tail call void @free(i8* nonnull %call.i.i) #9
  tail call void (...) @polybench_timer_start() #9
  %arrayidx51.phi.trans.insert.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 0, i64 0
  br label %for.cond1.preheader.i12

for.cond1.preheader.i12:                          ; preds = %for.end47.i, %init_array.exit
  %indvars.iv17.i11 = phi i64 [ 0, %init_array.exit ], [ %indvars.iv.next18.i20, %for.end47.i ]
  %cmp23.not.i = icmp eq i64 %indvars.iv17.i11, 0
  br i1 %cmp23.not.i, label %for.cond28.preheader.for.end47_crit_edge.i, label %for.cond4.preheader.lr.ph.i

for.cond4.preheader.lr.ph.i:                      ; preds = %for.cond1.preheader.i12
  %arrayidx24.phi.trans.insert.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv17.i11, i64 0
  br label %for.cond4.preheader.i

for.cond28.preheader.for.end47_crit_edge.i:       ; preds = %for.cond1.preheader.i12
  %.pre22.i = load double, double* %arrayidx51.phi.trans.insert.i, align 8, !tbaa !2
  br label %for.end47.i

for.body30.lr.ph.i:                               ; preds = %for.end.i18
  %arrayidx43.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv17.i11, i64 %indvars.iv17.i11
  %.pre21.i = load double, double* %arrayidx43.i, align 8, !tbaa !2
  %xtraiter32 = and i64 %indvars.iv17.i11, 1
  %42 = icmp eq i64 %indvars.iv17.i11, 1
  br i1 %42, label %for.end47.i.loopexit.unr-lcssa, label %for.body30.lr.ph.i.new

for.body30.lr.ph.i.new:                           ; preds = %for.body30.lr.ph.i
  %unroll_iter35 = and i64 %indvars.iv17.i11, 9223372036854775806
  br label %for.body30.i

for.cond4.preheader.i:                            ; preds = %for.end.i18, %for.cond4.preheader.lr.ph.i
  %indvars.iv10.i = phi i64 [ 0, %for.cond4.preheader.lr.ph.i ], [ %indvars.iv.next11.i, %for.end.i18 ]
  %cmp51.not.i = icmp eq i64 %indvars.iv10.i, 0
  br i1 %cmp51.not.i, label %for.cond4.preheader.for.end_crit_edge.i, label %for.body6.lr.ph.i

for.cond4.preheader.for.end_crit_edge.i:          ; preds = %for.cond4.preheader.i
  %.pre20.i = load double, double* %arrayidx24.phi.trans.insert.i, align 8, !tbaa !2
  br label %for.end.i18

for.body6.lr.ph.i:                                ; preds = %for.cond4.preheader.i
  %arrayidx16.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv17.i11, i64 %indvars.iv10.i
  %.pre.i = load double, double* %arrayidx16.i, align 8, !tbaa !2
  %xtraiter28 = and i64 %indvars.iv10.i, 1
  %43 = icmp eq i64 %indvars.iv10.i, 1
  br i1 %43, label %for.end.i18.loopexit.unr-lcssa, label %for.body6.lr.ph.i.new

for.body6.lr.ph.i.new:                            ; preds = %for.body6.lr.ph.i
  %unroll_iter30 = and i64 %indvars.iv10.i, 9223372036854775806
  br label %for.body6.i

for.body6.i:                                      ; preds = %for.body6.i, %for.body6.lr.ph.i.new
  %44 = phi double [ %.pre.i, %for.body6.lr.ph.i.new ], [ %sub.i.1, %for.body6.i ]
  %indvars.iv.i13 = phi i64 [ 0, %for.body6.lr.ph.i.new ], [ %indvars.iv.next.i15.1, %for.body6.i ]
  %niter31 = phi i64 [ %unroll_iter30, %for.body6.lr.ph.i.new ], [ %niter31.nsub.1, %for.body6.i ]
  %arrayidx8.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv17.i11, i64 %indvars.iv.i13
  %45 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %arrayidx12.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv10.i, i64 %indvars.iv.i13
  %46 = load double, double* %arrayidx12.i, align 8, !tbaa !2
  %mul.i14 = fmul double %45, %46
  %sub.i = fsub double %44, %mul.i14
  store double %sub.i, double* %arrayidx16.i, align 8, !tbaa !2
  %indvars.iv.next.i15 = or i64 %indvars.iv.i13, 1
  %arrayidx8.i.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv17.i11, i64 %indvars.iv.next.i15
  %47 = load double, double* %arrayidx8.i.1, align 8, !tbaa !2
  %arrayidx12.i.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv10.i, i64 %indvars.iv.next.i15
  %48 = load double, double* %arrayidx12.i.1, align 8, !tbaa !2
  %mul.i14.1 = fmul double %47, %48
  %sub.i.1 = fsub double %sub.i, %mul.i14.1
  store double %sub.i.1, double* %arrayidx16.i, align 8, !tbaa !2
  %indvars.iv.next.i15.1 = add nuw nsw i64 %indvars.iv.i13, 2
  %niter31.nsub.1 = add i64 %niter31, -2
  %niter31.ncmp.1 = icmp eq i64 %niter31.nsub.1, 0
  br i1 %niter31.ncmp.1, label %for.end.i18.loopexit.unr-lcssa, label %for.body6.i, !llvm.loop !14

for.end.i18.loopexit.unr-lcssa:                   ; preds = %for.body6.i, %for.body6.lr.ph.i
  %sub.i.lcssa.ph = phi double [ undef, %for.body6.lr.ph.i ], [ %sub.i.1, %for.body6.i ]
  %.unr = phi double [ %.pre.i, %for.body6.lr.ph.i ], [ %sub.i.1, %for.body6.i ]
  %indvars.iv.i13.unr = phi i64 [ 0, %for.body6.lr.ph.i ], [ %indvars.iv.next.i15.1, %for.body6.i ]
  %lcmp.mod29.not = icmp eq i64 %xtraiter28, 0
  br i1 %lcmp.mod29.not, label %for.end.i18, label %for.body6.i.epil

for.body6.i.epil:                                 ; preds = %for.end.i18.loopexit.unr-lcssa
  %arrayidx8.i.epil = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv17.i11, i64 %indvars.iv.i13.unr
  %49 = load double, double* %arrayidx8.i.epil, align 8, !tbaa !2
  %arrayidx12.i.epil = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv10.i, i64 %indvars.iv.i13.unr
  %50 = load double, double* %arrayidx12.i.epil, align 8, !tbaa !2
  %mul.i14.epil = fmul double %49, %50
  %sub.i.epil = fsub double %.unr, %mul.i14.epil
  store double %sub.i.epil, double* %arrayidx16.i, align 8, !tbaa !2
  br label %for.end.i18

for.end.i18:                                      ; preds = %for.body6.i.epil, %for.end.i18.loopexit.unr-lcssa, %for.cond4.preheader.for.end_crit_edge.i
  %51 = phi double [ %.pre20.i, %for.cond4.preheader.for.end_crit_edge.i ], [ %sub.i.lcssa.ph, %for.end.i18.loopexit.unr-lcssa ], [ %sub.i.epil, %for.body6.i.epil ]
  %arrayidx20.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv10.i, i64 %indvars.iv10.i
  %52 = load double, double* %arrayidx20.i, align 8, !tbaa !2
  %arrayidx24.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv17.i11, i64 %indvars.iv10.i
  %div.i17 = fdiv double %51, %52
  store double %div.i17, double* %arrayidx24.i, align 8, !tbaa !2
  %indvars.iv.next11.i = add nuw nsw i64 %indvars.iv10.i, 1
  %exitcond13.not.i = icmp eq i64 %indvars.iv.next11.i, %indvars.iv17.i11
  br i1 %exitcond13.not.i, label %for.body30.lr.ph.i, label %for.cond4.preheader.i, !llvm.loop !15

for.body30.i:                                     ; preds = %for.body30.i, %for.body30.lr.ph.i.new
  %53 = phi double [ %.pre21.i, %for.body30.lr.ph.i.new ], [ %sub44.i.1, %for.body30.i ]
  %indvars.iv14.i = phi i64 [ 0, %for.body30.lr.ph.i.new ], [ %indvars.iv.next15.i.1, %for.body30.i ]
  %niter36 = phi i64 [ %unroll_iter35, %for.body30.lr.ph.i.new ], [ %niter36.nsub.1, %for.body30.i ]
  %arrayidx34.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv17.i11, i64 %indvars.iv14.i
  %54 = load double, double* %arrayidx34.i, align 8, !tbaa !2
  %mul39.i = fmul double %54, %54
  %sub44.i = fsub double %53, %mul39.i
  store double %sub44.i, double* %arrayidx43.i, align 8, !tbaa !2
  %indvars.iv.next15.i = or i64 %indvars.iv14.i, 1
  %arrayidx34.i.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv17.i11, i64 %indvars.iv.next15.i
  %55 = load double, double* %arrayidx34.i.1, align 8, !tbaa !2
  %mul39.i.1 = fmul double %55, %55
  %sub44.i.1 = fsub double %sub44.i, %mul39.i.1
  store double %sub44.i.1, double* %arrayidx43.i, align 8, !tbaa !2
  %indvars.iv.next15.i.1 = add nuw nsw i64 %indvars.iv14.i, 2
  %niter36.nsub.1 = add i64 %niter36, -2
  %niter36.ncmp.1 = icmp eq i64 %niter36.nsub.1, 0
  br i1 %niter36.ncmp.1, label %for.end47.i.loopexit.unr-lcssa, label %for.body30.i, !llvm.loop !16

for.end47.i.loopexit.unr-lcssa:                   ; preds = %for.body30.i, %for.body30.lr.ph.i
  %sub44.i.lcssa.ph = phi double [ undef, %for.body30.lr.ph.i ], [ %sub44.i.1, %for.body30.i ]
  %.unr33 = phi double [ %.pre21.i, %for.body30.lr.ph.i ], [ %sub44.i.1, %for.body30.i ]
  %indvars.iv14.i.unr = phi i64 [ 0, %for.body30.lr.ph.i ], [ %indvars.iv.next15.i.1, %for.body30.i ]
  %lcmp.mod34.not = icmp eq i64 %xtraiter32, 0
  br i1 %lcmp.mod34.not, label %for.end47.i, label %for.body30.i.epil

for.body30.i.epil:                                ; preds = %for.end47.i.loopexit.unr-lcssa
  %arrayidx34.i.epil = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv17.i11, i64 %indvars.iv14.i.unr
  %56 = load double, double* %arrayidx34.i.epil, align 8, !tbaa !2
  %mul39.i.epil = fmul double %56, %56
  %sub44.i.epil = fsub double %.unr33, %mul39.i.epil
  store double %sub44.i.epil, double* %arrayidx43.i, align 8, !tbaa !2
  br label %for.end47.i

for.end47.i:                                      ; preds = %for.body30.i.epil, %for.end47.i.loopexit.unr-lcssa, %for.cond28.preheader.for.end47_crit_edge.i
  %57 = phi double [ %.pre22.i, %for.cond28.preheader.for.end47_crit_edge.i ], [ %sub44.i.lcssa.ph, %for.end47.i.loopexit.unr-lcssa ], [ %sub44.i.epil, %for.body30.i.epil ]
  %arrayidx51.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv17.i11, i64 %indvars.iv17.i11
  %call.i19 = tail call double @sqrt(double %57) #9
  store double %call.i19, double* %arrayidx51.i, align 8, !tbaa !2
  %indvars.iv.next18.i20 = add nuw nsw i64 %indvars.iv17.i11, 1
  %exitcond19.not.i = icmp eq i64 %indvars.iv.next18.i20, 4000
  br i1 %exitcond19.not.i, label %kernel_cholesky.exit, label %for.cond1.preheader.i12, !llvm.loop !17

kernel_cholesky.exit:                             ; preds = %for.end47.i
  tail call void (...) @polybench_timer_stop() #9
  tail call void (...) @polybench_timer_print() #9
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_cholesky.exit
  %58 = load i8*, i8** %argv, align 8, !tbaa !18
  %strcmpload = load i8, i8* %58, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !18
  %60 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %59) #10
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !18
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %61, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #10
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.inc10.i, %if.then
  %indvars.iv8.i = phi i64 [ 0, %if.then ], [ %indvars.iv.next9.i, %for.inc10.i ]
  %indvars.iv6.i = phi i64 [ 1, %if.then ], [ %indvars.iv.next7.i, %for.inc10.i ]
  %62 = mul nuw nsw i64 %indvars.iv8.i, 4000
  br label %for.body4.i

for.body4.i:                                      ; preds = %if.end.i, %for.cond2.preheader.i
  %indvars.iv.i21 = phi i64 [ 0, %for.cond2.preheader.i ], [ %indvars.iv.next.i23, %if.end.i ]
  %63 = add nuw nsw i64 %indvars.iv.i21, %62
  %64 = trunc i64 %63 to i32
  %rem.i = urem i32 %64, 20
  %cmp5.i = icmp eq i32 %rem.i, 0
  br i1 %cmp5.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body4.i
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !18
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %65) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !18
  %arrayidx8.i22 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv8.i, i64 %indvars.iv.i21
  %67 = load double, double* %arrayidx8.i22, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %67) #10
  %indvars.iv.next.i23 = add nuw nsw i64 %indvars.iv.i21, 1
  %exitcond.not.i24 = icmp eq i64 %indvars.iv.next.i23, %indvars.iv6.i
  br i1 %exitcond.not.i24, label %for.inc10.i, label %for.body4.i, !llvm.loop !20

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next9.i = add nuw nsw i64 %indvars.iv8.i, 1
  %indvars.iv.next7.i = add nuw nsw i64 %indvars.iv6.i, 1
  %exitcond11.not.i = icmp eq i64 %indvars.iv.next9.i, 4000
  br i1 %exitcond11.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !21

print_array.exit:                                 ; preds = %for.inc10.i
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !18
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %68, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #10
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !18
  %70 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %69) #10
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_cholesky.exit
  tail call void @free(i8* nonnull %call.i) #9
  ret i32 0
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

attributes #0 = { nounwind uwtable "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inaccessiblemem_or_argmemonly nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inaccessiblememonly nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #8 = { argmemonly nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }

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
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = !{!19, !19, i64 0}
!19 = !{!"any pointer", !4, i64 0}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}

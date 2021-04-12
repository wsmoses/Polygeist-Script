; ModuleID = 'ludcmp.c'
source_filename = "ludcmp.c"
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
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** nocapture readonly %argv) local_unnamed_addr #0 {
entry:
  %call.i = tail call noalias dereferenceable_or_null(128000000) i8* @malloc(i64 128000000) #8
  %call.i29 = tail call noalias dereferenceable_or_null(32000) i8* @malloc(i64 32000) #8
  %call.i30 = tail call noalias dereferenceable_or_null(32000) i8* @malloc(i64 32000) #8
  %call.i31 = tail call noalias dereferenceable_or_null(32000) i8* @malloc(i64 32000) #8
  %arraydecay4 = bitcast i8* %call.i29 to double*
  %arraydecay5 = bitcast i8* %call.i30 to double*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32000) %call.i30, i8 0, i64 32000, i1 false)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32000) %call.i31, i8 0, i64 32000, i1 false)
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %entry
  %indvars.iv.i = phi i64 [ 0, %entry ], [ %indvars.iv.next.i.1, %for.body.i ]
  %indvars.iv.next.i = or i64 %indvars.iv.i, 1
  %0 = trunc i64 %indvars.iv.next.i to i32
  %conv4.i = sitofp i32 %0 to double
  %div.i = fdiv double %conv4.i, 4.000000e+03
  %div5.i = fmul double %div.i, 5.000000e-01
  %add6.i = fadd double %div5.i, 4.000000e+00
  %arrayidx8.i = getelementptr inbounds double, double* %arraydecay4, i64 %indvars.iv.i
  store double %add6.i, double* %arrayidx8.i, align 8, !tbaa !2
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2
  %1 = trunc i64 %indvars.iv.next.i.1 to i32
  %conv4.i.1 = sitofp i32 %1 to double
  %div.i.1 = fdiv double %conv4.i.1, 4.000000e+03
  %div5.i.1 = fmul double %div.i.1, 5.000000e-01
  %add6.i.1 = fadd double %div5.i.1, 4.000000e+00
  %arrayidx8.i.1 = getelementptr inbounds double, double* %arraydecay4, i64 %indvars.iv.next.i
  store double %add6.i.1, double* %arrayidx8.i.1, align 8, !tbaa !2
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 4000
  br i1 %exitcond.not.i.1, label %for.cond13.preheader.i.preheader, label %for.body.i, !llvm.loop !6

for.cond13.preheader.i.preheader:                 ; preds = %for.body.i
  %arraydecay = bitcast i8* %call.i to [4000 x double]*
  br label %for.cond13.preheader.i

for.cond13.preheader.i:                           ; preds = %for.cond13.preheader.i.preheader, %for.end39.i
  %indvar.i = phi i64 [ %indvar.next.i, %for.end39.i ], [ 0, %for.cond13.preheader.i.preheader ]
  %2 = add nuw i64 %indvar.i, 1
  %3 = mul nuw nsw i64 %indvar.i, 4001
  %4 = add nuw nsw i64 %3, 1
  %scevgep.i = getelementptr [4000 x double], [4000 x double]* %arraydecay, i64 0, i64 %4
  %.neg.i = mul nsw i64 %indvar.i, -8
  %5 = add nsw i64 %.neg.i, 31984
  %6 = and i64 %5, 34359738360
  %xtraiter = and i64 %2, 1
  %7 = icmp eq i64 %indvar.i, 0
  br i1 %7, label %for.end27.i.unr-lcssa, label %for.cond13.preheader.i.new

for.cond13.preheader.i.new:                       ; preds = %for.cond13.preheader.i
  %unroll_iter = and i64 %2, -2
  br label %for.body16.i

for.body16.i:                                     ; preds = %for.body16.i, %for.cond13.preheader.i.new
  %indvars.iv16.i = phi i64 [ 0, %for.cond13.preheader.i.new ], [ %indvars.iv.next17.i.1, %for.body16.i ]
  %niter = phi i64 [ %unroll_iter, %for.cond13.preheader.i.new ], [ %niter.nsub.1, %for.body16.i ]
  %8 = trunc i64 %indvars.iv16.i to i32
  %9 = sub i32 0, %8
  %conv17.i = sitofp i32 %9 to double
  %div19.i = fdiv double %conv17.i, 4.000000e+03
  %add20.i = fadd double %div19.i, 1.000000e+00
  %arrayidx24.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvar.i, i64 %indvars.iv16.i
  store double %add20.i, double* %arrayidx24.i, align 8, !tbaa !2
  %indvars.iv.next17.i = or i64 %indvars.iv16.i, 1
  %10 = trunc i64 %indvars.iv16.i to i32
  %.neg = xor i32 %10, -1
  %conv17.i.1 = sitofp i32 %.neg to double
  %div19.i.1 = fdiv double %conv17.i.1, 4.000000e+03
  %add20.i.1 = fadd double %div19.i.1, 1.000000e+00
  %arrayidx24.i.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvar.i, i64 %indvars.iv.next17.i
  store double %add20.i.1, double* %arrayidx24.i.1, align 8, !tbaa !2
  %indvars.iv.next17.i.1 = add nuw nsw i64 %indvars.iv16.i, 2
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %for.end27.i.unr-lcssa, label %for.body16.i, !llvm.loop !8

for.end27.i.unr-lcssa:                            ; preds = %for.body16.i, %for.cond13.preheader.i
  %indvars.iv16.i.unr = phi i64 [ 0, %for.cond13.preheader.i ], [ %indvars.iv.next17.i.1, %for.body16.i ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end27.i, label %for.body16.i.epil

for.body16.i.epil:                                ; preds = %for.end27.i.unr-lcssa
  %11 = trunc i64 %indvars.iv16.i.unr to i32
  %12 = sub i32 0, %11
  %conv17.i.epil = sitofp i32 %12 to double
  %div19.i.epil = fdiv double %conv17.i.epil, 4.000000e+03
  %add20.i.epil = fadd double %div19.i.epil, 1.000000e+00
  %arrayidx24.i.epil = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvar.i, i64 %indvars.iv16.i.unr
  store double %add20.i.epil, double* %arrayidx24.i.epil, align 8, !tbaa !2
  br label %for.end27.i

for.end27.i:                                      ; preds = %for.end27.i.unr-lcssa, %for.body16.i.epil
  %indvar.next.i = add nuw nsw i64 %indvar.i, 1
  %cmp303.i = icmp ult i64 %indvar.i, 3999
  br i1 %cmp303.i, label %for.body32.lr.ph.i, label %for.end39.i

for.body32.lr.ph.i:                               ; preds = %for.end27.i
  %13 = add nuw nsw i64 %6, 8
  %scevgep22.i = bitcast double* %scevgep.i to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(1) %scevgep22.i, i8 0, i64 %13, i1 false) #8
  br label %for.end39.i

for.end39.i:                                      ; preds = %for.body32.lr.ph.i, %for.end27.i
  %arrayidx43.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvar.i, i64 %indvar.i
  store double 1.000000e+00, double* %arrayidx43.i, align 8, !tbaa !2
  %exitcond27.not.i = icmp eq i64 %indvar.next.i, 4000
  br i1 %exitcond27.not.i, label %for.end46.i, label %for.cond13.preheader.i, !llvm.loop !9

for.end46.i:                                      ; preds = %for.end39.i
  %call.i.i = tail call noalias dereferenceable_or_null(128000000) i8* @malloc(i64 128000000) #8
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(128000000) %call.i.i, i8 0, i64 128000000, i1 false) #8
  %14 = bitcast i8* %call.i.i to [4000 x [4000 x double]]*
  br label %for.cond69.preheader.i

for.cond69.preheader.i:                           ; preds = %for.inc96.i, %for.end46.i
  %indvars.iv39.i = phi i64 [ 0, %for.end46.i ], [ %indvars.iv.next40.i, %for.inc96.i ]
  br label %for.cond73.preheader.i

for.cond73.preheader.i:                           ; preds = %for.inc93.i, %for.cond69.preheader.i
  %indvars.iv36.i = phi i64 [ 0, %for.cond69.preheader.i ], [ %indvars.iv.next37.i, %for.inc93.i ]
  %arrayidx80.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv36.i, i64 %indvars.iv39.i
  %15 = load double, double* %arrayidx80.i, align 8, !tbaa !2
  %broadcast.splatinsert = insertelement <2 x double> poison, double %15, i32 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert46 = insertelement <2 x double> poison, double %15, i32 0
  %broadcast.splat47 = shufflevector <2 x double> %broadcast.splatinsert46, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %for.cond73.preheader.i
  %index = phi i64 [ 0, %for.cond73.preheader.i ], [ %index.next, %vector.body ]
  %16 = or i64 %index, 1
  %17 = or i64 %index, 2
  %18 = or i64 %index, 3
  %19 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %index, i64 %indvars.iv39.i
  %20 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %16, i64 %indvars.iv39.i
  %21 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %17, i64 %indvars.iv39.i
  %22 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %18, i64 %indvars.iv39.i
  %23 = load double, double* %19, align 8, !tbaa !2
  %24 = load double, double* %20, align 8, !tbaa !2
  %25 = insertelement <2 x double> poison, double %23, i32 0
  %26 = insertelement <2 x double> %25, double %24, i32 1
  %27 = load double, double* %21, align 8, !tbaa !2
  %28 = load double, double* %22, align 8, !tbaa !2
  %29 = insertelement <2 x double> poison, double %27, i32 0
  %30 = insertelement <2 x double> %29, double %28, i32 1
  %31 = fmul <2 x double> %broadcast.splat, %26
  %32 = fmul <2 x double> %broadcast.splat47, %30
  %33 = getelementptr inbounds [4000 x [4000 x double]], [4000 x [4000 x double]]* %14, i64 0, i64 %indvars.iv36.i, i64 %index
  %34 = bitcast double* %33 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %34, align 8, !tbaa !2
  %35 = getelementptr inbounds double, double* %33, i64 2
  %36 = bitcast double* %35 to <2 x double>*
  %wide.load48 = load <2 x double>, <2 x double>* %36, align 8, !tbaa !2
  %37 = fadd <2 x double> %wide.load, %31
  %38 = fadd <2 x double> %wide.load48, %32
  %39 = bitcast double* %33 to <2 x double>*
  store <2 x double> %37, <2 x double>* %39, align 8, !tbaa !2
  %40 = bitcast double* %35 to <2 x double>*
  store <2 x double> %38, <2 x double>* %40, align 8, !tbaa !2
  %index.next = add i64 %index, 4
  %41 = icmp eq i64 %index.next, 4000
  br i1 %41, label %for.inc93.i, label %vector.body, !llvm.loop !10

for.inc93.i:                                      ; preds = %vector.body
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 1
  %exitcond38.not.i = icmp eq i64 %indvars.iv.next37.i, 4000
  br i1 %exitcond38.not.i, label %for.inc96.i, label %for.cond73.preheader.i, !llvm.loop !12

for.inc96.i:                                      ; preds = %for.inc93.i
  %indvars.iv.next40.i = add nuw nsw i64 %indvars.iv39.i, 1
  %exitcond41.not.i = icmp eq i64 %indvars.iv.next40.i, 4000
  br i1 %exitcond41.not.i, label %for.cond103.preheader.i, label %for.cond69.preheader.i, !llvm.loop !13

for.cond103.preheader.i:                          ; preds = %for.inc96.i, %for.cond103.preheader.i
  %indvar42.i = phi i64 [ %indvar.next43.i.1, %for.cond103.preheader.i ], [ 0, %for.inc96.i ]
  %scevgep44.i = getelementptr [4000 x double], [4000 x double]* %arraydecay, i64 %indvar42.i, i64 0
  %scevgep4445.i = bitcast double* %scevgep44.i to i8*
  %42 = mul nuw nsw i64 %indvar42.i, 32000
  %scevgep46.i = getelementptr i8, i8* %call.i.i, i64 %42
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32000) %scevgep4445.i, i8* noundef nonnull align 8 dereferenceable(32000) %scevgep46.i, i64 32000, i1 false) #8
  %indvar.next43.i = or i64 %indvar42.i, 1
  %scevgep44.i.1 = getelementptr [4000 x double], [4000 x double]* %arraydecay, i64 %indvar.next43.i, i64 0
  %scevgep4445.i.1 = bitcast double* %scevgep44.i.1 to i8*
  %43 = mul nuw nsw i64 %indvar.next43.i, 32000
  %scevgep46.i.1 = getelementptr i8, i8* %call.i.i, i64 %43
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32000) %scevgep4445.i.1, i8* noundef nonnull align 8 dereferenceable(32000) %scevgep46.i.1, i64 32000, i1 false) #8
  %indvar.next43.i.1 = add nuw nsw i64 %indvar42.i, 2
  %exitcond49.not.i.1 = icmp eq i64 %indvar.next43.i.1, 4000
  br i1 %exitcond49.not.i.1, label %init_array.exit, label %for.cond103.preheader.i, !llvm.loop !14

init_array.exit:                                  ; preds = %for.cond103.preheader.i
  tail call void @free(i8* nonnull %call.i.i) #8
  tail call void (...) @polybench_timer_start() #8
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc58.i, %init_array.exit
  %indvars.iv37.i = phi i64 [ 0, %init_array.exit ], [ %indvars.iv.next38.i, %for.inc58.i ]
  %cmp25.not.i = icmp eq i64 %indvars.iv37.i, 0
  br i1 %cmp25.not.i, label %for.inc58.i, label %for.body3.i

for.body30.us.i:                                  ; preds = %for.body30.us.i.preheader, %for.cond35.for.end50_crit_edge.us.i
  %indvars.iv39.i32 = phi i64 [ %indvars.iv.next40.i33, %for.cond35.for.end50_crit_edge.us.i ], [ %indvars.iv37.i, %for.body30.us.i.preheader ]
  %arrayidx34.us.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv37.i, i64 %indvars.iv39.i32
  %44 = load double, double* %arrayidx34.us.i, align 8, !tbaa !2
  br i1 %60, label %for.cond35.for.end50_crit_edge.us.i.unr-lcssa, label %for.body37.us.i

for.body37.us.i:                                  ; preds = %for.body30.us.i, %for.body37.us.i
  %indvars.iv34.i = phi i64 [ %indvars.iv.next35.i.1, %for.body37.us.i ], [ 0, %for.body30.us.i ]
  %w.110.us.i = phi double [ %sub47.us.i.1, %for.body37.us.i ], [ %44, %for.body30.us.i ]
  %niter56 = phi i64 [ %niter56.nsub.1, %for.body37.us.i ], [ %unroll_iter55, %for.body30.us.i ]
  %arrayidx41.us.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv37.i, i64 %indvars.iv34.i
  %45 = load double, double* %arrayidx41.us.i, align 8, !tbaa !2
  %arrayidx45.us.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv34.i, i64 %indvars.iv39.i32
  %46 = load double, double* %arrayidx45.us.i, align 8, !tbaa !2
  %mul46.us.i = fmul double %45, %46
  %sub47.us.i = fsub double %w.110.us.i, %mul46.us.i
  %indvars.iv.next35.i = or i64 %indvars.iv34.i, 1
  %arrayidx41.us.i.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv37.i, i64 %indvars.iv.next35.i
  %47 = load double, double* %arrayidx41.us.i.1, align 8, !tbaa !2
  %arrayidx45.us.i.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv.next35.i, i64 %indvars.iv39.i32
  %48 = load double, double* %arrayidx45.us.i.1, align 8, !tbaa !2
  %mul46.us.i.1 = fmul double %47, %48
  %sub47.us.i.1 = fsub double %sub47.us.i, %mul46.us.i.1
  %indvars.iv.next35.i.1 = add nuw nsw i64 %indvars.iv34.i, 2
  %niter56.nsub.1 = add i64 %niter56, -2
  %niter56.ncmp.1 = icmp eq i64 %niter56.nsub.1, 0
  br i1 %niter56.ncmp.1, label %for.cond35.for.end50_crit_edge.us.i.unr-lcssa, label %for.body37.us.i, !llvm.loop !15

for.cond35.for.end50_crit_edge.us.i.unr-lcssa:    ; preds = %for.body37.us.i, %for.body30.us.i
  %sub47.us.i.lcssa.ph = phi double [ undef, %for.body30.us.i ], [ %sub47.us.i.1, %for.body37.us.i ]
  %indvars.iv34.i.unr = phi i64 [ 0, %for.body30.us.i ], [ %indvars.iv.next35.i.1, %for.body37.us.i ]
  %w.110.us.i.unr = phi double [ %44, %for.body30.us.i ], [ %sub47.us.i.1, %for.body37.us.i ]
  br i1 %lcmp.mod54.not, label %for.cond35.for.end50_crit_edge.us.i, label %for.cond35.for.end50_crit_edge.us.i.epilog-lcssa

for.cond35.for.end50_crit_edge.us.i.epilog-lcssa: ; preds = %for.cond35.for.end50_crit_edge.us.i.unr-lcssa
  %arrayidx41.us.i.epil = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv37.i, i64 %indvars.iv34.i.unr
  %49 = load double, double* %arrayidx41.us.i.epil, align 8, !tbaa !2
  %arrayidx45.us.i.epil = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv34.i.unr, i64 %indvars.iv39.i32
  %50 = load double, double* %arrayidx45.us.i.epil, align 8, !tbaa !2
  %mul46.us.i.epil = fmul double %49, %50
  %sub47.us.i.epil = fsub double %w.110.us.i.unr, %mul46.us.i.epil
  br label %for.cond35.for.end50_crit_edge.us.i

for.cond35.for.end50_crit_edge.us.i:              ; preds = %for.cond35.for.end50_crit_edge.us.i.unr-lcssa, %for.cond35.for.end50_crit_edge.us.i.epilog-lcssa
  %sub47.us.i.lcssa = phi double [ %sub47.us.i.lcssa.ph, %for.cond35.for.end50_crit_edge.us.i.unr-lcssa ], [ %sub47.us.i.epil, %for.cond35.for.end50_crit_edge.us.i.epilog-lcssa ]
  store double %sub47.us.i.lcssa, double* %arrayidx34.us.i, align 8, !tbaa !2
  %indvars.iv.next40.i33 = add nuw nsw i64 %indvars.iv39.i32, 1
  %exitcond41.not.i34 = icmp eq i64 %indvars.iv.next40.i33, 4000
  br i1 %exitcond41.not.i34, label %for.inc58.i, label %for.body30.us.i, !llvm.loop !16

for.body3.i:                                      ; preds = %for.cond1.preheader.i, %for.end.i
  %indvars.iv30.i = phi i64 [ %indvars.iv.next31.i, %for.end.i ], [ 0, %for.cond1.preheader.i ]
  %arrayidx5.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv37.i, i64 %indvars.iv30.i
  %51 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %cmp72.not.i = icmp eq i64 %indvars.iv30.i, 0
  br i1 %cmp72.not.i, label %for.end.i, label %for.body8.i.preheader

for.body8.i.preheader:                            ; preds = %for.body3.i
  %xtraiter49 = and i64 %indvars.iv30.i, 1
  %52 = icmp eq i64 %indvars.iv30.i, 1
  br i1 %52, label %for.end.i.loopexit.unr-lcssa, label %for.body8.i.preheader.new

for.body8.i.preheader.new:                        ; preds = %for.body8.i.preheader
  %unroll_iter51 = and i64 %indvars.iv30.i, 9223372036854775806
  br label %for.body8.i

for.body8.i:                                      ; preds = %for.body8.i, %for.body8.i.preheader.new
  %indvars.iv.i35 = phi i64 [ 0, %for.body8.i.preheader.new ], [ %indvars.iv.next.i37.1, %for.body8.i ]
  %w.04.i = phi double [ %51, %for.body8.i.preheader.new ], [ %sub.i.1, %for.body8.i ]
  %niter52 = phi i64 [ %unroll_iter51, %for.body8.i.preheader.new ], [ %niter52.nsub.1, %for.body8.i ]
  %arrayidx12.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv37.i, i64 %indvars.iv.i35
  %53 = load double, double* %arrayidx12.i, align 8, !tbaa !2
  %arrayidx16.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv.i35, i64 %indvars.iv30.i
  %54 = load double, double* %arrayidx16.i, align 8, !tbaa !2
  %mul.i36 = fmul double %53, %54
  %sub.i = fsub double %w.04.i, %mul.i36
  %indvars.iv.next.i37 = or i64 %indvars.iv.i35, 1
  %arrayidx12.i.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv37.i, i64 %indvars.iv.next.i37
  %55 = load double, double* %arrayidx12.i.1, align 8, !tbaa !2
  %arrayidx16.i.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv.next.i37, i64 %indvars.iv30.i
  %56 = load double, double* %arrayidx16.i.1, align 8, !tbaa !2
  %mul.i36.1 = fmul double %55, %56
  %sub.i.1 = fsub double %sub.i, %mul.i36.1
  %indvars.iv.next.i37.1 = add nuw nsw i64 %indvars.iv.i35, 2
  %niter52.nsub.1 = add i64 %niter52, -2
  %niter52.ncmp.1 = icmp eq i64 %niter52.nsub.1, 0
  br i1 %niter52.ncmp.1, label %for.end.i.loopexit.unr-lcssa, label %for.body8.i, !llvm.loop !17

for.end.i.loopexit.unr-lcssa:                     ; preds = %for.body8.i, %for.body8.i.preheader
  %sub.i.lcssa.ph = phi double [ undef, %for.body8.i.preheader ], [ %sub.i.1, %for.body8.i ]
  %indvars.iv.i35.unr = phi i64 [ 0, %for.body8.i.preheader ], [ %indvars.iv.next.i37.1, %for.body8.i ]
  %w.04.i.unr = phi double [ %51, %for.body8.i.preheader ], [ %sub.i.1, %for.body8.i ]
  %lcmp.mod50.not = icmp eq i64 %xtraiter49, 0
  br i1 %lcmp.mod50.not, label %for.end.i, label %for.end.i.loopexit.epilog-lcssa

for.end.i.loopexit.epilog-lcssa:                  ; preds = %for.end.i.loopexit.unr-lcssa
  %arrayidx12.i.epil = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv37.i, i64 %indvars.iv.i35.unr
  %57 = load double, double* %arrayidx12.i.epil, align 8, !tbaa !2
  %arrayidx16.i.epil = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv.i35.unr, i64 %indvars.iv30.i
  %58 = load double, double* %arrayidx16.i.epil, align 8, !tbaa !2
  %mul.i36.epil = fmul double %57, %58
  %sub.i.epil = fsub double %w.04.i.unr, %mul.i36.epil
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.i.loopexit.epilog-lcssa, %for.end.i.loopexit.unr-lcssa, %for.body3.i
  %w.0.lcssa.i = phi double [ %51, %for.body3.i ], [ %sub.i.lcssa.ph, %for.end.i.loopexit.unr-lcssa ], [ %sub.i.epil, %for.end.i.loopexit.epilog-lcssa ]
  %arrayidx20.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv30.i, i64 %indvars.iv30.i
  %59 = load double, double* %arrayidx20.i, align 8, !tbaa !2
  %div.i39 = fdiv double %w.0.lcssa.i, %59
  store double %div.i39, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next31.i = add nuw nsw i64 %indvars.iv30.i, 1
  %exitcond33.not.i = icmp eq i64 %indvars.iv.next31.i, %indvars.iv37.i
  br i1 %exitcond33.not.i, label %for.body30.us.i.preheader, label %for.body3.i, !llvm.loop !18

for.body30.us.i.preheader:                        ; preds = %for.end.i
  %xtraiter53 = and i64 %indvars.iv37.i, 1
  %60 = icmp eq i64 %indvars.iv37.i, 1
  %unroll_iter55 = and i64 %indvars.iv37.i, 9223372036854775806
  %lcmp.mod54.not = icmp eq i64 %xtraiter53, 0
  br label %for.body30.us.i

for.inc58.i:                                      ; preds = %for.cond35.for.end50_crit_edge.us.i, %for.cond1.preheader.i
  %indvars.iv.next38.i = add nuw nsw i64 %indvars.iv37.i, 1
  %exitcond42.not.i = icmp eq i64 %indvars.iv.next38.i, 4000
  br i1 %exitcond42.not.i, label %for.body63.i.preheader, label %for.cond1.preheader.i, !llvm.loop !19

for.body63.i.preheader:                           ; preds = %for.inc58.i
  %arraydecay6 = bitcast i8* %call.i31 to double*
  br label %for.body63.i

for.body63.i:                                     ; preds = %for.body63.i.preheader, %for.end79.i
  %indvars.iv46.i = phi i64 [ %indvars.iv.next47.i, %for.end79.i ], [ 0, %for.body63.i.preheader ]
  %arrayidx65.i = getelementptr inbounds double, double* %arraydecay4, i64 %indvars.iv46.i
  %61 = load double, double* %arrayidx65.i, align 8, !tbaa !2
  %cmp6717.not.i = icmp eq i64 %indvars.iv46.i, 0
  br i1 %cmp6717.not.i, label %for.end79.i, label %for.body68.i.preheader

for.body68.i.preheader:                           ; preds = %for.body63.i
  %62 = add nsw i64 %indvars.iv46.i, -1
  %xtraiter57 = and i64 %indvars.iv46.i, 3
  %63 = icmp ult i64 %62, 3
  br i1 %63, label %for.end79.i.loopexit.unr-lcssa, label %for.body68.i.preheader.new

for.body68.i.preheader.new:                       ; preds = %for.body68.i.preheader
  %unroll_iter60 = and i64 %indvars.iv46.i, 9223372036854775804
  br label %for.body68.i

for.body68.i:                                     ; preds = %for.body68.i, %for.body68.i.preheader.new
  %indvars.iv43.i = phi i64 [ 0, %for.body68.i.preheader.new ], [ %indvars.iv.next44.i.3, %for.body68.i ]
  %w.219.i = phi double [ %61, %for.body68.i.preheader.new ], [ %sub76.i.3, %for.body68.i ]
  %niter61 = phi i64 [ %unroll_iter60, %for.body68.i.preheader.new ], [ %niter61.nsub.3, %for.body68.i ]
  %arrayidx72.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv46.i, i64 %indvars.iv43.i
  %64 = load double, double* %arrayidx72.i, align 8, !tbaa !2
  %arrayidx74.i = getelementptr inbounds double, double* %arraydecay6, i64 %indvars.iv43.i
  %65 = load double, double* %arrayidx74.i, align 8, !tbaa !2
  %mul75.i = fmul double %64, %65
  %sub76.i = fsub double %w.219.i, %mul75.i
  %indvars.iv.next44.i = or i64 %indvars.iv43.i, 1
  %arrayidx72.i.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv46.i, i64 %indvars.iv.next44.i
  %66 = load double, double* %arrayidx72.i.1, align 8, !tbaa !2
  %arrayidx74.i.1 = getelementptr inbounds double, double* %arraydecay6, i64 %indvars.iv.next44.i
  %67 = load double, double* %arrayidx74.i.1, align 8, !tbaa !2
  %mul75.i.1 = fmul double %66, %67
  %sub76.i.1 = fsub double %sub76.i, %mul75.i.1
  %indvars.iv.next44.i.1 = or i64 %indvars.iv43.i, 2
  %arrayidx72.i.2 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv46.i, i64 %indvars.iv.next44.i.1
  %68 = load double, double* %arrayidx72.i.2, align 8, !tbaa !2
  %arrayidx74.i.2 = getelementptr inbounds double, double* %arraydecay6, i64 %indvars.iv.next44.i.1
  %69 = load double, double* %arrayidx74.i.2, align 8, !tbaa !2
  %mul75.i.2 = fmul double %68, %69
  %sub76.i.2 = fsub double %sub76.i.1, %mul75.i.2
  %indvars.iv.next44.i.2 = or i64 %indvars.iv43.i, 3
  %arrayidx72.i.3 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv46.i, i64 %indvars.iv.next44.i.2
  %70 = load double, double* %arrayidx72.i.3, align 8, !tbaa !2
  %arrayidx74.i.3 = getelementptr inbounds double, double* %arraydecay6, i64 %indvars.iv.next44.i.2
  %71 = load double, double* %arrayidx74.i.3, align 8, !tbaa !2
  %mul75.i.3 = fmul double %70, %71
  %sub76.i.3 = fsub double %sub76.i.2, %mul75.i.3
  %indvars.iv.next44.i.3 = add nuw nsw i64 %indvars.iv43.i, 4
  %niter61.nsub.3 = add i64 %niter61, -4
  %niter61.ncmp.3 = icmp eq i64 %niter61.nsub.3, 0
  br i1 %niter61.ncmp.3, label %for.end79.i.loopexit.unr-lcssa, label %for.body68.i, !llvm.loop !20

for.end79.i.loopexit.unr-lcssa:                   ; preds = %for.body68.i, %for.body68.i.preheader
  %sub76.i.lcssa.ph = phi double [ undef, %for.body68.i.preheader ], [ %sub76.i.3, %for.body68.i ]
  %indvars.iv43.i.unr = phi i64 [ 0, %for.body68.i.preheader ], [ %indvars.iv.next44.i.3, %for.body68.i ]
  %w.219.i.unr = phi double [ %61, %for.body68.i.preheader ], [ %sub76.i.3, %for.body68.i ]
  %lcmp.mod58.not = icmp eq i64 %xtraiter57, 0
  br i1 %lcmp.mod58.not, label %for.end79.i, label %for.body68.i.epil

for.body68.i.epil:                                ; preds = %for.end79.i.loopexit.unr-lcssa, %for.body68.i.epil
  %indvars.iv43.i.epil = phi i64 [ %indvars.iv.next44.i.epil, %for.body68.i.epil ], [ %indvars.iv43.i.unr, %for.end79.i.loopexit.unr-lcssa ]
  %w.219.i.epil = phi double [ %sub76.i.epil, %for.body68.i.epil ], [ %w.219.i.unr, %for.end79.i.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.sub, %for.body68.i.epil ], [ %xtraiter57, %for.end79.i.loopexit.unr-lcssa ]
  %arrayidx72.i.epil = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv46.i, i64 %indvars.iv43.i.epil
  %72 = load double, double* %arrayidx72.i.epil, align 8, !tbaa !2
  %arrayidx74.i.epil = getelementptr inbounds double, double* %arraydecay6, i64 %indvars.iv43.i.epil
  %73 = load double, double* %arrayidx74.i.epil, align 8, !tbaa !2
  %mul75.i.epil = fmul double %72, %73
  %sub76.i.epil = fsub double %w.219.i.epil, %mul75.i.epil
  %indvars.iv.next44.i.epil = add nuw nsw i64 %indvars.iv43.i.epil, 1
  %epil.iter.sub = add i64 %epil.iter, -1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.sub, 0
  br i1 %epil.iter.cmp.not, label %for.end79.i, label %for.body68.i.epil, !llvm.loop !21

for.end79.i:                                      ; preds = %for.end79.i.loopexit.unr-lcssa, %for.body68.i.epil, %for.body63.i
  %w.2.lcssa.i = phi double [ %61, %for.body63.i ], [ %sub76.i.lcssa.ph, %for.end79.i.loopexit.unr-lcssa ], [ %sub76.i.epil, %for.body68.i.epil ]
  %arrayidx81.i = getelementptr inbounds double, double* %arraydecay6, i64 %indvars.iv46.i
  store double %w.2.lcssa.i, double* %arrayidx81.i, align 8, !tbaa !2
  %indvars.iv.next47.i = add nuw nsw i64 %indvars.iv46.i, 1
  %exitcond48.not.i = icmp eq i64 %indvars.iv.next47.i, 4000
  br i1 %exitcond48.not.i, label %for.body88.i, label %for.body63.i, !llvm.loop !23

for.body88.i:                                     ; preds = %for.end79.i, %for.end104.i
  %indvar = phi i64 [ %indvar.next, %for.end104.i ], [ 0, %for.end79.i ]
  %indvars.iv49.i = phi i64 [ %indvars.iv.next50.i, %for.end104.i ], [ 3999, %for.end79.i ]
  %74 = add i64 %indvar, -1
  %arrayidx90.i = getelementptr inbounds double, double* %arraydecay6, i64 %indvars.iv49.i
  %75 = load double, double* %arrayidx90.i, align 8, !tbaa !2
  %cmp9224.i = icmp ult i64 %indvars.iv49.i, 3999
  br i1 %cmp9224.i, label %for.body93.i.preheader, label %for.end104.i

for.body93.i.preheader:                           ; preds = %for.body88.i
  %xtraiter62 = and i64 %indvar, 3
  %lcmp.mod63.not = icmp eq i64 %xtraiter62, 0
  br i1 %lcmp.mod63.not, label %for.body93.i.prol.loopexit, label %for.body93.i.prol

for.body93.i.prol:                                ; preds = %for.body93.i.preheader, %for.body93.i.prol
  %indvars.iv51.i.prol = phi i64 [ %indvars.iv.next52.i.prol, %for.body93.i.prol ], [ %indvars.iv49.i, %for.body93.i.preheader ]
  %w.325.i.prol = phi double [ %sub101.i.prol, %for.body93.i.prol ], [ %75, %for.body93.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.sub, %for.body93.i.prol ], [ %xtraiter62, %for.body93.i.preheader ]
  %indvars.iv.next52.i.prol = add nuw nsw i64 %indvars.iv51.i.prol, 1
  %arrayidx97.i.prol = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv49.i, i64 %indvars.iv.next52.i.prol
  %76 = load double, double* %arrayidx97.i.prol, align 8, !tbaa !2
  %arrayidx99.i.prol = getelementptr inbounds double, double* %arraydecay5, i64 %indvars.iv.next52.i.prol
  %77 = load double, double* %arrayidx99.i.prol, align 8, !tbaa !2
  %mul100.i.prol = fmul double %76, %77
  %sub101.i.prol = fsub double %w.325.i.prol, %mul100.i.prol
  %prol.iter.sub = add i64 %prol.iter, -1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp.not, label %for.body93.i.prol.loopexit, label %for.body93.i.prol, !llvm.loop !24

for.body93.i.prol.loopexit:                       ; preds = %for.body93.i.prol, %for.body93.i.preheader
  %sub101.i.lcssa.unr = phi double [ undef, %for.body93.i.preheader ], [ %sub101.i.prol, %for.body93.i.prol ]
  %indvars.iv51.i.unr = phi i64 [ %indvars.iv49.i, %for.body93.i.preheader ], [ %indvars.iv.next52.i.prol, %for.body93.i.prol ]
  %w.325.i.unr = phi double [ %75, %for.body93.i.preheader ], [ %sub101.i.prol, %for.body93.i.prol ]
  %78 = icmp ult i64 %74, 3
  br i1 %78, label %for.end104.i, label %for.body93.i

for.body93.i:                                     ; preds = %for.body93.i.prol.loopexit, %for.body93.i
  %indvars.iv51.i = phi i64 [ %indvars.iv.next52.i.3, %for.body93.i ], [ %indvars.iv51.i.unr, %for.body93.i.prol.loopexit ]
  %w.325.i = phi double [ %sub101.i.3, %for.body93.i ], [ %w.325.i.unr, %for.body93.i.prol.loopexit ]
  %indvars.iv.next52.i = add nuw nsw i64 %indvars.iv51.i, 1
  %arrayidx97.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv49.i, i64 %indvars.iv.next52.i
  %79 = load double, double* %arrayidx97.i, align 8, !tbaa !2
  %arrayidx99.i = getelementptr inbounds double, double* %arraydecay5, i64 %indvars.iv.next52.i
  %80 = load double, double* %arrayidx99.i, align 8, !tbaa !2
  %mul100.i = fmul double %79, %80
  %sub101.i = fsub double %w.325.i, %mul100.i
  %indvars.iv.next52.i.1 = add nuw nsw i64 %indvars.iv51.i, 2
  %arrayidx97.i.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv49.i, i64 %indvars.iv.next52.i.1
  %81 = load double, double* %arrayidx97.i.1, align 8, !tbaa !2
  %arrayidx99.i.1 = getelementptr inbounds double, double* %arraydecay5, i64 %indvars.iv.next52.i.1
  %82 = load double, double* %arrayidx99.i.1, align 8, !tbaa !2
  %mul100.i.1 = fmul double %81, %82
  %sub101.i.1 = fsub double %sub101.i, %mul100.i.1
  %indvars.iv.next52.i.2 = add nuw nsw i64 %indvars.iv51.i, 3
  %arrayidx97.i.2 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv49.i, i64 %indvars.iv.next52.i.2
  %83 = load double, double* %arrayidx97.i.2, align 8, !tbaa !2
  %arrayidx99.i.2 = getelementptr inbounds double, double* %arraydecay5, i64 %indvars.iv.next52.i.2
  %84 = load double, double* %arrayidx99.i.2, align 8, !tbaa !2
  %mul100.i.2 = fmul double %83, %84
  %sub101.i.2 = fsub double %sub101.i.1, %mul100.i.2
  %indvars.iv.next52.i.3 = add nuw nsw i64 %indvars.iv51.i, 4
  %arrayidx97.i.3 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv49.i, i64 %indvars.iv.next52.i.3
  %85 = load double, double* %arrayidx97.i.3, align 8, !tbaa !2
  %arrayidx99.i.3 = getelementptr inbounds double, double* %arraydecay5, i64 %indvars.iv.next52.i.3
  %86 = load double, double* %arrayidx99.i.3, align 8, !tbaa !2
  %mul100.i.3 = fmul double %85, %86
  %sub101.i.3 = fsub double %sub101.i.2, %mul100.i.3
  %exitcond53.not.i.3 = icmp eq i64 %indvars.iv.next52.i.3, 3999
  br i1 %exitcond53.not.i.3, label %for.end104.i, label %for.body93.i, !llvm.loop !25

for.end104.i:                                     ; preds = %for.body93.i.prol.loopexit, %for.body93.i, %for.body88.i
  %w.3.lcssa.i = phi double [ %75, %for.body88.i ], [ %sub101.i.lcssa.unr, %for.body93.i.prol.loopexit ], [ %sub101.i.3, %for.body93.i ]
  %arrayidx108.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv49.i, i64 %indvars.iv49.i
  %87 = load double, double* %arrayidx108.i, align 8, !tbaa !2
  %div109.i = fdiv double %w.3.lcssa.i, %87
  %arrayidx111.i = getelementptr inbounds double, double* %arraydecay5, i64 %indvars.iv49.i
  store double %div109.i, double* %arrayidx111.i, align 8, !tbaa !2
  %indvars.iv.next50.i = add nsw i64 %indvars.iv49.i, -1
  %cmp87.not.i = icmp eq i64 %indvars.iv49.i, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %cmp87.not.i, label %kernel_ludcmp.exit, label %for.body88.i, !llvm.loop !26

kernel_ludcmp.exit:                               ; preds = %for.end104.i
  tail call void (...) @polybench_timer_stop() #8
  tail call void (...) @polybench_timer_print() #8
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_ludcmp.exit
  %88 = load i8*, i8** %argv, align 8, !tbaa !27
  %strcmpload = load i8, i8* %88, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !27
  %90 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %89) #9
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !27
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %91, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #9
  br label %for.body.i41

for.body.i41:                                     ; preds = %if.end.i, %if.then
  %indvars.iv.i40 = phi i64 [ 0, %if.then ], [ %indvars.iv.next.i43, %if.end.i ]
  %i.02.i = phi i32 [ 0, %if.then ], [ %inc.i, %if.end.i ]
  %rem.lhs.trunc.i = trunc i32 %i.02.i to i16
  %rem1.i = urem i16 %rem.lhs.trunc.i, 20
  %cmp2.i = icmp eq i16 %rem1.i, 0
  br i1 %cmp2.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i41
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !27
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %92) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i41
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !27
  %arrayidx.i42 = getelementptr inbounds double, double* %arraydecay5, i64 %indvars.iv.i40
  %94 = load double, double* %arrayidx.i42, align 8, !tbaa !2
  %call4.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %93, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %94) #9
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i40, 1
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 4000
  br i1 %exitcond.not.i44, label %print_array.exit, label %for.body.i41, !llvm.loop !29

print_array.exit:                                 ; preds = %if.end.i
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !27
  %call5.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %95, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #9
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !27
  %97 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %96) #9
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_ludcmp.exit
  tail call void @free(i8* %call.i) #8
  tail call void @free(i8* %call.i29) #8
  tail call void @free(i8* nonnull %call.i30) #8
  tail call void @free(i8* %call.i31) #8
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

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

attributes #0 = { nounwind uwtable "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inaccessiblemem_or_argmemonly nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inaccessiblememonly nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #7 = { argmemonly nofree nosync nounwind willreturn }
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
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7, !11}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.unroll.disable"}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !22}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = !{!28, !28, i64 0}
!28 = !{!"any pointer", !4, i64 0}
!29 = distinct !{!29, !7}

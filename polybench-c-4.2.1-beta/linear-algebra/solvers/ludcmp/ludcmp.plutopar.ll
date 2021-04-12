; ModuleID = 'ludcmp.plutopar.c'
source_filename = "ludcmp.plutopar.c"
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
  %broadcast.splatinsert44 = insertelement <2 x double> poison, double %15, i32 0
  %broadcast.splat45 = shufflevector <2 x double> %broadcast.splatinsert44, <2 x double> poison, <2 x i32> zeroinitializer
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
  %32 = fmul <2 x double> %broadcast.splat45, %30
  %33 = getelementptr inbounds [4000 x [4000 x double]], [4000 x [4000 x double]]* %14, i64 0, i64 %indvars.iv36.i, i64 %index
  %34 = bitcast double* %33 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %34, align 8, !tbaa !2
  %35 = getelementptr inbounds double, double* %33, i64 2
  %36 = bitcast double* %35 to <2 x double>*
  %wide.load46 = load <2 x double>, <2 x double>* %36, align 8, !tbaa !2
  %37 = fadd <2 x double> %wide.load, %31
  %38 = fadd <2 x double> %wide.load46, %32
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
  %arrayidx9.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 1, i64 0
  %44 = load double, double* %arrayidx9.i, align 8, !tbaa !2
  %arrayidx11.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 0, i64 0
  %45 = load double, double* %arrayidx11.i, align 8, !tbaa !2
  %div.i32 = fdiv double %44, %45
  store double %div.i32, double* %arrayidx9.i, align 8, !tbaa !2
  %broadcast.splatinsert57 = insertelement <2 x double> poison, double %div.i32, i32 0
  %broadcast.splat58 = shufflevector <2 x double> %broadcast.splatinsert57, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body49

vector.body49:                                    ; preds = %vector.body49.1, %init_array.exit
  %index51 = phi i64 [ 0, %init_array.exit ], [ %index.next52.1, %vector.body49.1 ]
  %offset.idx = or i64 %index51, 1
  %46 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 1, i64 %offset.idx
  %47 = bitcast double* %46 to <2 x double>*
  %wide.load55 = load <2 x double>, <2 x double>* %47, align 8, !tbaa !2
  %48 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 0, i64 %offset.idx
  %49 = bitcast double* %48 to <2 x double>*
  %wide.load56 = load <2 x double>, <2 x double>* %49, align 8, !tbaa !2
  %50 = fmul <2 x double> %broadcast.splat58, %wide.load56
  %51 = fsub <2 x double> %wide.load55, %50
  %52 = bitcast double* %46 to <2 x double>*
  store <2 x double> %51, <2 x double>* %52, align 8, !tbaa !2
  %53 = icmp eq i64 %index51, 3996
  br i1 %53, label %for.body17.i, label %vector.body49.1, !llvm.loop !15

for.body17.i:                                     ; preds = %vector.body49
  %arrayidx20.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 1, i64 3999
  %54 = load double, double* %arrayidx20.i, align 8, !tbaa !2
  %arrayidx25.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 0, i64 3999
  %55 = load double, double* %arrayidx25.i, align 8, !tbaa !2
  %mul.i34 = fmul double %div.i32, %55
  %sub26.i = fsub double %54, %mul.i34
  store double %sub26.i, double* %arrayidx20.i, align 8, !tbaa !2
  br label %for.body36.i

for.body36.i:                                     ; preds = %for.body17.i, %for.inc115.for.body36_crit_edge.i
  %indvar63 = phi i64 [ 0, %for.body17.i ], [ %indvar.next64, %for.inc115.for.body36_crit_edge.i ]
  %56 = phi double [ %45, %for.body17.i ], [ %.pre.i, %for.inc115.for.body36_crit_edge.i ]
  %indvars.iv28.i = phi i64 [ 2, %for.body17.i ], [ %indvars.iv.next29.i, %for.inc115.for.body36_crit_edge.i ]
  %57 = add i64 %indvar63, 2
  %arrayidx39.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv28.i, i64 0
  %58 = load double, double* %arrayidx39.i, align 8, !tbaa !2
  %div42.i = fdiv double %58, %56
  store double %div42.i, double* %arrayidx39.i, align 8, !tbaa !2
  br label %for.body49.i

for.body49.i:                                     ; preds = %for.end70.i, %for.body36.i
  %indvar = phi i64 [ %indvar.next, %for.end70.i ], [ 0, %for.body36.i ]
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %for.end70.i ], [ 1, %for.body36.i ]
  %59 = add i64 %indvar, 1
  %arrayidx53.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv28.i, i64 %indvars.iv21.i
  %60 = load double, double* %arrayidx53.i, align 8, !tbaa !2
  %xtraiter59 = and i64 %59, 1
  %61 = icmp eq i64 %indvar, 0
  br i1 %61, label %for.end70.i.unr-lcssa, label %for.body49.i.new

for.body49.i.new:                                 ; preds = %for.body49.i
  %unroll_iter61 = and i64 %59, -2
  br label %for.body57.i

for.body57.i:                                     ; preds = %for.body57.i, %for.body49.i.new
  %indvars.iv18.i = phi i64 [ 0, %for.body49.i.new ], [ %indvars.iv.next19.i.1, %for.body57.i ]
  %w.03.i = phi double [ %60, %for.body49.i.new ], [ %sub67.i.1, %for.body57.i ]
  %niter62 = phi i64 [ %unroll_iter61, %for.body49.i.new ], [ %niter62.nsub.1, %for.body57.i ]
  %arrayidx61.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv28.i, i64 %indvars.iv18.i
  %62 = load double, double* %arrayidx61.i, align 8, !tbaa !2
  %arrayidx65.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv18.i, i64 %indvars.iv21.i
  %63 = load double, double* %arrayidx65.i, align 8, !tbaa !2
  %mul66.i = fmul double %62, %63
  %sub67.i = fsub double %w.03.i, %mul66.i
  %indvars.iv.next19.i = or i64 %indvars.iv18.i, 1
  %arrayidx61.i.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv28.i, i64 %indvars.iv.next19.i
  %64 = load double, double* %arrayidx61.i.1, align 8, !tbaa !2
  %arrayidx65.i.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv.next19.i, i64 %indvars.iv21.i
  %65 = load double, double* %arrayidx65.i.1, align 8, !tbaa !2
  %mul66.i.1 = fmul double %64, %65
  %sub67.i.1 = fsub double %sub67.i, %mul66.i.1
  %indvars.iv.next19.i.1 = add nuw nsw i64 %indvars.iv18.i, 2
  %niter62.nsub.1 = add i64 %niter62, -2
  %niter62.ncmp.1 = icmp eq i64 %niter62.nsub.1, 0
  br i1 %niter62.ncmp.1, label %for.end70.i.unr-lcssa, label %for.body57.i, !llvm.loop !16

for.end70.i.unr-lcssa:                            ; preds = %for.body57.i, %for.body49.i
  %sub67.i.lcssa.ph = phi double [ undef, %for.body49.i ], [ %sub67.i.1, %for.body57.i ]
  %indvars.iv18.i.unr = phi i64 [ 0, %for.body49.i ], [ %indvars.iv.next19.i.1, %for.body57.i ]
  %w.03.i.unr = phi double [ %60, %for.body49.i ], [ %sub67.i.1, %for.body57.i ]
  %lcmp.mod60.not = icmp eq i64 %xtraiter59, 0
  br i1 %lcmp.mod60.not, label %for.end70.i, label %for.end70.i.epilog-lcssa

for.end70.i.epilog-lcssa:                         ; preds = %for.end70.i.unr-lcssa
  %arrayidx61.i.epil = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv28.i, i64 %indvars.iv18.i.unr
  %66 = load double, double* %arrayidx61.i.epil, align 8, !tbaa !2
  %arrayidx65.i.epil = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv18.i.unr, i64 %indvars.iv21.i
  %67 = load double, double* %arrayidx65.i.epil, align 8, !tbaa !2
  %mul66.i.epil = fmul double %66, %67
  %sub67.i.epil = fsub double %w.03.i.unr, %mul66.i.epil
  br label %for.end70.i

for.end70.i:                                      ; preds = %for.end70.i.unr-lcssa, %for.end70.i.epilog-lcssa
  %sub67.i.lcssa = phi double [ %sub67.i.lcssa.ph, %for.end70.i.unr-lcssa ], [ %sub67.i.epil, %for.end70.i.epilog-lcssa ]
  %arrayidx74.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv21.i, i64 %indvars.iv21.i
  %68 = load double, double* %arrayidx74.i, align 8, !tbaa !2
  %div75.i = fdiv double %sub67.i.lcssa, %68
  store double %div75.i, double* %arrayidx53.i, align 8, !tbaa !2
  %indvars.iv.next22.i = add nuw nsw i64 %indvars.iv21.i, 1
  %exitcond24.not.i = icmp eq i64 %indvars.iv.next22.i, %indvars.iv28.i
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond24.not.i, label %for.body86.i.preheader, label %for.body49.i, !llvm.loop !17

for.body86.i.preheader:                           ; preds = %for.end70.i
  %xtraiter65 = and i64 %indvar63, 1
  %69 = icmp eq i64 %indvar63, -1
  %unroll_iter67 = and i64 %57, -2
  %lcmp.mod66.not = icmp eq i64 %xtraiter65, 0
  br label %for.body86.i

for.body86.i:                                     ; preds = %for.body86.i.preheader, %for.end107.i
  %indvars.iv30.i = phi i64 [ %indvars.iv.next31.i, %for.end107.i ], [ %indvars.iv28.i, %for.body86.i.preheader ]
  %arrayidx90.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv28.i, i64 %indvars.iv30.i
  %70 = load double, double* %arrayidx90.i, align 8, !tbaa !2
  br i1 %69, label %for.end107.i.unr-lcssa, label %for.body94.i

for.body94.i:                                     ; preds = %for.body86.i, %for.body94.i
  %indvars.iv25.i = phi i64 [ %indvars.iv.next26.i.1, %for.body94.i ], [ 0, %for.body86.i ]
  %w.16.i = phi double [ %sub104.i.1, %for.body94.i ], [ %70, %for.body86.i ]
  %niter68 = phi i64 [ %niter68.nsub.1, %for.body94.i ], [ %unroll_iter67, %for.body86.i ]
  %arrayidx98.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv28.i, i64 %indvars.iv25.i
  %71 = load double, double* %arrayidx98.i, align 8, !tbaa !2
  %arrayidx102.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv25.i, i64 %indvars.iv30.i
  %72 = load double, double* %arrayidx102.i, align 8, !tbaa !2
  %mul103.i = fmul double %71, %72
  %sub104.i = fsub double %w.16.i, %mul103.i
  %indvars.iv.next26.i = or i64 %indvars.iv25.i, 1
  %arrayidx98.i.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv28.i, i64 %indvars.iv.next26.i
  %73 = load double, double* %arrayidx98.i.1, align 8, !tbaa !2
  %arrayidx102.i.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv.next26.i, i64 %indvars.iv30.i
  %74 = load double, double* %arrayidx102.i.1, align 8, !tbaa !2
  %mul103.i.1 = fmul double %73, %74
  %sub104.i.1 = fsub double %sub104.i, %mul103.i.1
  %indvars.iv.next26.i.1 = add nuw nsw i64 %indvars.iv25.i, 2
  %niter68.nsub.1 = add i64 %niter68, -2
  %niter68.ncmp.1 = icmp eq i64 %niter68.nsub.1, 0
  br i1 %niter68.ncmp.1, label %for.end107.i.unr-lcssa, label %for.body94.i, !llvm.loop !18

for.end107.i.unr-lcssa:                           ; preds = %for.body94.i, %for.body86.i
  %sub104.i.lcssa.ph = phi double [ undef, %for.body86.i ], [ %sub104.i.1, %for.body94.i ]
  %indvars.iv25.i.unr = phi i64 [ 0, %for.body86.i ], [ %indvars.iv.next26.i.1, %for.body94.i ]
  %w.16.i.unr = phi double [ %70, %for.body86.i ], [ %sub104.i.1, %for.body94.i ]
  br i1 %lcmp.mod66.not, label %for.end107.i, label %for.end107.i.epilog-lcssa

for.end107.i.epilog-lcssa:                        ; preds = %for.end107.i.unr-lcssa
  %arrayidx98.i.epil = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv28.i, i64 %indvars.iv25.i.unr
  %75 = load double, double* %arrayidx98.i.epil, align 8, !tbaa !2
  %arrayidx102.i.epil = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv25.i.unr, i64 %indvars.iv30.i
  %76 = load double, double* %arrayidx102.i.epil, align 8, !tbaa !2
  %mul103.i.epil = fmul double %75, %76
  %sub104.i.epil = fsub double %w.16.i.unr, %mul103.i.epil
  br label %for.end107.i

for.end107.i:                                     ; preds = %for.end107.i.unr-lcssa, %for.end107.i.epilog-lcssa
  %sub104.i.lcssa = phi double [ %sub104.i.lcssa.ph, %for.end107.i.unr-lcssa ], [ %sub104.i.epil, %for.end107.i.epilog-lcssa ]
  store double %sub104.i.lcssa, double* %arrayidx90.i, align 8, !tbaa !2
  %indvars.iv.next31.i = add nuw nsw i64 %indvars.iv30.i, 1
  %exitcond32.not.i = icmp eq i64 %indvars.iv.next31.i, 4000
  br i1 %exitcond32.not.i, label %for.inc115.i, label %for.body86.i, !llvm.loop !19

for.inc115.i:                                     ; preds = %for.end107.i
  %indvars.iv.next29.i = add nuw nsw i64 %indvars.iv28.i, 1
  %exitcond33.not.i = icmp eq i64 %indvars.iv.next29.i, 4000
  br i1 %exitcond33.not.i, label %for.end117.i, label %for.inc115.for.body36_crit_edge.i, !llvm.loop !20

for.inc115.for.body36_crit_edge.i:                ; preds = %for.inc115.i
  %.pre.i = load double, double* %arrayidx11.i, align 8, !tbaa !2
  %indvar.next64 = add i64 %indvar63, 1
  br label %for.body36.i

for.end117.i:                                     ; preds = %for.inc115.i
  %arraydecay6 = bitcast i8* %call.i31 to double*
  %77 = load double, double* %arraydecay4, align 8, !tbaa !2
  store double %77, double* %arraydecay6, align 8, !tbaa !2
  br label %for.body123.i

for.body123.i:                                    ; preds = %for.end140.i, %for.end117.i
  %indvar69 = phi i64 [ %indvar.next70, %for.end140.i ], [ 0, %for.end117.i ]
  %indvars.iv37.i = phi i64 [ %indvars.iv.next38.i, %for.end140.i ], [ 1, %for.end117.i ]
  %78 = add i64 %indvar69, 1
  %arrayidx125.i = getelementptr inbounds double, double* %arraydecay4, i64 %indvars.iv37.i
  %79 = load double, double* %arrayidx125.i, align 8, !tbaa !2
  %xtraiter71 = and i64 %78, 3
  %80 = icmp ult i64 %indvar69, 3
  br i1 %80, label %for.end140.i.unr-lcssa, label %for.body123.i.new

for.body123.i.new:                                ; preds = %for.body123.i
  %unroll_iter74 = and i64 %78, -4
  br label %for.body129.i

for.body129.i:                                    ; preds = %for.body129.i, %for.body123.i.new
  %indvars.iv34.i = phi i64 [ 0, %for.body123.i.new ], [ %indvars.iv.next35.i.3, %for.body129.i ]
  %w.212.i = phi double [ %79, %for.body123.i.new ], [ %sub137.i.3, %for.body129.i ]
  %niter75 = phi i64 [ %unroll_iter74, %for.body123.i.new ], [ %niter75.nsub.3, %for.body129.i ]
  %arrayidx133.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv37.i, i64 %indvars.iv34.i
  %81 = load double, double* %arrayidx133.i, align 8, !tbaa !2
  %arrayidx135.i = getelementptr inbounds double, double* %arraydecay6, i64 %indvars.iv34.i
  %82 = load double, double* %arrayidx135.i, align 8, !tbaa !2
  %mul136.i = fmul double %81, %82
  %sub137.i = fsub double %w.212.i, %mul136.i
  %indvars.iv.next35.i = or i64 %indvars.iv34.i, 1
  %arrayidx133.i.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv37.i, i64 %indvars.iv.next35.i
  %83 = load double, double* %arrayidx133.i.1, align 8, !tbaa !2
  %arrayidx135.i.1 = getelementptr inbounds double, double* %arraydecay6, i64 %indvars.iv.next35.i
  %84 = load double, double* %arrayidx135.i.1, align 8, !tbaa !2
  %mul136.i.1 = fmul double %83, %84
  %sub137.i.1 = fsub double %sub137.i, %mul136.i.1
  %indvars.iv.next35.i.1 = or i64 %indvars.iv34.i, 2
  %arrayidx133.i.2 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv37.i, i64 %indvars.iv.next35.i.1
  %85 = load double, double* %arrayidx133.i.2, align 8, !tbaa !2
  %arrayidx135.i.2 = getelementptr inbounds double, double* %arraydecay6, i64 %indvars.iv.next35.i.1
  %86 = load double, double* %arrayidx135.i.2, align 8, !tbaa !2
  %mul136.i.2 = fmul double %85, %86
  %sub137.i.2 = fsub double %sub137.i.1, %mul136.i.2
  %indvars.iv.next35.i.2 = or i64 %indvars.iv34.i, 3
  %arrayidx133.i.3 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv37.i, i64 %indvars.iv.next35.i.2
  %87 = load double, double* %arrayidx133.i.3, align 8, !tbaa !2
  %arrayidx135.i.3 = getelementptr inbounds double, double* %arraydecay6, i64 %indvars.iv.next35.i.2
  %88 = load double, double* %arrayidx135.i.3, align 8, !tbaa !2
  %mul136.i.3 = fmul double %87, %88
  %sub137.i.3 = fsub double %sub137.i.2, %mul136.i.3
  %indvars.iv.next35.i.3 = add nuw nsw i64 %indvars.iv34.i, 4
  %niter75.nsub.3 = add i64 %niter75, -4
  %niter75.ncmp.3 = icmp eq i64 %niter75.nsub.3, 0
  br i1 %niter75.ncmp.3, label %for.end140.i.unr-lcssa, label %for.body129.i, !llvm.loop !21

for.end140.i.unr-lcssa:                           ; preds = %for.body129.i, %for.body123.i
  %sub137.i.lcssa.ph = phi double [ undef, %for.body123.i ], [ %sub137.i.3, %for.body129.i ]
  %indvars.iv34.i.unr = phi i64 [ 0, %for.body123.i ], [ %indvars.iv.next35.i.3, %for.body129.i ]
  %w.212.i.unr = phi double [ %79, %for.body123.i ], [ %sub137.i.3, %for.body129.i ]
  %lcmp.mod72.not = icmp eq i64 %xtraiter71, 0
  br i1 %lcmp.mod72.not, label %for.end140.i, label %for.body129.i.epil

for.body129.i.epil:                               ; preds = %for.end140.i.unr-lcssa, %for.body129.i.epil
  %indvars.iv34.i.epil = phi i64 [ %indvars.iv.next35.i.epil, %for.body129.i.epil ], [ %indvars.iv34.i.unr, %for.end140.i.unr-lcssa ]
  %w.212.i.epil = phi double [ %sub137.i.epil, %for.body129.i.epil ], [ %w.212.i.unr, %for.end140.i.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.sub, %for.body129.i.epil ], [ %xtraiter71, %for.end140.i.unr-lcssa ]
  %arrayidx133.i.epil = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv37.i, i64 %indvars.iv34.i.epil
  %89 = load double, double* %arrayidx133.i.epil, align 8, !tbaa !2
  %arrayidx135.i.epil = getelementptr inbounds double, double* %arraydecay6, i64 %indvars.iv34.i.epil
  %90 = load double, double* %arrayidx135.i.epil, align 8, !tbaa !2
  %mul136.i.epil = fmul double %89, %90
  %sub137.i.epil = fsub double %w.212.i.epil, %mul136.i.epil
  %indvars.iv.next35.i.epil = add nuw nsw i64 %indvars.iv34.i.epil, 1
  %epil.iter.sub = add i64 %epil.iter, -1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.sub, 0
  br i1 %epil.iter.cmp.not, label %for.end140.i, label %for.body129.i.epil, !llvm.loop !22

for.end140.i:                                     ; preds = %for.body129.i.epil, %for.end140.i.unr-lcssa
  %sub137.i.lcssa = phi double [ %sub137.i.lcssa.ph, %for.end140.i.unr-lcssa ], [ %sub137.i.epil, %for.body129.i.epil ]
  %arrayidx142.i = getelementptr inbounds double, double* %arraydecay6, i64 %indvars.iv37.i
  store double %sub137.i.lcssa, double* %arrayidx142.i, align 8, !tbaa !2
  %indvars.iv.next38.i = add nuw nsw i64 %indvars.iv37.i, 1
  %exitcond39.not.i = icmp eq i64 %indvars.iv.next38.i, 4000
  %indvar.next70 = add i64 %indvar69, 1
  br i1 %exitcond39.not.i, label %for.end145.i, label %for.body123.i, !llvm.loop !24

for.end145.i:                                     ; preds = %for.end140.i
  %arrayidx148.i = getelementptr inbounds double, double* %arraydecay6, i64 3999
  %91 = load double, double* %arrayidx148.i, align 8, !tbaa !2
  %arrayidx154.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 3999, i64 3999
  %92 = load double, double* %arrayidx154.i, align 8, !tbaa !2
  %div155.i = fdiv double %91, %92
  %arrayidx158.i = getelementptr inbounds double, double* %arraydecay5, i64 3999
  store double %div155.i, double* %arrayidx158.i, align 8, !tbaa !2
  br label %for.body171.preheader.i

for.body171.preheader.i:                          ; preds = %for.end183.i, %for.end145.i
  %indvar76 = phi i64 [ %indvar.next77, %for.end183.i ], [ 0, %for.end145.i ]
  %indvars.iv45.i = phi i64 [ %indvars.iv.next46.i, %for.end183.i ], [ -3998, %for.end145.i ]
  %indvars.iv40.i = phi i64 [ %indvars.iv.next41.i, %for.end183.i ], [ 3999, %for.end145.i ]
  %93 = add i64 %indvar76, 1
  %94 = sub nsw i64 0, %indvars.iv45.i
  %arrayidx165.i = getelementptr inbounds double, double* %arraydecay6, i64 %94
  %95 = load double, double* %arrayidx165.i, align 8, !tbaa !2
  %xtraiter78 = and i64 %93, 3
  %lcmp.mod79.not = icmp eq i64 %xtraiter78, 0
  br i1 %lcmp.mod79.not, label %for.body171.i.prol.loopexit, label %for.body171.i.prol

for.body171.i.prol:                               ; preds = %for.body171.preheader.i, %for.body171.i.prol
  %indvars.iv42.i.prol = phi i64 [ %indvars.iv.next43.i.prol, %for.body171.i.prol ], [ %indvars.iv40.i, %for.body171.preheader.i ]
  %w.316.i.prol = phi double [ %sub180.i.prol, %for.body171.i.prol ], [ %95, %for.body171.preheader.i ]
  %prol.iter = phi i64 [ %prol.iter.sub, %for.body171.i.prol ], [ %xtraiter78, %for.body171.preheader.i ]
  %arrayidx176.i.prol = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %94, i64 %indvars.iv42.i.prol
  %96 = load double, double* %arrayidx176.i.prol, align 8, !tbaa !2
  %arrayidx178.i.prol = getelementptr inbounds double, double* %arraydecay5, i64 %indvars.iv42.i.prol
  %97 = load double, double* %arrayidx178.i.prol, align 8, !tbaa !2
  %mul179.i.prol = fmul double %96, %97
  %sub180.i.prol = fsub double %w.316.i.prol, %mul179.i.prol
  %indvars.iv.next43.i.prol = add nuw nsw i64 %indvars.iv42.i.prol, 1
  %prol.iter.sub = add i64 %prol.iter, -1
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp.not, label %for.body171.i.prol.loopexit, label %for.body171.i.prol, !llvm.loop !25

for.body171.i.prol.loopexit:                      ; preds = %for.body171.i.prol, %for.body171.preheader.i
  %sub180.i.lcssa.unr = phi double [ undef, %for.body171.preheader.i ], [ %sub180.i.prol, %for.body171.i.prol ]
  %indvars.iv42.i.unr = phi i64 [ %indvars.iv40.i, %for.body171.preheader.i ], [ %indvars.iv.next43.i.prol, %for.body171.i.prol ]
  %w.316.i.unr = phi double [ %95, %for.body171.preheader.i ], [ %sub180.i.prol, %for.body171.i.prol ]
  %98 = icmp ult i64 %indvar76, 3
  br i1 %98, label %for.end183.i, label %for.body171.i

for.body171.i:                                    ; preds = %for.body171.i.prol.loopexit, %for.body171.i
  %indvars.iv42.i = phi i64 [ %indvars.iv.next43.i.3, %for.body171.i ], [ %indvars.iv42.i.unr, %for.body171.i.prol.loopexit ]
  %w.316.i = phi double [ %sub180.i.3, %for.body171.i ], [ %w.316.i.unr, %for.body171.i.prol.loopexit ]
  %arrayidx176.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %94, i64 %indvars.iv42.i
  %99 = load double, double* %arrayidx176.i, align 8, !tbaa !2
  %arrayidx178.i = getelementptr inbounds double, double* %arraydecay5, i64 %indvars.iv42.i
  %100 = load double, double* %arrayidx178.i, align 8, !tbaa !2
  %mul179.i = fmul double %99, %100
  %sub180.i = fsub double %w.316.i, %mul179.i
  %indvars.iv.next43.i = add nuw nsw i64 %indvars.iv42.i, 1
  %arrayidx176.i.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %94, i64 %indvars.iv.next43.i
  %101 = load double, double* %arrayidx176.i.1, align 8, !tbaa !2
  %arrayidx178.i.1 = getelementptr inbounds double, double* %arraydecay5, i64 %indvars.iv.next43.i
  %102 = load double, double* %arrayidx178.i.1, align 8, !tbaa !2
  %mul179.i.1 = fmul double %101, %102
  %sub180.i.1 = fsub double %sub180.i, %mul179.i.1
  %indvars.iv.next43.i.1 = add nuw nsw i64 %indvars.iv42.i, 2
  %arrayidx176.i.2 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %94, i64 %indvars.iv.next43.i.1
  %103 = load double, double* %arrayidx176.i.2, align 8, !tbaa !2
  %arrayidx178.i.2 = getelementptr inbounds double, double* %arraydecay5, i64 %indvars.iv.next43.i.1
  %104 = load double, double* %arrayidx178.i.2, align 8, !tbaa !2
  %mul179.i.2 = fmul double %103, %104
  %sub180.i.2 = fsub double %sub180.i.1, %mul179.i.2
  %indvars.iv.next43.i.2 = add nuw nsw i64 %indvars.iv42.i, 3
  %arrayidx176.i.3 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %94, i64 %indvars.iv.next43.i.2
  %105 = load double, double* %arrayidx176.i.3, align 8, !tbaa !2
  %arrayidx178.i.3 = getelementptr inbounds double, double* %arraydecay5, i64 %indvars.iv.next43.i.2
  %106 = load double, double* %arrayidx178.i.3, align 8, !tbaa !2
  %mul179.i.3 = fmul double %105, %106
  %sub180.i.3 = fsub double %sub180.i.2, %mul179.i.3
  %indvars.iv.next43.i.3 = add nuw nsw i64 %indvars.iv42.i, 4
  %exitcond44.not.i.3 = icmp eq i64 %indvars.iv.next43.i.3, 4000
  br i1 %exitcond44.not.i.3, label %for.end183.i, label %for.body171.i, !llvm.loop !26

for.end183.i:                                     ; preds = %for.body171.i, %for.body171.i.prol.loopexit
  %sub180.i.lcssa = phi double [ %sub180.i.lcssa.unr, %for.body171.i.prol.loopexit ], [ %sub180.i.3, %for.body171.i ]
  %arrayidx189.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %94, i64 %94
  %107 = load double, double* %arrayidx189.i, align 8, !tbaa !2
  %div190.i = fdiv double %sub180.i.lcssa, %107
  %arrayidx193.i = getelementptr inbounds double, double* %arraydecay5, i64 %94
  store double %div190.i, double* %arrayidx193.i, align 8, !tbaa !2
  %indvars.iv.next46.i = add nsw i64 %indvars.iv45.i, 1
  %indvars.iv.next41.i = add nsw i64 %indvars.iv40.i, -1
  %exitcond49.not.i38 = icmp eq i64 %indvars.iv45.i, 0
  %indvar.next77 = add i64 %indvar76, 1
  br i1 %exitcond49.not.i38, label %kernel_ludcmp.exit, label %for.body171.preheader.i, !llvm.loop !27

kernel_ludcmp.exit:                               ; preds = %for.end183.i
  tail call void (...) @polybench_timer_stop() #8
  tail call void (...) @polybench_timer_print() #8
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_ludcmp.exit
  %108 = load i8*, i8** %argv, align 8, !tbaa !28
  %strcmpload = load i8, i8* %108, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !28
  %110 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %109) #9
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !28
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %111, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #9
  br label %for.body.i40

for.body.i40:                                     ; preds = %if.end.i, %if.then
  %indvars.iv.i39 = phi i64 [ 0, %if.then ], [ %indvars.iv.next.i42, %if.end.i ]
  %i.02.i = phi i32 [ 0, %if.then ], [ %inc.i, %if.end.i ]
  %rem.lhs.trunc.i = trunc i32 %i.02.i to i16
  %rem1.i = urem i16 %rem.lhs.trunc.i, 20
  %cmp2.i = icmp eq i16 %rem1.i, 0
  br i1 %cmp2.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i40
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !28
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %112) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i40
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !28
  %arrayidx.i41 = getelementptr inbounds double, double* %arraydecay5, i64 %indvars.iv.i39
  %114 = load double, double* %arrayidx.i41, align 8, !tbaa !2
  %call4.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %113, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %114) #9
  %indvars.iv.next.i42 = add nuw nsw i64 %indvars.iv.i39, 1
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i43 = icmp eq i64 %indvars.iv.next.i42, 4000
  br i1 %exitcond.not.i43, label %print_array.exit, label %for.body.i40, !llvm.loop !30

print_array.exit:                                 ; preds = %if.end.i
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !28
  %call5.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %115, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #9
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !28
  %117 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %116) #9
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_ludcmp.exit
  tail call void @free(i8* %call.i) #8
  tail call void @free(i8* %call.i29) #8
  tail call void @free(i8* nonnull %call.i30) #8
  tail call void @free(i8* %call.i31) #8
  ret i32 0

vector.body49.1:                                  ; preds = %vector.body49
  %offset.idx.1 = or i64 %index51, 3
  %118 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 1, i64 %offset.idx.1
  %119 = bitcast double* %118 to <2 x double>*
  %wide.load55.1 = load <2 x double>, <2 x double>* %119, align 8, !tbaa !2
  %120 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 0, i64 %offset.idx.1
  %121 = bitcast double* %120 to <2 x double>*
  %wide.load56.1 = load <2 x double>, <2 x double>* %121, align 8, !tbaa !2
  %122 = fmul <2 x double> %broadcast.splat58, %wide.load56.1
  %123 = fsub <2 x double> %wide.load55.1, %122
  %124 = bitcast double* %118 to <2 x double>*
  store <2 x double> %123, <2 x double>* %124, align 8, !tbaa !2
  %index.next52.1 = add nuw nsw i64 %index51, 4
  br label %vector.body49
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
!15 = distinct !{!15, !7, !11}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.unroll.disable"}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !23}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
!28 = !{!29, !29, i64 0}
!29 = !{!"any pointer", !4, i64 0}
!30 = distinct !{!30, !7}

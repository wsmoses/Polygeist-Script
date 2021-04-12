; ModuleID = 'lu.c'
source_filename = "lu.c"
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
  %call.i = tail call noalias dereferenceable_or_null(128000000) i8* @malloc(i64 128000000) #8
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
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(1) %scevgep16.i, i8 0, i64 %11, i1 false) #8
  br label %for.end18.i

for.end18.i:                                      ; preds = %for.body11.lr.ph.i, %for.end.i
  %arrayidx22.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvar.i, i64 %indvar.i
  store double 1.000000e+00, double* %arrayidx22.i, align 8, !tbaa !2
  %exitcond21.not.i = icmp eq i64 %indvar.next.i, 4000
  br i1 %exitcond21.not.i, label %for.end25.i, label %for.cond1.preheader.i, !llvm.loop !8

for.end25.i:                                      ; preds = %for.end18.i
  %call.i.i = tail call noalias dereferenceable_or_null(128000000) i8* @malloc(i64 128000000) #8
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(128000000) %call.i.i, i8 0, i64 128000000, i1 false) #8
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
  %broadcast.splatinsert23 = insertelement <2 x double> poison, double %13, i32 0
  %broadcast.splat24 = shufflevector <2 x double> %broadcast.splatinsert23, <2 x double> poison, <2 x i32> zeroinitializer
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
  %30 = fmul <2 x double> %broadcast.splat24, %28
  %31 = getelementptr inbounds [4000 x [4000 x double]], [4000 x [4000 x double]]* %12, i64 0, i64 %indvars.iv30.i, i64 %index
  %32 = bitcast double* %31 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %32, align 8, !tbaa !2
  %33 = getelementptr inbounds double, double* %31, i64 2
  %34 = bitcast double* %33 to <2 x double>*
  %wide.load25 = load <2 x double>, <2 x double>* %34, align 8, !tbaa !2
  %35 = fadd <2 x double> %wide.load, %29
  %36 = fadd <2 x double> %wide.load25, %30
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
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32000) %scevgep3839.i, i8* noundef nonnull align 8 dereferenceable(32000) %scevgep40.i, i64 32000, i1 false) #8
  %indvar.next37.i = or i64 %indvar36.i, 1
  %scevgep38.i.1 = getelementptr [4000 x double], [4000 x double]* %arraydecay, i64 %indvar.next37.i, i64 0
  %scevgep3839.i.1 = bitcast double* %scevgep38.i.1 to i8*
  %41 = mul nuw nsw i64 %indvar.next37.i, 32000
  %scevgep40.i.1 = getelementptr i8, i8* %call.i.i, i64 %41
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32000) %scevgep3839.i.1, i8* noundef nonnull align 8 dereferenceable(32000) %scevgep40.i.1, i64 32000, i1 false) #8
  %indvar.next37.i.1 = add nuw nsw i64 %indvar36.i, 2
  %exitcond43.not.i.1 = icmp eq i64 %indvar.next37.i.1, 4000
  br i1 %exitcond43.not.i.1, label %init_array.exit, label %for.cond82.preheader.i, !llvm.loop !13

init_array.exit:                                  ; preds = %for.cond82.preheader.i
  tail call void @free(i8* nonnull %call.i.i) #8
  tail call void (...) @polybench_timer_start() #8
  br label %for.cond1.preheader.i11

for.cond1.preheader.i11:                          ; preds = %for.inc54.i, %init_array.exit
  %indvars.iv22.i = phi i64 [ 0, %init_array.exit ], [ %indvars.iv.next23.i, %for.inc54.i ]
  %cmp23.not.i = icmp eq i64 %indvars.iv22.i, 0
  br i1 %cmp23.not.i, label %for.inc54.i, label %for.cond4.preheader.lr.ph.i

for.cond4.preheader.lr.ph.i:                      ; preds = %for.cond1.preheader.i11
  %arrayidx24.phi.trans.insert.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv22.i, i64 0
  br label %for.cond4.preheader.i

for.cond31.preheader.us.i:                        ; preds = %for.cond31.preheader.us.i.preheader, %for.cond31.for.inc51_crit_edge.us.i
  %indvars.iv24.i = phi i64 [ %indvars.iv.next25.i, %for.cond31.for.inc51_crit_edge.us.i ], [ %indvars.iv22.i, %for.cond31.preheader.us.i.preheader ]
  %arrayidx46.us.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv22.i, i64 %indvars.iv24.i
  %.pre29.i = load double, double* %arrayidx46.us.i, align 8, !tbaa !2
  br i1 %59, label %for.cond31.for.inc51_crit_edge.us.i.unr-lcssa, label %for.body33.us.i

for.body33.us.i:                                  ; preds = %for.cond31.preheader.us.i, %for.body33.us.i
  %42 = phi double [ %sub47.us.i.1, %for.body33.us.i ], [ %.pre29.i, %for.cond31.preheader.us.i ]
  %indvars.iv19.i = phi i64 [ %indvars.iv.next20.i.1, %for.body33.us.i ], [ 0, %for.cond31.preheader.us.i ]
  %niter34 = phi i64 [ %niter34.nsub.1, %for.body33.us.i ], [ %unroll_iter33, %for.cond31.preheader.us.i ]
  %arrayidx37.us.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv22.i, i64 %indvars.iv19.i
  %43 = load double, double* %arrayidx37.us.i, align 8, !tbaa !2
  %arrayidx41.us.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv19.i, i64 %indvars.iv24.i
  %44 = load double, double* %arrayidx41.us.i, align 8, !tbaa !2
  %mul42.us.i = fmul double %43, %44
  %sub47.us.i = fsub double %42, %mul42.us.i
  store double %sub47.us.i, double* %arrayidx46.us.i, align 8, !tbaa !2
  %indvars.iv.next20.i = or i64 %indvars.iv19.i, 1
  %arrayidx37.us.i.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv22.i, i64 %indvars.iv.next20.i
  %45 = load double, double* %arrayidx37.us.i.1, align 8, !tbaa !2
  %arrayidx41.us.i.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv.next20.i, i64 %indvars.iv24.i
  %46 = load double, double* %arrayidx41.us.i.1, align 8, !tbaa !2
  %mul42.us.i.1 = fmul double %45, %46
  %sub47.us.i.1 = fsub double %sub47.us.i, %mul42.us.i.1
  store double %sub47.us.i.1, double* %arrayidx46.us.i, align 8, !tbaa !2
  %indvars.iv.next20.i.1 = add nuw nsw i64 %indvars.iv19.i, 2
  %niter34.nsub.1 = add i64 %niter34, -2
  %niter34.ncmp.1 = icmp eq i64 %niter34.nsub.1, 0
  br i1 %niter34.ncmp.1, label %for.cond31.for.inc51_crit_edge.us.i.unr-lcssa, label %for.body33.us.i, !llvm.loop !14

for.cond31.for.inc51_crit_edge.us.i.unr-lcssa:    ; preds = %for.body33.us.i, %for.cond31.preheader.us.i
  %.unr31 = phi double [ %.pre29.i, %for.cond31.preheader.us.i ], [ %sub47.us.i.1, %for.body33.us.i ]
  %indvars.iv19.i.unr = phi i64 [ 0, %for.cond31.preheader.us.i ], [ %indvars.iv.next20.i.1, %for.body33.us.i ]
  br i1 %lcmp.mod32.not, label %for.cond31.for.inc51_crit_edge.us.i, label %for.body33.us.i.epil

for.body33.us.i.epil:                             ; preds = %for.cond31.for.inc51_crit_edge.us.i.unr-lcssa
  %arrayidx37.us.i.epil = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv22.i, i64 %indvars.iv19.i.unr
  %47 = load double, double* %arrayidx37.us.i.epil, align 8, !tbaa !2
  %arrayidx41.us.i.epil = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv19.i.unr, i64 %indvars.iv24.i
  %48 = load double, double* %arrayidx41.us.i.epil, align 8, !tbaa !2
  %mul42.us.i.epil = fmul double %47, %48
  %sub47.us.i.epil = fsub double %.unr31, %mul42.us.i.epil
  store double %sub47.us.i.epil, double* %arrayidx46.us.i, align 8, !tbaa !2
  br label %for.cond31.for.inc51_crit_edge.us.i

for.cond31.for.inc51_crit_edge.us.i:              ; preds = %for.cond31.for.inc51_crit_edge.us.i.unr-lcssa, %for.body33.us.i.epil
  %indvars.iv.next25.i = add nuw nsw i64 %indvars.iv24.i, 1
  %exitcond26.not.i = icmp eq i64 %indvars.iv.next25.i, 4000
  br i1 %exitcond26.not.i, label %for.inc54.i, label %for.cond31.preheader.us.i, !llvm.loop !15

for.cond4.preheader.i:                            ; preds = %for.end.i18, %for.cond4.preheader.lr.ph.i
  %indvars.iv15.i = phi i64 [ 0, %for.cond4.preheader.lr.ph.i ], [ %indvars.iv.next16.i, %for.end.i18 ]
  %cmp51.not.i = icmp eq i64 %indvars.iv15.i, 0
  br i1 %cmp51.not.i, label %for.cond4.preheader.for.end_crit_edge.i, label %for.body6.lr.ph.i

for.cond4.preheader.for.end_crit_edge.i:          ; preds = %for.cond4.preheader.i
  %.pre28.i = load double, double* %arrayidx24.phi.trans.insert.i, align 8, !tbaa !2
  br label %for.end.i18

for.body6.lr.ph.i:                                ; preds = %for.cond4.preheader.i
  %arrayidx16.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv22.i, i64 %indvars.iv15.i
  %.pre.i = load double, double* %arrayidx16.i, align 8, !tbaa !2
  %xtraiter26 = and i64 %indvars.iv15.i, 1
  %49 = icmp eq i64 %indvars.iv15.i, 1
  br i1 %49, label %for.end.i18.loopexit.unr-lcssa, label %for.body6.lr.ph.i.new

for.body6.lr.ph.i.new:                            ; preds = %for.body6.lr.ph.i
  %unroll_iter28 = and i64 %indvars.iv15.i, 9223372036854775806
  br label %for.body6.i

for.body6.i:                                      ; preds = %for.body6.i, %for.body6.lr.ph.i.new
  %50 = phi double [ %.pre.i, %for.body6.lr.ph.i.new ], [ %sub.i.1, %for.body6.i ]
  %indvars.iv.i13 = phi i64 [ 0, %for.body6.lr.ph.i.new ], [ %indvars.iv.next.i15.1, %for.body6.i ]
  %niter29 = phi i64 [ %unroll_iter28, %for.body6.lr.ph.i.new ], [ %niter29.nsub.1, %for.body6.i ]
  %arrayidx8.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv22.i, i64 %indvars.iv.i13
  %51 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %arrayidx12.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv.i13, i64 %indvars.iv15.i
  %52 = load double, double* %arrayidx12.i, align 8, !tbaa !2
  %mul.i14 = fmul double %51, %52
  %sub.i = fsub double %50, %mul.i14
  store double %sub.i, double* %arrayidx16.i, align 8, !tbaa !2
  %indvars.iv.next.i15 = or i64 %indvars.iv.i13, 1
  %arrayidx8.i.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv22.i, i64 %indvars.iv.next.i15
  %53 = load double, double* %arrayidx8.i.1, align 8, !tbaa !2
  %arrayidx12.i.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv.next.i15, i64 %indvars.iv15.i
  %54 = load double, double* %arrayidx12.i.1, align 8, !tbaa !2
  %mul.i14.1 = fmul double %53, %54
  %sub.i.1 = fsub double %sub.i, %mul.i14.1
  store double %sub.i.1, double* %arrayidx16.i, align 8, !tbaa !2
  %indvars.iv.next.i15.1 = add nuw nsw i64 %indvars.iv.i13, 2
  %niter29.nsub.1 = add i64 %niter29, -2
  %niter29.ncmp.1 = icmp eq i64 %niter29.nsub.1, 0
  br i1 %niter29.ncmp.1, label %for.end.i18.loopexit.unr-lcssa, label %for.body6.i, !llvm.loop !16

for.end.i18.loopexit.unr-lcssa:                   ; preds = %for.body6.i, %for.body6.lr.ph.i
  %sub.i.lcssa.ph = phi double [ undef, %for.body6.lr.ph.i ], [ %sub.i.1, %for.body6.i ]
  %.unr = phi double [ %.pre.i, %for.body6.lr.ph.i ], [ %sub.i.1, %for.body6.i ]
  %indvars.iv.i13.unr = phi i64 [ 0, %for.body6.lr.ph.i ], [ %indvars.iv.next.i15.1, %for.body6.i ]
  %lcmp.mod27.not = icmp eq i64 %xtraiter26, 0
  br i1 %lcmp.mod27.not, label %for.end.i18, label %for.body6.i.epil

for.body6.i.epil:                                 ; preds = %for.end.i18.loopexit.unr-lcssa
  %arrayidx8.i.epil = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv22.i, i64 %indvars.iv.i13.unr
  %55 = load double, double* %arrayidx8.i.epil, align 8, !tbaa !2
  %arrayidx12.i.epil = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv.i13.unr, i64 %indvars.iv15.i
  %56 = load double, double* %arrayidx12.i.epil, align 8, !tbaa !2
  %mul.i14.epil = fmul double %55, %56
  %sub.i.epil = fsub double %.unr, %mul.i14.epil
  store double %sub.i.epil, double* %arrayidx16.i, align 8, !tbaa !2
  br label %for.end.i18

for.end.i18:                                      ; preds = %for.body6.i.epil, %for.end.i18.loopexit.unr-lcssa, %for.cond4.preheader.for.end_crit_edge.i
  %57 = phi double [ %.pre28.i, %for.cond4.preheader.for.end_crit_edge.i ], [ %sub.i.lcssa.ph, %for.end.i18.loopexit.unr-lcssa ], [ %sub.i.epil, %for.body6.i.epil ]
  %arrayidx20.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv15.i, i64 %indvars.iv15.i
  %58 = load double, double* %arrayidx20.i, align 8, !tbaa !2
  %arrayidx24.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv22.i, i64 %indvars.iv15.i
  %div.i17 = fdiv double %57, %58
  store double %div.i17, double* %arrayidx24.i, align 8, !tbaa !2
  %indvars.iv.next16.i = add nuw nsw i64 %indvars.iv15.i, 1
  %exitcond18.not.i = icmp eq i64 %indvars.iv.next16.i, %indvars.iv22.i
  br i1 %exitcond18.not.i, label %for.cond31.preheader.us.i.preheader, label %for.cond4.preheader.i, !llvm.loop !17

for.cond31.preheader.us.i.preheader:              ; preds = %for.end.i18
  %xtraiter30 = and i64 %indvars.iv22.i, 1
  %59 = icmp eq i64 %indvars.iv22.i, 1
  %unroll_iter33 = and i64 %indvars.iv22.i, 9223372036854775806
  %lcmp.mod32.not = icmp eq i64 %xtraiter30, 0
  br label %for.cond31.preheader.us.i

for.inc54.i:                                      ; preds = %for.cond31.for.inc51_crit_edge.us.i, %for.cond1.preheader.i11
  %indvars.iv.next23.i = add nuw nsw i64 %indvars.iv22.i, 1
  %exitcond27.not.i = icmp eq i64 %indvars.iv.next23.i, 4000
  br i1 %exitcond27.not.i, label %kernel_lu.exit, label %for.cond1.preheader.i11, !llvm.loop !18

kernel_lu.exit:                                   ; preds = %for.inc54.i
  tail call void (...) @polybench_timer_stop() #8
  tail call void (...) @polybench_timer_print() #8
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_lu.exit
  %60 = load i8*, i8** %argv, align 8, !tbaa !19
  %strcmpload = load i8, i8* %60, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !19
  %62 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %61) #9
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !19
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #9
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.inc10.i, %if.then
  %indvars.iv4.i = phi i64 [ 0, %if.then ], [ %indvars.iv.next5.i, %for.inc10.i ]
  %64 = mul nuw nsw i64 %indvars.iv4.i, 4000
  br label %for.body4.i

for.body4.i:                                      ; preds = %if.end.i, %for.cond2.preheader.i
  %indvars.iv.i19 = phi i64 [ 0, %for.cond2.preheader.i ], [ %indvars.iv.next.i21, %if.end.i ]
  %65 = add nuw nsw i64 %indvars.iv.i19, %64
  %66 = trunc i64 %65 to i32
  %rem.i = urem i32 %66, 20
  %cmp5.i = icmp eq i32 %rem.i, 0
  br i1 %cmp5.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body4.i
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !19
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %67) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !19
  %arrayidx8.i20 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv4.i, i64 %indvars.iv.i19
  %69 = load double, double* %arrayidx8.i20, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %69) #9
  %indvars.iv.next.i21 = add nuw nsw i64 %indvars.iv.i19, 1
  %exitcond.not.i22 = icmp eq i64 %indvars.iv.next.i21, 4000
  br i1 %exitcond.not.i22, label %for.inc10.i, label %for.body4.i, !llvm.loop !21

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 4000
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !22

print_array.exit:                                 ; preds = %for.inc10.i
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !19
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %70, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #9
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !19
  %72 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %71) #9
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_lu.exit
  tail call void @free(i8* %call.i) #8
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
!9 = distinct !{!9, !7, !10}
!10 = !{!"llvm.loop.isvectorized", i32 1}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = !{!20, !20, i64 0}
!20 = !{!"any pointer", !4, i64 0}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}

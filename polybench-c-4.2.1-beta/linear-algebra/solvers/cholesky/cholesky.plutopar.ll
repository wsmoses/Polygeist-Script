; ModuleID = 'cholesky.plutopar.c'
source_filename = "cholesky.plutopar.c"
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
  %call.i = tail call noalias dereferenceable_or_null(128000000) i8* @malloc(i64 128000000) #10
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
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc543.i, %init_array.exit
  %indvars.iv122.i = phi i64 [ 0, %init_array.exit ], [ %indvars.iv.next123.i, %for.inc543.i ]
  %indvars.iv108.i = phi i32 [ 1, %init_array.exit ], [ %indvars.iv.next109.i, %for.inc543.i ]
  %indvars.iv102.i = phi i64 [ 2, %init_array.exit ], [ %indvars.iv.next103.i, %for.inc543.i ]
  %indvars.iv96.i = phi i64 [ 1, %init_array.exit ], [ %indvars.iv.next97.i, %for.inc543.i ]
  %indvars.iv90.i = phi i64 [ 0, %init_array.exit ], [ %indvars.iv.next91.i, %for.inc543.i ]
  %indvars.iv64.i = phi i32 [ 0, %init_array.exit ], [ %indvars.iv.next65.i, %for.inc543.i ]
  %t1.047.i = phi i32 [ 0, %init_array.exit ], [ %inc544.i, %for.inc543.i ]
  %cmp11.i = icmp ult i64 %indvars.iv122.i, 125
  %t1.047.i.tr = trunc i32 %t1.047.i to i16
  %42 = shl i16 %t1.047.i.tr, 5
  br i1 %cmp11.i, label %cond.end26.i, label %cond.false42.i

cond.end26.i:                                     ; preds = %for.body.i
  %div17.neg.lhs.trunc.i = sub i16 3999, %42
  %cmp28.i = icmp sgt i16 %div17.neg.lhs.trunc.i, 31
  br i1 %cmp28.i, label %cond.false60.thread.i, label %cond.true35.i

cond.false60.thread.i:                            ; preds = %cond.end26.i
  %43 = trunc i64 %indvars.iv122.i to i32
  %div61139.i = lshr i32 %43, 1
  br label %for.cond67.preheader.lr.ph.i

cond.true35.i:                                    ; preds = %cond.end26.i
  %div40.neg11.i = sdiv i16 %div17.neg.lhs.trunc.i, -32
  br label %cond.false60.i

cond.false42.i:                                   ; preds = %for.body.i
  %div48.lhs.trunc.i = add i16 %42, -3968
  %div4812.i = sdiv i16 %div48.lhs.trunc.i, 32
  br label %cond.false60.i

cond.false60.i:                                   ; preds = %cond.false42.i, %cond.true35.i
  %cond52.in.i = phi i16 [ %div40.neg11.i, %cond.true35.i ], [ %div4812.i, %cond.false42.i ]
  %cond52.i = sext i16 %cond52.in.i to i32
  %44 = trunc i64 %indvars.iv122.i to i32
  %div61.i = lshr i32 %44, 1
  %cmp65.not44.i = icmp slt i32 %div61.i, %cond52.i
  br i1 %cmp65.not44.i, label %for.inc543.i, label %for.cond67.preheader.lr.ph.i

for.cond67.preheader.lr.ph.i:                     ; preds = %cond.false60.i, %cond.false60.thread.i
  %indvars.iv122.tr.i.pre-phi = phi i32 [ %44, %cond.false60.i ], [ %43, %cond.false60.thread.i ]
  %div61142.i = phi i32 [ %div61.i, %cond.false60.i ], [ %div61139.i, %cond.false60.thread.i ]
  %cond52141.i = phi i32 [ %cond52.i, %cond.false60.i ], [ 0, %cond.false60.thread.i ]
  %rem.i = and i32 %indvars.iv122.tr.i.pre-phi, 1
  %cmp290.i = icmp eq i32 %rem.i, 0
  %45 = shl nsw i64 %indvars.iv122.i, 4
  %arrayidx297.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %45, i64 %45
  %46 = or i64 %45, 1
  %arrayidx343.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %46, i64 %45
  %arrayidx371.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %46, i64 %46
  %47 = or i64 %45, 2
  %cmp408.i = icmp ugt i64 %45, 3968
  %48 = add nuw nsw i64 %45, 31
  %49 = select i1 %cmp408.i, i64 3999, i64 %48
  %cmp416.not37.i = icmp ule i64 %47, %49
  %50 = shl nsw i32 %cond52141.i, 5
  %51 = sext i32 %50 to i64
  %52 = or i64 %51, 1
  %53 = sub i32 %indvars.iv64.i, %50
  %54 = sext i32 %53 to i64
  %55 = or i32 %50, 1
  %56 = sub i32 %indvars.iv108.i, %cond52141.i
  %57 = sext i32 %cond52141.i to i64
  %58 = zext i32 %div61142.i to i64
  %smax = call i64 @llvm.smax.i64(i64 %57, i64 %58)
  %indvars.iv.next93.i.us.prol = or i64 %indvars.iv90.i, 1
  br label %for.cond67.preheader.i

for.cond67.preheader.i:                           ; preds = %for.inc540.i, %for.cond67.preheader.lr.ph.i
  %indvars.iv115.i = phi i64 [ %57, %for.cond67.preheader.lr.ph.i ], [ %indvars.iv.next116.i, %for.inc540.i ]
  %indvars.iv113.in.i = phi i64 [ %51, %for.cond67.preheader.lr.ph.i ], [ %indvars.iv113.i, %for.inc540.i ]
  %indvars.iv110.i = phi i32 [ %56, %for.cond67.preheader.lr.ph.i ], [ %indvars.iv.next111.i, %for.inc540.i ]
  %indvars.iv81.i = phi i32 [ %55, %for.cond67.preheader.lr.ph.i ], [ %indvars.iv.next82.i, %for.inc540.i ]
  %indvars.iv79.i = phi i32 [ %53, %for.cond67.preheader.lr.ph.i ], [ %indvars.iv.next80.i, %for.inc540.i ]
  %indvars.iv66.i = phi i64 [ %54, %for.cond67.preheader.lr.ph.i ], [ %indvars.iv.next67.i, %for.inc540.i ]
  %indvars.iv56.i = phi i64 [ %52, %for.cond67.preheader.lr.ph.i ], [ %indvars.iv.next57.i, %for.inc540.i ]
  %indvars.iv113.i = add nsw i64 %indvars.iv113.in.i, 32
  %smax.i = tail call i32 @llvm.smax.i32(i32 %indvars.iv79.i, i32 %indvars.iv81.i) #10
  %59 = sext i32 %smax.i to i64
  %cmp69.not42.i = icmp slt i64 %indvars.iv122.i, %indvars.iv115.i
  br i1 %cmp69.not42.i, label %for.inc540.i, label %for.body70.lr.ph.i

for.body70.lr.ph.i:                               ; preds = %for.cond67.preheader.i
  %60 = trunc i64 %indvars.iv115.i to i32
  %mul71.i = shl nsw i32 %60, 1
  %add72.i = or i32 %mul71.i, 1
  %61 = sext i32 %add72.i to i64
  %cmp73.not.i = icmp slt i64 %indvars.iv122.i, %61
  %mul77.i = shl nsw i32 %60, 5
  %62 = sub i32 %indvars.iv122.tr.i.pre-phi, %60
  %sub78.i = shl i32 %62, 5
  %add84.i = or i32 %sub78.i, 31
  %63 = icmp slt i32 %add84.i, 3999
  %cond94.i = select i1 %63, i32 %add84.i, i32 3999
  %cmp95.not18.i = icmp sgt i32 %sub78.i, %cond94.i
  %idxprom.i = sext i32 %mul77.i to i64
  %arrayidx100.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %idxprom.i, i64 %idxprom.i
  %add108.i = or i32 %mul77.i, 1
  %add111.i = or i32 %mul77.i, 31
  %cmp112.not15.i = icmp sgt i32 %add108.i, %add111.i
  %cmp156.i = icmp sgt i32 %sub78.i, %add108.i
  %cond165.i = select i1 %cmp156.i, i32 %sub78.i, i32 %add108.i
  %cmp182.not23.i = icmp sgt i32 %cond165.i, %cond94.i
  %64 = zext i32 %mul71.i to i64
  %cmp285.i = icmp eq i64 %indvars.iv122.i, %64
  %65 = sext i32 %cond94.i to i64
  %66 = sext i32 %add111.i to i64
  %67 = and i64 %indvars.iv115.i, 4294967295
  %68 = zext i32 %indvars.iv110.i to i64
  %indvars.iv.next55.i.prol = or i64 %indvars.iv113.in.i, 1
  br label %for.body70.i

for.body70.i:                                     ; preds = %for.inc537.i, %for.body70.lr.ph.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc537.i ], [ 0, %for.body70.lr.ph.i ]
  %indvars.iv70.i = phi i64 [ %indvars.iv.next71.i, %for.inc537.i ], [ 0, %for.body70.lr.ph.i ]
  %cmp74.i = icmp ne i64 %indvars.iv, %67
  %69 = or i1 %cmp73.not.i, %cmp74.i
  %brmerge49.i = or i1 %cmp95.not18.i, %69
  br i1 %brmerge49.i, label %if.end.i, label %for.body96.i

for.body96.i:                                     ; preds = %for.body70.i, %for.inc145.i
  %indvars.iv68.i = phi i64 [ %indvars.iv.next69.i, %for.inc145.i ], [ %indvars.iv66.i, %for.body70.i ]
  %70 = load double, double* %arrayidx100.i, align 8, !tbaa !2
  %arrayidx105.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv68.i, i64 %idxprom.i
  %71 = load double, double* %arrayidx105.i, align 8, !tbaa !2
  %div106.i = fdiv double %71, %70
  store double %div106.i, double* %arrayidx105.i, align 8, !tbaa !2
  br i1 %cmp112.not15.i, label %for.inc145.i, label %for.cond115.preheader.i.preheader

for.cond115.preheader.i.preheader:                ; preds = %for.body96.i
  %arrayidx122.i.prol = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv68.i, i64 %indvars.iv113.in.i
  br label %for.cond115.preheader.i

for.cond115.preheader.i:                          ; preds = %for.cond115.preheader.i.preheader, %for.end.i14
  %indvar = phi i64 [ 0, %for.cond115.preheader.i.preheader ], [ %indvar.next, %for.end.i14 ]
  %indvars.iv58.i = phi i64 [ %indvars.iv56.i, %for.cond115.preheader.i.preheader ], [ %indvars.iv.next59.i, %for.end.i14 ]
  %cmp117.not.not13.i = icmp sgt i64 %indvars.iv58.i, %idxprom.i
  %arrayidx131.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv68.i, i64 %indvars.iv58.i
  %.pre.i = load double, double* %arrayidx131.i, align 8, !tbaa !2
  br i1 %cmp117.not.not13.i, label %for.body118.i.preheader, label %for.end.i14

for.body118.i.preheader:                          ; preds = %for.cond115.preheader.i
  %72 = and i64 %indvar, 1
  %lcmp.mod29.not.not = icmp eq i64 %72, 0
  br i1 %lcmp.mod29.not.not, label %for.body118.i.prol, label %for.body118.i.prol.loopexit

for.body118.i.prol:                               ; preds = %for.body118.i.preheader
  %73 = load double, double* %arrayidx122.i.prol, align 8, !tbaa !2
  %arrayidx126.i.prol = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv58.i, i64 %indvars.iv113.in.i
  %74 = load double, double* %arrayidx126.i.prol, align 8, !tbaa !2
  %mul127.i.prol = fmul double %73, %74
  %sub132.i.prol = fsub double %.pre.i, %mul127.i.prol
  store double %sub132.i.prol, double* %arrayidx131.i, align 8, !tbaa !2
  br label %for.body118.i.prol.loopexit

for.body118.i.prol.loopexit:                      ; preds = %for.body118.i.prol, %for.body118.i.preheader
  %sub132.i.lcssa.unr.ph = phi double [ %sub132.i.prol, %for.body118.i.prol ], [ undef, %for.body118.i.preheader ]
  %.unr.ph = phi double [ %sub132.i.prol, %for.body118.i.prol ], [ %.pre.i, %for.body118.i.preheader ]
  %indvars.iv54.i.unr.ph = phi i64 [ %indvars.iv.next55.i.prol, %for.body118.i.prol ], [ %indvars.iv113.in.i, %for.body118.i.preheader ]
  %75 = icmp eq i64 %indvar, 0
  br i1 %75, label %for.end.i14, label %for.body118.i

for.body118.i:                                    ; preds = %for.body118.i.prol.loopexit, %for.body118.i
  %76 = phi double [ %sub132.i.1, %for.body118.i ], [ %.unr.ph, %for.body118.i.prol.loopexit ]
  %indvars.iv54.i = phi i64 [ %indvars.iv.next55.i.1, %for.body118.i ], [ %indvars.iv54.i.unr.ph, %for.body118.i.prol.loopexit ]
  %arrayidx122.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv68.i, i64 %indvars.iv54.i
  %77 = load double, double* %arrayidx122.i, align 8, !tbaa !2
  %arrayidx126.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv58.i, i64 %indvars.iv54.i
  %78 = load double, double* %arrayidx126.i, align 8, !tbaa !2
  %mul127.i = fmul double %77, %78
  %sub132.i = fsub double %76, %mul127.i
  store double %sub132.i, double* %arrayidx131.i, align 8, !tbaa !2
  %indvars.iv.next55.i = add nsw i64 %indvars.iv54.i, 1
  %arrayidx122.i.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv68.i, i64 %indvars.iv.next55.i
  %79 = load double, double* %arrayidx122.i.1, align 8, !tbaa !2
  %arrayidx126.i.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv58.i, i64 %indvars.iv.next55.i
  %80 = load double, double* %arrayidx126.i.1, align 8, !tbaa !2
  %mul127.i.1 = fmul double %79, %80
  %sub132.i.1 = fsub double %sub132.i, %mul127.i.1
  store double %sub132.i.1, double* %arrayidx131.i, align 8, !tbaa !2
  %indvars.iv.next55.i.1 = add nsw i64 %indvars.iv54.i, 2
  %exitcond.not.i13.1 = icmp eq i64 %indvars.iv.next55.i.1, %indvars.iv58.i
  br i1 %exitcond.not.i13.1, label %for.end.i14, label %for.body118.i, !llvm.loop !14

for.end.i14:                                      ; preds = %for.body118.i.prol.loopexit, %for.body118.i, %for.cond115.preheader.i
  %81 = phi double [ %.pre.i, %for.cond115.preheader.i ], [ %sub132.i.lcssa.unr.ph, %for.body118.i.prol.loopexit ], [ %sub132.i.1, %for.body118.i ]
  %arrayidx136.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv58.i, i64 %indvars.iv58.i
  %82 = load double, double* %arrayidx136.i, align 8, !tbaa !2
  %arrayidx140.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv68.i, i64 %indvars.iv58.i
  %div141.i = fdiv double %81, %82
  store double %div141.i, double* %arrayidx140.i, align 8, !tbaa !2
  %indvars.iv.next59.i = add nsw i64 %indvars.iv58.i, 1
  %exitcond63.not.i = icmp eq i64 %indvars.iv.next59.i, %indvars.iv113.i
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond63.not.i, label %for.inc145.i, label %for.cond115.preheader.i, !llvm.loop !15

for.inc145.i:                                     ; preds = %for.end.i14, %for.body96.i
  %indvars.iv.next69.i = add nsw i64 %indvars.iv68.i, 1
  %cmp95.not.not.i = icmp slt i64 %indvars.iv68.i, %65
  br i1 %cmp95.not.not.i, label %for.body96.i, label %if.end.i, !llvm.loop !16

if.end.i:                                         ; preds = %for.inc145.i, %for.body70.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %cmp149.not.not.i = icmp sle i64 %indvars.iv115.i, %indvars.iv
  %brmerge50.i = or i1 %cmp182.not23.i, %cmp149.not.not.i
  br i1 %brmerge50.i, label %if.end228.i, label %for.cond185.preheader.i.preheader

for.cond185.preheader.i.preheader:                ; preds = %if.end.i
  %indvars.iv.next73.i = or i64 %indvars.iv70.i, 1
  %indvars.iv.next73.i.1 = add nuw nsw i64 %indvars.iv.next73.i, 1
  %indvars.iv.next73.i.2 = or i64 %indvars.iv70.i, 3
  %indvars.iv.next73.i.3 = add nuw nsw i64 %indvars.iv.next73.i.2, 1
  %indvars.iv.next73.i.4 = add nuw nsw i64 %indvars.iv.next73.i.2, 2
  %indvars.iv.next73.i.5 = add nuw nsw i64 %indvars.iv.next73.i.2, 3
  %indvars.iv.next73.i.6 = or i64 %indvars.iv70.i, 7
  %indvars.iv.next73.i.7 = add nuw nsw i64 %indvars.iv.next73.i.6, 1
  %indvars.iv.next73.i.8 = add nuw nsw i64 %indvars.iv.next73.i.6, 2
  %indvars.iv.next73.i.9 = add nuw nsw i64 %indvars.iv.next73.i.6, 3
  %indvars.iv.next73.i.10 = add nuw nsw i64 %indvars.iv.next73.i.6, 4
  %indvars.iv.next73.i.11 = add nuw nsw i64 %indvars.iv.next73.i.6, 5
  %indvars.iv.next73.i.12 = add nuw nsw i64 %indvars.iv.next73.i.6, 6
  %indvars.iv.next73.i.13 = add nuw nsw i64 %indvars.iv.next73.i.6, 7
  %indvars.iv.next73.i.14 = or i64 %indvars.iv70.i, 15
  %indvars.iv.next73.i.15 = add nuw nsw i64 %indvars.iv.next73.i.14, 1
  %indvars.iv.next73.i.16 = add nuw nsw i64 %indvars.iv.next73.i.14, 2
  %indvars.iv.next73.i.17 = add nuw nsw i64 %indvars.iv.next73.i.14, 3
  %indvars.iv.next73.i.18 = add nuw nsw i64 %indvars.iv.next73.i.14, 4
  %indvars.iv.next73.i.19 = add nuw nsw i64 %indvars.iv.next73.i.14, 5
  %indvars.iv.next73.i.20 = add nuw nsw i64 %indvars.iv.next73.i.14, 6
  %indvars.iv.next73.i.21 = add nuw nsw i64 %indvars.iv.next73.i.14, 7
  %indvars.iv.next73.i.22 = add nuw nsw i64 %indvars.iv.next73.i.14, 8
  %indvars.iv.next73.i.23 = add nuw nsw i64 %indvars.iv.next73.i.14, 9
  %indvars.iv.next73.i.24 = add nuw nsw i64 %indvars.iv.next73.i.14, 10
  %indvars.iv.next73.i.25 = add nuw nsw i64 %indvars.iv.next73.i.14, 11
  %indvars.iv.next73.i.26 = add nuw nsw i64 %indvars.iv.next73.i.14, 12
  %indvars.iv.next73.i.27 = add nuw nsw i64 %indvars.iv.next73.i.14, 13
  %indvars.iv.next73.i.28 = add nuw nsw i64 %indvars.iv.next73.i.14, 14
  %indvars.iv.next73.i.29 = add nuw nsw i64 %indvars.iv.next73.i.14, 15
  %indvars.iv.next73.i.30 = or i64 %indvars.iv70.i, 31
  br label %for.cond185.preheader.i

for.cond185.preheader.i:                          ; preds = %for.cond185.preheader.i.preheader, %for.inc225.i
  %indvars.iv83.i = phi i64 [ %indvars.iv.next84.i, %for.inc225.i ], [ %59, %for.cond185.preheader.i.preheader ]
  %83 = add nsw i64 %indvars.iv83.i, -1
  %cmp189.i = icmp sgt i64 %83, %66
  %84 = trunc i64 %83 to i32
  %cond196.i = select i1 %cmp189.i, i32 %add111.i, i32 %84
  %cmp197.not21.i = icmp sgt i32 %mul77.i, %cond196.i
  br i1 %cmp197.not21.i, label %for.inc225.i, label %for.body198.lr.ph.i

for.body198.lr.ph.i:                              ; preds = %for.cond185.preheader.i
  %85 = sext i32 %cond196.i to i64
  %arrayidx208.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv83.i, i64 %indvars.iv70.i
  %arrayidx208.i.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv83.i, i64 %indvars.iv.next73.i
  %arrayidx208.i.2 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv83.i, i64 %indvars.iv.next73.i.1
  %arrayidx208.i.3 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv83.i, i64 %indvars.iv.next73.i.2
  %arrayidx208.i.4 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv83.i, i64 %indvars.iv.next73.i.3
  %arrayidx208.i.5 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv83.i, i64 %indvars.iv.next73.i.4
  %arrayidx208.i.6 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv83.i, i64 %indvars.iv.next73.i.5
  %arrayidx208.i.7 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv83.i, i64 %indvars.iv.next73.i.6
  %arrayidx208.i.8 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv83.i, i64 %indvars.iv.next73.i.7
  %arrayidx208.i.9 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv83.i, i64 %indvars.iv.next73.i.8
  %arrayidx208.i.10 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv83.i, i64 %indvars.iv.next73.i.9
  %arrayidx208.i.11 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv83.i, i64 %indvars.iv.next73.i.10
  %arrayidx208.i.12 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv83.i, i64 %indvars.iv.next73.i.11
  %arrayidx208.i.13 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv83.i, i64 %indvars.iv.next73.i.12
  %arrayidx208.i.14 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv83.i, i64 %indvars.iv.next73.i.13
  %arrayidx208.i.15 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv83.i, i64 %indvars.iv.next73.i.14
  %arrayidx208.i.16 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv83.i, i64 %indvars.iv.next73.i.15
  %arrayidx208.i.17 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv83.i, i64 %indvars.iv.next73.i.16
  %arrayidx208.i.18 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv83.i, i64 %indvars.iv.next73.i.17
  %arrayidx208.i.19 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv83.i, i64 %indvars.iv.next73.i.18
  %arrayidx208.i.20 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv83.i, i64 %indvars.iv.next73.i.19
  %arrayidx208.i.21 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv83.i, i64 %indvars.iv.next73.i.20
  %arrayidx208.i.22 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv83.i, i64 %indvars.iv.next73.i.21
  %arrayidx208.i.23 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv83.i, i64 %indvars.iv.next73.i.22
  %arrayidx208.i.24 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv83.i, i64 %indvars.iv.next73.i.23
  %arrayidx208.i.25 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv83.i, i64 %indvars.iv.next73.i.24
  %arrayidx208.i.26 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv83.i, i64 %indvars.iv.next73.i.25
  %arrayidx208.i.27 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv83.i, i64 %indvars.iv.next73.i.26
  %arrayidx208.i.28 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv83.i, i64 %indvars.iv.next73.i.27
  %arrayidx208.i.29 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv83.i, i64 %indvars.iv.next73.i.28
  %arrayidx208.i.30 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv83.i, i64 %indvars.iv.next73.i.29
  %arrayidx208.i.31 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv83.i, i64 %indvars.iv.next73.i.30
  br label %for.body198.i

for.body198.i:                                    ; preds = %for.body198.i, %for.body198.lr.ph.i
  %indvars.iv77.i = phi i64 [ %indvars.iv113.in.i, %for.body198.lr.ph.i ], [ %indvars.iv.next78.i, %for.body198.i ]
  %arrayidx217.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv83.i, i64 %indvars.iv77.i
  %.pre134.i = load double, double* %arrayidx217.i, align 8, !tbaa !2
  %86 = load double, double* %arrayidx208.i, align 8, !tbaa !2
  %arrayidx212.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv77.i, i64 %indvars.iv70.i
  %87 = load double, double* %arrayidx212.i, align 8, !tbaa !2
  %mul213.i = fmul double %86, %87
  %sub218.i = fsub double %.pre134.i, %mul213.i
  store double %sub218.i, double* %arrayidx217.i, align 8, !tbaa !2
  %88 = load double, double* %arrayidx208.i.1, align 8, !tbaa !2
  %arrayidx212.i.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv77.i, i64 %indvars.iv.next73.i
  %89 = load double, double* %arrayidx212.i.1, align 8, !tbaa !2
  %mul213.i.1 = fmul double %88, %89
  %sub218.i.1 = fsub double %sub218.i, %mul213.i.1
  store double %sub218.i.1, double* %arrayidx217.i, align 8, !tbaa !2
  %90 = load double, double* %arrayidx208.i.2, align 8, !tbaa !2
  %arrayidx212.i.2 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv77.i, i64 %indvars.iv.next73.i.1
  %91 = load double, double* %arrayidx212.i.2, align 8, !tbaa !2
  %mul213.i.2 = fmul double %90, %91
  %sub218.i.2 = fsub double %sub218.i.1, %mul213.i.2
  store double %sub218.i.2, double* %arrayidx217.i, align 8, !tbaa !2
  %92 = load double, double* %arrayidx208.i.3, align 8, !tbaa !2
  %arrayidx212.i.3 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv77.i, i64 %indvars.iv.next73.i.2
  %93 = load double, double* %arrayidx212.i.3, align 8, !tbaa !2
  %mul213.i.3 = fmul double %92, %93
  %sub218.i.3 = fsub double %sub218.i.2, %mul213.i.3
  store double %sub218.i.3, double* %arrayidx217.i, align 8, !tbaa !2
  %94 = load double, double* %arrayidx208.i.4, align 8, !tbaa !2
  %arrayidx212.i.4 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv77.i, i64 %indvars.iv.next73.i.3
  %95 = load double, double* %arrayidx212.i.4, align 8, !tbaa !2
  %mul213.i.4 = fmul double %94, %95
  %sub218.i.4 = fsub double %sub218.i.3, %mul213.i.4
  store double %sub218.i.4, double* %arrayidx217.i, align 8, !tbaa !2
  %96 = load double, double* %arrayidx208.i.5, align 8, !tbaa !2
  %arrayidx212.i.5 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv77.i, i64 %indvars.iv.next73.i.4
  %97 = load double, double* %arrayidx212.i.5, align 8, !tbaa !2
  %mul213.i.5 = fmul double %96, %97
  %sub218.i.5 = fsub double %sub218.i.4, %mul213.i.5
  store double %sub218.i.5, double* %arrayidx217.i, align 8, !tbaa !2
  %98 = load double, double* %arrayidx208.i.6, align 8, !tbaa !2
  %arrayidx212.i.6 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv77.i, i64 %indvars.iv.next73.i.5
  %99 = load double, double* %arrayidx212.i.6, align 8, !tbaa !2
  %mul213.i.6 = fmul double %98, %99
  %sub218.i.6 = fsub double %sub218.i.5, %mul213.i.6
  store double %sub218.i.6, double* %arrayidx217.i, align 8, !tbaa !2
  %100 = load double, double* %arrayidx208.i.7, align 8, !tbaa !2
  %arrayidx212.i.7 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv77.i, i64 %indvars.iv.next73.i.6
  %101 = load double, double* %arrayidx212.i.7, align 8, !tbaa !2
  %mul213.i.7 = fmul double %100, %101
  %sub218.i.7 = fsub double %sub218.i.6, %mul213.i.7
  store double %sub218.i.7, double* %arrayidx217.i, align 8, !tbaa !2
  %102 = load double, double* %arrayidx208.i.8, align 8, !tbaa !2
  %arrayidx212.i.8 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv77.i, i64 %indvars.iv.next73.i.7
  %103 = load double, double* %arrayidx212.i.8, align 8, !tbaa !2
  %mul213.i.8 = fmul double %102, %103
  %sub218.i.8 = fsub double %sub218.i.7, %mul213.i.8
  store double %sub218.i.8, double* %arrayidx217.i, align 8, !tbaa !2
  %104 = load double, double* %arrayidx208.i.9, align 8, !tbaa !2
  %arrayidx212.i.9 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv77.i, i64 %indvars.iv.next73.i.8
  %105 = load double, double* %arrayidx212.i.9, align 8, !tbaa !2
  %mul213.i.9 = fmul double %104, %105
  %sub218.i.9 = fsub double %sub218.i.8, %mul213.i.9
  store double %sub218.i.9, double* %arrayidx217.i, align 8, !tbaa !2
  %106 = load double, double* %arrayidx208.i.10, align 8, !tbaa !2
  %arrayidx212.i.10 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv77.i, i64 %indvars.iv.next73.i.9
  %107 = load double, double* %arrayidx212.i.10, align 8, !tbaa !2
  %mul213.i.10 = fmul double %106, %107
  %sub218.i.10 = fsub double %sub218.i.9, %mul213.i.10
  store double %sub218.i.10, double* %arrayidx217.i, align 8, !tbaa !2
  %108 = load double, double* %arrayidx208.i.11, align 8, !tbaa !2
  %arrayidx212.i.11 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv77.i, i64 %indvars.iv.next73.i.10
  %109 = load double, double* %arrayidx212.i.11, align 8, !tbaa !2
  %mul213.i.11 = fmul double %108, %109
  %sub218.i.11 = fsub double %sub218.i.10, %mul213.i.11
  store double %sub218.i.11, double* %arrayidx217.i, align 8, !tbaa !2
  %110 = load double, double* %arrayidx208.i.12, align 8, !tbaa !2
  %arrayidx212.i.12 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv77.i, i64 %indvars.iv.next73.i.11
  %111 = load double, double* %arrayidx212.i.12, align 8, !tbaa !2
  %mul213.i.12 = fmul double %110, %111
  %sub218.i.12 = fsub double %sub218.i.11, %mul213.i.12
  store double %sub218.i.12, double* %arrayidx217.i, align 8, !tbaa !2
  %112 = load double, double* %arrayidx208.i.13, align 8, !tbaa !2
  %arrayidx212.i.13 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv77.i, i64 %indvars.iv.next73.i.12
  %113 = load double, double* %arrayidx212.i.13, align 8, !tbaa !2
  %mul213.i.13 = fmul double %112, %113
  %sub218.i.13 = fsub double %sub218.i.12, %mul213.i.13
  store double %sub218.i.13, double* %arrayidx217.i, align 8, !tbaa !2
  %114 = load double, double* %arrayidx208.i.14, align 8, !tbaa !2
  %arrayidx212.i.14 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv77.i, i64 %indvars.iv.next73.i.13
  %115 = load double, double* %arrayidx212.i.14, align 8, !tbaa !2
  %mul213.i.14 = fmul double %114, %115
  %sub218.i.14 = fsub double %sub218.i.13, %mul213.i.14
  store double %sub218.i.14, double* %arrayidx217.i, align 8, !tbaa !2
  %116 = load double, double* %arrayidx208.i.15, align 8, !tbaa !2
  %arrayidx212.i.15 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv77.i, i64 %indvars.iv.next73.i.14
  %117 = load double, double* %arrayidx212.i.15, align 8, !tbaa !2
  %mul213.i.15 = fmul double %116, %117
  %sub218.i.15 = fsub double %sub218.i.14, %mul213.i.15
  store double %sub218.i.15, double* %arrayidx217.i, align 8, !tbaa !2
  %118 = load double, double* %arrayidx208.i.16, align 8, !tbaa !2
  %arrayidx212.i.16 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv77.i, i64 %indvars.iv.next73.i.15
  %119 = load double, double* %arrayidx212.i.16, align 8, !tbaa !2
  %mul213.i.16 = fmul double %118, %119
  %sub218.i.16 = fsub double %sub218.i.15, %mul213.i.16
  store double %sub218.i.16, double* %arrayidx217.i, align 8, !tbaa !2
  %120 = load double, double* %arrayidx208.i.17, align 8, !tbaa !2
  %arrayidx212.i.17 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv77.i, i64 %indvars.iv.next73.i.16
  %121 = load double, double* %arrayidx212.i.17, align 8, !tbaa !2
  %mul213.i.17 = fmul double %120, %121
  %sub218.i.17 = fsub double %sub218.i.16, %mul213.i.17
  store double %sub218.i.17, double* %arrayidx217.i, align 8, !tbaa !2
  %122 = load double, double* %arrayidx208.i.18, align 8, !tbaa !2
  %arrayidx212.i.18 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv77.i, i64 %indvars.iv.next73.i.17
  %123 = load double, double* %arrayidx212.i.18, align 8, !tbaa !2
  %mul213.i.18 = fmul double %122, %123
  %sub218.i.18 = fsub double %sub218.i.17, %mul213.i.18
  store double %sub218.i.18, double* %arrayidx217.i, align 8, !tbaa !2
  %124 = load double, double* %arrayidx208.i.19, align 8, !tbaa !2
  %arrayidx212.i.19 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv77.i, i64 %indvars.iv.next73.i.18
  %125 = load double, double* %arrayidx212.i.19, align 8, !tbaa !2
  %mul213.i.19 = fmul double %124, %125
  %sub218.i.19 = fsub double %sub218.i.18, %mul213.i.19
  store double %sub218.i.19, double* %arrayidx217.i, align 8, !tbaa !2
  %126 = load double, double* %arrayidx208.i.20, align 8, !tbaa !2
  %arrayidx212.i.20 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv77.i, i64 %indvars.iv.next73.i.19
  %127 = load double, double* %arrayidx212.i.20, align 8, !tbaa !2
  %mul213.i.20 = fmul double %126, %127
  %sub218.i.20 = fsub double %sub218.i.19, %mul213.i.20
  store double %sub218.i.20, double* %arrayidx217.i, align 8, !tbaa !2
  %128 = load double, double* %arrayidx208.i.21, align 8, !tbaa !2
  %arrayidx212.i.21 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv77.i, i64 %indvars.iv.next73.i.20
  %129 = load double, double* %arrayidx212.i.21, align 8, !tbaa !2
  %mul213.i.21 = fmul double %128, %129
  %sub218.i.21 = fsub double %sub218.i.20, %mul213.i.21
  store double %sub218.i.21, double* %arrayidx217.i, align 8, !tbaa !2
  %130 = load double, double* %arrayidx208.i.22, align 8, !tbaa !2
  %arrayidx212.i.22 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv77.i, i64 %indvars.iv.next73.i.21
  %131 = load double, double* %arrayidx212.i.22, align 8, !tbaa !2
  %mul213.i.22 = fmul double %130, %131
  %sub218.i.22 = fsub double %sub218.i.21, %mul213.i.22
  store double %sub218.i.22, double* %arrayidx217.i, align 8, !tbaa !2
  %132 = load double, double* %arrayidx208.i.23, align 8, !tbaa !2
  %arrayidx212.i.23 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv77.i, i64 %indvars.iv.next73.i.22
  %133 = load double, double* %arrayidx212.i.23, align 8, !tbaa !2
  %mul213.i.23 = fmul double %132, %133
  %sub218.i.23 = fsub double %sub218.i.22, %mul213.i.23
  store double %sub218.i.23, double* %arrayidx217.i, align 8, !tbaa !2
  %134 = load double, double* %arrayidx208.i.24, align 8, !tbaa !2
  %arrayidx212.i.24 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv77.i, i64 %indvars.iv.next73.i.23
  %135 = load double, double* %arrayidx212.i.24, align 8, !tbaa !2
  %mul213.i.24 = fmul double %134, %135
  %sub218.i.24 = fsub double %sub218.i.23, %mul213.i.24
  store double %sub218.i.24, double* %arrayidx217.i, align 8, !tbaa !2
  %136 = load double, double* %arrayidx208.i.25, align 8, !tbaa !2
  %arrayidx212.i.25 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv77.i, i64 %indvars.iv.next73.i.24
  %137 = load double, double* %arrayidx212.i.25, align 8, !tbaa !2
  %mul213.i.25 = fmul double %136, %137
  %sub218.i.25 = fsub double %sub218.i.24, %mul213.i.25
  store double %sub218.i.25, double* %arrayidx217.i, align 8, !tbaa !2
  %138 = load double, double* %arrayidx208.i.26, align 8, !tbaa !2
  %arrayidx212.i.26 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv77.i, i64 %indvars.iv.next73.i.25
  %139 = load double, double* %arrayidx212.i.26, align 8, !tbaa !2
  %mul213.i.26 = fmul double %138, %139
  %sub218.i.26 = fsub double %sub218.i.25, %mul213.i.26
  store double %sub218.i.26, double* %arrayidx217.i, align 8, !tbaa !2
  %140 = load double, double* %arrayidx208.i.27, align 8, !tbaa !2
  %arrayidx212.i.27 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv77.i, i64 %indvars.iv.next73.i.26
  %141 = load double, double* %arrayidx212.i.27, align 8, !tbaa !2
  %mul213.i.27 = fmul double %140, %141
  %sub218.i.27 = fsub double %sub218.i.26, %mul213.i.27
  store double %sub218.i.27, double* %arrayidx217.i, align 8, !tbaa !2
  %142 = load double, double* %arrayidx208.i.28, align 8, !tbaa !2
  %arrayidx212.i.28 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv77.i, i64 %indvars.iv.next73.i.27
  %143 = load double, double* %arrayidx212.i.28, align 8, !tbaa !2
  %mul213.i.28 = fmul double %142, %143
  %sub218.i.28 = fsub double %sub218.i.27, %mul213.i.28
  store double %sub218.i.28, double* %arrayidx217.i, align 8, !tbaa !2
  %144 = load double, double* %arrayidx208.i.29, align 8, !tbaa !2
  %arrayidx212.i.29 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv77.i, i64 %indvars.iv.next73.i.28
  %145 = load double, double* %arrayidx212.i.29, align 8, !tbaa !2
  %mul213.i.29 = fmul double %144, %145
  %sub218.i.29 = fsub double %sub218.i.28, %mul213.i.29
  store double %sub218.i.29, double* %arrayidx217.i, align 8, !tbaa !2
  %146 = load double, double* %arrayidx208.i.30, align 8, !tbaa !2
  %arrayidx212.i.30 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv77.i, i64 %indvars.iv.next73.i.29
  %147 = load double, double* %arrayidx212.i.30, align 8, !tbaa !2
  %mul213.i.30 = fmul double %146, %147
  %sub218.i.30 = fsub double %sub218.i.29, %mul213.i.30
  store double %sub218.i.30, double* %arrayidx217.i, align 8, !tbaa !2
  %148 = load double, double* %arrayidx208.i.31, align 8, !tbaa !2
  %arrayidx212.i.31 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv77.i, i64 %indvars.iv.next73.i.30
  %149 = load double, double* %arrayidx212.i.31, align 8, !tbaa !2
  %mul213.i.31 = fmul double %148, %149
  %sub218.i.31 = fsub double %sub218.i.30, %mul213.i.31
  store double %sub218.i.31, double* %arrayidx217.i, align 8, !tbaa !2
  %indvars.iv.next78.i = add nsw i64 %indvars.iv77.i, 1
  %cmp197.not.not.i = icmp slt i64 %indvars.iv77.i, %85
  br i1 %cmp197.not.not.i, label %for.body198.i, label %for.inc225.i, !llvm.loop !17

for.inc225.i:                                     ; preds = %for.body198.i, %for.cond185.preheader.i
  %indvars.iv.next84.i = add nsw i64 %indvars.iv83.i, 1
  %cmp182.not.not.i = icmp slt i64 %indvars.iv83.i, %65
  br i1 %cmp182.not.not.i, label %for.cond185.preheader.i, label %if.end228.i, !llvm.loop !18

if.end228.i:                                      ; preds = %for.inc225.i, %if.end.i
  %add229.i = add i64 %indvars.iv, %indvars.iv115.i
  %150 = and i64 %add229.i, 4294967295
  %cmp230.i = icmp ne i64 %indvars.iv122.i, %150
  %brmerge.i = or i1 %cmp73.not.i, %cmp230.i
  %brmerge51.i = or i1 %cmp95.not18.i, %brmerge.i
  br i1 %brmerge51.i, label %if.end283.i, label %for.cond258.preheader.i

for.cond258.preheader.i:                          ; preds = %if.end228.i, %for.inc280.i
  %indvars.iv88.i = phi i64 [ %indvars.iv.next89.i, %for.inc280.i ], [ %indvars.iv66.i, %if.end228.i ]
  %arrayidx275.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv88.i, i64 %indvars.iv88.i
  %.pre135.i = load double, double* %arrayidx275.i, align 8, !tbaa !2
  br label %for.body262.i

for.body262.i:                                    ; preds = %for.body262.i, %for.cond258.preheader.i
  %151 = phi double [ %.pre135.i, %for.cond258.preheader.i ], [ %sub276.i, %for.body262.i ]
  %indvars.iv86.i = phi i64 [ %indvars.iv113.in.i, %for.cond258.preheader.i ], [ %indvars.iv.next87.i, %for.body262.i ]
  %arrayidx266.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv88.i, i64 %indvars.iv86.i
  %152 = load double, double* %arrayidx266.i, align 8, !tbaa !2
  %mul271.i = fmul double %152, %152
  %sub276.i = fsub double %151, %mul271.i
  store double %sub276.i, double* %arrayidx275.i, align 8, !tbaa !2
  %indvars.iv.next87.i = add nsw i64 %indvars.iv86.i, 1
  %cmp261.not.not.i = icmp slt i64 %indvars.iv86.i, %66
  br i1 %cmp261.not.not.i, label %for.body262.i, label %for.inc280.i, !llvm.loop !19

for.inc280.i:                                     ; preds = %for.body262.i
  %indvars.iv.next89.i = add nsw i64 %indvars.iv88.i, 1
  %cmp255.not.not.i = icmp slt i64 %indvars.iv88.i, %65
  br i1 %cmp255.not.not.i, label %for.cond258.preheader.i, label %if.end283.i, !llvm.loop !20

if.end283.i:                                      ; preds = %for.inc280.i, %if.end228.i
  %153 = shl nuw nsw i64 %indvars.iv, 1
  %cmp288.i = icmp eq i64 %indvars.iv122.i, %153
  %or.cond1.i = and i1 %cmp285.i, %cmp288.i
  %or.cond2.i = and i1 %cmp290.i, %or.cond1.i
  br i1 %or.cond2.i, label %if.then330.i, label %if.end395.i

if.then330.i:                                     ; preds = %if.end283.i
  %154 = load double, double* %arrayidx297.i, align 8, !tbaa !2
  %call.i15 = tail call double @sqrt(double %154) #10
  store double %call.i15, double* %arrayidx297.i, align 8, !tbaa !2
  %155 = load double, double* %arrayidx343.i, align 8, !tbaa !2
  %div344.i = fdiv double %155, %call.i15
  store double %div344.i, double* %arrayidx343.i, align 8, !tbaa !2
  %mul363.i = fmul double %div344.i, %div344.i
  %156 = load double, double* %arrayidx371.i, align 8, !tbaa !2
  %sub372.i = fsub double %156, %mul363.i
  store double %sub372.i, double* %arrayidx371.i, align 8, !tbaa !2
  %call385.i = tail call double @sqrt(double %sub372.i) #10
  store double %call385.i, double* %arrayidx371.i, align 8, !tbaa !2
  br label %if.end395.i

if.end395.i:                                      ; preds = %if.then330.i, %if.end283.i
  %157 = and i1 %cmp416.not37.i, %or.cond1.i
  %brmerge.demorgan = and i1 %157, %cmp290.i
  br i1 %brmerge.demorgan, label %for.body417.i.us, label %for.inc537.i

for.body417.i.us:                                 ; preds = %if.end395.i, %if.then522.i.us
  %indvars.iv104.i.us = phi i64 [ %indvars.iv.next105.i.us, %if.then522.i.us ], [ %indvars.iv102.i, %if.end395.i ]
  %158 = load double, double* %arrayidx297.i, align 8, !tbaa !2
  %arrayidx431.i.us = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv104.i.us, i64 %45
  %159 = load double, double* %arrayidx431.i.us, align 8, !tbaa !2
  %div432.i.us = fdiv double %159, %158
  store double %div432.i.us, double* %arrayidx431.i.us, align 8, !tbaa !2
  %mul447.i.us = fmul double %div432.i.us, %div432.i.us
  %arrayidx451.i.us = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv104.i.us, i64 %indvars.iv104.i.us
  %160 = load double, double* %arrayidx451.i.us, align 8, !tbaa !2
  %sub452.i.us = fsub double %160, %mul447.i.us
  store double %sub452.i.us, double* %arrayidx451.i.us, align 8, !tbaa !2
  %cmp458.not.not32.i.us = icmp ult i64 %46, %indvars.iv104.i.us
  br i1 %cmp458.not.not32.i.us, label %for.cond461.preheader.us.i.us.preheader, label %if.then522.i.us

for.cond461.preheader.us.i.us.preheader:          ; preds = %for.body417.i.us
  %arrayidx471.us.us.i.us.prol = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv104.i.us, i64 %indvars.iv90.i
  br label %for.cond461.preheader.us.i.us

for.cond461.preheader.us.i.us:                    ; preds = %for.cond461.preheader.us.i.us.preheader, %for.end485.us.i.us
  %indvar30 = phi i64 [ 0, %for.cond461.preheader.us.i.us.preheader ], [ %indvar.next31, %for.end485.us.i.us ]
  %indvars.iv98.i.us = phi i64 [ %indvars.iv96.i, %for.cond461.preheader.us.i.us.preheader ], [ %indvars.iv.next99.i.us, %for.end485.us.i.us ]
  %cmp463.not.not29.us.i.us = icmp ult i64 %45, %indvars.iv98.i.us
  %arrayidx480.us.i.us = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv104.i.us, i64 %indvars.iv98.i.us
  %.pre136.i.us = load double, double* %arrayidx480.us.i.us, align 8, !tbaa !2
  br i1 %cmp463.not.not29.us.i.us, label %for.body464.us.us.i.us.preheader, label %for.end485.us.i.us

for.body464.us.us.i.us.preheader:                 ; preds = %for.cond461.preheader.us.i.us
  %161 = and i64 %indvar30, 1
  %lcmp.mod33.not.not = icmp eq i64 %161, 0
  br i1 %lcmp.mod33.not.not, label %for.body464.us.us.i.us.prol, label %for.body464.us.us.i.us.prol.loopexit

for.body464.us.us.i.us.prol:                      ; preds = %for.body464.us.us.i.us.preheader
  %162 = load double, double* %arrayidx471.us.us.i.us.prol, align 8, !tbaa !2
  %arrayidx475.us.us.i.us.prol = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv98.i.us, i64 %indvars.iv90.i
  %163 = load double, double* %arrayidx475.us.us.i.us.prol, align 8, !tbaa !2
  %mul476.us.us.i.us.prol = fmul double %162, %163
  %sub481.us.us.i.us.prol = fsub double %.pre136.i.us, %mul476.us.us.i.us.prol
  store double %sub481.us.us.i.us.prol, double* %arrayidx480.us.i.us, align 8, !tbaa !2
  br label %for.body464.us.us.i.us.prol.loopexit

for.body464.us.us.i.us.prol.loopexit:             ; preds = %for.body464.us.us.i.us.prol, %for.body464.us.us.i.us.preheader
  %sub481.us.us.i.us.lcssa.unr.ph = phi double [ %sub481.us.us.i.us.prol, %for.body464.us.us.i.us.prol ], [ undef, %for.body464.us.us.i.us.preheader ]
  %.unr34.ph = phi double [ %sub481.us.us.i.us.prol, %for.body464.us.us.i.us.prol ], [ %.pre136.i.us, %for.body464.us.us.i.us.preheader ]
  %indvars.iv92.i.us.unr.ph = phi i64 [ %indvars.iv.next93.i.us.prol, %for.body464.us.us.i.us.prol ], [ %indvars.iv90.i, %for.body464.us.us.i.us.preheader ]
  %164 = icmp eq i64 %indvar30, 0
  br i1 %164, label %for.end485.us.i.us, label %for.body464.us.us.i.us

for.body464.us.us.i.us:                           ; preds = %for.body464.us.us.i.us.prol.loopexit, %for.body464.us.us.i.us
  %165 = phi double [ %sub481.us.us.i.us.1, %for.body464.us.us.i.us ], [ %.unr34.ph, %for.body464.us.us.i.us.prol.loopexit ]
  %indvars.iv92.i.us = phi i64 [ %indvars.iv.next93.i.us.1, %for.body464.us.us.i.us ], [ %indvars.iv92.i.us.unr.ph, %for.body464.us.us.i.us.prol.loopexit ]
  %arrayidx471.us.us.i.us = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv104.i.us, i64 %indvars.iv92.i.us
  %166 = load double, double* %arrayidx471.us.us.i.us, align 8, !tbaa !2
  %arrayidx475.us.us.i.us = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv98.i.us, i64 %indvars.iv92.i.us
  %167 = load double, double* %arrayidx475.us.us.i.us, align 8, !tbaa !2
  %mul476.us.us.i.us = fmul double %166, %167
  %sub481.us.us.i.us = fsub double %165, %mul476.us.us.i.us
  store double %sub481.us.us.i.us, double* %arrayidx480.us.i.us, align 8, !tbaa !2
  %indvars.iv.next93.i.us = add nuw nsw i64 %indvars.iv92.i.us, 1
  %arrayidx471.us.us.i.us.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv104.i.us, i64 %indvars.iv.next93.i.us
  %168 = load double, double* %arrayidx471.us.us.i.us.1, align 8, !tbaa !2
  %arrayidx475.us.us.i.us.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv98.i.us, i64 %indvars.iv.next93.i.us
  %169 = load double, double* %arrayidx475.us.us.i.us.1, align 8, !tbaa !2
  %mul476.us.us.i.us.1 = fmul double %168, %169
  %sub481.us.us.i.us.1 = fsub double %sub481.us.us.i.us, %mul476.us.us.i.us.1
  store double %sub481.us.us.i.us.1, double* %arrayidx480.us.i.us, align 8, !tbaa !2
  %indvars.iv.next93.i.us.1 = add nuw nsw i64 %indvars.iv92.i.us, 2
  %exitcond95.not.i.us.1 = icmp eq i64 %indvars.iv.next93.i.us.1, %indvars.iv98.i.us
  br i1 %exitcond95.not.i.us.1, label %for.end485.us.i.us, label %for.body464.us.us.i.us, !llvm.loop !21

for.end485.us.i.us:                               ; preds = %for.body464.us.us.i.us.prol.loopexit, %for.body464.us.us.i.us, %for.cond461.preheader.us.i.us
  %170 = phi double [ %.pre136.i.us, %for.cond461.preheader.us.i.us ], [ %sub481.us.us.i.us.lcssa.unr.ph, %for.body464.us.us.i.us.prol.loopexit ], [ %sub481.us.us.i.us.1, %for.body464.us.us.i.us ]
  %arrayidx492.us.i.us = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv98.i.us, i64 %indvars.iv98.i.us
  %171 = load double, double* %arrayidx492.us.i.us, align 8, !tbaa !2
  %arrayidx496.us.i.us = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv104.i.us, i64 %indvars.iv98.i.us
  %div497.us.i.us = fdiv double %170, %171
  store double %div497.us.i.us, double* %arrayidx496.us.i.us, align 8, !tbaa !2
  %mul510.us.i.us = fmul double %div497.us.i.us, %div497.us.i.us
  %172 = load double, double* %arrayidx451.i.us, align 8, !tbaa !2
  %sub515.us.i.us = fsub double %172, %mul510.us.i.us
  store double %sub515.us.i.us, double* %arrayidx451.i.us, align 8, !tbaa !2
  %indvars.iv.next99.i.us = add nuw nsw i64 %indvars.iv98.i.us, 1
  %exitcond101.not.i.us = icmp eq i64 %indvars.iv.next99.i.us, %indvars.iv104.i.us
  %indvar.next31 = add i64 %indvar30, 1
  br i1 %exitcond101.not.i.us, label %if.then522.i.us, label %for.cond461.preheader.us.i.us, !llvm.loop !22

if.then522.i.us:                                  ; preds = %for.end485.us.i.us, %for.body417.i.us
  %173 = phi double [ %sub452.i.us, %for.body417.i.us ], [ %sub515.us.i.us, %for.end485.us.i.us ]
  %call527.i.us = tail call double @sqrt(double %173) #10
  store double %call527.i.us, double* %arrayidx451.i.us, align 8, !tbaa !2
  %indvars.iv.next105.i.us = add nuw nsw i64 %indvars.iv104.i.us, 1
  %cmp416.not.not.i.us = icmp ult i64 %indvars.iv104.i.us, %49
  br i1 %cmp416.not.not.i.us, label %for.body417.i.us, label %for.inc537.i, !llvm.loop !23

for.inc537.i:                                     ; preds = %if.then522.i.us, %if.end395.i
  %indvars.iv.next71.i = add nuw nsw i64 %indvars.iv70.i, 32
  %exitcond112.not.i = icmp eq i64 %indvars.iv.next, %68
  br i1 %exitcond112.not.i, label %for.inc540.i, label %for.body70.i, !llvm.loop !24

for.inc540.i:                                     ; preds = %for.inc537.i, %for.cond67.preheader.i
  %indvars.iv.next116.i = add nsw i64 %indvars.iv115.i, 1
  %indvars.iv.next57.i = add nsw i64 %indvars.iv56.i, 32
  %indvars.iv.next67.i = add nsw i64 %indvars.iv66.i, -32
  %indvars.iv.next80.i = add i32 %indvars.iv79.i, -32
  %indvars.iv.next82.i = add nsw i32 %indvars.iv81.i, 32
  %indvars.iv.next111.i = add i32 %indvars.iv110.i, -1
  %exitcond.not = icmp eq i64 %indvars.iv115.i, %smax
  br i1 %exitcond.not, label %for.inc543.i, label %for.cond67.preheader.i, !llvm.loop !25

for.inc543.i:                                     ; preds = %for.inc540.i, %cond.false60.i
  %indvars.iv.next123.i = add nuw nsw i64 %indvars.iv122.i, 1
  %inc544.i = add nuw nsw i32 %t1.047.i, 1
  %indvars.iv.next65.i = add nuw nsw i32 %indvars.iv64.i, 32
  %indvars.iv.next91.i = add nuw nsw i64 %indvars.iv90.i, 16
  %indvars.iv.next97.i = add nuw nsw i64 %indvars.iv96.i, 16
  %indvars.iv.next103.i = add nuw nsw i64 %indvars.iv102.i, 16
  %indvars.iv.next109.i = add nuw nsw i32 %indvars.iv108.i, 1
  %exitcond132.not.i = icmp eq i64 %indvars.iv.next123.i, 250
  br i1 %exitcond132.not.i, label %kernel_cholesky.exit, label %for.body.i, !llvm.loop !26

kernel_cholesky.exit:                             ; preds = %for.inc543.i
  tail call void (...) @polybench_timer_stop() #10
  tail call void (...) @polybench_timer_print() #10
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_cholesky.exit
  %174 = load i8*, i8** %argv, align 8, !tbaa !27
  %strcmpload = load i8, i8* %174, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %175 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !27
  %176 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %175) #11
  %177 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !27
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %177, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #11
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.inc10.i, %if.then
  %indvars.iv8.i = phi i64 [ 0, %if.then ], [ %indvars.iv.next9.i, %for.inc10.i ]
  %indvars.iv6.i = phi i64 [ 1, %if.then ], [ %indvars.iv.next7.i, %for.inc10.i ]
  %178 = mul nuw nsw i64 %indvars.iv8.i, 4000
  br label %for.body4.i

for.body4.i:                                      ; preds = %if.end.i21, %for.cond2.preheader.i
  %indvars.iv.i17 = phi i64 [ 0, %for.cond2.preheader.i ], [ %indvars.iv.next.i19, %if.end.i21 ]
  %179 = add nuw nsw i64 %indvars.iv.i17, %178
  %180 = trunc i64 %179 to i32
  %rem.i18 = urem i32 %180, 20
  %cmp5.i = icmp eq i32 %rem.i18, 0
  br i1 %cmp5.i, label %if.then.i, label %if.end.i21

if.then.i:                                        ; preds = %for.body4.i
  %181 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !27
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %181) #10
  br label %if.end.i21

if.end.i21:                                       ; preds = %if.then.i, %for.body4.i
  %182 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !27
  %arrayidx8.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv8.i, i64 %indvars.iv.i17
  %183 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %182, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %183) #11
  %indvars.iv.next.i19 = add nuw nsw i64 %indvars.iv.i17, 1
  %exitcond.not.i20 = icmp eq i64 %indvars.iv.next.i19, %indvars.iv6.i
  br i1 %exitcond.not.i20, label %for.inc10.i, label %for.body4.i, !llvm.loop !29

for.inc10.i:                                      ; preds = %if.end.i21
  %indvars.iv.next9.i = add nuw nsw i64 %indvars.iv8.i, 1
  %indvars.iv.next7.i = add nuw nsw i64 %indvars.iv6.i, 1
  %exitcond11.not.i = icmp eq i64 %indvars.iv.next9.i, 4000
  br i1 %exitcond11.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !30

print_array.exit:                                 ; preds = %for.inc10.i
  %184 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !27
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %184, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #11
  %185 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !27
  %186 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %185) #11
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_cholesky.exit
  tail call void @free(i8* %call.i) #10
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

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #9

attributes #0 = { nounwind uwtable "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = !{!28, !28, i64 0}
!28 = !{!"any pointer", !4, i64 0}
!29 = distinct !{!29, !7}
!30 = distinct !{!30, !7}

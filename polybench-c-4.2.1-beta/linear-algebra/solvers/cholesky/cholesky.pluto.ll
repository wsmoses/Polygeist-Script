; ModuleID = 'cholesky.pluto.c'
source_filename = "cholesky.pluto.c"
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
  %broadcast.splatinsert21 = insertelement <2 x double> poison, double %13, i32 0
  %broadcast.splat22 = shufflevector <2 x double> %broadcast.splatinsert21, <2 x double> poison, <2 x i32> zeroinitializer
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
  %30 = fmul <2 x double> %broadcast.splat22, %28
  %31 = getelementptr inbounds [4000 x [4000 x double]], [4000 x [4000 x double]]* %12, i64 0, i64 %indvars.iv30.i, i64 %index
  %32 = bitcast double* %31 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %32, align 8, !tbaa !2
  %33 = getelementptr inbounds double, double* %31, i64 2
  %34 = bitcast double* %33 to <2 x double>*
  %wide.load23 = load <2 x double>, <2 x double>* %34, align 8, !tbaa !2
  %35 = fadd <2 x double> %wide.load, %29
  %36 = fadd <2 x double> %wide.load23, %30
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
  br label %for.cond9.preheader.i

for.cond9.preheader.i:                            ; preds = %for.inc418.i, %init_array.exit
  %indvars.iv120.i = phi i64 [ 0, %init_array.exit ], [ %indvars.iv.next121.i, %for.inc418.i ]
  %indvars.iv118.i = phi i64 [ 32, %init_array.exit ], [ %indvars.iv.next119.i, %for.inc418.i ]
  %indvars.iv116.i = phi i64 [ 1, %init_array.exit ], [ %indvars.iv.next117.i, %for.inc418.i ]
  %indvars.iv93.i = phi i64 [ 2, %init_array.exit ], [ %indvars.iv.next94.i, %for.inc418.i ]
  %indvars.iv87.i = phi i64 [ 1, %init_array.exit ], [ %indvars.iv.next88.i, %for.inc418.i ]
  %indvars.iv68.i = phi i32 [ 0, %init_array.exit ], [ %indvars.iv.next69.i, %for.inc418.i ]
  %indvars.iv51.i = phi i64 [ 0, %init_array.exit ], [ %indvars.iv.next52.i, %for.inc418.i ]
  %42 = shl nsw i64 %indvars.iv120.i, 5
  %43 = or i64 %42, 31
  %arrayidx213.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %42, i64 %42
  %44 = or i64 %42, 1
  %arrayidx253.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %44, i64 %42
  %arrayidx277.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %44, i64 %44
  %indvars.iv.next84.i.prol = or i64 %indvars.iv51.i, 1
  br label %for.cond12.preheader.i

for.cond12.preheader.i:                           ; preds = %for.inc415.i, %for.cond9.preheader.i
  %indvars.iv106.i = phi i64 [ 0, %for.cond9.preheader.i ], [ %indvars.iv.next107.i, %for.inc415.i ]
  %indvars.iv104.i = phi i64 [ 32, %for.cond9.preheader.i ], [ %indvars.iv.next105.i, %for.inc415.i ]
  %indvars.iv70.i = phi i32 [ 1, %for.cond9.preheader.i ], [ %indvars.iv.next71.i, %for.inc415.i ]
  %indvars.iv43.i = phi i64 [ 1, %for.cond9.preheader.i ], [ %indvars.iv.next44.i, %for.inc415.i ]
  %indvars.iv.i11 = phi i64 [ 0, %for.cond9.preheader.i ], [ %indvars.iv.next.i16, %for.inc415.i ]
  %umax.i = tail call i32 @llvm.umax.i32(i32 %indvars.iv68.i, i32 %indvars.iv70.i) #10
  %45 = zext i32 %umax.i to i64
  %cmp16.not.not.i = icmp ugt i64 %indvars.iv120.i, %indvars.iv106.i
  %46 = shl nsw i64 %indvars.iv106.i, 5
  %arrayidx36.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %46, i64 %46
  %47 = or i64 %46, 1
  %cmp90.i = icmp ugt i64 %42, %47
  %cond97.v.i = select i1 %cmp90.i, i64 %42, i64 %47
  %48 = and i64 %cond97.v.i, 4294967295
  %cmp110.not19.i = icmp ugt i64 %48, %43
  %49 = or i64 %46, 31
  %cmp16.not.not.not.i = xor i1 %cmp16.not.not.i, true
  %cmp204.i = icmp ne i64 %indvars.iv120.i, %indvars.iv106.i
  %indvars.iv.next76.i = or i64 %indvars.iv.i11, 1
  %indvars.iv.next76.1.i = add nuw nsw i64 %indvars.iv.next76.i, 1
  %indvars.iv.next76.2.i = or i64 %indvars.iv.i11, 3
  %indvars.iv.next76.3.i = add nuw nsw i64 %indvars.iv.next76.2.i, 1
  %indvars.iv.next76.4.i = add nuw nsw i64 %indvars.iv.next76.2.i, 2
  %indvars.iv.next76.5.i = add nuw nsw i64 %indvars.iv.next76.2.i, 3
  %indvars.iv.next76.6.i = or i64 %indvars.iv.i11, 7
  %indvars.iv.next76.7.i = add nuw nsw i64 %indvars.iv.next76.6.i, 1
  %indvars.iv.next76.8.i = add nuw nsw i64 %indvars.iv.next76.6.i, 2
  %indvars.iv.next76.9.i = add nuw nsw i64 %indvars.iv.next76.6.i, 3
  %indvars.iv.next76.10.i = add nuw nsw i64 %indvars.iv.next76.6.i, 4
  %indvars.iv.next76.11.i = add nuw nsw i64 %indvars.iv.next76.6.i, 5
  %indvars.iv.next76.12.i = add nuw nsw i64 %indvars.iv.next76.6.i, 6
  %indvars.iv.next76.13.i = add nuw nsw i64 %indvars.iv.next76.6.i, 7
  %indvars.iv.next76.14.i = or i64 %indvars.iv.i11, 15
  %indvars.iv.next76.15.i = add nuw nsw i64 %indvars.iv.next76.14.i, 1
  %indvars.iv.next76.16.i = add nuw nsw i64 %indvars.iv.next76.14.i, 2
  %indvars.iv.next76.17.i = add nuw nsw i64 %indvars.iv.next76.14.i, 3
  %indvars.iv.next76.18.i = add nuw nsw i64 %indvars.iv.next76.14.i, 4
  %indvars.iv.next76.19.i = add nuw nsw i64 %indvars.iv.next76.14.i, 5
  %indvars.iv.next76.20.i = add nuw nsw i64 %indvars.iv.next76.14.i, 6
  %indvars.iv.next76.21.i = add nuw nsw i64 %indvars.iv.next76.14.i, 7
  %indvars.iv.next76.22.i = add nuw nsw i64 %indvars.iv.next76.14.i, 8
  %indvars.iv.next76.23.i = add nuw nsw i64 %indvars.iv.next76.14.i, 9
  %indvars.iv.next76.24.i = add nuw nsw i64 %indvars.iv.next76.14.i, 10
  %indvars.iv.next76.25.i = add nuw nsw i64 %indvars.iv.next76.14.i, 11
  %indvars.iv.next76.26.i = add nuw nsw i64 %indvars.iv.next76.14.i, 12
  %indvars.iv.next76.27.i = add nuw nsw i64 %indvars.iv.next76.14.i, 13
  %indvars.iv.next76.28.i = add nuw nsw i64 %indvars.iv.next76.14.i, 14
  %indvars.iv.next76.29.i = add nuw nsw i64 %indvars.iv.next76.14.i, 15
  %indvars.iv.next76.30.i = or i64 %indvars.iv.i11, 31
  %indvars.iv.next42.i.prol = or i64 %indvars.iv.i11, 1
  br label %for.body14.i

for.body14.i:                                     ; preds = %for.inc412.i, %for.cond12.preheader.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc412.i ], [ 0, %for.cond12.preheader.i ]
  %indvars.iv58.i = phi i64 [ %indvars.iv.next59.i, %for.inc412.i ], [ 0, %for.cond12.preheader.i ]
  %cmp17.i = icmp eq i64 %indvars.iv106.i, %indvars.iv
  %or.cond.i = and i1 %cmp16.not.not.i, %cmp17.i
  br i1 %or.cond.i, label %for.cond51.preheader.preheader.i, label %if.end.i

for.cond51.preheader.preheader.i:                 ; preds = %for.body14.i, %for.inc81.i
  %indvars.iv53.i = phi i64 [ %indvars.iv.next54.i, %for.inc81.i ], [ %indvars.iv51.i, %for.body14.i ]
  %50 = load double, double* %arrayidx36.i, align 8, !tbaa !2
  %arrayidx41.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv53.i, i64 %46
  %51 = load double, double* %arrayidx41.i, align 8, !tbaa !2
  %div42.i = fdiv double %51, %50
  store double %div42.i, double* %arrayidx41.i, align 8, !tbaa !2
  %arrayidx58.i.prol = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv53.i, i64 %indvars.iv.i11
  br label %for.cond51.preheader.i

for.cond51.preheader.i:                           ; preds = %for.end.i14, %for.cond51.preheader.preheader.i
  %indvar = phi i64 [ %indvar.next, %for.end.i14 ], [ 0, %for.cond51.preheader.preheader.i ]
  %indvars.iv45.i = phi i64 [ %indvars.iv.next46.i, %for.end.i14 ], [ %indvars.iv43.i, %for.cond51.preheader.preheader.i ]
  %cmp53.not.not9.i = icmp ult i64 %46, %indvars.iv45.i
  %arrayidx67.i12 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv53.i, i64 %indvars.iv45.i
  %.pre.i = load double, double* %arrayidx67.i12, align 8, !tbaa !2
  br i1 %cmp53.not.not9.i, label %for.body54.i.preheader, label %for.end.i14

for.body54.i.preheader:                           ; preds = %for.cond51.preheader.i
  %52 = and i64 %indvar, 1
  %lcmp.mod25.not.not = icmp eq i64 %52, 0
  br i1 %lcmp.mod25.not.not, label %for.body54.i.prol, label %for.body54.i.prol.loopexit

for.body54.i.prol:                                ; preds = %for.body54.i.preheader
  %53 = load double, double* %arrayidx58.i.prol, align 8, !tbaa !2
  %arrayidx62.i.prol = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv45.i, i64 %indvars.iv.i11
  %54 = load double, double* %arrayidx62.i.prol, align 8, !tbaa !2
  %mul63.i.prol = fmul double %53, %54
  %sub68.i.prol = fsub double %.pre.i, %mul63.i.prol
  store double %sub68.i.prol, double* %arrayidx67.i12, align 8, !tbaa !2
  br label %for.body54.i.prol.loopexit

for.body54.i.prol.loopexit:                       ; preds = %for.body54.i.prol, %for.body54.i.preheader
  %sub68.i.lcssa.unr.ph = phi double [ %sub68.i.prol, %for.body54.i.prol ], [ undef, %for.body54.i.preheader ]
  %.unr.ph = phi double [ %sub68.i.prol, %for.body54.i.prol ], [ %.pre.i, %for.body54.i.preheader ]
  %indvars.iv41.i.unr.ph = phi i64 [ %indvars.iv.next42.i.prol, %for.body54.i.prol ], [ %indvars.iv.i11, %for.body54.i.preheader ]
  %55 = icmp eq i64 %indvar, 0
  br i1 %55, label %for.end.i14, label %for.body54.i

for.body54.i:                                     ; preds = %for.body54.i.prol.loopexit, %for.body54.i
  %56 = phi double [ %sub68.i.1, %for.body54.i ], [ %.unr.ph, %for.body54.i.prol.loopexit ]
  %indvars.iv41.i = phi i64 [ %indvars.iv.next42.i.1, %for.body54.i ], [ %indvars.iv41.i.unr.ph, %for.body54.i.prol.loopexit ]
  %arrayidx58.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv53.i, i64 %indvars.iv41.i
  %57 = load double, double* %arrayidx58.i, align 8, !tbaa !2
  %arrayidx62.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv45.i, i64 %indvars.iv41.i
  %58 = load double, double* %arrayidx62.i, align 8, !tbaa !2
  %mul63.i = fmul double %57, %58
  %sub68.i = fsub double %56, %mul63.i
  store double %sub68.i, double* %arrayidx67.i12, align 8, !tbaa !2
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 1
  %arrayidx58.i.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv53.i, i64 %indvars.iv.next42.i
  %59 = load double, double* %arrayidx58.i.1, align 8, !tbaa !2
  %arrayidx62.i.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv45.i, i64 %indvars.iv.next42.i
  %60 = load double, double* %arrayidx62.i.1, align 8, !tbaa !2
  %mul63.i.1 = fmul double %59, %60
  %sub68.i.1 = fsub double %sub68.i, %mul63.i.1
  store double %sub68.i.1, double* %arrayidx67.i12, align 8, !tbaa !2
  %indvars.iv.next42.i.1 = add nuw nsw i64 %indvars.iv41.i, 2
  %exitcond.not.i13.1 = icmp eq i64 %indvars.iv.next42.i.1, %indvars.iv45.i
  br i1 %exitcond.not.i13.1, label %for.end.i14, label %for.body54.i, !llvm.loop !14

for.end.i14:                                      ; preds = %for.body54.i.prol.loopexit, %for.body54.i, %for.cond51.preheader.i
  %61 = phi double [ %.pre.i, %for.cond51.preheader.i ], [ %sub68.i.lcssa.unr.ph, %for.body54.i.prol.loopexit ], [ %sub68.i.1, %for.body54.i ]
  %arrayidx72.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv45.i, i64 %indvars.iv45.i
  %62 = load double, double* %arrayidx72.i, align 8, !tbaa !2
  %arrayidx76.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv53.i, i64 %indvars.iv45.i
  %div77.i = fdiv double %61, %62
  store double %div77.i, double* %arrayidx76.i, align 8, !tbaa !2
  %indvars.iv.next46.i = add nuw nsw i64 %indvars.iv45.i, 1
  %exitcond50.not.i = icmp eq i64 %indvars.iv.next46.i, %indvars.iv104.i
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond50.not.i, label %for.inc81.i, label %for.cond51.preheader.i, !llvm.loop !15

for.inc81.i:                                      ; preds = %for.end.i14
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1
  %exitcond57.not.i = icmp eq i64 %indvars.iv.next54.i, %indvars.iv118.i
  br i1 %exitcond57.not.i, label %if.end.i, label %for.cond51.preheader.preheader.i, !llvm.loop !16

if.end.i:                                         ; preds = %for.inc81.i, %for.body14.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %cmp85.not.not.i = icmp ule i64 %indvars.iv106.i, %indvars.iv
  %brmerge39.i = or i1 %cmp110.not19.i, %cmp85.not.not.i
  br i1 %brmerge39.i, label %if.end156.i, label %for.cond113.preheader.i.preheader

for.cond113.preheader.i.preheader:                ; preds = %if.end.i
  %indvars.iv.next61.i = or i64 %indvars.iv58.i, 1
  %indvars.iv.next61.i.1 = add nuw nsw i64 %indvars.iv.next61.i, 1
  %indvars.iv.next61.i.2 = or i64 %indvars.iv58.i, 3
  %indvars.iv.next61.i.3 = add nuw nsw i64 %indvars.iv.next61.i.2, 1
  %indvars.iv.next61.i.4 = add nuw nsw i64 %indvars.iv.next61.i.2, 2
  %indvars.iv.next61.i.5 = add nuw nsw i64 %indvars.iv.next61.i.2, 3
  %indvars.iv.next61.i.6 = or i64 %indvars.iv58.i, 7
  %indvars.iv.next61.i.7 = add nuw nsw i64 %indvars.iv.next61.i.6, 1
  %indvars.iv.next61.i.8 = add nuw nsw i64 %indvars.iv.next61.i.6, 2
  %indvars.iv.next61.i.9 = add nuw nsw i64 %indvars.iv.next61.i.6, 3
  %indvars.iv.next61.i.10 = add nuw nsw i64 %indvars.iv.next61.i.6, 4
  %indvars.iv.next61.i.11 = add nuw nsw i64 %indvars.iv.next61.i.6, 5
  %indvars.iv.next61.i.12 = add nuw nsw i64 %indvars.iv.next61.i.6, 6
  %indvars.iv.next61.i.13 = add nuw nsw i64 %indvars.iv.next61.i.6, 7
  %indvars.iv.next61.i.14 = or i64 %indvars.iv58.i, 15
  %indvars.iv.next61.i.15 = add nuw nsw i64 %indvars.iv.next61.i.14, 1
  %indvars.iv.next61.i.16 = add nuw nsw i64 %indvars.iv.next61.i.14, 2
  %indvars.iv.next61.i.17 = add nuw nsw i64 %indvars.iv.next61.i.14, 3
  %indvars.iv.next61.i.18 = add nuw nsw i64 %indvars.iv.next61.i.14, 4
  %indvars.iv.next61.i.19 = add nuw nsw i64 %indvars.iv.next61.i.14, 5
  %indvars.iv.next61.i.20 = add nuw nsw i64 %indvars.iv.next61.i.14, 6
  %indvars.iv.next61.i.21 = add nuw nsw i64 %indvars.iv.next61.i.14, 7
  %indvars.iv.next61.i.22 = add nuw nsw i64 %indvars.iv.next61.i.14, 8
  %indvars.iv.next61.i.23 = add nuw nsw i64 %indvars.iv.next61.i.14, 9
  %indvars.iv.next61.i.24 = add nuw nsw i64 %indvars.iv.next61.i.14, 10
  %indvars.iv.next61.i.25 = add nuw nsw i64 %indvars.iv.next61.i.14, 11
  %indvars.iv.next61.i.26 = add nuw nsw i64 %indvars.iv.next61.i.14, 12
  %indvars.iv.next61.i.27 = add nuw nsw i64 %indvars.iv.next61.i.14, 13
  %indvars.iv.next61.i.28 = add nuw nsw i64 %indvars.iv.next61.i.14, 14
  %indvars.iv.next61.i.29 = add nuw nsw i64 %indvars.iv.next61.i.14, 15
  %indvars.iv.next61.i.30 = or i64 %indvars.iv58.i, 31
  br label %for.cond113.preheader.i

for.cond113.preheader.i:                          ; preds = %for.cond113.preheader.i.preheader, %for.inc153.i
  %indvars.iv72.i = phi i64 [ %indvars.iv.next73.i, %for.inc153.i ], [ %45, %for.cond113.preheader.i.preheader ]
  %63 = add nsw i64 %indvars.iv72.i, -1
  %cmp117.i = icmp ult i64 %49, %63
  %cond124.v.i = select i1 %cmp117.i, i64 %49, i64 %63
  %sext.i = shl i64 %cond124.v.i, 32
  %64 = ashr exact i64 %sext.i, 32
  %cmp125.not17.i = icmp ugt i64 %46, %64
  br i1 %cmp125.not17.i, label %for.inc153.i, label %for.body126.lr.ph.i

for.body126.lr.ph.i:                              ; preds = %for.cond113.preheader.i
  %65 = and i64 %cond124.v.i, 4294967295
  %arrayidx136.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv72.i, i64 %indvars.iv58.i
  %arrayidx136.i.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv72.i, i64 %indvars.iv.next61.i
  %arrayidx136.i.2 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv72.i, i64 %indvars.iv.next61.i.1
  %arrayidx136.i.3 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv72.i, i64 %indvars.iv.next61.i.2
  %arrayidx136.i.4 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv72.i, i64 %indvars.iv.next61.i.3
  %arrayidx136.i.5 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv72.i, i64 %indvars.iv.next61.i.4
  %arrayidx136.i.6 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv72.i, i64 %indvars.iv.next61.i.5
  %arrayidx136.i.7 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv72.i, i64 %indvars.iv.next61.i.6
  %arrayidx136.i.8 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv72.i, i64 %indvars.iv.next61.i.7
  %arrayidx136.i.9 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv72.i, i64 %indvars.iv.next61.i.8
  %arrayidx136.i.10 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv72.i, i64 %indvars.iv.next61.i.9
  %arrayidx136.i.11 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv72.i, i64 %indvars.iv.next61.i.10
  %arrayidx136.i.12 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv72.i, i64 %indvars.iv.next61.i.11
  %arrayidx136.i.13 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv72.i, i64 %indvars.iv.next61.i.12
  %arrayidx136.i.14 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv72.i, i64 %indvars.iv.next61.i.13
  %arrayidx136.i.15 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv72.i, i64 %indvars.iv.next61.i.14
  %arrayidx136.i.16 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv72.i, i64 %indvars.iv.next61.i.15
  %arrayidx136.i.17 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv72.i, i64 %indvars.iv.next61.i.16
  %arrayidx136.i.18 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv72.i, i64 %indvars.iv.next61.i.17
  %arrayidx136.i.19 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv72.i, i64 %indvars.iv.next61.i.18
  %arrayidx136.i.20 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv72.i, i64 %indvars.iv.next61.i.19
  %arrayidx136.i.21 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv72.i, i64 %indvars.iv.next61.i.20
  %arrayidx136.i.22 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv72.i, i64 %indvars.iv.next61.i.21
  %arrayidx136.i.23 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv72.i, i64 %indvars.iv.next61.i.22
  %arrayidx136.i.24 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv72.i, i64 %indvars.iv.next61.i.23
  %arrayidx136.i.25 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv72.i, i64 %indvars.iv.next61.i.24
  %arrayidx136.i.26 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv72.i, i64 %indvars.iv.next61.i.25
  %arrayidx136.i.27 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv72.i, i64 %indvars.iv.next61.i.26
  %arrayidx136.i.28 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv72.i, i64 %indvars.iv.next61.i.27
  %arrayidx136.i.29 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv72.i, i64 %indvars.iv.next61.i.28
  %arrayidx136.i.30 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv72.i, i64 %indvars.iv.next61.i.29
  %arrayidx136.i.31 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv72.i, i64 %indvars.iv.next61.i.30
  br label %for.body126.i

for.body126.i:                                    ; preds = %for.body126.i, %for.body126.lr.ph.i
  %indvars.iv66.i = phi i64 [ %indvars.iv.i11, %for.body126.lr.ph.i ], [ %indvars.iv.next67.i, %for.body126.i ]
  %arrayidx145.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv72.i, i64 %indvars.iv66.i
  %.pre137.i = load double, double* %arrayidx145.i, align 8, !tbaa !2
  %66 = load double, double* %arrayidx136.i, align 8, !tbaa !2
  %arrayidx140.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv66.i, i64 %indvars.iv58.i
  %67 = load double, double* %arrayidx140.i, align 8, !tbaa !2
  %mul141.i = fmul double %66, %67
  %sub146.i = fsub double %.pre137.i, %mul141.i
  store double %sub146.i, double* %arrayidx145.i, align 8, !tbaa !2
  %68 = load double, double* %arrayidx136.i.1, align 8, !tbaa !2
  %arrayidx140.i.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv66.i, i64 %indvars.iv.next61.i
  %69 = load double, double* %arrayidx140.i.1, align 8, !tbaa !2
  %mul141.i.1 = fmul double %68, %69
  %sub146.i.1 = fsub double %sub146.i, %mul141.i.1
  store double %sub146.i.1, double* %arrayidx145.i, align 8, !tbaa !2
  %70 = load double, double* %arrayidx136.i.2, align 8, !tbaa !2
  %arrayidx140.i.2 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv66.i, i64 %indvars.iv.next61.i.1
  %71 = load double, double* %arrayidx140.i.2, align 8, !tbaa !2
  %mul141.i.2 = fmul double %70, %71
  %sub146.i.2 = fsub double %sub146.i.1, %mul141.i.2
  store double %sub146.i.2, double* %arrayidx145.i, align 8, !tbaa !2
  %72 = load double, double* %arrayidx136.i.3, align 8, !tbaa !2
  %arrayidx140.i.3 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv66.i, i64 %indvars.iv.next61.i.2
  %73 = load double, double* %arrayidx140.i.3, align 8, !tbaa !2
  %mul141.i.3 = fmul double %72, %73
  %sub146.i.3 = fsub double %sub146.i.2, %mul141.i.3
  store double %sub146.i.3, double* %arrayidx145.i, align 8, !tbaa !2
  %74 = load double, double* %arrayidx136.i.4, align 8, !tbaa !2
  %arrayidx140.i.4 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv66.i, i64 %indvars.iv.next61.i.3
  %75 = load double, double* %arrayidx140.i.4, align 8, !tbaa !2
  %mul141.i.4 = fmul double %74, %75
  %sub146.i.4 = fsub double %sub146.i.3, %mul141.i.4
  store double %sub146.i.4, double* %arrayidx145.i, align 8, !tbaa !2
  %76 = load double, double* %arrayidx136.i.5, align 8, !tbaa !2
  %arrayidx140.i.5 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv66.i, i64 %indvars.iv.next61.i.4
  %77 = load double, double* %arrayidx140.i.5, align 8, !tbaa !2
  %mul141.i.5 = fmul double %76, %77
  %sub146.i.5 = fsub double %sub146.i.4, %mul141.i.5
  store double %sub146.i.5, double* %arrayidx145.i, align 8, !tbaa !2
  %78 = load double, double* %arrayidx136.i.6, align 8, !tbaa !2
  %arrayidx140.i.6 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv66.i, i64 %indvars.iv.next61.i.5
  %79 = load double, double* %arrayidx140.i.6, align 8, !tbaa !2
  %mul141.i.6 = fmul double %78, %79
  %sub146.i.6 = fsub double %sub146.i.5, %mul141.i.6
  store double %sub146.i.6, double* %arrayidx145.i, align 8, !tbaa !2
  %80 = load double, double* %arrayidx136.i.7, align 8, !tbaa !2
  %arrayidx140.i.7 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv66.i, i64 %indvars.iv.next61.i.6
  %81 = load double, double* %arrayidx140.i.7, align 8, !tbaa !2
  %mul141.i.7 = fmul double %80, %81
  %sub146.i.7 = fsub double %sub146.i.6, %mul141.i.7
  store double %sub146.i.7, double* %arrayidx145.i, align 8, !tbaa !2
  %82 = load double, double* %arrayidx136.i.8, align 8, !tbaa !2
  %arrayidx140.i.8 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv66.i, i64 %indvars.iv.next61.i.7
  %83 = load double, double* %arrayidx140.i.8, align 8, !tbaa !2
  %mul141.i.8 = fmul double %82, %83
  %sub146.i.8 = fsub double %sub146.i.7, %mul141.i.8
  store double %sub146.i.8, double* %arrayidx145.i, align 8, !tbaa !2
  %84 = load double, double* %arrayidx136.i.9, align 8, !tbaa !2
  %arrayidx140.i.9 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv66.i, i64 %indvars.iv.next61.i.8
  %85 = load double, double* %arrayidx140.i.9, align 8, !tbaa !2
  %mul141.i.9 = fmul double %84, %85
  %sub146.i.9 = fsub double %sub146.i.8, %mul141.i.9
  store double %sub146.i.9, double* %arrayidx145.i, align 8, !tbaa !2
  %86 = load double, double* %arrayidx136.i.10, align 8, !tbaa !2
  %arrayidx140.i.10 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv66.i, i64 %indvars.iv.next61.i.9
  %87 = load double, double* %arrayidx140.i.10, align 8, !tbaa !2
  %mul141.i.10 = fmul double %86, %87
  %sub146.i.10 = fsub double %sub146.i.9, %mul141.i.10
  store double %sub146.i.10, double* %arrayidx145.i, align 8, !tbaa !2
  %88 = load double, double* %arrayidx136.i.11, align 8, !tbaa !2
  %arrayidx140.i.11 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv66.i, i64 %indvars.iv.next61.i.10
  %89 = load double, double* %arrayidx140.i.11, align 8, !tbaa !2
  %mul141.i.11 = fmul double %88, %89
  %sub146.i.11 = fsub double %sub146.i.10, %mul141.i.11
  store double %sub146.i.11, double* %arrayidx145.i, align 8, !tbaa !2
  %90 = load double, double* %arrayidx136.i.12, align 8, !tbaa !2
  %arrayidx140.i.12 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv66.i, i64 %indvars.iv.next61.i.11
  %91 = load double, double* %arrayidx140.i.12, align 8, !tbaa !2
  %mul141.i.12 = fmul double %90, %91
  %sub146.i.12 = fsub double %sub146.i.11, %mul141.i.12
  store double %sub146.i.12, double* %arrayidx145.i, align 8, !tbaa !2
  %92 = load double, double* %arrayidx136.i.13, align 8, !tbaa !2
  %arrayidx140.i.13 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv66.i, i64 %indvars.iv.next61.i.12
  %93 = load double, double* %arrayidx140.i.13, align 8, !tbaa !2
  %mul141.i.13 = fmul double %92, %93
  %sub146.i.13 = fsub double %sub146.i.12, %mul141.i.13
  store double %sub146.i.13, double* %arrayidx145.i, align 8, !tbaa !2
  %94 = load double, double* %arrayidx136.i.14, align 8, !tbaa !2
  %arrayidx140.i.14 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv66.i, i64 %indvars.iv.next61.i.13
  %95 = load double, double* %arrayidx140.i.14, align 8, !tbaa !2
  %mul141.i.14 = fmul double %94, %95
  %sub146.i.14 = fsub double %sub146.i.13, %mul141.i.14
  store double %sub146.i.14, double* %arrayidx145.i, align 8, !tbaa !2
  %96 = load double, double* %arrayidx136.i.15, align 8, !tbaa !2
  %arrayidx140.i.15 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv66.i, i64 %indvars.iv.next61.i.14
  %97 = load double, double* %arrayidx140.i.15, align 8, !tbaa !2
  %mul141.i.15 = fmul double %96, %97
  %sub146.i.15 = fsub double %sub146.i.14, %mul141.i.15
  store double %sub146.i.15, double* %arrayidx145.i, align 8, !tbaa !2
  %98 = load double, double* %arrayidx136.i.16, align 8, !tbaa !2
  %arrayidx140.i.16 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv66.i, i64 %indvars.iv.next61.i.15
  %99 = load double, double* %arrayidx140.i.16, align 8, !tbaa !2
  %mul141.i.16 = fmul double %98, %99
  %sub146.i.16 = fsub double %sub146.i.15, %mul141.i.16
  store double %sub146.i.16, double* %arrayidx145.i, align 8, !tbaa !2
  %100 = load double, double* %arrayidx136.i.17, align 8, !tbaa !2
  %arrayidx140.i.17 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv66.i, i64 %indvars.iv.next61.i.16
  %101 = load double, double* %arrayidx140.i.17, align 8, !tbaa !2
  %mul141.i.17 = fmul double %100, %101
  %sub146.i.17 = fsub double %sub146.i.16, %mul141.i.17
  store double %sub146.i.17, double* %arrayidx145.i, align 8, !tbaa !2
  %102 = load double, double* %arrayidx136.i.18, align 8, !tbaa !2
  %arrayidx140.i.18 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv66.i, i64 %indvars.iv.next61.i.17
  %103 = load double, double* %arrayidx140.i.18, align 8, !tbaa !2
  %mul141.i.18 = fmul double %102, %103
  %sub146.i.18 = fsub double %sub146.i.17, %mul141.i.18
  store double %sub146.i.18, double* %arrayidx145.i, align 8, !tbaa !2
  %104 = load double, double* %arrayidx136.i.19, align 8, !tbaa !2
  %arrayidx140.i.19 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv66.i, i64 %indvars.iv.next61.i.18
  %105 = load double, double* %arrayidx140.i.19, align 8, !tbaa !2
  %mul141.i.19 = fmul double %104, %105
  %sub146.i.19 = fsub double %sub146.i.18, %mul141.i.19
  store double %sub146.i.19, double* %arrayidx145.i, align 8, !tbaa !2
  %106 = load double, double* %arrayidx136.i.20, align 8, !tbaa !2
  %arrayidx140.i.20 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv66.i, i64 %indvars.iv.next61.i.19
  %107 = load double, double* %arrayidx140.i.20, align 8, !tbaa !2
  %mul141.i.20 = fmul double %106, %107
  %sub146.i.20 = fsub double %sub146.i.19, %mul141.i.20
  store double %sub146.i.20, double* %arrayidx145.i, align 8, !tbaa !2
  %108 = load double, double* %arrayidx136.i.21, align 8, !tbaa !2
  %arrayidx140.i.21 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv66.i, i64 %indvars.iv.next61.i.20
  %109 = load double, double* %arrayidx140.i.21, align 8, !tbaa !2
  %mul141.i.21 = fmul double %108, %109
  %sub146.i.21 = fsub double %sub146.i.20, %mul141.i.21
  store double %sub146.i.21, double* %arrayidx145.i, align 8, !tbaa !2
  %110 = load double, double* %arrayidx136.i.22, align 8, !tbaa !2
  %arrayidx140.i.22 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv66.i, i64 %indvars.iv.next61.i.21
  %111 = load double, double* %arrayidx140.i.22, align 8, !tbaa !2
  %mul141.i.22 = fmul double %110, %111
  %sub146.i.22 = fsub double %sub146.i.21, %mul141.i.22
  store double %sub146.i.22, double* %arrayidx145.i, align 8, !tbaa !2
  %112 = load double, double* %arrayidx136.i.23, align 8, !tbaa !2
  %arrayidx140.i.23 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv66.i, i64 %indvars.iv.next61.i.22
  %113 = load double, double* %arrayidx140.i.23, align 8, !tbaa !2
  %mul141.i.23 = fmul double %112, %113
  %sub146.i.23 = fsub double %sub146.i.22, %mul141.i.23
  store double %sub146.i.23, double* %arrayidx145.i, align 8, !tbaa !2
  %114 = load double, double* %arrayidx136.i.24, align 8, !tbaa !2
  %arrayidx140.i.24 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv66.i, i64 %indvars.iv.next61.i.23
  %115 = load double, double* %arrayidx140.i.24, align 8, !tbaa !2
  %mul141.i.24 = fmul double %114, %115
  %sub146.i.24 = fsub double %sub146.i.23, %mul141.i.24
  store double %sub146.i.24, double* %arrayidx145.i, align 8, !tbaa !2
  %116 = load double, double* %arrayidx136.i.25, align 8, !tbaa !2
  %arrayidx140.i.25 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv66.i, i64 %indvars.iv.next61.i.24
  %117 = load double, double* %arrayidx140.i.25, align 8, !tbaa !2
  %mul141.i.25 = fmul double %116, %117
  %sub146.i.25 = fsub double %sub146.i.24, %mul141.i.25
  store double %sub146.i.25, double* %arrayidx145.i, align 8, !tbaa !2
  %118 = load double, double* %arrayidx136.i.26, align 8, !tbaa !2
  %arrayidx140.i.26 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv66.i, i64 %indvars.iv.next61.i.25
  %119 = load double, double* %arrayidx140.i.26, align 8, !tbaa !2
  %mul141.i.26 = fmul double %118, %119
  %sub146.i.26 = fsub double %sub146.i.25, %mul141.i.26
  store double %sub146.i.26, double* %arrayidx145.i, align 8, !tbaa !2
  %120 = load double, double* %arrayidx136.i.27, align 8, !tbaa !2
  %arrayidx140.i.27 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv66.i, i64 %indvars.iv.next61.i.26
  %121 = load double, double* %arrayidx140.i.27, align 8, !tbaa !2
  %mul141.i.27 = fmul double %120, %121
  %sub146.i.27 = fsub double %sub146.i.26, %mul141.i.27
  store double %sub146.i.27, double* %arrayidx145.i, align 8, !tbaa !2
  %122 = load double, double* %arrayidx136.i.28, align 8, !tbaa !2
  %arrayidx140.i.28 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv66.i, i64 %indvars.iv.next61.i.27
  %123 = load double, double* %arrayidx140.i.28, align 8, !tbaa !2
  %mul141.i.28 = fmul double %122, %123
  %sub146.i.28 = fsub double %sub146.i.27, %mul141.i.28
  store double %sub146.i.28, double* %arrayidx145.i, align 8, !tbaa !2
  %124 = load double, double* %arrayidx136.i.29, align 8, !tbaa !2
  %arrayidx140.i.29 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv66.i, i64 %indvars.iv.next61.i.28
  %125 = load double, double* %arrayidx140.i.29, align 8, !tbaa !2
  %mul141.i.29 = fmul double %124, %125
  %sub146.i.29 = fsub double %sub146.i.28, %mul141.i.29
  store double %sub146.i.29, double* %arrayidx145.i, align 8, !tbaa !2
  %126 = load double, double* %arrayidx136.i.30, align 8, !tbaa !2
  %arrayidx140.i.30 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv66.i, i64 %indvars.iv.next61.i.29
  %127 = load double, double* %arrayidx140.i.30, align 8, !tbaa !2
  %mul141.i.30 = fmul double %126, %127
  %sub146.i.30 = fsub double %sub146.i.29, %mul141.i.30
  store double %sub146.i.30, double* %arrayidx145.i, align 8, !tbaa !2
  %128 = load double, double* %arrayidx136.i.31, align 8, !tbaa !2
  %arrayidx140.i.31 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv66.i, i64 %indvars.iv.next61.i.30
  %129 = load double, double* %arrayidx140.i.31, align 8, !tbaa !2
  %mul141.i.31 = fmul double %128, %129
  %sub146.i.31 = fsub double %sub146.i.30, %mul141.i.31
  store double %sub146.i.31, double* %arrayidx145.i, align 8, !tbaa !2
  %indvars.iv.next67.i = add nuw nsw i64 %indvars.iv66.i, 1
  %cmp125.not.not.i = icmp ult i64 %indvars.iv66.i, %65
  br i1 %cmp125.not.not.i, label %for.body126.i, label %for.inc153.i, !llvm.loop !17

for.inc153.i:                                     ; preds = %for.body126.i, %for.cond113.preheader.i
  %indvars.iv.next73.i = add nuw nsw i64 %indvars.iv72.i, 1
  %cmp110.not.not.i = icmp ult i64 %indvars.iv72.i, %43
  br i1 %cmp110.not.not.i, label %for.cond113.preheader.i, label %if.end156.i, !llvm.loop !18

if.end156.i:                                      ; preds = %for.inc153.i, %if.end.i
  %cmp157.i = icmp ne i64 %indvars.iv120.i, %indvars.iv
  %brmerge.i = or i1 %cmp157.i, %cmp16.not.not.not.i
  br i1 %brmerge.i, label %if.end203.i, label %for.body176.i

for.body176.i:                                    ; preds = %if.end156.i, %for.body176.i
  %indvars.iv79.i = phi i64 [ %indvars.iv.next80.i, %for.body176.i ], [ %indvars.iv51.i, %if.end156.i ]
  %arrayidx195.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv79.i, i64 %indvars.iv79.i
  %arrayidx186.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv79.i, i64 %indvars.iv.i11
  %130 = load double, double* %arrayidx186.i, align 8, !tbaa !2
  %mul191.i = fmul double %130, %130
  %131 = load double, double* %arrayidx195.i, align 8, !tbaa !2
  %sub196.i = fsub double %131, %mul191.i
  store double %sub196.i, double* %arrayidx195.i, align 8, !tbaa !2
  %arrayidx186.1.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv79.i, i64 %indvars.iv.next76.i
  %132 = load double, double* %arrayidx186.1.i, align 8, !tbaa !2
  %mul191.1.i = fmul double %132, %132
  %sub196.1.i = fsub double %sub196.i, %mul191.1.i
  store double %sub196.1.i, double* %arrayidx195.i, align 8, !tbaa !2
  %arrayidx186.2.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv79.i, i64 %indvars.iv.next76.1.i
  %133 = load double, double* %arrayidx186.2.i, align 8, !tbaa !2
  %mul191.2.i = fmul double %133, %133
  %sub196.2.i = fsub double %sub196.1.i, %mul191.2.i
  store double %sub196.2.i, double* %arrayidx195.i, align 8, !tbaa !2
  %arrayidx186.3.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv79.i, i64 %indvars.iv.next76.2.i
  %134 = load double, double* %arrayidx186.3.i, align 8, !tbaa !2
  %mul191.3.i = fmul double %134, %134
  %sub196.3.i = fsub double %sub196.2.i, %mul191.3.i
  store double %sub196.3.i, double* %arrayidx195.i, align 8, !tbaa !2
  %arrayidx186.4.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv79.i, i64 %indvars.iv.next76.3.i
  %135 = load double, double* %arrayidx186.4.i, align 8, !tbaa !2
  %mul191.4.i = fmul double %135, %135
  %sub196.4.i = fsub double %sub196.3.i, %mul191.4.i
  store double %sub196.4.i, double* %arrayidx195.i, align 8, !tbaa !2
  %arrayidx186.5.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv79.i, i64 %indvars.iv.next76.4.i
  %136 = load double, double* %arrayidx186.5.i, align 8, !tbaa !2
  %mul191.5.i = fmul double %136, %136
  %sub196.5.i = fsub double %sub196.4.i, %mul191.5.i
  store double %sub196.5.i, double* %arrayidx195.i, align 8, !tbaa !2
  %arrayidx186.6.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv79.i, i64 %indvars.iv.next76.5.i
  %137 = load double, double* %arrayidx186.6.i, align 8, !tbaa !2
  %mul191.6.i = fmul double %137, %137
  %sub196.6.i = fsub double %sub196.5.i, %mul191.6.i
  store double %sub196.6.i, double* %arrayidx195.i, align 8, !tbaa !2
  %arrayidx186.7.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv79.i, i64 %indvars.iv.next76.6.i
  %138 = load double, double* %arrayidx186.7.i, align 8, !tbaa !2
  %mul191.7.i = fmul double %138, %138
  %sub196.7.i = fsub double %sub196.6.i, %mul191.7.i
  store double %sub196.7.i, double* %arrayidx195.i, align 8, !tbaa !2
  %arrayidx186.8.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv79.i, i64 %indvars.iv.next76.7.i
  %139 = load double, double* %arrayidx186.8.i, align 8, !tbaa !2
  %mul191.8.i = fmul double %139, %139
  %sub196.8.i = fsub double %sub196.7.i, %mul191.8.i
  store double %sub196.8.i, double* %arrayidx195.i, align 8, !tbaa !2
  %arrayidx186.9.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv79.i, i64 %indvars.iv.next76.8.i
  %140 = load double, double* %arrayidx186.9.i, align 8, !tbaa !2
  %mul191.9.i = fmul double %140, %140
  %sub196.9.i = fsub double %sub196.8.i, %mul191.9.i
  store double %sub196.9.i, double* %arrayidx195.i, align 8, !tbaa !2
  %arrayidx186.10.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv79.i, i64 %indvars.iv.next76.9.i
  %141 = load double, double* %arrayidx186.10.i, align 8, !tbaa !2
  %mul191.10.i = fmul double %141, %141
  %sub196.10.i = fsub double %sub196.9.i, %mul191.10.i
  store double %sub196.10.i, double* %arrayidx195.i, align 8, !tbaa !2
  %arrayidx186.11.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv79.i, i64 %indvars.iv.next76.10.i
  %142 = load double, double* %arrayidx186.11.i, align 8, !tbaa !2
  %mul191.11.i = fmul double %142, %142
  %sub196.11.i = fsub double %sub196.10.i, %mul191.11.i
  store double %sub196.11.i, double* %arrayidx195.i, align 8, !tbaa !2
  %arrayidx186.12.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv79.i, i64 %indvars.iv.next76.11.i
  %143 = load double, double* %arrayidx186.12.i, align 8, !tbaa !2
  %mul191.12.i = fmul double %143, %143
  %sub196.12.i = fsub double %sub196.11.i, %mul191.12.i
  store double %sub196.12.i, double* %arrayidx195.i, align 8, !tbaa !2
  %arrayidx186.13.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv79.i, i64 %indvars.iv.next76.12.i
  %144 = load double, double* %arrayidx186.13.i, align 8, !tbaa !2
  %mul191.13.i = fmul double %144, %144
  %sub196.13.i = fsub double %sub196.12.i, %mul191.13.i
  store double %sub196.13.i, double* %arrayidx195.i, align 8, !tbaa !2
  %arrayidx186.14.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv79.i, i64 %indvars.iv.next76.13.i
  %145 = load double, double* %arrayidx186.14.i, align 8, !tbaa !2
  %mul191.14.i = fmul double %145, %145
  %sub196.14.i = fsub double %sub196.13.i, %mul191.14.i
  store double %sub196.14.i, double* %arrayidx195.i, align 8, !tbaa !2
  %arrayidx186.15.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv79.i, i64 %indvars.iv.next76.14.i
  %146 = load double, double* %arrayidx186.15.i, align 8, !tbaa !2
  %mul191.15.i = fmul double %146, %146
  %sub196.15.i = fsub double %sub196.14.i, %mul191.15.i
  store double %sub196.15.i, double* %arrayidx195.i, align 8, !tbaa !2
  %arrayidx186.16.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv79.i, i64 %indvars.iv.next76.15.i
  %147 = load double, double* %arrayidx186.16.i, align 8, !tbaa !2
  %mul191.16.i = fmul double %147, %147
  %sub196.16.i = fsub double %sub196.15.i, %mul191.16.i
  store double %sub196.16.i, double* %arrayidx195.i, align 8, !tbaa !2
  %arrayidx186.17.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv79.i, i64 %indvars.iv.next76.16.i
  %148 = load double, double* %arrayidx186.17.i, align 8, !tbaa !2
  %mul191.17.i = fmul double %148, %148
  %sub196.17.i = fsub double %sub196.16.i, %mul191.17.i
  store double %sub196.17.i, double* %arrayidx195.i, align 8, !tbaa !2
  %arrayidx186.18.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv79.i, i64 %indvars.iv.next76.17.i
  %149 = load double, double* %arrayidx186.18.i, align 8, !tbaa !2
  %mul191.18.i = fmul double %149, %149
  %sub196.18.i = fsub double %sub196.17.i, %mul191.18.i
  store double %sub196.18.i, double* %arrayidx195.i, align 8, !tbaa !2
  %arrayidx186.19.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv79.i, i64 %indvars.iv.next76.18.i
  %150 = load double, double* %arrayidx186.19.i, align 8, !tbaa !2
  %mul191.19.i = fmul double %150, %150
  %sub196.19.i = fsub double %sub196.18.i, %mul191.19.i
  store double %sub196.19.i, double* %arrayidx195.i, align 8, !tbaa !2
  %arrayidx186.20.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv79.i, i64 %indvars.iv.next76.19.i
  %151 = load double, double* %arrayidx186.20.i, align 8, !tbaa !2
  %mul191.20.i = fmul double %151, %151
  %sub196.20.i = fsub double %sub196.19.i, %mul191.20.i
  store double %sub196.20.i, double* %arrayidx195.i, align 8, !tbaa !2
  %arrayidx186.21.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv79.i, i64 %indvars.iv.next76.20.i
  %152 = load double, double* %arrayidx186.21.i, align 8, !tbaa !2
  %mul191.21.i = fmul double %152, %152
  %sub196.21.i = fsub double %sub196.20.i, %mul191.21.i
  store double %sub196.21.i, double* %arrayidx195.i, align 8, !tbaa !2
  %arrayidx186.22.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv79.i, i64 %indvars.iv.next76.21.i
  %153 = load double, double* %arrayidx186.22.i, align 8, !tbaa !2
  %mul191.22.i = fmul double %153, %153
  %sub196.22.i = fsub double %sub196.21.i, %mul191.22.i
  store double %sub196.22.i, double* %arrayidx195.i, align 8, !tbaa !2
  %arrayidx186.23.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv79.i, i64 %indvars.iv.next76.22.i
  %154 = load double, double* %arrayidx186.23.i, align 8, !tbaa !2
  %mul191.23.i = fmul double %154, %154
  %sub196.23.i = fsub double %sub196.22.i, %mul191.23.i
  store double %sub196.23.i, double* %arrayidx195.i, align 8, !tbaa !2
  %arrayidx186.24.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv79.i, i64 %indvars.iv.next76.23.i
  %155 = load double, double* %arrayidx186.24.i, align 8, !tbaa !2
  %mul191.24.i = fmul double %155, %155
  %sub196.24.i = fsub double %sub196.23.i, %mul191.24.i
  store double %sub196.24.i, double* %arrayidx195.i, align 8, !tbaa !2
  %arrayidx186.25.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv79.i, i64 %indvars.iv.next76.24.i
  %156 = load double, double* %arrayidx186.25.i, align 8, !tbaa !2
  %mul191.25.i = fmul double %156, %156
  %sub196.25.i = fsub double %sub196.24.i, %mul191.25.i
  store double %sub196.25.i, double* %arrayidx195.i, align 8, !tbaa !2
  %arrayidx186.26.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv79.i, i64 %indvars.iv.next76.25.i
  %157 = load double, double* %arrayidx186.26.i, align 8, !tbaa !2
  %mul191.26.i = fmul double %157, %157
  %sub196.26.i = fsub double %sub196.25.i, %mul191.26.i
  store double %sub196.26.i, double* %arrayidx195.i, align 8, !tbaa !2
  %arrayidx186.27.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv79.i, i64 %indvars.iv.next76.26.i
  %158 = load double, double* %arrayidx186.27.i, align 8, !tbaa !2
  %mul191.27.i = fmul double %158, %158
  %sub196.27.i = fsub double %sub196.26.i, %mul191.27.i
  store double %sub196.27.i, double* %arrayidx195.i, align 8, !tbaa !2
  %arrayidx186.28.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv79.i, i64 %indvars.iv.next76.27.i
  %159 = load double, double* %arrayidx186.28.i, align 8, !tbaa !2
  %mul191.28.i = fmul double %159, %159
  %sub196.28.i = fsub double %sub196.27.i, %mul191.28.i
  store double %sub196.28.i, double* %arrayidx195.i, align 8, !tbaa !2
  %arrayidx186.29.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv79.i, i64 %indvars.iv.next76.28.i
  %160 = load double, double* %arrayidx186.29.i, align 8, !tbaa !2
  %mul191.29.i = fmul double %160, %160
  %sub196.29.i = fsub double %sub196.28.i, %mul191.29.i
  store double %sub196.29.i, double* %arrayidx195.i, align 8, !tbaa !2
  %arrayidx186.30.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv79.i, i64 %indvars.iv.next76.29.i
  %161 = load double, double* %arrayidx186.30.i, align 8, !tbaa !2
  %mul191.30.i = fmul double %161, %161
  %sub196.30.i = fsub double %sub196.29.i, %mul191.30.i
  store double %sub196.30.i, double* %arrayidx195.i, align 8, !tbaa !2
  %arrayidx186.31.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv79.i, i64 %indvars.iv.next76.30.i
  %162 = load double, double* %arrayidx186.31.i, align 8, !tbaa !2
  %mul191.31.i = fmul double %162, %162
  %sub196.31.i = fsub double %sub196.30.i, %mul191.31.i
  store double %sub196.31.i, double* %arrayidx195.i, align 8, !tbaa !2
  %indvars.iv.next80.i = add nuw nsw i64 %indvars.iv79.i, 1
  %exitcond82.not.i = icmp eq i64 %indvars.iv.next80.i, %indvars.iv118.i
  br i1 %exitcond82.not.i, label %if.end203.i, label %for.body176.i, !llvm.loop !19

if.end203.i:                                      ; preds = %for.body176.i, %if.end156.i
  %brmerge2.i = or i1 %cmp204.i, %cmp157.i
  br i1 %brmerge2.i, label %for.inc412.i, label %for.body316.preheader.i

for.body316.preheader.i:                          ; preds = %if.end203.i
  %163 = load double, double* %arrayidx213.i, align 8, !tbaa !2
  %call.i15 = tail call double @sqrt(double %163) #10
  store double %call.i15, double* %arrayidx213.i, align 8, !tbaa !2
  %164 = load double, double* %arrayidx253.i, align 8, !tbaa !2
  %div254.i = fdiv double %164, %call.i15
  store double %div254.i, double* %arrayidx253.i, align 8, !tbaa !2
  %mul269.i = fmul double %div254.i, %div254.i
  %165 = load double, double* %arrayidx277.i, align 8, !tbaa !2
  %sub278.i = fsub double %165, %mul269.i
  store double %sub278.i, double* %arrayidx277.i, align 8, !tbaa !2
  %call287.i = tail call double @sqrt(double %sub278.i) #10
  store double %call287.i, double* %arrayidx277.i, align 8, !tbaa !2
  br label %for.body316.i

for.body316.i:                                    ; preds = %for.end398.i, %for.body316.preheader.i
  %indvars.iv95.i = phi i64 [ %indvars.iv93.i, %for.body316.preheader.i ], [ %indvars.iv.next96.i, %for.end398.i ]
  %166 = load double, double* %arrayidx213.i, align 8, !tbaa !2
  %arrayidx327.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv95.i, i64 %42
  %167 = load double, double* %arrayidx327.i, align 8, !tbaa !2
  %div328.i = fdiv double %167, %166
  store double %div328.i, double* %arrayidx327.i, align 8, !tbaa !2
  %mul339.i = fmul double %div328.i, %div328.i
  %arrayidx343.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv95.i, i64 %indvars.iv95.i
  %168 = load double, double* %arrayidx343.i, align 8, !tbaa !2
  %sub344.i = fsub double %168, %mul339.i
  store double %sub344.i, double* %arrayidx343.i, align 8, !tbaa !2
  %cmp349.not.not27.i = icmp ult i64 %44, %indvars.iv95.i
  br i1 %cmp349.not.not27.i, label %for.cond352.preheader.i.preheader, label %for.end398.i

for.cond352.preheader.i.preheader:                ; preds = %for.body316.i
  %arrayidx359.i.prol = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv95.i, i64 %indvars.iv51.i
  br label %for.cond352.preheader.i

for.cond352.preheader.i:                          ; preds = %for.cond352.preheader.i.preheader, %for.end372.i
  %indvar26 = phi i64 [ 0, %for.cond352.preheader.i.preheader ], [ %indvar.next27, %for.end372.i ]
  %indvars.iv89.i = phi i64 [ %indvars.iv87.i, %for.cond352.preheader.i.preheader ], [ %indvars.iv.next90.i, %for.end372.i ]
  %cmp354.not.not25.i = icmp ult i64 %42, %indvars.iv89.i
  %arrayidx368.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv95.i, i64 %indvars.iv89.i
  %.pre138.i = load double, double* %arrayidx368.i, align 8, !tbaa !2
  br i1 %cmp354.not.not25.i, label %for.body355.i.preheader, label %for.end372.i

for.body355.i.preheader:                          ; preds = %for.cond352.preheader.i
  %169 = and i64 %indvar26, 1
  %lcmp.mod29.not.not = icmp eq i64 %169, 0
  br i1 %lcmp.mod29.not.not, label %for.body355.i.prol, label %for.body355.i.prol.loopexit

for.body355.i.prol:                               ; preds = %for.body355.i.preheader
  %170 = load double, double* %arrayidx359.i.prol, align 8, !tbaa !2
  %arrayidx363.i.prol = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv89.i, i64 %indvars.iv51.i
  %171 = load double, double* %arrayidx363.i.prol, align 8, !tbaa !2
  %mul364.i.prol = fmul double %170, %171
  %sub369.i.prol = fsub double %.pre138.i, %mul364.i.prol
  store double %sub369.i.prol, double* %arrayidx368.i, align 8, !tbaa !2
  br label %for.body355.i.prol.loopexit

for.body355.i.prol.loopexit:                      ; preds = %for.body355.i.prol, %for.body355.i.preheader
  %sub369.i.lcssa.unr.ph = phi double [ %sub369.i.prol, %for.body355.i.prol ], [ undef, %for.body355.i.preheader ]
  %.unr30.ph = phi double [ %sub369.i.prol, %for.body355.i.prol ], [ %.pre138.i, %for.body355.i.preheader ]
  %indvars.iv83.i.unr.ph = phi i64 [ %indvars.iv.next84.i.prol, %for.body355.i.prol ], [ %indvars.iv51.i, %for.body355.i.preheader ]
  %172 = icmp eq i64 %indvar26, 0
  br i1 %172, label %for.end372.i, label %for.body355.i

for.body355.i:                                    ; preds = %for.body355.i.prol.loopexit, %for.body355.i
  %173 = phi double [ %sub369.i.1, %for.body355.i ], [ %.unr30.ph, %for.body355.i.prol.loopexit ]
  %indvars.iv83.i = phi i64 [ %indvars.iv.next84.i.1, %for.body355.i ], [ %indvars.iv83.i.unr.ph, %for.body355.i.prol.loopexit ]
  %arrayidx359.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv95.i, i64 %indvars.iv83.i
  %174 = load double, double* %arrayidx359.i, align 8, !tbaa !2
  %arrayidx363.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv89.i, i64 %indvars.iv83.i
  %175 = load double, double* %arrayidx363.i, align 8, !tbaa !2
  %mul364.i = fmul double %174, %175
  %sub369.i = fsub double %173, %mul364.i
  store double %sub369.i, double* %arrayidx368.i, align 8, !tbaa !2
  %indvars.iv.next84.i = add nuw nsw i64 %indvars.iv83.i, 1
  %arrayidx359.i.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv95.i, i64 %indvars.iv.next84.i
  %176 = load double, double* %arrayidx359.i.1, align 8, !tbaa !2
  %arrayidx363.i.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv89.i, i64 %indvars.iv.next84.i
  %177 = load double, double* %arrayidx363.i.1, align 8, !tbaa !2
  %mul364.i.1 = fmul double %176, %177
  %sub369.i.1 = fsub double %sub369.i, %mul364.i.1
  store double %sub369.i.1, double* %arrayidx368.i, align 8, !tbaa !2
  %indvars.iv.next84.i.1 = add nuw nsw i64 %indvars.iv83.i, 2
  %exitcond86.not.i.1 = icmp eq i64 %indvars.iv.next84.i.1, %indvars.iv89.i
  br i1 %exitcond86.not.i.1, label %for.end372.i, label %for.body355.i, !llvm.loop !20

for.end372.i:                                     ; preds = %for.body355.i.prol.loopexit, %for.body355.i, %for.cond352.preheader.i
  %178 = phi double [ %.pre138.i, %for.cond352.preheader.i ], [ %sub369.i.lcssa.unr.ph, %for.body355.i.prol.loopexit ], [ %sub369.i.1, %for.body355.i ]
  %arrayidx376.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv89.i, i64 %indvars.iv89.i
  %179 = load double, double* %arrayidx376.i, align 8, !tbaa !2
  %arrayidx380.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv95.i, i64 %indvars.iv89.i
  %div381.i = fdiv double %178, %179
  store double %div381.i, double* %arrayidx380.i, align 8, !tbaa !2
  %mul390.i = fmul double %div381.i, %div381.i
  %180 = load double, double* %arrayidx343.i, align 8, !tbaa !2
  %sub395.i = fsub double %180, %mul390.i
  store double %sub395.i, double* %arrayidx343.i, align 8, !tbaa !2
  %indvars.iv.next90.i = add nuw nsw i64 %indvars.iv89.i, 1
  %exitcond92.not.i = icmp eq i64 %indvars.iv.next90.i, %indvars.iv95.i
  %indvar.next27 = add i64 %indvar26, 1
  br i1 %exitcond92.not.i, label %for.end398.i, label %for.cond352.preheader.i, !llvm.loop !21

for.end398.i:                                     ; preds = %for.end372.i, %for.body316.i
  %181 = phi double [ %sub344.i, %for.body316.i ], [ %sub395.i, %for.end372.i ]
  %call403.i = tail call double @sqrt(double %181) #10
  store double %call403.i, double* %arrayidx343.i, align 8, !tbaa !2
  %indvars.iv.next96.i = add nuw nsw i64 %indvars.iv95.i, 1
  %exitcond98.not.i = icmp eq i64 %indvars.iv.next96.i, %indvars.iv118.i
  br i1 %exitcond98.not.i, label %for.inc412.i, label %for.body316.i, !llvm.loop !22

for.inc412.i:                                     ; preds = %for.end398.i, %if.end203.i
  %indvars.iv.next59.i = add nuw nsw i64 %indvars.iv58.i, 32
  %exitcond103.not.i = icmp eq i64 %indvars.iv116.i, %indvars.iv.next
  br i1 %exitcond103.not.i, label %for.inc415.i, label %for.body14.i, !llvm.loop !23

for.inc415.i:                                     ; preds = %for.inc412.i
  %indvars.iv.next107.i = add nuw nsw i64 %indvars.iv106.i, 1
  %indvars.iv.next.i16 = add nuw nsw i64 %indvars.iv.i11, 32
  %indvars.iv.next44.i = add nuw nsw i64 %indvars.iv43.i, 32
  %indvars.iv.next105.i = add nuw nsw i64 %indvars.iv104.i, 32
  %indvars.iv.next71.i = add nuw nsw i32 %indvars.iv70.i, 32
  %exitcond115.not.i = icmp eq i64 %indvars.iv.next107.i, %indvars.iv116.i
  br i1 %exitcond115.not.i, label %for.inc418.i, label %for.cond12.preheader.i, !llvm.loop !24

for.inc418.i:                                     ; preds = %for.inc415.i
  %indvars.iv.next121.i = add nuw nsw i64 %indvars.iv120.i, 1
  %indvars.iv.next52.i = add nuw nsw i64 %indvars.iv51.i, 32
  %indvars.iv.next119.i = add nuw nsw i64 %indvars.iv118.i, 32
  %indvars.iv.next69.i = add nuw nsw i32 %indvars.iv68.i, 32
  %indvars.iv.next88.i = add nuw nsw i64 %indvars.iv87.i, 32
  %indvars.iv.next94.i = add nuw nsw i64 %indvars.iv93.i, 32
  %indvars.iv.next117.i = add nuw nsw i64 %indvars.iv116.i, 1
  %exitcond135.not.i = icmp eq i64 %indvars.iv.next121.i, 125
  br i1 %exitcond135.not.i, label %kernel_cholesky.exit, label %for.cond9.preheader.i, !llvm.loop !25

kernel_cholesky.exit:                             ; preds = %for.inc418.i
  tail call void (...) @polybench_timer_stop() #10
  tail call void (...) @polybench_timer_print() #10
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_cholesky.exit
  %182 = load i8*, i8** %argv, align 8, !tbaa !26
  %strcmpload = load i8, i8* %182, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %183 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !26
  %184 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %183) #11
  %185 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !26
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %185, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #11
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.inc10.i, %if.then
  %indvars.iv8.i = phi i64 [ 0, %if.then ], [ %indvars.iv.next9.i, %for.inc10.i ]
  %indvars.iv6.i = phi i64 [ 1, %if.then ], [ %indvars.iv.next7.i, %for.inc10.i ]
  %186 = mul nuw nsw i64 %indvars.iv8.i, 4000
  br label %for.body4.i

for.body4.i:                                      ; preds = %if.end.i20, %for.cond2.preheader.i
  %indvars.iv.i17 = phi i64 [ 0, %for.cond2.preheader.i ], [ %indvars.iv.next.i18, %if.end.i20 ]
  %187 = add nuw nsw i64 %indvars.iv.i17, %186
  %188 = trunc i64 %187 to i32
  %rem.i = urem i32 %188, 20
  %cmp5.i = icmp eq i32 %rem.i, 0
  br i1 %cmp5.i, label %if.then.i, label %if.end.i20

if.then.i:                                        ; preds = %for.body4.i
  %189 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !26
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %189) #10
  br label %if.end.i20

if.end.i20:                                       ; preds = %if.then.i, %for.body4.i
  %190 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !26
  %arrayidx8.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv8.i, i64 %indvars.iv.i17
  %191 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %190, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %191) #11
  %indvars.iv.next.i18 = add nuw nsw i64 %indvars.iv.i17, 1
  %exitcond.not.i19 = icmp eq i64 %indvars.iv.next.i18, %indvars.iv6.i
  br i1 %exitcond.not.i19, label %for.inc10.i, label %for.body4.i, !llvm.loop !28

for.inc10.i:                                      ; preds = %if.end.i20
  %indvars.iv.next9.i = add nuw nsw i64 %indvars.iv8.i, 1
  %indvars.iv.next7.i = add nuw nsw i64 %indvars.iv6.i, 1
  %exitcond11.not.i = icmp eq i64 %indvars.iv.next9.i, 4000
  br i1 %exitcond11.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !29

print_array.exit:                                 ; preds = %for.inc10.i
  %192 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !26
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %192, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #11
  %193 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !26
  %194 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %193) #11
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
declare i32 @llvm.umax.i32(i32, i32) #9

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
!26 = !{!27, !27, i64 0}
!27 = !{!"any pointer", !4, i64 0}
!28 = distinct !{!28, !7}
!29 = distinct !{!29, !7}

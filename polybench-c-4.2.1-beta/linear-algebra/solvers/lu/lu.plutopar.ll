; ModuleID = 'lu.plutopar.c'
source_filename = "lu.plutopar.c"
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
  %broadcast.splatinsert76 = insertelement <2 x double> poison, double %13, i32 0
  %broadcast.splat77 = shufflevector <2 x double> %broadcast.splatinsert76, <2 x double> poison, <2 x i32> zeroinitializer
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
  %30 = fmul <2 x double> %broadcast.splat77, %28
  %31 = getelementptr inbounds [4000 x [4000 x double]], [4000 x [4000 x double]]* %12, i64 0, i64 %indvars.iv30.i, i64 %index
  %32 = bitcast double* %31 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %32, align 8, !tbaa !2
  %33 = getelementptr inbounds double, double* %31, i64 2
  %34 = bitcast double* %33 to <2 x double>*
  %wide.load78 = load <2 x double>, <2 x double>* %34, align 8, !tbaa !2
  %35 = fadd <2 x double> %wide.load, %29
  %36 = fadd <2 x double> %wide.load78, %30
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
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc742.i, %init_array.exit
  %indvars.iv222.i = phi i64 [ 0, %init_array.exit ], [ %indvars.iv.next223.i, %for.inc742.i ]
  %indvars.iv169.i = phi i64 [ 0, %init_array.exit ], [ %indvars.iv.next170.i, %for.inc742.i ]
  %indvars.iv163.i = phi i64 [ 2, %init_array.exit ], [ %indvars.iv.next164.i, %for.inc742.i ]
  %indvars.iv143.i = phi i64 [ 1, %init_array.exit ], [ %indvars.iv.next144.i, %for.inc742.i ]
  %indvars.iv124.i = phi i32 [ 0, %init_array.exit ], [ %indvars.iv.next125.i, %for.inc742.i ]
  %t1.099.i = phi i32 [ 0, %init_array.exit ], [ %inc743.i, %for.inc742.i ]
  %42 = shl nuw nsw i64 %indvars.iv222.i, 4
  %43 = shl nuw nsw i64 %indvars.iv222.i, 4
  %44 = or i64 %43, 1
  %45 = mul nuw nsw i64 %indvars.iv222.i, 512128
  %46 = add nuw i64 %45, 64016
  %47 = add nuw i64 %45, 64001
  %48 = or i64 %45, 16
  %49 = shl nuw nsw i64 %indvars.iv222.i, 4
  %umin205 = call i64 @llvm.umin.i64(i64 %49, i64 3968)
  %50 = mul nsw i64 %indvars.iv222.i, -16
  %51 = add i64 %50, 30
  %52 = add i64 %umin205, %51
  %53 = mul nuw nsw i64 %indvars.iv222.i, 512128
  %54 = add nuw i64 %53, 64016
  %55 = add nuw i64 %53, 64024
  %56 = shl nuw nsw i64 %indvars.iv222.i, 4
  %umin186 = call i64 @llvm.umin.i64(i64 %56, i64 3968)
  %57 = mul nsw i64 %indvars.iv222.i, -16
  %58 = add i64 %57, 29
  %59 = add i64 %umin186, %58
  %60 = shl nsw i64 %59, 3
  %61 = add i64 %55, %60
  %62 = add nuw i64 %53, 64001
  %63 = or i64 %53, 16
  %64 = or i64 %53, 24
  %65 = add i64 %64, %60
  %66 = shl nuw nsw i64 %indvars.iv222.i, 4
  %umin163 = call i64 @llvm.umin.i64(i64 %66, i64 3968)
  %67 = mul nsw i64 %indvars.iv222.i, -16
  %68 = add i64 %67, 31
  %69 = add i64 %umin163, %68
  %70 = mul nuw nsw i64 %indvars.iv222.i, 512128
  %71 = add nuw i64 %70, 32008
  %72 = add nuw i64 %70, 32016
  %73 = shl nuw nsw i64 %indvars.iv222.i, 4
  %umin144 = call i64 @llvm.umin.i64(i64 %73, i64 3968)
  %74 = mul nsw i64 %indvars.iv222.i, -16
  %75 = add i64 %74, 30
  %76 = add i64 %umin144, %75
  %77 = shl nsw i64 %76, 3
  %78 = add i64 %72, %77
  %79 = mul nuw nsw i64 %indvars.iv222.i, 512000
  %80 = add nuw i64 %79, 32001
  %81 = shl nuw nsw i64 %indvars.iv222.i, 7
  %82 = or i64 %81, 8
  %83 = or i64 %81, 16
  %84 = add i64 %83, %77
  %85 = mul nuw nsw i64 %indvars.iv222.i, 512128
  %86 = add nuw i64 %85, 32000
  %87 = add nuw i64 %85, 32008
  %88 = mul nuw nsw i64 %indvars.iv222.i, 512000
  %89 = add nuw i64 %88, 32001
  %90 = shl nuw nsw i64 %indvars.iv222.i, 7
  %91 = or i64 %90, 8
  %92 = shl nuw nsw i64 %indvars.iv222.i, 4
  %umin92 = call i64 @llvm.umin.i64(i64 %92, i64 3968)
  %93 = mul nsw i64 %indvars.iv222.i, -16
  %94 = add i64 %93, 31
  %95 = add i64 %umin92, %94
  %96 = mul nuw nsw i64 %indvars.iv222.i, 512128
  %97 = add nuw i64 %96, 32008
  %98 = add nuw i64 %96, 32016
  %99 = shl nuw nsw i64 %indvars.iv222.i, 4
  %umin79 = call i64 @llvm.umin.i64(i64 %99, i64 3968)
  %100 = mul nsw i64 %indvars.iv222.i, -16
  %101 = add i64 %100, 30
  %102 = add i64 %umin79, %101
  %103 = shl nsw i64 %102, 3
  %104 = add i64 %98, %103
  %105 = mul nuw nsw i64 %indvars.iv222.i, 512000
  %106 = add nuw i64 %105, 32001
  %107 = shl nuw nsw i64 %indvars.iv222.i, 7
  %108 = or i64 %107, 8
  %109 = or i64 %107, 16
  %110 = add i64 %109, %103
  %cmp11.i = icmp ult i64 %indvars.iv222.i, 125
  %t1.099.i.tr = trunc i32 %t1.099.i to i16
  %111 = shl i16 %t1.099.i.tr, 5
  br i1 %cmp11.i, label %cond.end26.i, label %cond.false42.i

cond.end26.i:                                     ; preds = %for.body.i
  %div17.neg.lhs.trunc.i = sub i16 3999, %111
  %cmp28.i = icmp sgt i16 %div17.neg.lhs.trunc.i, 31
  br i1 %cmp28.i, label %cond.end65.thread.i, label %cond.true35.i

cond.end65.thread.i:                              ; preds = %cond.end26.i
  %112 = icmp ult i64 %indvars.iv222.i, 124
  %cond85237242.i = select i1 %112, i64 %indvars.iv222.i, i64 124
  br label %for.cond89.preheader.lr.ph.i

cond.true35.i:                                    ; preds = %cond.end26.i
  %div40.neg5.i = sdiv i16 %div17.neg.lhs.trunc.i, -32
  br label %cond.end65.i

cond.false42.i:                                   ; preds = %for.body.i
  %div48.lhs.trunc.i = add i16 %111, -3968
  %div486.i = sdiv i16 %div48.lhs.trunc.i, 32
  br label %cond.end65.i

cond.end65.i:                                     ; preds = %cond.false42.i, %cond.true35.i
  %cond52.in.i = phi i16 [ %div40.neg5.i, %cond.true35.i ], [ %div486.i, %cond.false42.i ]
  %cond52.i = sext i16 %cond52.in.i to i32
  %113 = icmp ult i64 %indvars.iv222.i, 124
  %cond85237.i = select i1 %113, i64 %indvars.iv222.i, i64 124
  %114 = trunc i64 %cond85237.i to i32
  %cmp87.not96.i = icmp sgt i32 %cond52.i, %114
  br i1 %cmp87.not96.i, label %for.inc742.i, label %for.cond89.preheader.lr.ph.i

for.cond89.preheader.lr.ph.i:                     ; preds = %cond.end65.i, %cond.end65.thread.i
  %cond85237245.i = phi i64 [ %cond85237242.i, %cond.end65.thread.i ], [ %cond85237.i, %cond.end65.i ]
  %cond52244.i = phi i32 [ 0, %cond.end65.thread.i ], [ %cond52.i, %cond.end65.i ]
  %rem238.i = and i64 %indvars.iv222.i, 1
  %cmp331.i = icmp eq i64 %rem238.i, 0
  %115 = shl nsw i64 %indvars.iv222.i, 4
  %arrayidx338.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %115, i64 %115
  %116 = or i64 %115, 1
  %arrayidx345.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %116, i64 %115
  %cmp354.i = icmp ugt i64 %115, 3968
  %117 = add nuw nsw i64 %115, 31
  %118 = select i1 %cmp354.i, i64 3999, i64 %117
  %cmp362.not17.i = icmp ugt i64 %116, %118
  %119 = or i64 %115, 2
  %cmp498.not41.i = icmp ule i64 %119, %118
  %cmp660.not89.i = icmp ule i64 %116, %118
  %120 = shl nsw i32 %cond52244.i, 5
  %121 = sext i32 %120 to i64
  %122 = or i64 %121, 1
  %123 = sub i32 %indvars.iv124.i, %120
  %124 = sext i32 %cond52244.i to i64
  %indvars.iv222.tr.i = trunc i64 %indvars.iv222.i to i32
  %125 = or i64 %121, 31
  %126 = sub i64 %indvars.iv222.i, %124
  %smax50 = call i64 @llvm.smax.i64(i64 %cond85237245.i, i64 %124)
  %127 = shl nsw i64 %121, 3
  %128 = or i64 %127, 8
  %129 = or i32 %120, 31
  %130 = or i32 %120, 31
  %131 = sub nsw i64 1, %121
  %132 = shl nsw i64 %121, 3
  %133 = add nsw i64 %121, 32
  %134 = add nsw i64 %132, 256
  %135 = add nsw i64 %121, 32
  %136 = shl nsw i64 %121, 3
  %137 = add nsw i64 %136, 256
  %138 = or i64 %136, 1
  %139 = mul nsw i64 %121, 32000
  %140 = or i64 %139, 8
  %141 = mul nsw i64 %121, 32008
  %142 = add nsw i64 %141, 256
  %arrayidx378.us.i57 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %115, i64 %indvars.iv143.i
  %arrayidx385.us.i59 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %116, i64 %indvars.iv143.i
  %cmp362.not.us.not.i61 = icmp ult i64 %indvars.iv143.i, %118
  br label %for.cond89.preheader.i

for.cond89.preheader.i:                           ; preds = %for.inc739.i, %for.cond89.preheader.lr.ph.i
  %indvar261 = phi i64 [ %indvar.next262, %for.inc739.i ], [ 0, %for.cond89.preheader.lr.ph.i ]
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %for.inc739.i ], [ %126, %for.cond89.preheader.lr.ph.i ]
  %indvars.iv36.in = phi i64 [ %indvars.iv36, %for.inc739.i ], [ %121, %for.cond89.preheader.lr.ph.i ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc739.i ], [ %125, %for.cond89.preheader.lr.ph.i ]
  %indvars.iv215.i = phi i64 [ %indvars.iv.next216.i, %for.inc739.i ], [ %124, %for.cond89.preheader.lr.ph.i ]
  %indvars.iv213.in.i = phi i64 [ %indvars.iv213.i, %for.inc739.i ], [ %121, %for.cond89.preheader.lr.ph.i ]
  %indvars.iv126.i = phi i32 [ %indvars.iv.next127.i, %for.inc739.i ], [ %123, %for.cond89.preheader.lr.ph.i ]
  %indvars.iv.i12 = phi i64 [ %indvars.iv.next.i14, %for.inc739.i ], [ %122, %for.cond89.preheader.lr.ph.i ]
  %t2.097.i = phi i32 [ %inc740.i, %for.inc739.i ], [ %cond52244.i, %for.cond89.preheader.lr.ph.i ]
  %143 = shl i64 %indvar261, 5
  %144 = add i64 %125, %143
  %145 = shl i64 %indvar261, 5
  %146 = add i64 %125, %145
  %147 = trunc i64 %indvar261 to i32
  %148 = mul i32 %147, -32
  %149 = add i32 %148, %123
  %150 = shl i64 %indvar261, 5
  %151 = add i64 %135, %150
  %152 = trunc i64 %151 to i32
  %smax342 = call i32 @llvm.smax.i32(i32 %149, i32 %152)
  %153 = sext i32 %smax342 to i64
  %154 = mul nsw i64 %153, 32000
  %155 = or i64 %154, 8
  %156 = shl i64 %indvar261, 8
  %157 = add i64 %137, %156
  %158 = add i64 %157, %154
  %159 = add i64 %138, %156
  %160 = add i64 %159, %154
  %161 = mul i64 %indvar261, 1024000
  %162 = add i64 %140, %161
  %163 = mul i64 %indvar261, 1024256
  %164 = add i64 %142, %163
  %165 = shl i64 %indvar261, 8
  %166 = add i64 %132, %165
  %167 = trunc i64 %indvar261 to i32
  %168 = mul i32 %167, -32
  %169 = add i32 %168, %123
  %170 = shl i64 %indvar261, 5
  %171 = add i64 %133, %170
  %172 = trunc i64 %171 to i32
  %smax308 = call i32 @llvm.smax.i32(i32 %169, i32 %172)
  %173 = sext i32 %smax308 to i64
  %174 = mul nsw i64 %173, 32000
  %175 = add nsw i64 %166, %174
  %176 = add i64 %134, %165
  %177 = add i64 %176, %174
  %178 = or i64 %174, 1
  %179 = shl i64 %indvar261, 5
  %180 = add i64 %179, %121
  %181 = trunc i64 %179 to i32
  %182 = add i32 %130, %181
  %smin287 = call i32 @llvm.smin.i32(i32 %182, i32 3999)
  %183 = sext i32 %smin287 to i64
  %smax288 = call i64 @llvm.smax.i64(i64 %180, i64 %183)
  %184 = mul i64 %indvar261, -32
  %185 = add i64 %131, %184
  %186 = add i64 %smax288, %185
  %187 = shl i64 %indvar261, 8
  %188 = add i64 %127, %187
  %189 = mul i64 %indvar261, -32
  %190 = trunc i64 %189 to i32
  %191 = add i32 %123, %190
  %192 = add i64 %128, %187
  %193 = shl i64 %indvar261, 5
  %194 = add i64 %193, %121
  %195 = trunc i64 %193 to i32
  %196 = add i32 %129, %195
  %smin267 = call i32 @llvm.smin.i32(i32 %196, i32 3999)
  %197 = sext i32 %smin267 to i64
  %smax268 = call i64 @llvm.smax.i64(i64 %194, i64 %197)
  %198 = sub i64 %189, %121
  %199 = add i64 %smax268, %198
  %200 = shl i64 %199, 3
  %201 = add i64 %192, %200
  %indvars.iv36 = add nsw i64 %indvars.iv36.in, 32
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv44, i64 %indvars.iv215.i)
  %smin46 = call i64 @llvm.smin.i64(i64 %smin, i64 124)
  %indvars.iv213.i = add nsw i64 %indvars.iv213.in.i, 32
  %202 = trunc i64 %indvars.iv213.i to i32
  %smax140.i = tail call i32 @llvm.smax.i32(i32 %indvars.iv126.i, i32 %202) #9
  %203 = sext i32 %smax140.i to i64
  %204 = icmp slt i64 %indvars.iv215.i, 124
  %cond122239.i = select i1 %204, i64 %indvars.iv215.i, i64 124
  %205 = sub nsw i64 %indvars.iv222.i, %indvars.iv215.i
  %sext.i = shl i64 %cond122239.i, 32
  %206 = ashr exact i64 %sext.i, 32
  %cmp124.i = icmp slt i64 %206, %205
  %cond162.v.i = select i1 %cmp124.i, i64 %cond122239.i, i64 %205
  %cond162.i = trunc i64 %cond162.v.i to i32
  %cmp163.not94.i = icmp slt i32 %cond162.i, 0
  br i1 %cmp163.not94.i, label %for.inc739.i, label %for.body164.lr.ph.i

for.body164.lr.ph.i:                              ; preds = %for.cond89.preheader.i
  %mul168.i = shl nsw i32 %t2.097.i, 5
  %207 = trunc i64 %indvars.iv215.i to i32
  %208 = sub i32 %indvars.iv222.tr.i, %207
  %sub169.i = shl i32 %208, 5
  %add171.i = add nsw i32 %mul168.i, 32
  %cmp172.i = icmp sgt i32 %sub169.i, %add171.i
  %cond181.i = select i1 %cmp172.i, i32 %sub169.i, i32 %add171.i
  %add187.i = or i32 %sub169.i, 31
  %209 = icmp slt i32 %add187.i, 3999
  %cond197.i = select i1 %209, i32 %add187.i, i32 3999
  %cmp198.not11.i = icmp sgt i32 %cond181.i, %cond197.i
  %add216.i = or i32 %mul168.i, 31
  %idxprom238.i = sext i32 %add216.i to i64
  %arrayidx243.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %idxprom238.i, i64 %idxprom238.i
  %mul326.i = shl nsw i32 %t2.097.i, 1
  %210 = zext i32 %mul326.i to i64
  %cmp327.i = icmp eq i64 %indvars.iv222.i, %210
  %cmp413.i = icmp slt i32 %mul168.i, %add187.i
  %cond422.i = select i1 %cmp413.i, i32 %mul168.i, i32 %add187.i
  %211 = icmp slt i32 %add216.i, 3999
  %cond452.i = select i1 %211, i32 %add216.i, i32 3999
  %cmp453.not20.i = icmp sgt i32 %mul168.i, %cond452.i
  %212 = sext i32 %cond197.i to i64
  %213 = sext i32 %cond452.i to i64
  %214 = sext i32 %cond422.i to i64
  %215 = sext i32 %sub169.i to i64
  %216 = and i64 %indvars.iv215.i, 4294967295
  %217 = add i64 %192, %200
  %offset.idx336.1 = or i64 %indvars.iv213.in.i, 2
  %offset.idx336.2 = or i64 %indvars.iv213.in.i, 4
  %offset.idx336.3 = or i64 %indvars.iv213.in.i, 6
  %offset.idx336.4 = or i64 %indvars.iv213.in.i, 8
  %offset.idx336.5 = or i64 %indvars.iv213.in.i, 10
  %offset.idx336.6 = or i64 %indvars.iv213.in.i, 12
  %offset.idx336.7 = or i64 %indvars.iv213.in.i, 14
  %offset.idx336.8 = or i64 %indvars.iv213.in.i, 16
  %offset.idx336.9 = or i64 %indvars.iv213.in.i, 18
  %offset.idx336.10 = or i64 %indvars.iv213.in.i, 20
  %offset.idx336.11 = or i64 %indvars.iv213.in.i, 22
  %offset.idx336.12 = or i64 %indvars.iv213.in.i, 24
  %offset.idx336.13 = or i64 %indvars.iv213.in.i, 26
  %offset.idx336.14 = or i64 %indvars.iv213.in.i, 28
  %offset.idx336.15 = or i64 %indvars.iv213.in.i, 30
  %min.iters.check289 = icmp ult i64 %186, 4
  %n.vec292 = and i64 %186, -4
  %ind.end296 = add i64 %indvars.iv213.in.i, %n.vec292
  %cmp.n297 = icmp eq i64 %186, %n.vec292
  br label %for.body164.i

for.body164.i:                                    ; preds = %for.inc736.i, %for.body164.lr.ph.i
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %for.inc736.i ], [ 31, %for.body164.lr.ph.i ]
  %indvars.iv206.i = phi i64 [ %indvars.iv.next207.i, %for.inc736.i ], [ 0, %for.body164.lr.ph.i ]
  %indvars.iv204.i = phi i64 [ %indvars.iv.next205.i, %for.inc736.i ], [ 32, %for.body164.lr.ph.i ]
  %indvars.iv151.i = phi i32 [ %indvars.iv.next152.i, %for.inc736.i ], [ 1, %for.body164.lr.ph.i ]
  %indvars.iv132.i = phi i64 [ %indvars.iv.next133.i, %for.inc736.i ], [ 0, %for.body164.lr.ph.i ]
  %218 = shl i64 %indvars.iv206.i, 8
  %219 = add i64 %178, %218
  %220 = mul i64 %indvars.iv206.i, 1024000
  %221 = add i64 %166, %220
  %222 = add i64 %176, %220
  %indvars.iv206.i.tr = trunc i64 %indvars.iv206.i to i32
  %223 = shl i32 %indvars.iv206.i.tr, 5
  %224 = or i32 %223, 1
  %smax263 = call i32 @llvm.smax.i32(i32 %191, i32 %224)
  %225 = zext i32 %smax263 to i64
  %226 = mul nuw nsw i64 %225, 32000
  %227 = add nsw i64 %188, %226
  %228 = add i64 %217, %226
  %229 = shl i64 %indvars.iv206.i, 8
  %230 = or i64 %229, 1
  %231 = add i64 %230, %226
  %232 = mul i64 %indvars.iv206.i, 1024000
  %233 = add i64 %188, %232
  %234 = add i64 %201, %232
  %235 = shl i64 %indvars.iv206.i, 8
  %236 = add i64 %80, %235
  %237 = mul i64 %indvars.iv206.i, 1024000
  %238 = add i64 %82, %237
  %239 = add i64 %84, %237
  %240 = shl i64 %indvars.iv206.i, 8
  %241 = add i64 %89, %240
  %242 = mul i64 %indvars.iv206.i, 1024000
  %243 = add i64 %90, %242
  %244 = add i64 %91, %242
  %245 = shl i64 %indvars.iv206.i, 8
  %246 = add i64 %106, %245
  %247 = mul i64 %indvars.iv206.i, 1024000
  %248 = add i64 %108, %247
  %249 = add i64 %110, %247
  %smax = call i32 @llvm.smax.i32(i32 %indvars.iv126.i, i32 %indvars.iv151.i)
  %250 = zext i32 %smax to i64
  %251 = add nsw i64 %250, -1
  %cmp165.i = icmp ne i64 %216, %indvars.iv206.i
  %brmerge.i = or i1 %cmp198.not11.i, %cmp165.i
  br i1 %brmerge.i, label %if.end.i, label %for.cond201.preheader.i

for.cond201.preheader.i:                          ; preds = %for.body164.i, %for.end235.i
  %indvar343 = phi i64 [ %indvar.next344, %for.end235.i ], [ 0, %for.body164.i ]
  %indvars.iv128.i = phi i64 [ %indvars.iv.next129.i, %for.end235.i ], [ %203, %for.body164.i ]
  %252 = mul nuw nsw i64 %indvar343, 32000
  %253 = add i64 %155, %252
  %scevgep345 = getelementptr i8, i8* %call.i, i64 %253
  %254 = add i64 %158, %252
  %scevgep347 = getelementptr i8, i8* %call.i, i64 %254
  %255 = add i64 %160, %252
  br label %for.body205.i

for.cond201.loopexit.i:                           ; preds = %for.body218.for.body218_crit_edge.i.prol.loopexit, %for.body218.for.body218_crit_edge.i, %middle.block363, %for.body205.i.for.cond201.loopexit.i_crit_edge, %for.body218.i.preheader
  %indvars.iv.next115.i.pre-phi = phi i64 [ %.pre54, %for.body205.i.for.cond201.loopexit.i_crit_edge ], [ %indvars.iv.next117.i29, %for.body218.i.preheader ], [ %indvars.iv.next117.i29, %middle.block363 ], [ %indvars.iv.next117.i29, %for.body218.for.body218_crit_edge.i ], [ %indvars.iv.next117.i29, %for.body218.for.body218_crit_edge.i.prol.loopexit ]
  %exitcond.not = icmp eq i64 %indvars.iv.next123.i, %indvars.iv
  %indvar.next349 = add i64 %indvar348, 1
  br i1 %exitcond.not, label %for.end235.i, label %for.body205.i, !llvm.loop !14

for.body205.i:                                    ; preds = %for.cond201.loopexit.i, %for.cond201.preheader.i
  %indvar348 = phi i64 [ %indvar.next349, %for.cond201.loopexit.i ], [ 0, %for.cond201.preheader.i ]
  %indvars.iv122.i = phi i64 [ %indvars.iv.next123.i, %for.cond201.loopexit.i ], [ %indvars.iv213.in.i, %for.cond201.preheader.i ]
  %indvars.iv114.i = phi i64 [ %indvars.iv.next115.i.pre-phi, %for.cond201.loopexit.i ], [ %indvars.iv.i12, %for.cond201.preheader.i ]
  %256 = shl nuw nsw i64 %indvar348, 3
  %257 = add i64 %255, %256
  %scevgep350 = getelementptr i8, i8* %call.i, i64 %257
  %258 = mul nuw nsw i64 %indvar348, 32000
  %259 = add i64 %162, %258
  %scevgep351 = getelementptr i8, i8* %call.i, i64 %259
  %260 = add i64 %164, %258
  %scevgep353 = getelementptr i8, i8* %call.i, i64 %260
  %arrayidx207.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv122.i, i64 %indvars.iv122.i
  %261 = load double, double* %arrayidx207.i, align 8, !tbaa !2
  %arrayidx211.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv128.i, i64 %indvars.iv122.i
  %262 = load double, double* %arrayidx211.i, align 8, !tbaa !2
  %div212.i = fdiv double %262, %261
  store double %div212.i, double* %arrayidx211.i, align 8, !tbaa !2
  %indvars.iv.next123.i = add nsw i64 %indvars.iv122.i, 1
  %cmp217.not8.not.i = icmp slt i64 %indvars.iv122.i, %idxprom238.i
  br i1 %cmp217.not8.not.i, label %for.body218.i.preheader, label %for.body205.i.for.cond201.loopexit.i_crit_edge

for.body205.i.for.cond201.loopexit.i_crit_edge:   ; preds = %for.body205.i
  %.pre54 = add nsw i64 %indvars.iv114.i, 1
  br label %for.cond201.loopexit.i

for.body218.i.preheader:                          ; preds = %for.body205.i
  %arrayidx226.i25 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv122.i, i64 %indvars.iv114.i
  %263 = load double, double* %arrayidx226.i25, align 8, !tbaa !2
  %mul227.i26 = fmul double %div212.i, %263
  %arrayidx231.i27 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv128.i, i64 %indvars.iv114.i
  %264 = load double, double* %arrayidx231.i27, align 8, !tbaa !2
  %sub232.i28 = fsub double %264, %mul227.i26
  store double %sub232.i28, double* %arrayidx231.i27, align 8, !tbaa !2
  %indvars.iv.next117.i29 = add nsw i64 %indvars.iv114.i, 1
  %exitcond.not.i1330 = icmp eq i64 %indvars.iv.next117.i29, %indvars.iv213.i
  br i1 %exitcond.not.i1330, label %for.cond201.loopexit.i, label %for.body218.for.body218_crit_edge.i.preheader, !llvm.loop !15

for.body218.for.body218_crit_edge.i.preheader:    ; preds = %for.body218.i.preheader
  %265 = sub i64 %146, %indvars.iv114.i
  %min.iters.check366 = icmp ult i64 %265, 4
  br i1 %min.iters.check366, label %for.body218.for.body218_crit_edge.i.preheader387, label %vector.memcheck341

vector.memcheck341:                               ; preds = %for.body218.for.body218_crit_edge.i.preheader
  %266 = shl i64 %indvars.iv114.i, 3
  %scevgep346 = getelementptr i8, i8* %scevgep345, i64 %266
  %scevgep352 = getelementptr i8, i8* %scevgep351, i64 %266
  %bc354 = bitcast double* %arrayidx211.i to i8*
  %bound0355 = icmp ult i8* %scevgep346, %scevgep350
  %bound1356 = icmp ugt i8* %scevgep347, %bc354
  %found.conflict357 = and i1 %bound0355, %bound1356
  %bound0358 = icmp ult i8* %scevgep346, %scevgep353
  %bound1359 = icmp ult i8* %scevgep352, %scevgep347
  %found.conflict360 = and i1 %bound0358, %bound1359
  %conflict.rdx361 = or i1 %found.conflict357, %found.conflict360
  br i1 %conflict.rdx361, label %for.body218.for.body218_crit_edge.i.preheader387, label %vector.ph367

vector.ph367:                                     ; preds = %vector.memcheck341
  %n.vec369 = and i64 %265, -4
  %ind.end373 = add i64 %indvars.iv.next117.i29, %n.vec369
  %267 = load double, double* %arrayidx211.i, align 8, !tbaa !2, !alias.scope !16
  %broadcast.splatinsert378 = insertelement <2 x double> poison, double %267, i32 0
  %broadcast.splat379 = shufflevector <2 x double> %broadcast.splatinsert378, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert380 = insertelement <2 x double> poison, double %267, i32 0
  %broadcast.splat381 = shufflevector <2 x double> %broadcast.splatinsert380, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body365

vector.body365:                                   ; preds = %vector.body365, %vector.ph367
  %index370 = phi i64 [ 0, %vector.ph367 ], [ %index.next371, %vector.body365 ]
  %offset.idx375 = add i64 %indvars.iv.next117.i29, %index370
  %268 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv122.i, i64 %offset.idx375
  %269 = bitcast double* %268 to <2 x double>*
  %wide.load376 = load <2 x double>, <2 x double>* %269, align 8, !tbaa !2, !alias.scope !19
  %270 = getelementptr inbounds double, double* %268, i64 2
  %271 = bitcast double* %270 to <2 x double>*
  %wide.load377 = load <2 x double>, <2 x double>* %271, align 8, !tbaa !2, !alias.scope !19
  %272 = fmul <2 x double> %broadcast.splat379, %wide.load376
  %273 = fmul <2 x double> %broadcast.splat381, %wide.load377
  %274 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv128.i, i64 %offset.idx375
  %275 = bitcast double* %274 to <2 x double>*
  %wide.load382 = load <2 x double>, <2 x double>* %275, align 8, !tbaa !2, !alias.scope !21, !noalias !23
  %276 = getelementptr inbounds double, double* %274, i64 2
  %277 = bitcast double* %276 to <2 x double>*
  %wide.load383 = load <2 x double>, <2 x double>* %277, align 8, !tbaa !2, !alias.scope !21, !noalias !23
  %278 = fsub <2 x double> %wide.load382, %272
  %279 = fsub <2 x double> %wide.load383, %273
  %280 = bitcast double* %274 to <2 x double>*
  store <2 x double> %278, <2 x double>* %280, align 8, !tbaa !2, !alias.scope !21, !noalias !23
  %281 = bitcast double* %276 to <2 x double>*
  store <2 x double> %279, <2 x double>* %281, align 8, !tbaa !2, !alias.scope !21, !noalias !23
  %index.next371 = add i64 %index370, 4
  %282 = icmp eq i64 %index.next371, %n.vec369
  br i1 %282, label %middle.block363, label %vector.body365, !llvm.loop !24

middle.block363:                                  ; preds = %vector.body365
  %cmp.n374 = icmp eq i64 %265, %n.vec369
  br i1 %cmp.n374, label %for.cond201.loopexit.i, label %for.body218.for.body218_crit_edge.i.preheader387

for.body218.for.body218_crit_edge.i.preheader387: ; preds = %vector.memcheck341, %for.body218.for.body218_crit_edge.i.preheader, %middle.block363
  %indvars.iv.next117.i31.ph = phi i64 [ %indvars.iv.next117.i29, %vector.memcheck341 ], [ %indvars.iv.next117.i29, %for.body218.for.body218_crit_edge.i.preheader ], [ %ind.end373, %middle.block363 ]
  %xtraiter389 = and i64 %indvars.iv.next117.i31.ph, 1
  %lcmp.mod390.not = icmp eq i64 %xtraiter389, 0
  br i1 %lcmp.mod390.not, label %for.body218.for.body218_crit_edge.i.prol.loopexit, label %for.body218.for.body218_crit_edge.i.prol

for.body218.for.body218_crit_edge.i.prol:         ; preds = %for.body218.for.body218_crit_edge.i.preheader387
  %.pre.i.prol = load double, double* %arrayidx211.i, align 8, !tbaa !2
  %arrayidx226.i.prol = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv122.i, i64 %indvars.iv.next117.i31.ph
  %283 = load double, double* %arrayidx226.i.prol, align 8, !tbaa !2
  %mul227.i.prol = fmul double %.pre.i.prol, %283
  %arrayidx231.i.prol = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv128.i, i64 %indvars.iv.next117.i31.ph
  %284 = load double, double* %arrayidx231.i.prol, align 8, !tbaa !2
  %sub232.i.prol = fsub double %284, %mul227.i.prol
  store double %sub232.i.prol, double* %arrayidx231.i.prol, align 8, !tbaa !2
  %indvars.iv.next117.i.prol = add nsw i64 %indvars.iv.next117.i31.ph, 1
  br label %for.body218.for.body218_crit_edge.i.prol.loopexit

for.body218.for.body218_crit_edge.i.prol.loopexit: ; preds = %for.body218.for.body218_crit_edge.i.prol, %for.body218.for.body218_crit_edge.i.preheader387
  %indvars.iv.next117.i31.unr.ph = phi i64 [ %indvars.iv.next117.i.prol, %for.body218.for.body218_crit_edge.i.prol ], [ %indvars.iv.next117.i31.ph, %for.body218.for.body218_crit_edge.i.preheader387 ]
  %285 = icmp eq i64 %144, %indvars.iv.next117.i31.ph
  br i1 %285, label %for.cond201.loopexit.i, label %for.body218.for.body218_crit_edge.i

for.body218.for.body218_crit_edge.i:              ; preds = %for.body218.for.body218_crit_edge.i.prol.loopexit, %for.body218.for.body218_crit_edge.i
  %indvars.iv.next117.i31 = phi i64 [ %indvars.iv.next117.i.1, %for.body218.for.body218_crit_edge.i ], [ %indvars.iv.next117.i31.unr.ph, %for.body218.for.body218_crit_edge.i.prol.loopexit ]
  %.pre.i = load double, double* %arrayidx211.i, align 8, !tbaa !2
  %arrayidx226.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv122.i, i64 %indvars.iv.next117.i31
  %286 = load double, double* %arrayidx226.i, align 8, !tbaa !2
  %mul227.i = fmul double %.pre.i, %286
  %arrayidx231.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv128.i, i64 %indvars.iv.next117.i31
  %287 = load double, double* %arrayidx231.i, align 8, !tbaa !2
  %sub232.i = fsub double %287, %mul227.i
  store double %sub232.i, double* %arrayidx231.i, align 8, !tbaa !2
  %indvars.iv.next117.i = add nsw i64 %indvars.iv.next117.i31, 1
  %.pre.i.1 = load double, double* %arrayidx211.i, align 8, !tbaa !2
  %arrayidx226.i.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv122.i, i64 %indvars.iv.next117.i
  %288 = load double, double* %arrayidx226.i.1, align 8, !tbaa !2
  %mul227.i.1 = fmul double %.pre.i.1, %288
  %arrayidx231.i.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv128.i, i64 %indvars.iv.next117.i
  %289 = load double, double* %arrayidx231.i.1, align 8, !tbaa !2
  %sub232.i.1 = fsub double %289, %mul227.i.1
  store double %sub232.i.1, double* %arrayidx231.i.1, align 8, !tbaa !2
  %indvars.iv.next117.i.1 = add nsw i64 %indvars.iv.next117.i31, 2
  %exitcond.not.i13.1 = icmp eq i64 %indvars.iv.next117.i.1, %indvars.iv213.i
  br i1 %exitcond.not.i13.1, label %for.cond201.loopexit.i, label %for.body218.for.body218_crit_edge.i, !llvm.loop !25

for.end235.i:                                     ; preds = %for.cond201.loopexit.i
  %290 = load double, double* %arrayidx243.i, align 8, !tbaa !2
  %arrayidx249.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv128.i, i64 %idxprom238.i
  %291 = load double, double* %arrayidx249.i, align 8, !tbaa !2
  %div250.i = fdiv double %291, %290
  store double %div250.i, double* %arrayidx249.i, align 8, !tbaa !2
  %indvars.iv.next129.i = add nsw i64 %indvars.iv128.i, 1
  %cmp198.not.not.i = icmp slt i64 %indvars.iv128.i, %212
  %indvar.next344 = add i64 %indvar343, 1
  br i1 %cmp198.not.not.i, label %for.cond201.preheader.i, label %if.end.i, !llvm.loop !26

if.end.i:                                         ; preds = %for.end235.i, %for.body164.i
  %indvars.iv.next207.i = add nuw nsw i64 %indvars.iv206.i, 1
  %cmp255.not.not.i = icmp sle i64 %indvars.iv215.i, %indvars.iv206.i
  %brmerge101.i = or i1 %cmp198.not11.i, %cmp255.not.not.i
  br i1 %brmerge101.i, label %if.end325.i, label %for.body289.i

for.body289.i:                                    ; preds = %if.end.i, %for.inc322.i
  %indvar309 = phi i64 [ %indvar.next310, %for.inc322.i ], [ 0, %if.end.i ]
  %indvars.iv141.i = phi i64 [ %indvars.iv.next142.i, %for.inc322.i ], [ %203, %if.end.i ]
  %292 = mul nuw nsw i64 %indvar309, 32000
  %293 = add i64 %175, %292
  %scevgep311 = getelementptr i8, i8* %call.i, i64 %293
  %294 = add i64 %177, %292
  %scevgep312 = getelementptr i8, i8* %call.i, i64 %294
  %295 = add i64 %219, %292
  %296 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv141.i, i64 %indvars.iv213.in.i
  %297 = bitcast double* %296 to <2 x double>*
  %298 = bitcast double* %296 to <2 x double>*
  %299 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv141.i, i64 %offset.idx336.1
  %300 = bitcast double* %299 to <2 x double>*
  %301 = bitcast double* %299 to <2 x double>*
  %302 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv141.i, i64 %offset.idx336.2
  %303 = bitcast double* %302 to <2 x double>*
  %304 = bitcast double* %302 to <2 x double>*
  %305 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv141.i, i64 %offset.idx336.3
  %306 = bitcast double* %305 to <2 x double>*
  %307 = bitcast double* %305 to <2 x double>*
  %308 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv141.i, i64 %offset.idx336.4
  %309 = bitcast double* %308 to <2 x double>*
  %310 = bitcast double* %308 to <2 x double>*
  %311 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv141.i, i64 %offset.idx336.5
  %312 = bitcast double* %311 to <2 x double>*
  %313 = bitcast double* %311 to <2 x double>*
  %314 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv141.i, i64 %offset.idx336.6
  %315 = bitcast double* %314 to <2 x double>*
  %316 = bitcast double* %314 to <2 x double>*
  %317 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv141.i, i64 %offset.idx336.7
  %318 = bitcast double* %317 to <2 x double>*
  %319 = bitcast double* %317 to <2 x double>*
  %320 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv141.i, i64 %offset.idx336.8
  %321 = bitcast double* %320 to <2 x double>*
  %322 = bitcast double* %320 to <2 x double>*
  %323 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv141.i, i64 %offset.idx336.9
  %324 = bitcast double* %323 to <2 x double>*
  %325 = bitcast double* %323 to <2 x double>*
  %326 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv141.i, i64 %offset.idx336.10
  %327 = bitcast double* %326 to <2 x double>*
  %328 = bitcast double* %326 to <2 x double>*
  %329 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv141.i, i64 %offset.idx336.11
  %330 = bitcast double* %329 to <2 x double>*
  %331 = bitcast double* %329 to <2 x double>*
  %332 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv141.i, i64 %offset.idx336.12
  %333 = bitcast double* %332 to <2 x double>*
  %334 = bitcast double* %332 to <2 x double>*
  %335 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv141.i, i64 %offset.idx336.13
  %336 = bitcast double* %335 to <2 x double>*
  %337 = bitcast double* %335 to <2 x double>*
  %338 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv141.i, i64 %offset.idx336.14
  %339 = bitcast double* %338 to <2 x double>*
  %340 = bitcast double* %338 to <2 x double>*
  %341 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv141.i, i64 %offset.idx336.15
  %342 = bitcast double* %341 to <2 x double>*
  %343 = bitcast double* %341 to <2 x double>*
  br label %for.cond297.preheader.i

for.cond297.preheader.i:                          ; preds = %for.inc319.i, %for.body289.i
  %indvar313 = phi i64 [ %indvar.next314, %for.inc319.i ], [ 0, %for.body289.i ]
  %indvars.iv134.i = phi i64 [ %indvars.iv.next135.i, %for.inc319.i ], [ %indvars.iv132.i, %for.body289.i ]
  %344 = mul nuw nsw i64 %indvar313, 32000
  %arrayidx305.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv141.i, i64 %indvars.iv134.i
  %345 = add i64 %222, %344
  %scevgep317 = getelementptr i8, i8* %call.i, i64 %345
  %346 = add i64 %221, %344
  %scevgep316 = getelementptr i8, i8* %call.i, i64 %346
  %347 = shl nuw nsw i64 %indvar313, 3
  %348 = add i64 %295, %347
  %scevgep315 = getelementptr i8, i8* %call.i, i64 %348
  %bc318 = bitcast double* %arrayidx305.i to i8*
  %bound0319 = icmp ult i8* %scevgep311, %scevgep315
  %bound1320 = icmp ugt i8* %scevgep312, %bc318
  %found.conflict321 = and i1 %bound0319, %bound1320
  %bound0322 = icmp ult i8* %scevgep311, %scevgep317
  %bound1323 = icmp ult i8* %scevgep316, %scevgep312
  %found.conflict324 = and i1 %bound0322, %bound1323
  %conflict.rdx325 = or i1 %found.conflict321, %found.conflict324
  br i1 %conflict.rdx325, label %for.body301.i, label %vector.body329

vector.body329:                                   ; preds = %for.cond297.preheader.i
  %349 = load double, double* %arrayidx305.i, align 8, !tbaa !2, !alias.scope !27
  %broadcast.splatinsert338 = insertelement <2 x double> poison, double %349, i32 0
  %broadcast.splat339 = shufflevector <2 x double> %broadcast.splatinsert338, <2 x double> poison, <2 x i32> zeroinitializer
  %350 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv134.i, i64 %indvars.iv213.in.i
  %351 = bitcast double* %350 to <2 x double>*
  %wide.load337 = load <2 x double>, <2 x double>* %351, align 8, !tbaa !2, !alias.scope !30
  %352 = fmul <2 x double> %broadcast.splat339, %wide.load337
  %wide.load340 = load <2 x double>, <2 x double>* %297, align 8, !tbaa !2, !alias.scope !32, !noalias !34
  %353 = fsub <2 x double> %wide.load340, %352
  store <2 x double> %353, <2 x double>* %298, align 8, !tbaa !2, !alias.scope !32, !noalias !34
  %354 = load double, double* %arrayidx305.i, align 8, !tbaa !2, !alias.scope !27
  %broadcast.splatinsert338.1 = insertelement <2 x double> poison, double %354, i32 0
  %broadcast.splat339.1 = shufflevector <2 x double> %broadcast.splatinsert338.1, <2 x double> poison, <2 x i32> zeroinitializer
  %355 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv134.i, i64 %offset.idx336.1
  %356 = bitcast double* %355 to <2 x double>*
  %wide.load337.1 = load <2 x double>, <2 x double>* %356, align 8, !tbaa !2, !alias.scope !30
  %357 = fmul <2 x double> %broadcast.splat339.1, %wide.load337.1
  %wide.load340.1 = load <2 x double>, <2 x double>* %300, align 8, !tbaa !2, !alias.scope !32, !noalias !34
  %358 = fsub <2 x double> %wide.load340.1, %357
  store <2 x double> %358, <2 x double>* %301, align 8, !tbaa !2, !alias.scope !32, !noalias !34
  %359 = load double, double* %arrayidx305.i, align 8, !tbaa !2, !alias.scope !27
  %broadcast.splatinsert338.2 = insertelement <2 x double> poison, double %359, i32 0
  %broadcast.splat339.2 = shufflevector <2 x double> %broadcast.splatinsert338.2, <2 x double> poison, <2 x i32> zeroinitializer
  %360 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv134.i, i64 %offset.idx336.2
  %361 = bitcast double* %360 to <2 x double>*
  %wide.load337.2 = load <2 x double>, <2 x double>* %361, align 8, !tbaa !2, !alias.scope !30
  %362 = fmul <2 x double> %broadcast.splat339.2, %wide.load337.2
  %wide.load340.2 = load <2 x double>, <2 x double>* %303, align 8, !tbaa !2, !alias.scope !32, !noalias !34
  %363 = fsub <2 x double> %wide.load340.2, %362
  store <2 x double> %363, <2 x double>* %304, align 8, !tbaa !2, !alias.scope !32, !noalias !34
  %364 = load double, double* %arrayidx305.i, align 8, !tbaa !2, !alias.scope !27
  %broadcast.splatinsert338.3 = insertelement <2 x double> poison, double %364, i32 0
  %broadcast.splat339.3 = shufflevector <2 x double> %broadcast.splatinsert338.3, <2 x double> poison, <2 x i32> zeroinitializer
  %365 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv134.i, i64 %offset.idx336.3
  %366 = bitcast double* %365 to <2 x double>*
  %wide.load337.3 = load <2 x double>, <2 x double>* %366, align 8, !tbaa !2, !alias.scope !30
  %367 = fmul <2 x double> %broadcast.splat339.3, %wide.load337.3
  %wide.load340.3 = load <2 x double>, <2 x double>* %306, align 8, !tbaa !2, !alias.scope !32, !noalias !34
  %368 = fsub <2 x double> %wide.load340.3, %367
  store <2 x double> %368, <2 x double>* %307, align 8, !tbaa !2, !alias.scope !32, !noalias !34
  %369 = load double, double* %arrayidx305.i, align 8, !tbaa !2, !alias.scope !27
  %broadcast.splatinsert338.4 = insertelement <2 x double> poison, double %369, i32 0
  %broadcast.splat339.4 = shufflevector <2 x double> %broadcast.splatinsert338.4, <2 x double> poison, <2 x i32> zeroinitializer
  %370 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv134.i, i64 %offset.idx336.4
  %371 = bitcast double* %370 to <2 x double>*
  %wide.load337.4 = load <2 x double>, <2 x double>* %371, align 8, !tbaa !2, !alias.scope !30
  %372 = fmul <2 x double> %broadcast.splat339.4, %wide.load337.4
  %wide.load340.4 = load <2 x double>, <2 x double>* %309, align 8, !tbaa !2, !alias.scope !32, !noalias !34
  %373 = fsub <2 x double> %wide.load340.4, %372
  store <2 x double> %373, <2 x double>* %310, align 8, !tbaa !2, !alias.scope !32, !noalias !34
  %374 = load double, double* %arrayidx305.i, align 8, !tbaa !2, !alias.scope !27
  %broadcast.splatinsert338.5 = insertelement <2 x double> poison, double %374, i32 0
  %broadcast.splat339.5 = shufflevector <2 x double> %broadcast.splatinsert338.5, <2 x double> poison, <2 x i32> zeroinitializer
  %375 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv134.i, i64 %offset.idx336.5
  %376 = bitcast double* %375 to <2 x double>*
  %wide.load337.5 = load <2 x double>, <2 x double>* %376, align 8, !tbaa !2, !alias.scope !30
  %377 = fmul <2 x double> %broadcast.splat339.5, %wide.load337.5
  %wide.load340.5 = load <2 x double>, <2 x double>* %312, align 8, !tbaa !2, !alias.scope !32, !noalias !34
  %378 = fsub <2 x double> %wide.load340.5, %377
  store <2 x double> %378, <2 x double>* %313, align 8, !tbaa !2, !alias.scope !32, !noalias !34
  %379 = load double, double* %arrayidx305.i, align 8, !tbaa !2, !alias.scope !27
  %broadcast.splatinsert338.6 = insertelement <2 x double> poison, double %379, i32 0
  %broadcast.splat339.6 = shufflevector <2 x double> %broadcast.splatinsert338.6, <2 x double> poison, <2 x i32> zeroinitializer
  %380 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv134.i, i64 %offset.idx336.6
  %381 = bitcast double* %380 to <2 x double>*
  %wide.load337.6 = load <2 x double>, <2 x double>* %381, align 8, !tbaa !2, !alias.scope !30
  %382 = fmul <2 x double> %broadcast.splat339.6, %wide.load337.6
  %wide.load340.6 = load <2 x double>, <2 x double>* %315, align 8, !tbaa !2, !alias.scope !32, !noalias !34
  %383 = fsub <2 x double> %wide.load340.6, %382
  store <2 x double> %383, <2 x double>* %316, align 8, !tbaa !2, !alias.scope !32, !noalias !34
  %384 = load double, double* %arrayidx305.i, align 8, !tbaa !2, !alias.scope !27
  %broadcast.splatinsert338.7 = insertelement <2 x double> poison, double %384, i32 0
  %broadcast.splat339.7 = shufflevector <2 x double> %broadcast.splatinsert338.7, <2 x double> poison, <2 x i32> zeroinitializer
  %385 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv134.i, i64 %offset.idx336.7
  %386 = bitcast double* %385 to <2 x double>*
  %wide.load337.7 = load <2 x double>, <2 x double>* %386, align 8, !tbaa !2, !alias.scope !30
  %387 = fmul <2 x double> %broadcast.splat339.7, %wide.load337.7
  %wide.load340.7 = load <2 x double>, <2 x double>* %318, align 8, !tbaa !2, !alias.scope !32, !noalias !34
  %388 = fsub <2 x double> %wide.load340.7, %387
  store <2 x double> %388, <2 x double>* %319, align 8, !tbaa !2, !alias.scope !32, !noalias !34
  %389 = load double, double* %arrayidx305.i, align 8, !tbaa !2, !alias.scope !27
  %broadcast.splatinsert338.8 = insertelement <2 x double> poison, double %389, i32 0
  %broadcast.splat339.8 = shufflevector <2 x double> %broadcast.splatinsert338.8, <2 x double> poison, <2 x i32> zeroinitializer
  %390 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv134.i, i64 %offset.idx336.8
  %391 = bitcast double* %390 to <2 x double>*
  %wide.load337.8 = load <2 x double>, <2 x double>* %391, align 8, !tbaa !2, !alias.scope !30
  %392 = fmul <2 x double> %broadcast.splat339.8, %wide.load337.8
  %wide.load340.8 = load <2 x double>, <2 x double>* %321, align 8, !tbaa !2, !alias.scope !32, !noalias !34
  %393 = fsub <2 x double> %wide.load340.8, %392
  store <2 x double> %393, <2 x double>* %322, align 8, !tbaa !2, !alias.scope !32, !noalias !34
  %394 = load double, double* %arrayidx305.i, align 8, !tbaa !2, !alias.scope !27
  %broadcast.splatinsert338.9 = insertelement <2 x double> poison, double %394, i32 0
  %broadcast.splat339.9 = shufflevector <2 x double> %broadcast.splatinsert338.9, <2 x double> poison, <2 x i32> zeroinitializer
  %395 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv134.i, i64 %offset.idx336.9
  %396 = bitcast double* %395 to <2 x double>*
  %wide.load337.9 = load <2 x double>, <2 x double>* %396, align 8, !tbaa !2, !alias.scope !30
  %397 = fmul <2 x double> %broadcast.splat339.9, %wide.load337.9
  %wide.load340.9 = load <2 x double>, <2 x double>* %324, align 8, !tbaa !2, !alias.scope !32, !noalias !34
  %398 = fsub <2 x double> %wide.load340.9, %397
  store <2 x double> %398, <2 x double>* %325, align 8, !tbaa !2, !alias.scope !32, !noalias !34
  %399 = load double, double* %arrayidx305.i, align 8, !tbaa !2, !alias.scope !27
  %broadcast.splatinsert338.10 = insertelement <2 x double> poison, double %399, i32 0
  %broadcast.splat339.10 = shufflevector <2 x double> %broadcast.splatinsert338.10, <2 x double> poison, <2 x i32> zeroinitializer
  %400 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv134.i, i64 %offset.idx336.10
  %401 = bitcast double* %400 to <2 x double>*
  %wide.load337.10 = load <2 x double>, <2 x double>* %401, align 8, !tbaa !2, !alias.scope !30
  %402 = fmul <2 x double> %broadcast.splat339.10, %wide.load337.10
  %wide.load340.10 = load <2 x double>, <2 x double>* %327, align 8, !tbaa !2, !alias.scope !32, !noalias !34
  %403 = fsub <2 x double> %wide.load340.10, %402
  store <2 x double> %403, <2 x double>* %328, align 8, !tbaa !2, !alias.scope !32, !noalias !34
  %404 = load double, double* %arrayidx305.i, align 8, !tbaa !2, !alias.scope !27
  %broadcast.splatinsert338.11 = insertelement <2 x double> poison, double %404, i32 0
  %broadcast.splat339.11 = shufflevector <2 x double> %broadcast.splatinsert338.11, <2 x double> poison, <2 x i32> zeroinitializer
  %405 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv134.i, i64 %offset.idx336.11
  %406 = bitcast double* %405 to <2 x double>*
  %wide.load337.11 = load <2 x double>, <2 x double>* %406, align 8, !tbaa !2, !alias.scope !30
  %407 = fmul <2 x double> %broadcast.splat339.11, %wide.load337.11
  %wide.load340.11 = load <2 x double>, <2 x double>* %330, align 8, !tbaa !2, !alias.scope !32, !noalias !34
  %408 = fsub <2 x double> %wide.load340.11, %407
  store <2 x double> %408, <2 x double>* %331, align 8, !tbaa !2, !alias.scope !32, !noalias !34
  %409 = load double, double* %arrayidx305.i, align 8, !tbaa !2, !alias.scope !27
  %broadcast.splatinsert338.12 = insertelement <2 x double> poison, double %409, i32 0
  %broadcast.splat339.12 = shufflevector <2 x double> %broadcast.splatinsert338.12, <2 x double> poison, <2 x i32> zeroinitializer
  %410 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv134.i, i64 %offset.idx336.12
  %411 = bitcast double* %410 to <2 x double>*
  %wide.load337.12 = load <2 x double>, <2 x double>* %411, align 8, !tbaa !2, !alias.scope !30
  %412 = fmul <2 x double> %broadcast.splat339.12, %wide.load337.12
  %wide.load340.12 = load <2 x double>, <2 x double>* %333, align 8, !tbaa !2, !alias.scope !32, !noalias !34
  %413 = fsub <2 x double> %wide.load340.12, %412
  store <2 x double> %413, <2 x double>* %334, align 8, !tbaa !2, !alias.scope !32, !noalias !34
  %414 = load double, double* %arrayidx305.i, align 8, !tbaa !2, !alias.scope !27
  %broadcast.splatinsert338.13 = insertelement <2 x double> poison, double %414, i32 0
  %broadcast.splat339.13 = shufflevector <2 x double> %broadcast.splatinsert338.13, <2 x double> poison, <2 x i32> zeroinitializer
  %415 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv134.i, i64 %offset.idx336.13
  %416 = bitcast double* %415 to <2 x double>*
  %wide.load337.13 = load <2 x double>, <2 x double>* %416, align 8, !tbaa !2, !alias.scope !30
  %417 = fmul <2 x double> %broadcast.splat339.13, %wide.load337.13
  %wide.load340.13 = load <2 x double>, <2 x double>* %336, align 8, !tbaa !2, !alias.scope !32, !noalias !34
  %418 = fsub <2 x double> %wide.load340.13, %417
  store <2 x double> %418, <2 x double>* %337, align 8, !tbaa !2, !alias.scope !32, !noalias !34
  %419 = load double, double* %arrayidx305.i, align 8, !tbaa !2, !alias.scope !27
  %broadcast.splatinsert338.14 = insertelement <2 x double> poison, double %419, i32 0
  %broadcast.splat339.14 = shufflevector <2 x double> %broadcast.splatinsert338.14, <2 x double> poison, <2 x i32> zeroinitializer
  %420 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv134.i, i64 %offset.idx336.14
  %421 = bitcast double* %420 to <2 x double>*
  %wide.load337.14 = load <2 x double>, <2 x double>* %421, align 8, !tbaa !2, !alias.scope !30
  %422 = fmul <2 x double> %broadcast.splat339.14, %wide.load337.14
  %wide.load340.14 = load <2 x double>, <2 x double>* %339, align 8, !tbaa !2, !alias.scope !32, !noalias !34
  %423 = fsub <2 x double> %wide.load340.14, %422
  store <2 x double> %423, <2 x double>* %340, align 8, !tbaa !2, !alias.scope !32, !noalias !34
  %424 = load double, double* %arrayidx305.i, align 8, !tbaa !2, !alias.scope !27
  %broadcast.splatinsert338.15 = insertelement <2 x double> poison, double %424, i32 0
  %broadcast.splat339.15 = shufflevector <2 x double> %broadcast.splatinsert338.15, <2 x double> poison, <2 x i32> zeroinitializer
  %425 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv134.i, i64 %offset.idx336.15
  %426 = bitcast double* %425 to <2 x double>*
  %wide.load337.15 = load <2 x double>, <2 x double>* %426, align 8, !tbaa !2, !alias.scope !30
  %427 = fmul <2 x double> %broadcast.splat339.15, %wide.load337.15
  %wide.load340.15 = load <2 x double>, <2 x double>* %342, align 8, !tbaa !2, !alias.scope !32, !noalias !34
  %428 = fsub <2 x double> %wide.load340.15, %427
  store <2 x double> %428, <2 x double>* %343, align 8, !tbaa !2, !alias.scope !32, !noalias !34
  br label %for.inc319.i

for.body301.i:                                    ; preds = %for.cond297.preheader.i, %for.body301.i
  %indvars.iv130.i = phi i64 [ %indvars.iv.next131.i.1, %for.body301.i ], [ %indvars.iv213.in.i, %for.cond297.preheader.i ]
  %429 = load double, double* %arrayidx305.i, align 8, !tbaa !2
  %arrayidx309.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv134.i, i64 %indvars.iv130.i
  %430 = load double, double* %arrayidx309.i, align 8, !tbaa !2
  %mul310.i = fmul double %429, %430
  %arrayidx314.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv141.i, i64 %indvars.iv130.i
  %431 = load double, double* %arrayidx314.i, align 8, !tbaa !2
  %sub315.i = fsub double %431, %mul310.i
  store double %sub315.i, double* %arrayidx314.i, align 8, !tbaa !2
  %indvars.iv.next131.i = or i64 %indvars.iv130.i, 1
  %432 = load double, double* %arrayidx305.i, align 8, !tbaa !2
  %arrayidx309.i.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv134.i, i64 %indvars.iv.next131.i
  %433 = load double, double* %arrayidx309.i.1, align 8, !tbaa !2
  %mul310.i.1 = fmul double %432, %433
  %arrayidx314.i.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv141.i, i64 %indvars.iv.next131.i
  %434 = load double, double* %arrayidx314.i.1, align 8, !tbaa !2
  %sub315.i.1 = fsub double %434, %mul310.i.1
  store double %sub315.i.1, double* %arrayidx314.i.1, align 8, !tbaa !2
  %indvars.iv.next131.i.1 = add nsw i64 %indvars.iv130.i, 2
  %exitcond38.not.1 = icmp eq i64 %indvars.iv.next131.i.1, %indvars.iv36
  br i1 %exitcond38.not.1, label %for.inc319.i, label %for.body301.i, !llvm.loop !35

for.inc319.i:                                     ; preds = %for.body301.i, %vector.body329
  %indvars.iv.next135.i = add nuw nsw i64 %indvars.iv134.i, 1
  %exitcond139.not.i = icmp eq i64 %indvars.iv.next135.i, %indvars.iv204.i
  %indvar.next314 = add i64 %indvar313, 1
  br i1 %exitcond139.not.i, label %for.inc322.i, label %for.cond297.preheader.i, !llvm.loop !36

for.inc322.i:                                     ; preds = %for.inc319.i
  %indvars.iv.next142.i = add nsw i64 %indvars.iv141.i, 1
  %cmp288.not.not.i = icmp slt i64 %indvars.iv141.i, %212
  %indvar.next310 = add i64 %indvar309, 1
  br i1 %cmp288.not.not.i, label %for.body289.i, label %if.end325.i, !llvm.loop !37

if.end325.i:                                      ; preds = %for.inc322.i, %if.end.i
  %435 = shl nuw nsw i64 %indvars.iv206.i, 1
  %cmp329.i = icmp eq i64 %indvars.iv222.i, %435
  %or.cond.i = and i1 %cmp327.i, %cmp329.i
  %brmerge261.demorgan.i = and i1 %cmp331.i, %or.cond.i
  br i1 %brmerge261.demorgan.i, label %if.end347.i, label %if.end391.i

if.end347.i:                                      ; preds = %if.end325.i
  %436 = load double, double* %arrayidx338.i, align 8, !tbaa !2
  %437 = load double, double* %arrayidx345.i, align 8, !tbaa !2
  %div346.i = fdiv double %437, %436
  store double %div346.i, double* %arrayidx345.i, align 8, !tbaa !2
  br i1 %cmp362.not17.i, label %if.end391.i, label %for.body363.us.i.preheader

for.body363.us.i.preheader:                       ; preds = %if.end347.i
  %438 = load double, double* %arrayidx378.us.i57, align 8, !tbaa !2
  %mul379.us.i58 = fmul double %div346.i, %438
  %439 = load double, double* %arrayidx385.us.i59, align 8, !tbaa !2
  %sub386.us.i60 = fsub double %439, %mul379.us.i58
  store double %sub386.us.i60, double* %arrayidx385.us.i59, align 8, !tbaa !2
  br i1 %cmp362.not.us.not.i61, label %for.body363.us.i.for.body363.us.i_crit_edge, label %if.end391.i, !llvm.loop !38

for.body363.us.i.for.body363.us.i_crit_edge:      ; preds = %for.body363.us.i.preheader, %for.body363.us.i.for.body363.us.i_crit_edge
  %indvars.iv145.i62 = phi i64 [ %indvars.iv.next146.i.1, %for.body363.us.i.for.body363.us.i_crit_edge ], [ %indvars.iv143.i, %for.body363.us.i.preheader ]
  %indvars.iv.next146.i = add nuw nsw i64 %indvars.iv145.i62, 1
  %.pre = load double, double* %arrayidx345.i, align 8, !tbaa !2
  %arrayidx378.us.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %115, i64 %indvars.iv.next146.i
  %440 = load double, double* %arrayidx378.us.i, align 8, !tbaa !2
  %mul379.us.i = fmul double %.pre, %440
  %arrayidx385.us.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %116, i64 %indvars.iv.next146.i
  %441 = load double, double* %arrayidx385.us.i, align 8, !tbaa !2
  %sub386.us.i = fsub double %441, %mul379.us.i
  store double %sub386.us.i, double* %arrayidx385.us.i, align 8, !tbaa !2
  %indvars.iv.next146.i.1 = add nuw nsw i64 %indvars.iv145.i62, 2
  %.pre.1 = load double, double* %arrayidx345.i, align 8, !tbaa !2
  %arrayidx378.us.i.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %115, i64 %indvars.iv.next146.i.1
  %442 = load double, double* %arrayidx378.us.i.1, align 8, !tbaa !2
  %mul379.us.i.1 = fmul double %.pre.1, %442
  %arrayidx385.us.i.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %116, i64 %indvars.iv.next146.i.1
  %443 = load double, double* %arrayidx385.us.i.1, align 8, !tbaa !2
  %sub386.us.i.1 = fsub double %443, %mul379.us.i.1
  store double %sub386.us.i.1, double* %arrayidx385.us.i.1, align 8, !tbaa !2
  %cmp362.not.us.not.i.1 = icmp ult i64 %indvars.iv.next146.i.1, %118
  br i1 %cmp362.not.us.not.i.1, label %for.body363.us.i.for.body363.us.i_crit_edge, label %if.end391.i, !llvm.loop !38

if.end391.i:                                      ; preds = %for.body363.us.i.for.body363.us.i_crit_edge, %for.body363.us.i.preheader, %if.end347.i, %if.end325.i
  %444 = shl nsw i64 %indvars.iv206.i, 5
  %445 = or i64 %444, 1
  %cmp397.i = icmp slt i64 %445, %215
  %446 = trunc i64 %445 to i32
  %cond406.i = select i1 %cmp397.i, i32 %sub169.i, i32 %446
  %cmp423.not25.i = icmp sgt i32 %cond406.i, %cond422.i
  br i1 %cmp423.not25.i, label %for.end477.i, label %for.cond426.preheader.lr.ph.i

for.cond426.preheader.lr.ph.i:                    ; preds = %if.end391.i
  %447 = or i64 %444, 31
  br label %for.cond426.preheader.i

for.cond426.preheader.i:                          ; preds = %for.inc475.i, %for.cond426.preheader.lr.ph.i
  %indvar264 = phi i64 [ %indvar.next265, %for.inc475.i ], [ 0, %for.cond426.preheader.lr.ph.i ]
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %for.inc475.i ], [ %251, %for.cond426.preheader.lr.ph.i ]
  %indvars.iv154.i = phi i64 [ %indvars.iv.next155.i, %for.inc475.i ], [ %250, %for.cond426.preheader.lr.ph.i ]
  %448 = mul nuw nsw i64 %indvar264, 32000
  %449 = add i64 %227, %448
  %scevgep266 = getelementptr i8, i8* %call.i, i64 %449
  %450 = add i64 %228, %448
  %scevgep269 = getelementptr i8, i8* %call.i, i64 %450
  %451 = add i64 %231, %448
  %umin = call i64 @llvm.umin.i64(i64 %indvars.iv39, i64 %indvars.iv41)
  %452 = add nsw i64 %indvars.iv154.i, -1
  %cmp430.i = icmp ult i64 %447, %452
  %cond437.v.i = select i1 %cmp430.i, i64 %447, i64 %452
  %453 = and i64 %cond437.v.i, 4294967295
  %cmp438.not22.i = icmp ugt i64 %444, %453
  %brmerge256.i = or i1 %cmp453.not20.i, %cmp438.not22.i
  br i1 %brmerge256.i, label %for.inc475.i, label %for.cond441.preheader.i

for.cond441.preheader.i:                          ; preds = %for.cond426.preheader.i, %for.cond441.for.inc472_crit_edge.i
  %indvar270 = phi i64 [ %indvar.next271, %for.cond441.for.inc472_crit_edge.i ], [ 0, %for.cond426.preheader.i ]
  %indvars.iv149.i = phi i64 [ %indvars.iv.next150.i, %for.cond441.for.inc472_crit_edge.i ], [ %indvars.iv132.i, %for.cond426.preheader.i ]
  %454 = mul i64 %indvar270, 32000
  %arrayidx458.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv154.i, i64 %indvars.iv149.i
  br i1 %min.iters.check289, label %for.body454.i.preheader, label %vector.memcheck260

vector.memcheck260:                               ; preds = %for.cond441.preheader.i
  %455 = add i64 %234, %454
  %scevgep274 = getelementptr i8, i8* %call.i, i64 %455
  %456 = add i64 %233, %454
  %scevgep273 = getelementptr i8, i8* %call.i, i64 %456
  %457 = shl i64 %indvar270, 3
  %458 = add i64 %451, %457
  %scevgep272 = getelementptr i8, i8* %call.i, i64 %458
  %bc275 = bitcast double* %arrayidx458.i to i8*
  %bound0276 = icmp ult i8* %scevgep266, %scevgep272
  %bound1277 = icmp ugt i8* %scevgep269, %bc275
  %found.conflict278 = and i1 %bound0276, %bound1277
  %bound0279 = icmp ult i8* %scevgep266, %scevgep274
  %bound1280 = icmp ult i8* %scevgep273, %scevgep269
  %found.conflict281 = and i1 %bound0279, %bound1280
  %conflict.rdx282 = or i1 %found.conflict278, %found.conflict281
  br i1 %conflict.rdx282, label %for.body454.i.preheader, label %vector.ph290

vector.ph290:                                     ; preds = %vector.memcheck260
  %459 = load double, double* %arrayidx458.i, align 8, !tbaa !2, !alias.scope !39
  %broadcast.splatinsert301 = insertelement <2 x double> poison, double %459, i32 0
  %broadcast.splat302 = shufflevector <2 x double> %broadcast.splatinsert301, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert303 = insertelement <2 x double> poison, double %459, i32 0
  %broadcast.splat304 = shufflevector <2 x double> %broadcast.splatinsert303, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body286

vector.body286:                                   ; preds = %vector.body286, %vector.ph290
  %index293 = phi i64 [ 0, %vector.ph290 ], [ %index.next294, %vector.body286 ]
  %offset.idx298 = add i64 %indvars.iv213.in.i, %index293
  %460 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv149.i, i64 %offset.idx298
  %461 = bitcast double* %460 to <2 x double>*
  %wide.load299 = load <2 x double>, <2 x double>* %461, align 8, !tbaa !2, !alias.scope !42
  %462 = getelementptr inbounds double, double* %460, i64 2
  %463 = bitcast double* %462 to <2 x double>*
  %wide.load300 = load <2 x double>, <2 x double>* %463, align 8, !tbaa !2, !alias.scope !42
  %464 = fmul <2 x double> %broadcast.splat302, %wide.load299
  %465 = fmul <2 x double> %broadcast.splat304, %wide.load300
  %466 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv154.i, i64 %offset.idx298
  %467 = bitcast double* %466 to <2 x double>*
  %wide.load305 = load <2 x double>, <2 x double>* %467, align 8, !tbaa !2, !alias.scope !44, !noalias !46
  %468 = getelementptr inbounds double, double* %466, i64 2
  %469 = bitcast double* %468 to <2 x double>*
  %wide.load306 = load <2 x double>, <2 x double>* %469, align 8, !tbaa !2, !alias.scope !44, !noalias !46
  %470 = fsub <2 x double> %wide.load305, %464
  %471 = fsub <2 x double> %wide.load306, %465
  %472 = bitcast double* %466 to <2 x double>*
  store <2 x double> %470, <2 x double>* %472, align 8, !tbaa !2, !alias.scope !44, !noalias !46
  %473 = bitcast double* %468 to <2 x double>*
  store <2 x double> %471, <2 x double>* %473, align 8, !tbaa !2, !alias.scope !44, !noalias !46
  %index.next294 = add i64 %index293, 4
  %474 = icmp eq i64 %index.next294, %n.vec292
  br i1 %474, label %middle.block284, label %vector.body286, !llvm.loop !47

middle.block284:                                  ; preds = %vector.body286
  br i1 %cmp.n297, label %for.cond441.for.inc472_crit_edge.i, label %for.body454.i.preheader

for.body454.i.preheader:                          ; preds = %vector.memcheck260, %for.cond441.preheader.i, %middle.block284
  %indvars.iv147.i.ph = phi i64 [ %indvars.iv213.in.i, %vector.memcheck260 ], [ %indvars.iv213.in.i, %for.cond441.preheader.i ], [ %ind.end296, %middle.block284 ]
  br label %for.body454.i

for.body454.i:                                    ; preds = %for.body454.i.preheader, %for.body454.i
  %indvars.iv147.i = phi i64 [ %indvars.iv.next148.i, %for.body454.i ], [ %indvars.iv147.i.ph, %for.body454.i.preheader ]
  %475 = load double, double* %arrayidx458.i, align 8, !tbaa !2
  %arrayidx462.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv149.i, i64 %indvars.iv147.i
  %476 = load double, double* %arrayidx462.i, align 8, !tbaa !2
  %mul463.i = fmul double %475, %476
  %arrayidx467.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv154.i, i64 %indvars.iv147.i
  %477 = load double, double* %arrayidx467.i, align 8, !tbaa !2
  %sub468.i = fsub double %477, %mul463.i
  store double %sub468.i, double* %arrayidx467.i, align 8, !tbaa !2
  %indvars.iv.next148.i = add nsw i64 %indvars.iv147.i, 1
  %cmp453.not.not.i = icmp slt i64 %indvars.iv147.i, %213
  br i1 %cmp453.not.not.i, label %for.body454.i, label %for.cond441.for.inc472_crit_edge.i, !llvm.loop !48

for.cond441.for.inc472_crit_edge.i:               ; preds = %for.body454.i, %middle.block284
  %indvars.iv.next150.i = add nuw nsw i64 %indvars.iv149.i, 1
  %exitcond43.not = icmp eq i64 %indvars.iv149.i, %umin
  %indvar.next271 = add i64 %indvar270, 1
  br i1 %exitcond43.not, label %for.inc475.i, label %for.cond441.preheader.i, !llvm.loop !49

for.inc475.i:                                     ; preds = %for.cond441.for.inc472_crit_edge.i, %for.cond426.preheader.i
  %indvars.iv.next155.i = add nuw nsw i64 %indvars.iv154.i, 1
  %cmp423.not.not.i = icmp slt i64 %indvars.iv154.i, %214
  %indvars.iv.next42 = add nsw i64 %indvars.iv41, 1
  %indvar.next265 = add i64 %indvar264, 1
  br i1 %cmp423.not.not.i, label %for.cond426.preheader.i, label %for.end477.i, !llvm.loop !50

for.end477.i:                                     ; preds = %for.inc475.i, %if.end391.i
  %478 = and i1 %cmp498.not41.i, %or.cond.i
  br i1 %478, label %for.cond501.preheader.i, label %if.end638.i

for.cond501.preheader.i:                          ; preds = %for.end477.i, %for.inc635.i
  %indvar183 = phi i64 [ %indvar.next184, %for.inc635.i ], [ 0, %for.end477.i ]
  %indvars.iv181.i = phi i64 [ %indvars.iv.next182.i, %for.inc635.i ], [ %indvars.iv143.i, %for.end477.i ]
  %indvars.iv165.i = phi i64 [ %indvars.iv.next166.i, %for.inc635.i ], [ %indvars.iv163.i, %for.end477.i ]
  %479 = add i64 %44, %indvar183
  %480 = mul nuw nsw i64 %indvar183, 32000
  %481 = add i64 %46, %480
  %482 = mul nuw nsw i64 %indvar183, 32008
  %483 = add i64 %46, %482
  %scevgep226 = getelementptr i8, i8* %call.i, i64 %483
  %484 = add i64 %47, %480
  %485 = shl nuw nsw i64 %indvar183, 3
  %486 = add i64 %48, %485
  %487 = sub i64 %52, %indvar183
  %488 = mul nuw nsw i64 %indvar183, 32008
  %489 = add i64 %54, %488
  %scevgep185 = getelementptr i8, i8* %call.i, i64 %489
  %490 = mul nuw nsw i64 %indvar183, 32000
  %491 = add i64 %61, %490
  %scevgep187 = getelementptr i8, i8* %call.i, i64 %491
  %492 = add i64 %62, %490
  %493 = shl nuw nsw i64 %indvar183, 3
  %494 = add i64 %63, %493
  %495 = add nsw i64 %indvars.iv165.i, -2
  %cmp503.not34.i = icmp ugt i64 %115, %495
  br i1 %cmp503.not34.i, label %for.end581.i, label %for.body504.lr.ph.i

for.body504.lr.ph.i:                              ; preds = %for.cond501.preheader.i
  %cmp556.not31.i = icmp ugt i64 %indvars.iv165.i, %118
  br i1 %cmp331.i, label %for.body504.i.us.preheader, label %for.inc635.i

for.body504.i.us.preheader:                       ; preds = %for.body504.lr.ph.i
  %min.iters.check206 = icmp ult i64 %487, 4
  %n.vec209 = and i64 %487, -4
  %ind.end213 = add i64 %indvars.iv165.i, %n.vec209
  %cmp.n214 = icmp eq i64 %487, %n.vec209
  br label %for.body504.i.us

for.body504.i.us:                                 ; preds = %for.body504.i.us.preheader, %for.cond501.loopexit.i.us
  %indvar188 = phi i64 [ %indvar.next189, %for.cond501.loopexit.i.us ], [ 0, %for.body504.i.us.preheader ]
  %indvars.iv171.i.us = phi i64 [ %indvars.iv.next172.i.us, %for.cond501.loopexit.i.us ], [ %indvars.iv169.i, %for.body504.i.us.preheader ]
  %indvars.iv157.i.us = phi i64 [ %indvars.iv.next158.i.us, %for.cond501.loopexit.i.us ], [ %indvars.iv143.i, %for.body504.i.us.preheader ]
  %496 = sub i64 %indvar183, %indvar188
  %497 = shl nuw nsw i64 %indvar188, 3
  %498 = add i64 %481, %497
  %scevgep225 = getelementptr i8, i8* %call.i, i64 %498
  %499 = add i64 %484, %497
  %scevgep227 = getelementptr i8, i8* %call.i, i64 %499
  %500 = mul nuw nsw i64 %indvar188, 32008
  %501 = add i64 %48, %500
  %scevgep228 = getelementptr i8, i8* %call.i, i64 %501
  %502 = mul nuw nsw i64 %indvar188, 32000
  %503 = add i64 %486, %502
  %scevgep229 = getelementptr i8, i8* %call.i, i64 %503
  %504 = shl nuw nsw i64 %indvar188, 3
  %505 = add i64 %492, %504
  %scevgep190 = getelementptr i8, i8* %call.i, i64 %505
  %506 = mul nuw nsw i64 %indvar188, 32000
  %507 = add i64 %494, %506
  %scevgep191 = getelementptr i8, i8* %call.i, i64 %507
  %508 = add i64 %65, %506
  %scevgep192 = getelementptr i8, i8* %call.i, i64 %508
  %arrayidx511.i.us = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv171.i.us, i64 %indvars.iv171.i.us
  %509 = load double, double* %arrayidx511.i.us, align 8, !tbaa !2
  %arrayidx515.i.us = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv165.i, i64 %indvars.iv171.i.us
  %510 = load double, double* %arrayidx515.i.us, align 8, !tbaa !2
  %div516.i.us = fdiv double %510, %509
  store double %div516.i.us, double* %arrayidx515.i.us, align 8, !tbaa !2
  %indvars.iv.next172.i.us = add nuw nsw i64 %indvars.iv171.i.us, 1
  %cmp521.not.not28.i.us = icmp ult i64 %indvars.iv.next172.i.us, %indvars.iv165.i
  br i1 %cmp521.not.not28.i.us, label %for.body522.us.i.us.preheader, label %for.cond544.preheader.i.us

for.body522.us.i.us.preheader:                    ; preds = %for.body504.i.us
  %arrayidx533.us.i.us63 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv171.i.us, i64 %indvars.iv157.i.us
  %511 = load double, double* %arrayidx533.us.i.us63, align 8, !tbaa !2
  %mul534.us.i.us64 = fmul double %div516.i.us, %511
  %arrayidx538.us.i.us65 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv165.i, i64 %indvars.iv157.i.us
  %512 = load double, double* %arrayidx538.us.i.us65, align 8, !tbaa !2
  %sub539.us.i.us66 = fsub double %512, %mul534.us.i.us64
  store double %sub539.us.i.us66, double* %arrayidx538.us.i.us65, align 8, !tbaa !2
  %indvars.iv.next160.i.us67 = add nuw nsw i64 %indvars.iv157.i.us, 1
  %exitcond162.not.i.us68 = icmp eq i64 %indvars.iv.next160.i.us67, %indvars.iv165.i
  br i1 %exitcond162.not.i.us68, label %for.cond544.preheader.i.us, label %for.body522.us.i.us.for.body522.us.i.us_crit_edge.lr.ph, !llvm.loop !51

for.body522.us.i.us.for.body522.us.i.us_crit_edge.lr.ph: ; preds = %for.body522.us.i.us.preheader
  %min.iters.check242 = icmp ult i64 %496, 4
  br i1 %min.iters.check242, label %for.body522.us.i.us.for.body522.us.i.us_crit_edge.preheader, label %vector.memcheck224

vector.memcheck224:                               ; preds = %for.body522.us.i.us.for.body522.us.i.us_crit_edge.lr.ph
  %bc230 = bitcast double* %arrayidx515.i.us to i8*
  %bound0231 = icmp ult i8* %scevgep225, %scevgep227
  %bound1232 = icmp ugt i8* %scevgep226, %bc230
  %found.conflict233 = and i1 %bound0231, %bound1232
  %bound0234 = icmp ult i8* %scevgep225, %scevgep229
  %bound1235 = icmp ult i8* %scevgep228, %scevgep226
  %found.conflict236 = and i1 %bound0234, %bound1235
  %conflict.rdx237 = or i1 %found.conflict233, %found.conflict236
  br i1 %conflict.rdx237, label %for.body522.us.i.us.for.body522.us.i.us_crit_edge.preheader, label %vector.ph243

vector.ph243:                                     ; preds = %vector.memcheck224
  %n.vec245 = and i64 %496, -4
  %ind.end249 = add i64 %indvars.iv.next160.i.us67, %n.vec245
  %513 = load double, double* %arrayidx515.i.us, align 8, !tbaa !2, !alias.scope !52
  %broadcast.splatinsert254 = insertelement <2 x double> poison, double %513, i32 0
  %broadcast.splat255 = shufflevector <2 x double> %broadcast.splatinsert254, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert256 = insertelement <2 x double> poison, double %513, i32 0
  %broadcast.splat257 = shufflevector <2 x double> %broadcast.splatinsert256, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body241

vector.body241:                                   ; preds = %vector.body241, %vector.ph243
  %index246 = phi i64 [ 0, %vector.ph243 ], [ %index.next247, %vector.body241 ]
  %offset.idx251 = add i64 %indvars.iv.next160.i.us67, %index246
  %514 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv171.i.us, i64 %offset.idx251
  %515 = bitcast double* %514 to <2 x double>*
  %wide.load252 = load <2 x double>, <2 x double>* %515, align 8, !tbaa !2, !alias.scope !55
  %516 = getelementptr inbounds double, double* %514, i64 2
  %517 = bitcast double* %516 to <2 x double>*
  %wide.load253 = load <2 x double>, <2 x double>* %517, align 8, !tbaa !2, !alias.scope !55
  %518 = fmul <2 x double> %broadcast.splat255, %wide.load252
  %519 = fmul <2 x double> %broadcast.splat257, %wide.load253
  %520 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv165.i, i64 %offset.idx251
  %521 = bitcast double* %520 to <2 x double>*
  %wide.load258 = load <2 x double>, <2 x double>* %521, align 8, !tbaa !2, !alias.scope !57, !noalias !59
  %522 = getelementptr inbounds double, double* %520, i64 2
  %523 = bitcast double* %522 to <2 x double>*
  %wide.load259 = load <2 x double>, <2 x double>* %523, align 8, !tbaa !2, !alias.scope !57, !noalias !59
  %524 = fsub <2 x double> %wide.load258, %518
  %525 = fsub <2 x double> %wide.load259, %519
  %526 = bitcast double* %520 to <2 x double>*
  store <2 x double> %524, <2 x double>* %526, align 8, !tbaa !2, !alias.scope !57, !noalias !59
  %527 = bitcast double* %522 to <2 x double>*
  store <2 x double> %525, <2 x double>* %527, align 8, !tbaa !2, !alias.scope !57, !noalias !59
  %index.next247 = add i64 %index246, 4
  %528 = icmp eq i64 %index.next247, %n.vec245
  br i1 %528, label %middle.block239, label %vector.body241, !llvm.loop !60

middle.block239:                                  ; preds = %vector.body241
  %cmp.n250 = icmp eq i64 %496, %n.vec245
  br i1 %cmp.n250, label %for.cond544.preheader.i.us, label %for.body522.us.i.us.for.body522.us.i.us_crit_edge.preheader

for.body522.us.i.us.for.body522.us.i.us_crit_edge.preheader: ; preds = %vector.memcheck224, %for.body522.us.i.us.for.body522.us.i.us_crit_edge.lr.ph, %middle.block239
  %indvars.iv.next160.i.us69.ph = phi i64 [ %indvars.iv.next160.i.us67, %vector.memcheck224 ], [ %indvars.iv.next160.i.us67, %for.body522.us.i.us.for.body522.us.i.us_crit_edge.lr.ph ], [ %ind.end249, %middle.block239 ]
  %529 = sub i64 %indvar183, %indvars.iv.next160.i.us69.ph
  %xtraiter394 = and i64 %529, 1
  %lcmp.mod395.not = icmp eq i64 %xtraiter394, 0
  br i1 %lcmp.mod395.not, label %for.body522.us.i.us.for.body522.us.i.us_crit_edge.prol.loopexit, label %for.body522.us.i.us.for.body522.us.i.us_crit_edge.prol

for.body522.us.i.us.for.body522.us.i.us_crit_edge.prol: ; preds = %for.body522.us.i.us.for.body522.us.i.us_crit_edge.preheader
  %.pre52.prol = load double, double* %arrayidx515.i.us, align 8, !tbaa !2
  %arrayidx533.us.i.us.prol = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv171.i.us, i64 %indvars.iv.next160.i.us69.ph
  %530 = load double, double* %arrayidx533.us.i.us.prol, align 8, !tbaa !2
  %mul534.us.i.us.prol = fmul double %.pre52.prol, %530
  %arrayidx538.us.i.us.prol = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv165.i, i64 %indvars.iv.next160.i.us69.ph
  %531 = load double, double* %arrayidx538.us.i.us.prol, align 8, !tbaa !2
  %sub539.us.i.us.prol = fsub double %531, %mul534.us.i.us.prol
  store double %sub539.us.i.us.prol, double* %arrayidx538.us.i.us.prol, align 8, !tbaa !2
  %indvars.iv.next160.i.us.prol = add nuw nsw i64 %indvars.iv.next160.i.us69.ph, 1
  br label %for.body522.us.i.us.for.body522.us.i.us_crit_edge.prol.loopexit

for.body522.us.i.us.for.body522.us.i.us_crit_edge.prol.loopexit: ; preds = %for.body522.us.i.us.for.body522.us.i.us_crit_edge.prol, %for.body522.us.i.us.for.body522.us.i.us_crit_edge.preheader
  %indvars.iv.next160.i.us69.unr.ph = phi i64 [ %indvars.iv.next160.i.us.prol, %for.body522.us.i.us.for.body522.us.i.us_crit_edge.prol ], [ %indvars.iv.next160.i.us69.ph, %for.body522.us.i.us.for.body522.us.i.us_crit_edge.preheader ]
  %532 = icmp eq i64 %479, %indvars.iv.next160.i.us69.ph
  br i1 %532, label %for.cond544.preheader.i.us, label %for.body522.us.i.us.for.body522.us.i.us_crit_edge

for.body522.us.i.us.for.body522.us.i.us_crit_edge: ; preds = %for.body522.us.i.us.for.body522.us.i.us_crit_edge.prol.loopexit, %for.body522.us.i.us.for.body522.us.i.us_crit_edge
  %indvars.iv.next160.i.us69 = phi i64 [ %indvars.iv.next160.i.us.1, %for.body522.us.i.us.for.body522.us.i.us_crit_edge ], [ %indvars.iv.next160.i.us69.unr.ph, %for.body522.us.i.us.for.body522.us.i.us_crit_edge.prol.loopexit ]
  %.pre52 = load double, double* %arrayidx515.i.us, align 8, !tbaa !2
  %arrayidx533.us.i.us = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv171.i.us, i64 %indvars.iv.next160.i.us69
  %533 = load double, double* %arrayidx533.us.i.us, align 8, !tbaa !2
  %mul534.us.i.us = fmul double %.pre52, %533
  %arrayidx538.us.i.us = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv165.i, i64 %indvars.iv.next160.i.us69
  %534 = load double, double* %arrayidx538.us.i.us, align 8, !tbaa !2
  %sub539.us.i.us = fsub double %534, %mul534.us.i.us
  store double %sub539.us.i.us, double* %arrayidx538.us.i.us, align 8, !tbaa !2
  %indvars.iv.next160.i.us = add nuw nsw i64 %indvars.iv.next160.i.us69, 1
  %.pre52.1 = load double, double* %arrayidx515.i.us, align 8, !tbaa !2
  %arrayidx533.us.i.us.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv171.i.us, i64 %indvars.iv.next160.i.us
  %535 = load double, double* %arrayidx533.us.i.us.1, align 8, !tbaa !2
  %mul534.us.i.us.1 = fmul double %.pre52.1, %535
  %arrayidx538.us.i.us.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv165.i, i64 %indvars.iv.next160.i.us
  %536 = load double, double* %arrayidx538.us.i.us.1, align 8, !tbaa !2
  %sub539.us.i.us.1 = fsub double %536, %mul534.us.i.us.1
  store double %sub539.us.i.us.1, double* %arrayidx538.us.i.us.1, align 8, !tbaa !2
  %indvars.iv.next160.i.us.1 = add nuw nsw i64 %indvars.iv.next160.i.us69, 2
  %exitcond162.not.i.us.1 = icmp eq i64 %indvars.iv.next160.i.us.1, %indvars.iv165.i
  br i1 %exitcond162.not.i.us.1, label %for.cond544.preheader.i.us, label %for.body522.us.i.us.for.body522.us.i.us_crit_edge, !llvm.loop !61

for.cond544.preheader.i.us:                       ; preds = %for.body522.us.i.us.for.body522.us.i.us_crit_edge.prol.loopexit, %for.body522.us.i.us.for.body522.us.i.us_crit_edge, %for.body522.us.i.us.preheader, %middle.block239, %for.body504.i.us
  br i1 %cmp556.not31.i, label %for.cond501.loopexit.i.us, label %for.body557.us.i.us.preheader

for.body557.us.i.us.preheader:                    ; preds = %for.cond544.preheader.i.us
  br i1 %min.iters.check206, label %for.body557.us.i.us.preheader385, label %vector.memcheck182

vector.memcheck182:                               ; preds = %for.body557.us.i.us.preheader
  %bc193 = bitcast double* %arrayidx515.i.us to i8*
  %bound0194 = icmp ult i8* %scevgep185, %scevgep190
  %bound1195 = icmp ugt i8* %scevgep187, %bc193
  %found.conflict196 = and i1 %bound0194, %bound1195
  %bound0197 = icmp ult i8* %scevgep185, %scevgep192
  %bound1198 = icmp ult i8* %scevgep191, %scevgep187
  %found.conflict199 = and i1 %bound0197, %bound1198
  %conflict.rdx200 = or i1 %found.conflict196, %found.conflict199
  br i1 %conflict.rdx200, label %for.body557.us.i.us.preheader385, label %vector.ph207

vector.ph207:                                     ; preds = %vector.memcheck182
  %537 = load double, double* %arrayidx515.i.us, align 8, !tbaa !2, !alias.scope !62
  %broadcast.splatinsert218 = insertelement <2 x double> poison, double %537, i32 0
  %broadcast.splat219 = shufflevector <2 x double> %broadcast.splatinsert218, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert220 = insertelement <2 x double> poison, double %537, i32 0
  %broadcast.splat221 = shufflevector <2 x double> %broadcast.splatinsert220, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body204

vector.body204:                                   ; preds = %vector.body204, %vector.ph207
  %index210 = phi i64 [ 0, %vector.ph207 ], [ %index.next211, %vector.body204 ]
  %offset.idx215 = add i64 %indvars.iv165.i, %index210
  %538 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv171.i.us, i64 %offset.idx215
  %539 = bitcast double* %538 to <2 x double>*
  %wide.load216 = load <2 x double>, <2 x double>* %539, align 8, !tbaa !2, !alias.scope !65
  %540 = getelementptr inbounds double, double* %538, i64 2
  %541 = bitcast double* %540 to <2 x double>*
  %wide.load217 = load <2 x double>, <2 x double>* %541, align 8, !tbaa !2, !alias.scope !65
  %542 = fmul <2 x double> %broadcast.splat219, %wide.load216
  %543 = fmul <2 x double> %broadcast.splat221, %wide.load217
  %544 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv165.i, i64 %offset.idx215
  %545 = bitcast double* %544 to <2 x double>*
  %wide.load222 = load <2 x double>, <2 x double>* %545, align 8, !tbaa !2, !alias.scope !67, !noalias !69
  %546 = getelementptr inbounds double, double* %544, i64 2
  %547 = bitcast double* %546 to <2 x double>*
  %wide.load223 = load <2 x double>, <2 x double>* %547, align 8, !tbaa !2, !alias.scope !67, !noalias !69
  %548 = fsub <2 x double> %wide.load222, %542
  %549 = fsub <2 x double> %wide.load223, %543
  %550 = bitcast double* %544 to <2 x double>*
  store <2 x double> %548, <2 x double>* %550, align 8, !tbaa !2, !alias.scope !67, !noalias !69
  %551 = bitcast double* %546 to <2 x double>*
  store <2 x double> %549, <2 x double>* %551, align 8, !tbaa !2, !alias.scope !67, !noalias !69
  %index.next211 = add i64 %index210, 4
  %552 = icmp eq i64 %index.next211, %n.vec209
  br i1 %552, label %middle.block202, label %vector.body204, !llvm.loop !70

middle.block202:                                  ; preds = %vector.body204
  br i1 %cmp.n214, label %for.cond501.loopexit.i.us, label %for.body557.us.i.us.preheader385

for.body557.us.i.us.preheader385:                 ; preds = %vector.memcheck182, %for.body557.us.i.us.preheader, %middle.block202
  %indvars.iv167.i.us.ph = phi i64 [ %indvars.iv165.i, %vector.memcheck182 ], [ %indvars.iv165.i, %for.body557.us.i.us.preheader ], [ %ind.end213, %middle.block202 ]
  br label %for.body557.us.i.us

for.body557.us.i.us:                              ; preds = %for.body557.us.i.us.preheader385, %for.body557.us.i.us
  %indvars.iv167.i.us = phi i64 [ %indvars.iv.next168.i.us, %for.body557.us.i.us ], [ %indvars.iv167.i.us.ph, %for.body557.us.i.us.preheader385 ]
  %553 = load double, double* %arrayidx515.i.us, align 8, !tbaa !2
  %arrayidx568.us.i.us = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv171.i.us, i64 %indvars.iv167.i.us
  %554 = load double, double* %arrayidx568.us.i.us, align 8, !tbaa !2
  %mul569.us.i.us = fmul double %553, %554
  %arrayidx573.us.i.us = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv165.i, i64 %indvars.iv167.i.us
  %555 = load double, double* %arrayidx573.us.i.us, align 8, !tbaa !2
  %sub574.us.i.us = fsub double %555, %mul569.us.i.us
  store double %sub574.us.i.us, double* %arrayidx573.us.i.us, align 8, !tbaa !2
  %indvars.iv.next168.i.us = add nuw nsw i64 %indvars.iv167.i.us, 1
  %cmp556.not.us.not.i.us = icmp ult i64 %indvars.iv167.i.us, %118
  br i1 %cmp556.not.us.not.i.us, label %for.body557.us.i.us, label %for.cond501.loopexit.i.us, !llvm.loop !71

for.cond501.loopexit.i.us:                        ; preds = %for.body557.us.i.us, %middle.block202, %for.cond544.preheader.i.us
  %indvars.iv.next158.i.us = add nuw nsw i64 %indvars.iv157.i.us, 1
  %exitcond178.not.i.us = icmp eq i64 %indvars.iv.next172.i.us, %indvars.iv181.i
  %indvar.next189 = add i64 %indvar188, 1
  br i1 %exitcond178.not.i.us, label %for.end581.i, label %for.body504.i.us, !llvm.loop !72

for.end581.i:                                     ; preds = %for.cond501.loopexit.i.us, %for.cond501.preheader.i
  br i1 %cmp331.i, label %if.end597.i, label %for.inc635.i

if.end597.i:                                      ; preds = %for.end581.i
  %556 = add nsw i64 %indvars.iv165.i, -1
  %arrayidx590.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %556, i64 %556
  %557 = load double, double* %arrayidx590.i, align 8, !tbaa !2
  %arrayidx595.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv165.i, i64 %556
  %558 = load double, double* %arrayidx595.i, align 8, !tbaa !2
  %div596.i = fdiv double %558, %557
  store double %div596.i, double* %arrayidx595.i, align 8, !tbaa !2
  %cmp610.not38.i = icmp ugt i64 %indvars.iv165.i, %118
  br i1 %cmp610.not38.i, label %for.inc635.i, label %for.body611.us.i.preheader

for.body611.us.i.preheader:                       ; preds = %if.end597.i
  %arrayidx624.us.i70 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %556, i64 %indvars.iv165.i
  %559 = load double, double* %arrayidx624.us.i70, align 8, !tbaa !2
  %mul625.us.i71 = fmul double %div596.i, %559
  %arrayidx629.us.i72 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv165.i, i64 %indvars.iv165.i
  %560 = load double, double* %arrayidx629.us.i72, align 8, !tbaa !2
  %sub630.us.i73 = fsub double %560, %mul625.us.i71
  store double %sub630.us.i73, double* %arrayidx629.us.i72, align 8, !tbaa !2
  %cmp610.not.us.not.i74 = icmp ult i64 %indvars.iv165.i, %118
  br i1 %cmp610.not.us.not.i74, label %for.body611.us.i.for.body611.us.i_crit_edge, label %for.inc635.i, !llvm.loop !73

for.body611.us.i.for.body611.us.i_crit_edge:      ; preds = %for.body611.us.i.preheader, %for.body611.us.i.for.body611.us.i_crit_edge
  %indvars.iv179.i75 = phi i64 [ %indvars.iv.next180.i, %for.body611.us.i.for.body611.us.i_crit_edge ], [ %indvars.iv165.i, %for.body611.us.i.preheader ]
  %indvars.iv.next180.i = add nuw nsw i64 %indvars.iv179.i75, 1
  %.pre53 = load double, double* %arrayidx595.i, align 8, !tbaa !2
  %arrayidx624.us.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %556, i64 %indvars.iv.next180.i
  %561 = load double, double* %arrayidx624.us.i, align 8, !tbaa !2
  %mul625.us.i = fmul double %.pre53, %561
  %arrayidx629.us.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv165.i, i64 %indvars.iv.next180.i
  %562 = load double, double* %arrayidx629.us.i, align 8, !tbaa !2
  %sub630.us.i = fsub double %562, %mul625.us.i
  store double %sub630.us.i, double* %arrayidx629.us.i, align 8, !tbaa !2
  %cmp610.not.us.not.i = icmp ult i64 %indvars.iv.next180.i, %118
  br i1 %cmp610.not.us.not.i, label %for.body611.us.i.for.body611.us.i_crit_edge, label %for.inc635.i, !llvm.loop !73

for.inc635.i:                                     ; preds = %for.body611.us.i.for.body611.us.i_crit_edge, %for.body611.us.i.preheader, %for.body504.lr.ph.i, %if.end597.i, %for.end581.i
  %indvars.iv.next166.i = add nuw nsw i64 %indvars.iv165.i, 1
  %cmp498.not.not.i = icmp ult i64 %indvars.iv165.i, %118
  %indvars.iv.next182.i = add nuw nsw i64 %indvars.iv181.i, 1
  %indvar.next184 = add i64 %indvar183, 1
  br i1 %cmp498.not.not.i, label %for.cond501.preheader.i, label %if.end638.i, !llvm.loop !74

if.end638.i:                                      ; preds = %for.inc635.i, %for.end477.i
  %563 = add nuw nsw i64 %435, 2
  %cmp644.not.i = icmp uge i64 %indvars.iv222.i, %563
  %564 = and i1 %cmp327.i, %cmp644.not.i
  %565 = and i1 %cmp660.not89.i, %564
  br i1 %565, label %for.cond663.preheader.i, label %for.inc736.i

for.cond663.preheader.i:                          ; preds = %if.end638.i, %for.inc732.i
  %indvar = phi i64 [ %indvar.next, %for.inc732.i ], [ 0, %if.end638.i ]
  %indvars.iv186.i = phi i64 [ %indvars.iv.next187.i, %for.inc732.i ], [ %indvars.iv143.i, %if.end638.i ]
  %566 = add i64 %42, %indvar
  %567 = sub i64 %69, %indvar
  %568 = mul nuw nsw i64 %indvar, 32008
  %569 = add i64 %71, %568
  %scevgep143 = getelementptr i8, i8* %call.i, i64 %569
  %570 = mul nuw nsw i64 %indvar, 32000
  %571 = add i64 %78, %570
  %scevgep145 = getelementptr i8, i8* %call.i, i64 %571
  %572 = add i64 %236, %570
  %573 = shl nuw nsw i64 %indvar, 3
  %574 = add i64 %238, %573
  %575 = add i64 %indvar, 1
  %576 = mul nuw nsw i64 %indvar, 32000
  %577 = add i64 %86, %576
  %scevgep107 = getelementptr i8, i8* %call.i, i64 %577
  %578 = mul nuw nsw i64 %indvar, 32008
  %579 = add i64 %87, %578
  %scevgep108 = getelementptr i8, i8* %call.i, i64 %579
  %580 = add i64 %241, %576
  %581 = shl nuw nsw i64 %indvar, 3
  %582 = add i64 %244, %581
  %583 = sub i64 %95, %indvar
  %584 = mul nuw nsw i64 %indvar, 32008
  %585 = add i64 %97, %584
  %scevgep = getelementptr i8, i8* %call.i, i64 %585
  %586 = mul nuw nsw i64 %indvar, 32000
  %587 = add i64 %104, %586
  %scevgep80 = getelementptr i8, i8* %call.i, i64 %587
  %588 = add i64 %246, %586
  %589 = shl nuw nsw i64 %indvar, 3
  %590 = add i64 %248, %589
  %cmp671.not.not45.i = icmp ult i64 %115, %indvars.iv186.i
  %cmp706.not48.i = icmp ule i64 %indvars.iv186.i, %118
  %591 = and i1 %cmp331.i, %cmp706.not48.i
  br i1 %cmp671.not.not45.i, label %for.cond669.preheader.us.i.preheader, label %for.cond663.preheader.split.i

for.cond669.preheader.us.i.preheader:             ; preds = %for.cond663.preheader.i
  br i1 %cmp331.i, label %for.cond669.preheader.us.i.us.preheader, label %for.inc732.i

for.cond669.preheader.us.i.us.preheader:          ; preds = %for.cond669.preheader.us.i.preheader
  %min.iters.check124 = icmp ult i64 %575, 4
  %n.vec127 = and i64 %575, -4
  %ind.end131 = add i64 %indvars.iv169.i, %n.vec127
  %cmp.n132 = icmp eq i64 %575, %n.vec127
  %min.iters.check = icmp ult i64 %583, 4
  %n.vec = and i64 %583, -4
  %ind.end = add i64 %indvars.iv186.i, %n.vec
  %cmp.n97 = icmp eq i64 %583, %n.vec
  br label %for.cond669.preheader.us.i.us

for.cond669.preheader.us.i.us:                    ; preds = %for.cond669.preheader.us.i.us.preheader, %for.inc729.us.i.us
  %indvar81 = phi i64 [ %indvar.next82, %for.inc729.us.i.us ], [ 0, %for.cond669.preheader.us.i.us.preheader ]
  %indvars.iv200.i.us = phi i64 [ %indvars.iv.next201.i.us, %for.inc729.us.i.us ], [ %indvars.iv132.i, %for.cond669.preheader.us.i.us.preheader ]
  %592 = mul nuw nsw i64 %indvar81, 32000
  %593 = shl nuw nsw i64 %indvar81, 3
  %594 = add i64 %588, %593
  %scevgep83 = getelementptr i8, i8* %call.i, i64 %594
  %595 = mul nuw nsw i64 %indvar81, 32000
  %596 = add i64 %590, %595
  %scevgep84 = getelementptr i8, i8* %call.i, i64 %596
  %597 = add i64 %249, %595
  %scevgep85 = getelementptr i8, i8* %call.i, i64 %597
  %arrayidx679.us.i.us = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv186.i, i64 %indvars.iv200.i.us
  br i1 %min.iters.check124, label %for.body672.us.us.i.us.preheader, label %vector.memcheck106

vector.memcheck106:                               ; preds = %for.cond669.preheader.us.i.us
  %598 = add i64 %582, %592
  %scevgep111 = getelementptr i8, i8* %call.i, i64 %598
  %599 = add i64 %243, %592
  %scevgep110 = getelementptr i8, i8* %call.i, i64 %599
  %600 = shl nuw nsw i64 %indvar81, 3
  %601 = add i64 %580, %600
  %scevgep109 = getelementptr i8, i8* %call.i, i64 %601
  %bc112 = bitcast double* %arrayidx679.us.i.us to i8*
  %bound0113 = icmp ult i8* %scevgep107, %scevgep109
  %bound1114 = icmp ugt i8* %scevgep108, %bc112
  %found.conflict115 = and i1 %bound0113, %bound1114
  %bound0116 = icmp ult i8* %scevgep107, %scevgep111
  %bound1117 = icmp ult i8* %scevgep110, %scevgep108
  %found.conflict118 = and i1 %bound0116, %bound1117
  %conflict.rdx119 = or i1 %found.conflict115, %found.conflict118
  br i1 %conflict.rdx119, label %for.body672.us.us.i.us.preheader, label %vector.ph125

vector.ph125:                                     ; preds = %vector.memcheck106
  %602 = load double, double* %arrayidx679.us.i.us, align 8, !tbaa !2, !alias.scope !75
  %broadcast.splatinsert136 = insertelement <2 x double> poison, double %602, i32 0
  %broadcast.splat137 = shufflevector <2 x double> %broadcast.splatinsert136, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert138 = insertelement <2 x double> poison, double %602, i32 0
  %broadcast.splat139 = shufflevector <2 x double> %broadcast.splatinsert138, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body123

vector.body123:                                   ; preds = %vector.body123, %vector.ph125
  %index128 = phi i64 [ 0, %vector.ph125 ], [ %index.next129, %vector.body123 ]
  %offset.idx133 = add i64 %indvars.iv169.i, %index128
  %603 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv200.i.us, i64 %offset.idx133
  %604 = bitcast double* %603 to <2 x double>*
  %wide.load134 = load <2 x double>, <2 x double>* %604, align 8, !tbaa !2, !alias.scope !78
  %605 = getelementptr inbounds double, double* %603, i64 2
  %606 = bitcast double* %605 to <2 x double>*
  %wide.load135 = load <2 x double>, <2 x double>* %606, align 8, !tbaa !2, !alias.scope !78
  %607 = fmul <2 x double> %broadcast.splat137, %wide.load134
  %608 = fmul <2 x double> %broadcast.splat139, %wide.load135
  %609 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv186.i, i64 %offset.idx133
  %610 = bitcast double* %609 to <2 x double>*
  %wide.load140 = load <2 x double>, <2 x double>* %610, align 8, !tbaa !2, !alias.scope !80, !noalias !82
  %611 = getelementptr inbounds double, double* %609, i64 2
  %612 = bitcast double* %611 to <2 x double>*
  %wide.load141 = load <2 x double>, <2 x double>* %612, align 8, !tbaa !2, !alias.scope !80, !noalias !82
  %613 = fsub <2 x double> %wide.load140, %607
  %614 = fsub <2 x double> %wide.load141, %608
  %615 = bitcast double* %609 to <2 x double>*
  store <2 x double> %613, <2 x double>* %615, align 8, !tbaa !2, !alias.scope !80, !noalias !82
  %616 = bitcast double* %611 to <2 x double>*
  store <2 x double> %614, <2 x double>* %616, align 8, !tbaa !2, !alias.scope !80, !noalias !82
  %index.next129 = add i64 %index128, 4
  %617 = icmp eq i64 %index.next129, %n.vec127
  br i1 %617, label %middle.block121, label %vector.body123, !llvm.loop !83

middle.block121:                                  ; preds = %vector.body123
  br i1 %cmp.n132, label %for.cond669.for.cond694.preheader_crit_edge.us.i.us, label %for.body672.us.us.i.us.preheader

for.body672.us.us.i.us.preheader:                 ; preds = %vector.memcheck106, %for.cond669.preheader.us.i.us, %middle.block121
  %indvars.iv194.i.us.ph = phi i64 [ %indvars.iv169.i, %vector.memcheck106 ], [ %indvars.iv169.i, %for.cond669.preheader.us.i.us ], [ %ind.end131, %middle.block121 ]
  %618 = xor i64 %indvars.iv194.i.us.ph, -1
  %619 = add i64 %indvar, %618
  %xtraiter396 = and i64 %619, 1
  %lcmp.mod397.not = icmp eq i64 %xtraiter396, 0
  br i1 %lcmp.mod397.not, label %for.body672.us.us.i.us.prol.loopexit, label %for.body672.us.us.i.us.prol

for.body672.us.us.i.us.prol:                      ; preds = %for.body672.us.us.i.us.preheader
  %620 = load double, double* %arrayidx679.us.i.us, align 8, !tbaa !2
  %arrayidx683.us.us.i.us.prol = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv200.i.us, i64 %indvars.iv194.i.us.ph
  %621 = load double, double* %arrayidx683.us.us.i.us.prol, align 8, !tbaa !2
  %mul684.us.us.i.us.prol = fmul double %620, %621
  %arrayidx688.us.us.i.us.prol = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv186.i, i64 %indvars.iv194.i.us.ph
  %622 = load double, double* %arrayidx688.us.us.i.us.prol, align 8, !tbaa !2
  %sub689.us.us.i.us.prol = fsub double %622, %mul684.us.us.i.us.prol
  store double %sub689.us.us.i.us.prol, double* %arrayidx688.us.us.i.us.prol, align 8, !tbaa !2
  %indvars.iv.next195.i.us.prol = add nuw nsw i64 %indvars.iv194.i.us.ph, 1
  br label %for.body672.us.us.i.us.prol.loopexit

for.body672.us.us.i.us.prol.loopexit:             ; preds = %for.body672.us.us.i.us.prol, %for.body672.us.us.i.us.preheader
  %indvars.iv194.i.us.unr.ph = phi i64 [ %indvars.iv.next195.i.us.prol, %for.body672.us.us.i.us.prol ], [ %indvars.iv194.i.us.ph, %for.body672.us.us.i.us.preheader ]
  %623 = icmp eq i64 %566, %indvars.iv194.i.us.ph
  br i1 %623, label %for.cond669.for.cond694.preheader_crit_edge.us.i.us, label %for.body672.us.us.i.us

for.body672.us.us.i.us:                           ; preds = %for.body672.us.us.i.us.prol.loopexit, %for.body672.us.us.i.us
  %indvars.iv194.i.us = phi i64 [ %indvars.iv.next195.i.us.1, %for.body672.us.us.i.us ], [ %indvars.iv194.i.us.unr.ph, %for.body672.us.us.i.us.prol.loopexit ]
  %624 = load double, double* %arrayidx679.us.i.us, align 8, !tbaa !2
  %arrayidx683.us.us.i.us = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv200.i.us, i64 %indvars.iv194.i.us
  %625 = load double, double* %arrayidx683.us.us.i.us, align 8, !tbaa !2
  %mul684.us.us.i.us = fmul double %624, %625
  %arrayidx688.us.us.i.us = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv186.i, i64 %indvars.iv194.i.us
  %626 = load double, double* %arrayidx688.us.us.i.us, align 8, !tbaa !2
  %sub689.us.us.i.us = fsub double %626, %mul684.us.us.i.us
  store double %sub689.us.us.i.us, double* %arrayidx688.us.us.i.us, align 8, !tbaa !2
  %indvars.iv.next195.i.us = add nuw nsw i64 %indvars.iv194.i.us, 1
  %627 = load double, double* %arrayidx679.us.i.us, align 8, !tbaa !2
  %arrayidx683.us.us.i.us.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv200.i.us, i64 %indvars.iv.next195.i.us
  %628 = load double, double* %arrayidx683.us.us.i.us.1, align 8, !tbaa !2
  %mul684.us.us.i.us.1 = fmul double %627, %628
  %arrayidx688.us.us.i.us.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv186.i, i64 %indvars.iv.next195.i.us
  %629 = load double, double* %arrayidx688.us.us.i.us.1, align 8, !tbaa !2
  %sub689.us.us.i.us.1 = fsub double %629, %mul684.us.us.i.us.1
  store double %sub689.us.us.i.us.1, double* %arrayidx688.us.us.i.us.1, align 8, !tbaa !2
  %indvars.iv.next195.i.us.1 = add nuw nsw i64 %indvars.iv194.i.us, 2
  %exitcond197.not.i.us.1 = icmp eq i64 %indvars.iv.next195.i.us.1, %indvars.iv186.i
  br i1 %exitcond197.not.i.us.1, label %for.cond669.for.cond694.preheader_crit_edge.us.i.us, label %for.body672.us.us.i.us, !llvm.loop !84

for.cond669.for.cond694.preheader_crit_edge.us.i.us: ; preds = %for.body672.us.us.i.us.prol.loopexit, %for.body672.us.us.i.us, %middle.block121
  br i1 %591, label %for.body707.us.us.i.us.preheader, label %for.inc729.us.i.us

for.body707.us.us.i.us.preheader:                 ; preds = %for.cond669.for.cond694.preheader_crit_edge.us.i.us
  br i1 %min.iters.check, label %for.body707.us.us.i.us.preheader384, label %vector.memcheck

vector.memcheck:                                  ; preds = %for.body707.us.us.i.us.preheader
  %bc = bitcast double* %arrayidx679.us.i.us to i8*
  %bound0 = icmp ult i8* %scevgep, %scevgep83
  %bound1 = icmp ugt i8* %scevgep80, %bc
  %found.conflict = and i1 %bound0, %bound1
  %bound086 = icmp ult i8* %scevgep, %scevgep85
  %bound187 = icmp ult i8* %scevgep84, %scevgep80
  %found.conflict88 = and i1 %bound086, %bound187
  %conflict.rdx = or i1 %found.conflict, %found.conflict88
  br i1 %conflict.rdx, label %for.body707.us.us.i.us.preheader384, label %vector.ph93

vector.ph93:                                      ; preds = %vector.memcheck
  %630 = load double, double* %arrayidx679.us.i.us, align 8, !tbaa !2, !alias.scope !85
  %broadcast.splatinsert100 = insertelement <2 x double> poison, double %630, i32 0
  %broadcast.splat101 = shufflevector <2 x double> %broadcast.splatinsert100, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert102 = insertelement <2 x double> poison, double %630, i32 0
  %broadcast.splat103 = shufflevector <2 x double> %broadcast.splatinsert102, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body91

vector.body91:                                    ; preds = %vector.body91, %vector.ph93
  %index94 = phi i64 [ 0, %vector.ph93 ], [ %index.next95, %vector.body91 ]
  %offset.idx = add i64 %indvars.iv186.i, %index94
  %631 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv200.i.us, i64 %offset.idx
  %632 = bitcast double* %631 to <2 x double>*
  %wide.load98 = load <2 x double>, <2 x double>* %632, align 8, !tbaa !2, !alias.scope !88
  %633 = getelementptr inbounds double, double* %631, i64 2
  %634 = bitcast double* %633 to <2 x double>*
  %wide.load99 = load <2 x double>, <2 x double>* %634, align 8, !tbaa !2, !alias.scope !88
  %635 = fmul <2 x double> %broadcast.splat101, %wide.load98
  %636 = fmul <2 x double> %broadcast.splat103, %wide.load99
  %637 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv186.i, i64 %offset.idx
  %638 = bitcast double* %637 to <2 x double>*
  %wide.load104 = load <2 x double>, <2 x double>* %638, align 8, !tbaa !2, !alias.scope !90, !noalias !92
  %639 = getelementptr inbounds double, double* %637, i64 2
  %640 = bitcast double* %639 to <2 x double>*
  %wide.load105 = load <2 x double>, <2 x double>* %640, align 8, !tbaa !2, !alias.scope !90, !noalias !92
  %641 = fsub <2 x double> %wide.load104, %635
  %642 = fsub <2 x double> %wide.load105, %636
  %643 = bitcast double* %637 to <2 x double>*
  store <2 x double> %641, <2 x double>* %643, align 8, !tbaa !2, !alias.scope !90, !noalias !92
  %644 = bitcast double* %639 to <2 x double>*
  store <2 x double> %642, <2 x double>* %644, align 8, !tbaa !2, !alias.scope !90, !noalias !92
  %index.next95 = add i64 %index94, 4
  %645 = icmp eq i64 %index.next95, %n.vec
  br i1 %645, label %middle.block89, label %vector.body91, !llvm.loop !93

middle.block89:                                   ; preds = %vector.body91
  br i1 %cmp.n97, label %for.inc729.us.i.us, label %for.body707.us.us.i.us.preheader384

for.body707.us.us.i.us.preheader384:              ; preds = %vector.memcheck, %for.body707.us.us.i.us.preheader, %middle.block89
  %indvars.iv198.i.us.ph = phi i64 [ %indvars.iv186.i, %vector.memcheck ], [ %indvars.iv186.i, %for.body707.us.us.i.us.preheader ], [ %ind.end, %middle.block89 ]
  br label %for.body707.us.us.i.us

for.body707.us.us.i.us:                           ; preds = %for.body707.us.us.i.us.preheader384, %for.body707.us.us.i.us
  %indvars.iv198.i.us = phi i64 [ %indvars.iv.next199.i.us, %for.body707.us.us.i.us ], [ %indvars.iv198.i.us.ph, %for.body707.us.us.i.us.preheader384 ]
  %646 = load double, double* %arrayidx679.us.i.us, align 8, !tbaa !2
  %arrayidx718.us.us.i.us = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv200.i.us, i64 %indvars.iv198.i.us
  %647 = load double, double* %arrayidx718.us.us.i.us, align 8, !tbaa !2
  %mul719.us.us.i.us = fmul double %646, %647
  %arrayidx723.us.us.i.us = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv186.i, i64 %indvars.iv198.i.us
  %648 = load double, double* %arrayidx723.us.us.i.us, align 8, !tbaa !2
  %sub724.us.us.i.us = fsub double %648, %mul719.us.us.i.us
  store double %sub724.us.us.i.us, double* %arrayidx723.us.us.i.us, align 8, !tbaa !2
  %indvars.iv.next199.i.us = add nuw nsw i64 %indvars.iv198.i.us, 1
  %cmp706.not.us.us.not.i.us = icmp ult i64 %indvars.iv198.i.us, %118
  br i1 %cmp706.not.us.us.not.i.us, label %for.body707.us.us.i.us, label %for.inc729.us.i.us, !llvm.loop !94

for.inc729.us.i.us:                               ; preds = %for.body707.us.us.i.us, %middle.block89, %for.cond669.for.cond694.preheader_crit_edge.us.i.us
  %indvars.iv.next201.i.us = add nuw nsw i64 %indvars.iv200.i.us, 1
  %exitcond203.not.i.us = icmp eq i64 %indvars.iv.next201.i.us, %indvars.iv204.i
  %indvar.next82 = add i64 %indvar81, 1
  br i1 %exitcond203.not.i.us, label %for.inc732.i, label %for.cond669.preheader.us.i.us, !llvm.loop !95

for.cond663.preheader.split.i:                    ; preds = %for.cond663.preheader.i
  br i1 %591, label %for.cond669.preheader.us71.i.preheader, label %for.inc732.i

for.cond669.preheader.us71.i.preheader:           ; preds = %for.cond663.preheader.split.i
  %min.iters.check164 = icmp ult i64 %567, 4
  %n.vec167 = and i64 %567, -4
  %ind.end171 = add i64 %indvars.iv186.i, %n.vec167
  %cmp.n172 = icmp eq i64 %567, %n.vec167
  br label %for.cond669.preheader.us71.i

for.cond669.preheader.us71.i:                     ; preds = %for.cond669.preheader.us71.i.preheader, %for.cond694.for.inc729_crit_edge.split.us.us88.i
  %indvar146 = phi i64 [ %indvar.next147, %for.cond694.for.inc729_crit_edge.split.us.us88.i ], [ 0, %for.cond669.preheader.us71.i.preheader ]
  %indvars.iv190.i = phi i64 [ %indvars.iv.next191.i, %for.cond694.for.inc729_crit_edge.split.us.us88.i ], [ %indvars.iv132.i, %for.cond669.preheader.us71.i.preheader ]
  %649 = mul nuw nsw i64 %indvar146, 32000
  %arrayidx714.us74.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv186.i, i64 %indvars.iv190.i
  br i1 %min.iters.check164, label %for.body707.us.us79.i.preheader, label %vector.memcheck142

vector.memcheck142:                               ; preds = %for.cond669.preheader.us71.i
  %650 = add i64 %239, %649
  %scevgep150 = getelementptr i8, i8* %call.i, i64 %650
  %651 = add i64 %574, %649
  %scevgep149 = getelementptr i8, i8* %call.i, i64 %651
  %652 = shl nuw nsw i64 %indvar146, 3
  %653 = add i64 %572, %652
  %scevgep148 = getelementptr i8, i8* %call.i, i64 %653
  %bc151 = bitcast double* %arrayidx714.us74.i to i8*
  %bound0152 = icmp ult i8* %scevgep143, %scevgep148
  %bound1153 = icmp ugt i8* %scevgep145, %bc151
  %found.conflict154 = and i1 %bound0152, %bound1153
  %bound0155 = icmp ult i8* %scevgep143, %scevgep150
  %bound1156 = icmp ult i8* %scevgep149, %scevgep145
  %found.conflict157 = and i1 %bound0155, %bound1156
  %conflict.rdx158 = or i1 %found.conflict154, %found.conflict157
  br i1 %conflict.rdx158, label %for.body707.us.us79.i.preheader, label %vector.ph165

vector.ph165:                                     ; preds = %vector.memcheck142
  %654 = load double, double* %arrayidx714.us74.i, align 8, !tbaa !2, !alias.scope !96
  %broadcast.splatinsert176 = insertelement <2 x double> poison, double %654, i32 0
  %broadcast.splat177 = shufflevector <2 x double> %broadcast.splatinsert176, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert178 = insertelement <2 x double> poison, double %654, i32 0
  %broadcast.splat179 = shufflevector <2 x double> %broadcast.splatinsert178, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body162

vector.body162:                                   ; preds = %vector.body162, %vector.ph165
  %index168 = phi i64 [ 0, %vector.ph165 ], [ %index.next169, %vector.body162 ]
  %offset.idx173 = add i64 %indvars.iv186.i, %index168
  %655 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv190.i, i64 %offset.idx173
  %656 = bitcast double* %655 to <2 x double>*
  %wide.load174 = load <2 x double>, <2 x double>* %656, align 8, !tbaa !2, !alias.scope !99
  %657 = getelementptr inbounds double, double* %655, i64 2
  %658 = bitcast double* %657 to <2 x double>*
  %wide.load175 = load <2 x double>, <2 x double>* %658, align 8, !tbaa !2, !alias.scope !99
  %659 = fmul <2 x double> %broadcast.splat177, %wide.load174
  %660 = fmul <2 x double> %broadcast.splat179, %wide.load175
  %661 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv186.i, i64 %offset.idx173
  %662 = bitcast double* %661 to <2 x double>*
  %wide.load180 = load <2 x double>, <2 x double>* %662, align 8, !tbaa !2, !alias.scope !101, !noalias !103
  %663 = getelementptr inbounds double, double* %661, i64 2
  %664 = bitcast double* %663 to <2 x double>*
  %wide.load181 = load <2 x double>, <2 x double>* %664, align 8, !tbaa !2, !alias.scope !101, !noalias !103
  %665 = fsub <2 x double> %wide.load180, %659
  %666 = fsub <2 x double> %wide.load181, %660
  %667 = bitcast double* %661 to <2 x double>*
  store <2 x double> %665, <2 x double>* %667, align 8, !tbaa !2, !alias.scope !101, !noalias !103
  %668 = bitcast double* %663 to <2 x double>*
  store <2 x double> %666, <2 x double>* %668, align 8, !tbaa !2, !alias.scope !101, !noalias !103
  %index.next169 = add i64 %index168, 4
  %669 = icmp eq i64 %index.next169, %n.vec167
  br i1 %669, label %middle.block160, label %vector.body162, !llvm.loop !104

middle.block160:                                  ; preds = %vector.body162
  br i1 %cmp.n172, label %for.cond694.for.inc729_crit_edge.split.us.us88.i, label %for.body707.us.us79.i.preheader

for.body707.us.us79.i.preheader:                  ; preds = %vector.memcheck142, %for.cond669.preheader.us71.i, %middle.block160
  %indvars.iv188.i.ph = phi i64 [ %indvars.iv186.i, %vector.memcheck142 ], [ %indvars.iv186.i, %for.cond669.preheader.us71.i ], [ %ind.end171, %middle.block160 ]
  br label %for.body707.us.us79.i

for.body707.us.us79.i:                            ; preds = %for.body707.us.us79.i.preheader, %for.body707.us.us79.i
  %indvars.iv188.i = phi i64 [ %indvars.iv.next189.i, %for.body707.us.us79.i ], [ %indvars.iv188.i.ph, %for.body707.us.us79.i.preheader ]
  %670 = load double, double* %arrayidx714.us74.i, align 8, !tbaa !2
  %arrayidx718.us.us82.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv190.i, i64 %indvars.iv188.i
  %671 = load double, double* %arrayidx718.us.us82.i, align 8, !tbaa !2
  %mul719.us.us83.i = fmul double %670, %671
  %arrayidx723.us.us84.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv186.i, i64 %indvars.iv188.i
  %672 = load double, double* %arrayidx723.us.us84.i, align 8, !tbaa !2
  %sub724.us.us85.i = fsub double %672, %mul719.us.us83.i
  store double %sub724.us.us85.i, double* %arrayidx723.us.us84.i, align 8, !tbaa !2
  %indvars.iv.next189.i = add nuw nsw i64 %indvars.iv188.i, 1
  %cmp706.not.us.us87.not.i = icmp ult i64 %indvars.iv188.i, %118
  br i1 %cmp706.not.us.us87.not.i, label %for.body707.us.us79.i, label %for.cond694.for.inc729_crit_edge.split.us.us88.i, !llvm.loop !105

for.cond694.for.inc729_crit_edge.split.us.us88.i: ; preds = %for.body707.us.us79.i, %middle.block160
  %indvars.iv.next191.i = add nuw nsw i64 %indvars.iv190.i, 1
  %exitcond193.not.i = icmp eq i64 %indvars.iv.next191.i, %indvars.iv204.i
  %indvar.next147 = add i64 %indvar146, 1
  br i1 %exitcond193.not.i, label %for.inc732.i, label %for.cond669.preheader.us71.i, !llvm.loop !95

for.inc732.i:                                     ; preds = %for.cond694.for.inc729_crit_edge.split.us.us88.i, %for.inc729.us.i.us, %for.cond669.preheader.us.i.preheader, %for.cond663.preheader.split.i
  %indvars.iv.next187.i = add nuw nsw i64 %indvars.iv186.i, 1
  %cmp660.not.not.i = icmp ult i64 %indvars.iv186.i, %118
  %indvar.next = add i64 %indvar, 1
  br i1 %cmp660.not.not.i, label %for.cond663.preheader.i, label %for.inc736.i, !llvm.loop !106

for.inc736.i:                                     ; preds = %for.inc732.i, %if.end638.i
  %indvars.iv.next133.i = add nuw nsw i64 %indvars.iv132.i, 32
  %indvars.iv.next205.i = add nuw nsw i64 %indvars.iv204.i, 32
  %indvars.iv.next152.i = add nuw nsw i32 %indvars.iv151.i, 32
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 32
  %exitcond47.not = icmp eq i64 %indvars.iv206.i, %smin46
  br i1 %exitcond47.not, label %for.inc739.i, label %for.body164.i, !llvm.loop !107

for.inc739.i:                                     ; preds = %for.inc736.i, %for.cond89.preheader.i
  %indvars.iv.next216.i = add nsw i64 %indvars.iv215.i, 1
  %inc740.i = add nsw i32 %t2.097.i, 1
  %indvars.iv.next.i14 = add nsw i64 %indvars.iv.i12, 32
  %indvars.iv.next127.i = add i32 %indvars.iv126.i, -32
  %indvars.iv.next = add nsw i64 %indvars.iv, 32
  %indvars.iv.next45 = add i64 %indvars.iv44, -1
  %exitcond51.not = icmp eq i64 %indvars.iv215.i, %smax50
  %indvar.next262 = add i64 %indvar261, 1
  br i1 %exitcond51.not, label %for.inc742.i, label %for.cond89.preheader.i, !llvm.loop !108

for.inc742.i:                                     ; preds = %for.inc739.i, %cond.end65.i
  %indvars.iv.next223.i = add nuw nsw i64 %indvars.iv222.i, 1
  %inc743.i = add nuw nsw i32 %t1.099.i, 1
  %indvars.iv.next125.i = add nuw nsw i32 %indvars.iv124.i, 32
  %indvars.iv.next144.i = add nuw nsw i64 %indvars.iv143.i, 16
  %indvars.iv.next164.i = add nuw nsw i64 %indvars.iv163.i, 16
  %indvars.iv.next170.i = add nuw nsw i64 %indvars.iv169.i, 16
  %exitcond236.not.i = icmp eq i64 %indvars.iv.next223.i, 250
  br i1 %exitcond236.not.i, label %kernel_lu.exit, label %for.body.i, !llvm.loop !109

kernel_lu.exit:                                   ; preds = %for.inc742.i
  tail call void (...) @polybench_timer_stop() #9
  tail call void (...) @polybench_timer_print() #9
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_lu.exit
  %673 = load i8*, i8** %argv, align 8, !tbaa !110
  %strcmpload = load i8, i8* %673, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %674 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !110
  %675 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %674) #10
  %676 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !110
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %676, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #10
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.inc10.i, %if.then
  %indvars.iv4.i = phi i64 [ 0, %if.then ], [ %indvars.iv.next5.i, %for.inc10.i ]
  %677 = mul nuw nsw i64 %indvars.iv4.i, 4000
  br label %for.body4.i

for.body4.i:                                      ; preds = %if.end.i18, %for.cond2.preheader.i
  %indvars.iv.i15 = phi i64 [ 0, %for.cond2.preheader.i ], [ %indvars.iv.next.i16, %if.end.i18 ]
  %678 = add nuw nsw i64 %indvars.iv.i15, %677
  %679 = trunc i64 %678 to i32
  %rem.i = urem i32 %679, 20
  %cmp5.i = icmp eq i32 %rem.i, 0
  br i1 %cmp5.i, label %if.then.i, label %if.end.i18

if.then.i:                                        ; preds = %for.body4.i
  %680 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !110
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %680) #9
  br label %if.end.i18

if.end.i18:                                       ; preds = %if.then.i, %for.body4.i
  %681 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !110
  %arrayidx8.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv4.i, i64 %indvars.iv.i15
  %682 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %681, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %682) #10
  %indvars.iv.next.i16 = add nuw nsw i64 %indvars.iv.i15, 1
  %exitcond.not.i17 = icmp eq i64 %indvars.iv.next.i16, 4000
  br i1 %exitcond.not.i17, label %for.inc10.i, label %for.body4.i, !llvm.loop !112

for.inc10.i:                                      ; preds = %if.end.i18
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 4000
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !113

print_array.exit:                                 ; preds = %for.inc10.i
  %683 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !110
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %683, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #10
  %684 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !110
  %685 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %684) #10
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_lu.exit
  tail call void @free(i8* %call.i) #9
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

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #8

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #8

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { nounwind uwtable "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inaccessiblemem_or_argmemonly nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inaccessiblememonly nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #7 = { argmemonly nofree nosync nounwind willreturn }
attributes #8 = { nofree nosync nounwind readnone speculatable willreturn }
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
!16 = !{!17}
!17 = distinct !{!17, !18}
!18 = distinct !{!18, !"LVerDomain"}
!19 = !{!20}
!20 = distinct !{!20, !18}
!21 = !{!22}
!22 = distinct !{!22, !18}
!23 = !{!17, !20}
!24 = distinct !{!24, !7, !10}
!25 = distinct !{!25, !7, !10}
!26 = distinct !{!26, !7}
!27 = !{!28}
!28 = distinct !{!28, !29}
!29 = distinct !{!29, !"LVerDomain"}
!30 = !{!31}
!31 = distinct !{!31, !29}
!32 = !{!33}
!33 = distinct !{!33, !29}
!34 = !{!28, !31}
!35 = distinct !{!35, !7, !10}
!36 = distinct !{!36, !7}
!37 = distinct !{!37, !7}
!38 = distinct !{!38, !7}
!39 = !{!40}
!40 = distinct !{!40, !41}
!41 = distinct !{!41, !"LVerDomain"}
!42 = !{!43}
!43 = distinct !{!43, !41}
!44 = !{!45}
!45 = distinct !{!45, !41}
!46 = !{!40, !43}
!47 = distinct !{!47, !7, !10}
!48 = distinct !{!48, !7, !10}
!49 = distinct !{!49, !7}
!50 = distinct !{!50, !7}
!51 = distinct !{!51, !7}
!52 = !{!53}
!53 = distinct !{!53, !54}
!54 = distinct !{!54, !"LVerDomain"}
!55 = !{!56}
!56 = distinct !{!56, !54}
!57 = !{!58}
!58 = distinct !{!58, !54}
!59 = !{!53, !56}
!60 = distinct !{!60, !7, !10}
!61 = distinct !{!61, !7, !10}
!62 = !{!63}
!63 = distinct !{!63, !64}
!64 = distinct !{!64, !"LVerDomain"}
!65 = !{!66}
!66 = distinct !{!66, !64}
!67 = !{!68}
!68 = distinct !{!68, !64}
!69 = !{!63, !66}
!70 = distinct !{!70, !7, !10}
!71 = distinct !{!71, !7, !10}
!72 = distinct !{!72, !7}
!73 = distinct !{!73, !7}
!74 = distinct !{!74, !7}
!75 = !{!76}
!76 = distinct !{!76, !77}
!77 = distinct !{!77, !"LVerDomain"}
!78 = !{!79}
!79 = distinct !{!79, !77}
!80 = !{!81}
!81 = distinct !{!81, !77}
!82 = !{!76, !79}
!83 = distinct !{!83, !7, !10}
!84 = distinct !{!84, !7, !10}
!85 = !{!86}
!86 = distinct !{!86, !87}
!87 = distinct !{!87, !"LVerDomain"}
!88 = !{!89}
!89 = distinct !{!89, !87}
!90 = !{!91}
!91 = distinct !{!91, !87}
!92 = !{!86, !89}
!93 = distinct !{!93, !7, !10}
!94 = distinct !{!94, !7, !10}
!95 = distinct !{!95, !7}
!96 = !{!97}
!97 = distinct !{!97, !98}
!98 = distinct !{!98, !"LVerDomain"}
!99 = !{!100}
!100 = distinct !{!100, !98}
!101 = !{!102}
!102 = distinct !{!102, !98}
!103 = !{!97, !100}
!104 = distinct !{!104, !7, !10}
!105 = distinct !{!105, !7, !10}
!106 = distinct !{!106, !7}
!107 = distinct !{!107, !7}
!108 = distinct !{!108, !7}
!109 = distinct !{!109, !7}
!110 = !{!111, !111, i64 0}
!111 = !{!"any pointer", !4, i64 0}
!112 = distinct !{!112, !7}
!113 = distinct !{!113, !7}

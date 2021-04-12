; ModuleID = 'lu.pluto.c'
source_filename = "lu.pluto.c"
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
  %broadcast.splatinsert66 = insertelement <2 x double> poison, double %13, i32 0
  %broadcast.splat67 = shufflevector <2 x double> %broadcast.splatinsert66, <2 x double> poison, <2 x i32> zeroinitializer
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
  %30 = fmul <2 x double> %broadcast.splat67, %28
  %31 = getelementptr inbounds [4000 x [4000 x double]], [4000 x [4000 x double]]* %12, i64 0, i64 %indvars.iv30.i, i64 %index
  %32 = bitcast double* %31 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %32, align 8, !tbaa !2
  %33 = getelementptr inbounds double, double* %31, i64 2
  %34 = bitcast double* %33 to <2 x double>*
  %wide.load68 = load <2 x double>, <2 x double>* %34, align 8, !tbaa !2
  %35 = fadd <2 x double> %wide.load, %29
  %36 = fadd <2 x double> %wide.load68, %30
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
  br label %for.cond9.preheader.i

for.cond9.preheader.i:                            ; preds = %for.inc611.i, %init_array.exit
  %indvars.iv199.i = phi i64 [ 0, %init_array.exit ], [ %indvars.iv.next200.i, %for.inc611.i ]
  %indvars.iv197.i = phi i64 [ 32, %init_array.exit ], [ %indvars.iv.next198.i, %for.inc611.i ]
  %indvars.iv195.i = phi i64 [ 31, %init_array.exit ], [ %indvars.iv.next196.i, %for.inc611.i ]
  %indvars.iv125.i = phi i64 [ 0, %init_array.exit ], [ %indvars.iv.next126.i, %for.inc611.i ]
  %indvars.iv117.i = phi i64 [ 2, %init_array.exit ], [ %indvars.iv.next118.i, %for.inc611.i ]
  %indvars.iv91.i = phi i64 [ 1, %init_array.exit ], [ %indvars.iv.next92.i, %for.inc611.i ]
  %indvars.iv72.i = phi i32 [ 0, %init_array.exit ], [ %indvars.iv.next73.i, %for.inc611.i ]
  %42 = shl nuw nsw i64 %indvars.iv199.i, 5
  %43 = shl nuw nsw i64 %indvars.iv199.i, 5
  %44 = or i64 %43, 31
  %45 = shl nuw nsw i64 %indvars.iv199.i, 5
  %46 = shl nuw nsw i64 %indvars.iv199.i, 5
  %47 = or i64 %46, 31
  %48 = shl nuw nsw i64 %indvars.iv199.i, 5
  %49 = or i64 %48, 31
  %indvars.iv199.i.tr = trunc i64 %indvars.iv199.i to i32
  %50 = shl i32 %indvars.iv199.i.tr, 5
  %indvars.iv199.i.tr376 = trunc i64 %indvars.iv199.i to i32
  %51 = shl i32 %indvars.iv199.i.tr376, 5
  %indvars.iv199.i.tr377 = trunc i64 %indvars.iv199.i to i32
  %52 = shl i32 %indvars.iv199.i.tr377, 5
  %53 = mul nsw i64 %indvars.iv199.i, -32
  %54 = add i64 %53, -2
  %55 = shl nuw nsw i64 %indvars.iv199.i, 8
  %56 = or i64 %55, 16
  %57 = or i64 %55, 1
  %58 = mul nuw nsw i64 %indvars.iv199.i, 1024256
  %59 = or i64 %58, 16
  %60 = or i64 %58, 24
  %61 = mul nsw i64 %indvars.iv199.i, -32
  %62 = add i64 %61, 2305843009213693949
  %63 = shl nuw nsw i64 %indvars.iv199.i, 5
  %64 = add nuw i64 %63, 32
  %65 = shl nuw nsw i64 %indvars.iv199.i, 8
  %66 = add nuw i64 %65, 256
  %scevgep192 = getelementptr i8, i8* %call.i, i64 %66
  %67 = or i64 %65, 1
  %68 = mul nuw nsw i64 %indvars.iv199.i, 1024000
  %69 = mul nuw nsw i64 %indvars.iv199.i, 1024256
  %70 = add nuw i64 %69, 256
  %71 = mul nuw nsw i64 %indvars.iv199.i, 1024256
  %72 = add nuw i64 %71, 32008
  %73 = add nuw i64 %71, 32256
  %74 = mul nuw nsw i64 %indvars.iv199.i, 1024000
  %75 = add nuw i64 %74, 32001
  %76 = shl nuw nsw i64 %indvars.iv199.i, 8
  %77 = or i64 %76, 8
  %78 = add nuw i64 %76, 256
  %79 = mul nuw nsw i64 %indvars.iv199.i, 1024256
  %80 = add nuw i64 %79, 32000
  %81 = add nuw i64 %79, 32008
  %82 = mul nuw nsw i64 %indvars.iv199.i, 1024000
  %83 = add nuw i64 %82, 32001
  %84 = shl nuw nsw i64 %indvars.iv199.i, 8
  %85 = or i64 %84, 8
  %86 = mul nuw nsw i64 %indvars.iv199.i, 1024256
  %87 = add nuw i64 %86, 32008
  %88 = add nuw i64 %86, 32256
  %89 = mul nuw nsw i64 %indvars.iv199.i, 1024000
  %90 = add nuw i64 %89, 32001
  %91 = shl nuw nsw i64 %indvars.iv199.i, 8
  %92 = or i64 %91, 8
  %93 = add nuw i64 %91, 256
  %94 = mul nuw nsw i64 %indvars.iv199.i, 1024256
  %95 = add nuw i64 %94, 32000
  %96 = add nuw i64 %94, 32008
  %97 = mul nuw nsw i64 %indvars.iv199.i, 1024000
  %98 = add nuw i64 %97, 32001
  %99 = shl nuw nsw i64 %indvars.iv199.i, 8
  %100 = or i64 %99, 8
  %101 = shl nsw i64 %indvars.iv199.i, 5
  %102 = or i64 %101, 31
  %arrayidx252.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %101, i64 %101
  %103 = or i64 %101, 1
  %arrayidx259.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %103, i64 %101
  %104 = trunc i64 %indvars.iv199.i to i32
  %arrayidx288.i26 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %101, i64 %indvars.iv91.i
  %arrayidx295.i28 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %103, i64 %indvars.iv91.i
  %indvars.iv.next94.i30 = add nuw nsw i64 %indvars.iv91.i, 1
  br label %for.cond26.preheader.i

for.cond26.preheader.i:                           ; preds = %for.inc608.i, %for.cond9.preheader.i
  %indvars.iv184.i = phi i64 [ 0, %for.cond9.preheader.i ], [ %indvars.iv.next185.i, %for.inc608.i ]
  %indvars.iv182.i = phi i64 [ 32, %for.cond9.preheader.i ], [ %indvars.iv.next183.i, %for.inc608.i ]
  %indvars.iv180.i = phi i64 [ 31, %for.cond9.preheader.i ], [ %indvars.iv.next181.i, %for.inc608.i ]
  %indvars.iv64.i = phi i64 [ 0, %for.cond9.preheader.i ], [ %indvars.iv.next65.i, %for.inc608.i ]
  %indvars.iv.i11 = phi i64 [ 1, %for.cond9.preheader.i ], [ %indvars.iv.next.i13, %for.inc608.i ]
  %105 = shl nuw nsw i64 %indvars.iv184.i, 5
  %106 = or i64 %105, 31
  %107 = shl nuw nsw i64 %indvars.iv184.i, 5
  %108 = or i64 %107, 31
  %indvars.iv184.i.tr = trunc i64 %indvars.iv184.i to i32
  %109 = shl i32 %indvars.iv184.i.tr, 5
  %110 = add i32 %109, 32
  %umax334 = call i32 @llvm.umax.i32(i32 %50, i32 %110)
  %111 = zext i32 %umax334 to i64
  %112 = mul nuw nsw i64 %111, 32000
  %113 = or i64 %112, 8
  %114 = shl nuw nsw i64 %indvars.iv184.i, 8
  %115 = add nuw i64 %114, 256
  %116 = add i64 %115, %112
  %117 = or i64 %114, 1
  %118 = add nuw i64 %117, %112
  %119 = mul nuw nsw i64 %indvars.iv184.i, 1024000
  %120 = or i64 %119, 8
  %121 = mul nuw nsw i64 %indvars.iv184.i, 1024256
  %122 = add nuw i64 %121, 256
  %123 = shl nuw nsw i64 %indvars.iv184.i, 8
  %indvars.iv184.i.tr378 = trunc i64 %indvars.iv184.i to i32
  %124 = shl i32 %indvars.iv184.i.tr378, 5
  %125 = add i32 %124, 32
  %umax300 = call i32 @llvm.umax.i32(i32 %51, i32 %125)
  %126 = zext i32 %umax300 to i64
  %127 = mul nuw nsw i64 %126, 32000
  %128 = add nuw nsw i64 %123, %127
  %129 = add nuw i64 %123, 256
  %130 = add i64 %129, %127
  %131 = or i64 %127, 1
  %132 = shl nuw nsw i64 %indvars.iv184.i, 8
  %133 = add nuw i64 %132, 256
  %134 = trunc i64 %indvars.iv184.i to i32
  %umin.i = tail call i32 @llvm.umin.i32(i32 %104, i32 %134) #9
  %135 = add nuw nsw i32 %umin.i, 1
  %136 = trunc i64 %indvars.iv182.i to i32
  %umax88.i = tail call i32 @llvm.umax.i32(i32 %indvars.iv72.i, i32 %136) #9
  %137 = zext i32 %umax88.i to i64
  %138 = shl nsw i64 %indvars.iv184.i, 5
  %139 = add nuw nsw i64 %138, 32
  %140 = icmp ugt i64 %101, %139
  %cond111216.i = select i1 %140, i64 %101, i64 %139
  %141 = and i64 %cond111216.i, 4294967295
  %cmp124.not6.i = icmp ugt i64 %141, %102
  %142 = or i64 %138, 31
  %arrayidx169.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %142, i64 %142
  %cmp244.i = icmp eq i64 %indvars.iv199.i, %indvars.iv184.i
  %cmp316.i = icmp ult i64 %138, %102
  %cond323.v.i = select i1 %cmp316.i, i64 %138, i64 %102
  %cond323.i = trunc i64 %cond323.v.i to i32
  %143 = and i64 %cond323.v.i, 4294967295
  %wide.trip.count178.i = zext i32 %135 to i64
  %offset.idx328.1 = or i64 %indvars.iv64.i, 2
  %offset.idx328.2 = or i64 %indvars.iv64.i, 4
  %offset.idx328.3 = or i64 %indvars.iv64.i, 6
  %offset.idx328.4 = or i64 %indvars.iv64.i, 8
  %offset.idx328.5 = or i64 %indvars.iv64.i, 10
  %offset.idx328.6 = or i64 %indvars.iv64.i, 12
  %offset.idx328.7 = or i64 %indvars.iv64.i, 14
  %offset.idx328.8 = or i64 %indvars.iv64.i, 16
  %offset.idx328.9 = or i64 %indvars.iv64.i, 18
  %offset.idx328.10 = or i64 %indvars.iv64.i, 20
  %offset.idx328.11 = or i64 %indvars.iv64.i, 22
  %offset.idx328.12 = or i64 %indvars.iv64.i, 24
  %offset.idx328.13 = or i64 %indvars.iv64.i, 26
  %offset.idx328.14 = or i64 %indvars.iv64.i, 28
  %offset.idx328.15 = or i64 %indvars.iv64.i, 30
  %offset.idx294.1 = or i64 %indvars.iv64.i, 2
  %offset.idx294.2 = or i64 %indvars.iv64.i, 4
  %offset.idx294.3 = or i64 %indvars.iv64.i, 6
  %offset.idx294.4 = or i64 %indvars.iv64.i, 8
  %offset.idx294.5 = or i64 %indvars.iv64.i, 10
  %offset.idx294.6 = or i64 %indvars.iv64.i, 12
  %offset.idx294.7 = or i64 %indvars.iv64.i, 14
  %offset.idx294.8 = or i64 %indvars.iv64.i, 16
  %offset.idx294.9 = or i64 %indvars.iv64.i, 18
  %offset.idx294.10 = or i64 %indvars.iv64.i, 20
  %offset.idx294.11 = or i64 %indvars.iv64.i, 22
  %offset.idx294.12 = or i64 %indvars.iv64.i, 24
  %offset.idx294.13 = or i64 %indvars.iv64.i, 26
  %offset.idx294.14 = or i64 %indvars.iv64.i, 28
  %offset.idx294.15 = or i64 %indvars.iv64.i, 30
  br label %for.body99.i

for.body99.i:                                     ; preds = %for.inc605.i, %for.cond26.preheader.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc605.i ], [ 31, %for.cond26.preheader.i ]
  %indvars.iv173.i = phi i64 [ %indvars.iv.next174.i, %for.inc605.i ], [ 0, %for.cond26.preheader.i ]
  %indvars.iv171.i = phi i64 [ %indvars.iv.next172.i, %for.inc605.i ], [ 32, %for.cond26.preheader.i ]
  %indvars.iv105.i = phi i32 [ %indvars.iv.next106.i, %for.inc605.i ], [ 1, %for.cond26.preheader.i ]
  %indvars.iv80.i = phi i64 [ %indvars.iv.next81.i, %for.inc605.i ], [ 0, %for.cond26.preheader.i ]
  %144 = shl i64 %indvars.iv173.i, 8
  %145 = add i64 %131, %144
  %146 = mul i64 %indvars.iv173.i, 1024000
  %147 = add i64 %123, %146
  %148 = add i64 %129, %146
  %indvars.iv173.i.tr = trunc i64 %indvars.iv173.i to i32
  %149 = shl i32 %indvars.iv173.i.tr, 5
  %150 = or i32 %149, 1
  %umax266 = call i32 @llvm.umax.i32(i32 %52, i32 %150)
  %151 = zext i32 %umax266 to i64
  %152 = mul nuw nsw i64 %151, 32000
  %153 = add nuw nsw i64 %132, %152
  %154 = add i64 %133, %152
  %155 = shl i64 %indvars.iv173.i, 8
  %156 = or i64 %155, 1
  %157 = add i64 %156, %152
  %158 = mul i64 %indvars.iv173.i, 1024000
  %159 = add i64 %132, %158
  %160 = add i64 %133, %158
  %161 = shl i64 %indvars.iv173.i, 8
  %162 = add i64 %75, %161
  %163 = mul i64 %indvars.iv173.i, 1024000
  %164 = add i64 %77, %163
  %165 = add i64 %78, %163
  %166 = shl i64 %indvars.iv173.i, 8
  %167 = add i64 %83, %166
  %168 = mul i64 %indvars.iv173.i, 1024000
  %169 = add i64 %84, %168
  %170 = add i64 %85, %168
  %171 = shl i64 %indvars.iv173.i, 8
  %172 = add i64 %90, %171
  %173 = mul i64 %indvars.iv173.i, 1024000
  %174 = add i64 %92, %173
  %175 = add i64 %93, %173
  %176 = shl i64 %indvars.iv173.i, 8
  %177 = add i64 %98, %176
  %178 = mul i64 %indvars.iv173.i, 1024000
  %179 = add i64 %99, %178
  %180 = add i64 %100, %178
  %umax = call i32 @llvm.umax.i32(i32 %indvars.iv72.i, i32 %indvars.iv105.i)
  %181 = zext i32 %umax to i64
  %182 = add nsw i64 %181, -1
  %cmp100.i = icmp ne i64 %indvars.iv184.i, %indvars.iv173.i
  %brmerge.i = or i1 %cmp124.not6.i, %cmp100.i
  br i1 %brmerge.i, label %if.end.i, label %for.cond127.preheader.i

for.cond127.preheader.i:                          ; preds = %for.body99.i, %for.end161.i
  %indvar335 = phi i64 [ %indvar.next336, %for.end161.i ], [ 0, %for.body99.i ]
  %indvars.iv74.i = phi i64 [ %indvars.iv.next75.i, %for.end161.i ], [ %137, %for.body99.i ]
  %183 = mul nuw nsw i64 %indvar335, 32000
  %184 = add i64 %113, %183
  %scevgep337 = getelementptr i8, i8* %call.i, i64 %184
  %185 = add i64 %116, %183
  %scevgep339 = getelementptr i8, i8* %call.i, i64 %185
  %186 = add i64 %118, %183
  br label %for.body131.i

for.cond127.loopexit.i:                           ; preds = %for.body144.for.body144_crit_edge.i.prol.loopexit, %for.body144.for.body144_crit_edge.i, %middle.block355, %for.body131.i.for.cond127.loopexit.i_crit_edge, %for.body144.i.preheader
  %indvars.iv.next59.i.pre-phi = phi i64 [ %.pre53, %for.body131.i.for.cond127.loopexit.i_crit_edge ], [ %indvars.iv.next61.i23, %for.body144.i.preheader ], [ %indvars.iv.next61.i23, %middle.block355 ], [ %indvars.iv.next61.i23, %for.body144.for.body144_crit_edge.i ], [ %indvars.iv.next61.i23, %for.body144.for.body144_crit_edge.i.prol.loopexit ]
  %exitcond71.not.i = icmp eq i64 %indvars.iv.next67.i, %indvars.iv180.i
  %indvar.next341 = add i64 %indvar340, 1
  br i1 %exitcond71.not.i, label %for.end161.i, label %for.body131.i, !llvm.loop !14

for.body131.i:                                    ; preds = %for.cond127.loopexit.i, %for.cond127.preheader.i
  %indvar340 = phi i64 [ %indvar.next341, %for.cond127.loopexit.i ], [ 0, %for.cond127.preheader.i ]
  %indvars.iv66.i = phi i64 [ %indvars.iv.next67.i, %for.cond127.loopexit.i ], [ %indvars.iv64.i, %for.cond127.preheader.i ]
  %indvars.iv58.i = phi i64 [ %indvars.iv.next59.i.pre-phi, %for.cond127.loopexit.i ], [ %indvars.iv.i11, %for.cond127.preheader.i ]
  %187 = shl nuw nsw i64 %indvar340, 3
  %188 = add i64 %186, %187
  %scevgep342 = getelementptr i8, i8* %call.i, i64 %188
  %189 = mul nuw nsw i64 %indvar340, 32000
  %190 = add i64 %120, %189
  %scevgep343 = getelementptr i8, i8* %call.i, i64 %190
  %191 = add i64 %122, %189
  %scevgep345 = getelementptr i8, i8* %call.i, i64 %191
  %arrayidx133.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv66.i, i64 %indvars.iv66.i
  %192 = load double, double* %arrayidx133.i, align 8, !tbaa !2
  %arrayidx137.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv74.i, i64 %indvars.iv66.i
  %193 = load double, double* %arrayidx137.i, align 8, !tbaa !2
  %div138.i = fdiv double %193, %192
  store double %div138.i, double* %arrayidx137.i, align 8, !tbaa !2
  %indvars.iv.next67.i = add nuw nsw i64 %indvars.iv66.i, 1
  %cmp143.not3.not.i = icmp ult i64 %indvars.iv66.i, %142
  br i1 %cmp143.not3.not.i, label %for.body144.i.preheader, label %for.body131.i.for.cond127.loopexit.i_crit_edge

for.body131.i.for.cond127.loopexit.i_crit_edge:   ; preds = %for.body131.i
  %.pre53 = add nuw nsw i64 %indvars.iv58.i, 1
  br label %for.cond127.loopexit.i

for.body144.i.preheader:                          ; preds = %for.body131.i
  %arrayidx152.i19 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv66.i, i64 %indvars.iv58.i
  %194 = load double, double* %arrayidx152.i19, align 8, !tbaa !2
  %mul153.i20 = fmul double %div138.i, %194
  %arrayidx157.i21 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv74.i, i64 %indvars.iv58.i
  %195 = load double, double* %arrayidx157.i21, align 8, !tbaa !2
  %sub158.i22 = fsub double %195, %mul153.i20
  store double %sub158.i22, double* %arrayidx157.i21, align 8, !tbaa !2
  %indvars.iv.next61.i23 = add nuw nsw i64 %indvars.iv58.i, 1
  %exitcond.not.i1224 = icmp eq i64 %indvars.iv.next61.i23, %indvars.iv182.i
  br i1 %exitcond.not.i1224, label %for.cond127.loopexit.i, label %for.body144.for.body144_crit_edge.i.preheader, !llvm.loop !15

for.body144.for.body144_crit_edge.i.preheader:    ; preds = %for.body144.i.preheader
  %196 = sub i64 %108, %indvars.iv58.i
  %min.iters.check358 = icmp ult i64 %196, 4
  br i1 %min.iters.check358, label %for.body144.for.body144_crit_edge.i.preheader384, label %vector.memcheck333

vector.memcheck333:                               ; preds = %for.body144.for.body144_crit_edge.i.preheader
  %197 = shl i64 %indvars.iv58.i, 3
  %scevgep338 = getelementptr i8, i8* %scevgep337, i64 %197
  %scevgep344 = getelementptr i8, i8* %scevgep343, i64 %197
  %bc346 = bitcast double* %arrayidx137.i to i8*
  %bound0347 = icmp ult i8* %scevgep338, %scevgep342
  %bound1348 = icmp ugt i8* %scevgep339, %bc346
  %found.conflict349 = and i1 %bound0347, %bound1348
  %bound0350 = icmp ult i8* %scevgep338, %scevgep345
  %bound1351 = icmp ult i8* %scevgep344, %scevgep339
  %found.conflict352 = and i1 %bound0350, %bound1351
  %conflict.rdx353 = or i1 %found.conflict349, %found.conflict352
  br i1 %conflict.rdx353, label %for.body144.for.body144_crit_edge.i.preheader384, label %vector.ph359

vector.ph359:                                     ; preds = %vector.memcheck333
  %n.vec361 = and i64 %196, -4
  %ind.end365 = add i64 %indvars.iv.next61.i23, %n.vec361
  %198 = load double, double* %arrayidx137.i, align 8, !tbaa !2, !alias.scope !16
  %broadcast.splatinsert370 = insertelement <2 x double> poison, double %198, i32 0
  %broadcast.splat371 = shufflevector <2 x double> %broadcast.splatinsert370, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert372 = insertelement <2 x double> poison, double %198, i32 0
  %broadcast.splat373 = shufflevector <2 x double> %broadcast.splatinsert372, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body357

vector.body357:                                   ; preds = %vector.body357, %vector.ph359
  %index362 = phi i64 [ 0, %vector.ph359 ], [ %index.next363, %vector.body357 ]
  %offset.idx367 = add i64 %indvars.iv.next61.i23, %index362
  %199 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv66.i, i64 %offset.idx367
  %200 = bitcast double* %199 to <2 x double>*
  %wide.load368 = load <2 x double>, <2 x double>* %200, align 8, !tbaa !2, !alias.scope !19
  %201 = getelementptr inbounds double, double* %199, i64 2
  %202 = bitcast double* %201 to <2 x double>*
  %wide.load369 = load <2 x double>, <2 x double>* %202, align 8, !tbaa !2, !alias.scope !19
  %203 = fmul <2 x double> %broadcast.splat371, %wide.load368
  %204 = fmul <2 x double> %broadcast.splat373, %wide.load369
  %205 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv74.i, i64 %offset.idx367
  %206 = bitcast double* %205 to <2 x double>*
  %wide.load374 = load <2 x double>, <2 x double>* %206, align 8, !tbaa !2, !alias.scope !21, !noalias !23
  %207 = getelementptr inbounds double, double* %205, i64 2
  %208 = bitcast double* %207 to <2 x double>*
  %wide.load375 = load <2 x double>, <2 x double>* %208, align 8, !tbaa !2, !alias.scope !21, !noalias !23
  %209 = fsub <2 x double> %wide.load374, %203
  %210 = fsub <2 x double> %wide.load375, %204
  %211 = bitcast double* %205 to <2 x double>*
  store <2 x double> %209, <2 x double>* %211, align 8, !tbaa !2, !alias.scope !21, !noalias !23
  %212 = bitcast double* %207 to <2 x double>*
  store <2 x double> %210, <2 x double>* %212, align 8, !tbaa !2, !alias.scope !21, !noalias !23
  %index.next363 = add i64 %index362, 4
  %213 = icmp eq i64 %index.next363, %n.vec361
  br i1 %213, label %middle.block355, label %vector.body357, !llvm.loop !24

middle.block355:                                  ; preds = %vector.body357
  %cmp.n366 = icmp eq i64 %196, %n.vec361
  br i1 %cmp.n366, label %for.cond127.loopexit.i, label %for.body144.for.body144_crit_edge.i.preheader384

for.body144.for.body144_crit_edge.i.preheader384: ; preds = %vector.memcheck333, %for.body144.for.body144_crit_edge.i.preheader, %middle.block355
  %indvars.iv.next61.i25.ph = phi i64 [ %indvars.iv.next61.i23, %vector.memcheck333 ], [ %indvars.iv.next61.i23, %for.body144.for.body144_crit_edge.i.preheader ], [ %ind.end365, %middle.block355 ]
  %xtraiter388 = and i64 %indvars.iv.next61.i25.ph, 1
  %lcmp.mod389.not = icmp eq i64 %xtraiter388, 0
  br i1 %lcmp.mod389.not, label %for.body144.for.body144_crit_edge.i.prol.loopexit, label %for.body144.for.body144_crit_edge.i.prol

for.body144.for.body144_crit_edge.i.prol:         ; preds = %for.body144.for.body144_crit_edge.i.preheader384
  %.pre.i.prol = load double, double* %arrayidx137.i, align 8, !tbaa !2
  %arrayidx152.i.prol = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv66.i, i64 %indvars.iv.next61.i25.ph
  %214 = load double, double* %arrayidx152.i.prol, align 8, !tbaa !2
  %mul153.i.prol = fmul double %.pre.i.prol, %214
  %arrayidx157.i.prol = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv74.i, i64 %indvars.iv.next61.i25.ph
  %215 = load double, double* %arrayidx157.i.prol, align 8, !tbaa !2
  %sub158.i.prol = fsub double %215, %mul153.i.prol
  store double %sub158.i.prol, double* %arrayidx157.i.prol, align 8, !tbaa !2
  %indvars.iv.next61.i.prol = add nuw nsw i64 %indvars.iv.next61.i25.ph, 1
  br label %for.body144.for.body144_crit_edge.i.prol.loopexit

for.body144.for.body144_crit_edge.i.prol.loopexit: ; preds = %for.body144.for.body144_crit_edge.i.prol, %for.body144.for.body144_crit_edge.i.preheader384
  %indvars.iv.next61.i25.unr.ph = phi i64 [ %indvars.iv.next61.i.prol, %for.body144.for.body144_crit_edge.i.prol ], [ %indvars.iv.next61.i25.ph, %for.body144.for.body144_crit_edge.i.preheader384 ]
  %216 = icmp eq i64 %106, %indvars.iv.next61.i25.ph
  br i1 %216, label %for.cond127.loopexit.i, label %for.body144.for.body144_crit_edge.i

for.body144.for.body144_crit_edge.i:              ; preds = %for.body144.for.body144_crit_edge.i.prol.loopexit, %for.body144.for.body144_crit_edge.i
  %indvars.iv.next61.i25 = phi i64 [ %indvars.iv.next61.i.1, %for.body144.for.body144_crit_edge.i ], [ %indvars.iv.next61.i25.unr.ph, %for.body144.for.body144_crit_edge.i.prol.loopexit ]
  %.pre.i = load double, double* %arrayidx137.i, align 8, !tbaa !2
  %arrayidx152.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv66.i, i64 %indvars.iv.next61.i25
  %217 = load double, double* %arrayidx152.i, align 8, !tbaa !2
  %mul153.i = fmul double %.pre.i, %217
  %arrayidx157.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv74.i, i64 %indvars.iv.next61.i25
  %218 = load double, double* %arrayidx157.i, align 8, !tbaa !2
  %sub158.i = fsub double %218, %mul153.i
  store double %sub158.i, double* %arrayidx157.i, align 8, !tbaa !2
  %indvars.iv.next61.i = add nuw nsw i64 %indvars.iv.next61.i25, 1
  %.pre.i.1 = load double, double* %arrayidx137.i, align 8, !tbaa !2
  %arrayidx152.i.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv66.i, i64 %indvars.iv.next61.i
  %219 = load double, double* %arrayidx152.i.1, align 8, !tbaa !2
  %mul153.i.1 = fmul double %.pre.i.1, %219
  %arrayidx157.i.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv74.i, i64 %indvars.iv.next61.i
  %220 = load double, double* %arrayidx157.i.1, align 8, !tbaa !2
  %sub158.i.1 = fsub double %220, %mul153.i.1
  store double %sub158.i.1, double* %arrayidx157.i.1, align 8, !tbaa !2
  %indvars.iv.next61.i.1 = add nuw nsw i64 %indvars.iv.next61.i25, 2
  %exitcond.not.i12.1 = icmp eq i64 %indvars.iv.next61.i.1, %indvars.iv182.i
  br i1 %exitcond.not.i12.1, label %for.cond127.loopexit.i, label %for.body144.for.body144_crit_edge.i, !llvm.loop !25

for.end161.i:                                     ; preds = %for.cond127.loopexit.i
  %221 = load double, double* %arrayidx169.i, align 8, !tbaa !2
  %arrayidx175.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv74.i, i64 %142
  %222 = load double, double* %arrayidx175.i, align 8, !tbaa !2
  %div176.i = fdiv double %222, %221
  store double %div176.i, double* %arrayidx175.i, align 8, !tbaa !2
  %indvars.iv.next75.i = add nuw nsw i64 %indvars.iv74.i, 1
  %cmp124.not.not.i = icmp ult i64 %indvars.iv74.i, %102
  %indvar.next336 = add i64 %indvar335, 1
  br i1 %cmp124.not.not.i, label %for.cond127.preheader.i, label %if.end.i, !llvm.loop !26

if.end.i:                                         ; preds = %for.end161.i, %for.body99.i
  %indvars.iv.next174.i = add nuw nsw i64 %indvars.iv173.i, 1
  %cmp181.not.not.i = icmp ule i64 %indvars.iv184.i, %indvars.iv173.i
  %brmerge52.i = or i1 %cmp124.not6.i, %cmp181.not.not.i
  br i1 %brmerge52.i, label %if.end243.i, label %for.body207.i

for.body207.i:                                    ; preds = %if.end.i, %for.inc240.i
  %indvar301 = phi i64 [ %indvar.next302, %for.inc240.i ], [ 0, %if.end.i ]
  %indvars.iv89.i = phi i64 [ %indvars.iv.next90.i, %for.inc240.i ], [ %137, %if.end.i ]
  %223 = mul nuw nsw i64 %indvar301, 32000
  %224 = add i64 %128, %223
  %scevgep303 = getelementptr i8, i8* %call.i, i64 %224
  %225 = add i64 %130, %223
  %scevgep304 = getelementptr i8, i8* %call.i, i64 %225
  %226 = add i64 %145, %223
  %227 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv89.i, i64 %indvars.iv64.i
  %228 = bitcast double* %227 to <2 x double>*
  %229 = bitcast double* %227 to <2 x double>*
  %230 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv89.i, i64 %offset.idx328.1
  %231 = bitcast double* %230 to <2 x double>*
  %232 = bitcast double* %230 to <2 x double>*
  %233 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv89.i, i64 %offset.idx328.2
  %234 = bitcast double* %233 to <2 x double>*
  %235 = bitcast double* %233 to <2 x double>*
  %236 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv89.i, i64 %offset.idx328.3
  %237 = bitcast double* %236 to <2 x double>*
  %238 = bitcast double* %236 to <2 x double>*
  %239 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv89.i, i64 %offset.idx328.4
  %240 = bitcast double* %239 to <2 x double>*
  %241 = bitcast double* %239 to <2 x double>*
  %242 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv89.i, i64 %offset.idx328.5
  %243 = bitcast double* %242 to <2 x double>*
  %244 = bitcast double* %242 to <2 x double>*
  %245 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv89.i, i64 %offset.idx328.6
  %246 = bitcast double* %245 to <2 x double>*
  %247 = bitcast double* %245 to <2 x double>*
  %248 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv89.i, i64 %offset.idx328.7
  %249 = bitcast double* %248 to <2 x double>*
  %250 = bitcast double* %248 to <2 x double>*
  %251 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv89.i, i64 %offset.idx328.8
  %252 = bitcast double* %251 to <2 x double>*
  %253 = bitcast double* %251 to <2 x double>*
  %254 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv89.i, i64 %offset.idx328.9
  %255 = bitcast double* %254 to <2 x double>*
  %256 = bitcast double* %254 to <2 x double>*
  %257 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv89.i, i64 %offset.idx328.10
  %258 = bitcast double* %257 to <2 x double>*
  %259 = bitcast double* %257 to <2 x double>*
  %260 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv89.i, i64 %offset.idx328.11
  %261 = bitcast double* %260 to <2 x double>*
  %262 = bitcast double* %260 to <2 x double>*
  %263 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv89.i, i64 %offset.idx328.12
  %264 = bitcast double* %263 to <2 x double>*
  %265 = bitcast double* %263 to <2 x double>*
  %266 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv89.i, i64 %offset.idx328.13
  %267 = bitcast double* %266 to <2 x double>*
  %268 = bitcast double* %266 to <2 x double>*
  %269 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv89.i, i64 %offset.idx328.14
  %270 = bitcast double* %269 to <2 x double>*
  %271 = bitcast double* %269 to <2 x double>*
  %272 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv89.i, i64 %offset.idx328.15
  %273 = bitcast double* %272 to <2 x double>*
  %274 = bitcast double* %272 to <2 x double>*
  br label %for.cond215.preheader.i

for.cond215.preheader.i:                          ; preds = %for.inc237.i, %for.body207.i
  %indvar305 = phi i64 [ %indvar.next306, %for.inc237.i ], [ 0, %for.body207.i ]
  %indvars.iv82.i = phi i64 [ %indvars.iv.next83.i, %for.inc237.i ], [ %indvars.iv80.i, %for.body207.i ]
  %275 = mul nuw nsw i64 %indvar305, 32000
  %arrayidx223.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv89.i, i64 %indvars.iv82.i
  %276 = add i64 %148, %275
  %scevgep309 = getelementptr i8, i8* %call.i, i64 %276
  %277 = add i64 %147, %275
  %scevgep308 = getelementptr i8, i8* %call.i, i64 %277
  %278 = shl nuw nsw i64 %indvar305, 3
  %279 = add i64 %226, %278
  %scevgep307 = getelementptr i8, i8* %call.i, i64 %279
  %bc310 = bitcast double* %arrayidx223.i to i8*
  %bound0311 = icmp ult i8* %scevgep303, %scevgep307
  %bound1312 = icmp ugt i8* %scevgep304, %bc310
  %found.conflict313 = and i1 %bound0311, %bound1312
  %bound0314 = icmp ult i8* %scevgep303, %scevgep309
  %bound1315 = icmp ult i8* %scevgep308, %scevgep304
  %found.conflict316 = and i1 %bound0314, %bound1315
  %conflict.rdx317 = or i1 %found.conflict313, %found.conflict316
  br i1 %conflict.rdx317, label %for.body219.i, label %vector.body321

vector.body321:                                   ; preds = %for.cond215.preheader.i
  %280 = load double, double* %arrayidx223.i, align 8, !tbaa !2, !alias.scope !27
  %broadcast.splatinsert330 = insertelement <2 x double> poison, double %280, i32 0
  %broadcast.splat331 = shufflevector <2 x double> %broadcast.splatinsert330, <2 x double> poison, <2 x i32> zeroinitializer
  %281 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv82.i, i64 %indvars.iv64.i
  %282 = bitcast double* %281 to <2 x double>*
  %wide.load329 = load <2 x double>, <2 x double>* %282, align 8, !tbaa !2, !alias.scope !30
  %283 = fmul <2 x double> %broadcast.splat331, %wide.load329
  %wide.load332 = load <2 x double>, <2 x double>* %228, align 8, !tbaa !2, !alias.scope !32, !noalias !34
  %284 = fsub <2 x double> %wide.load332, %283
  store <2 x double> %284, <2 x double>* %229, align 8, !tbaa !2, !alias.scope !32, !noalias !34
  %285 = load double, double* %arrayidx223.i, align 8, !tbaa !2, !alias.scope !27
  %broadcast.splatinsert330.1 = insertelement <2 x double> poison, double %285, i32 0
  %broadcast.splat331.1 = shufflevector <2 x double> %broadcast.splatinsert330.1, <2 x double> poison, <2 x i32> zeroinitializer
  %286 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv82.i, i64 %offset.idx328.1
  %287 = bitcast double* %286 to <2 x double>*
  %wide.load329.1 = load <2 x double>, <2 x double>* %287, align 8, !tbaa !2, !alias.scope !30
  %288 = fmul <2 x double> %broadcast.splat331.1, %wide.load329.1
  %wide.load332.1 = load <2 x double>, <2 x double>* %231, align 8, !tbaa !2, !alias.scope !32, !noalias !34
  %289 = fsub <2 x double> %wide.load332.1, %288
  store <2 x double> %289, <2 x double>* %232, align 8, !tbaa !2, !alias.scope !32, !noalias !34
  %290 = load double, double* %arrayidx223.i, align 8, !tbaa !2, !alias.scope !27
  %broadcast.splatinsert330.2 = insertelement <2 x double> poison, double %290, i32 0
  %broadcast.splat331.2 = shufflevector <2 x double> %broadcast.splatinsert330.2, <2 x double> poison, <2 x i32> zeroinitializer
  %291 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv82.i, i64 %offset.idx328.2
  %292 = bitcast double* %291 to <2 x double>*
  %wide.load329.2 = load <2 x double>, <2 x double>* %292, align 8, !tbaa !2, !alias.scope !30
  %293 = fmul <2 x double> %broadcast.splat331.2, %wide.load329.2
  %wide.load332.2 = load <2 x double>, <2 x double>* %234, align 8, !tbaa !2, !alias.scope !32, !noalias !34
  %294 = fsub <2 x double> %wide.load332.2, %293
  store <2 x double> %294, <2 x double>* %235, align 8, !tbaa !2, !alias.scope !32, !noalias !34
  %295 = load double, double* %arrayidx223.i, align 8, !tbaa !2, !alias.scope !27
  %broadcast.splatinsert330.3 = insertelement <2 x double> poison, double %295, i32 0
  %broadcast.splat331.3 = shufflevector <2 x double> %broadcast.splatinsert330.3, <2 x double> poison, <2 x i32> zeroinitializer
  %296 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv82.i, i64 %offset.idx328.3
  %297 = bitcast double* %296 to <2 x double>*
  %wide.load329.3 = load <2 x double>, <2 x double>* %297, align 8, !tbaa !2, !alias.scope !30
  %298 = fmul <2 x double> %broadcast.splat331.3, %wide.load329.3
  %wide.load332.3 = load <2 x double>, <2 x double>* %237, align 8, !tbaa !2, !alias.scope !32, !noalias !34
  %299 = fsub <2 x double> %wide.load332.3, %298
  store <2 x double> %299, <2 x double>* %238, align 8, !tbaa !2, !alias.scope !32, !noalias !34
  %300 = load double, double* %arrayidx223.i, align 8, !tbaa !2, !alias.scope !27
  %broadcast.splatinsert330.4 = insertelement <2 x double> poison, double %300, i32 0
  %broadcast.splat331.4 = shufflevector <2 x double> %broadcast.splatinsert330.4, <2 x double> poison, <2 x i32> zeroinitializer
  %301 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv82.i, i64 %offset.idx328.4
  %302 = bitcast double* %301 to <2 x double>*
  %wide.load329.4 = load <2 x double>, <2 x double>* %302, align 8, !tbaa !2, !alias.scope !30
  %303 = fmul <2 x double> %broadcast.splat331.4, %wide.load329.4
  %wide.load332.4 = load <2 x double>, <2 x double>* %240, align 8, !tbaa !2, !alias.scope !32, !noalias !34
  %304 = fsub <2 x double> %wide.load332.4, %303
  store <2 x double> %304, <2 x double>* %241, align 8, !tbaa !2, !alias.scope !32, !noalias !34
  %305 = load double, double* %arrayidx223.i, align 8, !tbaa !2, !alias.scope !27
  %broadcast.splatinsert330.5 = insertelement <2 x double> poison, double %305, i32 0
  %broadcast.splat331.5 = shufflevector <2 x double> %broadcast.splatinsert330.5, <2 x double> poison, <2 x i32> zeroinitializer
  %306 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv82.i, i64 %offset.idx328.5
  %307 = bitcast double* %306 to <2 x double>*
  %wide.load329.5 = load <2 x double>, <2 x double>* %307, align 8, !tbaa !2, !alias.scope !30
  %308 = fmul <2 x double> %broadcast.splat331.5, %wide.load329.5
  %wide.load332.5 = load <2 x double>, <2 x double>* %243, align 8, !tbaa !2, !alias.scope !32, !noalias !34
  %309 = fsub <2 x double> %wide.load332.5, %308
  store <2 x double> %309, <2 x double>* %244, align 8, !tbaa !2, !alias.scope !32, !noalias !34
  %310 = load double, double* %arrayidx223.i, align 8, !tbaa !2, !alias.scope !27
  %broadcast.splatinsert330.6 = insertelement <2 x double> poison, double %310, i32 0
  %broadcast.splat331.6 = shufflevector <2 x double> %broadcast.splatinsert330.6, <2 x double> poison, <2 x i32> zeroinitializer
  %311 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv82.i, i64 %offset.idx328.6
  %312 = bitcast double* %311 to <2 x double>*
  %wide.load329.6 = load <2 x double>, <2 x double>* %312, align 8, !tbaa !2, !alias.scope !30
  %313 = fmul <2 x double> %broadcast.splat331.6, %wide.load329.6
  %wide.load332.6 = load <2 x double>, <2 x double>* %246, align 8, !tbaa !2, !alias.scope !32, !noalias !34
  %314 = fsub <2 x double> %wide.load332.6, %313
  store <2 x double> %314, <2 x double>* %247, align 8, !tbaa !2, !alias.scope !32, !noalias !34
  %315 = load double, double* %arrayidx223.i, align 8, !tbaa !2, !alias.scope !27
  %broadcast.splatinsert330.7 = insertelement <2 x double> poison, double %315, i32 0
  %broadcast.splat331.7 = shufflevector <2 x double> %broadcast.splatinsert330.7, <2 x double> poison, <2 x i32> zeroinitializer
  %316 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv82.i, i64 %offset.idx328.7
  %317 = bitcast double* %316 to <2 x double>*
  %wide.load329.7 = load <2 x double>, <2 x double>* %317, align 8, !tbaa !2, !alias.scope !30
  %318 = fmul <2 x double> %broadcast.splat331.7, %wide.load329.7
  %wide.load332.7 = load <2 x double>, <2 x double>* %249, align 8, !tbaa !2, !alias.scope !32, !noalias !34
  %319 = fsub <2 x double> %wide.load332.7, %318
  store <2 x double> %319, <2 x double>* %250, align 8, !tbaa !2, !alias.scope !32, !noalias !34
  %320 = load double, double* %arrayidx223.i, align 8, !tbaa !2, !alias.scope !27
  %broadcast.splatinsert330.8 = insertelement <2 x double> poison, double %320, i32 0
  %broadcast.splat331.8 = shufflevector <2 x double> %broadcast.splatinsert330.8, <2 x double> poison, <2 x i32> zeroinitializer
  %321 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv82.i, i64 %offset.idx328.8
  %322 = bitcast double* %321 to <2 x double>*
  %wide.load329.8 = load <2 x double>, <2 x double>* %322, align 8, !tbaa !2, !alias.scope !30
  %323 = fmul <2 x double> %broadcast.splat331.8, %wide.load329.8
  %wide.load332.8 = load <2 x double>, <2 x double>* %252, align 8, !tbaa !2, !alias.scope !32, !noalias !34
  %324 = fsub <2 x double> %wide.load332.8, %323
  store <2 x double> %324, <2 x double>* %253, align 8, !tbaa !2, !alias.scope !32, !noalias !34
  %325 = load double, double* %arrayidx223.i, align 8, !tbaa !2, !alias.scope !27
  %broadcast.splatinsert330.9 = insertelement <2 x double> poison, double %325, i32 0
  %broadcast.splat331.9 = shufflevector <2 x double> %broadcast.splatinsert330.9, <2 x double> poison, <2 x i32> zeroinitializer
  %326 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv82.i, i64 %offset.idx328.9
  %327 = bitcast double* %326 to <2 x double>*
  %wide.load329.9 = load <2 x double>, <2 x double>* %327, align 8, !tbaa !2, !alias.scope !30
  %328 = fmul <2 x double> %broadcast.splat331.9, %wide.load329.9
  %wide.load332.9 = load <2 x double>, <2 x double>* %255, align 8, !tbaa !2, !alias.scope !32, !noalias !34
  %329 = fsub <2 x double> %wide.load332.9, %328
  store <2 x double> %329, <2 x double>* %256, align 8, !tbaa !2, !alias.scope !32, !noalias !34
  %330 = load double, double* %arrayidx223.i, align 8, !tbaa !2, !alias.scope !27
  %broadcast.splatinsert330.10 = insertelement <2 x double> poison, double %330, i32 0
  %broadcast.splat331.10 = shufflevector <2 x double> %broadcast.splatinsert330.10, <2 x double> poison, <2 x i32> zeroinitializer
  %331 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv82.i, i64 %offset.idx328.10
  %332 = bitcast double* %331 to <2 x double>*
  %wide.load329.10 = load <2 x double>, <2 x double>* %332, align 8, !tbaa !2, !alias.scope !30
  %333 = fmul <2 x double> %broadcast.splat331.10, %wide.load329.10
  %wide.load332.10 = load <2 x double>, <2 x double>* %258, align 8, !tbaa !2, !alias.scope !32, !noalias !34
  %334 = fsub <2 x double> %wide.load332.10, %333
  store <2 x double> %334, <2 x double>* %259, align 8, !tbaa !2, !alias.scope !32, !noalias !34
  %335 = load double, double* %arrayidx223.i, align 8, !tbaa !2, !alias.scope !27
  %broadcast.splatinsert330.11 = insertelement <2 x double> poison, double %335, i32 0
  %broadcast.splat331.11 = shufflevector <2 x double> %broadcast.splatinsert330.11, <2 x double> poison, <2 x i32> zeroinitializer
  %336 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv82.i, i64 %offset.idx328.11
  %337 = bitcast double* %336 to <2 x double>*
  %wide.load329.11 = load <2 x double>, <2 x double>* %337, align 8, !tbaa !2, !alias.scope !30
  %338 = fmul <2 x double> %broadcast.splat331.11, %wide.load329.11
  %wide.load332.11 = load <2 x double>, <2 x double>* %261, align 8, !tbaa !2, !alias.scope !32, !noalias !34
  %339 = fsub <2 x double> %wide.load332.11, %338
  store <2 x double> %339, <2 x double>* %262, align 8, !tbaa !2, !alias.scope !32, !noalias !34
  %340 = load double, double* %arrayidx223.i, align 8, !tbaa !2, !alias.scope !27
  %broadcast.splatinsert330.12 = insertelement <2 x double> poison, double %340, i32 0
  %broadcast.splat331.12 = shufflevector <2 x double> %broadcast.splatinsert330.12, <2 x double> poison, <2 x i32> zeroinitializer
  %341 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv82.i, i64 %offset.idx328.12
  %342 = bitcast double* %341 to <2 x double>*
  %wide.load329.12 = load <2 x double>, <2 x double>* %342, align 8, !tbaa !2, !alias.scope !30
  %343 = fmul <2 x double> %broadcast.splat331.12, %wide.load329.12
  %wide.load332.12 = load <2 x double>, <2 x double>* %264, align 8, !tbaa !2, !alias.scope !32, !noalias !34
  %344 = fsub <2 x double> %wide.load332.12, %343
  store <2 x double> %344, <2 x double>* %265, align 8, !tbaa !2, !alias.scope !32, !noalias !34
  %345 = load double, double* %arrayidx223.i, align 8, !tbaa !2, !alias.scope !27
  %broadcast.splatinsert330.13 = insertelement <2 x double> poison, double %345, i32 0
  %broadcast.splat331.13 = shufflevector <2 x double> %broadcast.splatinsert330.13, <2 x double> poison, <2 x i32> zeroinitializer
  %346 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv82.i, i64 %offset.idx328.13
  %347 = bitcast double* %346 to <2 x double>*
  %wide.load329.13 = load <2 x double>, <2 x double>* %347, align 8, !tbaa !2, !alias.scope !30
  %348 = fmul <2 x double> %broadcast.splat331.13, %wide.load329.13
  %wide.load332.13 = load <2 x double>, <2 x double>* %267, align 8, !tbaa !2, !alias.scope !32, !noalias !34
  %349 = fsub <2 x double> %wide.load332.13, %348
  store <2 x double> %349, <2 x double>* %268, align 8, !tbaa !2, !alias.scope !32, !noalias !34
  %350 = load double, double* %arrayidx223.i, align 8, !tbaa !2, !alias.scope !27
  %broadcast.splatinsert330.14 = insertelement <2 x double> poison, double %350, i32 0
  %broadcast.splat331.14 = shufflevector <2 x double> %broadcast.splatinsert330.14, <2 x double> poison, <2 x i32> zeroinitializer
  %351 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv82.i, i64 %offset.idx328.14
  %352 = bitcast double* %351 to <2 x double>*
  %wide.load329.14 = load <2 x double>, <2 x double>* %352, align 8, !tbaa !2, !alias.scope !30
  %353 = fmul <2 x double> %broadcast.splat331.14, %wide.load329.14
  %wide.load332.14 = load <2 x double>, <2 x double>* %270, align 8, !tbaa !2, !alias.scope !32, !noalias !34
  %354 = fsub <2 x double> %wide.load332.14, %353
  store <2 x double> %354, <2 x double>* %271, align 8, !tbaa !2, !alias.scope !32, !noalias !34
  %355 = load double, double* %arrayidx223.i, align 8, !tbaa !2, !alias.scope !27
  %broadcast.splatinsert330.15 = insertelement <2 x double> poison, double %355, i32 0
  %broadcast.splat331.15 = shufflevector <2 x double> %broadcast.splatinsert330.15, <2 x double> poison, <2 x i32> zeroinitializer
  %356 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv82.i, i64 %offset.idx328.15
  %357 = bitcast double* %356 to <2 x double>*
  %wide.load329.15 = load <2 x double>, <2 x double>* %357, align 8, !tbaa !2, !alias.scope !30
  %358 = fmul <2 x double> %broadcast.splat331.15, %wide.load329.15
  %wide.load332.15 = load <2 x double>, <2 x double>* %273, align 8, !tbaa !2, !alias.scope !32, !noalias !34
  %359 = fsub <2 x double> %wide.load332.15, %358
  store <2 x double> %359, <2 x double>* %274, align 8, !tbaa !2, !alias.scope !32, !noalias !34
  br label %for.inc237.i

for.body219.i:                                    ; preds = %for.cond215.preheader.i, %for.body219.i
  %indvars.iv76.i = phi i64 [ %indvars.iv.next77.i.1, %for.body219.i ], [ %indvars.iv64.i, %for.cond215.preheader.i ]
  %360 = load double, double* %arrayidx223.i, align 8, !tbaa !2
  %arrayidx227.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv82.i, i64 %indvars.iv76.i
  %361 = load double, double* %arrayidx227.i, align 8, !tbaa !2
  %mul228.i = fmul double %360, %361
  %arrayidx232.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv89.i, i64 %indvars.iv76.i
  %362 = load double, double* %arrayidx232.i, align 8, !tbaa !2
  %sub233.i = fsub double %362, %mul228.i
  store double %sub233.i, double* %arrayidx232.i, align 8, !tbaa !2
  %indvars.iv.next77.i = or i64 %indvars.iv76.i, 1
  %363 = load double, double* %arrayidx223.i, align 8, !tbaa !2
  %arrayidx227.i.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv82.i, i64 %indvars.iv.next77.i
  %364 = load double, double* %arrayidx227.i.1, align 8, !tbaa !2
  %mul228.i.1 = fmul double %363, %364
  %arrayidx232.i.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv89.i, i64 %indvars.iv.next77.i
  %365 = load double, double* %arrayidx232.i.1, align 8, !tbaa !2
  %sub233.i.1 = fsub double %365, %mul228.i.1
  store double %sub233.i.1, double* %arrayidx232.i.1, align 8, !tbaa !2
  %indvars.iv.next77.i.1 = add nuw nsw i64 %indvars.iv76.i, 2
  %exitcond79.not.i.1 = icmp eq i64 %indvars.iv.next77.i.1, %indvars.iv182.i
  br i1 %exitcond79.not.i.1, label %for.inc237.i, label %for.body219.i, !llvm.loop !35

for.inc237.i:                                     ; preds = %for.body219.i, %vector.body321
  %indvars.iv.next83.i = add nuw nsw i64 %indvars.iv82.i, 1
  %exitcond87.not.i = icmp eq i64 %indvars.iv.next83.i, %indvars.iv171.i
  %indvar.next306 = add i64 %indvar305, 1
  br i1 %exitcond87.not.i, label %for.inc240.i, label %for.cond215.preheader.i, !llvm.loop !36

for.inc240.i:                                     ; preds = %for.inc237.i
  %indvars.iv.next90.i = add nuw nsw i64 %indvars.iv89.i, 1
  %cmp206.not.not.i = icmp ult i64 %indvars.iv89.i, %102
  %indvar.next302 = add i64 %indvar301, 1
  br i1 %cmp206.not.not.i, label %for.body207.i, label %if.end243.i, !llvm.loop !37

if.end243.i:                                      ; preds = %for.inc240.i, %if.end.i
  %cmp245.i = icmp eq i64 %indvars.iv199.i, %indvars.iv173.i
  %or.cond.i = and i1 %cmp244.i, %cmp245.i
  br i1 %or.cond.i, label %for.body276.for.body276_crit_edge.i.preheader, label %if.end300.i

for.body276.for.body276_crit_edge.i.preheader:    ; preds = %if.end243.i
  %366 = load double, double* %arrayidx252.i, align 8, !tbaa !2
  %367 = load double, double* %arrayidx259.i, align 8, !tbaa !2
  %div260.i = fdiv double %367, %366
  store double %div260.i, double* %arrayidx259.i, align 8, !tbaa !2
  %368 = load double, double* %arrayidx288.i26, align 8, !tbaa !2
  %mul289.i27 = fmul double %div260.i, %368
  %369 = load double, double* %arrayidx295.i28, align 8, !tbaa !2
  %sub296.i29 = fsub double %369, %mul289.i27
  store double %sub296.i29, double* %arrayidx295.i28, align 8, !tbaa !2
  br label %for.body276.for.body276_crit_edge.i

for.body276.for.body276_crit_edge.i:              ; preds = %for.body276.for.body276_crit_edge.i, %for.body276.for.body276_crit_edge.i.preheader
  %indvars.iv.next94.i32 = phi i64 [ %indvars.iv.next94.i30, %for.body276.for.body276_crit_edge.i.preheader ], [ %indvars.iv.next94.i.1, %for.body276.for.body276_crit_edge.i ]
  %.pre213.i = load double, double* %arrayidx259.i, align 8, !tbaa !2
  %arrayidx288.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %101, i64 %indvars.iv.next94.i32
  %370 = load double, double* %arrayidx288.i, align 8, !tbaa !2
  %mul289.i = fmul double %.pre213.i, %370
  %arrayidx295.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %103, i64 %indvars.iv.next94.i32
  %371 = load double, double* %arrayidx295.i, align 8, !tbaa !2
  %sub296.i = fsub double %371, %mul289.i
  store double %sub296.i, double* %arrayidx295.i, align 8, !tbaa !2
  %indvars.iv.next94.i = add nuw nsw i64 %indvars.iv.next94.i32, 1
  %.pre213.i.1 = load double, double* %arrayidx259.i, align 8, !tbaa !2
  %arrayidx288.i.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %101, i64 %indvars.iv.next94.i
  %372 = load double, double* %arrayidx288.i.1, align 8, !tbaa !2
  %mul289.i.1 = fmul double %.pre213.i.1, %372
  %arrayidx295.i.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %103, i64 %indvars.iv.next94.i
  %373 = load double, double* %arrayidx295.i.1, align 8, !tbaa !2
  %sub296.i.1 = fsub double %373, %mul289.i.1
  store double %sub296.i.1, double* %arrayidx295.i.1, align 8, !tbaa !2
  %indvars.iv.next94.i.1 = add nuw nsw i64 %indvars.iv.next94.i32, 2
  %exitcond98.not.i.1 = icmp eq i64 %indvars.iv.next94.i.1, %indvars.iv197.i
  br i1 %exitcond98.not.i.1, label %if.end300.i, label %for.body276.for.body276_crit_edge.i, !llvm.loop !38

if.end300.i:                                      ; preds = %for.body276.for.body276_crit_edge.i, %if.end243.i
  %374 = shl nsw i64 %indvars.iv173.i, 5
  %375 = or i64 %374, 1
  %cmp304.i = icmp ugt i64 %101, %375
  %cond311.v.i = select i1 %cmp304.i, i64 %101, i64 %375
  %cond311.i = trunc i64 %cond311.v.i to i32
  %cmp324.not19.i = icmp sgt i32 %cond311.i, %cond323.i
  br i1 %cmp324.not19.i, label %for.end378.i, label %for.cond327.preheader.lr.ph.i

for.cond327.preheader.lr.ph.i:                    ; preds = %if.end300.i
  %376 = or i64 %374, 31
  br label %for.cond327.preheader.i

for.cond327.preheader.i:                          ; preds = %for.inc376.i, %for.cond327.preheader.lr.ph.i
  %indvar267 = phi i64 [ %indvar.next268, %for.inc376.i ], [ 0, %for.cond327.preheader.lr.ph.i ]
  %indvars.iv50 = phi i64 [ %indvars.iv.next51, %for.inc376.i ], [ %182, %for.cond327.preheader.lr.ph.i ]
  %indvars.iv108.i = phi i64 [ %indvars.iv.next109.i, %for.inc376.i ], [ %181, %for.cond327.preheader.lr.ph.i ]
  %377 = mul nuw nsw i64 %indvar267, 32000
  %378 = add i64 %153, %377
  %scevgep269 = getelementptr i8, i8* %call.i, i64 %378
  %379 = add i64 %154, %377
  %scevgep270 = getelementptr i8, i8* %call.i, i64 %379
  %380 = add i64 %157, %377
  %umin = call i64 @llvm.umin.i64(i64 %indvars.iv, i64 %indvars.iv50)
  %381 = add nsw i64 %indvars.iv108.i, -1
  %cmp331.i = icmp ult i64 %376, %381
  %cond338.v.i = select i1 %cmp331.i, i64 %376, i64 %381
  %382 = and i64 %cond338.v.i, 4294967295
  %cmp339.not16.i = icmp ugt i64 %374, %382
  br i1 %cmp339.not16.i, label %for.inc376.i, label %for.cond342.preheader.i.preheader

for.cond342.preheader.i.preheader:                ; preds = %for.cond327.preheader.i
  %383 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv108.i, i64 %indvars.iv64.i
  %384 = bitcast double* %383 to <2 x double>*
  %385 = bitcast double* %383 to <2 x double>*
  %386 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv108.i, i64 %offset.idx294.1
  %387 = bitcast double* %386 to <2 x double>*
  %388 = bitcast double* %386 to <2 x double>*
  %389 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv108.i, i64 %offset.idx294.2
  %390 = bitcast double* %389 to <2 x double>*
  %391 = bitcast double* %389 to <2 x double>*
  %392 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv108.i, i64 %offset.idx294.3
  %393 = bitcast double* %392 to <2 x double>*
  %394 = bitcast double* %392 to <2 x double>*
  %395 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv108.i, i64 %offset.idx294.4
  %396 = bitcast double* %395 to <2 x double>*
  %397 = bitcast double* %395 to <2 x double>*
  %398 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv108.i, i64 %offset.idx294.5
  %399 = bitcast double* %398 to <2 x double>*
  %400 = bitcast double* %398 to <2 x double>*
  %401 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv108.i, i64 %offset.idx294.6
  %402 = bitcast double* %401 to <2 x double>*
  %403 = bitcast double* %401 to <2 x double>*
  %404 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv108.i, i64 %offset.idx294.7
  %405 = bitcast double* %404 to <2 x double>*
  %406 = bitcast double* %404 to <2 x double>*
  %407 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv108.i, i64 %offset.idx294.8
  %408 = bitcast double* %407 to <2 x double>*
  %409 = bitcast double* %407 to <2 x double>*
  %410 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv108.i, i64 %offset.idx294.9
  %411 = bitcast double* %410 to <2 x double>*
  %412 = bitcast double* %410 to <2 x double>*
  %413 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv108.i, i64 %offset.idx294.10
  %414 = bitcast double* %413 to <2 x double>*
  %415 = bitcast double* %413 to <2 x double>*
  %416 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv108.i, i64 %offset.idx294.11
  %417 = bitcast double* %416 to <2 x double>*
  %418 = bitcast double* %416 to <2 x double>*
  %419 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv108.i, i64 %offset.idx294.12
  %420 = bitcast double* %419 to <2 x double>*
  %421 = bitcast double* %419 to <2 x double>*
  %422 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv108.i, i64 %offset.idx294.13
  %423 = bitcast double* %422 to <2 x double>*
  %424 = bitcast double* %422 to <2 x double>*
  %425 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv108.i, i64 %offset.idx294.14
  %426 = bitcast double* %425 to <2 x double>*
  %427 = bitcast double* %425 to <2 x double>*
  %428 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv108.i, i64 %offset.idx294.15
  %429 = bitcast double* %428 to <2 x double>*
  %430 = bitcast double* %428 to <2 x double>*
  br label %for.cond342.preheader.i

for.cond342.preheader.i:                          ; preds = %for.cond342.preheader.i.preheader, %for.cond342.for.inc373_crit_edge.i
  %indvar271 = phi i64 [ %indvar.next272, %for.cond342.for.inc373_crit_edge.i ], [ 0, %for.cond342.preheader.i.preheader ]
  %indvars.iv103.i = phi i64 [ %indvars.iv.next104.i, %for.cond342.for.inc373_crit_edge.i ], [ %indvars.iv80.i, %for.cond342.preheader.i.preheader ]
  %431 = mul i64 %indvar271, 32000
  %arrayidx359.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv108.i, i64 %indvars.iv103.i
  %432 = add i64 %160, %431
  %scevgep275 = getelementptr i8, i8* %call.i, i64 %432
  %433 = add i64 %159, %431
  %scevgep274 = getelementptr i8, i8* %call.i, i64 %433
  %434 = shl i64 %indvar271, 3
  %435 = add i64 %380, %434
  %scevgep273 = getelementptr i8, i8* %call.i, i64 %435
  %bc276 = bitcast double* %arrayidx359.i to i8*
  %bound0277 = icmp ult i8* %scevgep269, %scevgep273
  %bound1278 = icmp ugt i8* %scevgep270, %bc276
  %found.conflict279 = and i1 %bound0277, %bound1278
  %bound0280 = icmp ult i8* %scevgep269, %scevgep275
  %bound1281 = icmp ult i8* %scevgep274, %scevgep270
  %found.conflict282 = and i1 %bound0280, %bound1281
  %conflict.rdx283 = or i1 %found.conflict279, %found.conflict282
  br i1 %conflict.rdx283, label %for.body355.i, label %vector.body287

vector.body287:                                   ; preds = %for.cond342.preheader.i
  %436 = load double, double* %arrayidx359.i, align 8, !tbaa !2, !alias.scope !39
  %broadcast.splatinsert296 = insertelement <2 x double> poison, double %436, i32 0
  %broadcast.splat297 = shufflevector <2 x double> %broadcast.splatinsert296, <2 x double> poison, <2 x i32> zeroinitializer
  %437 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv103.i, i64 %indvars.iv64.i
  %438 = bitcast double* %437 to <2 x double>*
  %wide.load295 = load <2 x double>, <2 x double>* %438, align 8, !tbaa !2, !alias.scope !42
  %439 = fmul <2 x double> %broadcast.splat297, %wide.load295
  %wide.load298 = load <2 x double>, <2 x double>* %384, align 8, !tbaa !2, !alias.scope !44, !noalias !46
  %440 = fsub <2 x double> %wide.load298, %439
  store <2 x double> %440, <2 x double>* %385, align 8, !tbaa !2, !alias.scope !44, !noalias !46
  %441 = load double, double* %arrayidx359.i, align 8, !tbaa !2, !alias.scope !39
  %broadcast.splatinsert296.1 = insertelement <2 x double> poison, double %441, i32 0
  %broadcast.splat297.1 = shufflevector <2 x double> %broadcast.splatinsert296.1, <2 x double> poison, <2 x i32> zeroinitializer
  %442 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv103.i, i64 %offset.idx294.1
  %443 = bitcast double* %442 to <2 x double>*
  %wide.load295.1 = load <2 x double>, <2 x double>* %443, align 8, !tbaa !2, !alias.scope !42
  %444 = fmul <2 x double> %broadcast.splat297.1, %wide.load295.1
  %wide.load298.1 = load <2 x double>, <2 x double>* %387, align 8, !tbaa !2, !alias.scope !44, !noalias !46
  %445 = fsub <2 x double> %wide.load298.1, %444
  store <2 x double> %445, <2 x double>* %388, align 8, !tbaa !2, !alias.scope !44, !noalias !46
  %446 = load double, double* %arrayidx359.i, align 8, !tbaa !2, !alias.scope !39
  %broadcast.splatinsert296.2 = insertelement <2 x double> poison, double %446, i32 0
  %broadcast.splat297.2 = shufflevector <2 x double> %broadcast.splatinsert296.2, <2 x double> poison, <2 x i32> zeroinitializer
  %447 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv103.i, i64 %offset.idx294.2
  %448 = bitcast double* %447 to <2 x double>*
  %wide.load295.2 = load <2 x double>, <2 x double>* %448, align 8, !tbaa !2, !alias.scope !42
  %449 = fmul <2 x double> %broadcast.splat297.2, %wide.load295.2
  %wide.load298.2 = load <2 x double>, <2 x double>* %390, align 8, !tbaa !2, !alias.scope !44, !noalias !46
  %450 = fsub <2 x double> %wide.load298.2, %449
  store <2 x double> %450, <2 x double>* %391, align 8, !tbaa !2, !alias.scope !44, !noalias !46
  %451 = load double, double* %arrayidx359.i, align 8, !tbaa !2, !alias.scope !39
  %broadcast.splatinsert296.3 = insertelement <2 x double> poison, double %451, i32 0
  %broadcast.splat297.3 = shufflevector <2 x double> %broadcast.splatinsert296.3, <2 x double> poison, <2 x i32> zeroinitializer
  %452 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv103.i, i64 %offset.idx294.3
  %453 = bitcast double* %452 to <2 x double>*
  %wide.load295.3 = load <2 x double>, <2 x double>* %453, align 8, !tbaa !2, !alias.scope !42
  %454 = fmul <2 x double> %broadcast.splat297.3, %wide.load295.3
  %wide.load298.3 = load <2 x double>, <2 x double>* %393, align 8, !tbaa !2, !alias.scope !44, !noalias !46
  %455 = fsub <2 x double> %wide.load298.3, %454
  store <2 x double> %455, <2 x double>* %394, align 8, !tbaa !2, !alias.scope !44, !noalias !46
  %456 = load double, double* %arrayidx359.i, align 8, !tbaa !2, !alias.scope !39
  %broadcast.splatinsert296.4 = insertelement <2 x double> poison, double %456, i32 0
  %broadcast.splat297.4 = shufflevector <2 x double> %broadcast.splatinsert296.4, <2 x double> poison, <2 x i32> zeroinitializer
  %457 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv103.i, i64 %offset.idx294.4
  %458 = bitcast double* %457 to <2 x double>*
  %wide.load295.4 = load <2 x double>, <2 x double>* %458, align 8, !tbaa !2, !alias.scope !42
  %459 = fmul <2 x double> %broadcast.splat297.4, %wide.load295.4
  %wide.load298.4 = load <2 x double>, <2 x double>* %396, align 8, !tbaa !2, !alias.scope !44, !noalias !46
  %460 = fsub <2 x double> %wide.load298.4, %459
  store <2 x double> %460, <2 x double>* %397, align 8, !tbaa !2, !alias.scope !44, !noalias !46
  %461 = load double, double* %arrayidx359.i, align 8, !tbaa !2, !alias.scope !39
  %broadcast.splatinsert296.5 = insertelement <2 x double> poison, double %461, i32 0
  %broadcast.splat297.5 = shufflevector <2 x double> %broadcast.splatinsert296.5, <2 x double> poison, <2 x i32> zeroinitializer
  %462 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv103.i, i64 %offset.idx294.5
  %463 = bitcast double* %462 to <2 x double>*
  %wide.load295.5 = load <2 x double>, <2 x double>* %463, align 8, !tbaa !2, !alias.scope !42
  %464 = fmul <2 x double> %broadcast.splat297.5, %wide.load295.5
  %wide.load298.5 = load <2 x double>, <2 x double>* %399, align 8, !tbaa !2, !alias.scope !44, !noalias !46
  %465 = fsub <2 x double> %wide.load298.5, %464
  store <2 x double> %465, <2 x double>* %400, align 8, !tbaa !2, !alias.scope !44, !noalias !46
  %466 = load double, double* %arrayidx359.i, align 8, !tbaa !2, !alias.scope !39
  %broadcast.splatinsert296.6 = insertelement <2 x double> poison, double %466, i32 0
  %broadcast.splat297.6 = shufflevector <2 x double> %broadcast.splatinsert296.6, <2 x double> poison, <2 x i32> zeroinitializer
  %467 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv103.i, i64 %offset.idx294.6
  %468 = bitcast double* %467 to <2 x double>*
  %wide.load295.6 = load <2 x double>, <2 x double>* %468, align 8, !tbaa !2, !alias.scope !42
  %469 = fmul <2 x double> %broadcast.splat297.6, %wide.load295.6
  %wide.load298.6 = load <2 x double>, <2 x double>* %402, align 8, !tbaa !2, !alias.scope !44, !noalias !46
  %470 = fsub <2 x double> %wide.load298.6, %469
  store <2 x double> %470, <2 x double>* %403, align 8, !tbaa !2, !alias.scope !44, !noalias !46
  %471 = load double, double* %arrayidx359.i, align 8, !tbaa !2, !alias.scope !39
  %broadcast.splatinsert296.7 = insertelement <2 x double> poison, double %471, i32 0
  %broadcast.splat297.7 = shufflevector <2 x double> %broadcast.splatinsert296.7, <2 x double> poison, <2 x i32> zeroinitializer
  %472 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv103.i, i64 %offset.idx294.7
  %473 = bitcast double* %472 to <2 x double>*
  %wide.load295.7 = load <2 x double>, <2 x double>* %473, align 8, !tbaa !2, !alias.scope !42
  %474 = fmul <2 x double> %broadcast.splat297.7, %wide.load295.7
  %wide.load298.7 = load <2 x double>, <2 x double>* %405, align 8, !tbaa !2, !alias.scope !44, !noalias !46
  %475 = fsub <2 x double> %wide.load298.7, %474
  store <2 x double> %475, <2 x double>* %406, align 8, !tbaa !2, !alias.scope !44, !noalias !46
  %476 = load double, double* %arrayidx359.i, align 8, !tbaa !2, !alias.scope !39
  %broadcast.splatinsert296.8 = insertelement <2 x double> poison, double %476, i32 0
  %broadcast.splat297.8 = shufflevector <2 x double> %broadcast.splatinsert296.8, <2 x double> poison, <2 x i32> zeroinitializer
  %477 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv103.i, i64 %offset.idx294.8
  %478 = bitcast double* %477 to <2 x double>*
  %wide.load295.8 = load <2 x double>, <2 x double>* %478, align 8, !tbaa !2, !alias.scope !42
  %479 = fmul <2 x double> %broadcast.splat297.8, %wide.load295.8
  %wide.load298.8 = load <2 x double>, <2 x double>* %408, align 8, !tbaa !2, !alias.scope !44, !noalias !46
  %480 = fsub <2 x double> %wide.load298.8, %479
  store <2 x double> %480, <2 x double>* %409, align 8, !tbaa !2, !alias.scope !44, !noalias !46
  %481 = load double, double* %arrayidx359.i, align 8, !tbaa !2, !alias.scope !39
  %broadcast.splatinsert296.9 = insertelement <2 x double> poison, double %481, i32 0
  %broadcast.splat297.9 = shufflevector <2 x double> %broadcast.splatinsert296.9, <2 x double> poison, <2 x i32> zeroinitializer
  %482 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv103.i, i64 %offset.idx294.9
  %483 = bitcast double* %482 to <2 x double>*
  %wide.load295.9 = load <2 x double>, <2 x double>* %483, align 8, !tbaa !2, !alias.scope !42
  %484 = fmul <2 x double> %broadcast.splat297.9, %wide.load295.9
  %wide.load298.9 = load <2 x double>, <2 x double>* %411, align 8, !tbaa !2, !alias.scope !44, !noalias !46
  %485 = fsub <2 x double> %wide.load298.9, %484
  store <2 x double> %485, <2 x double>* %412, align 8, !tbaa !2, !alias.scope !44, !noalias !46
  %486 = load double, double* %arrayidx359.i, align 8, !tbaa !2, !alias.scope !39
  %broadcast.splatinsert296.10 = insertelement <2 x double> poison, double %486, i32 0
  %broadcast.splat297.10 = shufflevector <2 x double> %broadcast.splatinsert296.10, <2 x double> poison, <2 x i32> zeroinitializer
  %487 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv103.i, i64 %offset.idx294.10
  %488 = bitcast double* %487 to <2 x double>*
  %wide.load295.10 = load <2 x double>, <2 x double>* %488, align 8, !tbaa !2, !alias.scope !42
  %489 = fmul <2 x double> %broadcast.splat297.10, %wide.load295.10
  %wide.load298.10 = load <2 x double>, <2 x double>* %414, align 8, !tbaa !2, !alias.scope !44, !noalias !46
  %490 = fsub <2 x double> %wide.load298.10, %489
  store <2 x double> %490, <2 x double>* %415, align 8, !tbaa !2, !alias.scope !44, !noalias !46
  %491 = load double, double* %arrayidx359.i, align 8, !tbaa !2, !alias.scope !39
  %broadcast.splatinsert296.11 = insertelement <2 x double> poison, double %491, i32 0
  %broadcast.splat297.11 = shufflevector <2 x double> %broadcast.splatinsert296.11, <2 x double> poison, <2 x i32> zeroinitializer
  %492 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv103.i, i64 %offset.idx294.11
  %493 = bitcast double* %492 to <2 x double>*
  %wide.load295.11 = load <2 x double>, <2 x double>* %493, align 8, !tbaa !2, !alias.scope !42
  %494 = fmul <2 x double> %broadcast.splat297.11, %wide.load295.11
  %wide.load298.11 = load <2 x double>, <2 x double>* %417, align 8, !tbaa !2, !alias.scope !44, !noalias !46
  %495 = fsub <2 x double> %wide.load298.11, %494
  store <2 x double> %495, <2 x double>* %418, align 8, !tbaa !2, !alias.scope !44, !noalias !46
  %496 = load double, double* %arrayidx359.i, align 8, !tbaa !2, !alias.scope !39
  %broadcast.splatinsert296.12 = insertelement <2 x double> poison, double %496, i32 0
  %broadcast.splat297.12 = shufflevector <2 x double> %broadcast.splatinsert296.12, <2 x double> poison, <2 x i32> zeroinitializer
  %497 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv103.i, i64 %offset.idx294.12
  %498 = bitcast double* %497 to <2 x double>*
  %wide.load295.12 = load <2 x double>, <2 x double>* %498, align 8, !tbaa !2, !alias.scope !42
  %499 = fmul <2 x double> %broadcast.splat297.12, %wide.load295.12
  %wide.load298.12 = load <2 x double>, <2 x double>* %420, align 8, !tbaa !2, !alias.scope !44, !noalias !46
  %500 = fsub <2 x double> %wide.load298.12, %499
  store <2 x double> %500, <2 x double>* %421, align 8, !tbaa !2, !alias.scope !44, !noalias !46
  %501 = load double, double* %arrayidx359.i, align 8, !tbaa !2, !alias.scope !39
  %broadcast.splatinsert296.13 = insertelement <2 x double> poison, double %501, i32 0
  %broadcast.splat297.13 = shufflevector <2 x double> %broadcast.splatinsert296.13, <2 x double> poison, <2 x i32> zeroinitializer
  %502 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv103.i, i64 %offset.idx294.13
  %503 = bitcast double* %502 to <2 x double>*
  %wide.load295.13 = load <2 x double>, <2 x double>* %503, align 8, !tbaa !2, !alias.scope !42
  %504 = fmul <2 x double> %broadcast.splat297.13, %wide.load295.13
  %wide.load298.13 = load <2 x double>, <2 x double>* %423, align 8, !tbaa !2, !alias.scope !44, !noalias !46
  %505 = fsub <2 x double> %wide.load298.13, %504
  store <2 x double> %505, <2 x double>* %424, align 8, !tbaa !2, !alias.scope !44, !noalias !46
  %506 = load double, double* %arrayidx359.i, align 8, !tbaa !2, !alias.scope !39
  %broadcast.splatinsert296.14 = insertelement <2 x double> poison, double %506, i32 0
  %broadcast.splat297.14 = shufflevector <2 x double> %broadcast.splatinsert296.14, <2 x double> poison, <2 x i32> zeroinitializer
  %507 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv103.i, i64 %offset.idx294.14
  %508 = bitcast double* %507 to <2 x double>*
  %wide.load295.14 = load <2 x double>, <2 x double>* %508, align 8, !tbaa !2, !alias.scope !42
  %509 = fmul <2 x double> %broadcast.splat297.14, %wide.load295.14
  %wide.load298.14 = load <2 x double>, <2 x double>* %426, align 8, !tbaa !2, !alias.scope !44, !noalias !46
  %510 = fsub <2 x double> %wide.load298.14, %509
  store <2 x double> %510, <2 x double>* %427, align 8, !tbaa !2, !alias.scope !44, !noalias !46
  %511 = load double, double* %arrayidx359.i, align 8, !tbaa !2, !alias.scope !39
  %broadcast.splatinsert296.15 = insertelement <2 x double> poison, double %511, i32 0
  %broadcast.splat297.15 = shufflevector <2 x double> %broadcast.splatinsert296.15, <2 x double> poison, <2 x i32> zeroinitializer
  %512 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv103.i, i64 %offset.idx294.15
  %513 = bitcast double* %512 to <2 x double>*
  %wide.load295.15 = load <2 x double>, <2 x double>* %513, align 8, !tbaa !2, !alias.scope !42
  %514 = fmul <2 x double> %broadcast.splat297.15, %wide.load295.15
  %wide.load298.15 = load <2 x double>, <2 x double>* %429, align 8, !tbaa !2, !alias.scope !44, !noalias !46
  %515 = fsub <2 x double> %wide.load298.15, %514
  store <2 x double> %515, <2 x double>* %430, align 8, !tbaa !2, !alias.scope !44, !noalias !46
  br label %for.cond342.for.inc373_crit_edge.i

for.body355.i:                                    ; preds = %for.cond342.preheader.i, %for.body355.i
  %indvars.iv99.i = phi i64 [ %indvars.iv.next100.i.1, %for.body355.i ], [ %indvars.iv64.i, %for.cond342.preheader.i ]
  %516 = load double, double* %arrayidx359.i, align 8, !tbaa !2
  %arrayidx363.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv103.i, i64 %indvars.iv99.i
  %517 = load double, double* %arrayidx363.i, align 8, !tbaa !2
  %mul364.i = fmul double %516, %517
  %arrayidx368.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv108.i, i64 %indvars.iv99.i
  %518 = load double, double* %arrayidx368.i, align 8, !tbaa !2
  %sub369.i = fsub double %518, %mul364.i
  store double %sub369.i, double* %arrayidx368.i, align 8, !tbaa !2
  %indvars.iv.next100.i = or i64 %indvars.iv99.i, 1
  %519 = load double, double* %arrayidx359.i, align 8, !tbaa !2
  %arrayidx363.i.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv103.i, i64 %indvars.iv.next100.i
  %520 = load double, double* %arrayidx363.i.1, align 8, !tbaa !2
  %mul364.i.1 = fmul double %519, %520
  %arrayidx368.i.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv108.i, i64 %indvars.iv.next100.i
  %521 = load double, double* %arrayidx368.i.1, align 8, !tbaa !2
  %sub369.i.1 = fsub double %521, %mul364.i.1
  store double %sub369.i.1, double* %arrayidx368.i.1, align 8, !tbaa !2
  %indvars.iv.next100.i.1 = add nuw nsw i64 %indvars.iv99.i, 2
  %exitcond102.not.i.1 = icmp eq i64 %indvars.iv.next100.i.1, %indvars.iv182.i
  br i1 %exitcond102.not.i.1, label %for.cond342.for.inc373_crit_edge.i, label %for.body355.i, !llvm.loop !47

for.cond342.for.inc373_crit_edge.i:               ; preds = %for.body355.i, %vector.body287
  %indvars.iv.next104.i = add nuw i64 %indvars.iv103.i, 1
  %exitcond.not = icmp eq i64 %indvars.iv103.i, %umin
  %indvar.next272 = add i64 %indvar271, 1
  br i1 %exitcond.not, label %for.inc376.i, label %for.cond342.preheader.i, !llvm.loop !48

for.inc376.i:                                     ; preds = %for.cond342.for.inc373_crit_edge.i, %for.cond327.preheader.i
  %indvars.iv.next109.i = add nuw nsw i64 %indvars.iv108.i, 1
  %cmp324.not.not.i = icmp ult i64 %indvars.iv108.i, %143
  %indvars.iv.next51 = add nsw i64 %indvars.iv50, 1
  %indvar.next268 = add i64 %indvar267, 1
  br i1 %cmp324.not.not.i, label %for.cond327.preheader.i, label %for.end378.i, !llvm.loop !49

for.end378.i:                                     ; preds = %for.inc376.i, %if.end300.i
  br i1 %or.cond.i, label %for.cond400.preheader.i, label %if.end517.i

for.cond400.preheader.i:                          ; preds = %for.end378.i, %for.inc514.i
  %indvars.iv139.i = phi i64 [ %indvars.iv.next140.i, %for.inc514.i ], [ %indvars.iv91.i, %for.end378.i ]
  %indvars.iv119.i = phi i64 [ %indvars.iv.next120.i.pre-phi, %for.inc514.i ], [ %indvars.iv117.i, %for.end378.i ]
  %522 = add nsw i64 %indvars.iv119.i, -2
  %cmp402.not26.i = icmp ugt i64 %101, %522
  br i1 %cmp402.not26.i, label %for.end468.i, label %for.body403.lr.ph.i

for.body403.lr.ph.i:                              ; preds = %for.cond400.preheader.i
  %cmp447.not24.i = icmp ugt i64 %indvars.iv119.i, %102
  %523 = mul i64 %indvars.iv119.i, 32008
  %scevgep191 = getelementptr i8, i8* %call.i, i64 %523
  %524 = mul nsw i64 %indvars.iv119.i, 32000
  %scevgep193 = getelementptr i8, i8* %scevgep192, i64 %524
  %525 = add i64 %67, %524
  %526 = shl i64 %indvars.iv119.i, 3
  %527 = add nsw i64 %68, %526
  %528 = sub i64 %64, %indvars.iv119.i
  %529 = mul nsw i64 %indvars.iv119.i, 32000
  %530 = add nsw i64 %56, %529
  %531 = mul i64 %indvars.iv119.i, 32008
  %scevgep231 = getelementptr i8, i8* %call.i, i64 %531
  %532 = add i64 %57, %529
  %533 = add i64 %62, %indvars.iv119.i
  %534 = shl i64 %533, 3
  %535 = add i64 %60, %534
  %536 = add i64 %54, %indvars.iv119.i
  %min.iters.check211 = icmp ult i64 %528, 4
  %n.vec214 = and i64 %528, -4
  %ind.end218 = add i64 %indvars.iv119.i, %n.vec214
  %cmp.n219 = icmp eq i64 %528, %n.vec214
  br label %for.body403.i

for.cond400.loopexit.i:                           ; preds = %for.body448.i.prol.loopexit, %for.body448.i, %middle.block208, %for.cond435.preheader.i
  %indvars.iv.next112.i = add nuw nsw i64 %indvars.iv111.i, 1
  %exitcond134.not.i = icmp eq i64 %indvars.iv.next128.i, %indvars.iv139.i
  %indvar.next195 = add i64 %indvar194, 1
  br i1 %exitcond134.not.i, label %for.end468.i, label %for.body403.i, !llvm.loop !50

for.body403.i:                                    ; preds = %for.cond400.loopexit.i, %for.body403.lr.ph.i
  %indvar194 = phi i64 [ %indvar.next195, %for.cond400.loopexit.i ], [ 0, %for.body403.lr.ph.i ]
  %indvars.iv127.i = phi i64 [ %indvars.iv.next128.i, %for.cond400.loopexit.i ], [ %indvars.iv125.i, %for.body403.lr.ph.i ]
  %indvars.iv111.i = phi i64 [ %indvars.iv.next112.i, %for.cond400.loopexit.i ], [ %indvars.iv91.i, %for.body403.lr.ph.i ]
  %537 = sub i64 %536, %indvar194
  %538 = shl nuw nsw i64 %indvar194, 3
  %539 = add i64 %530, %538
  %scevgep230 = getelementptr i8, i8* %call.i, i64 %539
  %540 = add i64 %532, %538
  %scevgep232 = getelementptr i8, i8* %call.i, i64 %540
  %541 = mul nuw nsw i64 %indvar194, 32008
  %542 = add i64 %59, %541
  %scevgep233 = getelementptr i8, i8* %call.i, i64 %542
  %543 = mul nuw nsw i64 %indvar194, 32000
  %544 = add i64 %535, %543
  %scevgep234 = getelementptr i8, i8* %call.i, i64 %544
  %545 = shl nuw nsw i64 %indvar194, 3
  %546 = add i64 %525, %545
  %scevgep196 = getelementptr i8, i8* %call.i, i64 %546
  %547 = mul nuw nsw i64 %indvar194, 32000
  %548 = add i64 %527, %547
  %scevgep197 = getelementptr i8, i8* %call.i, i64 %548
  %549 = add i64 %70, %547
  %scevgep198 = getelementptr i8, i8* %call.i, i64 %549
  %arrayidx407.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv127.i, i64 %indvars.iv127.i
  %550 = load double, double* %arrayidx407.i, align 8, !tbaa !2
  %arrayidx411.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv119.i, i64 %indvars.iv127.i
  %551 = load double, double* %arrayidx411.i, align 8, !tbaa !2
  %div412.i = fdiv double %551, %550
  store double %div412.i, double* %arrayidx411.i, align 8, !tbaa !2
  %indvars.iv.next128.i = add nuw nsw i64 %indvars.iv127.i, 1
  %cmp416.not.not22.i = icmp ult i64 %indvars.iv.next128.i, %indvars.iv119.i
  br i1 %cmp416.not.not22.i, label %for.body417.i.preheader, label %for.cond435.preheader.i

for.body417.i.preheader:                          ; preds = %for.body403.i
  %arrayidx425.i33 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv127.i, i64 %indvars.iv111.i
  %552 = load double, double* %arrayidx425.i33, align 8, !tbaa !2
  %mul426.i34 = fmul double %div412.i, %552
  %arrayidx430.i35 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv119.i, i64 %indvars.iv111.i
  %553 = load double, double* %arrayidx430.i35, align 8, !tbaa !2
  %sub431.i36 = fsub double %553, %mul426.i34
  store double %sub431.i36, double* %arrayidx430.i35, align 8, !tbaa !2
  %indvars.iv.next114.i37 = add nuw nsw i64 %indvars.iv111.i, 1
  %exitcond116.not.i38 = icmp eq i64 %indvars.iv.next114.i37, %indvars.iv119.i
  br i1 %exitcond116.not.i38, label %for.cond435.preheader.i, label %for.body417.for.body417_crit_edge.i.preheader, !llvm.loop !51

for.body417.for.body417_crit_edge.i.preheader:    ; preds = %for.body417.i.preheader
  %min.iters.check247 = icmp ult i64 %537, 4
  br i1 %min.iters.check247, label %for.body417.for.body417_crit_edge.i.preheader381, label %vector.memcheck229

vector.memcheck229:                               ; preds = %for.body417.for.body417_crit_edge.i.preheader
  %bc235 = bitcast double* %arrayidx411.i to i8*
  %bound0236 = icmp ult i8* %scevgep230, %scevgep232
  %bound1237 = icmp ugt i8* %scevgep231, %bc235
  %found.conflict238 = and i1 %bound0236, %bound1237
  %bound0239 = icmp ult i8* %scevgep230, %scevgep234
  %bound1240 = icmp ult i8* %scevgep233, %scevgep231
  %found.conflict241 = and i1 %bound0239, %bound1240
  %conflict.rdx242 = or i1 %found.conflict238, %found.conflict241
  br i1 %conflict.rdx242, label %for.body417.for.body417_crit_edge.i.preheader381, label %vector.ph248

vector.ph248:                                     ; preds = %vector.memcheck229
  %n.vec250 = and i64 %537, -4
  %ind.end254 = add i64 %indvars.iv.next114.i37, %n.vec250
  %554 = load double, double* %arrayidx411.i, align 8, !tbaa !2, !alias.scope !52
  %broadcast.splatinsert259 = insertelement <2 x double> poison, double %554, i32 0
  %broadcast.splat260 = shufflevector <2 x double> %broadcast.splatinsert259, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert261 = insertelement <2 x double> poison, double %554, i32 0
  %broadcast.splat262 = shufflevector <2 x double> %broadcast.splatinsert261, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body246

vector.body246:                                   ; preds = %vector.body246, %vector.ph248
  %index251 = phi i64 [ 0, %vector.ph248 ], [ %index.next252, %vector.body246 ]
  %offset.idx256 = add i64 %indvars.iv.next114.i37, %index251
  %555 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv127.i, i64 %offset.idx256
  %556 = bitcast double* %555 to <2 x double>*
  %wide.load257 = load <2 x double>, <2 x double>* %556, align 8, !tbaa !2, !alias.scope !55
  %557 = getelementptr inbounds double, double* %555, i64 2
  %558 = bitcast double* %557 to <2 x double>*
  %wide.load258 = load <2 x double>, <2 x double>* %558, align 8, !tbaa !2, !alias.scope !55
  %559 = fmul <2 x double> %broadcast.splat260, %wide.load257
  %560 = fmul <2 x double> %broadcast.splat262, %wide.load258
  %561 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv119.i, i64 %offset.idx256
  %562 = bitcast double* %561 to <2 x double>*
  %wide.load263 = load <2 x double>, <2 x double>* %562, align 8, !tbaa !2, !alias.scope !57, !noalias !59
  %563 = getelementptr inbounds double, double* %561, i64 2
  %564 = bitcast double* %563 to <2 x double>*
  %wide.load264 = load <2 x double>, <2 x double>* %564, align 8, !tbaa !2, !alias.scope !57, !noalias !59
  %565 = fsub <2 x double> %wide.load263, %559
  %566 = fsub <2 x double> %wide.load264, %560
  %567 = bitcast double* %561 to <2 x double>*
  store <2 x double> %565, <2 x double>* %567, align 8, !tbaa !2, !alias.scope !57, !noalias !59
  %568 = bitcast double* %563 to <2 x double>*
  store <2 x double> %566, <2 x double>* %568, align 8, !tbaa !2, !alias.scope !57, !noalias !59
  %index.next252 = add i64 %index251, 4
  %569 = icmp eq i64 %index.next252, %n.vec250
  br i1 %569, label %middle.block244, label %vector.body246, !llvm.loop !60

middle.block244:                                  ; preds = %vector.body246
  %cmp.n255 = icmp eq i64 %537, %n.vec250
  br i1 %cmp.n255, label %for.cond435.preheader.i, label %for.body417.for.body417_crit_edge.i.preheader381

for.body417.for.body417_crit_edge.i.preheader381: ; preds = %vector.memcheck229, %for.body417.for.body417_crit_edge.i.preheader, %middle.block244
  %indvars.iv.next114.i39.ph = phi i64 [ %indvars.iv.next114.i37, %vector.memcheck229 ], [ %indvars.iv.next114.i37, %for.body417.for.body417_crit_edge.i.preheader ], [ %ind.end254, %middle.block244 ]
  %570 = sub i64 %indvars.iv119.i, %indvars.iv.next114.i39.ph
  %.neg418 = add i64 %indvars.iv.next114.i39.ph, 1
  %xtraiter390 = and i64 %570, 1
  %lcmp.mod391.not = icmp eq i64 %xtraiter390, 0
  br i1 %lcmp.mod391.not, label %for.body417.for.body417_crit_edge.i.prol.loopexit, label %for.body417.for.body417_crit_edge.i.prol

for.body417.for.body417_crit_edge.i.prol:         ; preds = %for.body417.for.body417_crit_edge.i.preheader381
  %.pre214.i.prol = load double, double* %arrayidx411.i, align 8, !tbaa !2
  %arrayidx425.i.prol = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv127.i, i64 %indvars.iv.next114.i39.ph
  %571 = load double, double* %arrayidx425.i.prol, align 8, !tbaa !2
  %mul426.i.prol = fmul double %.pre214.i.prol, %571
  %arrayidx430.i.prol = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv119.i, i64 %indvars.iv.next114.i39.ph
  %572 = load double, double* %arrayidx430.i.prol, align 8, !tbaa !2
  %sub431.i.prol = fsub double %572, %mul426.i.prol
  store double %sub431.i.prol, double* %arrayidx430.i.prol, align 8, !tbaa !2
  %indvars.iv.next114.i.prol = add nuw nsw i64 %indvars.iv.next114.i39.ph, 1
  br label %for.body417.for.body417_crit_edge.i.prol.loopexit

for.body417.for.body417_crit_edge.i.prol.loopexit: ; preds = %for.body417.for.body417_crit_edge.i.prol, %for.body417.for.body417_crit_edge.i.preheader381
  %indvars.iv.next114.i39.unr.ph = phi i64 [ %indvars.iv.next114.i.prol, %for.body417.for.body417_crit_edge.i.prol ], [ %indvars.iv.next114.i39.ph, %for.body417.for.body417_crit_edge.i.preheader381 ]
  %573 = icmp eq i64 %indvars.iv119.i, %.neg418
  br i1 %573, label %for.cond435.preheader.i, label %for.body417.for.body417_crit_edge.i

for.cond435.preheader.i:                          ; preds = %for.body417.for.body417_crit_edge.i.prol.loopexit, %for.body417.for.body417_crit_edge.i, %middle.block244, %for.body417.i.preheader, %for.body403.i
  br i1 %cmp447.not24.i, label %for.cond400.loopexit.i, label %for.body448.i.preheader

for.body448.i.preheader:                          ; preds = %for.cond435.preheader.i
  br i1 %min.iters.check211, label %for.body448.i.preheader380, label %vector.memcheck190

vector.memcheck190:                               ; preds = %for.body448.i.preheader
  %bc199 = bitcast double* %arrayidx411.i to i8*
  %bound0200 = icmp ult i8* %scevgep191, %scevgep196
  %bound1201 = icmp ugt i8* %scevgep193, %bc199
  %found.conflict202 = and i1 %bound0200, %bound1201
  %bound0203 = icmp ult i8* %scevgep191, %scevgep198
  %bound1204 = icmp ult i8* %scevgep197, %scevgep193
  %found.conflict205 = and i1 %bound0203, %bound1204
  %conflict.rdx206 = or i1 %found.conflict202, %found.conflict205
  br i1 %conflict.rdx206, label %for.body448.i.preheader380, label %vector.ph212

vector.ph212:                                     ; preds = %vector.memcheck190
  %574 = load double, double* %arrayidx411.i, align 8, !tbaa !2, !alias.scope !61
  %broadcast.splatinsert223 = insertelement <2 x double> poison, double %574, i32 0
  %broadcast.splat224 = shufflevector <2 x double> %broadcast.splatinsert223, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert225 = insertelement <2 x double> poison, double %574, i32 0
  %broadcast.splat226 = shufflevector <2 x double> %broadcast.splatinsert225, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body210

vector.body210:                                   ; preds = %vector.body210, %vector.ph212
  %index215 = phi i64 [ 0, %vector.ph212 ], [ %index.next216, %vector.body210 ]
  %offset.idx220 = add i64 %indvars.iv119.i, %index215
  %575 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv127.i, i64 %offset.idx220
  %576 = bitcast double* %575 to <2 x double>*
  %wide.load221 = load <2 x double>, <2 x double>* %576, align 8, !tbaa !2, !alias.scope !64
  %577 = getelementptr inbounds double, double* %575, i64 2
  %578 = bitcast double* %577 to <2 x double>*
  %wide.load222 = load <2 x double>, <2 x double>* %578, align 8, !tbaa !2, !alias.scope !64
  %579 = fmul <2 x double> %broadcast.splat224, %wide.load221
  %580 = fmul <2 x double> %broadcast.splat226, %wide.load222
  %581 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv119.i, i64 %offset.idx220
  %582 = bitcast double* %581 to <2 x double>*
  %wide.load227 = load <2 x double>, <2 x double>* %582, align 8, !tbaa !2, !alias.scope !66, !noalias !68
  %583 = getelementptr inbounds double, double* %581, i64 2
  %584 = bitcast double* %583 to <2 x double>*
  %wide.load228 = load <2 x double>, <2 x double>* %584, align 8, !tbaa !2, !alias.scope !66, !noalias !68
  %585 = fsub <2 x double> %wide.load227, %579
  %586 = fsub <2 x double> %wide.load228, %580
  %587 = bitcast double* %581 to <2 x double>*
  store <2 x double> %585, <2 x double>* %587, align 8, !tbaa !2, !alias.scope !66, !noalias !68
  %588 = bitcast double* %583 to <2 x double>*
  store <2 x double> %586, <2 x double>* %588, align 8, !tbaa !2, !alias.scope !66, !noalias !68
  %index.next216 = add i64 %index215, 4
  %589 = icmp eq i64 %index.next216, %n.vec214
  br i1 %589, label %middle.block208, label %vector.body210, !llvm.loop !69

middle.block208:                                  ; preds = %vector.body210
  br i1 %cmp.n219, label %for.cond400.loopexit.i, label %for.body448.i.preheader380

for.body448.i.preheader380:                       ; preds = %vector.memcheck190, %for.body448.i.preheader, %middle.block208
  %indvars.iv121.i.ph = phi i64 [ %indvars.iv119.i, %vector.memcheck190 ], [ %indvars.iv119.i, %for.body448.i.preheader ], [ %ind.end218, %middle.block208 ]
  %xtraiter392 = and i64 %indvars.iv121.i.ph, 1
  %lcmp.mod393.not = icmp eq i64 %xtraiter392, 0
  br i1 %lcmp.mod393.not, label %for.body448.i.prol.loopexit, label %for.body448.i.prol

for.body448.i.prol:                               ; preds = %for.body448.i.preheader380
  %590 = load double, double* %arrayidx411.i, align 8, !tbaa !2
  %arrayidx456.i.prol = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv127.i, i64 %indvars.iv121.i.ph
  %591 = load double, double* %arrayidx456.i.prol, align 8, !tbaa !2
  %mul457.i.prol = fmul double %590, %591
  %arrayidx461.i.prol = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv119.i, i64 %indvars.iv121.i.ph
  %592 = load double, double* %arrayidx461.i.prol, align 8, !tbaa !2
  %sub462.i.prol = fsub double %592, %mul457.i.prol
  store double %sub462.i.prol, double* %arrayidx461.i.prol, align 8, !tbaa !2
  %indvars.iv.next122.i.prol = add nuw nsw i64 %indvars.iv121.i.ph, 1
  br label %for.body448.i.prol.loopexit

for.body448.i.prol.loopexit:                      ; preds = %for.body448.i.prol, %for.body448.i.preheader380
  %indvars.iv121.i.unr.ph = phi i64 [ %indvars.iv.next122.i.prol, %for.body448.i.prol ], [ %indvars.iv121.i.ph, %for.body448.i.preheader380 ]
  %593 = icmp eq i64 %49, %indvars.iv121.i.ph
  br i1 %593, label %for.cond400.loopexit.i, label %for.body448.i

for.body417.for.body417_crit_edge.i:              ; preds = %for.body417.for.body417_crit_edge.i.prol.loopexit, %for.body417.for.body417_crit_edge.i
  %indvars.iv.next114.i39 = phi i64 [ %indvars.iv.next114.i.1, %for.body417.for.body417_crit_edge.i ], [ %indvars.iv.next114.i39.unr.ph, %for.body417.for.body417_crit_edge.i.prol.loopexit ]
  %.pre214.i = load double, double* %arrayidx411.i, align 8, !tbaa !2
  %arrayidx425.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv127.i, i64 %indvars.iv.next114.i39
  %594 = load double, double* %arrayidx425.i, align 8, !tbaa !2
  %mul426.i = fmul double %.pre214.i, %594
  %arrayidx430.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv119.i, i64 %indvars.iv.next114.i39
  %595 = load double, double* %arrayidx430.i, align 8, !tbaa !2
  %sub431.i = fsub double %595, %mul426.i
  store double %sub431.i, double* %arrayidx430.i, align 8, !tbaa !2
  %indvars.iv.next114.i = add nuw nsw i64 %indvars.iv.next114.i39, 1
  %.pre214.i.1 = load double, double* %arrayidx411.i, align 8, !tbaa !2
  %arrayidx425.i.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv127.i, i64 %indvars.iv.next114.i
  %596 = load double, double* %arrayidx425.i.1, align 8, !tbaa !2
  %mul426.i.1 = fmul double %.pre214.i.1, %596
  %arrayidx430.i.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv119.i, i64 %indvars.iv.next114.i
  %597 = load double, double* %arrayidx430.i.1, align 8, !tbaa !2
  %sub431.i.1 = fsub double %597, %mul426.i.1
  store double %sub431.i.1, double* %arrayidx430.i.1, align 8, !tbaa !2
  %indvars.iv.next114.i.1 = add nuw nsw i64 %indvars.iv.next114.i39, 2
  %exitcond116.not.i.1 = icmp eq i64 %indvars.iv.next114.i.1, %indvars.iv119.i
  br i1 %exitcond116.not.i.1, label %for.cond435.preheader.i, label %for.body417.for.body417_crit_edge.i, !llvm.loop !70

for.body448.i:                                    ; preds = %for.body448.i.prol.loopexit, %for.body448.i
  %indvars.iv121.i = phi i64 [ %indvars.iv.next122.i.1, %for.body448.i ], [ %indvars.iv121.i.unr.ph, %for.body448.i.prol.loopexit ]
  %598 = load double, double* %arrayidx411.i, align 8, !tbaa !2
  %arrayidx456.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv127.i, i64 %indvars.iv121.i
  %599 = load double, double* %arrayidx456.i, align 8, !tbaa !2
  %mul457.i = fmul double %598, %599
  %arrayidx461.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv119.i, i64 %indvars.iv121.i
  %600 = load double, double* %arrayidx461.i, align 8, !tbaa !2
  %sub462.i = fsub double %600, %mul457.i
  store double %sub462.i, double* %arrayidx461.i, align 8, !tbaa !2
  %indvars.iv.next122.i = add nuw nsw i64 %indvars.iv121.i, 1
  %601 = load double, double* %arrayidx411.i, align 8, !tbaa !2
  %arrayidx456.i.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv127.i, i64 %indvars.iv.next122.i
  %602 = load double, double* %arrayidx456.i.1, align 8, !tbaa !2
  %mul457.i.1 = fmul double %601, %602
  %arrayidx461.i.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv119.i, i64 %indvars.iv.next122.i
  %603 = load double, double* %arrayidx461.i.1, align 8, !tbaa !2
  %sub462.i.1 = fsub double %603, %mul457.i.1
  store double %sub462.i.1, double* %arrayidx461.i.1, align 8, !tbaa !2
  %indvars.iv.next122.i.1 = add nuw nsw i64 %indvars.iv121.i, 2
  %exitcond124.not.i.1 = icmp eq i64 %indvars.iv.next122.i.1, %indvars.iv197.i
  br i1 %exitcond124.not.i.1, label %for.cond400.loopexit.i, label %for.body448.i, !llvm.loop !71

for.end468.i:                                     ; preds = %for.cond400.loopexit.i, %for.cond400.preheader.i
  %604 = add nsw i64 %indvars.iv119.i, -1
  %arrayidx474.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %604, i64 %604
  %605 = load double, double* %arrayidx474.i, align 8, !tbaa !2
  %arrayidx479.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv119.i, i64 %604
  %606 = load double, double* %arrayidx479.i, align 8, !tbaa !2
  %div480.i = fdiv double %606, %605
  store double %div480.i, double* %arrayidx479.i, align 8, !tbaa !2
  %cmp493.not28.i = icmp ugt i64 %indvars.iv119.i, %102
  br i1 %cmp493.not28.i, label %for.end468.i.for.inc514.i_crit_edge, label %for.body494.i.preheader

for.end468.i.for.inc514.i_crit_edge:              ; preds = %for.end468.i
  %.pre = add nuw nsw i64 %indvars.iv119.i, 1
  br label %for.inc514.i

for.body494.i.preheader:                          ; preds = %for.end468.i
  %arrayidx504.i40 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %604, i64 %indvars.iv119.i
  %607 = load double, double* %arrayidx504.i40, align 8, !tbaa !2
  %mul505.i41 = fmul double %div480.i, %607
  %arrayidx509.i42 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv119.i, i64 %indvars.iv119.i
  %608 = load double, double* %arrayidx509.i42, align 8, !tbaa !2
  %sub510.i43 = fsub double %608, %mul505.i41
  store double %sub510.i43, double* %arrayidx509.i42, align 8, !tbaa !2
  %indvars.iv.next136.i44 = add nuw nsw i64 %indvars.iv119.i, 1
  %exitcond138.not.i45 = icmp eq i64 %indvars.iv.next136.i44, %indvars.iv197.i
  br i1 %exitcond138.not.i45, label %for.inc514.i, label %for.body494.for.body494_crit_edge.i.preheader, !llvm.loop !72

for.body494.for.body494_crit_edge.i.preheader:    ; preds = %for.body494.i.preheader
  %arrayidx504.i59 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %604, i64 %indvars.iv.next136.i44
  %609 = load double, double* %arrayidx504.i59, align 8, !tbaa !2
  %mul505.i60 = fmul double %div480.i, %609
  %arrayidx509.i61 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv119.i, i64 %indvars.iv.next136.i44
  %610 = load double, double* %arrayidx509.i61, align 8, !tbaa !2
  %sub510.i62 = fsub double %610, %mul505.i60
  store double %sub510.i62, double* %arrayidx509.i61, align 8, !tbaa !2
  %indvars.iv.next136.i63 = add nuw nsw i64 %indvars.iv119.i, 2
  %exitcond138.not.i64 = icmp eq i64 %indvars.iv.next136.i63, %indvars.iv197.i
  br i1 %exitcond138.not.i64, label %for.inc514.i, label %for.body494.for.body494_crit_edge.i.for.body494.for.body494_crit_edge.i_crit_edge, !llvm.loop !72

for.body494.for.body494_crit_edge.i.for.body494.for.body494_crit_edge.i_crit_edge: ; preds = %for.body494.for.body494_crit_edge.i.preheader, %for.body494.for.body494_crit_edge.i.for.body494.for.body494_crit_edge.i_crit_edge
  %indvars.iv.next136.i65 = phi i64 [ %indvars.iv.next136.i, %for.body494.for.body494_crit_edge.i.for.body494.for.body494_crit_edge.i_crit_edge ], [ %indvars.iv.next136.i63, %for.body494.for.body494_crit_edge.i.preheader ]
  %.pre215.i.pre = load double, double* %arrayidx479.i, align 8, !tbaa !2
  %arrayidx504.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %604, i64 %indvars.iv.next136.i65
  %611 = load double, double* %arrayidx504.i, align 8, !tbaa !2
  %mul505.i = fmul double %.pre215.i.pre, %611
  %arrayidx509.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv119.i, i64 %indvars.iv.next136.i65
  %612 = load double, double* %arrayidx509.i, align 8, !tbaa !2
  %sub510.i = fsub double %612, %mul505.i
  store double %sub510.i, double* %arrayidx509.i, align 8, !tbaa !2
  %indvars.iv.next136.i = add nuw nsw i64 %indvars.iv.next136.i65, 1
  %exitcond138.not.i = icmp eq i64 %indvars.iv.next136.i, %indvars.iv197.i
  br i1 %exitcond138.not.i, label %for.inc514.i, label %for.body494.for.body494_crit_edge.i.for.body494.for.body494_crit_edge.i_crit_edge, !llvm.loop !72

for.inc514.i:                                     ; preds = %for.body494.for.body494_crit_edge.i.for.body494.for.body494_crit_edge.i_crit_edge, %for.body494.for.body494_crit_edge.i.preheader, %for.end468.i.for.inc514.i_crit_edge, %for.body494.i.preheader
  %indvars.iv.next120.i.pre-phi = phi i64 [ %.pre, %for.end468.i.for.inc514.i_crit_edge ], [ %indvars.iv.next136.i44, %for.body494.i.preheader ], [ %indvars.iv.next136.i44, %for.body494.for.body494_crit_edge.i.preheader ], [ %indvars.iv.next136.i44, %for.body494.for.body494_crit_edge.i.for.body494.for.body494_crit_edge.i_crit_edge ]
  %indvars.iv.next140.i = add nuw nsw i64 %indvars.iv139.i, 1
  %exitcond146.not.i = icmp eq i64 %indvars.iv.next140.i, %indvars.iv195.i
  br i1 %exitcond146.not.i, label %if.end517.i, label %for.cond400.preheader.i, !llvm.loop !73

if.end517.i:                                      ; preds = %for.inc514.i, %for.end378.i
  %cmp521.not.not.i = icmp ugt i64 %indvars.iv199.i, %indvars.iv173.i
  %or.cond2.i = and i1 %cmp244.i, %cmp521.not.not.i
  br i1 %or.cond2.i, label %for.cond540.preheader.i, label %for.inc605.i

for.cond540.preheader.i:                          ; preds = %if.end517.i, %for.inc601.i
  %indvar = phi i64 [ %indvar.next, %for.inc601.i ], [ 0, %if.end517.i ]
  %indvars.iv147.i = phi i64 [ %indvars.iv.next148.i, %for.inc601.i ], [ %indvars.iv91.i, %if.end517.i ]
  %613 = add i64 %42, %indvar
  %614 = add i64 %indvar, -1
  %615 = lshr i64 %614, 1
  %616 = add nuw i64 %615, 1
  %617 = sub i64 29, %indvar
  %618 = lshr i64 %617, 1
  %619 = add nuw i64 %618, 1
  %620 = add i64 %45, %indvar
  %621 = add i64 %indvar, -1
  %622 = lshr i64 %621, 1
  %623 = add nuw i64 %622, 1
  %624 = sub i64 29, %indvar
  %625 = lshr i64 %624, 1
  %626 = add nuw i64 %625, 1
  %627 = sub i64 31, %indvar
  %628 = mul nuw nsw i64 %indvar, 32008
  %629 = add i64 %72, %628
  %scevgep157 = getelementptr i8, i8* %call.i, i64 %629
  %630 = mul nuw nsw i64 %indvar, 32000
  %631 = add i64 %73, %630
  %scevgep158 = getelementptr i8, i8* %call.i, i64 %631
  %632 = add i64 %162, %630
  %633 = shl nuw nsw i64 %indvar, 3
  %634 = add i64 %164, %633
  %635 = add i64 %indvar, 1
  %636 = mul nuw nsw i64 %indvar, 32000
  %637 = add i64 %80, %636
  %scevgep125 = getelementptr i8, i8* %call.i, i64 %637
  %638 = mul nuw nsw i64 %indvar, 32008
  %639 = add i64 %81, %638
  %scevgep126 = getelementptr i8, i8* %call.i, i64 %639
  %640 = add i64 %167, %636
  %641 = shl nuw nsw i64 %indvar, 3
  %642 = add i64 %170, %641
  %643 = sub i64 31, %indvar
  %644 = mul nuw nsw i64 %indvar, 32008
  %645 = add i64 %87, %644
  %scevgep91 = getelementptr i8, i8* %call.i, i64 %645
  %646 = mul nuw nsw i64 %indvar, 32000
  %647 = add i64 %88, %646
  %scevgep92 = getelementptr i8, i8* %call.i, i64 %647
  %648 = add i64 %172, %646
  %649 = shl nuw nsw i64 %indvar, 3
  %650 = add i64 %174, %649
  %651 = add i64 %indvar, 1
  %652 = mul nuw nsw i64 %indvar, 32000
  %653 = add i64 %95, %652
  %scevgep = getelementptr i8, i8* %call.i, i64 %653
  %654 = mul nuw nsw i64 %indvar, 32008
  %655 = add i64 %96, %654
  %scevgep69 = getelementptr i8, i8* %call.i, i64 %655
  %656 = add i64 %177, %652
  %657 = shl nuw nsw i64 %indvar, 3
  %658 = add i64 %180, %657
  %cmp548.not.not33.i = icmp ult i64 %101, %indvars.iv147.i
  %cmp579.not35.i = icmp ugt i64 %indvars.iv147.i, %102
  br i1 %cmp548.not.not33.i, label %for.cond546.preheader.us.i.preheader, label %for.cond540.preheader.split.i

for.cond546.preheader.us.i.preheader:             ; preds = %for.cond540.preheader.i
  br i1 %cmp579.not35.i, label %for.cond546.preheader.us.i.us.preheader, label %for.cond546.preheader.us.i.preheader385

for.cond546.preheader.us.i.preheader385:          ; preds = %for.cond546.preheader.us.i.preheader
  %min.iters.check142 = icmp ult i64 %635, 2
  %n.vec145 = and i64 %635, -2
  %ind.end149 = add i64 %indvars.iv125.i, %n.vec145
  %xtraiter400 = and i64 %623, 1
  %659 = icmp eq i64 %622, 0
  %unroll_iter402 = and i64 %623, -2
  %lcmp.mod401.not = icmp eq i64 %xtraiter400, 0
  %cmp.n150 = icmp eq i64 %635, %n.vec145
  %min.iters.check110 = icmp ult i64 %643, 2
  %n.vec113 = and i64 %643, -2
  %ind.end117 = add i64 %indvars.iv147.i, %n.vec113
  %xtraiter406 = and i64 %619, 1
  %660 = icmp eq i64 %618, 0
  %unroll_iter408 = and i64 %619, -2
  %lcmp.mod407.not = icmp eq i64 %xtraiter406, 0
  %cmp.n118 = icmp eq i64 %643, %n.vec113
  br label %for.cond546.preheader.us.i

for.cond546.preheader.us.i.us.preheader:          ; preds = %for.cond546.preheader.us.i.preheader
  %min.iters.check = icmp ult i64 %651, 2
  %n.vec = and i64 %651, -2
  %ind.end = add i64 %indvars.iv125.i, %n.vec
  %xtraiter412 = and i64 %616, 1
  %661 = icmp eq i64 %615, 0
  %unroll_iter414 = and i64 %616, -2
  %lcmp.mod413.not = icmp eq i64 %xtraiter412, 0
  %cmp.n85 = icmp eq i64 %651, %n.vec
  br label %for.cond546.preheader.us.i.us

for.cond546.preheader.us.i.us:                    ; preds = %for.cond546.preheader.us.i.us.preheader, %for.cond546.for.cond567.preheader_crit_edge.us.i.us
  %indvar70 = phi i64 [ %indvar.next71, %for.cond546.for.cond567.preheader_crit_edge.us.i.us ], [ 0, %for.cond546.preheader.us.i.us.preheader ]
  %indvars.iv165.i.us = phi i64 [ %indvars.iv.next166.i.us, %for.cond546.for.cond567.preheader_crit_edge.us.i.us ], [ %indvars.iv80.i, %for.cond546.preheader.us.i.us.preheader ]
  %662 = mul nuw nsw i64 %indvar70, 32000
  %arrayidx553.us.i.us = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv147.i, i64 %indvars.iv165.i.us
  br i1 %min.iters.check, label %for.body549.us.i.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %for.cond546.preheader.us.i.us
  %663 = add i64 %658, %662
  %scevgep74 = getelementptr i8, i8* %call.i, i64 %663
  %664 = add i64 %179, %662
  %scevgep73 = getelementptr i8, i8* %call.i, i64 %664
  %665 = shl nuw nsw i64 %indvar70, 3
  %666 = add i64 %656, %665
  %scevgep72 = getelementptr i8, i8* %call.i, i64 %666
  %bc = bitcast double* %arrayidx553.us.i.us to i8*
  %bound0 = icmp ult i8* %scevgep, %scevgep72
  %bound1 = icmp ugt i8* %scevgep69, %bc
  %found.conflict = and i1 %bound0, %bound1
  %bound075 = icmp ult i8* %scevgep, %scevgep74
  %bound176 = icmp ult i8* %scevgep73, %scevgep69
  %found.conflict77 = and i1 %bound075, %bound176
  %conflict.rdx = or i1 %found.conflict, %found.conflict77
  br i1 %conflict.rdx, label %for.body549.us.i.us.preheader, label %vector.ph81

vector.ph81:                                      ; preds = %vector.memcheck
  br i1 %661, label %middle.block78.unr-lcssa, label %vector.ph81.new

vector.ph81.new:                                  ; preds = %vector.ph81
  %667 = load double, double* %arrayidx553.us.i.us, align 8, !tbaa !2, !alias.scope !74
  %broadcast.splatinsert87 = insertelement <2 x double> poison, double %667, i32 0
  %broadcast.splat88 = shufflevector <2 x double> %broadcast.splatinsert87, <2 x double> poison, <2 x i32> zeroinitializer
  %668 = load double, double* %arrayidx553.us.i.us, align 8, !tbaa !2, !alias.scope !74
  %broadcast.splatinsert87.1 = insertelement <2 x double> poison, double %668, i32 0
  %broadcast.splat88.1 = shufflevector <2 x double> %broadcast.splatinsert87.1, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body80

vector.body80:                                    ; preds = %vector.body80, %vector.ph81.new
  %index82 = phi i64 [ 0, %vector.ph81.new ], [ %index.next83.1, %vector.body80 ]
  %niter415 = phi i64 [ %unroll_iter414, %vector.ph81.new ], [ %niter415.nsub.1, %vector.body80 ]
  %offset.idx = add i64 %indvars.iv125.i, %index82
  %669 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv165.i.us, i64 %offset.idx
  %670 = bitcast double* %669 to <2 x double>*
  %wide.load86 = load <2 x double>, <2 x double>* %670, align 8, !tbaa !2, !alias.scope !77
  %671 = fmul <2 x double> %broadcast.splat88, %wide.load86
  %672 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv147.i, i64 %offset.idx
  %673 = bitcast double* %672 to <2 x double>*
  %wide.load89 = load <2 x double>, <2 x double>* %673, align 8, !tbaa !2, !alias.scope !79, !noalias !81
  %674 = fsub <2 x double> %wide.load89, %671
  %675 = bitcast double* %672 to <2 x double>*
  store <2 x double> %674, <2 x double>* %675, align 8, !tbaa !2, !alias.scope !79, !noalias !81
  %index.next83 = or i64 %index82, 2
  %offset.idx.1 = add i64 %indvars.iv125.i, %index.next83
  %676 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv165.i.us, i64 %offset.idx.1
  %677 = bitcast double* %676 to <2 x double>*
  %wide.load86.1 = load <2 x double>, <2 x double>* %677, align 8, !tbaa !2, !alias.scope !77
  %678 = fmul <2 x double> %broadcast.splat88.1, %wide.load86.1
  %679 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv147.i, i64 %offset.idx.1
  %680 = bitcast double* %679 to <2 x double>*
  %wide.load89.1 = load <2 x double>, <2 x double>* %680, align 8, !tbaa !2, !alias.scope !79, !noalias !81
  %681 = fsub <2 x double> %wide.load89.1, %678
  %682 = bitcast double* %679 to <2 x double>*
  store <2 x double> %681, <2 x double>* %682, align 8, !tbaa !2, !alias.scope !79, !noalias !81
  %index.next83.1 = add i64 %index82, 4
  %niter415.nsub.1 = add i64 %niter415, -2
  %niter415.ncmp.1 = icmp eq i64 %niter415.nsub.1, 0
  br i1 %niter415.ncmp.1, label %middle.block78.unr-lcssa, label %vector.body80, !llvm.loop !82

middle.block78.unr-lcssa:                         ; preds = %vector.body80, %vector.ph81
  %index82.unr = phi i64 [ 0, %vector.ph81 ], [ %index.next83.1, %vector.body80 ]
  br i1 %lcmp.mod413.not, label %middle.block78, label %vector.body80.epil

vector.body80.epil:                               ; preds = %middle.block78.unr-lcssa
  %offset.idx.epil = add i64 %indvars.iv125.i, %index82.unr
  %683 = load double, double* %arrayidx553.us.i.us, align 8, !tbaa !2, !alias.scope !74
  %broadcast.splatinsert87.epil = insertelement <2 x double> poison, double %683, i32 0
  %broadcast.splat88.epil = shufflevector <2 x double> %broadcast.splatinsert87.epil, <2 x double> poison, <2 x i32> zeroinitializer
  %684 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv165.i.us, i64 %offset.idx.epil
  %685 = bitcast double* %684 to <2 x double>*
  %wide.load86.epil = load <2 x double>, <2 x double>* %685, align 8, !tbaa !2, !alias.scope !77
  %686 = fmul <2 x double> %broadcast.splat88.epil, %wide.load86.epil
  %687 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv147.i, i64 %offset.idx.epil
  %688 = bitcast double* %687 to <2 x double>*
  %wide.load89.epil = load <2 x double>, <2 x double>* %688, align 8, !tbaa !2, !alias.scope !79, !noalias !81
  %689 = fsub <2 x double> %wide.load89.epil, %686
  %690 = bitcast double* %687 to <2 x double>*
  store <2 x double> %689, <2 x double>* %690, align 8, !tbaa !2, !alias.scope !79, !noalias !81
  br label %middle.block78

middle.block78:                                   ; preds = %middle.block78.unr-lcssa, %vector.body80.epil
  br i1 %cmp.n85, label %for.cond546.for.cond567.preheader_crit_edge.us.i.us, label %for.body549.us.i.us.preheader

for.body549.us.i.us.preheader:                    ; preds = %vector.memcheck, %for.cond546.preheader.us.i.us, %middle.block78
  %indvars.iv157.i.us.ph = phi i64 [ %indvars.iv125.i, %vector.memcheck ], [ %indvars.iv125.i, %for.cond546.preheader.us.i.us ], [ %ind.end, %middle.block78 ]
  %691 = xor i64 %indvars.iv157.i.us.ph, -1
  %692 = add i64 %indvar, %691
  %xtraiter416 = and i64 %692, 1
  %lcmp.mod417.not = icmp eq i64 %xtraiter416, 0
  br i1 %lcmp.mod417.not, label %for.body549.us.i.us.prol.loopexit, label %for.body549.us.i.us.prol

for.body549.us.i.us.prol:                         ; preds = %for.body549.us.i.us.preheader
  %693 = load double, double* %arrayidx553.us.i.us, align 8, !tbaa !2
  %arrayidx557.us.i.us.prol = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv165.i.us, i64 %indvars.iv157.i.us.ph
  %694 = load double, double* %arrayidx557.us.i.us.prol, align 8, !tbaa !2
  %mul558.us.i.us.prol = fmul double %693, %694
  %arrayidx562.us.i.us.prol = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv147.i, i64 %indvars.iv157.i.us.ph
  %695 = load double, double* %arrayidx562.us.i.us.prol, align 8, !tbaa !2
  %sub563.us.i.us.prol = fsub double %695, %mul558.us.i.us.prol
  store double %sub563.us.i.us.prol, double* %arrayidx562.us.i.us.prol, align 8, !tbaa !2
  %indvars.iv.next158.i.us.prol = add nuw nsw i64 %indvars.iv157.i.us.ph, 1
  br label %for.body549.us.i.us.prol.loopexit

for.body549.us.i.us.prol.loopexit:                ; preds = %for.body549.us.i.us.prol, %for.body549.us.i.us.preheader
  %indvars.iv157.i.us.unr.ph = phi i64 [ %indvars.iv.next158.i.us.prol, %for.body549.us.i.us.prol ], [ %indvars.iv157.i.us.ph, %for.body549.us.i.us.preheader ]
  %696 = icmp eq i64 %613, %indvars.iv157.i.us.ph
  br i1 %696, label %for.cond546.for.cond567.preheader_crit_edge.us.i.us, label %for.body549.us.i.us

for.body549.us.i.us:                              ; preds = %for.body549.us.i.us.prol.loopexit, %for.body549.us.i.us
  %indvars.iv157.i.us = phi i64 [ %indvars.iv.next158.i.us.1, %for.body549.us.i.us ], [ %indvars.iv157.i.us.unr.ph, %for.body549.us.i.us.prol.loopexit ]
  %697 = load double, double* %arrayidx553.us.i.us, align 8, !tbaa !2
  %arrayidx557.us.i.us = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv165.i.us, i64 %indvars.iv157.i.us
  %698 = load double, double* %arrayidx557.us.i.us, align 8, !tbaa !2
  %mul558.us.i.us = fmul double %697, %698
  %arrayidx562.us.i.us = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv147.i, i64 %indvars.iv157.i.us
  %699 = load double, double* %arrayidx562.us.i.us, align 8, !tbaa !2
  %sub563.us.i.us = fsub double %699, %mul558.us.i.us
  store double %sub563.us.i.us, double* %arrayidx562.us.i.us, align 8, !tbaa !2
  %indvars.iv.next158.i.us = add nuw nsw i64 %indvars.iv157.i.us, 1
  %700 = load double, double* %arrayidx553.us.i.us, align 8, !tbaa !2
  %arrayidx557.us.i.us.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv165.i.us, i64 %indvars.iv.next158.i.us
  %701 = load double, double* %arrayidx557.us.i.us.1, align 8, !tbaa !2
  %mul558.us.i.us.1 = fmul double %700, %701
  %arrayidx562.us.i.us.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv147.i, i64 %indvars.iv.next158.i.us
  %702 = load double, double* %arrayidx562.us.i.us.1, align 8, !tbaa !2
  %sub563.us.i.us.1 = fsub double %702, %mul558.us.i.us.1
  store double %sub563.us.i.us.1, double* %arrayidx562.us.i.us.1, align 8, !tbaa !2
  %indvars.iv.next158.i.us.1 = add nuw nsw i64 %indvars.iv157.i.us, 2
  %exitcond160.not.i.us.1 = icmp eq i64 %indvars.iv.next158.i.us.1, %indvars.iv147.i
  br i1 %exitcond160.not.i.us.1, label %for.cond546.for.cond567.preheader_crit_edge.us.i.us, label %for.body549.us.i.us, !llvm.loop !83

for.cond546.for.cond567.preheader_crit_edge.us.i.us: ; preds = %for.body549.us.i.us.prol.loopexit, %for.body549.us.i.us, %middle.block78
  %indvars.iv.next166.i.us = add nuw nsw i64 %indvars.iv165.i.us, 1
  %exitcond168.not.i.us = icmp eq i64 %indvars.iv.next166.i.us, %indvars.iv171.i
  %indvar.next71 = add i64 %indvar70, 1
  br i1 %exitcond168.not.i.us, label %for.inc601.i, label %for.cond546.preheader.us.i.us, !llvm.loop !84

for.cond546.preheader.us.i:                       ; preds = %for.cond546.preheader.us.i.preheader385, %for.inc598.us.i.loopexit
  %indvar93 = phi i64 [ %indvar.next94, %for.inc598.us.i.loopexit ], [ 0, %for.cond546.preheader.us.i.preheader385 ]
  %indvars.iv165.i = phi i64 [ %indvars.iv.next166.i, %for.inc598.us.i.loopexit ], [ %indvars.iv80.i, %for.cond546.preheader.us.i.preheader385 ]
  %703 = mul nuw nsw i64 %indvar93, 32000
  %704 = shl nuw nsw i64 %indvar93, 3
  %705 = add i64 %648, %704
  %scevgep95 = getelementptr i8, i8* %call.i, i64 %705
  %706 = mul nuw nsw i64 %indvar93, 32000
  %707 = add i64 %650, %706
  %scevgep96 = getelementptr i8, i8* %call.i, i64 %707
  %708 = add i64 %175, %706
  %scevgep97 = getelementptr i8, i8* %call.i, i64 %708
  %arrayidx553.us.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv147.i, i64 %indvars.iv165.i
  br i1 %min.iters.check142, label %for.body549.us.i.preheader, label %vector.memcheck124

vector.memcheck124:                               ; preds = %for.cond546.preheader.us.i
  %709 = add i64 %642, %703
  %scevgep129 = getelementptr i8, i8* %call.i, i64 %709
  %710 = add i64 %169, %703
  %scevgep128 = getelementptr i8, i8* %call.i, i64 %710
  %711 = shl nuw nsw i64 %indvar93, 3
  %712 = add i64 %640, %711
  %scevgep127 = getelementptr i8, i8* %call.i, i64 %712
  %bc130 = bitcast double* %arrayidx553.us.i to i8*
  %bound0131 = icmp ult i8* %scevgep125, %scevgep127
  %bound1132 = icmp ugt i8* %scevgep126, %bc130
  %found.conflict133 = and i1 %bound0131, %bound1132
  %bound0134 = icmp ult i8* %scevgep125, %scevgep129
  %bound1135 = icmp ult i8* %scevgep128, %scevgep126
  %found.conflict136 = and i1 %bound0134, %bound1135
  %conflict.rdx137 = or i1 %found.conflict133, %found.conflict136
  br i1 %conflict.rdx137, label %for.body549.us.i.preheader, label %vector.ph143

vector.ph143:                                     ; preds = %vector.memcheck124
  br i1 %659, label %middle.block139.unr-lcssa, label %vector.ph143.new

vector.ph143.new:                                 ; preds = %vector.ph143
  %713 = load double, double* %arrayidx553.us.i, align 8, !tbaa !2, !alias.scope !85
  %broadcast.splatinsert153 = insertelement <2 x double> poison, double %713, i32 0
  %broadcast.splat154 = shufflevector <2 x double> %broadcast.splatinsert153, <2 x double> poison, <2 x i32> zeroinitializer
  %714 = load double, double* %arrayidx553.us.i, align 8, !tbaa !2, !alias.scope !85
  %broadcast.splatinsert153.1 = insertelement <2 x double> poison, double %714, i32 0
  %broadcast.splat154.1 = shufflevector <2 x double> %broadcast.splatinsert153.1, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body141

vector.body141:                                   ; preds = %vector.body141, %vector.ph143.new
  %index146 = phi i64 [ 0, %vector.ph143.new ], [ %index.next147.1, %vector.body141 ]
  %niter403 = phi i64 [ %unroll_iter402, %vector.ph143.new ], [ %niter403.nsub.1, %vector.body141 ]
  %offset.idx151 = add i64 %indvars.iv125.i, %index146
  %715 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv165.i, i64 %offset.idx151
  %716 = bitcast double* %715 to <2 x double>*
  %wide.load152 = load <2 x double>, <2 x double>* %716, align 8, !tbaa !2, !alias.scope !88
  %717 = fmul <2 x double> %broadcast.splat154, %wide.load152
  %718 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv147.i, i64 %offset.idx151
  %719 = bitcast double* %718 to <2 x double>*
  %wide.load155 = load <2 x double>, <2 x double>* %719, align 8, !tbaa !2, !alias.scope !90, !noalias !92
  %720 = fsub <2 x double> %wide.load155, %717
  %721 = bitcast double* %718 to <2 x double>*
  store <2 x double> %720, <2 x double>* %721, align 8, !tbaa !2, !alias.scope !90, !noalias !92
  %index.next147 = or i64 %index146, 2
  %offset.idx151.1 = add i64 %indvars.iv125.i, %index.next147
  %722 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv165.i, i64 %offset.idx151.1
  %723 = bitcast double* %722 to <2 x double>*
  %wide.load152.1 = load <2 x double>, <2 x double>* %723, align 8, !tbaa !2, !alias.scope !88
  %724 = fmul <2 x double> %broadcast.splat154.1, %wide.load152.1
  %725 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv147.i, i64 %offset.idx151.1
  %726 = bitcast double* %725 to <2 x double>*
  %wide.load155.1 = load <2 x double>, <2 x double>* %726, align 8, !tbaa !2, !alias.scope !90, !noalias !92
  %727 = fsub <2 x double> %wide.load155.1, %724
  %728 = bitcast double* %725 to <2 x double>*
  store <2 x double> %727, <2 x double>* %728, align 8, !tbaa !2, !alias.scope !90, !noalias !92
  %index.next147.1 = add i64 %index146, 4
  %niter403.nsub.1 = add i64 %niter403, -2
  %niter403.ncmp.1 = icmp eq i64 %niter403.nsub.1, 0
  br i1 %niter403.ncmp.1, label %middle.block139.unr-lcssa, label %vector.body141, !llvm.loop !93

middle.block139.unr-lcssa:                        ; preds = %vector.body141, %vector.ph143
  %index146.unr = phi i64 [ 0, %vector.ph143 ], [ %index.next147.1, %vector.body141 ]
  br i1 %lcmp.mod401.not, label %middle.block139, label %vector.body141.epil

vector.body141.epil:                              ; preds = %middle.block139.unr-lcssa
  %offset.idx151.epil = add i64 %indvars.iv125.i, %index146.unr
  %729 = load double, double* %arrayidx553.us.i, align 8, !tbaa !2, !alias.scope !85
  %broadcast.splatinsert153.epil = insertelement <2 x double> poison, double %729, i32 0
  %broadcast.splat154.epil = shufflevector <2 x double> %broadcast.splatinsert153.epil, <2 x double> poison, <2 x i32> zeroinitializer
  %730 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv165.i, i64 %offset.idx151.epil
  %731 = bitcast double* %730 to <2 x double>*
  %wide.load152.epil = load <2 x double>, <2 x double>* %731, align 8, !tbaa !2, !alias.scope !88
  %732 = fmul <2 x double> %broadcast.splat154.epil, %wide.load152.epil
  %733 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv147.i, i64 %offset.idx151.epil
  %734 = bitcast double* %733 to <2 x double>*
  %wide.load155.epil = load <2 x double>, <2 x double>* %734, align 8, !tbaa !2, !alias.scope !90, !noalias !92
  %735 = fsub <2 x double> %wide.load155.epil, %732
  %736 = bitcast double* %733 to <2 x double>*
  store <2 x double> %735, <2 x double>* %736, align 8, !tbaa !2, !alias.scope !90, !noalias !92
  br label %middle.block139

middle.block139:                                  ; preds = %middle.block139.unr-lcssa, %vector.body141.epil
  br i1 %cmp.n150, label %for.body580.us.i.preheader, label %for.body549.us.i.preheader

for.body549.us.i.preheader:                       ; preds = %vector.memcheck124, %for.cond546.preheader.us.i, %middle.block139
  %indvars.iv157.i.ph = phi i64 [ %indvars.iv125.i, %vector.memcheck124 ], [ %indvars.iv125.i, %for.cond546.preheader.us.i ], [ %ind.end149, %middle.block139 ]
  %737 = xor i64 %indvars.iv157.i.ph, -1
  %738 = add i64 %indvar, %737
  %xtraiter404 = and i64 %738, 1
  %lcmp.mod405.not = icmp eq i64 %xtraiter404, 0
  br i1 %lcmp.mod405.not, label %for.body549.us.i.prol.loopexit, label %for.body549.us.i.prol

for.body549.us.i.prol:                            ; preds = %for.body549.us.i.preheader
  %739 = load double, double* %arrayidx553.us.i, align 8, !tbaa !2
  %arrayidx557.us.i.prol = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv165.i, i64 %indvars.iv157.i.ph
  %740 = load double, double* %arrayidx557.us.i.prol, align 8, !tbaa !2
  %mul558.us.i.prol = fmul double %739, %740
  %arrayidx562.us.i.prol = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv147.i, i64 %indvars.iv157.i.ph
  %741 = load double, double* %arrayidx562.us.i.prol, align 8, !tbaa !2
  %sub563.us.i.prol = fsub double %741, %mul558.us.i.prol
  store double %sub563.us.i.prol, double* %arrayidx562.us.i.prol, align 8, !tbaa !2
  %indvars.iv.next158.i.prol = add nuw nsw i64 %indvars.iv157.i.ph, 1
  br label %for.body549.us.i.prol.loopexit

for.body549.us.i.prol.loopexit:                   ; preds = %for.body549.us.i.prol, %for.body549.us.i.preheader
  %indvars.iv157.i.unr.ph = phi i64 [ %indvars.iv.next158.i.prol, %for.body549.us.i.prol ], [ %indvars.iv157.i.ph, %for.body549.us.i.preheader ]
  %742 = icmp eq i64 %620, %indvars.iv157.i.ph
  br i1 %742, label %for.body580.us.i.preheader, label %for.body549.us.i

for.body580.us.i:                                 ; preds = %for.body580.us.i.prol.loopexit, %for.body580.us.i
  %indvars.iv161.i = phi i64 [ %indvars.iv.next162.i.1, %for.body580.us.i ], [ %indvars.iv161.i.unr.ph, %for.body580.us.i.prol.loopexit ]
  %743 = load double, double* %arrayidx553.us.i, align 8, !tbaa !2
  %arrayidx588.us.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv165.i, i64 %indvars.iv161.i
  %744 = load double, double* %arrayidx588.us.i, align 8, !tbaa !2
  %mul589.us.i = fmul double %743, %744
  %arrayidx593.us.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv147.i, i64 %indvars.iv161.i
  %745 = load double, double* %arrayidx593.us.i, align 8, !tbaa !2
  %sub594.us.i = fsub double %745, %mul589.us.i
  store double %sub594.us.i, double* %arrayidx593.us.i, align 8, !tbaa !2
  %indvars.iv.next162.i = add nuw nsw i64 %indvars.iv161.i, 1
  %746 = load double, double* %arrayidx553.us.i, align 8, !tbaa !2
  %arrayidx588.us.i.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv165.i, i64 %indvars.iv.next162.i
  %747 = load double, double* %arrayidx588.us.i.1, align 8, !tbaa !2
  %mul589.us.i.1 = fmul double %746, %747
  %arrayidx593.us.i.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv147.i, i64 %indvars.iv.next162.i
  %748 = load double, double* %arrayidx593.us.i.1, align 8, !tbaa !2
  %sub594.us.i.1 = fsub double %748, %mul589.us.i.1
  store double %sub594.us.i.1, double* %arrayidx593.us.i.1, align 8, !tbaa !2
  %indvars.iv.next162.i.1 = add nuw nsw i64 %indvars.iv161.i, 2
  %exitcond164.not.i.1 = icmp eq i64 %indvars.iv.next162.i.1, %indvars.iv197.i
  br i1 %exitcond164.not.i.1, label %for.inc598.us.i.loopexit, label %for.body580.us.i, !llvm.loop !94

for.inc598.us.i.loopexit:                         ; preds = %for.body580.us.i.prol.loopexit, %for.body580.us.i, %middle.block107
  %indvars.iv.next166.i = add nuw nsw i64 %indvars.iv165.i, 1
  %exitcond168.not.i = icmp eq i64 %indvars.iv.next166.i, %indvars.iv171.i
  %indvar.next94 = add i64 %indvar93, 1
  br i1 %exitcond168.not.i, label %for.inc601.i, label %for.cond546.preheader.us.i, !llvm.loop !84

for.body549.us.i:                                 ; preds = %for.body549.us.i.prol.loopexit, %for.body549.us.i
  %indvars.iv157.i = phi i64 [ %indvars.iv.next158.i.1, %for.body549.us.i ], [ %indvars.iv157.i.unr.ph, %for.body549.us.i.prol.loopexit ]
  %749 = load double, double* %arrayidx553.us.i, align 8, !tbaa !2
  %arrayidx557.us.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv165.i, i64 %indvars.iv157.i
  %750 = load double, double* %arrayidx557.us.i, align 8, !tbaa !2
  %mul558.us.i = fmul double %749, %750
  %arrayidx562.us.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv147.i, i64 %indvars.iv157.i
  %751 = load double, double* %arrayidx562.us.i, align 8, !tbaa !2
  %sub563.us.i = fsub double %751, %mul558.us.i
  store double %sub563.us.i, double* %arrayidx562.us.i, align 8, !tbaa !2
  %indvars.iv.next158.i = add nuw nsw i64 %indvars.iv157.i, 1
  %752 = load double, double* %arrayidx553.us.i, align 8, !tbaa !2
  %arrayidx557.us.i.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv165.i, i64 %indvars.iv.next158.i
  %753 = load double, double* %arrayidx557.us.i.1, align 8, !tbaa !2
  %mul558.us.i.1 = fmul double %752, %753
  %arrayidx562.us.i.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv147.i, i64 %indvars.iv.next158.i
  %754 = load double, double* %arrayidx562.us.i.1, align 8, !tbaa !2
  %sub563.us.i.1 = fsub double %754, %mul558.us.i.1
  store double %sub563.us.i.1, double* %arrayidx562.us.i.1, align 8, !tbaa !2
  %indvars.iv.next158.i.1 = add nuw nsw i64 %indvars.iv157.i, 2
  %exitcond160.not.i.1 = icmp eq i64 %indvars.iv.next158.i.1, %indvars.iv147.i
  br i1 %exitcond160.not.i.1, label %for.body580.us.i.preheader, label %for.body549.us.i, !llvm.loop !95

for.body580.us.i.preheader:                       ; preds = %for.body549.us.i.prol.loopexit, %for.body549.us.i, %middle.block139
  br i1 %min.iters.check110, label %for.body580.us.i.preheader379, label %vector.memcheck90

vector.memcheck90:                                ; preds = %for.body580.us.i.preheader
  %bc98 = bitcast double* %arrayidx553.us.i to i8*
  %bound099 = icmp ult i8* %scevgep91, %scevgep95
  %bound1100 = icmp ugt i8* %scevgep92, %bc98
  %found.conflict101 = and i1 %bound099, %bound1100
  %bound0102 = icmp ult i8* %scevgep91, %scevgep97
  %bound1103 = icmp ult i8* %scevgep96, %scevgep92
  %found.conflict104 = and i1 %bound0102, %bound1103
  %conflict.rdx105 = or i1 %found.conflict101, %found.conflict104
  br i1 %conflict.rdx105, label %for.body580.us.i.preheader379, label %vector.ph111

vector.ph111:                                     ; preds = %vector.memcheck90
  br i1 %660, label %middle.block107.unr-lcssa, label %vector.ph111.new

vector.ph111.new:                                 ; preds = %vector.ph111
  %755 = load double, double* %arrayidx553.us.i, align 8, !tbaa !2, !alias.scope !96
  %broadcast.splatinsert121 = insertelement <2 x double> poison, double %755, i32 0
  %broadcast.splat122 = shufflevector <2 x double> %broadcast.splatinsert121, <2 x double> poison, <2 x i32> zeroinitializer
  %756 = load double, double* %arrayidx553.us.i, align 8, !tbaa !2, !alias.scope !96
  %broadcast.splatinsert121.1 = insertelement <2 x double> poison, double %756, i32 0
  %broadcast.splat122.1 = shufflevector <2 x double> %broadcast.splatinsert121.1, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body109

vector.body109:                                   ; preds = %vector.body109, %vector.ph111.new
  %index114 = phi i64 [ 0, %vector.ph111.new ], [ %index.next115.1, %vector.body109 ]
  %niter409 = phi i64 [ %unroll_iter408, %vector.ph111.new ], [ %niter409.nsub.1, %vector.body109 ]
  %offset.idx119 = add i64 %indvars.iv147.i, %index114
  %757 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv165.i, i64 %offset.idx119
  %758 = bitcast double* %757 to <2 x double>*
  %wide.load120 = load <2 x double>, <2 x double>* %758, align 8, !tbaa !2, !alias.scope !99
  %759 = fmul <2 x double> %broadcast.splat122, %wide.load120
  %760 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv147.i, i64 %offset.idx119
  %761 = bitcast double* %760 to <2 x double>*
  %wide.load123 = load <2 x double>, <2 x double>* %761, align 8, !tbaa !2, !alias.scope !101, !noalias !103
  %762 = fsub <2 x double> %wide.load123, %759
  %763 = bitcast double* %760 to <2 x double>*
  store <2 x double> %762, <2 x double>* %763, align 8, !tbaa !2, !alias.scope !101, !noalias !103
  %index.next115 = or i64 %index114, 2
  %offset.idx119.1 = add i64 %indvars.iv147.i, %index.next115
  %764 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv165.i, i64 %offset.idx119.1
  %765 = bitcast double* %764 to <2 x double>*
  %wide.load120.1 = load <2 x double>, <2 x double>* %765, align 8, !tbaa !2, !alias.scope !99
  %766 = fmul <2 x double> %broadcast.splat122.1, %wide.load120.1
  %767 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv147.i, i64 %offset.idx119.1
  %768 = bitcast double* %767 to <2 x double>*
  %wide.load123.1 = load <2 x double>, <2 x double>* %768, align 8, !tbaa !2, !alias.scope !101, !noalias !103
  %769 = fsub <2 x double> %wide.load123.1, %766
  %770 = bitcast double* %767 to <2 x double>*
  store <2 x double> %769, <2 x double>* %770, align 8, !tbaa !2, !alias.scope !101, !noalias !103
  %index.next115.1 = add i64 %index114, 4
  %niter409.nsub.1 = add i64 %niter409, -2
  %niter409.ncmp.1 = icmp eq i64 %niter409.nsub.1, 0
  br i1 %niter409.ncmp.1, label %middle.block107.unr-lcssa, label %vector.body109, !llvm.loop !104

middle.block107.unr-lcssa:                        ; preds = %vector.body109, %vector.ph111
  %index114.unr = phi i64 [ 0, %vector.ph111 ], [ %index.next115.1, %vector.body109 ]
  br i1 %lcmp.mod407.not, label %middle.block107, label %vector.body109.epil

vector.body109.epil:                              ; preds = %middle.block107.unr-lcssa
  %offset.idx119.epil = add i64 %indvars.iv147.i, %index114.unr
  %771 = load double, double* %arrayidx553.us.i, align 8, !tbaa !2, !alias.scope !96
  %broadcast.splatinsert121.epil = insertelement <2 x double> poison, double %771, i32 0
  %broadcast.splat122.epil = shufflevector <2 x double> %broadcast.splatinsert121.epil, <2 x double> poison, <2 x i32> zeroinitializer
  %772 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv165.i, i64 %offset.idx119.epil
  %773 = bitcast double* %772 to <2 x double>*
  %wide.load120.epil = load <2 x double>, <2 x double>* %773, align 8, !tbaa !2, !alias.scope !99
  %774 = fmul <2 x double> %broadcast.splat122.epil, %wide.load120.epil
  %775 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv147.i, i64 %offset.idx119.epil
  %776 = bitcast double* %775 to <2 x double>*
  %wide.load123.epil = load <2 x double>, <2 x double>* %776, align 8, !tbaa !2, !alias.scope !101, !noalias !103
  %777 = fsub <2 x double> %wide.load123.epil, %774
  %778 = bitcast double* %775 to <2 x double>*
  store <2 x double> %777, <2 x double>* %778, align 8, !tbaa !2, !alias.scope !101, !noalias !103
  br label %middle.block107

middle.block107:                                  ; preds = %middle.block107.unr-lcssa, %vector.body109.epil
  br i1 %cmp.n118, label %for.inc598.us.i.loopexit, label %for.body580.us.i.preheader379

for.body580.us.i.preheader379:                    ; preds = %vector.memcheck90, %for.body580.us.i.preheader, %middle.block107
  %indvars.iv161.i.ph = phi i64 [ %indvars.iv147.i, %vector.memcheck90 ], [ %indvars.iv147.i, %for.body580.us.i.preheader ], [ %ind.end117, %middle.block107 ]
  %xtraiter410 = and i64 %indvars.iv161.i.ph, 1
  %lcmp.mod411.not = icmp eq i64 %xtraiter410, 0
  br i1 %lcmp.mod411.not, label %for.body580.us.i.prol.loopexit, label %for.body580.us.i.prol

for.body580.us.i.prol:                            ; preds = %for.body580.us.i.preheader379
  %779 = load double, double* %arrayidx553.us.i, align 8, !tbaa !2
  %arrayidx588.us.i.prol = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv165.i, i64 %indvars.iv161.i.ph
  %780 = load double, double* %arrayidx588.us.i.prol, align 8, !tbaa !2
  %mul589.us.i.prol = fmul double %779, %780
  %arrayidx593.us.i.prol = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv147.i, i64 %indvars.iv161.i.ph
  %781 = load double, double* %arrayidx593.us.i.prol, align 8, !tbaa !2
  %sub594.us.i.prol = fsub double %781, %mul589.us.i.prol
  store double %sub594.us.i.prol, double* %arrayidx593.us.i.prol, align 8, !tbaa !2
  %indvars.iv.next162.i.prol = add nuw nsw i64 %indvars.iv161.i.ph, 1
  br label %for.body580.us.i.prol.loopexit

for.body580.us.i.prol.loopexit:                   ; preds = %for.body580.us.i.prol, %for.body580.us.i.preheader379
  %indvars.iv161.i.unr.ph = phi i64 [ %indvars.iv.next162.i.prol, %for.body580.us.i.prol ], [ %indvars.iv161.i.ph, %for.body580.us.i.preheader379 ]
  %782 = icmp eq i64 %44, %indvars.iv161.i.ph
  br i1 %782, label %for.inc598.us.i.loopexit, label %for.body580.us.i

for.cond540.preheader.split.i:                    ; preds = %for.cond540.preheader.i
  br i1 %cmp579.not35.i, label %for.inc601.i, label %for.cond546.preheader.i.preheader

for.cond546.preheader.i.preheader:                ; preds = %for.cond540.preheader.split.i
  %min.iters.check176 = icmp ult i64 %627, 2
  %n.vec179 = and i64 %627, -2
  %ind.end183 = add i64 %indvars.iv147.i, %n.vec179
  %xtraiter394 = and i64 %626, 1
  %783 = icmp eq i64 %625, 0
  %unroll_iter396 = and i64 %626, -2
  %lcmp.mod395.not = icmp eq i64 %xtraiter394, 0
  %cmp.n184 = icmp eq i64 %627, %n.vec179
  br label %for.cond546.preheader.i

for.cond546.preheader.i:                          ; preds = %for.cond546.preheader.i.preheader, %for.cond567.for.inc598_crit_edge.i
  %indvar159 = phi i64 [ %indvar.next160, %for.cond567.for.inc598_crit_edge.i ], [ 0, %for.cond546.preheader.i.preheader ]
  %indvars.iv153.i = phi i64 [ %indvars.iv.next154.i, %for.cond567.for.inc598_crit_edge.i ], [ %indvars.iv80.i, %for.cond546.preheader.i.preheader ]
  %784 = mul nuw nsw i64 %indvar159, 32000
  %arrayidx584.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv147.i, i64 %indvars.iv153.i
  br i1 %min.iters.check176, label %for.body580.i.preheader, label %vector.memcheck156

vector.memcheck156:                               ; preds = %for.cond546.preheader.i
  %785 = add i64 %165, %784
  %scevgep163 = getelementptr i8, i8* %call.i, i64 %785
  %786 = add i64 %634, %784
  %scevgep162 = getelementptr i8, i8* %call.i, i64 %786
  %787 = shl nuw nsw i64 %indvar159, 3
  %788 = add i64 %632, %787
  %scevgep161 = getelementptr i8, i8* %call.i, i64 %788
  %bc164 = bitcast double* %arrayidx584.i to i8*
  %bound0165 = icmp ult i8* %scevgep157, %scevgep161
  %bound1166 = icmp ugt i8* %scevgep158, %bc164
  %found.conflict167 = and i1 %bound0165, %bound1166
  %bound0168 = icmp ult i8* %scevgep157, %scevgep163
  %bound1169 = icmp ult i8* %scevgep162, %scevgep158
  %found.conflict170 = and i1 %bound0168, %bound1169
  %conflict.rdx171 = or i1 %found.conflict167, %found.conflict170
  br i1 %conflict.rdx171, label %for.body580.i.preheader, label %vector.ph177

vector.ph177:                                     ; preds = %vector.memcheck156
  br i1 %783, label %middle.block173.unr-lcssa, label %vector.ph177.new

vector.ph177.new:                                 ; preds = %vector.ph177
  %789 = load double, double* %arrayidx584.i, align 8, !tbaa !2, !alias.scope !105
  %broadcast.splatinsert187 = insertelement <2 x double> poison, double %789, i32 0
  %broadcast.splat188 = shufflevector <2 x double> %broadcast.splatinsert187, <2 x double> poison, <2 x i32> zeroinitializer
  %790 = load double, double* %arrayidx584.i, align 8, !tbaa !2, !alias.scope !105
  %broadcast.splatinsert187.1 = insertelement <2 x double> poison, double %790, i32 0
  %broadcast.splat188.1 = shufflevector <2 x double> %broadcast.splatinsert187.1, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body175

vector.body175:                                   ; preds = %vector.body175, %vector.ph177.new
  %index180 = phi i64 [ 0, %vector.ph177.new ], [ %index.next181.1, %vector.body175 ]
  %niter397 = phi i64 [ %unroll_iter396, %vector.ph177.new ], [ %niter397.nsub.1, %vector.body175 ]
  %offset.idx185 = add i64 %indvars.iv147.i, %index180
  %791 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv153.i, i64 %offset.idx185
  %792 = bitcast double* %791 to <2 x double>*
  %wide.load186 = load <2 x double>, <2 x double>* %792, align 8, !tbaa !2, !alias.scope !108
  %793 = fmul <2 x double> %broadcast.splat188, %wide.load186
  %794 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv147.i, i64 %offset.idx185
  %795 = bitcast double* %794 to <2 x double>*
  %wide.load189 = load <2 x double>, <2 x double>* %795, align 8, !tbaa !2, !alias.scope !110, !noalias !112
  %796 = fsub <2 x double> %wide.load189, %793
  %797 = bitcast double* %794 to <2 x double>*
  store <2 x double> %796, <2 x double>* %797, align 8, !tbaa !2, !alias.scope !110, !noalias !112
  %index.next181 = or i64 %index180, 2
  %offset.idx185.1 = add i64 %indvars.iv147.i, %index.next181
  %798 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv153.i, i64 %offset.idx185.1
  %799 = bitcast double* %798 to <2 x double>*
  %wide.load186.1 = load <2 x double>, <2 x double>* %799, align 8, !tbaa !2, !alias.scope !108
  %800 = fmul <2 x double> %broadcast.splat188.1, %wide.load186.1
  %801 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv147.i, i64 %offset.idx185.1
  %802 = bitcast double* %801 to <2 x double>*
  %wide.load189.1 = load <2 x double>, <2 x double>* %802, align 8, !tbaa !2, !alias.scope !110, !noalias !112
  %803 = fsub <2 x double> %wide.load189.1, %800
  %804 = bitcast double* %801 to <2 x double>*
  store <2 x double> %803, <2 x double>* %804, align 8, !tbaa !2, !alias.scope !110, !noalias !112
  %index.next181.1 = add i64 %index180, 4
  %niter397.nsub.1 = add i64 %niter397, -2
  %niter397.ncmp.1 = icmp eq i64 %niter397.nsub.1, 0
  br i1 %niter397.ncmp.1, label %middle.block173.unr-lcssa, label %vector.body175, !llvm.loop !113

middle.block173.unr-lcssa:                        ; preds = %vector.body175, %vector.ph177
  %index180.unr = phi i64 [ 0, %vector.ph177 ], [ %index.next181.1, %vector.body175 ]
  br i1 %lcmp.mod395.not, label %middle.block173, label %vector.body175.epil

vector.body175.epil:                              ; preds = %middle.block173.unr-lcssa
  %offset.idx185.epil = add i64 %indvars.iv147.i, %index180.unr
  %805 = load double, double* %arrayidx584.i, align 8, !tbaa !2, !alias.scope !105
  %broadcast.splatinsert187.epil = insertelement <2 x double> poison, double %805, i32 0
  %broadcast.splat188.epil = shufflevector <2 x double> %broadcast.splatinsert187.epil, <2 x double> poison, <2 x i32> zeroinitializer
  %806 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv153.i, i64 %offset.idx185.epil
  %807 = bitcast double* %806 to <2 x double>*
  %wide.load186.epil = load <2 x double>, <2 x double>* %807, align 8, !tbaa !2, !alias.scope !108
  %808 = fmul <2 x double> %broadcast.splat188.epil, %wide.load186.epil
  %809 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv147.i, i64 %offset.idx185.epil
  %810 = bitcast double* %809 to <2 x double>*
  %wide.load189.epil = load <2 x double>, <2 x double>* %810, align 8, !tbaa !2, !alias.scope !110, !noalias !112
  %811 = fsub <2 x double> %wide.load189.epil, %808
  %812 = bitcast double* %809 to <2 x double>*
  store <2 x double> %811, <2 x double>* %812, align 8, !tbaa !2, !alias.scope !110, !noalias !112
  br label %middle.block173

middle.block173:                                  ; preds = %middle.block173.unr-lcssa, %vector.body175.epil
  br i1 %cmp.n184, label %for.cond567.for.inc598_crit_edge.i, label %for.body580.i.preheader

for.body580.i.preheader:                          ; preds = %vector.memcheck156, %for.cond546.preheader.i, %middle.block173
  %indvars.iv149.i.ph = phi i64 [ %indvars.iv147.i, %vector.memcheck156 ], [ %indvars.iv147.i, %for.cond546.preheader.i ], [ %ind.end183, %middle.block173 ]
  %xtraiter398 = and i64 %indvars.iv149.i.ph, 1
  %lcmp.mod399.not = icmp eq i64 %xtraiter398, 0
  br i1 %lcmp.mod399.not, label %for.body580.i.prol.loopexit, label %for.body580.i.prol

for.body580.i.prol:                               ; preds = %for.body580.i.preheader
  %813 = load double, double* %arrayidx584.i, align 8, !tbaa !2
  %arrayidx588.i.prol = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv153.i, i64 %indvars.iv149.i.ph
  %814 = load double, double* %arrayidx588.i.prol, align 8, !tbaa !2
  %mul589.i.prol = fmul double %813, %814
  %arrayidx593.i.prol = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv147.i, i64 %indvars.iv149.i.ph
  %815 = load double, double* %arrayidx593.i.prol, align 8, !tbaa !2
  %sub594.i.prol = fsub double %815, %mul589.i.prol
  store double %sub594.i.prol, double* %arrayidx593.i.prol, align 8, !tbaa !2
  %indvars.iv.next150.i.prol = add nuw nsw i64 %indvars.iv149.i.ph, 1
  br label %for.body580.i.prol.loopexit

for.body580.i.prol.loopexit:                      ; preds = %for.body580.i.prol, %for.body580.i.preheader
  %indvars.iv149.i.unr.ph = phi i64 [ %indvars.iv.next150.i.prol, %for.body580.i.prol ], [ %indvars.iv149.i.ph, %for.body580.i.preheader ]
  %816 = icmp eq i64 %47, %indvars.iv149.i.ph
  br i1 %816, label %for.cond567.for.inc598_crit_edge.i, label %for.body580.i

for.body580.i:                                    ; preds = %for.body580.i.prol.loopexit, %for.body580.i
  %indvars.iv149.i = phi i64 [ %indvars.iv.next150.i.1, %for.body580.i ], [ %indvars.iv149.i.unr.ph, %for.body580.i.prol.loopexit ]
  %817 = load double, double* %arrayidx584.i, align 8, !tbaa !2
  %arrayidx588.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv153.i, i64 %indvars.iv149.i
  %818 = load double, double* %arrayidx588.i, align 8, !tbaa !2
  %mul589.i = fmul double %817, %818
  %arrayidx593.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv147.i, i64 %indvars.iv149.i
  %819 = load double, double* %arrayidx593.i, align 8, !tbaa !2
  %sub594.i = fsub double %819, %mul589.i
  store double %sub594.i, double* %arrayidx593.i, align 8, !tbaa !2
  %indvars.iv.next150.i = add nuw nsw i64 %indvars.iv149.i, 1
  %820 = load double, double* %arrayidx584.i, align 8, !tbaa !2
  %arrayidx588.i.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv153.i, i64 %indvars.iv.next150.i
  %821 = load double, double* %arrayidx588.i.1, align 8, !tbaa !2
  %mul589.i.1 = fmul double %820, %821
  %arrayidx593.i.1 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv147.i, i64 %indvars.iv.next150.i
  %822 = load double, double* %arrayidx593.i.1, align 8, !tbaa !2
  %sub594.i.1 = fsub double %822, %mul589.i.1
  store double %sub594.i.1, double* %arrayidx593.i.1, align 8, !tbaa !2
  %indvars.iv.next150.i.1 = add nuw nsw i64 %indvars.iv149.i, 2
  %exitcond152.not.i.1 = icmp eq i64 %indvars.iv.next150.i.1, %indvars.iv197.i
  br i1 %exitcond152.not.i.1, label %for.cond567.for.inc598_crit_edge.i, label %for.body580.i, !llvm.loop !114

for.cond567.for.inc598_crit_edge.i:               ; preds = %for.body580.i.prol.loopexit, %for.body580.i, %middle.block173
  %indvars.iv.next154.i = add nuw nsw i64 %indvars.iv153.i, 1
  %exitcond156.not.i = icmp eq i64 %indvars.iv.next154.i, %indvars.iv171.i
  %indvar.next160 = add i64 %indvar159, 1
  br i1 %exitcond156.not.i, label %for.inc601.i, label %for.cond546.preheader.i, !llvm.loop !84

for.inc601.i:                                     ; preds = %for.cond567.for.inc598_crit_edge.i, %for.inc598.us.i.loopexit, %for.cond546.for.cond567.preheader_crit_edge.us.i.us, %for.cond540.preheader.split.i
  %indvars.iv.next148.i = add nuw nsw i64 %indvars.iv147.i, 1
  %exitcond170.not.i = icmp eq i64 %indvars.iv.next148.i, %indvars.iv197.i
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond170.not.i, label %for.inc605.i, label %for.cond540.preheader.i, !llvm.loop !115

for.inc605.i:                                     ; preds = %for.inc601.i, %if.end517.i
  %indvars.iv.next81.i = add nuw nsw i64 %indvars.iv80.i, 32
  %indvars.iv.next172.i = add nuw nsw i64 %indvars.iv171.i, 32
  %indvars.iv.next106.i = add nuw nsw i32 %indvars.iv105.i, 32
  %exitcond179.not.i = icmp eq i64 %indvars.iv.next174.i, %wide.trip.count178.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 32
  br i1 %exitcond179.not.i, label %for.inc608.i, label %for.body99.i, !llvm.loop !116

for.inc608.i:                                     ; preds = %for.inc605.i
  %indvars.iv.next185.i = add nuw nsw i64 %indvars.iv184.i, 1
  %indvars.iv.next.i13 = add nuw nsw i64 %indvars.iv.i11, 32
  %indvars.iv.next183.i = add nuw nsw i64 %indvars.iv182.i, 32
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv64.i, 32
  %indvars.iv.next181.i = add nuw nsw i64 %indvars.iv180.i, 32
  %exitcond194.not.i = icmp eq i64 %indvars.iv.next185.i, 125
  br i1 %exitcond194.not.i, label %for.inc611.i, label %for.cond26.preheader.i, !llvm.loop !117

for.inc611.i:                                     ; preds = %for.inc608.i
  %indvars.iv.next200.i = add nuw nsw i64 %indvars.iv199.i, 1
  %indvars.iv.next73.i = add nuw nsw i32 %indvars.iv72.i, 32
  %indvars.iv.next92.i = add nuw nsw i64 %indvars.iv91.i, 32
  %indvars.iv.next198.i = add nuw nsw i64 %indvars.iv197.i, 32
  %indvars.iv.next118.i = add nuw nsw i64 %indvars.iv117.i, 32
  %indvars.iv.next126.i = add nuw nsw i64 %indvars.iv125.i, 32
  %indvars.iv.next196.i = add nuw nsw i64 %indvars.iv195.i, 32
  %exitcond212.not.i = icmp eq i64 %indvars.iv.next200.i, 125
  br i1 %exitcond212.not.i, label %kernel_lu.exit, label %for.cond9.preheader.i, !llvm.loop !118

kernel_lu.exit:                                   ; preds = %for.inc611.i
  tail call void (...) @polybench_timer_stop() #9
  tail call void (...) @polybench_timer_print() #9
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_lu.exit
  %823 = load i8*, i8** %argv, align 8, !tbaa !119
  %strcmpload = load i8, i8* %823, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %824 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !119
  %825 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %824) #10
  %826 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !119
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %826, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #10
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.inc10.i, %if.then
  %indvars.iv4.i = phi i64 [ 0, %if.then ], [ %indvars.iv.next5.i, %for.inc10.i ]
  %827 = mul nuw nsw i64 %indvars.iv4.i, 4000
  br label %for.body4.i

for.body4.i:                                      ; preds = %if.end.i17, %for.cond2.preheader.i
  %indvars.iv.i14 = phi i64 [ 0, %for.cond2.preheader.i ], [ %indvars.iv.next.i15, %if.end.i17 ]
  %828 = add nuw nsw i64 %indvars.iv.i14, %827
  %829 = trunc i64 %828 to i32
  %rem.i = urem i32 %829, 20
  %cmp5.i = icmp eq i32 %rem.i, 0
  br i1 %cmp5.i, label %if.then.i, label %if.end.i17

if.then.i:                                        ; preds = %for.body4.i
  %830 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !119
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %830) #9
  br label %if.end.i17

if.end.i17:                                       ; preds = %if.then.i, %for.body4.i
  %831 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !119
  %arrayidx8.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv4.i, i64 %indvars.iv.i14
  %832 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %831, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %832) #10
  %indvars.iv.next.i15 = add nuw nsw i64 %indvars.iv.i14, 1
  %exitcond.not.i16 = icmp eq i64 %indvars.iv.next.i15, 4000
  br i1 %exitcond.not.i16, label %for.inc10.i, label %for.body4.i, !llvm.loop !121

for.inc10.i:                                      ; preds = %if.end.i17
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 4000
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !122

print_array.exit:                                 ; preds = %for.inc10.i
  %833 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !119
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %833, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #10
  %834 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !119
  %835 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %834) #10
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
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #8

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
!48 = distinct !{!48, !7}
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
!61 = !{!62}
!62 = distinct !{!62, !63}
!63 = distinct !{!63, !"LVerDomain"}
!64 = !{!65}
!65 = distinct !{!65, !63}
!66 = !{!67}
!67 = distinct !{!67, !63}
!68 = !{!62, !65}
!69 = distinct !{!69, !7, !10}
!70 = distinct !{!70, !7, !10}
!71 = distinct !{!71, !7, !10}
!72 = distinct !{!72, !7}
!73 = distinct !{!73, !7}
!74 = !{!75}
!75 = distinct !{!75, !76}
!76 = distinct !{!76, !"LVerDomain"}
!77 = !{!78}
!78 = distinct !{!78, !76}
!79 = !{!80}
!80 = distinct !{!80, !76}
!81 = !{!75, !78}
!82 = distinct !{!82, !7, !10}
!83 = distinct !{!83, !7, !10}
!84 = distinct !{!84, !7}
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
!95 = distinct !{!95, !7, !10}
!96 = !{!97}
!97 = distinct !{!97, !98}
!98 = distinct !{!98, !"LVerDomain"}
!99 = !{!100}
!100 = distinct !{!100, !98}
!101 = !{!102}
!102 = distinct !{!102, !98}
!103 = !{!97, !100}
!104 = distinct !{!104, !7, !10}
!105 = !{!106}
!106 = distinct !{!106, !107}
!107 = distinct !{!107, !"LVerDomain"}
!108 = !{!109}
!109 = distinct !{!109, !107}
!110 = !{!111}
!111 = distinct !{!111, !107}
!112 = !{!106, !109}
!113 = distinct !{!113, !7, !10}
!114 = distinct !{!114, !7, !10}
!115 = distinct !{!115, !7}
!116 = distinct !{!116, !7}
!117 = distinct !{!117, !7}
!118 = distinct !{!118, !7}
!119 = !{!120, !120, i64 0}
!120 = !{!"any pointer", !4, i64 0}
!121 = distinct !{!121, !7}
!122 = distinct !{!122, !7}

; ModuleID = 'gemver.pluto.c'
source_filename = "gemver.pluto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** nocapture readonly %argv) local_unnamed_addr #0 {
entry:
  %call.i = tail call noalias dereferenceable_or_null(128000000) i8* @malloc(i64 128000000) #7
  %call.i59 = tail call noalias dereferenceable_or_null(32000) i8* @malloc(i64 32000) #7
  %call.i60 = tail call noalias dereferenceable_or_null(32000) i8* @malloc(i64 32000) #7
  %call.i61 = tail call noalias dereferenceable_or_null(32000) i8* @malloc(i64 32000) #7
  %call.i62 = tail call noalias dereferenceable_or_null(32000) i8* @malloc(i64 32000) #7
  %call.i63 = tail call noalias dereferenceable_or_null(32000) i8* @malloc(i64 32000) #7
  %call.i64 = tail call noalias dereferenceable_or_null(32000) i8* @malloc(i64 32000) #7
  %call.i65 = tail call noalias dereferenceable_or_null(32000) i8* @malloc(i64 32000) #7
  %call.i66 = tail call noalias dereferenceable_or_null(32000) i8* @malloc(i64 32000) #7
  %arraydecay = bitcast i8* %call.i to [4000 x double]*
  %arraydecay9 = bitcast i8* %call.i59 to double*
  %arraydecay10 = bitcast i8* %call.i60 to double*
  %arraydecay11 = bitcast i8* %call.i61 to double*
  %arraydecay12 = bitcast i8* %call.i62 to double*
  %arraydecay13 = bitcast i8* %call.i63 to double*
  %arraydecay15 = bitcast i8* %call.i65 to double*
  %arraydecay16 = bitcast i8* %call.i66 to double*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32000) %call.i64, i8 0, i64 32000, i1 false)
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32000) %call.i63, i8 0, i64 32000, i1 false)
  br label %for.body.i

for.cond.loopexit.i:                              ; preds = %for.body38.i
  %exitcond8.not.i = icmp eq i64 %indvars.iv.next7.i, 4000
  br i1 %exitcond8.not.i, label %init_array.exit, label %for.body.i, !llvm.loop !2

for.body.i:                                       ; preds = %for.cond.loopexit.i, %entry
  %indvars.iv6.i = phi i64 [ 0, %entry ], [ %indvars.iv.next7.i, %for.cond.loopexit.i ]
  %0 = trunc i64 %indvars.iv6.i to i32
  %conv2.i = sitofp i32 %0 to double
  %arrayidx.i = getelementptr inbounds double, double* %arraydecay9, i64 %indvars.iv6.i
  store double %conv2.i, double* %arrayidx.i, align 8, !tbaa !4
  %indvars.iv.next7.i = add nuw nsw i64 %indvars.iv6.i, 1
  %1 = trunc i64 %indvars.iv.next7.i to i32
  %conv3.i = sitofp i32 %1 to double
  %div.i = fdiv double %conv3.i, 4.000000e+03
  %div4.i = fmul double %div.i, 5.000000e-01
  %arrayidx6.i = getelementptr inbounds double, double* %arraydecay11, i64 %indvars.iv6.i
  store double %div4.i, double* %arrayidx6.i, align 8, !tbaa !4
  %div10.i = fmul double %div.i, 2.500000e-01
  %arrayidx12.i = getelementptr inbounds double, double* %arraydecay10, i64 %indvars.iv6.i
  store double %div10.i, double* %arrayidx12.i, align 8, !tbaa !4
  %div16.i = fdiv double %div.i, 6.000000e+00
  %arrayidx18.i = getelementptr inbounds double, double* %arraydecay12, i64 %indvars.iv6.i
  store double %div16.i, double* %arrayidx18.i, align 8, !tbaa !4
  %div22.i = fmul double %div.i, 1.250000e-01
  %arrayidx24.i = getelementptr inbounds double, double* %arraydecay15, i64 %indvars.iv6.i
  store double %div22.i, double* %arrayidx24.i, align 8, !tbaa !4
  %div28.i = fdiv double %div.i, 9.000000e+00
  %arrayidx30.i = getelementptr inbounds double, double* %arraydecay16, i64 %indvars.iv6.i
  store double %div28.i, double* %arrayidx30.i, align 8, !tbaa !4
  br label %for.body38.i

for.body38.i:                                     ; preds = %for.body38.i, %for.body.i
  %indvars.iv.i = phi i64 [ 0, %for.body.i ], [ %indvars.iv.next.i, %for.body38.i ]
  %2 = mul nuw nsw i64 %indvars.iv.i, %indvars.iv6.i
  %3 = trunc i64 %2 to i32
  %rem.i = urem i32 %3, 4000
  %conv39.i = sitofp i32 %rem.i to double
  %div41.i = fdiv double %conv39.i, 4.000000e+03
  %arrayidx45.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv6.i, i64 %indvars.iv.i
  store double %div41.i, double* %arrayidx45.i, align 8, !tbaa !4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 4000
  br i1 %exitcond.not.i, label %for.cond.loopexit.i, label %for.body38.i, !llvm.loop !8

init_array.exit:                                  ; preds = %for.cond.loopexit.i
  %arraydecay14 = bitcast i8* %call.i64 to double*
  tail call void (...) @polybench_timer_start() #7
  br label %for.body25.preheader.i

for.body25.preheader.i:                           ; preds = %for.inc92.i, %init_array.exit
  %indvars.iv.i67 = phi i64 [ 0, %init_array.exit ], [ %indvars.iv.next.i69, %for.inc92.i ]
  %t2.07.i = phi i32 [ 0, %init_array.exit ], [ %inc93.i, %for.inc92.i ]
  %4 = getelementptr inbounds double, double* %arraydecay10, i64 %indvars.iv.i67
  %5 = bitcast double* %4 to <2 x double>*
  %wide.load77 = load <2 x double>, <2 x double>* %5, align 8, !tbaa !4
  %6 = getelementptr inbounds double, double* %arraydecay12, i64 %indvars.iv.i67
  %7 = bitcast double* %6 to <2 x double>*
  %wide.load78 = load <2 x double>, <2 x double>* %7, align 8, !tbaa !4
  %8 = getelementptr inbounds double, double* %arraydecay14, i64 %indvars.iv.i67
  %9 = bitcast double* %8 to <2 x double>*
  %offset.idx.1 = or i64 %indvars.iv.i67, 2
  %10 = getelementptr inbounds double, double* %arraydecay10, i64 %offset.idx.1
  %11 = bitcast double* %10 to <2 x double>*
  %wide.load77.1 = load <2 x double>, <2 x double>* %11, align 8, !tbaa !4
  %12 = getelementptr inbounds double, double* %arraydecay12, i64 %offset.idx.1
  %13 = bitcast double* %12 to <2 x double>*
  %wide.load78.1 = load <2 x double>, <2 x double>* %13, align 8, !tbaa !4
  %14 = getelementptr inbounds double, double* %arraydecay14, i64 %offset.idx.1
  %15 = bitcast double* %14 to <2 x double>*
  %offset.idx.2 = or i64 %indvars.iv.i67, 4
  %16 = getelementptr inbounds double, double* %arraydecay10, i64 %offset.idx.2
  %17 = bitcast double* %16 to <2 x double>*
  %wide.load77.2 = load <2 x double>, <2 x double>* %17, align 8, !tbaa !4
  %18 = getelementptr inbounds double, double* %arraydecay12, i64 %offset.idx.2
  %19 = bitcast double* %18 to <2 x double>*
  %wide.load78.2 = load <2 x double>, <2 x double>* %19, align 8, !tbaa !4
  %20 = getelementptr inbounds double, double* %arraydecay14, i64 %offset.idx.2
  %21 = bitcast double* %20 to <2 x double>*
  %offset.idx.3 = or i64 %indvars.iv.i67, 6
  %22 = getelementptr inbounds double, double* %arraydecay10, i64 %offset.idx.3
  %23 = bitcast double* %22 to <2 x double>*
  %wide.load77.3 = load <2 x double>, <2 x double>* %23, align 8, !tbaa !4
  %24 = getelementptr inbounds double, double* %arraydecay12, i64 %offset.idx.3
  %25 = bitcast double* %24 to <2 x double>*
  %wide.load78.3 = load <2 x double>, <2 x double>* %25, align 8, !tbaa !4
  %26 = getelementptr inbounds double, double* %arraydecay14, i64 %offset.idx.3
  %27 = bitcast double* %26 to <2 x double>*
  %offset.idx.4 = or i64 %indvars.iv.i67, 8
  %28 = getelementptr inbounds double, double* %arraydecay10, i64 %offset.idx.4
  %29 = bitcast double* %28 to <2 x double>*
  %wide.load77.4 = load <2 x double>, <2 x double>* %29, align 8, !tbaa !4
  %30 = getelementptr inbounds double, double* %arraydecay12, i64 %offset.idx.4
  %31 = bitcast double* %30 to <2 x double>*
  %wide.load78.4 = load <2 x double>, <2 x double>* %31, align 8, !tbaa !4
  %32 = getelementptr inbounds double, double* %arraydecay14, i64 %offset.idx.4
  %33 = bitcast double* %32 to <2 x double>*
  %offset.idx.5 = or i64 %indvars.iv.i67, 10
  %34 = getelementptr inbounds double, double* %arraydecay10, i64 %offset.idx.5
  %35 = bitcast double* %34 to <2 x double>*
  %wide.load77.5 = load <2 x double>, <2 x double>* %35, align 8, !tbaa !4
  %36 = getelementptr inbounds double, double* %arraydecay12, i64 %offset.idx.5
  %37 = bitcast double* %36 to <2 x double>*
  %wide.load78.5 = load <2 x double>, <2 x double>* %37, align 8, !tbaa !4
  %38 = getelementptr inbounds double, double* %arraydecay14, i64 %offset.idx.5
  %39 = bitcast double* %38 to <2 x double>*
  %offset.idx.6 = or i64 %indvars.iv.i67, 12
  %40 = getelementptr inbounds double, double* %arraydecay10, i64 %offset.idx.6
  %41 = bitcast double* %40 to <2 x double>*
  %wide.load77.6 = load <2 x double>, <2 x double>* %41, align 8, !tbaa !4
  %42 = getelementptr inbounds double, double* %arraydecay12, i64 %offset.idx.6
  %43 = bitcast double* %42 to <2 x double>*
  %wide.load78.6 = load <2 x double>, <2 x double>* %43, align 8, !tbaa !4
  %44 = getelementptr inbounds double, double* %arraydecay14, i64 %offset.idx.6
  %45 = bitcast double* %44 to <2 x double>*
  %offset.idx.7 = or i64 %indvars.iv.i67, 14
  %46 = getelementptr inbounds double, double* %arraydecay10, i64 %offset.idx.7
  %47 = bitcast double* %46 to <2 x double>*
  %wide.load77.7 = load <2 x double>, <2 x double>* %47, align 8, !tbaa !4
  %48 = getelementptr inbounds double, double* %arraydecay12, i64 %offset.idx.7
  %49 = bitcast double* %48 to <2 x double>*
  %wide.load78.7 = load <2 x double>, <2 x double>* %49, align 8, !tbaa !4
  %50 = getelementptr inbounds double, double* %arraydecay14, i64 %offset.idx.7
  %51 = bitcast double* %50 to <2 x double>*
  %offset.idx.8 = or i64 %indvars.iv.i67, 16
  %52 = getelementptr inbounds double, double* %arraydecay10, i64 %offset.idx.8
  %53 = bitcast double* %52 to <2 x double>*
  %wide.load77.8 = load <2 x double>, <2 x double>* %53, align 8, !tbaa !4
  %54 = getelementptr inbounds double, double* %arraydecay12, i64 %offset.idx.8
  %55 = bitcast double* %54 to <2 x double>*
  %wide.load78.8 = load <2 x double>, <2 x double>* %55, align 8, !tbaa !4
  %56 = getelementptr inbounds double, double* %arraydecay14, i64 %offset.idx.8
  %57 = bitcast double* %56 to <2 x double>*
  %offset.idx.9 = or i64 %indvars.iv.i67, 18
  %58 = getelementptr inbounds double, double* %arraydecay10, i64 %offset.idx.9
  %59 = bitcast double* %58 to <2 x double>*
  %wide.load77.9 = load <2 x double>, <2 x double>* %59, align 8, !tbaa !4
  %60 = getelementptr inbounds double, double* %arraydecay12, i64 %offset.idx.9
  %61 = bitcast double* %60 to <2 x double>*
  %wide.load78.9 = load <2 x double>, <2 x double>* %61, align 8, !tbaa !4
  %62 = getelementptr inbounds double, double* %arraydecay14, i64 %offset.idx.9
  %63 = bitcast double* %62 to <2 x double>*
  %offset.idx.10 = or i64 %indvars.iv.i67, 20
  %64 = getelementptr inbounds double, double* %arraydecay10, i64 %offset.idx.10
  %65 = bitcast double* %64 to <2 x double>*
  %wide.load77.10 = load <2 x double>, <2 x double>* %65, align 8, !tbaa !4
  %66 = getelementptr inbounds double, double* %arraydecay12, i64 %offset.idx.10
  %67 = bitcast double* %66 to <2 x double>*
  %wide.load78.10 = load <2 x double>, <2 x double>* %67, align 8, !tbaa !4
  %68 = getelementptr inbounds double, double* %arraydecay14, i64 %offset.idx.10
  %69 = bitcast double* %68 to <2 x double>*
  %offset.idx.11 = or i64 %indvars.iv.i67, 22
  %70 = getelementptr inbounds double, double* %arraydecay10, i64 %offset.idx.11
  %71 = bitcast double* %70 to <2 x double>*
  %wide.load77.11 = load <2 x double>, <2 x double>* %71, align 8, !tbaa !4
  %72 = getelementptr inbounds double, double* %arraydecay12, i64 %offset.idx.11
  %73 = bitcast double* %72 to <2 x double>*
  %wide.load78.11 = load <2 x double>, <2 x double>* %73, align 8, !tbaa !4
  %74 = getelementptr inbounds double, double* %arraydecay14, i64 %offset.idx.11
  %75 = bitcast double* %74 to <2 x double>*
  %offset.idx.12 = or i64 %indvars.iv.i67, 24
  %76 = getelementptr inbounds double, double* %arraydecay10, i64 %offset.idx.12
  %77 = bitcast double* %76 to <2 x double>*
  %wide.load77.12 = load <2 x double>, <2 x double>* %77, align 8, !tbaa !4
  %78 = getelementptr inbounds double, double* %arraydecay12, i64 %offset.idx.12
  %79 = bitcast double* %78 to <2 x double>*
  %wide.load78.12 = load <2 x double>, <2 x double>* %79, align 8, !tbaa !4
  %80 = getelementptr inbounds double, double* %arraydecay14, i64 %offset.idx.12
  %81 = bitcast double* %80 to <2 x double>*
  %offset.idx.13 = or i64 %indvars.iv.i67, 26
  %82 = getelementptr inbounds double, double* %arraydecay10, i64 %offset.idx.13
  %83 = bitcast double* %82 to <2 x double>*
  %wide.load77.13 = load <2 x double>, <2 x double>* %83, align 8, !tbaa !4
  %84 = getelementptr inbounds double, double* %arraydecay12, i64 %offset.idx.13
  %85 = bitcast double* %84 to <2 x double>*
  %wide.load78.13 = load <2 x double>, <2 x double>* %85, align 8, !tbaa !4
  %86 = getelementptr inbounds double, double* %arraydecay14, i64 %offset.idx.13
  %87 = bitcast double* %86 to <2 x double>*
  %offset.idx.14 = or i64 %indvars.iv.i67, 28
  %88 = getelementptr inbounds double, double* %arraydecay10, i64 %offset.idx.14
  %89 = bitcast double* %88 to <2 x double>*
  %wide.load77.14 = load <2 x double>, <2 x double>* %89, align 8, !tbaa !4
  %90 = getelementptr inbounds double, double* %arraydecay12, i64 %offset.idx.14
  %91 = bitcast double* %90 to <2 x double>*
  %wide.load78.14 = load <2 x double>, <2 x double>* %91, align 8, !tbaa !4
  %92 = getelementptr inbounds double, double* %arraydecay14, i64 %offset.idx.14
  %93 = bitcast double* %92 to <2 x double>*
  %offset.idx.15 = or i64 %indvars.iv.i67, 30
  %94 = getelementptr inbounds double, double* %arraydecay10, i64 %offset.idx.15
  %95 = bitcast double* %94 to <2 x double>*
  %wide.load77.15 = load <2 x double>, <2 x double>* %95, align 8, !tbaa !4
  %96 = getelementptr inbounds double, double* %arraydecay12, i64 %offset.idx.15
  %97 = bitcast double* %96 to <2 x double>*
  %wide.load78.15 = load <2 x double>, <2 x double>* %97, align 8, !tbaa !4
  %98 = getelementptr inbounds double, double* %arraydecay14, i64 %offset.idx.15
  %99 = bitcast double* %98 to <2 x double>*
  %.promoted205 = load <2 x double>, <2 x double>* %9, align 8, !tbaa !4
  %.promoted = load <2 x double>, <2 x double>* %15, align 8, !tbaa !4
  %.promoted208 = load <2 x double>, <2 x double>* %21, align 8, !tbaa !4
  %.promoted210 = load <2 x double>, <2 x double>* %27, align 8, !tbaa !4
  %.promoted212 = load <2 x double>, <2 x double>* %33, align 8, !tbaa !4
  %.promoted214 = load <2 x double>, <2 x double>* %39, align 8, !tbaa !4
  %.promoted216 = load <2 x double>, <2 x double>* %45, align 8, !tbaa !4
  %.promoted218 = load <2 x double>, <2 x double>* %51, align 8, !tbaa !4
  %.promoted220 = load <2 x double>, <2 x double>* %57, align 8, !tbaa !4
  %.promoted222 = load <2 x double>, <2 x double>* %63, align 8, !tbaa !4
  %.promoted224 = load <2 x double>, <2 x double>* %69, align 8, !tbaa !4
  %.promoted226 = load <2 x double>, <2 x double>* %75, align 8, !tbaa !4
  %.promoted228 = load <2 x double>, <2 x double>* %81, align 8, !tbaa !4
  %.promoted230 = load <2 x double>, <2 x double>* %87, align 8, !tbaa !4
  %.promoted232 = load <2 x double>, <2 x double>* %93, align 8, !tbaa !4
  %.promoted234 = load <2 x double>, <2 x double>* %99, align 8, !tbaa !4
  br label %for.body39.preheader.i

for.body39.preheader.i:                           ; preds = %for.inc89.i, %for.body25.preheader.i
  %.lcssa204235 = phi <2 x double> [ %.promoted234, %for.body25.preheader.i ], [ %262, %for.inc89.i ]
  %.lcssa201233 = phi <2 x double> [ %.promoted232, %for.body25.preheader.i ], [ %252, %for.inc89.i ]
  %.lcssa198231 = phi <2 x double> [ %.promoted230, %for.body25.preheader.i ], [ %242, %for.inc89.i ]
  %.lcssa195229 = phi <2 x double> [ %.promoted228, %for.body25.preheader.i ], [ %232, %for.inc89.i ]
  %.lcssa192227 = phi <2 x double> [ %.promoted226, %for.body25.preheader.i ], [ %222, %for.inc89.i ]
  %.lcssa189225 = phi <2 x double> [ %.promoted224, %for.body25.preheader.i ], [ %212, %for.inc89.i ]
  %.lcssa186223 = phi <2 x double> [ %.promoted222, %for.body25.preheader.i ], [ %202, %for.inc89.i ]
  %.lcssa183221 = phi <2 x double> [ %.promoted220, %for.body25.preheader.i ], [ %192, %for.inc89.i ]
  %.lcssa180219 = phi <2 x double> [ %.promoted218, %for.body25.preheader.i ], [ %182, %for.inc89.i ]
  %.lcssa177217 = phi <2 x double> [ %.promoted216, %for.body25.preheader.i ], [ %172, %for.inc89.i ]
  %.lcssa174215 = phi <2 x double> [ %.promoted214, %for.body25.preheader.i ], [ %162, %for.inc89.i ]
  %.lcssa171213 = phi <2 x double> [ %.promoted212, %for.body25.preheader.i ], [ %152, %for.inc89.i ]
  %.lcssa168211 = phi <2 x double> [ %.promoted210, %for.body25.preheader.i ], [ %142, %for.inc89.i ]
  %.lcssa165209 = phi <2 x double> [ %.promoted208, %for.body25.preheader.i ], [ %132, %for.inc89.i ]
  %.lcssa162207 = phi <2 x double> [ %.promoted, %for.body25.preheader.i ], [ %122, %for.inc89.i ]
  %.lcssa206 = phi <2 x double> [ %.promoted205, %for.body25.preheader.i ], [ %112, %for.inc89.i ]
  %indvars.iv34.i = phi i64 [ 32, %for.body25.preheader.i ], [ %indvars.iv.next35.i, %for.inc89.i ]
  %indvars.iv26.i = phi i64 [ 0, %for.body25.preheader.i ], [ %indvars.iv.next27.i, %for.inc89.i ]
  %t3.06.i = phi i32 [ 0, %for.body25.preheader.i ], [ %inc90.i, %for.inc89.i ]
  br label %vector.ph

vector.ph:                                        ; preds = %for.body39.preheader.i, %vector.ph
  %wide.load81.15203 = phi <2 x double> [ %.lcssa204235, %for.body39.preheader.i ], [ %262, %vector.ph ]
  %wide.load81.14200 = phi <2 x double> [ %.lcssa201233, %for.body39.preheader.i ], [ %252, %vector.ph ]
  %wide.load81.13197 = phi <2 x double> [ %.lcssa198231, %for.body39.preheader.i ], [ %242, %vector.ph ]
  %wide.load81.12194 = phi <2 x double> [ %.lcssa195229, %for.body39.preheader.i ], [ %232, %vector.ph ]
  %wide.load81.11191 = phi <2 x double> [ %.lcssa192227, %for.body39.preheader.i ], [ %222, %vector.ph ]
  %wide.load81.10188 = phi <2 x double> [ %.lcssa189225, %for.body39.preheader.i ], [ %212, %vector.ph ]
  %wide.load81.9185 = phi <2 x double> [ %.lcssa186223, %for.body39.preheader.i ], [ %202, %vector.ph ]
  %wide.load81.8182 = phi <2 x double> [ %.lcssa183221, %for.body39.preheader.i ], [ %192, %vector.ph ]
  %wide.load81.7179 = phi <2 x double> [ %.lcssa180219, %for.body39.preheader.i ], [ %182, %vector.ph ]
  %wide.load81.6176 = phi <2 x double> [ %.lcssa177217, %for.body39.preheader.i ], [ %172, %vector.ph ]
  %wide.load81.5173 = phi <2 x double> [ %.lcssa174215, %for.body39.preheader.i ], [ %162, %vector.ph ]
  %wide.load81.4170 = phi <2 x double> [ %.lcssa171213, %for.body39.preheader.i ], [ %152, %vector.ph ]
  %wide.load81.3167 = phi <2 x double> [ %.lcssa168211, %for.body39.preheader.i ], [ %142, %vector.ph ]
  %wide.load81.2164 = phi <2 x double> [ %.lcssa165209, %for.body39.preheader.i ], [ %132, %vector.ph ]
  %wide.load81.1161 = phi <2 x double> [ %.lcssa162207, %for.body39.preheader.i ], [ %122, %vector.ph ]
  %wide.load81159 = phi <2 x double> [ %.lcssa206, %for.body39.preheader.i ], [ %112, %vector.ph ]
  %indvars.iv28.i = phi i64 [ %indvars.iv26.i, %for.body39.preheader.i ], [ %indvars.iv.next29.i, %vector.ph ]
  %arrayidx81.i = getelementptr inbounds double, double* %arraydecay15, i64 %indvars.iv28.i
  %100 = load double, double* %arrayidx81.i, align 8, !tbaa !4
  %arrayidx64.i = getelementptr inbounds double, double* %arraydecay11, i64 %indvars.iv28.i
  %101 = load double, double* %arrayidx64.i, align 8, !tbaa !4
  %arrayidx58.i = getelementptr inbounds double, double* %arraydecay9, i64 %indvars.iv28.i
  %102 = load double, double* %arrayidx58.i, align 8, !tbaa !4
  %broadcast.splatinsert = insertelement <2 x double> poison, double %102, i32 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert79 = insertelement <2 x double> poison, double %101, i32 0
  %broadcast.splat80 = shufflevector <2 x double> %broadcast.splatinsert79, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert82 = insertelement <2 x double> poison, double %100, i32 0
  %broadcast.splat83 = shufflevector <2 x double> %broadcast.splatinsert82, <2 x double> poison, <2 x i32> zeroinitializer
  %103 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv28.i, i64 %indvars.iv.i67
  %104 = bitcast double* %103 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %104, align 8, !tbaa !4
  %105 = fmul <2 x double> %broadcast.splat, %wide.load77
  %106 = fadd <2 x double> %wide.load, %105
  %107 = fmul <2 x double> %broadcast.splat80, %wide.load78
  %108 = fadd <2 x double> %106, %107
  %109 = bitcast double* %103 to <2 x double>*
  store <2 x double> %108, <2 x double>* %109, align 8, !tbaa !4
  %110 = fmul <2 x double> %108, <double 1.200000e+00, double 1.200000e+00>
  %111 = fmul <2 x double> %110, %broadcast.splat83
  %112 = fadd <2 x double> %wide.load81159, %111
  %113 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv28.i, i64 %offset.idx.1
  %114 = bitcast double* %113 to <2 x double>*
  %wide.load.1 = load <2 x double>, <2 x double>* %114, align 8, !tbaa !4
  %115 = fmul <2 x double> %broadcast.splat, %wide.load77.1
  %116 = fadd <2 x double> %wide.load.1, %115
  %117 = fmul <2 x double> %broadcast.splat80, %wide.load78.1
  %118 = fadd <2 x double> %116, %117
  %119 = bitcast double* %113 to <2 x double>*
  store <2 x double> %118, <2 x double>* %119, align 8, !tbaa !4
  %120 = fmul <2 x double> %118, <double 1.200000e+00, double 1.200000e+00>
  %121 = fmul <2 x double> %120, %broadcast.splat83
  %122 = fadd <2 x double> %wide.load81.1161, %121
  %123 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv28.i, i64 %offset.idx.2
  %124 = bitcast double* %123 to <2 x double>*
  %wide.load.2 = load <2 x double>, <2 x double>* %124, align 8, !tbaa !4
  %125 = fmul <2 x double> %broadcast.splat, %wide.load77.2
  %126 = fadd <2 x double> %wide.load.2, %125
  %127 = fmul <2 x double> %broadcast.splat80, %wide.load78.2
  %128 = fadd <2 x double> %126, %127
  %129 = bitcast double* %123 to <2 x double>*
  store <2 x double> %128, <2 x double>* %129, align 8, !tbaa !4
  %130 = fmul <2 x double> %128, <double 1.200000e+00, double 1.200000e+00>
  %131 = fmul <2 x double> %130, %broadcast.splat83
  %132 = fadd <2 x double> %wide.load81.2164, %131
  %133 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv28.i, i64 %offset.idx.3
  %134 = bitcast double* %133 to <2 x double>*
  %wide.load.3 = load <2 x double>, <2 x double>* %134, align 8, !tbaa !4
  %135 = fmul <2 x double> %broadcast.splat, %wide.load77.3
  %136 = fadd <2 x double> %wide.load.3, %135
  %137 = fmul <2 x double> %broadcast.splat80, %wide.load78.3
  %138 = fadd <2 x double> %136, %137
  %139 = bitcast double* %133 to <2 x double>*
  store <2 x double> %138, <2 x double>* %139, align 8, !tbaa !4
  %140 = fmul <2 x double> %138, <double 1.200000e+00, double 1.200000e+00>
  %141 = fmul <2 x double> %140, %broadcast.splat83
  %142 = fadd <2 x double> %wide.load81.3167, %141
  %143 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv28.i, i64 %offset.idx.4
  %144 = bitcast double* %143 to <2 x double>*
  %wide.load.4 = load <2 x double>, <2 x double>* %144, align 8, !tbaa !4
  %145 = fmul <2 x double> %broadcast.splat, %wide.load77.4
  %146 = fadd <2 x double> %wide.load.4, %145
  %147 = fmul <2 x double> %broadcast.splat80, %wide.load78.4
  %148 = fadd <2 x double> %146, %147
  %149 = bitcast double* %143 to <2 x double>*
  store <2 x double> %148, <2 x double>* %149, align 8, !tbaa !4
  %150 = fmul <2 x double> %148, <double 1.200000e+00, double 1.200000e+00>
  %151 = fmul <2 x double> %150, %broadcast.splat83
  %152 = fadd <2 x double> %wide.load81.4170, %151
  %153 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv28.i, i64 %offset.idx.5
  %154 = bitcast double* %153 to <2 x double>*
  %wide.load.5 = load <2 x double>, <2 x double>* %154, align 8, !tbaa !4
  %155 = fmul <2 x double> %broadcast.splat, %wide.load77.5
  %156 = fadd <2 x double> %wide.load.5, %155
  %157 = fmul <2 x double> %broadcast.splat80, %wide.load78.5
  %158 = fadd <2 x double> %156, %157
  %159 = bitcast double* %153 to <2 x double>*
  store <2 x double> %158, <2 x double>* %159, align 8, !tbaa !4
  %160 = fmul <2 x double> %158, <double 1.200000e+00, double 1.200000e+00>
  %161 = fmul <2 x double> %160, %broadcast.splat83
  %162 = fadd <2 x double> %wide.load81.5173, %161
  %163 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv28.i, i64 %offset.idx.6
  %164 = bitcast double* %163 to <2 x double>*
  %wide.load.6 = load <2 x double>, <2 x double>* %164, align 8, !tbaa !4
  %165 = fmul <2 x double> %broadcast.splat, %wide.load77.6
  %166 = fadd <2 x double> %wide.load.6, %165
  %167 = fmul <2 x double> %broadcast.splat80, %wide.load78.6
  %168 = fadd <2 x double> %166, %167
  %169 = bitcast double* %163 to <2 x double>*
  store <2 x double> %168, <2 x double>* %169, align 8, !tbaa !4
  %170 = fmul <2 x double> %168, <double 1.200000e+00, double 1.200000e+00>
  %171 = fmul <2 x double> %170, %broadcast.splat83
  %172 = fadd <2 x double> %wide.load81.6176, %171
  %173 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv28.i, i64 %offset.idx.7
  %174 = bitcast double* %173 to <2 x double>*
  %wide.load.7 = load <2 x double>, <2 x double>* %174, align 8, !tbaa !4
  %175 = fmul <2 x double> %broadcast.splat, %wide.load77.7
  %176 = fadd <2 x double> %wide.load.7, %175
  %177 = fmul <2 x double> %broadcast.splat80, %wide.load78.7
  %178 = fadd <2 x double> %176, %177
  %179 = bitcast double* %173 to <2 x double>*
  store <2 x double> %178, <2 x double>* %179, align 8, !tbaa !4
  %180 = fmul <2 x double> %178, <double 1.200000e+00, double 1.200000e+00>
  %181 = fmul <2 x double> %180, %broadcast.splat83
  %182 = fadd <2 x double> %wide.load81.7179, %181
  %183 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv28.i, i64 %offset.idx.8
  %184 = bitcast double* %183 to <2 x double>*
  %wide.load.8 = load <2 x double>, <2 x double>* %184, align 8, !tbaa !4
  %185 = fmul <2 x double> %broadcast.splat, %wide.load77.8
  %186 = fadd <2 x double> %wide.load.8, %185
  %187 = fmul <2 x double> %broadcast.splat80, %wide.load78.8
  %188 = fadd <2 x double> %186, %187
  %189 = bitcast double* %183 to <2 x double>*
  store <2 x double> %188, <2 x double>* %189, align 8, !tbaa !4
  %190 = fmul <2 x double> %188, <double 1.200000e+00, double 1.200000e+00>
  %191 = fmul <2 x double> %190, %broadcast.splat83
  %192 = fadd <2 x double> %wide.load81.8182, %191
  %193 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv28.i, i64 %offset.idx.9
  %194 = bitcast double* %193 to <2 x double>*
  %wide.load.9 = load <2 x double>, <2 x double>* %194, align 8, !tbaa !4
  %195 = fmul <2 x double> %broadcast.splat, %wide.load77.9
  %196 = fadd <2 x double> %wide.load.9, %195
  %197 = fmul <2 x double> %broadcast.splat80, %wide.load78.9
  %198 = fadd <2 x double> %196, %197
  %199 = bitcast double* %193 to <2 x double>*
  store <2 x double> %198, <2 x double>* %199, align 8, !tbaa !4
  %200 = fmul <2 x double> %198, <double 1.200000e+00, double 1.200000e+00>
  %201 = fmul <2 x double> %200, %broadcast.splat83
  %202 = fadd <2 x double> %wide.load81.9185, %201
  %203 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv28.i, i64 %offset.idx.10
  %204 = bitcast double* %203 to <2 x double>*
  %wide.load.10 = load <2 x double>, <2 x double>* %204, align 8, !tbaa !4
  %205 = fmul <2 x double> %broadcast.splat, %wide.load77.10
  %206 = fadd <2 x double> %wide.load.10, %205
  %207 = fmul <2 x double> %broadcast.splat80, %wide.load78.10
  %208 = fadd <2 x double> %206, %207
  %209 = bitcast double* %203 to <2 x double>*
  store <2 x double> %208, <2 x double>* %209, align 8, !tbaa !4
  %210 = fmul <2 x double> %208, <double 1.200000e+00, double 1.200000e+00>
  %211 = fmul <2 x double> %210, %broadcast.splat83
  %212 = fadd <2 x double> %wide.load81.10188, %211
  %213 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv28.i, i64 %offset.idx.11
  %214 = bitcast double* %213 to <2 x double>*
  %wide.load.11 = load <2 x double>, <2 x double>* %214, align 8, !tbaa !4
  %215 = fmul <2 x double> %broadcast.splat, %wide.load77.11
  %216 = fadd <2 x double> %wide.load.11, %215
  %217 = fmul <2 x double> %broadcast.splat80, %wide.load78.11
  %218 = fadd <2 x double> %216, %217
  %219 = bitcast double* %213 to <2 x double>*
  store <2 x double> %218, <2 x double>* %219, align 8, !tbaa !4
  %220 = fmul <2 x double> %218, <double 1.200000e+00, double 1.200000e+00>
  %221 = fmul <2 x double> %220, %broadcast.splat83
  %222 = fadd <2 x double> %wide.load81.11191, %221
  %223 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv28.i, i64 %offset.idx.12
  %224 = bitcast double* %223 to <2 x double>*
  %wide.load.12 = load <2 x double>, <2 x double>* %224, align 8, !tbaa !4
  %225 = fmul <2 x double> %broadcast.splat, %wide.load77.12
  %226 = fadd <2 x double> %wide.load.12, %225
  %227 = fmul <2 x double> %broadcast.splat80, %wide.load78.12
  %228 = fadd <2 x double> %226, %227
  %229 = bitcast double* %223 to <2 x double>*
  store <2 x double> %228, <2 x double>* %229, align 8, !tbaa !4
  %230 = fmul <2 x double> %228, <double 1.200000e+00, double 1.200000e+00>
  %231 = fmul <2 x double> %230, %broadcast.splat83
  %232 = fadd <2 x double> %wide.load81.12194, %231
  %233 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv28.i, i64 %offset.idx.13
  %234 = bitcast double* %233 to <2 x double>*
  %wide.load.13 = load <2 x double>, <2 x double>* %234, align 8, !tbaa !4
  %235 = fmul <2 x double> %broadcast.splat, %wide.load77.13
  %236 = fadd <2 x double> %wide.load.13, %235
  %237 = fmul <2 x double> %broadcast.splat80, %wide.load78.13
  %238 = fadd <2 x double> %236, %237
  %239 = bitcast double* %233 to <2 x double>*
  store <2 x double> %238, <2 x double>* %239, align 8, !tbaa !4
  %240 = fmul <2 x double> %238, <double 1.200000e+00, double 1.200000e+00>
  %241 = fmul <2 x double> %240, %broadcast.splat83
  %242 = fadd <2 x double> %wide.load81.13197, %241
  %243 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv28.i, i64 %offset.idx.14
  %244 = bitcast double* %243 to <2 x double>*
  %wide.load.14 = load <2 x double>, <2 x double>* %244, align 8, !tbaa !4
  %245 = fmul <2 x double> %broadcast.splat, %wide.load77.14
  %246 = fadd <2 x double> %wide.load.14, %245
  %247 = fmul <2 x double> %broadcast.splat80, %wide.load78.14
  %248 = fadd <2 x double> %246, %247
  %249 = bitcast double* %243 to <2 x double>*
  store <2 x double> %248, <2 x double>* %249, align 8, !tbaa !4
  %250 = fmul <2 x double> %248, <double 1.200000e+00, double 1.200000e+00>
  %251 = fmul <2 x double> %250, %broadcast.splat83
  %252 = fadd <2 x double> %wide.load81.14200, %251
  %253 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv28.i, i64 %offset.idx.15
  %254 = bitcast double* %253 to <2 x double>*
  %wide.load.15 = load <2 x double>, <2 x double>* %254, align 8, !tbaa !4
  %255 = fmul <2 x double> %broadcast.splat, %wide.load77.15
  %256 = fadd <2 x double> %wide.load.15, %255
  %257 = fmul <2 x double> %broadcast.splat80, %wide.load78.15
  %258 = fadd <2 x double> %256, %257
  %259 = bitcast double* %253 to <2 x double>*
  store <2 x double> %258, <2 x double>* %259, align 8, !tbaa !4
  %260 = fmul <2 x double> %258, <double 1.200000e+00, double 1.200000e+00>
  %261 = fmul <2 x double> %260, %broadcast.splat83
  %262 = fadd <2 x double> %wide.load81.15203, %261
  %indvars.iv.next29.i = add nuw nsw i64 %indvars.iv28.i, 1
  %exitcond33.not.i = icmp eq i64 %indvars.iv.next29.i, %indvars.iv34.i
  br i1 %exitcond33.not.i, label %for.inc89.i, label %vector.ph, !llvm.loop !9

for.inc89.i:                                      ; preds = %vector.ph
  %inc90.i = add nuw nsw i32 %t3.06.i, 1
  %indvars.iv.next27.i = add nuw nsw i64 %indvars.iv26.i, 32
  %indvars.iv.next35.i = add nuw nsw i64 %indvars.iv34.i, 32
  %exitcond36.not.i = icmp eq i32 %inc90.i, 125
  br i1 %exitcond36.not.i, label %for.inc92.i, label %for.body39.preheader.i, !llvm.loop !10

for.inc92.i:                                      ; preds = %for.inc89.i
  store <2 x double> %112, <2 x double>* %9, align 8, !tbaa !4
  store <2 x double> %122, <2 x double>* %15, align 8, !tbaa !4
  store <2 x double> %132, <2 x double>* %21, align 8, !tbaa !4
  store <2 x double> %142, <2 x double>* %27, align 8, !tbaa !4
  store <2 x double> %152, <2 x double>* %33, align 8, !tbaa !4
  store <2 x double> %162, <2 x double>* %39, align 8, !tbaa !4
  store <2 x double> %172, <2 x double>* %45, align 8, !tbaa !4
  store <2 x double> %182, <2 x double>* %51, align 8, !tbaa !4
  store <2 x double> %192, <2 x double>* %57, align 8, !tbaa !4
  store <2 x double> %202, <2 x double>* %63, align 8, !tbaa !4
  store <2 x double> %212, <2 x double>* %69, align 8, !tbaa !4
  store <2 x double> %222, <2 x double>* %75, align 8, !tbaa !4
  store <2 x double> %232, <2 x double>* %81, align 8, !tbaa !4
  store <2 x double> %242, <2 x double>* %87, align 8, !tbaa !4
  store <2 x double> %252, <2 x double>* %93, align 8, !tbaa !4
  store <2 x double> %262, <2 x double>* %99, align 8, !tbaa !4
  %inc93.i = add nuw nsw i32 %t2.07.i, 1
  %indvars.iv.next.i69 = add nuw nsw i64 %indvars.iv.i67, 32
  %exitcond39.not.i = icmp eq i32 %inc93.i, 125
  br i1 %exitcond39.not.i, label %for.inc137.i, label %for.body25.preheader.i, !llvm.loop !11

for.inc137.i:                                     ; preds = %for.inc92.i, %for.inc137.i
  %indvars.iv40.i = phi i64 [ %indvars.iv.next41.i, %for.inc137.i ], [ 0, %for.inc92.i ]
  %t2.110.i = phi i32 [ %inc138.i, %for.inc137.i ], [ 0, %for.inc92.i ]
  %arrayidx128.i = getelementptr inbounds double, double* %arraydecay14, i64 %indvars.iv40.i
  %arrayidx130.i = getelementptr inbounds double, double* %arraydecay16, i64 %indvars.iv40.i
  %indvars.iv.next43.i = or i64 %indvars.iv40.i, 1
  %263 = bitcast double* %arrayidx128.i to <2 x double>*
  %264 = load <2 x double>, <2 x double>* %263, align 8, !tbaa !4
  %265 = bitcast double* %arrayidx130.i to <2 x double>*
  %266 = load <2 x double>, <2 x double>* %265, align 8, !tbaa !4
  %267 = fadd <2 x double> %264, %266
  %268 = bitcast double* %arrayidx128.i to <2 x double>*
  store <2 x double> %267, <2 x double>* %268, align 8, !tbaa !4
  %indvars.iv.next43.1.i = add nuw nsw i64 %indvars.iv.next43.i, 1
  %arrayidx128.2.i = getelementptr inbounds double, double* %arraydecay14, i64 %indvars.iv.next43.1.i
  %arrayidx130.2.i = getelementptr inbounds double, double* %arraydecay16, i64 %indvars.iv.next43.1.i
  %indvars.iv.next43.2.i = or i64 %indvars.iv40.i, 3
  %269 = bitcast double* %arrayidx128.2.i to <2 x double>*
  %270 = load <2 x double>, <2 x double>* %269, align 8, !tbaa !4
  %271 = bitcast double* %arrayidx130.2.i to <2 x double>*
  %272 = load <2 x double>, <2 x double>* %271, align 8, !tbaa !4
  %273 = fadd <2 x double> %270, %272
  %274 = bitcast double* %arrayidx128.2.i to <2 x double>*
  store <2 x double> %273, <2 x double>* %274, align 8, !tbaa !4
  %indvars.iv.next43.3.i = add nuw nsw i64 %indvars.iv.next43.2.i, 1
  %arrayidx128.4.i = getelementptr inbounds double, double* %arraydecay14, i64 %indvars.iv.next43.3.i
  %arrayidx130.4.i = getelementptr inbounds double, double* %arraydecay16, i64 %indvars.iv.next43.3.i
  %275 = bitcast double* %arrayidx128.4.i to <2 x double>*
  %276 = load <2 x double>, <2 x double>* %275, align 8, !tbaa !4
  %277 = bitcast double* %arrayidx130.4.i to <2 x double>*
  %278 = load <2 x double>, <2 x double>* %277, align 8, !tbaa !4
  %279 = fadd <2 x double> %276, %278
  %280 = bitcast double* %arrayidx128.4.i to <2 x double>*
  store <2 x double> %279, <2 x double>* %280, align 8, !tbaa !4
  %indvars.iv.next43.5.i = add nuw nsw i64 %indvars.iv.next43.2.i, 3
  %arrayidx128.6.i = getelementptr inbounds double, double* %arraydecay14, i64 %indvars.iv.next43.5.i
  %arrayidx130.6.i = getelementptr inbounds double, double* %arraydecay16, i64 %indvars.iv.next43.5.i
  %indvars.iv.next43.6.i = or i64 %indvars.iv40.i, 7
  %281 = bitcast double* %arrayidx128.6.i to <2 x double>*
  %282 = load <2 x double>, <2 x double>* %281, align 8, !tbaa !4
  %283 = bitcast double* %arrayidx130.6.i to <2 x double>*
  %284 = load <2 x double>, <2 x double>* %283, align 8, !tbaa !4
  %285 = fadd <2 x double> %282, %284
  %286 = bitcast double* %arrayidx128.6.i to <2 x double>*
  store <2 x double> %285, <2 x double>* %286, align 8, !tbaa !4
  %indvars.iv.next43.7.i = add nuw nsw i64 %indvars.iv.next43.6.i, 1
  %arrayidx128.8.i = getelementptr inbounds double, double* %arraydecay14, i64 %indvars.iv.next43.7.i
  %arrayidx130.8.i = getelementptr inbounds double, double* %arraydecay16, i64 %indvars.iv.next43.7.i
  %287 = bitcast double* %arrayidx128.8.i to <2 x double>*
  %288 = load <2 x double>, <2 x double>* %287, align 8, !tbaa !4
  %289 = bitcast double* %arrayidx130.8.i to <2 x double>*
  %290 = load <2 x double>, <2 x double>* %289, align 8, !tbaa !4
  %291 = fadd <2 x double> %288, %290
  %292 = bitcast double* %arrayidx128.8.i to <2 x double>*
  store <2 x double> %291, <2 x double>* %292, align 8, !tbaa !4
  %indvars.iv.next43.9.i = add nuw nsw i64 %indvars.iv.next43.6.i, 3
  %arrayidx128.10.i = getelementptr inbounds double, double* %arraydecay14, i64 %indvars.iv.next43.9.i
  %arrayidx130.10.i = getelementptr inbounds double, double* %arraydecay16, i64 %indvars.iv.next43.9.i
  %293 = bitcast double* %arrayidx128.10.i to <2 x double>*
  %294 = load <2 x double>, <2 x double>* %293, align 8, !tbaa !4
  %295 = bitcast double* %arrayidx130.10.i to <2 x double>*
  %296 = load <2 x double>, <2 x double>* %295, align 8, !tbaa !4
  %297 = fadd <2 x double> %294, %296
  %298 = bitcast double* %arrayidx128.10.i to <2 x double>*
  store <2 x double> %297, <2 x double>* %298, align 8, !tbaa !4
  %indvars.iv.next43.11.i = add nuw nsw i64 %indvars.iv.next43.6.i, 5
  %arrayidx128.12.i = getelementptr inbounds double, double* %arraydecay14, i64 %indvars.iv.next43.11.i
  %arrayidx130.12.i = getelementptr inbounds double, double* %arraydecay16, i64 %indvars.iv.next43.11.i
  %299 = bitcast double* %arrayidx128.12.i to <2 x double>*
  %300 = load <2 x double>, <2 x double>* %299, align 8, !tbaa !4
  %301 = bitcast double* %arrayidx130.12.i to <2 x double>*
  %302 = load <2 x double>, <2 x double>* %301, align 8, !tbaa !4
  %303 = fadd <2 x double> %300, %302
  %304 = bitcast double* %arrayidx128.12.i to <2 x double>*
  store <2 x double> %303, <2 x double>* %304, align 8, !tbaa !4
  %indvars.iv.next43.13.i = add nuw nsw i64 %indvars.iv.next43.6.i, 7
  %arrayidx128.14.i = getelementptr inbounds double, double* %arraydecay14, i64 %indvars.iv.next43.13.i
  %arrayidx130.14.i = getelementptr inbounds double, double* %arraydecay16, i64 %indvars.iv.next43.13.i
  %indvars.iv.next43.14.i = or i64 %indvars.iv40.i, 15
  %305 = bitcast double* %arrayidx128.14.i to <2 x double>*
  %306 = load <2 x double>, <2 x double>* %305, align 8, !tbaa !4
  %307 = bitcast double* %arrayidx130.14.i to <2 x double>*
  %308 = load <2 x double>, <2 x double>* %307, align 8, !tbaa !4
  %309 = fadd <2 x double> %306, %308
  %310 = bitcast double* %arrayidx128.14.i to <2 x double>*
  store <2 x double> %309, <2 x double>* %310, align 8, !tbaa !4
  %indvars.iv.next43.15.i = add nuw nsw i64 %indvars.iv.next43.14.i, 1
  %arrayidx128.16.i = getelementptr inbounds double, double* %arraydecay14, i64 %indvars.iv.next43.15.i
  %arrayidx130.16.i = getelementptr inbounds double, double* %arraydecay16, i64 %indvars.iv.next43.15.i
  %311 = bitcast double* %arrayidx128.16.i to <2 x double>*
  %312 = load <2 x double>, <2 x double>* %311, align 8, !tbaa !4
  %313 = bitcast double* %arrayidx130.16.i to <2 x double>*
  %314 = load <2 x double>, <2 x double>* %313, align 8, !tbaa !4
  %315 = fadd <2 x double> %312, %314
  %316 = bitcast double* %arrayidx128.16.i to <2 x double>*
  store <2 x double> %315, <2 x double>* %316, align 8, !tbaa !4
  %indvars.iv.next43.17.i = add nuw nsw i64 %indvars.iv.next43.14.i, 3
  %arrayidx128.18.i = getelementptr inbounds double, double* %arraydecay14, i64 %indvars.iv.next43.17.i
  %arrayidx130.18.i = getelementptr inbounds double, double* %arraydecay16, i64 %indvars.iv.next43.17.i
  %317 = bitcast double* %arrayidx128.18.i to <2 x double>*
  %318 = load <2 x double>, <2 x double>* %317, align 8, !tbaa !4
  %319 = bitcast double* %arrayidx130.18.i to <2 x double>*
  %320 = load <2 x double>, <2 x double>* %319, align 8, !tbaa !4
  %321 = fadd <2 x double> %318, %320
  %322 = bitcast double* %arrayidx128.18.i to <2 x double>*
  store <2 x double> %321, <2 x double>* %322, align 8, !tbaa !4
  %indvars.iv.next43.19.i = add nuw nsw i64 %indvars.iv.next43.14.i, 5
  %arrayidx128.20.i = getelementptr inbounds double, double* %arraydecay14, i64 %indvars.iv.next43.19.i
  %arrayidx130.20.i = getelementptr inbounds double, double* %arraydecay16, i64 %indvars.iv.next43.19.i
  %323 = bitcast double* %arrayidx128.20.i to <2 x double>*
  %324 = load <2 x double>, <2 x double>* %323, align 8, !tbaa !4
  %325 = bitcast double* %arrayidx130.20.i to <2 x double>*
  %326 = load <2 x double>, <2 x double>* %325, align 8, !tbaa !4
  %327 = fadd <2 x double> %324, %326
  %328 = bitcast double* %arrayidx128.20.i to <2 x double>*
  store <2 x double> %327, <2 x double>* %328, align 8, !tbaa !4
  %indvars.iv.next43.21.i = add nuw nsw i64 %indvars.iv.next43.14.i, 7
  %arrayidx128.22.i = getelementptr inbounds double, double* %arraydecay14, i64 %indvars.iv.next43.21.i
  %arrayidx130.22.i = getelementptr inbounds double, double* %arraydecay16, i64 %indvars.iv.next43.21.i
  %329 = bitcast double* %arrayidx128.22.i to <2 x double>*
  %330 = load <2 x double>, <2 x double>* %329, align 8, !tbaa !4
  %331 = bitcast double* %arrayidx130.22.i to <2 x double>*
  %332 = load <2 x double>, <2 x double>* %331, align 8, !tbaa !4
  %333 = fadd <2 x double> %330, %332
  %334 = bitcast double* %arrayidx128.22.i to <2 x double>*
  store <2 x double> %333, <2 x double>* %334, align 8, !tbaa !4
  %indvars.iv.next43.23.i = add nuw nsw i64 %indvars.iv.next43.14.i, 9
  %arrayidx128.24.i = getelementptr inbounds double, double* %arraydecay14, i64 %indvars.iv.next43.23.i
  %arrayidx130.24.i = getelementptr inbounds double, double* %arraydecay16, i64 %indvars.iv.next43.23.i
  %335 = bitcast double* %arrayidx128.24.i to <2 x double>*
  %336 = load <2 x double>, <2 x double>* %335, align 8, !tbaa !4
  %337 = bitcast double* %arrayidx130.24.i to <2 x double>*
  %338 = load <2 x double>, <2 x double>* %337, align 8, !tbaa !4
  %339 = fadd <2 x double> %336, %338
  %340 = bitcast double* %arrayidx128.24.i to <2 x double>*
  store <2 x double> %339, <2 x double>* %340, align 8, !tbaa !4
  %indvars.iv.next43.25.i = add nuw nsw i64 %indvars.iv.next43.14.i, 11
  %arrayidx128.26.i = getelementptr inbounds double, double* %arraydecay14, i64 %indvars.iv.next43.25.i
  %arrayidx130.26.i = getelementptr inbounds double, double* %arraydecay16, i64 %indvars.iv.next43.25.i
  %341 = bitcast double* %arrayidx128.26.i to <2 x double>*
  %342 = load <2 x double>, <2 x double>* %341, align 8, !tbaa !4
  %343 = bitcast double* %arrayidx130.26.i to <2 x double>*
  %344 = load <2 x double>, <2 x double>* %343, align 8, !tbaa !4
  %345 = fadd <2 x double> %342, %344
  %346 = bitcast double* %arrayidx128.26.i to <2 x double>*
  store <2 x double> %345, <2 x double>* %346, align 8, !tbaa !4
  %indvars.iv.next43.27.i = add nuw nsw i64 %indvars.iv.next43.14.i, 13
  %arrayidx128.28.i = getelementptr inbounds double, double* %arraydecay14, i64 %indvars.iv.next43.27.i
  %arrayidx130.28.i = getelementptr inbounds double, double* %arraydecay16, i64 %indvars.iv.next43.27.i
  %347 = bitcast double* %arrayidx128.28.i to <2 x double>*
  %348 = load <2 x double>, <2 x double>* %347, align 8, !tbaa !4
  %349 = bitcast double* %arrayidx130.28.i to <2 x double>*
  %350 = load <2 x double>, <2 x double>* %349, align 8, !tbaa !4
  %351 = fadd <2 x double> %348, %350
  %352 = bitcast double* %arrayidx128.28.i to <2 x double>*
  store <2 x double> %351, <2 x double>* %352, align 8, !tbaa !4
  %indvars.iv.next43.29.i = add nuw nsw i64 %indvars.iv.next43.14.i, 15
  %arrayidx128.30.i = getelementptr inbounds double, double* %arraydecay14, i64 %indvars.iv.next43.29.i
  %arrayidx130.30.i = getelementptr inbounds double, double* %arraydecay16, i64 %indvars.iv.next43.29.i
  %353 = bitcast double* %arrayidx128.30.i to <2 x double>*
  %354 = load <2 x double>, <2 x double>* %353, align 8, !tbaa !4
  %355 = bitcast double* %arrayidx130.30.i to <2 x double>*
  %356 = load <2 x double>, <2 x double>* %355, align 8, !tbaa !4
  %357 = fadd <2 x double> %354, %356
  %358 = bitcast double* %arrayidx128.30.i to <2 x double>*
  store <2 x double> %357, <2 x double>* %358, align 8, !tbaa !4
  %inc138.i = add nuw nsw i32 %t2.110.i, 1
  %indvars.iv.next41.i = add nuw nsw i64 %indvars.iv40.i, 32
  %exitcond47.not.i = icmp eq i32 %inc138.i, 125
  br i1 %exitcond47.not.i, label %for.body173.preheader.i, label %for.inc137.i, !llvm.loop !12

for.body173.preheader.i:                          ; preds = %for.inc137.i, %for.inc226.i
  %indvars.iv55.i = phi i64 [ %indvars.iv.next56.i, %for.inc226.i ], [ 0, %for.inc137.i ]
  %t2.218.i = phi i32 [ %inc227.i, %for.inc226.i ], [ 0, %for.inc137.i ]
  br label %for.body188.preheader.i

for.body188.preheader.i:                          ; preds = %for.cond175.for.inc223_crit_edge.i, %for.body173.preheader.i
  %indvars.iv48.i = phi i64 [ 0, %for.body173.preheader.i ], [ %indvars.iv.next49.i, %for.cond175.for.inc223_crit_edge.i ]
  %t3.216.i = phi i32 [ 0, %for.body173.preheader.i ], [ %inc224.i, %for.cond175.for.inc223_crit_edge.i ]
  %indvars.iv.next51.i = or i64 %indvars.iv48.i, 1
  %indvars.iv.next51.i.1 = add nuw nsw i64 %indvars.iv.next51.i, 1
  %indvars.iv.next51.i.2 = or i64 %indvars.iv48.i, 3
  %indvars.iv.next51.i.3 = add nuw nsw i64 %indvars.iv.next51.i.2, 1
  %indvars.iv.next51.i.4 = add nuw nsw i64 %indvars.iv.next51.i.2, 2
  %indvars.iv.next51.i.5 = add nuw nsw i64 %indvars.iv.next51.i.2, 3
  %indvars.iv.next51.i.6 = or i64 %indvars.iv48.i, 7
  %indvars.iv.next51.i.7 = add nuw nsw i64 %indvars.iv.next51.i.6, 1
  %indvars.iv.next51.i.8 = add nuw nsw i64 %indvars.iv.next51.i.6, 2
  %indvars.iv.next51.i.9 = add nuw nsw i64 %indvars.iv.next51.i.6, 3
  %indvars.iv.next51.i.10 = add nuw nsw i64 %indvars.iv.next51.i.6, 4
  %indvars.iv.next51.i.11 = add nuw nsw i64 %indvars.iv.next51.i.6, 5
  %indvars.iv.next51.i.12 = add nuw nsw i64 %indvars.iv.next51.i.6, 6
  %indvars.iv.next51.i.13 = add nuw nsw i64 %indvars.iv.next51.i.6, 7
  %indvars.iv.next51.i.14 = or i64 %indvars.iv48.i, 15
  %indvars.iv.next51.i.15 = add nuw nsw i64 %indvars.iv.next51.i.14, 1
  %indvars.iv.next51.i.16 = add nuw nsw i64 %indvars.iv.next51.i.14, 2
  %indvars.iv.next51.i.17 = add nuw nsw i64 %indvars.iv.next51.i.14, 3
  %indvars.iv.next51.i.18 = add nuw nsw i64 %indvars.iv.next51.i.14, 4
  %indvars.iv.next51.i.19 = add nuw nsw i64 %indvars.iv.next51.i.14, 5
  %indvars.iv.next51.i.20 = add nuw nsw i64 %indvars.iv.next51.i.14, 6
  %indvars.iv.next51.i.21 = add nuw nsw i64 %indvars.iv.next51.i.14, 7
  %indvars.iv.next51.i.22 = add nuw nsw i64 %indvars.iv.next51.i.14, 8
  %indvars.iv.next51.i.23 = add nuw nsw i64 %indvars.iv.next51.i.14, 9
  %indvars.iv.next51.i.24 = add nuw nsw i64 %indvars.iv.next51.i.14, 10
  %indvars.iv.next51.i.25 = add nuw nsw i64 %indvars.iv.next51.i.14, 11
  %indvars.iv.next51.i.26 = add nuw nsw i64 %indvars.iv.next51.i.14, 12
  %indvars.iv.next51.i.27 = add nuw nsw i64 %indvars.iv.next51.i.14, 13
  %indvars.iv.next51.i.28 = add nuw nsw i64 %indvars.iv.next51.i.14, 14
  %indvars.iv.next51.i.29 = add nuw nsw i64 %indvars.iv.next51.i.14, 15
  %indvars.iv.next51.i.30 = or i64 %indvars.iv48.i, 31
  %arrayidx212.i.31 = getelementptr inbounds double, double* %arraydecay14, i64 %indvars.iv.next51.i.30
  %359 = load double, double* %arrayidx212.i.31, align 8, !tbaa !4
  %arrayidx212.i.30 = getelementptr inbounds double, double* %arraydecay14, i64 %indvars.iv.next51.i.29
  %360 = load double, double* %arrayidx212.i.30, align 8, !tbaa !4
  %arrayidx212.i.29 = getelementptr inbounds double, double* %arraydecay14, i64 %indvars.iv.next51.i.28
  %361 = load double, double* %arrayidx212.i.29, align 8, !tbaa !4
  %arrayidx212.i.28 = getelementptr inbounds double, double* %arraydecay14, i64 %indvars.iv.next51.i.27
  %362 = load double, double* %arrayidx212.i.28, align 8, !tbaa !4
  %arrayidx212.i.27 = getelementptr inbounds double, double* %arraydecay14, i64 %indvars.iv.next51.i.26
  %363 = load double, double* %arrayidx212.i.27, align 8, !tbaa !4
  %arrayidx212.i.26 = getelementptr inbounds double, double* %arraydecay14, i64 %indvars.iv.next51.i.25
  %364 = load double, double* %arrayidx212.i.26, align 8, !tbaa !4
  %arrayidx212.i.25 = getelementptr inbounds double, double* %arraydecay14, i64 %indvars.iv.next51.i.24
  %365 = load double, double* %arrayidx212.i.25, align 8, !tbaa !4
  %arrayidx212.i.24 = getelementptr inbounds double, double* %arraydecay14, i64 %indvars.iv.next51.i.23
  %366 = load double, double* %arrayidx212.i.24, align 8, !tbaa !4
  %arrayidx212.i.23 = getelementptr inbounds double, double* %arraydecay14, i64 %indvars.iv.next51.i.22
  %367 = load double, double* %arrayidx212.i.23, align 8, !tbaa !4
  %arrayidx212.i.22 = getelementptr inbounds double, double* %arraydecay14, i64 %indvars.iv.next51.i.21
  %368 = load double, double* %arrayidx212.i.22, align 8, !tbaa !4
  %arrayidx212.i.21 = getelementptr inbounds double, double* %arraydecay14, i64 %indvars.iv.next51.i.20
  %369 = load double, double* %arrayidx212.i.21, align 8, !tbaa !4
  %arrayidx212.i.20 = getelementptr inbounds double, double* %arraydecay14, i64 %indvars.iv.next51.i.19
  %370 = load double, double* %arrayidx212.i.20, align 8, !tbaa !4
  %arrayidx212.i.19 = getelementptr inbounds double, double* %arraydecay14, i64 %indvars.iv.next51.i.18
  %371 = load double, double* %arrayidx212.i.19, align 8, !tbaa !4
  %arrayidx212.i.18 = getelementptr inbounds double, double* %arraydecay14, i64 %indvars.iv.next51.i.17
  %372 = load double, double* %arrayidx212.i.18, align 8, !tbaa !4
  %arrayidx212.i.17 = getelementptr inbounds double, double* %arraydecay14, i64 %indvars.iv.next51.i.16
  %373 = load double, double* %arrayidx212.i.17, align 8, !tbaa !4
  %arrayidx212.i.16 = getelementptr inbounds double, double* %arraydecay14, i64 %indvars.iv.next51.i.15
  %374 = load double, double* %arrayidx212.i.16, align 8, !tbaa !4
  %arrayidx212.i.15 = getelementptr inbounds double, double* %arraydecay14, i64 %indvars.iv.next51.i.14
  %375 = load double, double* %arrayidx212.i.15, align 8, !tbaa !4
  %arrayidx212.i.14 = getelementptr inbounds double, double* %arraydecay14, i64 %indvars.iv.next51.i.13
  %376 = load double, double* %arrayidx212.i.14, align 8, !tbaa !4
  %arrayidx212.i.13 = getelementptr inbounds double, double* %arraydecay14, i64 %indvars.iv.next51.i.12
  %377 = load double, double* %arrayidx212.i.13, align 8, !tbaa !4
  %arrayidx212.i.12 = getelementptr inbounds double, double* %arraydecay14, i64 %indvars.iv.next51.i.11
  %378 = load double, double* %arrayidx212.i.12, align 8, !tbaa !4
  %arrayidx212.i.11 = getelementptr inbounds double, double* %arraydecay14, i64 %indvars.iv.next51.i.10
  %379 = load double, double* %arrayidx212.i.11, align 8, !tbaa !4
  %arrayidx212.i.10 = getelementptr inbounds double, double* %arraydecay14, i64 %indvars.iv.next51.i.9
  %380 = load double, double* %arrayidx212.i.10, align 8, !tbaa !4
  %arrayidx212.i.9 = getelementptr inbounds double, double* %arraydecay14, i64 %indvars.iv.next51.i.8
  %381 = load double, double* %arrayidx212.i.9, align 8, !tbaa !4
  %arrayidx212.i.8 = getelementptr inbounds double, double* %arraydecay14, i64 %indvars.iv.next51.i.7
  %382 = load double, double* %arrayidx212.i.8, align 8, !tbaa !4
  %arrayidx212.i.7 = getelementptr inbounds double, double* %arraydecay14, i64 %indvars.iv.next51.i.6
  %383 = load double, double* %arrayidx212.i.7, align 8, !tbaa !4
  %arrayidx212.i.6 = getelementptr inbounds double, double* %arraydecay14, i64 %indvars.iv.next51.i.5
  %384 = load double, double* %arrayidx212.i.6, align 8, !tbaa !4
  %arrayidx212.i.5 = getelementptr inbounds double, double* %arraydecay14, i64 %indvars.iv.next51.i.4
  %385 = load double, double* %arrayidx212.i.5, align 8, !tbaa !4
  %arrayidx212.i.4 = getelementptr inbounds double, double* %arraydecay14, i64 %indvars.iv.next51.i.3
  %386 = load double, double* %arrayidx212.i.4, align 8, !tbaa !4
  %arrayidx212.i.3 = getelementptr inbounds double, double* %arraydecay14, i64 %indvars.iv.next51.i.2
  %387 = load double, double* %arrayidx212.i.3, align 8, !tbaa !4
  %arrayidx212.i.2 = getelementptr inbounds double, double* %arraydecay14, i64 %indvars.iv.next51.i.1
  %388 = load double, double* %arrayidx212.i.2, align 8, !tbaa !4
  %arrayidx212.i.1 = getelementptr inbounds double, double* %arraydecay14, i64 %indvars.iv.next51.i
  %389 = load double, double* %arrayidx212.i.1, align 8, !tbaa !4
  %arrayidx212.i = getelementptr inbounds double, double* %arraydecay14, i64 %indvars.iv48.i
  %390 = load double, double* %arrayidx212.i, align 8, !tbaa !4
  %broadcast.splatinsert95 = insertelement <2 x double> poison, double %390, i32 0
  %broadcast.splat96 = shufflevector <2 x double> %broadcast.splatinsert95, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert97 = insertelement <2 x double> poison, double %389, i32 0
  %broadcast.splat98 = shufflevector <2 x double> %broadcast.splatinsert97, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert99 = insertelement <2 x double> poison, double %388, i32 0
  %broadcast.splat100 = shufflevector <2 x double> %broadcast.splatinsert99, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert101 = insertelement <2 x double> poison, double %387, i32 0
  %broadcast.splat102 = shufflevector <2 x double> %broadcast.splatinsert101, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert103 = insertelement <2 x double> poison, double %386, i32 0
  %broadcast.splat104 = shufflevector <2 x double> %broadcast.splatinsert103, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert105 = insertelement <2 x double> poison, double %385, i32 0
  %broadcast.splat106 = shufflevector <2 x double> %broadcast.splatinsert105, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert107 = insertelement <2 x double> poison, double %384, i32 0
  %broadcast.splat108 = shufflevector <2 x double> %broadcast.splatinsert107, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert109 = insertelement <2 x double> poison, double %383, i32 0
  %broadcast.splat110 = shufflevector <2 x double> %broadcast.splatinsert109, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert111 = insertelement <2 x double> poison, double %382, i32 0
  %broadcast.splat112 = shufflevector <2 x double> %broadcast.splatinsert111, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert113 = insertelement <2 x double> poison, double %381, i32 0
  %broadcast.splat114 = shufflevector <2 x double> %broadcast.splatinsert113, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert115 = insertelement <2 x double> poison, double %380, i32 0
  %broadcast.splat116 = shufflevector <2 x double> %broadcast.splatinsert115, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert117 = insertelement <2 x double> poison, double %379, i32 0
  %broadcast.splat118 = shufflevector <2 x double> %broadcast.splatinsert117, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert119 = insertelement <2 x double> poison, double %378, i32 0
  %broadcast.splat120 = shufflevector <2 x double> %broadcast.splatinsert119, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert121 = insertelement <2 x double> poison, double %377, i32 0
  %broadcast.splat122 = shufflevector <2 x double> %broadcast.splatinsert121, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert123 = insertelement <2 x double> poison, double %376, i32 0
  %broadcast.splat124 = shufflevector <2 x double> %broadcast.splatinsert123, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert125 = insertelement <2 x double> poison, double %375, i32 0
  %broadcast.splat126 = shufflevector <2 x double> %broadcast.splatinsert125, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert127 = insertelement <2 x double> poison, double %374, i32 0
  %broadcast.splat128 = shufflevector <2 x double> %broadcast.splatinsert127, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert129 = insertelement <2 x double> poison, double %373, i32 0
  %broadcast.splat130 = shufflevector <2 x double> %broadcast.splatinsert129, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert131 = insertelement <2 x double> poison, double %372, i32 0
  %broadcast.splat132 = shufflevector <2 x double> %broadcast.splatinsert131, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert133 = insertelement <2 x double> poison, double %371, i32 0
  %broadcast.splat134 = shufflevector <2 x double> %broadcast.splatinsert133, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert135 = insertelement <2 x double> poison, double %370, i32 0
  %broadcast.splat136 = shufflevector <2 x double> %broadcast.splatinsert135, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert137 = insertelement <2 x double> poison, double %369, i32 0
  %broadcast.splat138 = shufflevector <2 x double> %broadcast.splatinsert137, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert139 = insertelement <2 x double> poison, double %368, i32 0
  %broadcast.splat140 = shufflevector <2 x double> %broadcast.splatinsert139, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert141 = insertelement <2 x double> poison, double %367, i32 0
  %broadcast.splat142 = shufflevector <2 x double> %broadcast.splatinsert141, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert143 = insertelement <2 x double> poison, double %366, i32 0
  %broadcast.splat144 = shufflevector <2 x double> %broadcast.splatinsert143, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert145 = insertelement <2 x double> poison, double %365, i32 0
  %broadcast.splat146 = shufflevector <2 x double> %broadcast.splatinsert145, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert147 = insertelement <2 x double> poison, double %364, i32 0
  %broadcast.splat148 = shufflevector <2 x double> %broadcast.splatinsert147, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert149 = insertelement <2 x double> poison, double %363, i32 0
  %broadcast.splat150 = shufflevector <2 x double> %broadcast.splatinsert149, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert151 = insertelement <2 x double> poison, double %362, i32 0
  %broadcast.splat152 = shufflevector <2 x double> %broadcast.splatinsert151, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert153 = insertelement <2 x double> poison, double %361, i32 0
  %broadcast.splat154 = shufflevector <2 x double> %broadcast.splatinsert153, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert155 = insertelement <2 x double> poison, double %360, i32 0
  %broadcast.splat156 = shufflevector <2 x double> %broadcast.splatinsert155, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert157 = insertelement <2 x double> poison, double %359, i32 0
  %broadcast.splat158 = shufflevector <2 x double> %broadcast.splatinsert157, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body86

vector.body86:                                    ; preds = %vector.body86, %for.body188.preheader.i
  %index88 = phi i64 [ 0, %for.body188.preheader.i ], [ %index.next89, %vector.body86 ]
  %offset.idx93 = add i64 %indvars.iv55.i, %index88
  %391 = or i64 %offset.idx93, 1
  %392 = getelementptr inbounds double, double* %arraydecay13, i64 %offset.idx93
  %393 = bitcast double* %392 to <2 x double>*
  %wide.load94 = load <2 x double>, <2 x double>* %393, align 8, !tbaa !4
  %394 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %offset.idx93, i64 %indvars.iv48.i
  %395 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %391, i64 %indvars.iv48.i
  %396 = load double, double* %394, align 8, !tbaa !4
  %397 = load double, double* %395, align 8, !tbaa !4
  %398 = insertelement <2 x double> poison, double %396, i32 0
  %399 = insertelement <2 x double> %398, double %397, i32 1
  %400 = fmul <2 x double> %399, <double 1.500000e+00, double 1.500000e+00>
  %401 = fmul <2 x double> %400, %broadcast.splat96
  %402 = fadd <2 x double> %wide.load94, %401
  %403 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %offset.idx93, i64 %indvars.iv.next51.i
  %404 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %391, i64 %indvars.iv.next51.i
  %405 = load double, double* %403, align 8, !tbaa !4
  %406 = load double, double* %404, align 8, !tbaa !4
  %407 = insertelement <2 x double> poison, double %405, i32 0
  %408 = insertelement <2 x double> %407, double %406, i32 1
  %409 = fmul <2 x double> %408, <double 1.500000e+00, double 1.500000e+00>
  %410 = fmul <2 x double> %409, %broadcast.splat98
  %411 = fadd <2 x double> %402, %410
  %412 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %offset.idx93, i64 %indvars.iv.next51.i.1
  %413 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %391, i64 %indvars.iv.next51.i.1
  %414 = load double, double* %412, align 8, !tbaa !4
  %415 = load double, double* %413, align 8, !tbaa !4
  %416 = insertelement <2 x double> poison, double %414, i32 0
  %417 = insertelement <2 x double> %416, double %415, i32 1
  %418 = fmul <2 x double> %417, <double 1.500000e+00, double 1.500000e+00>
  %419 = fmul <2 x double> %418, %broadcast.splat100
  %420 = fadd <2 x double> %411, %419
  %421 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %offset.idx93, i64 %indvars.iv.next51.i.2
  %422 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %391, i64 %indvars.iv.next51.i.2
  %423 = load double, double* %421, align 8, !tbaa !4
  %424 = load double, double* %422, align 8, !tbaa !4
  %425 = insertelement <2 x double> poison, double %423, i32 0
  %426 = insertelement <2 x double> %425, double %424, i32 1
  %427 = fmul <2 x double> %426, <double 1.500000e+00, double 1.500000e+00>
  %428 = fmul <2 x double> %427, %broadcast.splat102
  %429 = fadd <2 x double> %420, %428
  %430 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %offset.idx93, i64 %indvars.iv.next51.i.3
  %431 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %391, i64 %indvars.iv.next51.i.3
  %432 = load double, double* %430, align 8, !tbaa !4
  %433 = load double, double* %431, align 8, !tbaa !4
  %434 = insertelement <2 x double> poison, double %432, i32 0
  %435 = insertelement <2 x double> %434, double %433, i32 1
  %436 = fmul <2 x double> %435, <double 1.500000e+00, double 1.500000e+00>
  %437 = fmul <2 x double> %436, %broadcast.splat104
  %438 = fadd <2 x double> %429, %437
  %439 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %offset.idx93, i64 %indvars.iv.next51.i.4
  %440 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %391, i64 %indvars.iv.next51.i.4
  %441 = load double, double* %439, align 8, !tbaa !4
  %442 = load double, double* %440, align 8, !tbaa !4
  %443 = insertelement <2 x double> poison, double %441, i32 0
  %444 = insertelement <2 x double> %443, double %442, i32 1
  %445 = fmul <2 x double> %444, <double 1.500000e+00, double 1.500000e+00>
  %446 = fmul <2 x double> %445, %broadcast.splat106
  %447 = fadd <2 x double> %438, %446
  %448 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %offset.idx93, i64 %indvars.iv.next51.i.5
  %449 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %391, i64 %indvars.iv.next51.i.5
  %450 = load double, double* %448, align 8, !tbaa !4
  %451 = load double, double* %449, align 8, !tbaa !4
  %452 = insertelement <2 x double> poison, double %450, i32 0
  %453 = insertelement <2 x double> %452, double %451, i32 1
  %454 = fmul <2 x double> %453, <double 1.500000e+00, double 1.500000e+00>
  %455 = fmul <2 x double> %454, %broadcast.splat108
  %456 = fadd <2 x double> %447, %455
  %457 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %offset.idx93, i64 %indvars.iv.next51.i.6
  %458 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %391, i64 %indvars.iv.next51.i.6
  %459 = load double, double* %457, align 8, !tbaa !4
  %460 = load double, double* %458, align 8, !tbaa !4
  %461 = insertelement <2 x double> poison, double %459, i32 0
  %462 = insertelement <2 x double> %461, double %460, i32 1
  %463 = fmul <2 x double> %462, <double 1.500000e+00, double 1.500000e+00>
  %464 = fmul <2 x double> %463, %broadcast.splat110
  %465 = fadd <2 x double> %456, %464
  %466 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %offset.idx93, i64 %indvars.iv.next51.i.7
  %467 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %391, i64 %indvars.iv.next51.i.7
  %468 = load double, double* %466, align 8, !tbaa !4
  %469 = load double, double* %467, align 8, !tbaa !4
  %470 = insertelement <2 x double> poison, double %468, i32 0
  %471 = insertelement <2 x double> %470, double %469, i32 1
  %472 = fmul <2 x double> %471, <double 1.500000e+00, double 1.500000e+00>
  %473 = fmul <2 x double> %472, %broadcast.splat112
  %474 = fadd <2 x double> %465, %473
  %475 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %offset.idx93, i64 %indvars.iv.next51.i.8
  %476 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %391, i64 %indvars.iv.next51.i.8
  %477 = load double, double* %475, align 8, !tbaa !4
  %478 = load double, double* %476, align 8, !tbaa !4
  %479 = insertelement <2 x double> poison, double %477, i32 0
  %480 = insertelement <2 x double> %479, double %478, i32 1
  %481 = fmul <2 x double> %480, <double 1.500000e+00, double 1.500000e+00>
  %482 = fmul <2 x double> %481, %broadcast.splat114
  %483 = fadd <2 x double> %474, %482
  %484 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %offset.idx93, i64 %indvars.iv.next51.i.9
  %485 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %391, i64 %indvars.iv.next51.i.9
  %486 = load double, double* %484, align 8, !tbaa !4
  %487 = load double, double* %485, align 8, !tbaa !4
  %488 = insertelement <2 x double> poison, double %486, i32 0
  %489 = insertelement <2 x double> %488, double %487, i32 1
  %490 = fmul <2 x double> %489, <double 1.500000e+00, double 1.500000e+00>
  %491 = fmul <2 x double> %490, %broadcast.splat116
  %492 = fadd <2 x double> %483, %491
  %493 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %offset.idx93, i64 %indvars.iv.next51.i.10
  %494 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %391, i64 %indvars.iv.next51.i.10
  %495 = load double, double* %493, align 8, !tbaa !4
  %496 = load double, double* %494, align 8, !tbaa !4
  %497 = insertelement <2 x double> poison, double %495, i32 0
  %498 = insertelement <2 x double> %497, double %496, i32 1
  %499 = fmul <2 x double> %498, <double 1.500000e+00, double 1.500000e+00>
  %500 = fmul <2 x double> %499, %broadcast.splat118
  %501 = fadd <2 x double> %492, %500
  %502 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %offset.idx93, i64 %indvars.iv.next51.i.11
  %503 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %391, i64 %indvars.iv.next51.i.11
  %504 = load double, double* %502, align 8, !tbaa !4
  %505 = load double, double* %503, align 8, !tbaa !4
  %506 = insertelement <2 x double> poison, double %504, i32 0
  %507 = insertelement <2 x double> %506, double %505, i32 1
  %508 = fmul <2 x double> %507, <double 1.500000e+00, double 1.500000e+00>
  %509 = fmul <2 x double> %508, %broadcast.splat120
  %510 = fadd <2 x double> %501, %509
  %511 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %offset.idx93, i64 %indvars.iv.next51.i.12
  %512 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %391, i64 %indvars.iv.next51.i.12
  %513 = load double, double* %511, align 8, !tbaa !4
  %514 = load double, double* %512, align 8, !tbaa !4
  %515 = insertelement <2 x double> poison, double %513, i32 0
  %516 = insertelement <2 x double> %515, double %514, i32 1
  %517 = fmul <2 x double> %516, <double 1.500000e+00, double 1.500000e+00>
  %518 = fmul <2 x double> %517, %broadcast.splat122
  %519 = fadd <2 x double> %510, %518
  %520 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %offset.idx93, i64 %indvars.iv.next51.i.13
  %521 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %391, i64 %indvars.iv.next51.i.13
  %522 = load double, double* %520, align 8, !tbaa !4
  %523 = load double, double* %521, align 8, !tbaa !4
  %524 = insertelement <2 x double> poison, double %522, i32 0
  %525 = insertelement <2 x double> %524, double %523, i32 1
  %526 = fmul <2 x double> %525, <double 1.500000e+00, double 1.500000e+00>
  %527 = fmul <2 x double> %526, %broadcast.splat124
  %528 = fadd <2 x double> %519, %527
  %529 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %offset.idx93, i64 %indvars.iv.next51.i.14
  %530 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %391, i64 %indvars.iv.next51.i.14
  %531 = load double, double* %529, align 8, !tbaa !4
  %532 = load double, double* %530, align 8, !tbaa !4
  %533 = insertelement <2 x double> poison, double %531, i32 0
  %534 = insertelement <2 x double> %533, double %532, i32 1
  %535 = fmul <2 x double> %534, <double 1.500000e+00, double 1.500000e+00>
  %536 = fmul <2 x double> %535, %broadcast.splat126
  %537 = fadd <2 x double> %528, %536
  %538 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %offset.idx93, i64 %indvars.iv.next51.i.15
  %539 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %391, i64 %indvars.iv.next51.i.15
  %540 = load double, double* %538, align 8, !tbaa !4
  %541 = load double, double* %539, align 8, !tbaa !4
  %542 = insertelement <2 x double> poison, double %540, i32 0
  %543 = insertelement <2 x double> %542, double %541, i32 1
  %544 = fmul <2 x double> %543, <double 1.500000e+00, double 1.500000e+00>
  %545 = fmul <2 x double> %544, %broadcast.splat128
  %546 = fadd <2 x double> %537, %545
  %547 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %offset.idx93, i64 %indvars.iv.next51.i.16
  %548 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %391, i64 %indvars.iv.next51.i.16
  %549 = load double, double* %547, align 8, !tbaa !4
  %550 = load double, double* %548, align 8, !tbaa !4
  %551 = insertelement <2 x double> poison, double %549, i32 0
  %552 = insertelement <2 x double> %551, double %550, i32 1
  %553 = fmul <2 x double> %552, <double 1.500000e+00, double 1.500000e+00>
  %554 = fmul <2 x double> %553, %broadcast.splat130
  %555 = fadd <2 x double> %546, %554
  %556 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %offset.idx93, i64 %indvars.iv.next51.i.17
  %557 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %391, i64 %indvars.iv.next51.i.17
  %558 = load double, double* %556, align 8, !tbaa !4
  %559 = load double, double* %557, align 8, !tbaa !4
  %560 = insertelement <2 x double> poison, double %558, i32 0
  %561 = insertelement <2 x double> %560, double %559, i32 1
  %562 = fmul <2 x double> %561, <double 1.500000e+00, double 1.500000e+00>
  %563 = fmul <2 x double> %562, %broadcast.splat132
  %564 = fadd <2 x double> %555, %563
  %565 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %offset.idx93, i64 %indvars.iv.next51.i.18
  %566 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %391, i64 %indvars.iv.next51.i.18
  %567 = load double, double* %565, align 8, !tbaa !4
  %568 = load double, double* %566, align 8, !tbaa !4
  %569 = insertelement <2 x double> poison, double %567, i32 0
  %570 = insertelement <2 x double> %569, double %568, i32 1
  %571 = fmul <2 x double> %570, <double 1.500000e+00, double 1.500000e+00>
  %572 = fmul <2 x double> %571, %broadcast.splat134
  %573 = fadd <2 x double> %564, %572
  %574 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %offset.idx93, i64 %indvars.iv.next51.i.19
  %575 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %391, i64 %indvars.iv.next51.i.19
  %576 = load double, double* %574, align 8, !tbaa !4
  %577 = load double, double* %575, align 8, !tbaa !4
  %578 = insertelement <2 x double> poison, double %576, i32 0
  %579 = insertelement <2 x double> %578, double %577, i32 1
  %580 = fmul <2 x double> %579, <double 1.500000e+00, double 1.500000e+00>
  %581 = fmul <2 x double> %580, %broadcast.splat136
  %582 = fadd <2 x double> %573, %581
  %583 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %offset.idx93, i64 %indvars.iv.next51.i.20
  %584 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %391, i64 %indvars.iv.next51.i.20
  %585 = load double, double* %583, align 8, !tbaa !4
  %586 = load double, double* %584, align 8, !tbaa !4
  %587 = insertelement <2 x double> poison, double %585, i32 0
  %588 = insertelement <2 x double> %587, double %586, i32 1
  %589 = fmul <2 x double> %588, <double 1.500000e+00, double 1.500000e+00>
  %590 = fmul <2 x double> %589, %broadcast.splat138
  %591 = fadd <2 x double> %582, %590
  %592 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %offset.idx93, i64 %indvars.iv.next51.i.21
  %593 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %391, i64 %indvars.iv.next51.i.21
  %594 = load double, double* %592, align 8, !tbaa !4
  %595 = load double, double* %593, align 8, !tbaa !4
  %596 = insertelement <2 x double> poison, double %594, i32 0
  %597 = insertelement <2 x double> %596, double %595, i32 1
  %598 = fmul <2 x double> %597, <double 1.500000e+00, double 1.500000e+00>
  %599 = fmul <2 x double> %598, %broadcast.splat140
  %600 = fadd <2 x double> %591, %599
  %601 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %offset.idx93, i64 %indvars.iv.next51.i.22
  %602 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %391, i64 %indvars.iv.next51.i.22
  %603 = load double, double* %601, align 8, !tbaa !4
  %604 = load double, double* %602, align 8, !tbaa !4
  %605 = insertelement <2 x double> poison, double %603, i32 0
  %606 = insertelement <2 x double> %605, double %604, i32 1
  %607 = fmul <2 x double> %606, <double 1.500000e+00, double 1.500000e+00>
  %608 = fmul <2 x double> %607, %broadcast.splat142
  %609 = fadd <2 x double> %600, %608
  %610 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %offset.idx93, i64 %indvars.iv.next51.i.23
  %611 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %391, i64 %indvars.iv.next51.i.23
  %612 = load double, double* %610, align 8, !tbaa !4
  %613 = load double, double* %611, align 8, !tbaa !4
  %614 = insertelement <2 x double> poison, double %612, i32 0
  %615 = insertelement <2 x double> %614, double %613, i32 1
  %616 = fmul <2 x double> %615, <double 1.500000e+00, double 1.500000e+00>
  %617 = fmul <2 x double> %616, %broadcast.splat144
  %618 = fadd <2 x double> %609, %617
  %619 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %offset.idx93, i64 %indvars.iv.next51.i.24
  %620 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %391, i64 %indvars.iv.next51.i.24
  %621 = load double, double* %619, align 8, !tbaa !4
  %622 = load double, double* %620, align 8, !tbaa !4
  %623 = insertelement <2 x double> poison, double %621, i32 0
  %624 = insertelement <2 x double> %623, double %622, i32 1
  %625 = fmul <2 x double> %624, <double 1.500000e+00, double 1.500000e+00>
  %626 = fmul <2 x double> %625, %broadcast.splat146
  %627 = fadd <2 x double> %618, %626
  %628 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %offset.idx93, i64 %indvars.iv.next51.i.25
  %629 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %391, i64 %indvars.iv.next51.i.25
  %630 = load double, double* %628, align 8, !tbaa !4
  %631 = load double, double* %629, align 8, !tbaa !4
  %632 = insertelement <2 x double> poison, double %630, i32 0
  %633 = insertelement <2 x double> %632, double %631, i32 1
  %634 = fmul <2 x double> %633, <double 1.500000e+00, double 1.500000e+00>
  %635 = fmul <2 x double> %634, %broadcast.splat148
  %636 = fadd <2 x double> %627, %635
  %637 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %offset.idx93, i64 %indvars.iv.next51.i.26
  %638 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %391, i64 %indvars.iv.next51.i.26
  %639 = load double, double* %637, align 8, !tbaa !4
  %640 = load double, double* %638, align 8, !tbaa !4
  %641 = insertelement <2 x double> poison, double %639, i32 0
  %642 = insertelement <2 x double> %641, double %640, i32 1
  %643 = fmul <2 x double> %642, <double 1.500000e+00, double 1.500000e+00>
  %644 = fmul <2 x double> %643, %broadcast.splat150
  %645 = fadd <2 x double> %636, %644
  %646 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %offset.idx93, i64 %indvars.iv.next51.i.27
  %647 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %391, i64 %indvars.iv.next51.i.27
  %648 = load double, double* %646, align 8, !tbaa !4
  %649 = load double, double* %647, align 8, !tbaa !4
  %650 = insertelement <2 x double> poison, double %648, i32 0
  %651 = insertelement <2 x double> %650, double %649, i32 1
  %652 = fmul <2 x double> %651, <double 1.500000e+00, double 1.500000e+00>
  %653 = fmul <2 x double> %652, %broadcast.splat152
  %654 = fadd <2 x double> %645, %653
  %655 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %offset.idx93, i64 %indvars.iv.next51.i.28
  %656 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %391, i64 %indvars.iv.next51.i.28
  %657 = load double, double* %655, align 8, !tbaa !4
  %658 = load double, double* %656, align 8, !tbaa !4
  %659 = insertelement <2 x double> poison, double %657, i32 0
  %660 = insertelement <2 x double> %659, double %658, i32 1
  %661 = fmul <2 x double> %660, <double 1.500000e+00, double 1.500000e+00>
  %662 = fmul <2 x double> %661, %broadcast.splat154
  %663 = fadd <2 x double> %654, %662
  %664 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %offset.idx93, i64 %indvars.iv.next51.i.29
  %665 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %391, i64 %indvars.iv.next51.i.29
  %666 = load double, double* %664, align 8, !tbaa !4
  %667 = load double, double* %665, align 8, !tbaa !4
  %668 = insertelement <2 x double> poison, double %666, i32 0
  %669 = insertelement <2 x double> %668, double %667, i32 1
  %670 = fmul <2 x double> %669, <double 1.500000e+00, double 1.500000e+00>
  %671 = fmul <2 x double> %670, %broadcast.splat156
  %672 = fadd <2 x double> %663, %671
  %673 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %offset.idx93, i64 %indvars.iv.next51.i.30
  %674 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %391, i64 %indvars.iv.next51.i.30
  %675 = load double, double* %673, align 8, !tbaa !4
  %676 = load double, double* %674, align 8, !tbaa !4
  %677 = insertelement <2 x double> poison, double %675, i32 0
  %678 = insertelement <2 x double> %677, double %676, i32 1
  %679 = fmul <2 x double> %678, <double 1.500000e+00, double 1.500000e+00>
  %680 = fmul <2 x double> %679, %broadcast.splat158
  %681 = fadd <2 x double> %672, %680
  %682 = bitcast double* %392 to <2 x double>*
  store <2 x double> %681, <2 x double>* %682, align 8, !tbaa !4
  %index.next89 = add i64 %index88, 2
  %683 = icmp eq i64 %index.next89, 32
  br i1 %683, label %for.cond175.for.inc223_crit_edge.i, label %vector.body86, !llvm.loop !13

for.cond175.for.inc223_crit_edge.i:               ; preds = %vector.body86
  %inc224.i = add nuw nsw i32 %t3.216.i, 1
  %indvars.iv.next49.i = add nuw nsw i64 %indvars.iv48.i, 32
  %exitcond65.not.i = icmp eq i32 %inc224.i, 125
  br i1 %exitcond65.not.i, label %for.inc226.i, label %for.body188.preheader.i, !llvm.loop !15

for.inc226.i:                                     ; preds = %for.cond175.for.inc223_crit_edge.i
  %inc227.i = add nuw nsw i32 %t2.218.i, 1
  %indvars.iv.next56.i = add nuw nsw i64 %indvars.iv55.i, 32
  %exitcond68.not.i = icmp eq i32 %inc227.i, 125
  br i1 %exitcond68.not.i, label %kernel_gemver.exit, label %for.body173.preheader.i, !llvm.loop !16

kernel_gemver.exit:                               ; preds = %for.inc226.i
  tail call void (...) @polybench_timer_stop() #7
  tail call void (...) @polybench_timer_print() #7
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_gemver.exit
  %684 = load i8*, i8** %argv, align 8, !tbaa !17
  %strcmpload = load i8, i8* %684, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %685 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !17
  %686 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %685) #8
  %687 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !17
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %687, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #8
  br label %for.body.i71

for.body.i71:                                     ; preds = %if.end.i, %if.then
  %indvars.iv.i70 = phi i64 [ 0, %if.then ], [ %indvars.iv.next.i73, %if.end.i ]
  %i.02.i = phi i32 [ 0, %if.then ], [ %inc.i, %if.end.i ]
  %rem.lhs.trunc.i = trunc i32 %i.02.i to i16
  %rem1.i = urem i16 %rem.lhs.trunc.i, 20
  %cmp2.i = icmp eq i16 %rem1.i, 0
  br i1 %cmp2.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i71
  %688 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !17
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %688) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i71
  %689 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !17
  %arrayidx.i72 = getelementptr inbounds double, double* %arraydecay13, i64 %indvars.iv.i70
  %690 = load double, double* %arrayidx.i72, align 8, !tbaa !4
  %call4.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %689, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %690) #8
  %indvars.iv.next.i73 = add nuw nsw i64 %indvars.iv.i70, 1
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i74 = icmp eq i64 %indvars.iv.next.i73, 4000
  br i1 %exitcond.not.i74, label %print_array.exit, label %for.body.i71, !llvm.loop !19

print_array.exit:                                 ; preds = %if.end.i
  %691 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !17
  %call5.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %691, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #8
  %692 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !17
  %693 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %692) #8
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_gemver.exit
  tail call void @free(i8* %call.i) #7
  tail call void @free(i8* %call.i59) #7
  tail call void @free(i8* %call.i60) #7
  tail call void @free(i8* %call.i61) #7
  tail call void @free(i8* %call.i62) #7
  tail call void @free(i8* nonnull %call.i63) #7
  tail call void @free(i8* %call.i64) #7
  tail call void @free(i8* %call.i65) #7
  tail call void @free(i8* %call.i66) #7
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

attributes #0 = { nounwind uwtable "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inaccessiblemem_or_argmemonly nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inaccessiblememonly nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 13.0.0 (https://github.com/wsmoses/MLIR-GPU.git 19da7eee184e4d715d9870fe866ac10858e874d1)"}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.mustprogress"}
!4 = !{!5, !5, i64 0}
!5 = !{!"double", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !3}
!9 = distinct !{!9, !3}
!10 = distinct !{!10, !3}
!11 = distinct !{!11, !3}
!12 = distinct !{!12, !3}
!13 = distinct !{!13, !3, !14}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = distinct !{!15, !3}
!16 = distinct !{!16, !3}
!17 = !{!18, !18, i64 0}
!18 = !{!"any pointer", !6, i64 0}
!19 = distinct !{!19, !3}

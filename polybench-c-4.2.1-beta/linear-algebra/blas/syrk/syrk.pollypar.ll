; ModuleID = 'syrk.c'
source_filename = "syrk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.ident_t = type { i32, i32, i32, i32, i8* }

@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1
@.str.ident = private constant [23 x i8] c"Source location dummy.\00", align 1
@.loc.dummy = private constant %struct.ident_t { i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.ident, i32 0, i32 0) }, align 8
@.str.ident.8 = private constant [23 x i8] c"Source location dummy.\00", align 1
@.loc.dummy.9 = private constant %struct.ident_t { i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.ident.8, i32 0, i32 0) }, align 8
@.str.ident.11 = private constant [23 x i8] c"Source location dummy.\00", align 1
@.loc.dummy.12 = private constant %struct.ident_t { i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.ident.11, i32 0, i32 0) }, align 8
@.str.ident.14 = private constant [23 x i8] c"Source location dummy.\00", align 1
@.loc.dummy.15 = private constant %struct.ident_t { i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.ident.14, i32 0, i32 0) }, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** nocapture readonly %argv) local_unnamed_addr #0 {
polly.exiting:
  %polly.par.userContext69 = alloca { i8*, [2600 x double]* }, align 8
  %polly.par.userContext66 = alloca { [2600 x double]* }, align 8
  %polly.par.userContext36 = alloca { i8* }, align 8
  %polly.par.userContext = alloca { i8* }, align 8
  %call.i = tail call noalias dereferenceable_or_null(54080000) i8* @malloc(i64 54080000) #8
  %call.i33 = bitcast i8* %call.i to [2600 x double]*
  %call.i19 = tail call noalias dereferenceable_or_null(41600000) i8* @malloc(i64 41600000) #8
  %arraydecay2 = bitcast i8* %call.i19 to [2000 x double]*
  %polly.subfn.storeaddr.call.i19 = getelementptr inbounds { i8* }, { i8* }* %polly.par.userContext, i64 0, i32 0
  store i8* %call.i19, i8** %polly.subfn.storeaddr.call.i19, align 8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @.loc.dummy, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, i64, i8*)* @main_polly_subfn to void (i32*, i32*, ...)*), i64 0, i64 82, i64 1, { i8* }* nonnull %polly.par.userContext) #8
  %polly.subfn.storeaddr.call.i = getelementptr inbounds { i8* }, { i8* }* %polly.par.userContext36, i64 0, i32 0
  store i8* %call.i, i8** %polly.subfn.storeaddr.call.i, align 8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @.loc.dummy.9, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, i64, i8*)* @main_polly_subfn_10 to void (i32*, i32*, ...)*), i64 0, i64 82, i64 1, { i8* }* nonnull %polly.par.userContext36) #8
  tail call void (...) @polybench_timer_start() #8
  %polly.access.cast.call.i19 = bitcast i8* %call.i19 to double*
  %polly.access.call.i19 = getelementptr double, double* %polly.access.cast.call.i19, i64 5200000
  %0 = bitcast i8* %call.i to double*
  %1 = icmp ule double* %polly.access.call.i19, %0
  %polly.access.arraydecay.merge54 = getelementptr [2600 x double], [2600 x double]* %call.i33, i64 0, i64 6760000
  %2 = icmp ule double* %polly.access.arraydecay.merge54, %polly.access.cast.call.i19
  %3 = or i1 %2, %1
  br i1 %3, label %polly.exiting41, label %for.cond1.preheader.i20

for.cond1.preheader.i20:                          ; preds = %polly.exiting, %for.inc32.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc32.i ], [ 0, %polly.exiting ]
  %indvars.iv14.i = phi i64 [ %indvars.iv.next15.i, %for.inc32.i ], [ 1, %polly.exiting ]
  %4 = add nsw i64 %indvars.iv16.i, -3
  %5 = lshr i64 %4, 2
  %6 = add nuw nsw i64 %5, 1
  %7 = add nuw i64 %indvars.iv16.i, 1
  %8 = add nuw i64 %indvars.iv16.i, 1
  %min.iters.check79 = icmp ult i64 %indvars.iv16.i, 3
  br i1 %min.iters.check79, label %for.body3.i24.preheader, label %vector.ph80

vector.ph80:                                      ; preds = %for.cond1.preheader.i20
  %n.vec82 = and i64 %7, -4
  %xtraiter = and i64 %6, 1
  %9 = icmp eq i64 %5, 0
  br i1 %9, label %middle.block76.unr-lcssa, label %vector.ph80.new

vector.ph80.new:                                  ; preds = %vector.ph80
  %unroll_iter = and i64 %6, 9223372036854775806
  br label %vector.body78

vector.body78:                                    ; preds = %vector.body78, %vector.ph80.new
  %index83 = phi i64 [ 0, %vector.ph80.new ], [ %index.next84.1, %vector.body78 ]
  %niter = phi i64 [ %unroll_iter, %vector.ph80.new ], [ %niter.nsub.1, %vector.body78 ]
  %10 = getelementptr inbounds [2600 x double], [2600 x double]* %call.i33, i64 %indvars.iv16.i, i64 %index83
  %11 = bitcast double* %10 to <2 x double>*
  %wide.load87 = load <2 x double>, <2 x double>* %11, align 8, !tbaa !2
  %12 = getelementptr inbounds double, double* %10, i64 2
  %13 = bitcast double* %12 to <2 x double>*
  %wide.load88 = load <2 x double>, <2 x double>* %13, align 8, !tbaa !2
  %14 = fmul <2 x double> %wide.load87, <double 1.200000e+00, double 1.200000e+00>
  %15 = fmul <2 x double> %wide.load88, <double 1.200000e+00, double 1.200000e+00>
  %16 = bitcast double* %10 to <2 x double>*
  store <2 x double> %14, <2 x double>* %16, align 8, !tbaa !2
  %17 = bitcast double* %12 to <2 x double>*
  store <2 x double> %15, <2 x double>* %17, align 8, !tbaa !2
  %index.next84 = or i64 %index83, 4
  %18 = getelementptr inbounds [2600 x double], [2600 x double]* %call.i33, i64 %indvars.iv16.i, i64 %index.next84
  %19 = bitcast double* %18 to <2 x double>*
  %wide.load87.1 = load <2 x double>, <2 x double>* %19, align 8, !tbaa !2
  %20 = getelementptr inbounds double, double* %18, i64 2
  %21 = bitcast double* %20 to <2 x double>*
  %wide.load88.1 = load <2 x double>, <2 x double>* %21, align 8, !tbaa !2
  %22 = fmul <2 x double> %wide.load87.1, <double 1.200000e+00, double 1.200000e+00>
  %23 = fmul <2 x double> %wide.load88.1, <double 1.200000e+00, double 1.200000e+00>
  %24 = bitcast double* %18 to <2 x double>*
  store <2 x double> %22, <2 x double>* %24, align 8, !tbaa !2
  %25 = bitcast double* %20 to <2 x double>*
  store <2 x double> %23, <2 x double>* %25, align 8, !tbaa !2
  %index.next84.1 = add i64 %index83, 8
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %middle.block76.unr-lcssa, label %vector.body78, !llvm.loop !6

middle.block76.unr-lcssa:                         ; preds = %vector.body78, %vector.ph80
  %index83.unr = phi i64 [ 0, %vector.ph80 ], [ %index.next84.1, %vector.body78 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block76, label %vector.body78.epil

vector.body78.epil:                               ; preds = %middle.block76.unr-lcssa
  %26 = getelementptr inbounds [2600 x double], [2600 x double]* %call.i33, i64 %indvars.iv16.i, i64 %index83.unr
  %27 = bitcast double* %26 to <2 x double>*
  %wide.load87.epil = load <2 x double>, <2 x double>* %27, align 8, !tbaa !2
  %28 = getelementptr inbounds double, double* %26, i64 2
  %29 = bitcast double* %28 to <2 x double>*
  %wide.load88.epil = load <2 x double>, <2 x double>* %29, align 8, !tbaa !2
  %30 = fmul <2 x double> %wide.load87.epil, <double 1.200000e+00, double 1.200000e+00>
  %31 = fmul <2 x double> %wide.load88.epil, <double 1.200000e+00, double 1.200000e+00>
  %32 = bitcast double* %26 to <2 x double>*
  store <2 x double> %30, <2 x double>* %32, align 8, !tbaa !2
  %33 = bitcast double* %28 to <2 x double>*
  store <2 x double> %31, <2 x double>* %33, align 8, !tbaa !2
  br label %middle.block76

middle.block76:                                   ; preds = %middle.block76.unr-lcssa, %vector.body78.epil
  %cmp.n86 = icmp eq i64 %7, %n.vec82
  br i1 %cmp.n86, label %for.cond9.preheader.i.preheader, label %for.body3.i24.preheader

for.body3.i24.preheader:                          ; preds = %for.cond1.preheader.i20, %middle.block76
  %indvars.iv.i21.ph = phi i64 [ 0, %for.cond1.preheader.i20 ], [ %n.vec82, %middle.block76 ]
  br label %for.body3.i24

for.body3.i24:                                    ; preds = %for.body3.i24.preheader, %for.body3.i24
  %indvars.iv.i21 = phi i64 [ %indvars.iv.next.i22, %for.body3.i24 ], [ %indvars.iv.i21.ph, %for.body3.i24.preheader ]
  %arrayidx5.i = getelementptr inbounds [2600 x double], [2600 x double]* %call.i33, i64 %indvars.iv16.i, i64 %indvars.iv.i21
  %34 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul double %34, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next.i22 = add nuw nsw i64 %indvars.iv.i21, 1
  %exitcond.not.i23 = icmp eq i64 %indvars.iv.next.i22, %indvars.iv14.i
  br i1 %exitcond.not.i23, label %for.cond9.preheader.i.preheader, label %for.body3.i24, !llvm.loop !9

for.cond9.preheader.i.preheader:                  ; preds = %for.body3.i24, %middle.block76
  %min.iters.check = icmp ult i64 %indvars.iv16.i, 3
  %n.vec = and i64 %8, -4
  %cmp.n = icmp eq i64 %8, %n.vec
  br label %for.cond9.preheader.i

for.cond9.preheader.i:                            ; preds = %for.cond9.preheader.i.preheader, %for.inc29.i
  %indvars.iv11.i = phi i64 [ %indvars.iv.next12.i, %for.inc29.i ], [ 0, %for.cond9.preheader.i.preheader ]
  %arrayidx15.i = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay2, i64 %indvars.iv16.i, i64 %indvars.iv11.i
  %35 = load double, double* %arrayidx15.i, align 8, !tbaa !2
  %mul16.i = fmul double %35, 1.500000e+00
  br i1 %min.iters.check, label %for.body11.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.cond9.preheader.i
  %broadcast.splatinsert = insertelement <2 x double> poison, double %mul16.i, i32 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert73 = insertelement <2 x double> poison, double %mul16.i, i32 0
  %broadcast.splat74 = shufflevector <2 x double> %broadcast.splatinsert73, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %36 = or i64 %index, 1
  %37 = or i64 %index, 2
  %38 = or i64 %index, 3
  %39 = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay2, i64 %index, i64 %indvars.iv11.i
  %40 = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay2, i64 %36, i64 %indvars.iv11.i
  %41 = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay2, i64 %37, i64 %indvars.iv11.i
  %42 = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay2, i64 %38, i64 %indvars.iv11.i
  %43 = load double, double* %39, align 8, !tbaa !2
  %44 = load double, double* %40, align 8, !tbaa !2
  %45 = insertelement <2 x double> poison, double %43, i32 0
  %46 = insertelement <2 x double> %45, double %44, i32 1
  %47 = load double, double* %41, align 8, !tbaa !2
  %48 = load double, double* %42, align 8, !tbaa !2
  %49 = insertelement <2 x double> poison, double %47, i32 0
  %50 = insertelement <2 x double> %49, double %48, i32 1
  %51 = fmul <2 x double> %broadcast.splat, %46
  %52 = fmul <2 x double> %broadcast.splat74, %50
  %53 = getelementptr inbounds [2600 x double], [2600 x double]* %call.i33, i64 %indvars.iv16.i, i64 %index
  %54 = bitcast double* %53 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %54, align 8, !tbaa !2
  %55 = getelementptr inbounds double, double* %53, i64 2
  %56 = bitcast double* %55 to <2 x double>*
  %wide.load75 = load <2 x double>, <2 x double>* %56, align 8, !tbaa !2
  %57 = fadd <2 x double> %wide.load, %51
  %58 = fadd <2 x double> %wide.load75, %52
  %59 = bitcast double* %53 to <2 x double>*
  store <2 x double> %57, <2 x double>* %59, align 8, !tbaa !2
  %60 = bitcast double* %55 to <2 x double>*
  store <2 x double> %58, <2 x double>* %60, align 8, !tbaa !2
  %index.next = add i64 %index, 4
  %61 = icmp eq i64 %index.next, %n.vec
  br i1 %61, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.inc29.i, label %for.body11.i.preheader

for.body11.i.preheader:                           ; preds = %for.cond9.preheader.i, %middle.block
  %indvars.iv7.i25.ph = phi i64 [ 0, %for.cond9.preheader.i ], [ %n.vec, %middle.block ]
  br label %for.body11.i

for.body11.i:                                     ; preds = %for.body11.i.preheader, %for.body11.i
  %indvars.iv7.i25 = phi i64 [ %indvars.iv.next8.i26, %for.body11.i ], [ %indvars.iv7.i25.ph, %for.body11.i.preheader ]
  %arrayidx20.i = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay2, i64 %indvars.iv7.i25, i64 %indvars.iv11.i
  %62 = load double, double* %arrayidx20.i, align 8, !tbaa !2
  %mul21.i = fmul double %mul16.i, %62
  %arrayidx25.i = getelementptr inbounds [2600 x double], [2600 x double]* %call.i33, i64 %indvars.iv16.i, i64 %indvars.iv7.i25
  %63 = load double, double* %arrayidx25.i, align 8, !tbaa !2
  %add.i = fadd double %63, %mul21.i
  store double %add.i, double* %arrayidx25.i, align 8, !tbaa !2
  %indvars.iv.next8.i26 = add nuw nsw i64 %indvars.iv7.i25, 1
  %exitcond10.not.i = icmp eq i64 %indvars.iv.next8.i26, %indvars.iv14.i
  br i1 %exitcond10.not.i, label %for.inc29.i, label %for.body11.i, !llvm.loop !12

for.inc29.i:                                      ; preds = %for.body11.i, %middle.block
  %indvars.iv.next12.i = add nuw nsw i64 %indvars.iv11.i, 1
  %exitcond13.not.i = icmp eq i64 %indvars.iv.next12.i, 2000
  br i1 %exitcond13.not.i, label %for.inc32.i, label %for.cond9.preheader.i, !llvm.loop !13

for.inc32.i:                                      ; preds = %for.inc29.i
  %indvars.iv.next17.i = add nuw nsw i64 %indvars.iv16.i, 1
  %indvars.iv.next15.i = add nuw nsw i64 %indvars.iv14.i, 1
  %exitcond18.not.i = icmp eq i64 %indvars.iv.next17.i, 2600
  br i1 %exitcond18.not.i, label %kernel_syrk.exit, label %for.cond1.preheader.i20, !llvm.loop !14

kernel_syrk.exit:                                 ; preds = %for.inc32.i, %polly.exiting41
  tail call void (...) @polybench_timer_stop() #8
  tail call void (...) @polybench_timer_print() #8
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syrk.exit
  %64 = load i8*, i8** %argv, align 8, !tbaa !15
  %strcmpload = load i8, i8* %64, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !15
  %66 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %65) #9
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !15
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #9
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.inc10.i, %if.then
  %indvars.iv4.i = phi i64 [ 0, %if.then ], [ %indvars.iv.next5.i, %for.inc10.i ]
  %68 = mul nuw nsw i64 %indvars.iv4.i, 2600
  br label %for.body4.i

for.body4.i:                                      ; preds = %if.end.i, %for.cond2.preheader.i
  %indvars.iv.i27 = phi i64 [ 0, %for.cond2.preheader.i ], [ %indvars.iv.next.i29, %if.end.i ]
  %69 = add nuw nsw i64 %indvars.iv.i27, %68
  %70 = trunc i64 %69 to i32
  %rem.i28 = urem i32 %70, 20
  %cmp5.i = icmp eq i32 %rem.i28, 0
  br i1 %cmp5.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body4.i
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !15
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %71) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !15
  %arrayidx8.i = getelementptr inbounds [2600 x double], [2600 x double]* %call.i33, i64 %indvars.iv4.i, i64 %indvars.iv.i27
  %73 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %73) #9
  %indvars.iv.next.i29 = add nuw nsw i64 %indvars.iv.i27, 1
  %exitcond.not.i30 = icmp eq i64 %indvars.iv.next.i29, 2600
  br i1 %exitcond.not.i30, label %for.inc10.i, label %for.body4.i, !llvm.loop !17

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 2600
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !18

print_array.exit:                                 ; preds = %for.inc10.i
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !15
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #9
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !15
  %76 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %75) #9
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syrk.exit
  tail call void @free(i8* nonnull %call.i) #8
  tail call void @free(i8* %call.i19) #8
  ret i32 0

polly.exiting41:                                  ; preds = %polly.exiting
  %77 = bitcast { [2600 x double]* }* %polly.par.userContext66 to i8**
  store i8* %call.i, i8** %77, align 8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @.loc.dummy.12, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, i64, i8*)* @main_polly_subfn_13 to void (i32*, i32*, ...)*), i64 0, i64 82, i64 1, { [2600 x double]* }* nonnull %polly.par.userContext66) #8
  %polly.subfn.storeaddr.call.i1970 = getelementptr inbounds { i8*, [2600 x double]* }, { i8*, [2600 x double]* }* %polly.par.userContext69, i64 0, i32 0
  store i8* %call.i19, i8** %polly.subfn.storeaddr.call.i1970, align 8
  %polly.subfn.storeaddr.arraydecay.merge71 = getelementptr inbounds { i8*, [2600 x double]* }, { i8*, [2600 x double]* }* %polly.par.userContext69, i64 0, i32 1
  %78 = bitcast [2600 x double]** %polly.subfn.storeaddr.arraydecay.merge71 to i8**
  store i8* %call.i, i8** %78, align 8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @.loc.dummy.15, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, i64, i8*)* @main_polly_subfn_16 to void (i32*, i32*, ...)*), i64 0, i64 82, i64 1, { i8*, [2600 x double]* }* nonnull %polly.par.userContext69) #8
  br label %kernel_syrk.exit
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

define internal void @main_polly_subfn(i32* %polly.kmpc.global_tid, i32* %polly.kmpc.bound_tid, i64 %polly.kmpc.lb, i64 %polly.kmpc.ub, i64 %polly.kmpc.inc, i8* %polly.kmpc.shared) #6 {
polly.par.setup.split:
  %polly.par.LBPtr = alloca i64, align 8
  %polly.par.UBPtr = alloca i64, align 8
  %polly.par.lastIterPtr = alloca i32, align 4
  %polly.par.StridePtr = alloca i64, align 8
  %0 = bitcast i8* %polly.kmpc.shared to i8**
  %polly.subfunc.arg.call.i19 = load i8*, i8** %0, align 8
  %polly.par.global_tid = load i32, i32* %polly.kmpc.global_tid, align 8
  store i64 %polly.kmpc.lb, i64* %polly.par.LBPtr, align 8
  store i64 %polly.kmpc.ub, i64* %polly.par.UBPtr, align 8
  store i32 0, i32* %polly.par.lastIterPtr, align 8
  store i64 %polly.kmpc.inc, i64* %polly.par.StridePtr, align 8
  %polly.indvar.UBAdjusted = add i64 %polly.kmpc.ub, -1
  tail call void @__kmpc_dispatch_init_8(%struct.ident_t* nonnull @.loc.dummy, i32 %polly.par.global_tid, i32 35, i64 %polly.kmpc.lb, i64 %polly.indvar.UBAdjusted, i64 %polly.kmpc.inc, i64 4)
  %1 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasIteration = icmp eq i32 %1, 1
  br i1 %polly.hasIteration, label %polly.loop_preheader, label %polly.par.exit

polly.par.exit:                                   ; preds = %polly.par.checkNext, %polly.par.setup.split
  ret void

polly.par.checkNext:                              ; preds = %polly.loop_exit3
  %2 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasWork = icmp eq i32 %2, 1
  br i1 %polly.hasWork, label %polly.loop_preheader, label %polly.par.exit

polly.loop_exit3:                                 ; preds = %polly.loop_exit9.loopexit.us, %polly.loop_preheader2
  %polly.indvar_next = add i64 %polly.indvar, 1
  %indvars.iv.next22 = add i64 %indvars.iv21, -32
  %exitcond27.not = icmp eq i64 %polly.indvar, %smax26
  br i1 %exitcond27.not, label %polly.par.checkNext, label %polly.loop_preheader2

polly.loop_preheader:                             ; preds = %polly.par.setup.split, %polly.par.checkNext
  %polly.indvar.LB = load i64, i64* %polly.par.LBPtr, align 8
  %polly.indvar.UB = load i64, i64* %polly.par.UBPtr, align 8
  %3 = mul i64 %polly.indvar.LB, -32
  %smax26 = call i64 @llvm.smax.i64(i64 %polly.indvar.LB, i64 %polly.indvar.UB)
  br label %polly.loop_preheader2

polly.loop_preheader2:                            ; preds = %polly.loop_preheader, %polly.loop_exit3
  %indvars.iv21 = phi i64 [ %3, %polly.loop_preheader ], [ %indvars.iv.next22, %polly.loop_exit3 ]
  %polly.indvar = phi i64 [ %polly.indvar.LB, %polly.loop_preheader ], [ %polly.indvar_next, %polly.loop_exit3 ]
  %smin23 = call i64 @llvm.smin.i64(i64 %indvars.iv21, i64 -2568)
  %4 = add nsw i64 %smin23, 2599
  %smax = call i64 @llvm.smax.i64(i64 %4, i64 0)
  %5 = mul nsw i64 %polly.indvar, -32
  %polly.loop_guard28 = icmp sgt i64 %5, -2600
  %6 = shl nsw i64 %polly.indvar, 5
  br i1 %polly.loop_guard28, label %polly.loop_if.us, label %polly.loop_exit3

polly.loop_if.us:                                 ; preds = %polly.loop_preheader2, %polly.loop_exit9.loopexit.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit9.loopexit.us ], [ 0, %polly.loop_preheader2 ]
  %polly.indvar4.us = phi i64 [ %polly.indvar_next5.us, %polly.loop_exit9.loopexit.us ], [ 0, %polly.loop_preheader2 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 -1968)
  %7 = shl nsw i64 %polly.indvar4.us, 5
  %8 = add nsw i64 %smin, 1999
  br label %polly.loop_preheader14.us

polly.loop_preheader14.us:                        ; preds = %polly.loop_if.us, %polly.loop_exit15.us
  %polly.indvar10.us = phi i64 [ %polly.indvar_next11.us, %polly.loop_exit15.us ], [ 0, %polly.loop_if.us ]
  %9 = add nsw i64 %polly.indvar10.us, %6
  %10 = trunc i64 %9 to i32
  %11 = mul i64 %9, 16000
  br label %polly.stmt.for.body3.i.us

polly.stmt.for.body3.i.us:                        ; preds = %polly.stmt.for.body3.i.us, %polly.loop_preheader14.us
  %polly.indvar16.us = phi i64 [ 0, %polly.loop_preheader14.us ], [ %polly.indvar_next17.us, %polly.stmt.for.body3.i.us ]
  %12 = add nuw nsw i64 %polly.indvar16.us, %7
  %13 = trunc i64 %12 to i32
  %14 = mul i32 %13, %10
  %15 = add i32 %14, 1
  %16 = urem i32 %15, 2600
  %p_conv.i.us = sitofp i32 %16 to double
  %p_div.i.us = fdiv double %p_conv.i.us, 2.600000e+03
  %17 = shl i64 %12, 3
  %18 = add i64 %17, %11
  %scevgep.us = getelementptr i8, i8* %polly.subfunc.arg.call.i19, i64 %18
  %scevgep19.us = bitcast i8* %scevgep.us to double*
  store double %p_div.i.us, double* %scevgep19.us, align 8, !alias.scope !19, !noalias !21, !llvm.access.group !23
  %polly.indvar_next17.us = add nuw nsw i64 %polly.indvar16.us, 1
  %exitcond.not = icmp eq i64 %polly.indvar16.us, %8
  br i1 %exitcond.not, label %polly.loop_exit15.us, label %polly.stmt.for.body3.i.us, !llvm.loop !24

polly.loop_exit15.us:                             ; preds = %polly.stmt.for.body3.i.us
  %polly.indvar_next11.us = add nuw nsw i64 %polly.indvar10.us, 1
  %exitcond24.not = icmp eq i64 %polly.indvar10.us, %smax
  br i1 %exitcond24.not, label %polly.loop_exit9.loopexit.us, label %polly.loop_preheader14.us

polly.loop_exit9.loopexit.us:                     ; preds = %polly.loop_exit15.us
  %polly.indvar_next5.us = add nuw nsw i64 %polly.indvar4.us, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -32
  %exitcond25.not = icmp eq i64 %polly.indvar_next5.us, 63
  br i1 %exitcond25.not, label %polly.loop_exit3, label %polly.loop_if.us
}

declare void @__kmpc_dispatch_init_8(%struct.ident_t*, i32, i32, i64, i64, i64, i64)

declare i32 @__kmpc_dispatch_next_8(%struct.ident_t*, i32, i32*, i64*, i64*, i64*)

declare void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

define internal void @main_polly_subfn_10(i32* %polly.kmpc.global_tid, i32* %polly.kmpc.bound_tid, i64 %polly.kmpc.lb, i64 %polly.kmpc.ub, i64 %polly.kmpc.inc, i8* %polly.kmpc.shared) #6 {
polly.par.setup.split:
  %polly.par.LBPtr = alloca i64, align 8
  %polly.par.UBPtr = alloca i64, align 8
  %polly.par.lastIterPtr = alloca i32, align 4
  %polly.par.StridePtr = alloca i64, align 8
  %0 = bitcast i8* %polly.kmpc.shared to i8**
  %polly.subfunc.arg.call.i = load i8*, i8** %0, align 8
  %polly.par.global_tid = load i32, i32* %polly.kmpc.global_tid, align 8
  store i64 %polly.kmpc.lb, i64* %polly.par.LBPtr, align 8
  store i64 %polly.kmpc.ub, i64* %polly.par.UBPtr, align 8
  store i32 0, i32* %polly.par.lastIterPtr, align 8
  store i64 %polly.kmpc.inc, i64* %polly.par.StridePtr, align 8
  %polly.indvar.UBAdjusted = add i64 %polly.kmpc.ub, -1
  tail call void @__kmpc_dispatch_init_8(%struct.ident_t* nonnull @.loc.dummy.9, i32 %polly.par.global_tid, i32 35, i64 %polly.kmpc.lb, i64 %polly.indvar.UBAdjusted, i64 %polly.kmpc.inc, i64 4)
  %1 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy.9, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasIteration = icmp eq i32 %1, 1
  br i1 %polly.hasIteration, label %polly.loop_preheader, label %polly.par.exit

polly.par.exit:                                   ; preds = %polly.par.checkNext, %polly.par.setup.split
  ret void

polly.par.checkNext:                              ; preds = %polly.loop_exit3
  %2 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy.9, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasWork = icmp eq i32 %2, 1
  br i1 %polly.hasWork, label %polly.loop_preheader, label %polly.par.exit

polly.loop_exit3:                                 ; preds = %polly.loop_exit9.loopexit.us, %polly.loop_preheader2
  %polly.indvar_next = add i64 %polly.indvar, 1
  %indvars.iv.next22 = add i64 %indvars.iv21, -32
  %exitcond27.not = icmp eq i64 %polly.indvar, %smax26
  br i1 %exitcond27.not, label %polly.par.checkNext, label %polly.loop_preheader2

polly.loop_preheader:                             ; preds = %polly.par.setup.split, %polly.par.checkNext
  %polly.indvar.LB = load i64, i64* %polly.par.LBPtr, align 8
  %polly.indvar.UB = load i64, i64* %polly.par.UBPtr, align 8
  %3 = mul i64 %polly.indvar.LB, -32
  %smax26 = call i64 @llvm.smax.i64(i64 %polly.indvar.LB, i64 %polly.indvar.UB)
  br label %polly.loop_preheader2

polly.loop_preheader2:                            ; preds = %polly.loop_preheader, %polly.loop_exit3
  %indvars.iv21 = phi i64 [ %3, %polly.loop_preheader ], [ %indvars.iv.next22, %polly.loop_exit3 ]
  %polly.indvar = phi i64 [ %polly.indvar.LB, %polly.loop_preheader ], [ %polly.indvar_next, %polly.loop_exit3 ]
  %smin23 = call i64 @llvm.smin.i64(i64 %indvars.iv21, i64 -2568)
  %4 = add nsw i64 %smin23, 2599
  %smax = call i64 @llvm.smax.i64(i64 %4, i64 0)
  %5 = mul nsw i64 %polly.indvar, -32
  %polly.loop_guard28 = icmp sgt i64 %5, -2600
  %6 = shl nsw i64 %polly.indvar, 5
  br i1 %polly.loop_guard28, label %polly.loop_if.us, label %polly.loop_exit3

polly.loop_if.us:                                 ; preds = %polly.loop_preheader2, %polly.loop_exit9.loopexit.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %polly.loop_exit9.loopexit.us ], [ 0, %polly.loop_preheader2 ]
  %polly.indvar4.us = phi i64 [ %polly.indvar_next5.us, %polly.loop_exit9.loopexit.us ], [ 0, %polly.loop_preheader2 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 -2568)
  %7 = shl nsw i64 %polly.indvar4.us, 5
  %8 = add nsw i64 %smin, 2599
  br label %polly.loop_preheader14.us

polly.loop_preheader14.us:                        ; preds = %polly.loop_if.us, %polly.loop_exit15.us
  %polly.indvar10.us = phi i64 [ %polly.indvar_next11.us, %polly.loop_exit15.us ], [ 0, %polly.loop_if.us ]
  %9 = add nsw i64 %polly.indvar10.us, %6
  %10 = trunc i64 %9 to i32
  %11 = mul i64 %9, 20800
  br label %polly.stmt.for.body17.i.us

polly.stmt.for.body17.i.us:                       ; preds = %polly.stmt.for.body17.i.us, %polly.loop_preheader14.us
  %polly.indvar16.us = phi i64 [ 0, %polly.loop_preheader14.us ], [ %polly.indvar_next17.us, %polly.stmt.for.body17.i.us ]
  %12 = add nuw nsw i64 %polly.indvar16.us, %7
  %13 = trunc i64 %12 to i32
  %14 = mul i32 %13, %10
  %15 = add i32 %14, 2
  %16 = urem i32 %15, 2000
  %p_conv21.i.us = sitofp i32 %16 to double
  %p_div23.i.us = fdiv double %p_conv21.i.us, 2.000000e+03
  %17 = shl i64 %12, 3
  %18 = add i64 %17, %11
  %scevgep.us = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %18
  %scevgep19.us = bitcast i8* %scevgep.us to double*
  store double %p_div23.i.us, double* %scevgep19.us, align 8, !alias.scope !22, !noalias !26, !llvm.access.group !27
  %polly.indvar_next17.us = add nuw nsw i64 %polly.indvar16.us, 1
  %exitcond.not = icmp eq i64 %polly.indvar16.us, %8
  br i1 %exitcond.not, label %polly.loop_exit15.us, label %polly.stmt.for.body17.i.us, !llvm.loop !28

polly.loop_exit15.us:                             ; preds = %polly.stmt.for.body17.i.us
  %polly.indvar_next11.us = add nuw nsw i64 %polly.indvar10.us, 1
  %exitcond24.not = icmp eq i64 %polly.indvar10.us, %smax
  br i1 %exitcond24.not, label %polly.loop_exit9.loopexit.us, label %polly.loop_preheader14.us

polly.loop_exit9.loopexit.us:                     ; preds = %polly.loop_exit15.us
  %polly.indvar_next5.us = add nuw nsw i64 %polly.indvar4.us, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -32
  %exitcond25.not = icmp eq i64 %polly.indvar_next5.us, 82
  br i1 %exitcond25.not, label %polly.loop_exit3, label %polly.loop_if.us
}

define internal void @main_polly_subfn_13(i32* %polly.kmpc.global_tid, i32* %polly.kmpc.bound_tid, i64 %polly.kmpc.lb, i64 %polly.kmpc.ub, i64 %polly.kmpc.inc, i8* %polly.kmpc.shared) #6 {
polly.par.setup.split:
  %polly.par.LBPtr = alloca i64, align 8
  %polly.par.UBPtr = alloca i64, align 8
  %polly.par.lastIterPtr = alloca i32, align 4
  %polly.par.StridePtr = alloca i64, align 8
  %0 = bitcast i8* %polly.kmpc.shared to [2600 x double]**
  %polly.subfunc.arg.arraydecay.merge = load [2600 x double]*, [2600 x double]** %0, align 8
  %polly.par.global_tid = load i32, i32* %polly.kmpc.global_tid, align 8
  store i64 %polly.kmpc.lb, i64* %polly.par.LBPtr, align 8
  store i64 %polly.kmpc.ub, i64* %polly.par.UBPtr, align 8
  store i32 0, i32* %polly.par.lastIterPtr, align 8
  store i64 %polly.kmpc.inc, i64* %polly.par.StridePtr, align 8
  %polly.indvar.UBAdjusted = add i64 %polly.kmpc.ub, -1
  tail call void @__kmpc_dispatch_init_8(%struct.ident_t* nonnull @.loc.dummy.12, i32 %polly.par.global_tid, i32 35, i64 %polly.kmpc.lb, i64 %polly.indvar.UBAdjusted, i64 %polly.kmpc.inc, i64 4)
  %1 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy.12, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasIteration = icmp eq i32 %1, 1
  br i1 %polly.hasIteration, label %polly.loop_preheader, label %polly.par.exit

polly.par.exit:                                   ; preds = %polly.par.checkNext, %polly.par.setup.split
  ret void

polly.par.checkNext:                              ; preds = %polly.loop_exit3
  %2 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy.12, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasWork = icmp eq i32 %2, 1
  br i1 %polly.hasWork, label %polly.loop_preheader, label %polly.par.exit

polly.loop_exit3:                                 ; preds = %polly.loop_exit10.loopexit.us, %polly.loop_if7.preheader, %polly.loop_if
  %polly.indvar_next = add i64 %polly.indvar, 1
  %indvars.iv.next = add i64 %indvars.iv, 32
  %indvars.iv.next30 = add i64 %indvars.iv29, -32
  %exitcond37.not = icmp eq i64 %polly.indvar, %smax36
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond37.not, label %polly.par.checkNext, label %polly.loop_if

polly.loop_preheader:                             ; preds = %polly.par.setup.split, %polly.par.checkNext
  %polly.indvar.LB = load i64, i64* %polly.par.LBPtr, align 8
  %polly.indvar.UB = load i64, i64* %polly.par.UBPtr, align 8
  %3 = shl i64 %polly.indvar.LB, 5
  %4 = mul i64 %polly.indvar.LB, -32
  %smax36 = call i64 @llvm.smax.i64(i64 %polly.indvar.LB, i64 %polly.indvar.UB)
  br label %polly.loop_if

polly.loop_if:                                    ; preds = %polly.loop_preheader, %polly.loop_exit3
  %indvar = phi i64 [ 0, %polly.loop_preheader ], [ %indvar.next, %polly.loop_exit3 ]
  %indvars.iv33.in = phi i64 [ %polly.indvar.LB, %polly.loop_preheader ], [ %indvars.iv33, %polly.loop_exit3 ]
  %indvars.iv29 = phi i64 [ %4, %polly.loop_preheader ], [ %indvars.iv.next30, %polly.loop_exit3 ]
  %indvars.iv = phi i64 [ %3, %polly.loop_preheader ], [ %indvars.iv.next, %polly.loop_exit3 ]
  %polly.indvar = phi i64 [ %polly.indvar.LB, %polly.loop_preheader ], [ %polly.indvar_next, %polly.loop_exit3 ]
  %5 = add i64 %polly.indvar.LB, %indvar
  %6 = shl i64 %5, 5
  %7 = add i64 %polly.indvar.LB, %indvar
  %8 = shl i64 %7, 5
  %indvars.iv33 = add i64 %indvars.iv33.in, 1
  %smin31 = call i64 @llvm.smin.i64(i64 %indvars.iv29, i64 -2568)
  %9 = add nsw i64 %smin31, 2599
  %smax = call i64 @llvm.smax.i64(i64 %9, i64 0)
  %polly.loop_guard = icmp sgt i64 %polly.indvar, -1
  br i1 %polly.loop_guard, label %polly.loop_if7.preheader, label %polly.loop_exit3

polly.loop_if7.preheader:                         ; preds = %polly.loop_if
  %10 = mul nsw i64 %polly.indvar, -32
  %polly.loop_guard1138 = icmp sgt i64 %10, -2600
  %11 = shl nsw i64 %polly.indvar, 5
  br i1 %polly.loop_guard1138, label %polly.loop_if7.us, label %polly.loop_exit3

polly.loop_if7.us:                                ; preds = %polly.loop_if7.preheader, %polly.loop_exit10.loopexit.us
  %indvars.iv25 = phi i64 [ %indvars.iv.next26, %polly.loop_exit10.loopexit.us ], [ %indvars.iv, %polly.loop_if7.preheader ]
  %polly.indvar4.us = phi i64 [ %polly.indvar_next5.us, %polly.loop_exit10.loopexit.us ], [ 0, %polly.loop_if7.preheader ]
  %12 = mul i64 %polly.indvar4.us, -32
  %13 = add i64 %6, %12
  %14 = mul i64 %polly.indvar4.us, -32
  %15 = add i64 %8, %14
  %16 = shl nsw i64 %polly.indvar4.us, 5
  %17 = sub nsw i64 %11, %16
  br label %polly.loop_if15.us

polly.loop_if15.us:                               ; preds = %polly.loop_if7.us, %polly.loop_exit18.us
  %indvars.iv27 = phi i64 [ %indvars.iv25, %polly.loop_if7.us ], [ %indvars.iv.next28, %polly.loop_exit18.us ]
  %polly.indvar12.us = phi i64 [ 0, %polly.loop_if7.us ], [ %polly.indvar_next13.us, %polly.loop_exit18.us ]
  %18 = add i64 %13, %polly.indvar12.us
  %smin42 = call i64 @llvm.smin.i64(i64 %18, i64 31)
  %19 = add i64 %smin42, -3
  %20 = lshr i64 %19, 2
  %21 = add nuw nsw i64 %20, 1
  %22 = add i64 %15, %polly.indvar12.us
  %smin40 = call i64 @llvm.smin.i64(i64 %22, i64 31)
  %23 = add nsw i64 %smin40, 1
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv27, i64 31)
  %24 = add nsw i64 %polly.indvar12.us, %17
  %polly.loop_guard19.us39 = icmp sgt i64 %24, -1
  br i1 %polly.loop_guard19.us39, label %polly.stmt.for.body3.i24.preheader.us, label %polly.loop_exit18.us

polly.stmt.for.body3.i24.us:                      ; preds = %polly.stmt.for.body3.i24.us.preheader, %polly.stmt.for.body3.i24.us
  %polly.indvar20.us = phi i64 [ %polly.indvar_next21.us, %polly.stmt.for.body3.i24.us ], [ %polly.indvar20.us.ph, %polly.stmt.for.body3.i24.us.preheader ]
  %25 = add nuw nsw i64 %polly.indvar20.us, %16
  %scevgep.us = getelementptr [2600 x double], [2600 x double]* %polly.subfunc.arg.arraydecay.merge, i64 %26, i64 %25
  %_p_scalar_.us = load double, double* %scevgep.us, align 8, !alias.scope !30, !noalias !32, !llvm.access.group !34
  %p_mul.i.us = fmul double %_p_scalar_.us, 1.200000e+00
  store double %p_mul.i.us, double* %scevgep.us, align 8, !alias.scope !30, !noalias !32, !llvm.access.group !34
  %polly.indvar_next21.us = add nuw nsw i64 %polly.indvar20.us, 1
  %exitcond.not = icmp eq i64 %polly.indvar20.us, %smin
  br i1 %exitcond.not, label %polly.loop_exit18.us, label %polly.stmt.for.body3.i24.us, !llvm.loop !35

polly.loop_exit18.us:                             ; preds = %polly.stmt.for.body3.i24.us, %middle.block, %polly.loop_if15.us
  %polly.indvar_next13.us = add nuw nsw i64 %polly.indvar12.us, 1
  %indvars.iv.next28 = add i64 %indvars.iv27, 1
  %exitcond32.not = icmp eq i64 %polly.indvar12.us, %smax
  br i1 %exitcond32.not, label %polly.loop_exit10.loopexit.us, label %polly.loop_if15.us

polly.stmt.for.body3.i24.preheader.us:            ; preds = %polly.loop_if15.us
  %26 = add nsw i64 %polly.indvar12.us, %11
  %min.iters.check = icmp ult i64 %23, 4
  br i1 %min.iters.check, label %polly.stmt.for.body3.i24.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %polly.stmt.for.body3.i24.preheader.us
  %n.vec = and i64 %23, -4
  %xtraiter = and i64 %21, 1
  %27 = icmp eq i64 %20, 0
  br i1 %27, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %21, 9223372036854775806
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ]
  %niter = phi i64 [ %unroll_iter, %vector.ph.new ], [ %niter.nsub.1, %vector.body ]
  %28 = add nuw nsw i64 %index, %16
  %29 = getelementptr [2600 x double], [2600 x double]* %polly.subfunc.arg.arraydecay.merge, i64 %26, i64 %28
  %30 = bitcast double* %29 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %30, align 8, !alias.scope !30, !noalias !32, !llvm.access.group !34
  %31 = getelementptr double, double* %29, i64 2
  %32 = bitcast double* %31 to <2 x double>*
  %wide.load41 = load <2 x double>, <2 x double>* %32, align 8, !alias.scope !30, !noalias !32, !llvm.access.group !34
  %33 = fmul <2 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00>
  %34 = fmul <2 x double> %wide.load41, <double 1.200000e+00, double 1.200000e+00>
  %35 = bitcast double* %29 to <2 x double>*
  store <2 x double> %33, <2 x double>* %35, align 8, !alias.scope !30, !noalias !32, !llvm.access.group !34
  %36 = bitcast double* %31 to <2 x double>*
  store <2 x double> %34, <2 x double>* %36, align 8, !alias.scope !30, !noalias !32, !llvm.access.group !34
  %index.next = or i64 %index, 4
  %37 = add nuw nsw i64 %index.next, %16
  %38 = getelementptr [2600 x double], [2600 x double]* %polly.subfunc.arg.arraydecay.merge, i64 %26, i64 %37
  %39 = bitcast double* %38 to <2 x double>*
  %wide.load.1 = load <2 x double>, <2 x double>* %39, align 8, !alias.scope !30, !noalias !32, !llvm.access.group !34
  %40 = getelementptr double, double* %38, i64 2
  %41 = bitcast double* %40 to <2 x double>*
  %wide.load41.1 = load <2 x double>, <2 x double>* %41, align 8, !alias.scope !30, !noalias !32, !llvm.access.group !34
  %42 = fmul <2 x double> %wide.load.1, <double 1.200000e+00, double 1.200000e+00>
  %43 = fmul <2 x double> %wide.load41.1, <double 1.200000e+00, double 1.200000e+00>
  %44 = bitcast double* %38 to <2 x double>*
  store <2 x double> %42, <2 x double>* %44, align 8, !alias.scope !30, !noalias !32, !llvm.access.group !34
  %45 = bitcast double* %40 to <2 x double>*
  store <2 x double> %43, <2 x double>* %45, align 8, !alias.scope !30, !noalias !32, !llvm.access.group !34
  %index.next.1 = add i64 %index, 8
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !37

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %46 = add nuw nsw i64 %index.unr, %16
  %47 = getelementptr [2600 x double], [2600 x double]* %polly.subfunc.arg.arraydecay.merge, i64 %26, i64 %46
  %48 = bitcast double* %47 to <2 x double>*
  %wide.load.epil = load <2 x double>, <2 x double>* %48, align 8, !alias.scope !30, !noalias !32, !llvm.access.group !34
  %49 = getelementptr double, double* %47, i64 2
  %50 = bitcast double* %49 to <2 x double>*
  %wide.load41.epil = load <2 x double>, <2 x double>* %50, align 8, !alias.scope !30, !noalias !32, !llvm.access.group !34
  %51 = fmul <2 x double> %wide.load.epil, <double 1.200000e+00, double 1.200000e+00>
  %52 = fmul <2 x double> %wide.load41.epil, <double 1.200000e+00, double 1.200000e+00>
  %53 = bitcast double* %47 to <2 x double>*
  store <2 x double> %51, <2 x double>* %53, align 8, !alias.scope !30, !noalias !32, !llvm.access.group !34
  %54 = bitcast double* %49 to <2 x double>*
  store <2 x double> %52, <2 x double>* %54, align 8, !alias.scope !30, !noalias !32, !llvm.access.group !34
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %23, %n.vec
  br i1 %cmp.n, label %polly.loop_exit18.us, label %polly.stmt.for.body3.i24.us.preheader

polly.stmt.for.body3.i24.us.preheader:            ; preds = %polly.stmt.for.body3.i24.preheader.us, %middle.block
  %polly.indvar20.us.ph = phi i64 [ 0, %polly.stmt.for.body3.i24.preheader.us ], [ %n.vec, %middle.block ]
  br label %polly.stmt.for.body3.i24.us

polly.loop_exit10.loopexit.us:                    ; preds = %polly.loop_exit18.us
  %polly.indvar_next5.us = add nuw i64 %polly.indvar4.us, 1
  %indvars.iv.next26 = add i64 %indvars.iv25, -32
  %exitcond35.not = icmp eq i64 %polly.indvar4.us, %indvars.iv33.in
  br i1 %exitcond35.not, label %polly.loop_exit3, label %polly.loop_if7.us
}

define internal void @main_polly_subfn_16(i32* %polly.kmpc.global_tid, i32* %polly.kmpc.bound_tid, i64 %polly.kmpc.lb, i64 %polly.kmpc.ub, i64 %polly.kmpc.inc, i8* %polly.kmpc.shared) #6 {
polly.par.setup.split:
  %polly.par.LBPtr = alloca i64, align 8
  %polly.par.UBPtr = alloca i64, align 8
  %polly.par.lastIterPtr = alloca i32, align 4
  %polly.par.StridePtr = alloca i64, align 8
  %0 = bitcast i8* %polly.kmpc.shared to i8**
  %polly.subfunc.arg.call.i19 = load i8*, i8** %0, align 8
  %1 = getelementptr inbounds i8, i8* %polly.kmpc.shared, i64 8
  %2 = bitcast i8* %1 to [2600 x double]**
  %polly.subfunc.arg.arraydecay.merge = load [2600 x double]*, [2600 x double]** %2, align 8
  %polly.par.global_tid = load i32, i32* %polly.kmpc.global_tid, align 8
  store i64 %polly.kmpc.lb, i64* %polly.par.LBPtr, align 8
  store i64 %polly.kmpc.ub, i64* %polly.par.UBPtr, align 8
  store i32 0, i32* %polly.par.lastIterPtr, align 8
  store i64 %polly.kmpc.inc, i64* %polly.par.StridePtr, align 8
  %polly.indvar.UBAdjusted = add i64 %polly.kmpc.ub, -1
  tail call void @__kmpc_dispatch_init_8(%struct.ident_t* nonnull @.loc.dummy.15, i32 %polly.par.global_tid, i32 35, i64 %polly.kmpc.lb, i64 %polly.indvar.UBAdjusted, i64 %polly.kmpc.inc, i64 4)
  %3 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy.15, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasIteration = icmp eq i32 %3, 1
  br i1 %polly.hasIteration, label %polly.loop_preheader.preheader, label %polly.par.exit

polly.loop_preheader.preheader:                   ; preds = %polly.par.setup.split
  %polly.access.cast.polly.subfunc.arg.call.i19 = bitcast i8* %polly.subfunc.arg.call.i19 to double*
  br label %polly.loop_preheader

polly.par.exit:                                   ; preds = %polly.par.checkNext, %polly.par.setup.split
  ret void

polly.par.checkNext:                              ; preds = %polly.loop_exit3
  %4 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy.15, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasWork = icmp eq i32 %4, 1
  br i1 %polly.hasWork, label %polly.loop_preheader, label %polly.par.exit

polly.loop_exit3:                                 ; preds = %polly.loop_exit9.split.us.us, %polly.loop_preheader8.preheader, %polly.loop_if
  %polly.indvar_next = add i64 %polly.indvar, 1
  %indvars.iv.next43 = add i64 %indvars.iv42, 32
  %indvars.iv.next51 = add i64 %indvars.iv50, -32
  %exitcond59.not = icmp eq i64 %polly.indvar, %smax58
  br i1 %exitcond59.not, label %polly.par.checkNext, label %polly.loop_if

polly.loop_preheader:                             ; preds = %polly.loop_preheader.preheader, %polly.par.checkNext
  %polly.indvar.LB = load i64, i64* %polly.par.LBPtr, align 8
  %polly.indvar.UB = load i64, i64* %polly.par.UBPtr, align 8
  %5 = shl i64 %polly.indvar.LB, 5
  %6 = mul i64 %polly.indvar.LB, -32
  %smax58 = call i64 @llvm.smax.i64(i64 %polly.indvar.LB, i64 %polly.indvar.UB)
  br label %polly.loop_if

polly.loop_if:                                    ; preds = %polly.loop_preheader, %polly.loop_exit3
  %indvars.iv55.in = phi i64 [ %polly.indvar.LB, %polly.loop_preheader ], [ %indvars.iv55, %polly.loop_exit3 ]
  %indvars.iv50 = phi i64 [ %6, %polly.loop_preheader ], [ %indvars.iv.next51, %polly.loop_exit3 ]
  %indvars.iv42 = phi i64 [ %5, %polly.loop_preheader ], [ %indvars.iv.next43, %polly.loop_exit3 ]
  %polly.indvar = phi i64 [ %polly.indvar.LB, %polly.loop_preheader ], [ %polly.indvar_next, %polly.loop_exit3 ]
  %indvars.iv55 = add i64 %indvars.iv55.in, 1
  %smin52 = call i64 @llvm.smin.i64(i64 %indvars.iv50, i64 -2568)
  %7 = add nsw i64 %smin52, 2599
  %smax = call i64 @llvm.smax.i64(i64 %7, i64 0)
  %polly.loop_guard = icmp sgt i64 %polly.indvar, -1
  br i1 %polly.loop_guard, label %polly.loop_preheader8.preheader, label %polly.loop_exit3

polly.loop_preheader8.preheader:                  ; preds = %polly.loop_if
  %8 = mul nsw i64 %polly.indvar, -32
  %polly.loop_guard1760 = icmp sgt i64 %8, -2600
  %9 = shl nsw i64 %polly.indvar, 5
  br i1 %polly.loop_guard1760, label %polly.loop_preheader8.us, label %polly.loop_exit3

polly.loop_preheader8.us:                         ; preds = %polly.loop_preheader8.preheader, %polly.loop_exit9.split.us.us
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %polly.loop_exit9.split.us.us ], [ %indvars.iv42, %polly.loop_preheader8.preheader ]
  %polly.indvar4.us = phi i64 [ %polly.indvar_next5.us, %polly.loop_exit9.split.us.us ], [ 0, %polly.loop_preheader8.preheader ]
  %10 = shl nsw i64 %polly.indvar4.us, 5
  %11 = sub nsw i64 %9, %10
  br label %polly.loop_if13.us.us

polly.loop_if13.us.us:                            ; preds = %polly.loop_exit16.loopexit.us.us, %polly.loop_preheader8.us
  %polly.indvar10.us.us = phi i64 [ %polly.indvar_next11.us.us, %polly.loop_exit16.loopexit.us.us ], [ 0, %polly.loop_preheader8.us ]
  %12 = mul nsw i64 %polly.indvar10.us.us, -32
  %smin62 = call i64 @llvm.smin.i64(i64 %12, i64 -1968)
  %13 = add nsw i64 %smin62, 2000
  %14 = shl nsw i64 %polly.indvar10.us.us, 5
  br label %polly.loop_if21.us.us

polly.loop_if21.us.us:                            ; preds = %polly.loop_exit24.us.us, %polly.loop_if13.us.us
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %polly.loop_exit24.us.us ], [ %indvars.iv44, %polly.loop_if13.us.us ]
  %polly.indvar18.us.us = phi i64 [ %polly.indvar_next19.us.us, %polly.loop_exit24.us.us ], [ 0, %polly.loop_if13.us.us ]
  %smin48 = call i64 @llvm.smin.i64(i64 %indvars.iv46, i64 31)
  %15 = add nsw i64 %polly.indvar18.us.us, %11
  %polly.loop_guard25.us.us61 = icmp sgt i64 %15, -1
  br i1 %polly.loop_guard25.us.us61, label %polly.loop_preheader30.preheader.us.us, label %polly.loop_exit24.us.us

polly.loop_preheader30.us.us:                     ; preds = %polly.loop_preheader30.preheader.us.us, %polly.loop_exit31.us.us
  %polly.indvar26.us.us = phi i64 [ %polly.indvar_next27.us.us, %polly.loop_exit31.us.us ], [ 0, %polly.loop_preheader30.preheader.us.us ]
  %16 = add nuw nsw i64 %polly.indvar26.us.us, %10
  %17 = mul i64 %16, 16000
  %scevgep37.us.us = getelementptr [2600 x double], [2600 x double]* %polly.subfunc.arg.arraydecay.merge, i64 %24, i64 %16
  %scevgep37.promoted.us.us = load double, double* %scevgep37.us.us, align 8, !alias.scope !38, !noalias !32
  br label %polly.stmt.for.body11.i.us.us

polly.stmt.for.body11.i.us.us:                    ; preds = %polly.stmt.for.body11.i.us.us, %polly.loop_preheader30.us.us
  %p_add.i39.us.us = phi double [ %scevgep37.promoted.us.us, %polly.loop_preheader30.us.us ], [ %p_add.i.us.us.1, %polly.stmt.for.body11.i.us.us ]
  %polly.indvar32.us.us = phi i64 [ 0, %polly.loop_preheader30.us.us ], [ %polly.indvar_next33.us.us.1, %polly.stmt.for.body11.i.us.us ]
  %niter = phi i64 [ %13, %polly.loop_preheader30.us.us ], [ %niter.nsub.1, %polly.stmt.for.body11.i.us.us ]
  %18 = add nuw nsw i64 %polly.indvar32.us.us, %14
  %polly.access.add.polly.subfunc.arg.call.i19.us.us = add nsw i64 %18, %polly.access.mul.polly.subfunc.arg.call.i19.us.us
  %polly.access.polly.subfunc.arg.call.i19.us.us = getelementptr double, double* %polly.access.cast.polly.subfunc.arg.call.i19, i64 %polly.access.add.polly.subfunc.arg.call.i19.us.us
  %_p_scalar_.us.us = load double, double* %polly.access.polly.subfunc.arg.call.i19.us.us, align 8, !alias.scope !33, !noalias !38
  %p_mul16.i.us.us = fmul double %_p_scalar_.us.us, 1.500000e+00
  %19 = shl i64 %18, 3
  %20 = add i64 %19, %17
  %scevgep.us.us = getelementptr i8, i8* %polly.subfunc.arg.call.i19, i64 %20
  %scevgep35.us.us = bitcast i8* %scevgep.us.us to double*
  %_p_scalar_36.us.us = load double, double* %scevgep35.us.us, align 8, !alias.scope !33, !noalias !38
  %p_mul21.i.us.us = fmul double %p_mul16.i.us.us, %_p_scalar_36.us.us
  %p_add.i.us.us = fadd double %p_add.i39.us.us, %p_mul21.i.us.us
  %polly.indvar_next33.us.us = or i64 %polly.indvar32.us.us, 1
  %21 = add nuw nsw i64 %polly.indvar_next33.us.us, %14
  %polly.access.add.polly.subfunc.arg.call.i19.us.us.1 = add nsw i64 %21, %polly.access.mul.polly.subfunc.arg.call.i19.us.us
  %polly.access.polly.subfunc.arg.call.i19.us.us.1 = getelementptr double, double* %polly.access.cast.polly.subfunc.arg.call.i19, i64 %polly.access.add.polly.subfunc.arg.call.i19.us.us.1
  %_p_scalar_.us.us.1 = load double, double* %polly.access.polly.subfunc.arg.call.i19.us.us.1, align 8, !alias.scope !33, !noalias !38
  %p_mul16.i.us.us.1 = fmul double %_p_scalar_.us.us.1, 1.500000e+00
  %22 = shl i64 %21, 3
  %23 = add i64 %22, %17
  %scevgep.us.us.1 = getelementptr i8, i8* %polly.subfunc.arg.call.i19, i64 %23
  %scevgep35.us.us.1 = bitcast i8* %scevgep.us.us.1 to double*
  %_p_scalar_36.us.us.1 = load double, double* %scevgep35.us.us.1, align 8, !alias.scope !33, !noalias !38
  %p_mul21.i.us.us.1 = fmul double %p_mul16.i.us.us.1, %_p_scalar_36.us.us.1
  %p_add.i.us.us.1 = fadd double %p_add.i.us.us, %p_mul21.i.us.us.1
  %polly.indvar_next33.us.us.1 = add nuw nsw i64 %polly.indvar32.us.us, 2
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %polly.loop_exit31.us.us, label %polly.stmt.for.body11.i.us.us

polly.loop_exit31.us.us:                          ; preds = %polly.stmt.for.body11.i.us.us
  store double %p_add.i.us.us.1, double* %scevgep37.us.us, align 8, !alias.scope !38, !noalias !32
  %polly.indvar_next27.us.us = add nuw nsw i64 %polly.indvar26.us.us, 1
  %exitcond49.not = icmp eq i64 %polly.indvar26.us.us, %smin48
  br i1 %exitcond49.not, label %polly.loop_exit24.us.us, label %polly.loop_preheader30.us.us

polly.loop_exit24.us.us:                          ; preds = %polly.loop_exit31.us.us, %polly.loop_if21.us.us
  %polly.indvar_next19.us.us = add nuw nsw i64 %polly.indvar18.us.us, 1
  %indvars.iv.next47 = add i64 %indvars.iv46, 1
  %exitcond53.not = icmp eq i64 %polly.indvar18.us.us, %smax
  br i1 %exitcond53.not, label %polly.loop_exit16.loopexit.us.us, label %polly.loop_if21.us.us

polly.loop_preheader30.preheader.us.us:           ; preds = %polly.loop_if21.us.us
  %24 = add nsw i64 %polly.indvar18.us.us, %9
  %polly.access.mul.polly.subfunc.arg.call.i19.us.us = mul nsw i64 %24, 2000
  br label %polly.loop_preheader30.us.us

polly.loop_exit16.loopexit.us.us:                 ; preds = %polly.loop_exit24.us.us
  %polly.indvar_next11.us.us = add nuw nsw i64 %polly.indvar10.us.us, 1
  %exitcond54.not = icmp eq i64 %polly.indvar_next11.us.us, 63
  br i1 %exitcond54.not, label %polly.loop_exit9.split.us.us, label %polly.loop_if13.us.us

polly.loop_exit9.split.us.us:                     ; preds = %polly.loop_exit16.loopexit.us.us
  %polly.indvar_next5.us = add nuw i64 %polly.indvar4.us, 1
  %indvars.iv.next45 = add i64 %indvars.iv44, -32
  %exitcond57.not = icmp eq i64 %polly.indvar4.us, %indvars.iv55.in
  br i1 %exitcond57.not, label %polly.loop_exit3, label %polly.loop_preheader8.us
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #7

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #7

attributes #0 = { nounwind uwtable "frame-pointer"="none" "no-trapping-math"="true" "polly-optimized" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inaccessiblemem_or_argmemonly nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inaccessiblememonly nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { "polly.skip.fn" }
attributes #7 = { nofree nosync nounwind readnone speculatable willreturn }
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
!6 = distinct !{!6, !7, !8}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{!"llvm.loop.isvectorized", i32 1}
!9 = distinct !{!9, !7, !10, !8}
!10 = !{!"llvm.loop.unroll.runtime.disable"}
!11 = distinct !{!11, !7, !8}
!12 = distinct !{!12, !7, !10, !8}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = !{!16, !16, i64 0}
!16 = !{!"any pointer", !4, i64 0}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !20, !"polly.alias.scope.MemRef0"}
!20 = distinct !{!20, !"polly.alias.scope.domain"}
!21 = !{!22}
!22 = distinct !{!22, !20, !"polly.alias.scope.MemRef2"}
!23 = distinct !{}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.parallel_accesses", !23}
!26 = !{!19}
!27 = distinct !{}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.parallel_accesses", !27}
!30 = distinct !{!30, !31, !"polly.alias.scope.MemRef0"}
!31 = distinct !{!31, !"polly.alias.scope.domain"}
!32 = !{!33}
!33 = distinct !{!33, !31, !"polly.alias.scope.MemRef1"}
!34 = distinct !{}
!35 = distinct !{!35, !36, !10, !8}
!36 = !{!"llvm.loop.parallel_accesses", !34}
!37 = distinct !{!37, !36, !8}
!38 = !{!30}

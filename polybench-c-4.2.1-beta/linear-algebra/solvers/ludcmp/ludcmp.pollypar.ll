; ModuleID = 'ludcmp.c'
source_filename = "ludcmp.c"
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
@.str.3 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1
@.str.ident = private constant [23 x i8] c"Source location dummy.\00", align 1
@.loc.dummy = private constant %struct.ident_t { i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.ident, i32 0, i32 0) }, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** nocapture readonly %argv) local_unnamed_addr #0 {
entry.split:
  %polly.par.userContext = alloca { i64, i8* }, align 8
  %call.i = tail call noalias dereferenceable_or_null(128000000) i8* @malloc(i64 128000000) #10
  %call.i29 = tail call noalias dereferenceable_or_null(32000) i8* @malloc(i64 32000) #10
  %call.i30 = tail call noalias dereferenceable_or_null(32000) i8* @malloc(i64 32000) #10
  %call.i31 = tail call noalias dereferenceable_or_null(32000) i8* @malloc(i64 32000) #10
  %arraydecay4 = bitcast i8* %call.i29 to double*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32000) %call.i30, i8 0, i64 32000, i1 false)
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32000) %call.i31, i8 0, i64 32000, i1 false)
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %entry.split
  %indvars.iv.i = phi i64 [ 0, %entry.split ], [ %indvars.iv.next.i.1, %for.body.i ]
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
  %.neg.i = mul nsw i64 %indvar.i, -8
  %5 = add nsw i64 %.neg.i, 31984
  %xtraiter = and i64 %2, 1
  %6 = icmp eq i64 %indvar.i, 0
  br i1 %6, label %for.end27.i.unr-lcssa, label %for.cond13.preheader.i.new

for.cond13.preheader.i.new:                       ; preds = %for.cond13.preheader.i
  %unroll_iter = and i64 %2, -2
  br label %for.body16.i

for.body16.i:                                     ; preds = %for.body16.i, %for.cond13.preheader.i.new
  %indvars.iv16.i = phi i64 [ 0, %for.cond13.preheader.i.new ], [ %indvars.iv.next17.i.1, %for.body16.i ]
  %niter = phi i64 [ %unroll_iter, %for.cond13.preheader.i.new ], [ %niter.nsub.1, %for.body16.i ]
  %7 = trunc i64 %indvars.iv16.i to i32
  %8 = sub i32 0, %7
  %conv17.i = sitofp i32 %8 to double
  %div19.i = fdiv double %conv17.i, 4.000000e+03
  %add20.i = fadd double %div19.i, 1.000000e+00
  %arrayidx24.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvar.i, i64 %indvars.iv16.i
  store double %add20.i, double* %arrayidx24.i, align 8, !tbaa !2
  %indvars.iv.next17.i = or i64 %indvars.iv16.i, 1
  %9 = trunc i64 %indvars.iv16.i to i32
  %.neg = xor i32 %9, -1
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
  %10 = trunc i64 %indvars.iv16.i.unr to i32
  %11 = sub i32 0, %10
  %conv17.i.epil = sitofp i32 %11 to double
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
  %12 = and i64 %5, 34359738360
  %scevgep.i = getelementptr [4000 x double], [4000 x double]* %arraydecay, i64 0, i64 %4
  %13 = add nuw nsw i64 %12, 8
  %scevgep22.i = bitcast double* %scevgep.i to i8*
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(1) %scevgep22.i, i8 0, i64 %13, i1 false) #10
  br label %for.end39.i

for.end39.i:                                      ; preds = %for.body32.lr.ph.i, %for.end27.i
  %arrayidx43.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvar.i, i64 %indvar.i
  store double 1.000000e+00, double* %arrayidx43.i, align 8, !tbaa !2
  %exitcond27.not.i = icmp eq i64 %indvar.next.i, 4000
  br i1 %exitcond27.not.i, label %for.end46.i, label %for.cond13.preheader.i, !llvm.loop !9

for.end46.i:                                      ; preds = %for.end39.i
  %call.i.i = tail call noalias dereferenceable_or_null(128000000) i8* @malloc(i64 128000000) #10
  tail call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(128000000) %call.i.i, i8 0, i64 128000000, i1 false) #10
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
  %broadcast.splatinsert161 = insertelement <2 x double> poison, double %15, i32 0
  %broadcast.splat162 = shufflevector <2 x double> %broadcast.splatinsert161, <2 x double> poison, <2 x i32> zeroinitializer
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
  %32 = fmul <2 x double> %broadcast.splat162, %30
  %33 = getelementptr inbounds [4000 x [4000 x double]], [4000 x [4000 x double]]* %14, i64 0, i64 %indvars.iv36.i, i64 %index
  %34 = bitcast double* %33 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %34, align 8, !tbaa !2
  %35 = getelementptr inbounds double, double* %33, i64 2
  %36 = bitcast double* %35 to <2 x double>*
  %wide.load163 = load <2 x double>, <2 x double>* %36, align 8, !tbaa !2
  %37 = fadd <2 x double> %wide.load, %31
  %38 = fadd <2 x double> %wide.load163, %32
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
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32000) %scevgep4445.i, i8* noundef nonnull align 8 dereferenceable(32000) %scevgep46.i, i64 32000, i1 false) #10
  %indvar.next43.i = or i64 %indvar42.i, 1
  %scevgep44.i.1 = getelementptr [4000 x double], [4000 x double]* %arraydecay, i64 %indvar.next43.i, i64 0
  %scevgep4445.i.1 = bitcast double* %scevgep44.i.1 to i8*
  %43 = mul nuw nsw i64 %indvar.next43.i, 32000
  %scevgep46.i.1 = getelementptr i8, i8* %call.i.i, i64 %43
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(32000) %scevgep4445.i.1, i8* noundef nonnull align 8 dereferenceable(32000) %scevgep46.i.1, i64 32000, i1 false) #10
  %indvar.next43.i.1 = add nuw nsw i64 %indvar42.i, 2
  %exitcond49.not.i.1 = icmp eq i64 %indvar.next43.i.1, 4000
  br i1 %exitcond49.not.i.1, label %polly.loop_preheader, label %for.cond103.preheader.i, !llvm.loop !14

kernel_ludcmp.exit:                               ; preds = %polly.stmt.for.end104.i
  tail call void (...) @polybench_timer_stop() #10
  tail call void (...) @polybench_timer_print() #10
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_ludcmp.exit
  %44 = load i8*, i8** %argv, align 8, !tbaa !15
  %strcmpload = load i8, i8* %44, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !15
  %46 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %45) #11
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !15
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #11
  br label %for.body.i41

for.body.i41:                                     ; preds = %if.end.i, %if.then
  %indvars.iv.i40 = phi i64 [ 0, %if.then ], [ %indvars.iv.next.i43, %if.end.i ]
  %i.02.i = phi i32 [ 0, %if.then ], [ %inc.i, %if.end.i ]
  %rem.lhs.trunc.i = trunc i32 %i.02.i to i16
  %rem1.i = urem i16 %rem.lhs.trunc.i, 20
  %cmp2.i = icmp eq i16 %rem1.i, 0
  br i1 %cmp2.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i41
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !15
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %48) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i41
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !15
  %arrayidx.i42 = getelementptr inbounds double, double* %arraydecay5, i64 %indvars.iv.i40
  %50 = load double, double* %arrayidx.i42, align 8, !tbaa !2
  %call4.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %50) #11
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i40, 1
  %inc.i = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 4000
  br i1 %exitcond.not.i44, label %print_array.exit, label %for.body.i41, !llvm.loop !17

print_array.exit:                                 ; preds = %if.end.i
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !15
  %call5.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #11
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !15
  %53 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %52) #11
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_ludcmp.exit
  tail call void @free(i8* %call.i) #10
  tail call void @free(i8* %call.i29) #10
  tail call void @free(i8* nonnull %call.i30) #10
  tail call void @free(i8* %call.i31) #10
  ret i32 0

polly.parallel.for:                               ; preds = %polly.stmt.for.end.i
  store i64 %polly.indvar, i64* %polly.subfn.storeaddr.polly.indvar, align 8
  store i8* %call.i, i8** %polly.subfn.storeaddr.call.i, align 8
  %54 = sub nuw nsw i64 4000, %polly.indvar
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @.loc.dummy, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, i64, i8*)* @main_polly_subfn to void (i32*, i32*, ...)*), i64 0, i64 %54, i64 1, { i64, i8* }* nonnull %polly.par.userContext) #10
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %exitcond149.not = icmp eq i64 %polly.indvar_next, 4000
  br i1 %exitcond149.not, label %polly.loop_if88.preheader, label %polly.loop_preheader47, !llvm.loop !18

polly.loop_if88.preheader:                        ; preds = %polly.parallel.for
  %polly.access.cast.call.i31 = bitcast i8* %call.i31 to double*
  br label %polly.loop_if88

polly.loop_preheader:                             ; preds = %for.cond103.preheader.i
  tail call void @free(i8* nonnull %call.i.i) #10
  tail call void (...) @polybench_timer_start() #10
  %polly.subfn.storeaddr.polly.indvar = getelementptr inbounds { i64, i8* }, { i64, i8* }* %polly.par.userContext, i64 0, i32 0
  %polly.access.cast.call.i = bitcast i8* %call.i to double*
  %polly.subfn.storeaddr.call.i = getelementptr inbounds { i64, i8* }, { i64, i8* }* %polly.par.userContext, i64 0, i32 1
  br label %polly.loop_preheader47

polly.stmt.for.end.i.loopexit.unr-lcssa:          ; preds = %polly.stmt.for.body8.i, %polly.loop_preheader53
  %polly.access.call.i.reload.unr = phi double [ %polly.access.call.i.reload.pre, %polly.loop_preheader53 ], [ %p_sub.i.1, %polly.stmt.for.body8.i ]
  %polly.indvar55.unr = phi i64 [ 0, %polly.loop_preheader53 ], [ %polly.indvar_next56.1, %polly.stmt.for.body8.i ]
  %lcmp.mod165.not = icmp eq i64 %xtraiter164, 0
  br i1 %lcmp.mod165.not, label %polly.stmt.for.end.i, label %polly.stmt.for.body8.i.epil

polly.stmt.for.body8.i.epil:                      ; preds = %polly.stmt.for.end.i.loopexit.unr-lcssa
  %55 = shl nuw nsw i64 %polly.indvar55.unr, 3
  %scevgep58.epil = getelementptr i8, i8* %scevgep, i64 %55
  %scevgep5859.epil = bitcast i8* %scevgep58.epil to double*
  %_p_scalar_.epil = load double, double* %scevgep5859.epil, align 8, !alias.scope !19, !noalias !21
  %56 = mul nuw nsw i64 %polly.indvar55.unr, 32000
  %scevgep61.epil = getelementptr i8, i8* %scevgep60, i64 %56
  %scevgep6162.epil = bitcast i8* %scevgep61.epil to double*
  %_p_scalar_63.epil = load double, double* %scevgep6162.epil, align 8, !alias.scope !19, !noalias !21
  %p_mul.i36.epil = fmul double %_p_scalar_.epil, %_p_scalar_63.epil
  %p_sub.i.epil = fsub double %polly.access.call.i.reload.unr, %p_mul.i36.epil
  store double %p_sub.i.epil, double* %polly.access.call.i, align 8, !alias.scope !19, !noalias !21
  br label %polly.stmt.for.end.i

polly.stmt.for.end.i:                             ; preds = %polly.stmt.for.body8.i.epil, %polly.stmt.for.end.i.loopexit.unr-lcssa, %polly.loop_if.polly.stmt.for.end.i_crit_edge
  %.pre-phi = phi i64 [ 0, %polly.loop_if.polly.stmt.for.end.i_crit_edge ], [ %63, %polly.stmt.for.end.i.loopexit.unr-lcssa ], [ %63, %polly.stmt.for.body8.i.epil ]
  %polly.access.add.call.i70.pre-phi = phi i64 [ %.pre, %polly.loop_if.polly.stmt.for.end.i_crit_edge ], [ %polly.access.add.call.i, %polly.stmt.for.end.i.loopexit.unr-lcssa ], [ %polly.access.add.call.i, %polly.stmt.for.body8.i.epil ]
  %polly.access.call.i71 = getelementptr double, double* %polly.access.cast.call.i, i64 %polly.access.add.call.i70.pre-phi
  %polly.access.call.i71.reload = load double, double* %polly.access.call.i71, align 8, !alias.scope !19, !noalias !21
  %57 = mul nuw nsw i64 %polly.indvar49, 32008
  %scevgep72 = getelementptr i8, i8* %call.i, i64 %57
  %scevgep7273 = bitcast i8* %scevgep72 to double*
  %_p_scalar_74 = load double, double* %scevgep7273, align 8, !alias.scope !19, !noalias !21
  %p_div.i39 = fdiv double %polly.access.call.i71.reload, %_p_scalar_74
  %scevgep76 = getelementptr i8, i8* %scevgep, i64 %.pre-phi
  %scevgep7677 = bitcast i8* %scevgep76 to double*
  store double %p_div.i39, double* %scevgep7677, align 8, !alias.scope !19, !noalias !21
  %polly.indvar_next50 = add nuw nsw i64 %polly.indvar49, 1
  %exitcond148.not = icmp eq i64 %polly.indvar_next50, %polly.indvar
  br i1 %exitcond148.not, label %polly.parallel.for, label %polly.loop_if, !llvm.loop !25

polly.loop_preheader47:                           ; preds = %polly.loop_preheader, %polly.parallel.for
  %polly.indvar = phi i64 [ 1, %polly.loop_preheader ], [ %polly.indvar_next, %polly.parallel.for ]
  %58 = mul nuw nsw i64 %polly.indvar, 32000
  %scevgep = getelementptr i8, i8* %call.i, i64 %58
  %polly.access.mul.call.i = mul nuw nsw i64 %polly.indvar, 4000
  br label %polly.loop_if

polly.loop_if:                                    ; preds = %polly.loop_preheader47, %polly.stmt.for.end.i
  %polly.indvar49 = phi i64 [ 0, %polly.loop_preheader47 ], [ %polly.indvar_next50, %polly.stmt.for.end.i ]
  %polly.loop_guard.not = icmp eq i64 %polly.indvar49, 0
  br i1 %polly.loop_guard.not, label %polly.loop_if.polly.stmt.for.end.i_crit_edge, label %polly.loop_preheader53

polly.loop_if.polly.stmt.for.end.i_crit_edge:     ; preds = %polly.loop_if
  %.pre = add nuw nsw i64 %polly.indvar49, %polly.access.mul.call.i
  br label %polly.stmt.for.end.i

polly.stmt.for.body8.i:                           ; preds = %polly.stmt.for.body8.i, %polly.loop_preheader53.new
  %polly.access.call.i.reload = phi double [ %polly.access.call.i.reload.pre, %polly.loop_preheader53.new ], [ %p_sub.i.1, %polly.stmt.for.body8.i ]
  %polly.indvar55 = phi i64 [ 0, %polly.loop_preheader53.new ], [ %polly.indvar_next56.1, %polly.stmt.for.body8.i ]
  %niter167 = phi i64 [ %unroll_iter166, %polly.loop_preheader53.new ], [ %niter167.nsub.1, %polly.stmt.for.body8.i ]
  %59 = shl nuw nsw i64 %polly.indvar55, 3
  %scevgep58 = getelementptr i8, i8* %scevgep, i64 %59
  %scevgep5859 = bitcast i8* %scevgep58 to double*
  %_p_scalar_ = load double, double* %scevgep5859, align 8, !alias.scope !19, !noalias !21
  %60 = mul nuw nsw i64 %polly.indvar55, 32000
  %scevgep61 = getelementptr i8, i8* %scevgep60, i64 %60
  %scevgep6162 = bitcast i8* %scevgep61 to double*
  %_p_scalar_63 = load double, double* %scevgep6162, align 8, !alias.scope !19, !noalias !21
  %p_mul.i36 = fmul double %_p_scalar_, %_p_scalar_63
  %p_sub.i = fsub double %polly.access.call.i.reload, %p_mul.i36
  store double %p_sub.i, double* %polly.access.call.i, align 8, !alias.scope !19, !noalias !21
  %polly.indvar_next56 = or i64 %polly.indvar55, 1
  %61 = shl nuw nsw i64 %polly.indvar_next56, 3
  %scevgep58.1 = getelementptr i8, i8* %scevgep, i64 %61
  %scevgep5859.1 = bitcast i8* %scevgep58.1 to double*
  %_p_scalar_.1 = load double, double* %scevgep5859.1, align 8, !alias.scope !19, !noalias !21
  %62 = mul nuw nsw i64 %polly.indvar_next56, 32000
  %scevgep61.1 = getelementptr i8, i8* %scevgep60, i64 %62
  %scevgep6162.1 = bitcast i8* %scevgep61.1 to double*
  %_p_scalar_63.1 = load double, double* %scevgep6162.1, align 8, !alias.scope !19, !noalias !21
  %p_mul.i36.1 = fmul double %_p_scalar_.1, %_p_scalar_63.1
  %p_sub.i.1 = fsub double %p_sub.i, %p_mul.i36.1
  store double %p_sub.i.1, double* %polly.access.call.i, align 8, !alias.scope !19, !noalias !21
  %polly.indvar_next56.1 = add nuw nsw i64 %polly.indvar55, 2
  %niter167.nsub.1 = add i64 %niter167, -2
  %niter167.ncmp.1 = icmp eq i64 %niter167.nsub.1, 0
  br i1 %niter167.ncmp.1, label %polly.stmt.for.end.i.loopexit.unr-lcssa, label %polly.stmt.for.body8.i, !llvm.loop !26

polly.loop_preheader53:                           ; preds = %polly.loop_if
  %63 = shl nuw nsw i64 %polly.indvar49, 3
  %scevgep60 = getelementptr i8, i8* %call.i, i64 %63
  %polly.access.add.call.i = add nuw nsw i64 %polly.indvar49, %polly.access.mul.call.i
  %polly.access.call.i = getelementptr double, double* %polly.access.cast.call.i, i64 %polly.access.add.call.i
  %polly.access.call.i.reload.pre = load double, double* %polly.access.call.i, align 8, !alias.scope !19, !noalias !21
  %xtraiter164 = and i64 %polly.indvar49, 1
  %64 = icmp eq i64 %polly.indvar49, 1
  br i1 %64, label %polly.stmt.for.end.i.loopexit.unr-lcssa, label %polly.loop_preheader53.new

polly.loop_preheader53.new:                       ; preds = %polly.loop_preheader53
  %unroll_iter166 = and i64 %polly.indvar49, 9223372036854775806
  br label %polly.stmt.for.body8.i

polly.loop_exit91.loopexit.unr-lcssa:             ; preds = %polly.stmt.for.body68.i, %polly.loop_preheader90
  %polly.access.call.i3197.reload.unr = phi double [ %_p_scalar_87, %polly.loop_preheader90 ], [ %p_sub76.i.1, %polly.stmt.for.body68.i ]
  %polly.indvar93.unr = phi i64 [ 0, %polly.loop_preheader90 ], [ %polly.indvar_next94.1, %polly.stmt.for.body68.i ]
  %lcmp.mod169.not = icmp eq i64 %xtraiter168, 0
  br i1 %lcmp.mod169.not, label %polly.loop_exit91, label %polly.stmt.for.body68.i.epil

polly.stmt.for.body68.i.epil:                     ; preds = %polly.loop_exit91.loopexit.unr-lcssa
  %65 = shl nuw nsw i64 %polly.indvar93.unr, 3
  %scevgep99.epil = getelementptr i8, i8* %scevgep98, i64 %65
  %scevgep99100.epil = bitcast i8* %scevgep99.epil to double*
  %_p_scalar_101.epil = load double, double* %scevgep99100.epil, align 8, !alias.scope !19, !noalias !21
  %scevgep102.epil = getelementptr i8, i8* %call.i31, i64 %65
  %scevgep102103.epil = bitcast i8* %scevgep102.epil to double*
  %_p_scalar_104.epil = load double, double* %scevgep102103.epil, align 8, !alias.scope !23, !noalias !27
  %p_mul75.i.epil = fmul double %_p_scalar_101.epil, %_p_scalar_104.epil
  %p_sub76.i.epil = fsub double %polly.access.call.i3197.reload.unr, %p_mul75.i.epil
  store double %p_sub76.i.epil, double* %polly.access.call.i31, align 8, !alias.scope !23, !noalias !27
  br label %polly.loop_exit91

polly.loop_exit91:                                ; preds = %polly.stmt.for.body68.i.epil, %polly.loop_exit91.loopexit.unr-lcssa, %polly.loop_if88
  %polly.indvar_next83 = add nuw nsw i64 %polly.indvar82, 1
  %exitcond151.not = icmp eq i64 %polly.indvar_next83, 4000
  br i1 %exitcond151.not, label %polly.loop_preheader108, label %polly.loop_if88, !llvm.loop !28

polly.loop_if88:                                  ; preds = %polly.loop_if88.preheader, %polly.loop_exit91
  %polly.indvar82 = phi i64 [ %polly.indvar_next83, %polly.loop_exit91 ], [ 0, %polly.loop_if88.preheader ]
  %66 = shl nuw nsw i64 %polly.indvar82, 3
  %scevgep85 = getelementptr i8, i8* %call.i29, i64 %66
  %scevgep8586 = bitcast i8* %scevgep85 to double*
  %_p_scalar_87 = load double, double* %scevgep8586, align 8, !alias.scope !22, !noalias !29
  %polly.access.call.i31 = getelementptr double, double* %polly.access.cast.call.i31, i64 %polly.indvar82
  store double %_p_scalar_87, double* %polly.access.call.i31, align 8, !alias.scope !23, !noalias !27
  %polly.loop_guard92.not = icmp eq i64 %polly.indvar82, 0
  br i1 %polly.loop_guard92.not, label %polly.loop_exit91, label %polly.loop_preheader90

polly.stmt.for.body68.i:                          ; preds = %polly.stmt.for.body68.i, %polly.loop_preheader90.new
  %polly.access.call.i3197.reload = phi double [ %_p_scalar_87, %polly.loop_preheader90.new ], [ %p_sub76.i.1, %polly.stmt.for.body68.i ]
  %polly.indvar93 = phi i64 [ 0, %polly.loop_preheader90.new ], [ %polly.indvar_next94.1, %polly.stmt.for.body68.i ]
  %niter171 = phi i64 [ %unroll_iter170, %polly.loop_preheader90.new ], [ %niter171.nsub.1, %polly.stmt.for.body68.i ]
  %67 = shl nuw nsw i64 %polly.indvar93, 3
  %scevgep99 = getelementptr i8, i8* %scevgep98, i64 %67
  %scevgep99100 = bitcast i8* %scevgep99 to double*
  %_p_scalar_101 = load double, double* %scevgep99100, align 8, !alias.scope !19, !noalias !21
  %scevgep102 = getelementptr i8, i8* %call.i31, i64 %67
  %scevgep102103 = bitcast i8* %scevgep102 to double*
  %_p_scalar_104 = load double, double* %scevgep102103, align 8, !alias.scope !23, !noalias !27
  %p_mul75.i = fmul double %_p_scalar_101, %_p_scalar_104
  %p_sub76.i = fsub double %polly.access.call.i3197.reload, %p_mul75.i
  store double %p_sub76.i, double* %polly.access.call.i31, align 8, !alias.scope !23, !noalias !27
  %polly.indvar_next94 = shl i64 %polly.indvar93, 3
  %68 = or i64 %polly.indvar_next94, 8
  %scevgep99.1 = getelementptr i8, i8* %scevgep98, i64 %68
  %scevgep99100.1 = bitcast i8* %scevgep99.1 to double*
  %_p_scalar_101.1 = load double, double* %scevgep99100.1, align 8, !alias.scope !19, !noalias !21
  %scevgep102.1 = getelementptr i8, i8* %call.i31, i64 %68
  %scevgep102103.1 = bitcast i8* %scevgep102.1 to double*
  %_p_scalar_104.1 = load double, double* %scevgep102103.1, align 8, !alias.scope !23, !noalias !27
  %p_mul75.i.1 = fmul double %_p_scalar_101.1, %_p_scalar_104.1
  %p_sub76.i.1 = fsub double %p_sub76.i, %p_mul75.i.1
  store double %p_sub76.i.1, double* %polly.access.call.i31, align 8, !alias.scope !23, !noalias !27
  %polly.indvar_next94.1 = add nuw nsw i64 %polly.indvar93, 2
  %niter171.nsub.1 = add i64 %niter171, -2
  %niter171.ncmp.1 = icmp eq i64 %niter171.nsub.1, 0
  br i1 %niter171.ncmp.1, label %polly.loop_exit91.loopexit.unr-lcssa, label %polly.stmt.for.body68.i, !llvm.loop !30

polly.loop_preheader90:                           ; preds = %polly.loop_if88
  %69 = mul nuw nsw i64 %polly.indvar82, 32000
  %scevgep98 = getelementptr i8, i8* %call.i, i64 %69
  %xtraiter168 = and i64 %polly.indvar82, 1
  %70 = icmp eq i64 %polly.indvar82, 1
  br i1 %70, label %polly.loop_exit91.loopexit.unr-lcssa, label %polly.loop_preheader90.new

polly.loop_preheader90.new:                       ; preds = %polly.loop_preheader90
  %unroll_iter170 = and i64 %polly.indvar82, 9223372036854775806
  br label %polly.stmt.for.body68.i

polly.stmt.for.end104.i.loopexit.unr-lcssa:       ; preds = %polly.stmt.for.body93.i, %polly.loop_preheader119
  %p_sub101.i.lcssa.ph = phi double [ undef, %polly.loop_preheader119 ], [ %p_sub101.i.1, %polly.stmt.for.body93.i ]
  %polly.access.call.i30126.reload.unr = phi double [ %_p_scalar_116, %polly.loop_preheader119 ], [ %p_sub101.i.1, %polly.stmt.for.body93.i ]
  %polly.indvar122.unr = phi i64 [ 0, %polly.loop_preheader119 ], [ %polly.indvar_next123.1, %polly.stmt.for.body93.i ]
  %lcmp.mod173.not = icmp eq i64 %xtraiter172, 0
  br i1 %lcmp.mod173.not, label %polly.stmt.for.end104.i, label %polly.stmt.for.body93.i.epil

polly.stmt.for.body93.i.epil:                     ; preds = %polly.stmt.for.end104.i.loopexit.unr-lcssa
  %71 = shl nuw nsw i64 %polly.indvar122.unr, 3
  %scevgep129.epil = getelementptr i8, i8* %scevgep128, i64 %71
  %scevgep129130.epil = bitcast i8* %scevgep129.epil to double*
  %_p_scalar_131.epil = load double, double* %scevgep129130.epil, align 8, !alias.scope !19, !noalias !21
  %scevgep134.epil = getelementptr i8, i8* %scevgep133, i64 %71
  %scevgep134135.epil = bitcast i8* %scevgep134.epil to double*
  %_p_scalar_136.epil = load double, double* %scevgep134135.epil, align 8, !alias.scope !24, !noalias !31
  %p_mul100.i.epil = fmul double %_p_scalar_131.epil, %_p_scalar_136.epil
  %p_sub101.i.epil = fsub double %polly.access.call.i30126.reload.unr, %p_mul100.i.epil
  store double %p_sub101.i.epil, double* %polly.access.call.i30, align 8, !alias.scope !24, !noalias !31
  br label %polly.stmt.for.end104.i

polly.stmt.for.end104.i:                          ; preds = %polly.stmt.for.body93.i.epil, %polly.stmt.for.end104.i.loopexit.unr-lcssa, %polly.loop_if117
  %.pre-phi160 = phi i64 [ 0, %polly.loop_if117 ], [ %76, %polly.stmt.for.end104.i.loopexit.unr-lcssa ], [ %76, %polly.stmt.for.body93.i.epil ]
  %polly.access.call.i30140.reload = phi double [ %_p_scalar_116, %polly.loop_if117 ], [ %p_sub101.i.lcssa.ph, %polly.stmt.for.end104.i.loopexit.unr-lcssa ], [ %p_sub101.i.epil, %polly.stmt.for.body93.i.epil ]
  %scevgep142 = getelementptr i8, i8* %scevgep141, i64 %.pre-phi160
  %scevgep142143 = bitcast i8* %scevgep142 to double*
  %_p_scalar_144 = load double, double* %scevgep142143, align 8, !alias.scope !19, !noalias !21
  %p_div109.i = fdiv double %polly.access.call.i30140.reload, %_p_scalar_144
  %scevgep146 = getelementptr i8, i8* %scevgep145, i64 %72
  %scevgep146147 = bitcast i8* %scevgep146 to double*
  store double %p_div109.i, double* %scevgep146147, align 8, !alias.scope !24, !noalias !31
  %polly.indvar_next111 = add nuw nsw i64 %polly.indvar110, 1
  %exitcond153.not = icmp eq i64 %polly.indvar_next111, 4000
  br i1 %exitcond153.not, label %kernel_ludcmp.exit, label %polly.loop_if117, !llvm.loop !32

polly.loop_preheader108:                          ; preds = %polly.loop_exit91
  %arraydecay5 = bitcast i8* %call.i30 to double*
  %scevgep113 = getelementptr i8, i8* %call.i31, i64 31992
  %scevgep127 = getelementptr i8, i8* %call.i, i64 128000000
  %scevgep132 = getelementptr i8, i8* %call.i30, i64 32000
  %scevgep141 = getelementptr i8, i8* %call.i, i64 127999992
  %scevgep145 = getelementptr i8, i8* %call.i30, i64 31992
  br label %polly.loop_if117

polly.loop_if117:                                 ; preds = %polly.stmt.for.end104.i, %polly.loop_preheader108
  %polly.indvar110 = phi i64 [ 0, %polly.loop_preheader108 ], [ %polly.indvar_next111, %polly.stmt.for.end104.i ]
  %72 = mul nsw i64 %polly.indvar110, -8
  %scevgep114 = getelementptr i8, i8* %scevgep113, i64 %72
  %scevgep114115 = bitcast i8* %scevgep114 to double*
  %_p_scalar_116 = load double, double* %scevgep114115, align 8, !alias.scope !23, !noalias !27
  %73 = sub nuw nsw i64 3999, %polly.indvar110
  %polly.access.call.i30 = getelementptr double, double* %arraydecay5, i64 %73
  store double %_p_scalar_116, double* %polly.access.call.i30, align 8, !alias.scope !24, !noalias !31
  %polly.loop_guard121.not = icmp eq i64 %polly.indvar110, 0
  br i1 %polly.loop_guard121.not, label %polly.stmt.for.end104.i, label %polly.loop_preheader119

polly.stmt.for.body93.i:                          ; preds = %polly.stmt.for.body93.i, %polly.loop_preheader119.new
  %polly.access.call.i30126.reload = phi double [ %_p_scalar_116, %polly.loop_preheader119.new ], [ %p_sub101.i.1, %polly.stmt.for.body93.i ]
  %polly.indvar122 = phi i64 [ 0, %polly.loop_preheader119.new ], [ %polly.indvar_next123.1, %polly.stmt.for.body93.i ]
  %niter175 = phi i64 [ %unroll_iter174, %polly.loop_preheader119.new ], [ %niter175.nsub.1, %polly.stmt.for.body93.i ]
  %74 = shl nuw nsw i64 %polly.indvar122, 3
  %scevgep129 = getelementptr i8, i8* %scevgep128, i64 %74
  %scevgep129130 = bitcast i8* %scevgep129 to double*
  %_p_scalar_131 = load double, double* %scevgep129130, align 8, !alias.scope !19, !noalias !21
  %scevgep134 = getelementptr i8, i8* %scevgep133, i64 %74
  %scevgep134135 = bitcast i8* %scevgep134 to double*
  %_p_scalar_136 = load double, double* %scevgep134135, align 8, !alias.scope !24, !noalias !31
  %p_mul100.i = fmul double %_p_scalar_131, %_p_scalar_136
  %p_sub101.i = fsub double %polly.access.call.i30126.reload, %p_mul100.i
  store double %p_sub101.i, double* %polly.access.call.i30, align 8, !alias.scope !24, !noalias !31
  %polly.indvar_next123 = shl i64 %polly.indvar122, 3
  %75 = or i64 %polly.indvar_next123, 8
  %scevgep129.1 = getelementptr i8, i8* %scevgep128, i64 %75
  %scevgep129130.1 = bitcast i8* %scevgep129.1 to double*
  %_p_scalar_131.1 = load double, double* %scevgep129130.1, align 8, !alias.scope !19, !noalias !21
  %scevgep134.1 = getelementptr i8, i8* %scevgep133, i64 %75
  %scevgep134135.1 = bitcast i8* %scevgep134.1 to double*
  %_p_scalar_136.1 = load double, double* %scevgep134135.1, align 8, !alias.scope !24, !noalias !31
  %p_mul100.i.1 = fmul double %_p_scalar_131.1, %_p_scalar_136.1
  %p_sub101.i.1 = fsub double %p_sub101.i, %p_mul100.i.1
  store double %p_sub101.i.1, double* %polly.access.call.i30, align 8, !alias.scope !24, !noalias !31
  %polly.indvar_next123.1 = add nuw nsw i64 %polly.indvar122, 2
  %niter175.nsub.1 = add i64 %niter175, -2
  %niter175.ncmp.1 = icmp eq i64 %niter175.nsub.1, 0
  br i1 %niter175.ncmp.1, label %polly.stmt.for.end104.i.loopexit.unr-lcssa, label %polly.stmt.for.body93.i, !llvm.loop !33

polly.loop_preheader119:                          ; preds = %polly.loop_if117
  %76 = mul nsw i64 %polly.indvar110, -32008
  %scevgep128 = getelementptr i8, i8* %scevgep127, i64 %76
  %scevgep133 = getelementptr i8, i8* %scevgep132, i64 %72
  %xtraiter172 = and i64 %polly.indvar110, 1
  %77 = icmp eq i64 %polly.indvar110, 1
  br i1 %77, label %polly.stmt.for.end104.i.loopexit.unr-lcssa, label %polly.loop_preheader119.new

polly.loop_preheader119.new:                      ; preds = %polly.loop_preheader119
  %unroll_iter174 = and i64 %polly.indvar110, 9223372036854775806
  br label %polly.stmt.for.body93.i
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

define internal void @main_polly_subfn(i32* %polly.kmpc.global_tid, i32* %polly.kmpc.bound_tid, i64 %polly.kmpc.lb, i64 %polly.kmpc.ub, i64 %polly.kmpc.inc, i8* %polly.kmpc.shared) #8 {
polly.par.setup.split:
  %polly.par.LBPtr = alloca i64, align 8
  %polly.par.UBPtr = alloca i64, align 8
  %polly.par.lastIterPtr = alloca i32, align 4
  %polly.par.StridePtr = alloca i64, align 8
  %0 = bitcast i8* %polly.kmpc.shared to i64*
  %polly.subfunc.arg.polly.indvar = load i64, i64* %0, align 8
  %1 = getelementptr inbounds i8, i8* %polly.kmpc.shared, i64 8
  %2 = bitcast i8* %1 to i8**
  %polly.subfunc.arg.call.i = load i8*, i8** %2, align 8
  %polly.par.global_tid = load i32, i32* %polly.kmpc.global_tid, align 8
  store i64 %polly.kmpc.lb, i64* %polly.par.LBPtr, align 8
  store i64 %polly.kmpc.ub, i64* %polly.par.UBPtr, align 8
  store i32 0, i32* %polly.par.lastIterPtr, align 8
  store i64 %polly.kmpc.inc, i64* %polly.par.StridePtr, align 8
  %polly.indvar.UBAdjusted = add i64 %polly.kmpc.ub, -1
  tail call void @__kmpc_dispatch_init_8(%struct.ident_t* nonnull @.loc.dummy, i32 %polly.par.global_tid, i32 35, i64 %polly.kmpc.lb, i64 %polly.indvar.UBAdjusted, i64 %polly.kmpc.inc, i64 4)
  %3 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasIteration = icmp eq i32 %3, 1
  br i1 %polly.hasIteration, label %polly.loop_preheader.preheader, label %polly.par.exit

polly.loop_preheader.preheader:                   ; preds = %polly.par.setup.split
  %4 = mul i64 %polly.subfunc.arg.polly.indvar, 32000
  %scevgep = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %4
  %5 = shl i64 %polly.subfunc.arg.polly.indvar, 3
  %scevgep9 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %5
  %polly.loop_guard = icmp sgt i64 %polly.subfunc.arg.polly.indvar, 0
  %polly.access.cast.polly.subfunc.arg.call.i = bitcast i8* %polly.subfunc.arg.call.i to double*
  %6 = mul i64 %polly.subfunc.arg.polly.indvar, 4001
  br i1 %polly.loop_guard, label %polly.loop_preheader.us.preheader, label %polly.loop_preheader

polly.loop_preheader.us.preheader:                ; preds = %polly.loop_preheader.preheader
  %xtraiter = and i64 %polly.subfunc.arg.polly.indvar, 1
  %7 = icmp eq i64 %polly.subfunc.arg.polly.indvar, 1
  %unroll_iter = and i64 %polly.subfunc.arg.polly.indvar, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %polly.loop_preheader.us

polly.loop_preheader.us:                          ; preds = %polly.loop_preheader.us.preheader, %polly.par.checkNext.split.us.us
  %polly.indvar.LB.us = load i64, i64* %polly.par.LBPtr, align 8
  %polly.indvar.UB.us = load i64, i64* %polly.par.UBPtr, align 8
  %smax = call i64 @llvm.smax.i64(i64 %polly.indvar.LB.us, i64 %polly.indvar.UB.us)
  br label %polly.loop_if.us.us

polly.loop_if.us.us:                              ; preds = %polly.loop_exit3.loopexit.us.us, %polly.loop_preheader.us
  %polly.indvar.us.us = phi i64 [ %polly.indvar.LB.us, %polly.loop_preheader.us ], [ %polly.indvar_next.us.us, %polly.loop_exit3.loopexit.us.us ]
  %8 = shl i64 %polly.indvar.us.us, 3
  %scevgep10.us.us = getelementptr i8, i8* %scevgep9, i64 %8
  %polly.access.add.polly.subfunc.arg.call.i.us.us = add i64 %6, %polly.indvar.us.us
  %polly.access.polly.subfunc.arg.call.i.us.us = getelementptr double, double* %polly.access.cast.polly.subfunc.arg.call.i, i64 %polly.access.add.polly.subfunc.arg.call.i.us.us
  %polly.access.polly.subfunc.arg.call.i.reload.us.us.pre = load double, double* %polly.access.polly.subfunc.arg.call.i.us.us, align 8, !alias.scope !19, !noalias !21
  br i1 %7, label %polly.loop_exit3.loopexit.us.us.unr-lcssa, label %polly.stmt.for.body37.us.i.us.us

polly.stmt.for.body37.us.i.us.us:                 ; preds = %polly.loop_if.us.us, %polly.stmt.for.body37.us.i.us.us
  %polly.access.polly.subfunc.arg.call.i.reload.us.us = phi double [ %p_sub47.us.i.us.us.1, %polly.stmt.for.body37.us.i.us.us ], [ %polly.access.polly.subfunc.arg.call.i.reload.us.us.pre, %polly.loop_if.us.us ]
  %polly.indvar4.us.us = phi i64 [ %polly.indvar_next5.us.us.1, %polly.stmt.for.body37.us.i.us.us ], [ 0, %polly.loop_if.us.us ]
  %niter = phi i64 [ %niter.nsub.1, %polly.stmt.for.body37.us.i.us.us ], [ %unroll_iter, %polly.loop_if.us.us ]
  %9 = shl i64 %polly.indvar4.us.us, 3
  %scevgep7.us.us = getelementptr i8, i8* %scevgep, i64 %9
  %scevgep78.us.us = bitcast i8* %scevgep7.us.us to double*
  %_p_scalar_.us.us = load double, double* %scevgep78.us.us, align 8, !alias.scope !19, !noalias !21
  %10 = mul i64 %polly.indvar4.us.us, 32000
  %scevgep11.us.us = getelementptr i8, i8* %scevgep10.us.us, i64 %10
  %scevgep1112.us.us = bitcast i8* %scevgep11.us.us to double*
  %_p_scalar_13.us.us = load double, double* %scevgep1112.us.us, align 8, !alias.scope !19, !noalias !21
  %p_mul46.us.i.us.us = fmul double %_p_scalar_.us.us, %_p_scalar_13.us.us
  %p_sub47.us.i.us.us = fsub double %polly.access.polly.subfunc.arg.call.i.reload.us.us, %p_mul46.us.i.us.us
  store double %p_sub47.us.i.us.us, double* %polly.access.polly.subfunc.arg.call.i.us.us, align 8, !alias.scope !19, !noalias !21
  %polly.indvar_next5.us.us = or i64 %polly.indvar4.us.us, 1
  %11 = shl i64 %polly.indvar_next5.us.us, 3
  %scevgep7.us.us.1 = getelementptr i8, i8* %scevgep, i64 %11
  %scevgep78.us.us.1 = bitcast i8* %scevgep7.us.us.1 to double*
  %_p_scalar_.us.us.1 = load double, double* %scevgep78.us.us.1, align 8, !alias.scope !19, !noalias !21
  %12 = mul i64 %polly.indvar_next5.us.us, 32000
  %scevgep11.us.us.1 = getelementptr i8, i8* %scevgep10.us.us, i64 %12
  %scevgep1112.us.us.1 = bitcast i8* %scevgep11.us.us.1 to double*
  %_p_scalar_13.us.us.1 = load double, double* %scevgep1112.us.us.1, align 8, !alias.scope !19, !noalias !21
  %p_mul46.us.i.us.us.1 = fmul double %_p_scalar_.us.us.1, %_p_scalar_13.us.us.1
  %p_sub47.us.i.us.us.1 = fsub double %p_sub47.us.i.us.us, %p_mul46.us.i.us.us.1
  store double %p_sub47.us.i.us.us.1, double* %polly.access.polly.subfunc.arg.call.i.us.us, align 8, !alias.scope !19, !noalias !21
  %polly.indvar_next5.us.us.1 = add nuw nsw i64 %polly.indvar4.us.us, 2
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %polly.loop_exit3.loopexit.us.us.unr-lcssa, label %polly.stmt.for.body37.us.i.us.us, !llvm.loop !34

polly.loop_exit3.loopexit.us.us.unr-lcssa:        ; preds = %polly.stmt.for.body37.us.i.us.us, %polly.loop_if.us.us
  %polly.access.polly.subfunc.arg.call.i.reload.us.us.unr = phi double [ %polly.access.polly.subfunc.arg.call.i.reload.us.us.pre, %polly.loop_if.us.us ], [ %p_sub47.us.i.us.us.1, %polly.stmt.for.body37.us.i.us.us ]
  %polly.indvar4.us.us.unr = phi i64 [ 0, %polly.loop_if.us.us ], [ %polly.indvar_next5.us.us.1, %polly.stmt.for.body37.us.i.us.us ]
  br i1 %lcmp.mod.not, label %polly.loop_exit3.loopexit.us.us, label %polly.stmt.for.body37.us.i.us.us.epil

polly.stmt.for.body37.us.i.us.us.epil:            ; preds = %polly.loop_exit3.loopexit.us.us.unr-lcssa
  %13 = shl i64 %polly.indvar4.us.us.unr, 3
  %scevgep7.us.us.epil = getelementptr i8, i8* %scevgep, i64 %13
  %scevgep78.us.us.epil = bitcast i8* %scevgep7.us.us.epil to double*
  %_p_scalar_.us.us.epil = load double, double* %scevgep78.us.us.epil, align 8, !alias.scope !19, !noalias !21
  %14 = mul i64 %polly.indvar4.us.us.unr, 32000
  %scevgep11.us.us.epil = getelementptr i8, i8* %scevgep10.us.us, i64 %14
  %scevgep1112.us.us.epil = bitcast i8* %scevgep11.us.us.epil to double*
  %_p_scalar_13.us.us.epil = load double, double* %scevgep1112.us.us.epil, align 8, !alias.scope !19, !noalias !21
  %p_mul46.us.i.us.us.epil = fmul double %_p_scalar_.us.us.epil, %_p_scalar_13.us.us.epil
  %p_sub47.us.i.us.us.epil = fsub double %polly.access.polly.subfunc.arg.call.i.reload.us.us.unr, %p_mul46.us.i.us.us.epil
  store double %p_sub47.us.i.us.us.epil, double* %polly.access.polly.subfunc.arg.call.i.us.us, align 8, !alias.scope !19, !noalias !21
  br label %polly.loop_exit3.loopexit.us.us

polly.loop_exit3.loopexit.us.us:                  ; preds = %polly.loop_exit3.loopexit.us.us.unr-lcssa, %polly.stmt.for.body37.us.i.us.us.epil
  %polly.indvar_next.us.us = add i64 %polly.indvar.us.us, 1
  %exitcond20.not = icmp eq i64 %polly.indvar.us.us, %smax
  br i1 %exitcond20.not, label %polly.par.checkNext.split.us.us, label %polly.loop_if.us.us

polly.par.checkNext.split.us.us:                  ; preds = %polly.loop_exit3.loopexit.us.us
  %15 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasWork.us = icmp eq i32 %15, 1
  br i1 %polly.hasWork.us, label %polly.loop_preheader.us, label %polly.par.exit

polly.par.exit:                                   ; preds = %polly.loop_preheader, %polly.par.checkNext.split.us.us, %polly.par.setup.split
  ret void

polly.loop_preheader:                             ; preds = %polly.loop_preheader.preheader, %polly.loop_preheader
  %16 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasWork = icmp eq i32 %16, 1
  br i1 %polly.hasWork, label %polly.loop_preheader, label %polly.par.exit
}

declare void @__kmpc_dispatch_init_8(%struct.ident_t*, i32, i32, i64, i64, i64, i64)

declare i32 @__kmpc_dispatch_next_8(%struct.ident_t*, i32, i32*, i64*, i64*, i64*)

declare void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #9

attributes #0 = { nounwind uwtable "frame-pointer"="none" "no-trapping-math"="true" "polly-optimized" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inaccessiblemem_or_argmemonly nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inaccessiblememonly nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #7 = { argmemonly nofree nosync nounwind willreturn }
attributes #8 = { "polly.skip.fn" }
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
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7, !11}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = !{!16, !16, i64 0}
!16 = !{!"any pointer", !4, i64 0}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !20, !"polly.alias.scope.MemRef0"}
!20 = distinct !{!20, !"polly.alias.scope.domain"}
!21 = !{!22, !23, !24}
!22 = distinct !{!22, !20, !"polly.alias.scope.MemRef5"}
!23 = distinct !{!23, !20, !"polly.alias.scope.MemRef8"}
!24 = distinct !{!24, !20, !"polly.alias.scope.MemRef11"}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = !{!19, !22, !24}
!28 = distinct !{!28, !7}
!29 = !{!19, !23, !24}
!30 = distinct !{!30, !7}
!31 = !{!19, !22, !23}
!32 = distinct !{!32, !7}
!33 = distinct !{!33, !7}
!34 = distinct !{!34, !7}

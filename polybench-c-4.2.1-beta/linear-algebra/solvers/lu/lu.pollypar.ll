; ModuleID = 'lu.c'
source_filename = "lu.c"
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
@.str.3 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1
@.str.ident = private constant [23 x i8] c"Source location dummy.\00", align 1
@.loc.dummy = private constant %struct.ident_t { i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.ident, i32 0, i32 0) }, align 8
@.str.ident.8 = private constant [23 x i8] c"Source location dummy.\00", align 1
@.loc.dummy.9 = private constant %struct.ident_t { i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.ident.8, i32 0, i32 0) }, align 8
@.str.ident.11 = private constant [23 x i8] c"Source location dummy.\00", align 1
@.loc.dummy.12 = private constant %struct.ident_t { i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.ident.11, i32 0, i32 0) }, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** nocapture readonly %argv) local_unnamed_addr #0 {
entry.split:
  %polly.par.userContext31 = alloca { i64, i8* }, align 8
  %polly.par.userContext25 = alloca { i64, i8* }, align 8
  %polly.par.userContext = alloca { i64, i8* }, align 8
  %call.i = tail call noalias dereferenceable_or_null(128000000) i8* @malloc(i64 128000000) #10
  %arraydecay = bitcast i8* %call.i to [4000 x double]*
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.end18.i, %entry.split
  %indvar.i = phi i64 [ 0, %entry.split ], [ %indvar.next.i, %for.end18.i ]
  %0 = add nuw i64 %indvar.i, 1
  %1 = mul nuw nsw i64 %indvar.i, 4001
  %2 = add nuw nsw i64 %1, 1
  %.neg.i = mul nsw i64 %indvar.i, -8
  %3 = add nsw i64 %.neg.i, 31984
  %xtraiter = and i64 %0, 1
  %4 = icmp eq i64 %indvar.i, 0
  br i1 %4, label %for.end.i.unr-lcssa, label %for.cond1.preheader.i.new

for.cond1.preheader.i.new:                        ; preds = %for.cond1.preheader.i
  %unroll_iter = and i64 %0, -2
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.body3.i, %for.cond1.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %for.cond1.preheader.i.new ], [ %indvars.iv.next.i.1, %for.body3.i ]
  %niter = phi i64 [ %unroll_iter, %for.cond1.preheader.i.new ], [ %niter.nsub.1, %for.body3.i ]
  %5 = trunc i64 %indvars.iv.i to i32
  %6 = sub i32 0, %5
  %conv.i = sitofp i32 %6 to double
  %div.i = fdiv double %conv.i, 4.000000e+03
  %add.i = fadd double %div.i, 1.000000e+00
  %arrayidx6.i = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvar.i, i64 %indvars.iv.i
  store double %add.i, double* %arrayidx6.i, align 8, !tbaa !2
  %indvars.iv.next.i = or i64 %indvars.iv.i, 1
  %7 = trunc i64 %indvars.iv.i to i32
  %.neg = xor i32 %7, -1
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
  %8 = trunc i64 %indvars.iv.i.unr to i32
  %9 = sub i32 0, %8
  %conv.i.epil = sitofp i32 %9 to double
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
  %10 = and i64 %3, 34359738360
  %scevgep.i = getelementptr [4000 x double], [4000 x double]* %arraydecay, i64 0, i64 %2
  %11 = add nuw nsw i64 %10, 8
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
  %broadcast.splatinsert35 = insertelement <2 x double> poison, double %13, i32 0
  %broadcast.splat36 = shufflevector <2 x double> %broadcast.splatinsert35, <2 x double> poison, <2 x i32> zeroinitializer
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
  %30 = fmul <2 x double> %broadcast.splat36, %28
  %31 = getelementptr inbounds [4000 x [4000 x double]], [4000 x [4000 x double]]* %12, i64 0, i64 %indvars.iv30.i, i64 %index
  %32 = bitcast double* %31 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %32, align 8, !tbaa !2
  %33 = getelementptr inbounds double, double* %31, i64 2
  %34 = bitcast double* %33 to <2 x double>*
  %wide.load37 = load <2 x double>, <2 x double>* %34, align 8, !tbaa !2
  %35 = fadd <2 x double> %wide.load, %29
  %36 = fadd <2 x double> %wide.load37, %30
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
  br i1 %exitcond43.not.i.1, label %polly.loop_preheader, label %for.cond82.preheader.i, !llvm.loop !13

kernel_lu.exit:                                   ; preds = %polly.parallel.for29
  tail call void (...) @polybench_timer_stop() #10
  tail call void (...) @polybench_timer_print() #10
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_lu.exit
  %42 = load i8*, i8** %argv, align 8, !tbaa !14
  %strcmpload = load i8, i8* %42, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !14
  %44 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %43) #11
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !14
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #11
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.inc10.i, %if.then
  %indvars.iv4.i = phi i64 [ 0, %if.then ], [ %indvars.iv.next5.i, %for.inc10.i ]
  %46 = mul nuw nsw i64 %indvars.iv4.i, 4000
  br label %for.body4.i

for.body4.i:                                      ; preds = %if.end.i, %for.cond2.preheader.i
  %indvars.iv.i19 = phi i64 [ 0, %for.cond2.preheader.i ], [ %indvars.iv.next.i21, %if.end.i ]
  %47 = add nuw nsw i64 %indvars.iv.i19, %46
  %48 = trunc i64 %47 to i32
  %rem.i = urem i32 %48, 20
  %cmp5.i = icmp eq i32 %rem.i, 0
  br i1 %cmp5.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body4.i
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !14
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %49) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !14
  %arrayidx8.i20 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv4.i, i64 %indvars.iv.i19
  %51 = load double, double* %arrayidx8.i20, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %51) #11
  %indvars.iv.next.i21 = add nuw nsw i64 %indvars.iv.i19, 1
  %exitcond.not.i22 = icmp eq i64 %indvars.iv.next.i21, 4000
  br i1 %exitcond.not.i22, label %for.inc10.i, label %for.body4.i, !llvm.loop !16

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 4000
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !17

print_array.exit:                                 ; preds = %for.inc10.i
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !14
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #11
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !14
  %54 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %53) #11
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_lu.exit
  tail call void @free(i8* %call.i) #10
  ret i32 0

polly.parallel.for29:                             ; preds = %polly.loop_preheader, %polly.parallel.for29
  %polly.indvar = phi i64 [ 0, %polly.loop_preheader ], [ %55, %polly.parallel.for29 ]
  %55 = add nuw nsw i64 %polly.indvar, 1
  store i64 %polly.indvar, i64* %polly.subfn.storeaddr.polly.indvar, align 8
  store i8* %call.i, i8** %polly.subfn.storeaddr.call.i, align 8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @.loc.dummy, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, i64, i8*)* @main_polly_subfn to void (i32*, i32*, ...)*), i64 %55, i64 4000, i64 1, { i64, i8* }* nonnull %polly.par.userContext) #10
  %56 = add nuw nsw i64 %polly.indvar, 2
  %pexp.p_div_q = lshr i64 %56, 5
  store i64 %polly.indvar, i64* %polly.subfn.storeaddr.polly.indvar26, align 8
  store i8* %call.i, i8** %polly.subfn.storeaddr.call.i27, align 8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @.loc.dummy.9, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, i64, i8*)* @main_polly_subfn_10 to void (i32*, i32*, ...)*), i64 %pexp.p_div_q, i64 125, i64 1, { i64, i8* }* nonnull %polly.par.userContext25) #10
  %pexp.p_div_q30 = lshr i64 %55, 5
  store i64 %polly.indvar, i64* %polly.subfn.storeaddr.polly.indvar32, align 8
  store i8* %call.i, i8** %polly.subfn.storeaddr.call.i33, align 8
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull @.loc.dummy.12, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, i64, i8*)* @main_polly_subfn_13 to void (i32*, i32*, ...)*), i64 %pexp.p_div_q30, i64 125, i64 1, { i64, i8* }* nonnull %polly.par.userContext31) #10
  %exitcond.not = icmp eq i64 %55, 3999
  br i1 %exitcond.not, label %kernel_lu.exit, label %polly.parallel.for29

polly.loop_preheader:                             ; preds = %for.cond82.preheader.i
  tail call void @free(i8* nonnull %call.i.i) #10
  tail call void (...) @polybench_timer_start() #10
  %polly.subfn.storeaddr.polly.indvar = getelementptr inbounds { i64, i8* }, { i64, i8* }* %polly.par.userContext, i64 0, i32 0
  %polly.subfn.storeaddr.call.i = getelementptr inbounds { i64, i8* }, { i64, i8* }* %polly.par.userContext, i64 0, i32 1
  %polly.subfn.storeaddr.polly.indvar26 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %polly.par.userContext25, i64 0, i32 0
  %polly.subfn.storeaddr.call.i27 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %polly.par.userContext25, i64 0, i32 1
  %polly.subfn.storeaddr.polly.indvar32 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %polly.par.userContext31, i64 0, i32 0
  %polly.subfn.storeaddr.call.i33 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %polly.par.userContext31, i64 0, i32 1
  br label %polly.parallel.for29
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
  %4 = mul i64 %polly.subfunc.arg.polly.indvar, 32008
  %scevgep = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %4
  %scevgep1 = bitcast i8* %scevgep to double*
  %5 = shl i64 %polly.subfunc.arg.polly.indvar, 3
  %scevgep2 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %5
  %polly.access.cast.polly.subfunc.arg.call.i = bitcast i8* %polly.subfunc.arg.call.i to double*
  br label %polly.loop_preheader

polly.par.exit:                                   ; preds = %polly.par.checkNext, %polly.par.setup.split
  ret void

polly.par.checkNext:                              ; preds = %polly.stmt.for.end.i18, %polly.stmt.for.end.i18.prol.loopexit
  %6 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasWork = icmp eq i32 %6, 1
  br i1 %polly.hasWork, label %polly.loop_preheader, label %polly.par.exit

polly.stmt.for.end.i18:                           ; preds = %polly.stmt.for.end.i18.prol.loopexit, %polly.stmt.for.end.i18
  %polly.indvar = phi i64 [ %polly.indvar_next.1, %polly.stmt.for.end.i18 ], [ %polly.indvar.unr.ph, %polly.stmt.for.end.i18.prol.loopexit ]
  %polly.access.mul.polly.subfunc.arg.call.i = mul nsw i64 %polly.indvar, 4000
  %polly.access.add.polly.subfunc.arg.call.i = add nsw i64 %polly.access.mul.polly.subfunc.arg.call.i, %polly.subfunc.arg.polly.indvar
  %polly.access.polly.subfunc.arg.call.i = getelementptr double, double* %polly.access.cast.polly.subfunc.arg.call.i, i64 %polly.access.add.polly.subfunc.arg.call.i
  %polly.access.polly.subfunc.arg.call.i.reload = load double, double* %polly.access.polly.subfunc.arg.call.i, align 8, !alias.scope !18, !noalias !20
  %_p_scalar_ = load double, double* %scevgep1, align 8, !alias.scope !18, !noalias !20
  %p_div.i17 = fdiv double %polly.access.polly.subfunc.arg.call.i.reload, %_p_scalar_
  %7 = mul i64 %polly.indvar, 32000
  %scevgep3 = getelementptr i8, i8* %scevgep2, i64 %7
  %scevgep34 = bitcast i8* %scevgep3 to double*
  store double %p_div.i17, double* %scevgep34, align 8, !alias.scope !18, !noalias !20
  %polly.indvar_next = add i64 %polly.indvar, 1
  %polly.access.mul.polly.subfunc.arg.call.i.1 = mul nsw i64 %polly.indvar_next, 4000
  %polly.access.add.polly.subfunc.arg.call.i.1 = add nsw i64 %polly.access.mul.polly.subfunc.arg.call.i.1, %polly.subfunc.arg.polly.indvar
  %polly.access.polly.subfunc.arg.call.i.1 = getelementptr double, double* %polly.access.cast.polly.subfunc.arg.call.i, i64 %polly.access.add.polly.subfunc.arg.call.i.1
  %polly.access.polly.subfunc.arg.call.i.reload.1 = load double, double* %polly.access.polly.subfunc.arg.call.i.1, align 8, !alias.scope !18, !noalias !20
  %_p_scalar_.1 = load double, double* %scevgep1, align 8, !alias.scope !18, !noalias !20
  %p_div.i17.1 = fdiv double %polly.access.polly.subfunc.arg.call.i.reload.1, %_p_scalar_.1
  %8 = mul i64 %polly.indvar_next, 32000
  %scevgep3.1 = getelementptr i8, i8* %scevgep2, i64 %8
  %scevgep34.1 = bitcast i8* %scevgep3.1 to double*
  store double %p_div.i17.1, double* %scevgep34.1, align 8, !alias.scope !18, !noalias !20
  %polly.indvar_next.1 = add i64 %polly.indvar, 2
  %exitcond.not.1 = icmp eq i64 %polly.indvar_next, %smax
  br i1 %exitcond.not.1, label %polly.par.checkNext, label %polly.stmt.for.end.i18

polly.loop_preheader:                             ; preds = %polly.loop_preheader.preheader, %polly.par.checkNext
  %polly.indvar.LB = load i64, i64* %polly.par.LBPtr, align 8
  %polly.indvar.UB = load i64, i64* %polly.par.UBPtr, align 8
  %smax = call i64 @llvm.smax.i64(i64 %polly.indvar.LB, i64 %polly.indvar.UB)
  %9 = add i64 %smax, 1
  %10 = sub i64 %9, %polly.indvar.LB
  %xtraiter = and i64 %10, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %polly.stmt.for.end.i18.prol.loopexit, label %polly.stmt.for.end.i18.prol

polly.stmt.for.end.i18.prol:                      ; preds = %polly.loop_preheader
  %polly.access.mul.polly.subfunc.arg.call.i.prol = mul nsw i64 %polly.indvar.LB, 4000
  %polly.access.add.polly.subfunc.arg.call.i.prol = add nsw i64 %polly.access.mul.polly.subfunc.arg.call.i.prol, %polly.subfunc.arg.polly.indvar
  %polly.access.polly.subfunc.arg.call.i.prol = getelementptr double, double* %polly.access.cast.polly.subfunc.arg.call.i, i64 %polly.access.add.polly.subfunc.arg.call.i.prol
  %polly.access.polly.subfunc.arg.call.i.reload.prol = load double, double* %polly.access.polly.subfunc.arg.call.i.prol, align 8, !alias.scope !18, !noalias !20
  %_p_scalar_.prol = load double, double* %scevgep1, align 8, !alias.scope !18, !noalias !20
  %p_div.i17.prol = fdiv double %polly.access.polly.subfunc.arg.call.i.reload.prol, %_p_scalar_.prol
  %11 = mul i64 %polly.indvar.LB, 32000
  %scevgep3.prol = getelementptr i8, i8* %scevgep2, i64 %11
  %scevgep34.prol = bitcast i8* %scevgep3.prol to double*
  store double %p_div.i17.prol, double* %scevgep34.prol, align 8, !alias.scope !18, !noalias !20
  %polly.indvar_next.prol = add i64 %polly.indvar.LB, 1
  br label %polly.stmt.for.end.i18.prol.loopexit

polly.stmt.for.end.i18.prol.loopexit:             ; preds = %polly.stmt.for.end.i18.prol, %polly.loop_preheader
  %polly.indvar.unr.ph = phi i64 [ %polly.indvar_next.prol, %polly.stmt.for.end.i18.prol ], [ %polly.indvar.LB, %polly.loop_preheader ]
  %.not = icmp slt i64 %polly.indvar.LB, %polly.indvar.UB
  br i1 %.not, label %polly.stmt.for.end.i18, label %polly.par.checkNext
}

declare void @__kmpc_dispatch_init_8(%struct.ident_t*, i32, i32, i64, i64, i64, i64)

declare i32 @__kmpc_dispatch_next_8(%struct.ident_t*, i32, i32*, i64*, i64*, i64*)

declare void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

define internal void @main_polly_subfn_10(i32* %polly.kmpc.global_tid, i32* %polly.kmpc.bound_tid, i64 %polly.kmpc.lb, i64 %polly.kmpc.ub, i64 %polly.kmpc.inc, i8* %polly.kmpc.shared) #8 {
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
  tail call void @__kmpc_dispatch_init_8(%struct.ident_t* nonnull @.loc.dummy.9, i32 %polly.par.global_tid, i32 35, i64 %polly.kmpc.lb, i64 %polly.indvar.UBAdjusted, i64 %polly.kmpc.inc, i64 4)
  %3 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy.9, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasIteration = icmp eq i32 %3, 1
  br i1 %polly.hasIteration, label %polly.loop_preheader.preheader, label %polly.par.exit

polly.loop_preheader.preheader:                   ; preds = %polly.par.setup.split
  %4 = shl i64 %polly.subfunc.arg.polly.indvar, 3
  %scevgep = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %4
  %5 = mul i64 %polly.subfunc.arg.polly.indvar, 32000
  %scevgep25 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %5
  %6 = add nsw i64 %polly.subfunc.arg.polly.indvar, 1
  %pexp.p_div_q = lshr i64 %6, 5
  %polly.access.cast.polly.subfunc.arg.call.i = bitcast i8* %polly.subfunc.arg.call.i to double*
  br label %polly.loop_preheader

polly.par.exit:                                   ; preds = %polly.par.checkNext, %polly.par.setup.split
  ret void

polly.par.checkNext:                              ; preds = %polly.loop_exit3
  %7 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy.9, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasWork = icmp eq i32 %7, 1
  br i1 %polly.hasWork, label %polly.loop_preheader, label %polly.par.exit

polly.loop_exit3:                                 ; preds = %polly.loop_exit10, %polly.loop_if
  %polly.indvar_next = add i64 %polly.indvar, 1
  %exitcond35.not = icmp eq i64 %polly.indvar, %smax
  br i1 %exitcond35.not, label %polly.par.checkNext, label %polly.loop_if

polly.loop_preheader:                             ; preds = %polly.loop_preheader.preheader, %polly.par.checkNext
  %polly.indvar.LB = load i64, i64* %polly.par.LBPtr, align 8
  %polly.indvar.UB = load i64, i64* %polly.par.UBPtr, align 8
  %smax = call i64 @llvm.smax.i64(i64 %polly.indvar.LB, i64 %polly.indvar.UB)
  br label %polly.loop_if

polly.loop_if:                                    ; preds = %polly.loop_preheader, %polly.loop_exit3
  %indvars.iv.in = phi i64 [ %polly.indvar.LB, %polly.loop_preheader ], [ %indvars.iv, %polly.loop_exit3 ]
  %polly.indvar = phi i64 [ %polly.indvar.LB, %polly.loop_preheader ], [ %polly.indvar_next, %polly.loop_exit3 ]
  %indvars.iv = add i64 %indvars.iv.in, 1
  %polly.loop_guard.not = icmp sgt i64 %pexp.p_div_q, %polly.indvar
  br i1 %polly.loop_guard.not, label %polly.loop_exit3, label %polly.loop_if7.preheader

polly.loop_if7.preheader:                         ; preds = %polly.loop_if
  %8 = shl nsw i64 %polly.indvar, 5
  %9 = sub nsw i64 %polly.subfunc.arg.polly.indvar, %8
  %10 = icmp sgt i64 %9, -2
  %11 = select i1 %10, i64 %9, i64 -2
  %12 = add nsw i64 %11, 2
  %13 = mul nsw i64 %polly.indvar, -32
  br label %polly.loop_if7

polly.loop_exit10:                                ; preds = %polly.loop_exit18, %polly.loop_if7
  %polly.indvar_next5 = add nuw i64 %polly.indvar4, 1
  %exitcond34.not = icmp eq i64 %polly.indvar4, %indvars.iv.in
  br i1 %exitcond34.not, label %polly.loop_exit3, label %polly.loop_if7

polly.loop_if7:                                   ; preds = %polly.loop_if7.preheader, %polly.loop_exit10
  %polly.indvar4 = phi i64 [ %polly.indvar_next5, %polly.loop_exit10 ], [ %pexp.p_div_q, %polly.loop_if7.preheader ]
  %14 = shl nsw i64 %polly.indvar4, 5
  %15 = add nsw i64 %14, %13
  %16 = or i64 %15, 1
  %17 = icmp sgt i64 %12, %16
  %18 = select i1 %17, i64 %12, i64 %16
  %polly.loop_guard11 = icmp slt i64 %18, 32
  br i1 %polly.loop_guard11, label %polly.loop_if15.preheader, label %polly.loop_exit10

polly.loop_if15.preheader:                        ; preds = %polly.loop_if7
  %19 = sub nsw i64 %polly.subfunc.arg.polly.indvar, %14
  %20 = add nsw i64 %19, 1
  %.inv = icmp slt i64 %19, 0
  %21 = select i1 %.inv, i64 0, i64 %20
  %22 = sub nsw i64 %8, %14
  %23 = sub i64 1, %21
  br label %polly.loop_if15

polly.loop_exit18:                                ; preds = %polly.stmt.for.body6.i, %middle.block, %polly.loop_if15
  %polly.indvar_next13 = add nsw i64 %polly.indvar12, 1
  %polly.loop_cond14 = icmp slt i64 %polly.indvar12, 31
  br i1 %polly.loop_cond14, label %polly.loop_if15, label %polly.loop_exit10

polly.loop_if15:                                  ; preds = %polly.loop_if15.preheader, %polly.loop_exit18
  %polly.indvar12 = phi i64 [ %polly.indvar_next13, %polly.loop_exit18 ], [ %18, %polly.loop_if15.preheader ]
  %24 = add nsw i64 %polly.indvar12, %22
  %25 = add nsw i64 %24, -1
  %.inv33 = icmp sgt i64 %24, 31
  %26 = select i1 %.inv33, i64 31, i64 %25
  %polly.loop_guard19.not = icmp sgt i64 %21, %26
  br i1 %polly.loop_guard19.not, label %polly.loop_exit18, label %polly.stmt.for.body6.i.preheader

polly.stmt.for.body6.i.preheader:                 ; preds = %polly.loop_if15
  %27 = add nsw i64 %polly.indvar12, %8
  %polly.access.mul.polly.subfunc.arg.call.i = mul nsw i64 %27, 4000
  %28 = mul i64 %27, 32000
  %scevgep23 = getelementptr i8, i8* %scevgep, i64 %28
  %scevgep2324 = bitcast i8* %scevgep23 to double*
  %29 = add i64 %23, %26
  %min.iters.check = icmp ult i64 %29, 4
  br i1 %min.iters.check, label %polly.stmt.for.body6.i.preheader41, label %vector.ph

vector.ph:                                        ; preds = %polly.stmt.for.body6.i.preheader
  %n.vec = and i64 %29, -4
  %ind.end = add i64 %21, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = add i64 %21, %index
  %30 = add nsw i64 %offset.idx, %14
  %31 = add nsw i64 %30, %polly.access.mul.polly.subfunc.arg.call.i
  %32 = getelementptr double, double* %polly.access.cast.polly.subfunc.arg.call.i, i64 %31
  %33 = bitcast double* %32 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %33, align 8, !alias.scope !18, !noalias !20, !llvm.access.group !21
  %34 = getelementptr double, double* %32, i64 2
  %35 = bitcast double* %34 to <2 x double>*
  %wide.load36 = load <2 x double>, <2 x double>* %35, align 8, !alias.scope !18, !noalias !20, !llvm.access.group !21
  %36 = load double, double* %scevgep2324, align 8, !alias.scope !22, !noalias !20, !llvm.access.group !21
  %broadcast.splatinsert = insertelement <2 x double> poison, double %36, i32 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert39 = insertelement <2 x double> poison, double %36, i32 0
  %broadcast.splat40 = shufflevector <2 x double> %broadcast.splatinsert39, <2 x double> poison, <2 x i32> zeroinitializer
  %37 = shl i64 %30, 3
  %38 = getelementptr i8, i8* %scevgep25, i64 %37
  %39 = bitcast i8* %38 to <2 x double>*
  %wide.load37 = load <2 x double>, <2 x double>* %39, align 8, !alias.scope !18, !noalias !20, !llvm.access.group !21
  %40 = getelementptr i8, i8* %38, i64 16
  %41 = bitcast i8* %40 to <2 x double>*
  %wide.load38 = load <2 x double>, <2 x double>* %41, align 8, !alias.scope !18, !noalias !20, !llvm.access.group !21
  %42 = fmul <2 x double> %broadcast.splat, %wide.load37
  %43 = fmul <2 x double> %broadcast.splat40, %wide.load38
  %44 = fsub <2 x double> %wide.load, %42
  %45 = fsub <2 x double> %wide.load36, %43
  %46 = bitcast double* %32 to <2 x double>*
  store <2 x double> %44, <2 x double>* %46, align 8, !alias.scope !18, !noalias !20, !llvm.access.group !21
  %47 = bitcast double* %34 to <2 x double>*
  store <2 x double> %45, <2 x double>* %47, align 8, !alias.scope !18, !noalias !20, !llvm.access.group !21
  %index.next = add i64 %index, 4
  %48 = icmp eq i64 %index.next, %n.vec
  br i1 %48, label %middle.block, label %vector.body, !llvm.loop !23

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %29, %n.vec
  br i1 %cmp.n, label %polly.loop_exit18, label %polly.stmt.for.body6.i.preheader41

polly.stmt.for.body6.i.preheader41:               ; preds = %polly.stmt.for.body6.i.preheader, %middle.block
  %polly.indvar20.ph = phi i64 [ %21, %polly.stmt.for.body6.i.preheader ], [ %ind.end, %middle.block ]
  br label %polly.stmt.for.body6.i

polly.stmt.for.body6.i:                           ; preds = %polly.stmt.for.body6.i.preheader41, %polly.stmt.for.body6.i
  %polly.indvar20 = phi i64 [ %polly.indvar_next21, %polly.stmt.for.body6.i ], [ %polly.indvar20.ph, %polly.stmt.for.body6.i.preheader41 ]
  %49 = add nsw i64 %polly.indvar20, %14
  %polly.access.add.polly.subfunc.arg.call.i = add nsw i64 %49, %polly.access.mul.polly.subfunc.arg.call.i
  %polly.access.polly.subfunc.arg.call.i = getelementptr double, double* %polly.access.cast.polly.subfunc.arg.call.i, i64 %polly.access.add.polly.subfunc.arg.call.i
  %polly.access.polly.subfunc.arg.call.i.reload = load double, double* %polly.access.polly.subfunc.arg.call.i, align 8, !alias.scope !18, !noalias !20, !llvm.access.group !21
  %_p_scalar_ = load double, double* %scevgep2324, align 8, !alias.scope !18, !noalias !20, !llvm.access.group !21
  %50 = shl i64 %49, 3
  %scevgep26 = getelementptr i8, i8* %scevgep25, i64 %50
  %scevgep2627 = bitcast i8* %scevgep26 to double*
  %_p_scalar_28 = load double, double* %scevgep2627, align 8, !alias.scope !18, !noalias !20, !llvm.access.group !21
  %p_mul.i14 = fmul double %_p_scalar_, %_p_scalar_28
  %p_sub.i = fsub double %polly.access.polly.subfunc.arg.call.i.reload, %p_mul.i14
  store double %p_sub.i, double* %polly.access.polly.subfunc.arg.call.i, align 8, !alias.scope !18, !noalias !20, !llvm.access.group !21
  %polly.indvar_next21 = add i64 %polly.indvar20, 1
  %exitcond.not = icmp eq i64 %polly.indvar20, %26
  br i1 %exitcond.not, label %polly.loop_exit18, label %polly.stmt.for.body6.i, !llvm.loop !25
}

define internal void @main_polly_subfn_13(i32* %polly.kmpc.global_tid, i32* %polly.kmpc.bound_tid, i64 %polly.kmpc.lb, i64 %polly.kmpc.ub, i64 %polly.kmpc.inc, i8* %polly.kmpc.shared) #8 {
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
  tail call void @__kmpc_dispatch_init_8(%struct.ident_t* nonnull @.loc.dummy.12, i32 %polly.par.global_tid, i32 35, i64 %polly.kmpc.lb, i64 %polly.indvar.UBAdjusted, i64 %polly.kmpc.inc, i64 4)
  %3 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy.12, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasIteration = icmp eq i32 %3, 1
  br i1 %polly.hasIteration, label %polly.loop_preheader.preheader, label %polly.par.exit

polly.loop_preheader.preheader:                   ; preds = %polly.par.setup.split
  %4 = shl i64 %polly.subfunc.arg.polly.indvar, 3
  %scevgep = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %4
  %5 = mul i64 %polly.subfunc.arg.polly.indvar, 32000
  %scevgep25 = getelementptr i8, i8* %polly.subfunc.arg.call.i, i64 %5
  %polly.access.cast.polly.subfunc.arg.call.i = bitcast i8* %polly.subfunc.arg.call.i to double*
  br label %polly.loop_preheader

polly.par.exit:                                   ; preds = %polly.par.checkNext, %polly.par.setup.split
  ret void

polly.par.checkNext:                              ; preds = %polly.loop_exit3
  %6 = call i32 @__kmpc_dispatch_next_8(%struct.ident_t* nonnull @.loc.dummy.12, i32 %polly.par.global_tid, i32* nonnull %polly.par.lastIterPtr, i64* nonnull %polly.par.LBPtr, i64* nonnull %polly.par.UBPtr, i64* nonnull %polly.par.StridePtr)
  %polly.hasWork = icmp eq i32 %6, 1
  br i1 %polly.hasWork, label %polly.loop_preheader, label %polly.par.exit

polly.loop_exit3:                                 ; preds = %polly.loop_exit10.loopexit.us, %polly.loop_if7.preheader, %polly.loop_if
  %polly.indvar_next = add i64 %polly.indvar, 1
  %indvars.iv.next = add i64 %indvars.iv, -32
  %indvars.iv.next41 = add i64 %indvars.iv40, -1
  %exitcond44.not = icmp eq i64 %polly.indvar, %smax43
  %indvar.next50 = add i64 %indvar49, 1
  br i1 %exitcond44.not, label %polly.par.checkNext, label %polly.loop_if

polly.loop_preheader:                             ; preds = %polly.loop_preheader.preheader, %polly.par.checkNext
  %polly.indvar.LB = load i64, i64* %polly.par.LBPtr, align 8
  %polly.indvar.UB = load i64, i64* %polly.par.UBPtr, align 8
  %7 = mul i64 %polly.indvar.LB, -32
  %8 = sub i64 125, %polly.indvar.LB
  %smax43 = call i64 @llvm.smax.i64(i64 %polly.indvar.LB, i64 %polly.indvar.UB)
  br label %polly.loop_if

polly.loop_if:                                    ; preds = %polly.loop_preheader, %polly.loop_exit3
  %indvar49 = phi i64 [ 0, %polly.loop_preheader ], [ %indvar.next50, %polly.loop_exit3 ]
  %indvars.iv40 = phi i64 [ %8, %polly.loop_preheader ], [ %indvars.iv.next41, %polly.loop_exit3 ]
  %indvars.iv = phi i64 [ %7, %polly.loop_preheader ], [ %indvars.iv.next, %polly.loop_exit3 ]
  %polly.indvar = phi i64 [ %polly.indvar.LB, %polly.loop_preheader ], [ %polly.indvar_next, %polly.loop_exit3 ]
  %9 = mul i64 %indvar49, -32
  %10 = add i64 %7, %9
  %11 = sub i64 124, %polly.indvar
  %polly.loop_guard = icmp sgt i64 %11, -1
  br i1 %polly.loop_guard, label %polly.loop_if7.preheader, label %polly.loop_exit3

polly.loop_if7.preheader:                         ; preds = %polly.loop_if
  %12 = shl nsw i64 %polly.indvar, 5
  %13 = sub nsw i64 %polly.subfunc.arg.polly.indvar, %12
  %14 = add nsw i64 %13, 1
  %.inv = icmp slt i64 %13, 0
  %15 = select i1 %.inv, i64 0, i64 %14
  %polly.loop_guard11 = icmp slt i64 %15, 32
  %16 = mul nsw i64 %polly.indvar, -32
  br i1 %polly.loop_guard11, label %polly.loop_if7.us.preheader, label %polly.loop_exit3

polly.loop_if7.us.preheader:                      ; preds = %polly.loop_if7.preheader
  %17 = sub i64 %indvars.iv, %15
  br label %polly.loop_if7.us

polly.loop_if7.us:                                ; preds = %polly.loop_if7.us.preheader, %polly.loop_exit10.loopexit.us
  %indvars.iv35 = phi i64 [ %17, %polly.loop_if7.us.preheader ], [ %indvars.iv.next36, %polly.loop_exit10.loopexit.us ]
  %polly.indvar4.us = phi i64 [ 0, %polly.loop_if7.us.preheader ], [ %polly.indvar_next5.us, %polly.loop_exit10.loopexit.us ]
  %18 = mul i64 %polly.indvar4.us, -32
  %19 = mul i64 %polly.indvar4.us, -32
  %20 = add i64 %17, %19
  %21 = shl nsw i64 %polly.indvar4.us, 5
  %22 = sub nsw i64 %16, %21
  %23 = add i64 %10, %18
  br label %polly.loop_if15.us

polly.loop_if15.us:                               ; preds = %polly.loop_if7.us, %polly.loop_exit18.us
  %indvar = phi i64 [ 0, %polly.loop_if7.us ], [ %indvar.next, %polly.loop_exit18.us ]
  %indvars.iv37 = phi i64 [ %indvars.iv35, %polly.loop_if7.us ], [ %indvars.iv.next38, %polly.loop_exit18.us ]
  %polly.indvar12.us = phi i64 [ %15, %polly.loop_if7.us ], [ %polly.indvar_next13.us, %polly.loop_exit18.us ]
  %24 = add i64 %15, %indvar
  %25 = sub i64 %23, %24
  %smin51 = call i64 @llvm.smin.i64(i64 %25, i64 -3968)
  %26 = add nsw i64 %smin51, 3999
  %smax52 = call i64 @llvm.smax.i64(i64 %26, i64 0)
  %27 = add nuw nsw i64 %smax52, 1
  %28 = and i64 %27, 9223372036854775806
  %29 = add nsw i64 %28, -2
  %30 = lshr exact i64 %29, 1
  %31 = add nuw i64 %30, 1
  %32 = sub i64 %20, %indvar
  %smin46 = call i64 @llvm.smin.i64(i64 %32, i64 -3968)
  %33 = add nsw i64 %smin46, 3999
  %smax47 = call i64 @llvm.smax.i64(i64 %33, i64 0)
  %34 = add nuw nsw i64 %smax47, 1
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv37, i64 -3968)
  %35 = add nsw i64 %smin, 3999
  %smax = call i64 @llvm.smax.i64(i64 %35, i64 0)
  %36 = sub i64 %22, %polly.indvar12.us
  %polly.loop_guard19.us45 = icmp sgt i64 %36, -4000
  br i1 %polly.loop_guard19.us45, label %polly.stmt.for.body33.us.i.preheader.us, label %polly.loop_exit18.us

polly.stmt.for.body33.us.i.us:                    ; preds = %polly.stmt.for.body33.us.i.us.preheader, %polly.stmt.for.body33.us.i.us
  %polly.indvar20.us = phi i64 [ %polly.indvar_next21.us, %polly.stmt.for.body33.us.i.us ], [ %polly.indvar20.us.ph, %polly.stmt.for.body33.us.i.us.preheader ]
  %37 = add nuw nsw i64 %polly.indvar20.us, %21
  %polly.access.add.polly.subfunc.arg.call.i.us = add i64 %42, %polly.indvar20.us
  %polly.access.polly.subfunc.arg.call.i.us = getelementptr double, double* %polly.access.cast.polly.subfunc.arg.call.i, i64 %polly.access.add.polly.subfunc.arg.call.i.us
  %polly.access.polly.subfunc.arg.call.i.reload.us = load double, double* %polly.access.polly.subfunc.arg.call.i.us, align 8, !alias.scope !18, !noalias !20, !llvm.access.group !27
  %_p_scalar_.us = load double, double* %scevgep2324.us, align 8, !alias.scope !18, !noalias !20, !llvm.access.group !27
  %38 = add i64 %37, %40
  %39 = shl i64 %38, 3
  %scevgep26.us = getelementptr i8, i8* %scevgep25, i64 %39
  %scevgep2627.us = bitcast i8* %scevgep26.us to double*
  %_p_scalar_28.us = load double, double* %scevgep2627.us, align 8, !alias.scope !18, !noalias !20, !llvm.access.group !27
  %p_mul42.us.i.us = fmul double %_p_scalar_.us, %_p_scalar_28.us
  %p_sub47.us.i.us = fsub double %polly.access.polly.subfunc.arg.call.i.reload.us, %p_mul42.us.i.us
  store double %p_sub47.us.i.us, double* %polly.access.polly.subfunc.arg.call.i.us, align 8, !alias.scope !18, !noalias !20, !llvm.access.group !27
  %polly.indvar_next21.us = add nuw nsw i64 %polly.indvar20.us, 1
  %exitcond.not = icmp eq i64 %polly.indvar20.us, %smax
  br i1 %exitcond.not, label %polly.loop_exit18.us, label %polly.stmt.for.body33.us.i.us, !llvm.loop !28

polly.loop_exit18.us:                             ; preds = %polly.stmt.for.body33.us.i.us, %middle.block, %polly.loop_if15.us
  %polly.indvar_next13.us = add i64 %polly.indvar12.us, 1
  %indvars.iv.next38 = add i64 %indvars.iv37, -1
  %exitcond39.not = icmp eq i64 %polly.indvar_next13.us, 32
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond39.not, label %polly.loop_exit10.loopexit.us, label %polly.loop_if15.us

polly.stmt.for.body33.us.i.preheader.us:          ; preds = %polly.loop_if15.us
  %40 = add i64 %polly.indvar12.us, %12
  %polly.access.mul.polly.subfunc.arg.call.i.us = mul nsw i64 %40, 4000
  %41 = add i64 %40, %21
  %42 = add i64 %41, %polly.access.mul.polly.subfunc.arg.call.i.us
  %43 = mul i64 %40, 32000
  %scevgep23.us = getelementptr i8, i8* %scevgep, i64 %43
  %scevgep2324.us = bitcast i8* %scevgep23.us to double*
  %min.iters.check = icmp ult i64 %smin46, -3998
  br i1 %min.iters.check, label %polly.stmt.for.body33.us.i.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %polly.stmt.for.body33.us.i.preheader.us
  %n.vec = and i64 %34, 9223372036854775806
  %xtraiter = and i64 %31, 1
  %44 = icmp eq i64 %29, 0
  br i1 %44, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %31, -2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ]
  %niter = phi i64 [ %unroll_iter, %vector.ph.new ], [ %niter.nsub.1, %vector.body ]
  %45 = add nuw nsw i64 %index, %21
  %46 = add i64 %42, %index
  %47 = getelementptr double, double* %polly.access.cast.polly.subfunc.arg.call.i, i64 %46
  %48 = bitcast double* %47 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %48, align 8, !alias.scope !18, !noalias !20, !llvm.access.group !27
  %49 = load double, double* %scevgep2324.us, align 8, !alias.scope !18, !noalias !20, !llvm.access.group !27
  %broadcast.splatinsert = insertelement <2 x double> poison, double %49, i32 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %50 = add i64 %45, %40
  %51 = shl i64 %50, 3
  %52 = getelementptr i8, i8* %scevgep25, i64 %51
  %53 = bitcast i8* %52 to <2 x double>*
  %wide.load48 = load <2 x double>, <2 x double>* %53, align 8, !alias.scope !18, !noalias !20, !llvm.access.group !27
  %54 = fmul <2 x double> %broadcast.splat, %wide.load48
  %55 = fsub <2 x double> %wide.load, %54
  %56 = bitcast double* %47 to <2 x double>*
  store <2 x double> %55, <2 x double>* %56, align 8, !alias.scope !18, !noalias !20, !llvm.access.group !27
  %index.next = or i64 %index, 2
  %57 = add nuw nsw i64 %index.next, %21
  %58 = add i64 %42, %index.next
  %59 = getelementptr double, double* %polly.access.cast.polly.subfunc.arg.call.i, i64 %58
  %60 = bitcast double* %59 to <2 x double>*
  %wide.load.1 = load <2 x double>, <2 x double>* %60, align 8, !alias.scope !18, !noalias !20, !llvm.access.group !27
  %61 = load double, double* %scevgep2324.us, align 8, !alias.scope !18, !noalias !20, !llvm.access.group !27
  %broadcast.splatinsert.1 = insertelement <2 x double> poison, double %61, i32 0
  %broadcast.splat.1 = shufflevector <2 x double> %broadcast.splatinsert.1, <2 x double> poison, <2 x i32> zeroinitializer
  %62 = add i64 %57, %40
  %63 = shl i64 %62, 3
  %64 = getelementptr i8, i8* %scevgep25, i64 %63
  %65 = bitcast i8* %64 to <2 x double>*
  %wide.load48.1 = load <2 x double>, <2 x double>* %65, align 8, !alias.scope !18, !noalias !20, !llvm.access.group !27
  %66 = fmul <2 x double> %broadcast.splat.1, %wide.load48.1
  %67 = fsub <2 x double> %wide.load.1, %66
  %68 = bitcast double* %59 to <2 x double>*
  store <2 x double> %67, <2 x double>* %68, align 8, !alias.scope !18, !noalias !20, !llvm.access.group !27
  %index.next.1 = add i64 %index, 4
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !30

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %69 = add nuw nsw i64 %index.unr, %21
  %70 = add i64 %42, %index.unr
  %71 = getelementptr double, double* %polly.access.cast.polly.subfunc.arg.call.i, i64 %70
  %72 = bitcast double* %71 to <2 x double>*
  %wide.load.epil = load <2 x double>, <2 x double>* %72, align 8, !alias.scope !18, !noalias !20, !llvm.access.group !27
  %73 = load double, double* %scevgep2324.us, align 8, !alias.scope !18, !noalias !20, !llvm.access.group !27
  %broadcast.splatinsert.epil = insertelement <2 x double> poison, double %73, i32 0
  %broadcast.splat.epil = shufflevector <2 x double> %broadcast.splatinsert.epil, <2 x double> poison, <2 x i32> zeroinitializer
  %74 = add i64 %69, %40
  %75 = shl i64 %74, 3
  %76 = getelementptr i8, i8* %scevgep25, i64 %75
  %77 = bitcast i8* %76 to <2 x double>*
  %wide.load48.epil = load <2 x double>, <2 x double>* %77, align 8, !alias.scope !18, !noalias !20, !llvm.access.group !27
  %78 = fmul <2 x double> %broadcast.splat.epil, %wide.load48.epil
  %79 = fsub <2 x double> %wide.load.epil, %78
  %80 = bitcast double* %71 to <2 x double>*
  store <2 x double> %79, <2 x double>* %80, align 8, !alias.scope !18, !noalias !20, !llvm.access.group !27
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %34, %n.vec
  br i1 %cmp.n, label %polly.loop_exit18.us, label %polly.stmt.for.body33.us.i.us.preheader

polly.stmt.for.body33.us.i.us.preheader:          ; preds = %polly.stmt.for.body33.us.i.preheader.us, %middle.block
  %polly.indvar20.us.ph = phi i64 [ 0, %polly.stmt.for.body33.us.i.preheader.us ], [ %n.vec, %middle.block ]
  br label %polly.stmt.for.body33.us.i.us

polly.loop_exit10.loopexit.us:                    ; preds = %polly.loop_exit18.us
  %polly.indvar_next5.us = add nuw i64 %polly.indvar4.us, 1
  %indvars.iv.next36 = add i64 %indvars.iv35, -32
  %exitcond42.not = icmp eq i64 %polly.indvar_next5.us, %indvars.iv40
  br i1 %exitcond42.not, label %polly.loop_exit3, label %polly.loop_if7.us
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #9

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #9

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
!9 = distinct !{!9, !7, !10}
!10 = !{!"llvm.loop.isvectorized", i32 1}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = !{!15, !15, i64 0}
!15 = !{!"any pointer", !4, i64 0}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !19, !"polly.alias.scope.MemRef0"}
!19 = distinct !{!19, !"polly.alias.scope.domain"}
!20 = !{}
!21 = distinct !{}
!22 = !{!18}
!23 = distinct !{!23, !24, !10}
!24 = !{!"llvm.loop.parallel_accesses", !21}
!25 = distinct !{!25, !24, !26, !10}
!26 = !{!"llvm.loop.unroll.runtime.disable"}
!27 = distinct !{}
!28 = distinct !{!28, !29, !26, !10}
!29 = !{!"llvm.loop.parallel_accesses", !27}
!30 = distinct !{!30, !29, !10}

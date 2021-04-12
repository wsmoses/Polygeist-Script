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
entry.split:
  %call.i = tail call noalias dereferenceable_or_null(128000000) i8* @malloc(i64 128000000) #9
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
  %broadcast.splatinsert148 = insertelement <2 x double> poison, double %13, i32 0
  %broadcast.splat149 = shufflevector <2 x double> %broadcast.splatinsert148, <2 x double> poison, <2 x i32> zeroinitializer
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
  %30 = fmul <2 x double> %broadcast.splat149, %28
  %31 = getelementptr inbounds [4000 x [4000 x double]], [4000 x [4000 x double]]* %12, i64 0, i64 %indvars.iv30.i, i64 %index
  %32 = bitcast double* %31 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %32, align 8, !tbaa !2
  %33 = getelementptr inbounds double, double* %31, i64 2
  %34 = bitcast double* %33 to <2 x double>*
  %wide.load150 = load <2 x double>, <2 x double>* %34, align 8, !tbaa !2
  %35 = fadd <2 x double> %wide.load, %29
  %36 = fadd <2 x double> %wide.load150, %30
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
  br i1 %exitcond43.not.i.1, label %polly.loop_preheader, label %for.cond82.preheader.i, !llvm.loop !13

kernel_lu.exit:                                   ; preds = %polly.loop_exit83
  tail call void (...) @polybench_timer_stop() #9
  tail call void (...) @polybench_timer_print() #9
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_lu.exit
  %42 = load i8*, i8** %argv, align 8, !tbaa !14
  %strcmpload = load i8, i8* %42, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !14
  %44 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %43) #10
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !14
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #10
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
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %49) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !14
  %arrayidx8.i20 = getelementptr inbounds [4000 x double], [4000 x double]* %arraydecay, i64 %indvars.iv4.i, i64 %indvars.iv.i19
  %51 = load double, double* %arrayidx8.i20, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %51) #10
  %indvars.iv.next.i21 = add nuw nsw i64 %indvars.iv.i19, 1
  %exitcond.not.i22 = icmp eq i64 %indvars.iv.next.i21, 4000
  br i1 %exitcond.not.i22, label %for.inc10.i, label %for.body4.i, !llvm.loop !16

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 4000
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !17

print_array.exit:                                 ; preds = %for.inc10.i
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !14
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #10
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !14
  %54 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %53) #10
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_lu.exit
  tail call void @free(i8* %call.i) #9
  ret i32 0

polly.loop_exit83:                                ; preds = %polly.loop_exit90
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond145.not = icmp eq i64 %79, 3999
  br i1 %exitcond145.not, label %kernel_lu.exit, label %polly.loop_preheader24

polly.loop_preheader:                             ; preds = %for.cond82.preheader.i
  tail call void @free(i8* nonnull %call.i.i) #9
  tail call void (...) @polybench_timer_start() #9
  %polly.access.cast.call.i = bitcast i8* %call.i to double*
  br label %polly.loop_preheader24

polly.stmt.for.end.i18:                           ; preds = %polly.stmt.for.end.i18.prol.loopexit, %polly.stmt.for.end.i18
  %polly.indvar26 = phi i64 [ %polly.indvar_next27.1, %polly.stmt.for.end.i18 ], [ %polly.indvar26.unr.ph, %polly.stmt.for.end.i18.prol.loopexit ]
  %polly.access.mul.call.i = mul nuw nsw i64 %polly.indvar26, 4000
  %polly.access.add.call.i = add nuw nsw i64 %polly.access.mul.call.i, %polly.indvar
  %polly.access.call.i = getelementptr double, double* %polly.access.cast.call.i, i64 %polly.access.add.call.i
  %polly.access.call.i.reload = load double, double* %polly.access.call.i, align 8, !alias.scope !18, !noalias !20
  %_p_scalar_ = load double, double* %scevgep29, align 8, !alias.scope !18, !noalias !20
  %p_div.i17 = fdiv double %polly.access.call.i.reload, %_p_scalar_
  %55 = mul nuw nsw i64 %polly.indvar26, 32000
  %scevgep31 = getelementptr i8, i8* %scevgep30, i64 %55
  %scevgep3132 = bitcast i8* %scevgep31 to double*
  store double %p_div.i17, double* %scevgep3132, align 8, !alias.scope !18, !noalias !20
  %polly.indvar_next27 = add nuw nsw i64 %polly.indvar26, 1
  %polly.access.mul.call.i.1 = mul nuw nsw i64 %polly.indvar_next27, 4000
  %polly.access.add.call.i.1 = add nuw nsw i64 %polly.access.mul.call.i.1, %polly.indvar
  %polly.access.call.i.1 = getelementptr double, double* %polly.access.cast.call.i, i64 %polly.access.add.call.i.1
  %polly.access.call.i.reload.1 = load double, double* %polly.access.call.i.1, align 8, !alias.scope !18, !noalias !20
  %_p_scalar_.1 = load double, double* %scevgep29, align 8, !alias.scope !18, !noalias !20
  %p_div.i17.1 = fdiv double %polly.access.call.i.reload.1, %_p_scalar_.1
  %56 = mul nuw nsw i64 %polly.indvar_next27, 32000
  %scevgep31.1 = getelementptr i8, i8* %scevgep30, i64 %56
  %scevgep3132.1 = bitcast i8* %scevgep31.1 to double*
  store double %p_div.i17.1, double* %scevgep3132.1, align 8, !alias.scope !18, !noalias !20
  %polly.indvar_next27.1 = add nuw nsw i64 %polly.indvar26, 2
  %exitcond.not.1 = icmp eq i64 %polly.indvar_next27.1, 4000
  br i1 %exitcond.not.1, label %polly.loop_if, label %polly.stmt.for.end.i18

polly.loop_preheader24:                           ; preds = %polly.loop_preheader, %polly.loop_exit83
  %indvars.iv = phi i64 [ 1, %polly.loop_preheader ], [ %indvars.iv.next, %polly.loop_exit83 ]
  %polly.indvar = phi i64 [ 0, %polly.loop_preheader ], [ %79, %polly.loop_exit83 ]
  %57 = add nuw i64 %polly.indvar, 1
  %58 = lshr i64 %57, 5
  %59 = sub nsw i64 1, %polly.indvar
  %60 = add nuw i64 %polly.indvar, 1
  %61 = and i64 %60, -32
  %62 = add nuw i64 %polly.indvar, 2
  %63 = and i64 %62, -32
  %64 = or i64 %61, 1
  %65 = sub i64 %64, %63
  %66 = sub i64 %polly.indvar, %63
  %67 = shl nuw nsw i64 %60, 3
  %68 = and i64 %67, -256
  %69 = or i64 %68, 8
  %70 = shl nuw nsw i64 %polly.indvar, 3
  %71 = or i64 %70, 1
  %72 = mul nuw nsw i64 %polly.indvar, 32000
  %scevgep192 = getelementptr i8, i8* %call.i, i64 %72
  %73 = or i64 %72, 8
  %scevgep194 = getelementptr i8, i8* %call.i, i64 %73
  %74 = shl nuw nsw i64 %polly.indvar, 3
  %75 = or i64 %74, 1
  %76 = lshr i64 %indvars.iv, 5
  %77 = sub nsw i64 124, %76
  %78 = mul nsw i64 %76, -32
  %79 = add nuw nsw i64 %polly.indvar, 1
  %80 = mul nuw nsw i64 %polly.indvar, 32008
  %scevgep = getelementptr i8, i8* %call.i, i64 %80
  %scevgep29 = bitcast i8* %scevgep to double*
  %81 = shl nuw nsw i64 %polly.indvar, 3
  %scevgep30 = getelementptr i8, i8* %call.i, i64 %81
  %xtraiter225 = and i64 %59, 1
  %lcmp.mod226.not = icmp eq i64 %xtraiter225, 0
  br i1 %lcmp.mod226.not, label %polly.stmt.for.end.i18.prol.loopexit, label %polly.stmt.for.end.i18.prol

polly.stmt.for.end.i18.prol:                      ; preds = %polly.loop_preheader24
  %polly.access.mul.call.i.prol = mul nuw nsw i64 %79, 4000
  %polly.access.add.call.i.prol = add nuw nsw i64 %polly.access.mul.call.i.prol, %polly.indvar
  %polly.access.call.i.prol = getelementptr double, double* %polly.access.cast.call.i, i64 %polly.access.add.call.i.prol
  %polly.access.call.i.reload.prol = load double, double* %polly.access.call.i.prol, align 8, !alias.scope !18, !noalias !20
  %_p_scalar_.prol = load double, double* %scevgep29, align 8, !alias.scope !18, !noalias !20
  %p_div.i17.prol = fdiv double %polly.access.call.i.reload.prol, %_p_scalar_.prol
  %82 = mul nuw nsw i64 %79, 32000
  %scevgep31.prol = getelementptr i8, i8* %scevgep30, i64 %82
  %scevgep3132.prol = bitcast i8* %scevgep31.prol to double*
  store double %p_div.i17.prol, double* %scevgep3132.prol, align 8, !alias.scope !18, !noalias !20
  %polly.indvar_next27.prol = add nuw nsw i64 %polly.indvar, 2
  br label %polly.stmt.for.end.i18.prol.loopexit

polly.stmt.for.end.i18.prol.loopexit:             ; preds = %polly.stmt.for.end.i18.prol, %polly.loop_preheader24
  %polly.indvar26.unr.ph = phi i64 [ %polly.indvar_next27.prol, %polly.stmt.for.end.i18.prol ], [ %79, %polly.loop_preheader24 ]
  %83 = icmp eq i64 %polly.indvar, 3998
  br i1 %83, label %polly.loop_if, label %polly.stmt.for.end.i18

polly.loop_if:                                    ; preds = %polly.stmt.for.end.i18, %polly.stmt.for.end.i18.prol.loopexit
  %polly.loop_guard = icmp ult i64 %polly.indvar, 3998
  br i1 %polly.loop_guard, label %polly.loop_preheader34, label %polly.loop_if.polly.loop_preheader82_crit_edge

polly.loop_if.polly.loop_preheader82_crit_edge:   ; preds = %polly.loop_if
  %.pre = lshr i64 %79, 5
  %.pre146 = mul nuw nsw i64 %polly.indvar, 32000
  br label %polly.loop_preheader82

polly.loop_exit43:                                ; preds = %polly.loop_exit51, %polly.loop_if40
  %polly.indvar_next37 = add nuw nsw i64 %polly.indvar36, 1
  %polly.loop_cond38 = icmp ult i64 %polly.indvar36, 124
  %indvar.next183 = add i64 %indvar182, 1
  br i1 %polly.loop_cond38, label %polly.loop_if40, label %polly.loop_preheader82

polly.loop_preheader34:                           ; preds = %polly.loop_if
  %84 = add nuw nsw i64 %polly.indvar, 2
  %pexp.p_div_q = lshr i64 %84, 5
  %85 = mul nuw nsw i64 %polly.indvar, 32000
  %scevgep72 = getelementptr i8, i8* %call.i, i64 %85
  %pexp.p_div_q39 = lshr i64 %79, 5
  br label %polly.loop_if40

polly.loop_if40:                                  ; preds = %polly.loop_preheader34, %polly.loop_exit43
  %indvar182 = phi i64 [ 0, %polly.loop_preheader34 ], [ %indvar.next183, %polly.loop_exit43 ]
  %polly.indvar36 = phi i64 [ %pexp.p_div_q, %polly.loop_preheader34 ], [ %polly.indvar_next37, %polly.loop_exit43 ]
  %86 = shl nuw nsw i64 %indvar182, 5
  %87 = add i64 %63, %86
  %88 = mul nsw i64 %indvar182, -32
  %89 = add i64 %65, %88
  %90 = add i64 %66, %88
  %smax184 = call i64 @llvm.smax.i64(i64 %90, i64 -2)
  %91 = add nsw i64 %smax184, 2
  %polly.loop_guard44.not = icmp ugt i64 %pexp.p_div_q39, %polly.indvar36
  br i1 %polly.loop_guard44.not, label %polly.loop_exit43, label %polly.loop_if48.preheader

polly.loop_if48.preheader:                        ; preds = %polly.loop_if40
  %92 = shl nuw nsw i64 %polly.indvar36, 5
  %93 = sub nsw i64 %polly.indvar, %92
  %94 = icmp sgt i64 %93, -2
  %95 = select i1 %94, i64 %93, i64 -2
  %96 = add nsw i64 %95, 2
  %97 = mul nsw i64 %polly.indvar36, -32
  br label %polly.loop_if48

polly.loop_exit51:                                ; preds = %polly.loop_exit59, %polly.loop_if48
  %polly.indvar_next46 = add nuw nsw i64 %polly.indvar45, 1
  %polly.loop_cond47.not.not = icmp ult i64 %polly.indvar45, %polly.indvar36
  %indvar.next181 = add i64 %indvar180, 1
  br i1 %polly.loop_cond47.not.not, label %polly.loop_if48, label %polly.loop_exit43

polly.loop_if48:                                  ; preds = %polly.loop_if48.preheader, %polly.loop_exit51
  %indvar180 = phi i64 [ 0, %polly.loop_if48.preheader ], [ %indvar.next181, %polly.loop_exit51 ]
  %polly.indvar45 = phi i64 [ %pexp.p_div_q39, %polly.loop_if48.preheader ], [ %polly.indvar_next46, %polly.loop_exit51 ]
  %98 = shl nuw nsw i64 %indvar180, 5
  %99 = add i64 %61, %98
  %100 = add i64 %89, %98
  %smax185 = call i64 @llvm.smax.i64(i64 %100, i64 %91)
  %101 = add i64 %87, %smax185
  %102 = shl nuw nsw i64 %indvar180, 8
  %103 = add i64 %69, %102
  %104 = mul nuw nsw i64 %101, 32000
  %105 = add i64 %103, %104
  %106 = add i64 %71, %104
  %107 = shl nsw i64 %polly.indvar45, 5
  %108 = add nsw i64 %107, %97
  %109 = or i64 %108, 1
  %110 = icmp sgt i64 %96, %109
  %111 = select i1 %110, i64 %96, i64 %109
  %polly.loop_guard52 = icmp slt i64 %111, 32
  br i1 %polly.loop_guard52, label %polly.loop_if56.preheader, label %polly.loop_exit51

polly.loop_if56.preheader:                        ; preds = %polly.loop_if48
  %112 = mul nuw nsw i64 %101, 4000
  %113 = sub nsw i64 %polly.indvar, %107
  %114 = add nsw i64 %113, 1
  %.inv127 = icmp slt i64 %113, 0
  %115 = select i1 %.inv127, i64 0, i64 %114
  %116 = sub nsw i64 %92, %107
  %117 = add i64 %115, %99
  %118 = add i64 %117, %112
  %119 = shl i64 %118, 3
  %120 = add nsw i64 %115, %99
  %121 = shl i64 %120, 3
  %scevgep193 = getelementptr i8, i8* %scevgep192, i64 %121
  %122 = sub i64 1, %115
  br label %polly.loop_if56

polly.loop_exit59:                                ; preds = %polly.stmt.for.body6.i.prol.loopexit, %polly.stmt.for.body6.i, %middle.block205, %polly.loop_if56
  %polly.indvar_next54 = add nuw nsw i64 %polly.indvar53, 1
  %polly.loop_cond55 = icmp ult i64 %polly.indvar53, 31
  %indvar.next187 = add i64 %indvar186, 1
  br i1 %polly.loop_cond55, label %polly.loop_if56, label %polly.loop_exit51

polly.loop_if56:                                  ; preds = %polly.loop_if56.preheader, %polly.loop_exit59
  %indvar186 = phi i64 [ 0, %polly.loop_if56.preheader ], [ %indvar.next187, %polly.loop_exit59 ]
  %polly.indvar53 = phi i64 [ %111, %polly.loop_if56.preheader ], [ %polly.indvar_next54, %polly.loop_exit59 ]
  %123 = mul nuw nsw i64 %indvar186, 32000
  %124 = add i64 %119, %123
  %scevgep188 = getelementptr i8, i8* %call.i, i64 %124
  %125 = add i64 %105, %123
  %scevgep189 = getelementptr i8, i8* %call.i, i64 %125
  %126 = add i64 %106, %123
  %scevgep191 = getelementptr i8, i8* %call.i, i64 %126
  %127 = add nsw i64 %polly.indvar53, %116
  %128 = add nsw i64 %127, -1
  %.inv128 = icmp sgt i64 %127, 31
  %129 = select i1 %.inv128, i64 31, i64 %128
  %polly.loop_guard60.not = icmp sgt i64 %115, %129
  br i1 %polly.loop_guard60.not, label %polly.loop_exit59, label %polly.stmt.for.body6.i.preheader

polly.stmt.for.body6.i.preheader:                 ; preds = %polly.loop_if56
  %130 = add nsw i64 %polly.indvar53, %92
  %polly.access.mul.call.i65 = mul nuw nsw i64 %130, 4000
  %131 = mul nuw nsw i64 %130, 32000
  %scevgep69 = getelementptr i8, i8* %scevgep30, i64 %131
  %scevgep6970 = bitcast i8* %scevgep69 to double*
  %132 = add i64 %122, %129
  %min.iters.check208 = icmp ult i64 %132, 4
  br i1 %min.iters.check208, label %polly.stmt.for.body6.i.preheader224, label %vector.memcheck179

vector.memcheck179:                               ; preds = %polly.stmt.for.body6.i.preheader
  %133 = shl i64 %129, 3
  %scevgep190 = getelementptr i8, i8* %scevgep189, i64 %133
  %134 = add i64 %99, %129
  %135 = shl i64 %134, 3
  %scevgep195 = getelementptr i8, i8* %scevgep194, i64 %135
  %bound0197 = icmp ult i8* %scevgep188, %scevgep191
  %bound1198 = icmp ult i8* %scevgep69, %scevgep190
  %found.conflict199 = and i1 %bound0197, %bound1198
  %bound0200 = icmp ult i8* %scevgep188, %scevgep195
  %bound1201 = icmp ult i8* %scevgep193, %scevgep190
  %found.conflict202 = and i1 %bound0200, %bound1201
  %conflict.rdx203 = or i1 %found.conflict199, %found.conflict202
  br i1 %conflict.rdx203, label %polly.stmt.for.body6.i.preheader224, label %vector.ph209

vector.ph209:                                     ; preds = %vector.memcheck179
  %n.vec211 = and i64 %132, -4
  %ind.end = add i64 %115, %n.vec211
  %136 = load double, double* %scevgep6970, align 8, !alias.scope !21, !noalias !20
  %broadcast.splatinsert220 = insertelement <2 x double> poison, double %136, i32 0
  %broadcast.splat221 = shufflevector <2 x double> %broadcast.splatinsert220, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert222 = insertelement <2 x double> poison, double %136, i32 0
  %broadcast.splat223 = shufflevector <2 x double> %broadcast.splatinsert222, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body207

vector.body207:                                   ; preds = %vector.body207, %vector.ph209
  %index212 = phi i64 [ 0, %vector.ph209 ], [ %index.next213, %vector.body207 ]
  %offset.idx = add i64 %115, %index212
  %137 = add nsw i64 %offset.idx, %107
  %138 = add nsw i64 %137, %polly.access.mul.call.i65
  %139 = getelementptr double, double* %polly.access.cast.call.i, i64 %138
  %140 = bitcast double* %139 to <2 x double>*
  %wide.load216 = load <2 x double>, <2 x double>* %140, align 8, !alias.scope !24, !noalias !26
  %141 = getelementptr double, double* %139, i64 2
  %142 = bitcast double* %141 to <2 x double>*
  %wide.load217 = load <2 x double>, <2 x double>* %142, align 8, !alias.scope !24, !noalias !26
  %143 = shl i64 %137, 3
  %144 = getelementptr i8, i8* %scevgep72, i64 %143
  %145 = bitcast i8* %144 to <2 x double>*
  %wide.load218 = load <2 x double>, <2 x double>* %145, align 8, !alias.scope !28, !noalias !20
  %146 = getelementptr i8, i8* %144, i64 16
  %147 = bitcast i8* %146 to <2 x double>*
  %wide.load219 = load <2 x double>, <2 x double>* %147, align 8, !alias.scope !28, !noalias !20
  %148 = fmul <2 x double> %broadcast.splat221, %wide.load218
  %149 = fmul <2 x double> %broadcast.splat223, %wide.load219
  %150 = fsub <2 x double> %wide.load216, %148
  %151 = fsub <2 x double> %wide.load217, %149
  %152 = bitcast double* %139 to <2 x double>*
  store <2 x double> %150, <2 x double>* %152, align 8, !alias.scope !24, !noalias !26
  %153 = bitcast double* %141 to <2 x double>*
  store <2 x double> %151, <2 x double>* %153, align 8, !alias.scope !24, !noalias !26
  %index.next213 = add i64 %index212, 4
  %154 = icmp eq i64 %index.next213, %n.vec211
  br i1 %154, label %middle.block205, label %vector.body207, !llvm.loop !29

middle.block205:                                  ; preds = %vector.body207
  %cmp.n215 = icmp eq i64 %132, %n.vec211
  br i1 %cmp.n215, label %polly.loop_exit59, label %polly.stmt.for.body6.i.preheader224

polly.stmt.for.body6.i.preheader224:              ; preds = %vector.memcheck179, %polly.stmt.for.body6.i.preheader, %middle.block205
  %polly.indvar61.ph = phi i64 [ %115, %vector.memcheck179 ], [ %115, %polly.stmt.for.body6.i.preheader ], [ %ind.end, %middle.block205 ]
  %155 = add i64 %129, 1
  %156 = sub i64 %155, %polly.indvar61.ph
  %xtraiter227 = and i64 %156, 1
  %lcmp.mod228.not = icmp eq i64 %xtraiter227, 0
  br i1 %lcmp.mod228.not, label %polly.stmt.for.body6.i.prol.loopexit, label %polly.stmt.for.body6.i.prol

polly.stmt.for.body6.i.prol:                      ; preds = %polly.stmt.for.body6.i.preheader224
  %157 = add nsw i64 %polly.indvar61.ph, %107
  %polly.access.add.call.i66.prol = add nsw i64 %157, %polly.access.mul.call.i65
  %polly.access.call.i67.prol = getelementptr double, double* %polly.access.cast.call.i, i64 %polly.access.add.call.i66.prol
  %polly.access.call.i67.reload.prol = load double, double* %polly.access.call.i67.prol, align 8, !alias.scope !18, !noalias !20
  %_p_scalar_71.prol = load double, double* %scevgep6970, align 8, !alias.scope !18, !noalias !20
  %158 = shl i64 %157, 3
  %scevgep73.prol = getelementptr i8, i8* %scevgep72, i64 %158
  %scevgep7374.prol = bitcast i8* %scevgep73.prol to double*
  %_p_scalar_75.prol = load double, double* %scevgep7374.prol, align 8, !alias.scope !18, !noalias !20
  %p_mul.i14.prol = fmul double %_p_scalar_71.prol, %_p_scalar_75.prol
  %p_sub.i.prol = fsub double %polly.access.call.i67.reload.prol, %p_mul.i14.prol
  store double %p_sub.i.prol, double* %polly.access.call.i67.prol, align 8, !alias.scope !18, !noalias !20
  %polly.indvar_next62.prol = add i64 %polly.indvar61.ph, 1
  br label %polly.stmt.for.body6.i.prol.loopexit

polly.stmt.for.body6.i.prol.loopexit:             ; preds = %polly.stmt.for.body6.i.prol, %polly.stmt.for.body6.i.preheader224
  %polly.indvar61.unr.ph = phi i64 [ %polly.indvar_next62.prol, %polly.stmt.for.body6.i.prol ], [ %polly.indvar61.ph, %polly.stmt.for.body6.i.preheader224 ]
  %159 = icmp eq i64 %129, %polly.indvar61.ph
  br i1 %159, label %polly.loop_exit59, label %polly.stmt.for.body6.i

polly.stmt.for.body6.i:                           ; preds = %polly.stmt.for.body6.i.prol.loopexit, %polly.stmt.for.body6.i
  %polly.indvar61 = phi i64 [ %polly.indvar_next62.1, %polly.stmt.for.body6.i ], [ %polly.indvar61.unr.ph, %polly.stmt.for.body6.i.prol.loopexit ]
  %160 = add nsw i64 %polly.indvar61, %107
  %polly.access.add.call.i66 = add nsw i64 %160, %polly.access.mul.call.i65
  %polly.access.call.i67 = getelementptr double, double* %polly.access.cast.call.i, i64 %polly.access.add.call.i66
  %polly.access.call.i67.reload = load double, double* %polly.access.call.i67, align 8, !alias.scope !18, !noalias !20
  %_p_scalar_71 = load double, double* %scevgep6970, align 8, !alias.scope !18, !noalias !20
  %161 = shl i64 %160, 3
  %scevgep73 = getelementptr i8, i8* %scevgep72, i64 %161
  %scevgep7374 = bitcast i8* %scevgep73 to double*
  %_p_scalar_75 = load double, double* %scevgep7374, align 8, !alias.scope !18, !noalias !20
  %p_mul.i14 = fmul double %_p_scalar_71, %_p_scalar_75
  %p_sub.i = fsub double %polly.access.call.i67.reload, %p_mul.i14
  store double %p_sub.i, double* %polly.access.call.i67, align 8, !alias.scope !18, !noalias !20
  %polly.indvar_next62 = add i64 %polly.indvar61, 1
  %162 = add nsw i64 %polly.indvar_next62, %107
  %polly.access.add.call.i66.1 = add nsw i64 %162, %polly.access.mul.call.i65
  %polly.access.call.i67.1 = getelementptr double, double* %polly.access.cast.call.i, i64 %polly.access.add.call.i66.1
  %polly.access.call.i67.reload.1 = load double, double* %polly.access.call.i67.1, align 8, !alias.scope !18, !noalias !20
  %_p_scalar_71.1 = load double, double* %scevgep6970, align 8, !alias.scope !18, !noalias !20
  %163 = shl i64 %162, 3
  %scevgep73.1 = getelementptr i8, i8* %scevgep72, i64 %163
  %scevgep7374.1 = bitcast i8* %scevgep73.1 to double*
  %_p_scalar_75.1 = load double, double* %scevgep7374.1, align 8, !alias.scope !18, !noalias !20
  %p_mul.i14.1 = fmul double %_p_scalar_71.1, %_p_scalar_75.1
  %p_sub.i.1 = fsub double %polly.access.call.i67.reload.1, %p_mul.i14.1
  store double %p_sub.i.1, double* %polly.access.call.i67.1, align 8, !alias.scope !18, !noalias !20
  %polly.indvar_next62.1 = add i64 %polly.indvar61, 2
  %exitcond131.not.1 = icmp eq i64 %polly.indvar_next62, %129
  br i1 %exitcond131.not.1, label %polly.loop_exit59, label %polly.stmt.for.body6.i, !llvm.loop !30

polly.loop_exit90:                                ; preds = %polly.loop_exit98.loopexit.us, %polly.loop_if95.preheader
  %polly.indvar_next85 = add nuw nsw i64 %polly.indvar84, 1
  %indvars.iv.next133 = add nsw i64 %indvars.iv132, -32
  %indvars.iv.next141 = add nsw i64 %indvars.iv140, -1
  %exitcond144.not = icmp eq i64 %polly.indvar_next85, 125
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond144.not, label %polly.loop_exit83, label %polly.loop_if95.preheader

polly.loop_preheader82:                           ; preds = %polly.loop_exit43, %polly.loop_if.polly.loop_preheader82_crit_edge
  %.pre-phi = phi i64 [ %.pre146, %polly.loop_if.polly.loop_preheader82_crit_edge ], [ %85, %polly.loop_exit43 ]
  %pexp.p_div_q80.pre-phi = phi i64 [ %.pre, %polly.loop_if.polly.loop_preheader82_crit_edge ], [ %pexp.p_div_q39, %polly.loop_exit43 ]
  %scevgep119 = getelementptr i8, i8* %call.i, i64 %.pre-phi
  %164 = or i64 %.pre-phi, 8
  br label %polly.loop_if95.preheader

polly.loop_if95.preheader:                        ; preds = %polly.loop_exit90, %polly.loop_preheader82
  %indvar = phi i64 [ %indvar.next, %polly.loop_exit90 ], [ 0, %polly.loop_preheader82 ]
  %indvars.iv140 = phi i64 [ %indvars.iv.next141, %polly.loop_exit90 ], [ %77, %polly.loop_preheader82 ]
  %indvars.iv132 = phi i64 [ %indvars.iv.next133, %polly.loop_exit90 ], [ %78, %polly.loop_preheader82 ]
  %polly.indvar84 = phi i64 [ %polly.indvar_next85, %polly.loop_exit90 ], [ %pexp.p_div_q80.pre-phi, %polly.loop_preheader82 ]
  %smax142 = call i64 @llvm.smax.i64(i64 %indvars.iv140, i64 0)
  %165 = shl nsw i64 %polly.indvar84, 5
  %166 = sub nsw i64 %polly.indvar, %165
  %167 = add nsw i64 %166, 1
  %.inv = icmp slt i64 %166, 0
  %168 = select i1 %.inv, i64 0, i64 %167
  %polly.loop_guard99 = icmp slt i64 %168, 32
  %169 = mul nsw i64 %polly.indvar84, -32
  br i1 %polly.loop_guard99, label %polly.loop_if95.us.preheader, label %polly.loop_exit90

polly.loop_if95.us.preheader:                     ; preds = %polly.loop_if95.preheader
  %170 = add i64 %58, %indvar
  %171 = add i64 %pexp.p_div_q80.pre-phi, %indvar
  %172 = shl i64 %171, 5
  %173 = sub i64 %indvars.iv132, %168
  %174 = add i64 %168, %172
  %175 = mul i64 %174, 32008
  %176 = add i64 %175, 8
  %177 = mul i64 %174, 32000
  %178 = add i64 %75, %177
  %179 = shl i64 %174, 3
  %180 = add i64 %.pre-phi, %179
  %181 = add i64 %164, %179
  br label %polly.loop_if95.us

polly.loop_if95.us:                               ; preds = %polly.loop_if95.us.preheader, %polly.loop_exit98.loopexit.us
  %indvars.iv134 = phi i64 [ %173, %polly.loop_if95.us.preheader ], [ %indvars.iv.next135, %polly.loop_exit98.loopexit.us ]
  %polly.indvar92.us = phi i64 [ 0, %polly.loop_if95.us.preheader ], [ %polly.indvar_next93.us, %polly.loop_exit98.loopexit.us ]
  %182 = mul nsw i64 %polly.indvar92.us, -32
  %183 = add i64 %173, %182
  %184 = mul nsw i64 %polly.indvar92.us, -32
  %185 = add i64 %173, %184
  %186 = shl nuw nsw i64 %polly.indvar92.us, 8
  %187 = add i64 %175, %186
  %188 = add i64 %176, %186
  %189 = mul nsw i64 %polly.indvar92.us, -32
  %190 = add i64 %173, %189
  %191 = add i64 %180, %186
  %192 = add i64 %181, %186
  %193 = shl nsw i64 %polly.indvar92.us, 5
  %194 = sub nsw i64 %169, %193
  %195 = add i64 %170, %polly.indvar92.us
  %196 = mul i64 %195, -32
  br label %polly.loop_if103.us

polly.loop_if103.us:                              ; preds = %polly.loop_if95.us, %polly.loop_exit106.us
  %indvar151 = phi i64 [ 0, %polly.loop_if95.us ], [ %indvar.next152, %polly.loop_exit106.us ]
  %indvars.iv136 = phi i64 [ %indvars.iv134, %polly.loop_if95.us ], [ %indvars.iv.next137, %polly.loop_exit106.us ]
  %polly.indvar100.us = phi i64 [ %168, %polly.loop_if95.us ], [ %polly.indvar_next101.us, %polly.loop_exit106.us ]
  %197 = sub i64 %183, %indvar151
  %smin235 = call i64 @llvm.smin.i64(i64 %197, i64 -3968)
  %198 = add nsw i64 %smin235, 3999
  %smax236 = call i64 @llvm.smax.i64(i64 %198, i64 0)
  %199 = add i64 %168, %indvar151
  %200 = sub i64 %196, %199
  %smin229 = call i64 @llvm.smin.i64(i64 %200, i64 -3968)
  %201 = add nsw i64 %smin229, 3999
  %smax230 = call i64 @llvm.smax.i64(i64 %201, i64 0)
  %202 = add nuw nsw i64 %smax230, 1
  %203 = and i64 %202, 9223372036854775806
  %204 = add nsw i64 %203, -2
  %205 = lshr exact i64 %204, 1
  %206 = add nuw i64 %205, 1
  %207 = sub i64 %185, %indvar151
  %smin168 = call i64 @llvm.smin.i64(i64 %207, i64 -3968)
  %208 = add nsw i64 %smin168, 3999
  %smax169 = call i64 @llvm.smax.i64(i64 %208, i64 0)
  %209 = add nuw nsw i64 %smax169, 1
  %210 = mul i64 %indvar151, 32008
  %211 = add i64 %187, %210
  %scevgep153 = getelementptr i8, i8* %call.i, i64 %211
  %212 = add i64 %188, %210
  %scevgep154 = getelementptr i8, i8* %call.i, i64 %212
  %213 = sub i64 %190, %indvar151
  %smin155 = call i64 @llvm.smin.i64(i64 %213, i64 -3968)
  %214 = add nsw i64 %smin155, 3999
  %smax156 = call i64 @llvm.smax.i64(i64 %214, i64 0)
  %215 = shl nuw nsw i64 %smax156, 3
  %scevgep157 = getelementptr i8, i8* %scevgep154, i64 %215
  %216 = mul i64 %indvar151, 32000
  %217 = add i64 %178, %216
  %scevgep158 = getelementptr i8, i8* %call.i, i64 %217
  %218 = shl i64 %indvar151, 3
  %219 = add i64 %191, %218
  %scevgep159 = getelementptr i8, i8* %call.i, i64 %219
  %220 = add i64 %192, %218
  %scevgep160 = getelementptr i8, i8* %call.i, i64 %220
  %scevgep161 = getelementptr i8, i8* %scevgep160, i64 %215
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv136, i64 -3968)
  %221 = add nsw i64 %smin, 3999
  %smax = call i64 @llvm.smax.i64(i64 %221, i64 0)
  %222 = sub i64 %194, %polly.indvar100.us
  %polly.loop_guard107.us147 = icmp sgt i64 %222, -4000
  br i1 %polly.loop_guard107.us147, label %polly.stmt.for.body33.us.i.preheader.us, label %polly.loop_exit106.us

polly.stmt.for.body33.us.i.us:                    ; preds = %polly.stmt.for.body33.us.i.us.prol.loopexit, %polly.stmt.for.body33.us.i.us
  %polly.indvar108.us = phi i64 [ %polly.indvar_next109.us.1, %polly.stmt.for.body33.us.i.us ], [ %polly.indvar108.us.unr.ph, %polly.stmt.for.body33.us.i.us.prol.loopexit ]
  %223 = add nuw nsw i64 %polly.indvar108.us, %193
  %polly.access.add.call.i113.us = add i64 %231, %polly.indvar108.us
  %polly.access.call.i114.us = getelementptr double, double* %polly.access.cast.call.i, i64 %polly.access.add.call.i113.us
  %polly.access.call.i114.reload.us = load double, double* %polly.access.call.i114.us, align 8, !alias.scope !18, !noalias !20
  %_p_scalar_118.us = load double, double* %scevgep116117.us, align 8, !alias.scope !18, !noalias !20
  %224 = add i64 %223, %229
  %225 = shl i64 %224, 3
  %scevgep120.us = getelementptr i8, i8* %scevgep119, i64 %225
  %scevgep120121.us = bitcast i8* %scevgep120.us to double*
  %_p_scalar_122.us = load double, double* %scevgep120121.us, align 8, !alias.scope !18, !noalias !20
  %p_mul42.us.i.us = fmul double %_p_scalar_118.us, %_p_scalar_122.us
  %p_sub47.us.i.us = fsub double %polly.access.call.i114.reload.us, %p_mul42.us.i.us
  store double %p_sub47.us.i.us, double* %polly.access.call.i114.us, align 8, !alias.scope !18, !noalias !20
  %polly.indvar_next109.us = add nuw nsw i64 %polly.indvar108.us, 1
  %226 = add nuw nsw i64 %polly.indvar_next109.us, %193
  %polly.access.add.call.i113.us.1 = add i64 %231, %polly.indvar_next109.us
  %polly.access.call.i114.us.1 = getelementptr double, double* %polly.access.cast.call.i, i64 %polly.access.add.call.i113.us.1
  %polly.access.call.i114.reload.us.1 = load double, double* %polly.access.call.i114.us.1, align 8, !alias.scope !18, !noalias !20
  %_p_scalar_118.us.1 = load double, double* %scevgep116117.us, align 8, !alias.scope !18, !noalias !20
  %227 = add i64 %226, %229
  %228 = shl i64 %227, 3
  %scevgep120.us.1 = getelementptr i8, i8* %scevgep119, i64 %228
  %scevgep120121.us.1 = bitcast i8* %scevgep120.us.1 to double*
  %_p_scalar_122.us.1 = load double, double* %scevgep120121.us.1, align 8, !alias.scope !18, !noalias !20
  %p_mul42.us.i.us.1 = fmul double %_p_scalar_118.us.1, %_p_scalar_122.us.1
  %p_sub47.us.i.us.1 = fsub double %polly.access.call.i114.reload.us.1, %p_mul42.us.i.us.1
  store double %p_sub47.us.i.us.1, double* %polly.access.call.i114.us.1, align 8, !alias.scope !18, !noalias !20
  %polly.indvar_next109.us.1 = add nuw nsw i64 %polly.indvar108.us, 2
  %exitcond138.not.1 = icmp eq i64 %polly.indvar_next109.us, %smax
  br i1 %exitcond138.not.1, label %polly.loop_exit106.us, label %polly.stmt.for.body33.us.i.us, !llvm.loop !31

polly.loop_exit106.us:                            ; preds = %polly.stmt.for.body33.us.i.us.prol.loopexit, %polly.stmt.for.body33.us.i.us, %middle.block165, %polly.loop_if103.us
  %polly.indvar_next101.us = add i64 %polly.indvar100.us, 1
  %indvars.iv.next137 = add i64 %indvars.iv136, -1
  %exitcond139.not = icmp eq i64 %polly.indvar_next101.us, 32
  %indvar.next152 = add i64 %indvar151, 1
  br i1 %exitcond139.not, label %polly.loop_exit98.loopexit.us, label %polly.loop_if103.us

polly.stmt.for.body33.us.i.preheader.us:          ; preds = %polly.loop_if103.us
  %229 = add i64 %polly.indvar100.us, %165
  %polly.access.mul.call.i112.us = mul nsw i64 %229, 4000
  %230 = add i64 %229, %193
  %231 = add i64 %230, %polly.access.mul.call.i112.us
  %232 = mul i64 %229, 32000
  %scevgep116.us = getelementptr i8, i8* %scevgep30, i64 %232
  %scevgep116117.us = bitcast i8* %scevgep116.us to double*
  %min.iters.check = icmp ult i64 %smin168, -3998
  br i1 %min.iters.check, label %polly.stmt.for.body33.us.i.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %polly.stmt.for.body33.us.i.preheader.us
  %bound0 = icmp ult i8* %scevgep153, %scevgep158
  %bound1 = icmp ult i8* %scevgep116.us, %scevgep157
  %found.conflict = and i1 %bound0, %bound1
  %bound0162 = icmp ult i8* %scevgep153, %scevgep161
  %bound1163 = icmp ult i8* %scevgep159, %scevgep157
  %found.conflict164 = and i1 %bound0162, %bound1163
  %conflict.rdx = or i1 %found.conflict, %found.conflict164
  br i1 %conflict.rdx, label %polly.stmt.for.body33.us.i.us.preheader, label %vector.ph170

vector.ph170:                                     ; preds = %vector.memcheck
  %n.vec = and i64 %209, 9223372036854775806
  %xtraiter231 = and i64 %206, 1
  %233 = icmp eq i64 %204, 0
  br i1 %233, label %middle.block165.unr-lcssa, label %vector.ph170.new

vector.ph170.new:                                 ; preds = %vector.ph170
  %unroll_iter233 = and i64 %206, -2
  %234 = load double, double* %scevgep116117.us, align 8, !alias.scope !32, !noalias !20
  %broadcast.splatinsert177 = insertelement <2 x double> poison, double %234, i32 0
  %broadcast.splat178 = shufflevector <2 x double> %broadcast.splatinsert177, <2 x double> poison, <2 x i32> zeroinitializer
  %235 = load double, double* %scevgep116117.us, align 8, !alias.scope !32, !noalias !20
  %broadcast.splatinsert177.1 = insertelement <2 x double> poison, double %235, i32 0
  %broadcast.splat178.1 = shufflevector <2 x double> %broadcast.splatinsert177.1, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body167

vector.body167:                                   ; preds = %vector.body167, %vector.ph170.new
  %index171 = phi i64 [ 0, %vector.ph170.new ], [ %index.next172.1, %vector.body167 ]
  %niter234 = phi i64 [ %unroll_iter233, %vector.ph170.new ], [ %niter234.nsub.1, %vector.body167 ]
  %236 = add nuw nsw i64 %index171, %193
  %237 = add i64 %231, %index171
  %238 = getelementptr double, double* %polly.access.cast.call.i, i64 %237
  %239 = bitcast double* %238 to <2 x double>*
  %wide.load175 = load <2 x double>, <2 x double>* %239, align 8, !alias.scope !35, !noalias !37
  %240 = add i64 %236, %229
  %241 = shl i64 %240, 3
  %242 = getelementptr i8, i8* %scevgep119, i64 %241
  %243 = bitcast i8* %242 to <2 x double>*
  %wide.load176 = load <2 x double>, <2 x double>* %243, align 8, !alias.scope !39, !noalias !20
  %244 = fmul <2 x double> %broadcast.splat178, %wide.load176
  %245 = fsub <2 x double> %wide.load175, %244
  %246 = bitcast double* %238 to <2 x double>*
  store <2 x double> %245, <2 x double>* %246, align 8, !alias.scope !35, !noalias !37
  %index.next172 = or i64 %index171, 2
  %247 = add nuw nsw i64 %index.next172, %193
  %248 = add i64 %231, %index.next172
  %249 = getelementptr double, double* %polly.access.cast.call.i, i64 %248
  %250 = bitcast double* %249 to <2 x double>*
  %wide.load175.1 = load <2 x double>, <2 x double>* %250, align 8, !alias.scope !35, !noalias !37
  %251 = add i64 %247, %229
  %252 = shl i64 %251, 3
  %253 = getelementptr i8, i8* %scevgep119, i64 %252
  %254 = bitcast i8* %253 to <2 x double>*
  %wide.load176.1 = load <2 x double>, <2 x double>* %254, align 8, !alias.scope !39, !noalias !20
  %255 = fmul <2 x double> %broadcast.splat178.1, %wide.load176.1
  %256 = fsub <2 x double> %wide.load175.1, %255
  %257 = bitcast double* %249 to <2 x double>*
  store <2 x double> %256, <2 x double>* %257, align 8, !alias.scope !35, !noalias !37
  %index.next172.1 = add i64 %index171, 4
  %niter234.nsub.1 = add i64 %niter234, -2
  %niter234.ncmp.1 = icmp eq i64 %niter234.nsub.1, 0
  br i1 %niter234.ncmp.1, label %middle.block165.unr-lcssa, label %vector.body167, !llvm.loop !40

middle.block165.unr-lcssa:                        ; preds = %vector.body167, %vector.ph170
  %index171.unr = phi i64 [ 0, %vector.ph170 ], [ %index.next172.1, %vector.body167 ]
  %lcmp.mod232.not = icmp eq i64 %xtraiter231, 0
  br i1 %lcmp.mod232.not, label %middle.block165, label %vector.body167.epil

vector.body167.epil:                              ; preds = %middle.block165.unr-lcssa
  %258 = add nuw nsw i64 %index171.unr, %193
  %259 = add i64 %231, %index171.unr
  %260 = getelementptr double, double* %polly.access.cast.call.i, i64 %259
  %261 = bitcast double* %260 to <2 x double>*
  %wide.load175.epil = load <2 x double>, <2 x double>* %261, align 8, !alias.scope !35, !noalias !37
  %262 = load double, double* %scevgep116117.us, align 8, !alias.scope !32, !noalias !20
  %broadcast.splatinsert177.epil = insertelement <2 x double> poison, double %262, i32 0
  %broadcast.splat178.epil = shufflevector <2 x double> %broadcast.splatinsert177.epil, <2 x double> poison, <2 x i32> zeroinitializer
  %263 = add i64 %258, %229
  %264 = shl i64 %263, 3
  %265 = getelementptr i8, i8* %scevgep119, i64 %264
  %266 = bitcast i8* %265 to <2 x double>*
  %wide.load176.epil = load <2 x double>, <2 x double>* %266, align 8, !alias.scope !39, !noalias !20
  %267 = fmul <2 x double> %broadcast.splat178.epil, %wide.load176.epil
  %268 = fsub <2 x double> %wide.load175.epil, %267
  %269 = bitcast double* %260 to <2 x double>*
  store <2 x double> %268, <2 x double>* %269, align 8, !alias.scope !35, !noalias !37
  br label %middle.block165

middle.block165:                                  ; preds = %middle.block165.unr-lcssa, %vector.body167.epil
  %cmp.n174 = icmp eq i64 %209, %n.vec
  br i1 %cmp.n174, label %polly.loop_exit106.us, label %polly.stmt.for.body33.us.i.us.preheader

polly.stmt.for.body33.us.i.us.preheader:          ; preds = %vector.memcheck, %polly.stmt.for.body33.us.i.preheader.us, %middle.block165
  %polly.indvar108.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %polly.stmt.for.body33.us.i.preheader.us ], [ %n.vec, %middle.block165 ]
  %270 = and i64 %smax236, 1
  %lcmp.mod238.not.not = icmp eq i64 %270, 0
  br i1 %lcmp.mod238.not.not, label %polly.stmt.for.body33.us.i.us.prol, label %polly.stmt.for.body33.us.i.us.prol.loopexit

polly.stmt.for.body33.us.i.us.prol:               ; preds = %polly.stmt.for.body33.us.i.us.preheader
  %271 = add nuw nsw i64 %polly.indvar108.us.ph, %193
  %polly.access.add.call.i113.us.prol = add i64 %231, %polly.indvar108.us.ph
  %polly.access.call.i114.us.prol = getelementptr double, double* %polly.access.cast.call.i, i64 %polly.access.add.call.i113.us.prol
  %polly.access.call.i114.reload.us.prol = load double, double* %polly.access.call.i114.us.prol, align 8, !alias.scope !18, !noalias !20
  %_p_scalar_118.us.prol = load double, double* %scevgep116117.us, align 8, !alias.scope !18, !noalias !20
  %272 = add i64 %271, %229
  %273 = shl i64 %272, 3
  %scevgep120.us.prol = getelementptr i8, i8* %scevgep119, i64 %273
  %scevgep120121.us.prol = bitcast i8* %scevgep120.us.prol to double*
  %_p_scalar_122.us.prol = load double, double* %scevgep120121.us.prol, align 8, !alias.scope !18, !noalias !20
  %p_mul42.us.i.us.prol = fmul double %_p_scalar_118.us.prol, %_p_scalar_122.us.prol
  %p_sub47.us.i.us.prol = fsub double %polly.access.call.i114.reload.us.prol, %p_mul42.us.i.us.prol
  store double %p_sub47.us.i.us.prol, double* %polly.access.call.i114.us.prol, align 8, !alias.scope !18, !noalias !20
  %polly.indvar_next109.us.prol = or i64 %polly.indvar108.us.ph, 1
  br label %polly.stmt.for.body33.us.i.us.prol.loopexit

polly.stmt.for.body33.us.i.us.prol.loopexit:      ; preds = %polly.stmt.for.body33.us.i.us.prol, %polly.stmt.for.body33.us.i.us.preheader
  %polly.indvar108.us.unr.ph = phi i64 [ %polly.indvar_next109.us.prol, %polly.stmt.for.body33.us.i.us.prol ], [ %polly.indvar108.us.ph, %polly.stmt.for.body33.us.i.us.preheader ]
  %274 = icmp eq i64 %smax236, %polly.indvar108.us.ph
  br i1 %274, label %polly.loop_exit106.us, label %polly.stmt.for.body33.us.i.us

polly.loop_exit98.loopexit.us:                    ; preds = %polly.loop_exit106.us
  %polly.indvar_next93.us = add nuw nsw i64 %polly.indvar92.us, 1
  %indvars.iv.next135 = add i64 %indvars.iv134, -32
  %exitcond143.not = icmp eq i64 %polly.indvar92.us, %smax142
  br i1 %exitcond143.not, label %polly.loop_exit90, label %polly.loop_if95.us
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
declare i64 @llvm.smin.i64(i64, i64) #8

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #8

attributes #0 = { nounwind uwtable "frame-pointer"="none" "no-trapping-math"="true" "polly-optimized" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!14 = !{!15, !15, i64 0}
!15 = !{!"any pointer", !4, i64 0}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !19, !"polly.alias.scope.MemRef0"}
!19 = distinct !{!19, !"polly.alias.scope.domain"}
!20 = !{}
!21 = !{!18, !22}
!22 = distinct !{!22, !23}
!23 = distinct !{!23, !"LVerDomain"}
!24 = !{!18, !19, !"polly.alias.scope.MemRef0", !25}
!25 = distinct !{!25, !23}
!26 = !{!22, !27}
!27 = distinct !{!27, !23}
!28 = !{!18, !19, !"polly.alias.scope.MemRef0", !27}
!29 = distinct !{!29, !10}
!30 = distinct !{!30, !10}
!31 = distinct !{!31, !10}
!32 = !{!18, !19, !"polly.alias.scope.MemRef0", !33}
!33 = distinct !{!33, !34}
!34 = distinct !{!34, !"LVerDomain"}
!35 = !{!18, !19, !"polly.alias.scope.MemRef0", !36}
!36 = distinct !{!36, !34}
!37 = !{!33, !38}
!38 = distinct !{!38, !34}
!39 = !{!18, !19, !"polly.alias.scope.MemRef0", !38}
!40 = distinct !{!40, !10}

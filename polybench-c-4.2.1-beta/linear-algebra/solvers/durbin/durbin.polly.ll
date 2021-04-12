; ModuleID = 'durbin.c'
source_filename = "durbin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** nocapture readonly %argv) local_unnamed_addr #0 {
entry.split:
  %z.i = alloca [4000 x double], align 16
  %call.i = tail call noalias dereferenceable_or_null(32000) i8* @malloc(i64 32000) #7
  %call.i15 = tail call noalias dereferenceable_or_null(32000) i8* @malloc(i64 32000) #7
  %arraydecay = bitcast i8* %call.i to double*
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %entry.split
  %indvars.iv.i = phi i64 [ 0, %entry.split ], [ %indvars.iv.next.i.4, %for.body.i ]
  %0 = trunc i64 %indvars.iv.i to i32
  %1 = sub nuw nsw i32 4001, %0
  %conv.i = sitofp i32 %1 to double
  %arrayidx.i = getelementptr inbounds double, double* %arraydecay, i64 %indvars.iv.i
  store double %conv.i, double* %arrayidx.i, align 8, !tbaa !2
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %2 = trunc i64 %indvars.iv.next.i to i32
  %3 = sub nuw nsw i32 4001, %2
  %conv.i.1 = sitofp i32 %3 to double
  %arrayidx.i.1 = getelementptr inbounds double, double* %arraydecay, i64 %indvars.iv.next.i
  store double %conv.i.1, double* %arrayidx.i.1, align 8, !tbaa !2
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2
  %4 = trunc i64 %indvars.iv.next.i.1 to i32
  %5 = sub nuw nsw i32 4001, %4
  %conv.i.2 = sitofp i32 %5 to double
  %arrayidx.i.2 = getelementptr inbounds double, double* %arraydecay, i64 %indvars.iv.next.i.1
  store double %conv.i.2, double* %arrayidx.i.2, align 8, !tbaa !2
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3
  %6 = trunc i64 %indvars.iv.next.i.2 to i32
  %7 = sub nuw nsw i32 4001, %6
  %conv.i.3 = sitofp i32 %7 to double
  %arrayidx.i.3 = getelementptr inbounds double, double* %arraydecay, i64 %indvars.iv.next.i.2
  store double %conv.i.3, double* %arrayidx.i.3, align 8, !tbaa !2
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4
  %8 = trunc i64 %indvars.iv.next.i.3 to i32
  %9 = sub nuw nsw i32 4001, %8
  %conv.i.4 = sitofp i32 %9 to double
  %arrayidx.i.4 = getelementptr inbounds double, double* %arraydecay, i64 %indvars.iv.next.i.3
  store double %conv.i.4, double* %arrayidx.i.4, align 8, !tbaa !2
  %indvars.iv.next.i.4 = add nuw nsw i64 %indvars.iv.i, 5
  %exitcond.not.i.4 = icmp eq i64 %indvars.iv.next.i.4, 4000
  br i1 %exitcond.not.i.4, label %polly.loop_preheader, label %for.body.i, !llvm.loop !6

kernel_durbin.exit:                               ; preds = %polly.stmt.for.body36.preheader.i66
  call void @llvm.lifetime.end.p0i8(i64 32000, i8* nonnull %z.i67) #7
  tail call void (...) @polybench_timer_stop() #7
  tail call void (...) @polybench_timer_print() #7
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_durbin.exit
  %10 = load i8*, i8** %argv, align 8, !tbaa !8
  %strcmpload = load i8, i8* %10, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %12 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %11) #8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #8
  br label %for.body.i22

for.body.i22:                                     ; preds = %if.end.i, %if.then
  %indvars.iv.i20 = phi i64 [ 0, %if.then ], [ %indvars.iv.next.i24, %if.end.i ]
  %i.02.i21 = phi i32 [ 0, %if.then ], [ %inc.i25, %if.end.i ]
  %rem.lhs.trunc.i = trunc i32 %i.02.i21 to i16
  %rem1.i = urem i16 %rem.lhs.trunc.i, 20
  %cmp2.i = icmp eq i16 %rem1.i, 0
  br i1 %cmp2.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i22
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %14) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i22
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %arrayidx.i23 = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.i20
  %16 = load double, double* %arrayidx.i23, align 8, !tbaa !2
  %call4.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %16) #8
  %indvars.iv.next.i24 = add nuw nsw i64 %indvars.iv.i20, 1
  %inc.i25 = add nuw nsw i32 %i.02.i21, 1
  %exitcond.not.i26 = icmp eq i64 %indvars.iv.next.i24, 4000
  br i1 %exitcond.not.i26, label %print_array.exit, label %for.body.i22, !llvm.loop !10

print_array.exit:                                 ; preds = %if.end.i
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %call5.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #8
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !8
  %19 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %18) #8
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_durbin.exit
  tail call void @free(i8* %call.i) #7
  tail call void @free(i8* nonnull %call.i15) #7
  ret i32 0

polly.stmt.for.body36.preheader.i66:              ; preds = %polly.stmt.for.body20.i, %middle.block
  %20 = add nuw nsw i64 %28, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 %call.i15, i8* noundef nonnull align 16 %z.i67, i64 %20, i1 false) #7
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond69.not = icmp eq i64 %polly.indvar_next, 3999
  br i1 %exitcond69.not, label %kernel_durbin.exit, label %polly.loop_preheader31

polly.loop_preheader:                             ; preds = %for.body.i
  %z.i67 = bitcast [4000 x double]* %z.i to i8*
  tail call void (...) @polybench_timer_start() #7
  %arraydecay3 = bitcast i8* %call.i15 to double*
  call void @llvm.lifetime.start.p0i8(i64 32000, i8* nonnull %z.i67) #7
  %21 = load double, double* %arraydecay, align 8, !tbaa !2
  %fneg.i = fneg double %21
  store double %fneg.i, double* %arraydecay3, align 8, !tbaa !2
  %scevgep42 = getelementptr i8, i8* %call.i, i64 8
  %scevgep46 = getelementptr i8, i8* %call.i15, i64 8
  br label %polly.loop_preheader31

polly.stmt.for.body7.i:                           ; preds = %polly.stmt.for.body7.i, %polly.loop_preheader31.new
  %sum.01.i.phiops.0 = phi double [ 0.000000e+00, %polly.loop_preheader31.new ], [ %p_add.i.1, %polly.stmt.for.body7.i ]
  %polly.indvar33 = phi i64 [ 0, %polly.loop_preheader31.new ], [ %polly.indvar_next34.1, %polly.stmt.for.body7.i ]
  %niter = phi i64 [ %unroll_iter, %polly.loop_preheader31.new ], [ %niter.nsub.1, %polly.stmt.for.body7.i ]
  %22 = mul nsw i64 %polly.indvar33, -8
  %scevgep36 = getelementptr i8, i8* %scevgep, i64 %22
  %scevgep3637 = bitcast i8* %scevgep36 to double*
  %_p_scalar_ = load double, double* %scevgep3637, align 8, !alias.scope !11, !noalias !13
  %23 = shl nuw nsw i64 %polly.indvar33, 3
  %scevgep38 = getelementptr i8, i8* %call.i15, i64 %23
  %scevgep3839 = bitcast i8* %scevgep38 to double*
  %_p_scalar_40 = load double, double* %scevgep3839, align 8, !alias.scope !14, !noalias !16
  %p_mul13.i = fmul double %_p_scalar_, %_p_scalar_40
  %p_add.i = fadd double %sum.01.i.phiops.0, %p_mul13.i
  %polly.indvar_next34 = or i64 %polly.indvar33, 1
  %24 = mul nsw i64 %polly.indvar_next34, -8
  %scevgep36.1 = getelementptr i8, i8* %scevgep, i64 %24
  %scevgep3637.1 = bitcast i8* %scevgep36.1 to double*
  %_p_scalar_.1 = load double, double* %scevgep3637.1, align 8, !alias.scope !11, !noalias !13
  %25 = shl nuw nsw i64 %polly.indvar_next34, 3
  %scevgep38.1 = getelementptr i8, i8* %call.i15, i64 %25
  %scevgep3839.1 = bitcast i8* %scevgep38.1 to double*
  %_p_scalar_40.1 = load double, double* %scevgep3839.1, align 8, !alias.scope !14, !noalias !16
  %p_mul13.i.1 = fmul double %_p_scalar_.1, %_p_scalar_40.1
  %p_add.i.1 = fadd double %p_add.i, %p_mul13.i.1
  %polly.indvar_next34.1 = add nuw nsw i64 %polly.indvar33, 2
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %polly.loop_preheader52.unr-lcssa, label %polly.stmt.for.body7.i

polly.loop_preheader31:                           ; preds = %polly.loop_preheader, %polly.stmt.for.body36.preheader.i66
  %indvars.iv = phi i64 [ 1, %polly.loop_preheader ], [ %indvars.iv.next, %polly.stmt.for.body36.preheader.i66 ]
  %alpha.05.i.phiops.0 = phi double [ %fneg.i, %polly.loop_preheader ], [ %p_div.i, %polly.stmt.for.body36.preheader.i66 ]
  %beta.06.i.phiops.0 = phi double [ 1.000000e+00, %polly.loop_preheader ], [ %p_mul4.i, %polly.stmt.for.body36.preheader.i66 ]
  %polly.indvar = phi i64 [ 0, %polly.loop_preheader ], [ %polly.indvar_next, %polly.stmt.for.body36.preheader.i66 ]
  %26 = add nuw i64 %polly.indvar, 1
  %27 = add nuw i64 %polly.indvar, 1
  %28 = shl nuw nsw i64 %polly.indvar, 3
  %scevgep = getelementptr i8, i8* %call.i, i64 %28
  %xtraiter = and i64 %26, 1
  %29 = icmp eq i64 %polly.indvar, 0
  br i1 %29, label %polly.loop_preheader52.unr-lcssa, label %polly.loop_preheader31.new

polly.loop_preheader31.new:                       ; preds = %polly.loop_preheader31
  %unroll_iter = and i64 %26, -2
  br label %polly.stmt.for.body7.i

polly.stmt.for.body20.i:                          ; preds = %polly.stmt.for.body20.i.preheader, %polly.stmt.for.body20.i
  %polly.indvar54 = phi i64 [ %polly.indvar_next55, %polly.stmt.for.body20.i ], [ %polly.indvar54.ph, %polly.stmt.for.body20.i.preheader ]
  %30 = shl nuw nsw i64 %polly.indvar54, 3
  %scevgep58 = getelementptr i8, i8* %call.i15, i64 %30
  %scevgep5859 = bitcast i8* %scevgep58 to double*
  %_p_scalar_60 = load double, double* %scevgep5859, align 8, !alias.scope !14, !noalias !16
  %31 = mul nsw i64 %polly.indvar54, -8
  %scevgep62 = getelementptr i8, i8* %scevgep61, i64 %31
  %scevgep6263 = bitcast i8* %scevgep62 to double*
  %_p_scalar_64 = load double, double* %scevgep6263, align 8, !alias.scope !14, !noalias !16
  %p_mul27.i = fmul double %p_div.i, %_p_scalar_64
  %p_add28.i = fadd double %_p_scalar_60, %p_mul27.i
  %scevgep65 = getelementptr [4000 x double], [4000 x double]* %z.i, i64 0, i64 %polly.indvar54
  store double %p_add28.i, double* %scevgep65, align 8, !alias.scope !15, !noalias !17
  %polly.indvar_next55 = add nuw nsw i64 %polly.indvar54, 1
  %exitcond68.not = icmp eq i64 %polly.indvar_next55, %indvars.iv
  br i1 %exitcond68.not, label %polly.stmt.for.body36.preheader.i66, label %polly.stmt.for.body20.i, !llvm.loop !18

polly.loop_preheader52.unr-lcssa:                 ; preds = %polly.stmt.for.body7.i, %polly.loop_preheader31
  %p_add.i.lcssa.ph = phi double [ undef, %polly.loop_preheader31 ], [ %p_add.i.1, %polly.stmt.for.body7.i ]
  %sum.01.i.phiops.0.unr = phi double [ 0.000000e+00, %polly.loop_preheader31 ], [ %p_add.i.1, %polly.stmt.for.body7.i ]
  %polly.indvar33.unr = phi i64 [ 0, %polly.loop_preheader31 ], [ %polly.indvar_next34.1, %polly.stmt.for.body7.i ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %polly.loop_preheader52, label %polly.loop_preheader52.epilog-lcssa

polly.loop_preheader52.epilog-lcssa:              ; preds = %polly.loop_preheader52.unr-lcssa
  %32 = mul nsw i64 %polly.indvar33.unr, -8
  %scevgep36.epil = getelementptr i8, i8* %scevgep, i64 %32
  %scevgep3637.epil = bitcast i8* %scevgep36.epil to double*
  %_p_scalar_.epil = load double, double* %scevgep3637.epil, align 8, !alias.scope !11, !noalias !13
  %33 = shl nuw nsw i64 %polly.indvar33.unr, 3
  %scevgep38.epil = getelementptr i8, i8* %call.i15, i64 %33
  %scevgep3839.epil = bitcast i8* %scevgep38.epil to double*
  %_p_scalar_40.epil = load double, double* %scevgep3839.epil, align 8, !alias.scope !14, !noalias !16
  %p_mul13.i.epil = fmul double %_p_scalar_.epil, %_p_scalar_40.epil
  %p_add.i.epil = fadd double %sum.01.i.phiops.0.unr, %p_mul13.i.epil
  br label %polly.loop_preheader52

polly.loop_preheader52:                           ; preds = %polly.loop_preheader52.unr-lcssa, %polly.loop_preheader52.epilog-lcssa
  %p_add.i.lcssa = phi double [ %p_add.i.lcssa.ph, %polly.loop_preheader52.unr-lcssa ], [ %p_add.i.epil, %polly.loop_preheader52.epilog-lcssa ]
  %p_mul.i = fmul double %alpha.05.i.phiops.0, %alpha.05.i.phiops.0
  %p_sub.i = fsub double 1.000000e+00, %p_mul.i
  %p_mul4.i = fmul double %beta.06.i.phiops.0, %p_sub.i
  %scevgep43 = getelementptr i8, i8* %scevgep42, i64 %28
  %scevgep4344 = bitcast i8* %scevgep43 to double*
  %_p_scalar_45 = load double, double* %scevgep4344, align 8, !alias.scope !11, !noalias !13
  %p_add16.i = fadd double %p_add.i.lcssa, %_p_scalar_45
  %p_fneg17.i = fneg double %p_add16.i
  %p_div.i = fdiv double %p_fneg17.i, %p_mul4.i
  %scevgep47 = getelementptr i8, i8* %scevgep46, i64 %28
  %scevgep4748 = bitcast i8* %scevgep47 to double*
  store double %p_div.i, double* %scevgep4748, align 8, !alias.scope !14, !noalias !16
  %scevgep61 = getelementptr i8, i8* %call.i15, i64 %28
  %min.iters.check = icmp ult i64 %polly.indvar, 3
  br i1 %min.iters.check, label %polly.stmt.for.body20.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %polly.loop_preheader52
  %n.vec = and i64 %27, -4
  %broadcast.splatinsert = insertelement <2 x double> poison, double %p_div.i, i32 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert74 = insertelement <2 x double> poison, double %p_div.i, i32 0
  %broadcast.splat75 = shufflevector <2 x double> %broadcast.splatinsert74, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %34 = shl nuw nsw i64 %index, 3
  %35 = getelementptr i8, i8* %call.i15, i64 %34
  %36 = bitcast i8* %35 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %36, align 8, !alias.scope !14, !noalias !16
  %37 = getelementptr i8, i8* %35, i64 16
  %38 = bitcast i8* %37 to <2 x double>*
  %wide.load70 = load <2 x double>, <2 x double>* %38, align 8, !alias.scope !14, !noalias !16
  %39 = mul nsw i64 %index, -8
  %40 = getelementptr i8, i8* %scevgep61, i64 %39
  %41 = getelementptr i8, i8* %40, i64 -8
  %42 = bitcast i8* %41 to <2 x double>*
  %wide.load71 = load <2 x double>, <2 x double>* %42, align 8, !alias.scope !14, !noalias !16
  %reverse = shufflevector <2 x double> %wide.load71, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %43 = getelementptr i8, i8* %40, i64 -16
  %44 = getelementptr i8, i8* %43, i64 -8
  %45 = bitcast i8* %44 to <2 x double>*
  %wide.load72 = load <2 x double>, <2 x double>* %45, align 8, !alias.scope !14, !noalias !16
  %reverse73 = shufflevector <2 x double> %wide.load72, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %46 = fmul <2 x double> %broadcast.splat, %reverse
  %47 = fmul <2 x double> %broadcast.splat75, %reverse73
  %48 = fadd <2 x double> %wide.load, %46
  %49 = fadd <2 x double> %wide.load70, %47
  %50 = getelementptr [4000 x double], [4000 x double]* %z.i, i64 0, i64 %index
  %51 = bitcast double* %50 to <2 x double>*
  store <2 x double> %48, <2 x double>* %51, align 16, !alias.scope !15, !noalias !17
  %52 = getelementptr double, double* %50, i64 2
  %53 = bitcast double* %52 to <2 x double>*
  store <2 x double> %49, <2 x double>* %53, align 16, !alias.scope !15, !noalias !17
  %index.next = add i64 %index, 4
  %54 = icmp eq i64 %index.next, %n.vec
  br i1 %54, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %27, %n.vec
  br i1 %cmp.n, label %polly.stmt.for.body36.preheader.i66, label %polly.stmt.for.body20.i.preheader

polly.stmt.for.body20.i.preheader:                ; preds = %polly.loop_preheader52, %middle.block
  %polly.indvar54.ph = phi i64 [ 0, %polly.loop_preheader52 ], [ %n.vec, %middle.block ]
  br label %polly.stmt.for.body20.i
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local void @polybench_timer_start(...) local_unnamed_addr #2

declare dso_local void @polybench_timer_stop(...) local_unnamed_addr #2

declare dso_local void @polybench_timer_print(...) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @fprintf(%struct._IO_FILE* nocapture noundef, i8* nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(i8* nocapture noundef, i64 noundef, i64 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, %struct._IO_FILE* nocapture noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "no-trapping-math"="true" "polly-optimized" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inaccessiblemem_or_argmemonly nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inaccessiblememonly nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !4, i64 0}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !12, !"polly.alias.scope.MemRef5"}
!12 = distinct !{!12, !"polly.alias.scope.domain"}
!13 = !{!14, !15}
!14 = distinct !{!14, !12, !"polly.alias.scope.MemRef6"}
!15 = distinct !{!15, !12, !"polly.alias.scope.MemRef10"}
!16 = !{!11, !15}
!17 = !{!11, !14}
!18 = distinct !{!18, !19, !20}
!19 = !{!"llvm.loop.unroll.runtime.disable"}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = distinct !{!21, !20}

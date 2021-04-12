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
entry:
  %z.i = alloca [4000 x double], align 16
  %call.i = tail call noalias dereferenceable_or_null(32000) i8* @malloc(i64 32000) #7
  %call.i15 = tail call noalias dereferenceable_or_null(32000) i8* @malloc(i64 32000) #7
  %arraydecay = bitcast i8* %call.i to double*
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %entry
  %indvars.iv.i = phi i64 [ 0, %entry ], [ %indvars.iv.next.i.4, %for.body.i ]
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
  br i1 %exitcond.not.i.4, label %init_array.exit, label %for.body.i, !llvm.loop !6

init_array.exit:                                  ; preds = %for.body.i
  tail call void (...) @polybench_timer_start() #7
  %arraydecay3 = bitcast i8* %call.i15 to double*
  %10 = bitcast [4000 x double]* %z.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 32000, i8* nonnull %10) #7
  %11 = load double, double* %arraydecay, align 8, !tbaa !2
  %fneg.i = fneg double %11
  store double %fneg.i, double* %arraydecay3, align 8, !tbaa !2
  br label %for.body.i16

for.body.i16:                                     ; preds = %for.body36.preheader.i, %init_array.exit
  %indvars.iv16.i = phi i64 [ 1, %init_array.exit ], [ %indvars.iv.next17.i, %for.body36.preheader.i ]
  %indvar.i = phi i64 [ 0, %init_array.exit ], [ %indvar.next.i, %for.body36.preheader.i ]
  %beta.06.i = phi double [ 1.000000e+00, %init_array.exit ], [ %mul4.i, %for.body36.preheader.i ]
  %alpha.05.i = phi double [ %fneg.i, %init_array.exit ], [ %div.i, %for.body36.preheader.i ]
  %12 = add nuw i64 %indvar.i, 1
  %13 = add nuw i64 %indvar.i, 1
  %14 = shl nuw nsw i64 %indvar.i, 3
  %mul.i = fmul double %alpha.05.i, %alpha.05.i
  %sext = shl i64 %indvars.iv16.i, 32
  %15 = ashr exact i64 %sext, 32
  %xtraiter = and i64 %12, 1
  %16 = icmp eq i64 %indvar.i, 0
  br i1 %16, label %for.end.i.unr-lcssa, label %for.body.i16.new

for.body.i16.new:                                 ; preds = %for.body.i16
  %unroll_iter = and i64 %12, -2
  br label %for.body7.i

for.body7.i:                                      ; preds = %for.body7.i, %for.body.i16.new
  %indvars.iv.i17 = phi i64 [ 0, %for.body.i16.new ], [ %indvars.iv.next.i18.1, %for.body7.i ]
  %sum.01.i = phi double [ 0.000000e+00, %for.body.i16.new ], [ %add.i.1, %for.body7.i ]
  %niter = phi i64 [ %unroll_iter, %for.body.i16.new ], [ %niter.nsub.1, %for.body7.i ]
  %17 = xor i64 %indvars.iv.i17, -1
  %18 = add nsw i64 %15, %17
  %arrayidx10.i = getelementptr inbounds double, double* %arraydecay, i64 %18
  %19 = load double, double* %arrayidx10.i, align 8, !tbaa !2
  %arrayidx12.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.i17
  %20 = load double, double* %arrayidx12.i, align 8, !tbaa !2
  %mul13.i = fmul double %19, %20
  %add.i = fadd double %sum.01.i, %mul13.i
  %indvars.iv.next.i18 = or i64 %indvars.iv.i17, 1
  %21 = sub nuw nsw i64 -2, %indvars.iv.i17
  %22 = add nsw i64 %15, %21
  %arrayidx10.i.1 = getelementptr inbounds double, double* %arraydecay, i64 %22
  %23 = load double, double* %arrayidx10.i.1, align 8, !tbaa !2
  %arrayidx12.i.1 = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.next.i18
  %24 = load double, double* %arrayidx12.i.1, align 8, !tbaa !2
  %mul13.i.1 = fmul double %23, %24
  %add.i.1 = fadd double %add.i, %mul13.i.1
  %indvars.iv.next.i18.1 = add nuw nsw i64 %indvars.iv.i17, 2
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %for.end.i.unr-lcssa, label %for.body7.i, !llvm.loop !8

for.end.i.unr-lcssa:                              ; preds = %for.body7.i, %for.body.i16
  %add.i.lcssa.ph = phi double [ undef, %for.body.i16 ], [ %add.i.1, %for.body7.i ]
  %indvars.iv.i17.unr = phi i64 [ 0, %for.body.i16 ], [ %indvars.iv.next.i18.1, %for.body7.i ]
  %sum.01.i.unr = phi double [ 0.000000e+00, %for.body.i16 ], [ %add.i.1, %for.body7.i ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end.i, label %for.end.i.epilog-lcssa

for.end.i.epilog-lcssa:                           ; preds = %for.end.i.unr-lcssa
  %25 = xor i64 %indvars.iv.i17.unr, -1
  %26 = add nsw i64 %15, %25
  %arrayidx10.i.epil = getelementptr inbounds double, double* %arraydecay, i64 %26
  %27 = load double, double* %arrayidx10.i.epil, align 8, !tbaa !2
  %arrayidx12.i.epil = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.i17.unr
  %28 = load double, double* %arrayidx12.i.epil, align 8, !tbaa !2
  %mul13.i.epil = fmul double %27, %28
  %add.i.epil = fadd double %sum.01.i.unr, %mul13.i.epil
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.i.unr-lcssa, %for.end.i.epilog-lcssa
  %add.i.lcssa = phi double [ %add.i.lcssa.ph, %for.end.i.unr-lcssa ], [ %add.i.epil, %for.end.i.epilog-lcssa ]
  %sub.i = fsub double 1.000000e+00, %mul.i
  %mul4.i = fmul double %beta.06.i, %sub.i
  %arrayidx15.i = getelementptr inbounds double, double* %arraydecay, i64 %indvars.iv16.i
  %29 = load double, double* %arrayidx15.i, align 8, !tbaa !2
  %add16.i = fadd double %add.i.lcssa, %29
  %fneg17.i = fneg double %add16.i
  %div.i = fdiv double %fneg17.i, %mul4.i
  %min.iters.check = icmp ult i64 %indvar.i, 3
  br i1 %min.iters.check, label %for.body20.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.end.i
  %n.vec = and i64 %13, -4
  %broadcast.splatinsert = insertelement <2 x double> poison, double %div.i, i32 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert33 = insertelement <2 x double> poison, double %div.i, i32 0
  %broadcast.splat34 = shufflevector <2 x double> %broadcast.splatinsert33, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %30 = getelementptr inbounds double, double* %arraydecay3, i64 %index
  %31 = bitcast double* %30 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %31, align 8, !tbaa !2
  %32 = getelementptr inbounds double, double* %30, i64 2
  %33 = bitcast double* %32 to <2 x double>*
  %wide.load29 = load <2 x double>, <2 x double>* %33, align 8, !tbaa !2
  %34 = xor i64 %index, -1
  %35 = add nsw i64 %indvars.iv16.i, %34
  %36 = getelementptr inbounds double, double* %arraydecay3, i64 %35
  %37 = getelementptr inbounds double, double* %36, i64 -1
  %38 = bitcast double* %37 to <2 x double>*
  %wide.load30 = load <2 x double>, <2 x double>* %38, align 8, !tbaa !2
  %reverse = shufflevector <2 x double> %wide.load30, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %39 = getelementptr inbounds double, double* %36, i64 -2
  %40 = getelementptr inbounds double, double* %39, i64 -1
  %41 = bitcast double* %40 to <2 x double>*
  %wide.load31 = load <2 x double>, <2 x double>* %41, align 8, !tbaa !2
  %reverse32 = shufflevector <2 x double> %wide.load31, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %42 = fmul <2 x double> %broadcast.splat, %reverse
  %43 = fmul <2 x double> %broadcast.splat34, %reverse32
  %44 = fadd <2 x double> %wide.load, %42
  %45 = fadd <2 x double> %wide.load29, %43
  %46 = getelementptr inbounds [4000 x double], [4000 x double]* %z.i, i64 0, i64 %index
  %47 = bitcast double* %46 to <2 x double>*
  store <2 x double> %44, <2 x double>* %47, align 16, !tbaa !2
  %48 = getelementptr inbounds double, double* %46, i64 2
  %49 = bitcast double* %48 to <2 x double>*
  store <2 x double> %45, <2 x double>* %49, align 16, !tbaa !2
  %index.next = add i64 %index, 4
  %50 = icmp eq i64 %index.next, %n.vec
  br i1 %50, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %13, %n.vec
  br i1 %cmp.n, label %for.body36.preheader.i, label %for.body20.i.preheader

for.body20.i.preheader:                           ; preds = %for.end.i, %middle.block
  %indvars.iv8.i.ph = phi i64 [ 0, %for.end.i ], [ %n.vec, %middle.block ]
  br label %for.body20.i

for.body20.i:                                     ; preds = %for.body20.i.preheader, %for.body20.i
  %indvars.iv8.i = phi i64 [ %indvars.iv.next9.i, %for.body20.i ], [ %indvars.iv8.i.ph, %for.body20.i.preheader ]
  %arrayidx22.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv8.i
  %51 = load double, double* %arrayidx22.i, align 8, !tbaa !2
  %52 = xor i64 %indvars.iv8.i, -1
  %53 = add nsw i64 %indvars.iv16.i, %52
  %arrayidx26.i = getelementptr inbounds double, double* %arraydecay3, i64 %53
  %54 = load double, double* %arrayidx26.i, align 8, !tbaa !2
  %mul27.i = fmul double %div.i, %54
  %add28.i = fadd double %51, %mul27.i
  %arrayidx30.i = getelementptr inbounds [4000 x double], [4000 x double]* %z.i, i64 0, i64 %indvars.iv8.i
  store double %add28.i, double* %arrayidx30.i, align 8, !tbaa !2
  %indvars.iv.next9.i = add nuw nsw i64 %indvars.iv8.i, 1
  %exitcond12.not.i = icmp eq i64 %indvars.iv.next9.i, %indvars.iv16.i
  br i1 %exitcond12.not.i, label %for.body36.preheader.i, label %for.body20.i, !llvm.loop !11

for.body36.preheader.i:                           ; preds = %for.body20.i, %middle.block
  %55 = add nuw nsw i64 %14, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 %call.i15, i8* noundef nonnull align 16 %10, i64 %55, i1 false) #7
  %arrayidx45.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv16.i
  store double %div.i, double* %arrayidx45.i, align 8, !tbaa !2
  %indvars.iv.next17.i = add nuw nsw i64 %indvars.iv16.i, 1
  %indvar.next.i = add nuw nsw i64 %indvar.i, 1
  %exitcond18.not.i = icmp eq i64 %indvar.next.i, 3999
  br i1 %exitcond18.not.i, label %kernel_durbin.exit, label %for.body.i16, !llvm.loop !13

kernel_durbin.exit:                               ; preds = %for.body36.preheader.i
  call void @llvm.lifetime.end.p0i8(i64 32000, i8* nonnull %10) #7
  tail call void (...) @polybench_timer_stop() #7
  tail call void (...) @polybench_timer_print() #7
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_durbin.exit
  %56 = load i8*, i8** %argv, align 8, !tbaa !14
  %strcmpload = load i8, i8* %56, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !14
  %58 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %57) #8
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !14
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #8
  br label %for.body.i22

for.body.i22:                                     ; preds = %if.end.i, %if.then
  %indvars.iv.i20 = phi i64 [ 0, %if.then ], [ %indvars.iv.next.i24, %if.end.i ]
  %i.02.i21 = phi i32 [ 0, %if.then ], [ %inc.i25, %if.end.i ]
  %rem.lhs.trunc.i = trunc i32 %i.02.i21 to i16
  %rem1.i = urem i16 %rem.lhs.trunc.i, 20
  %cmp2.i = icmp eq i16 %rem1.i, 0
  br i1 %cmp2.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i22
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !14
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %60) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i22
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !14
  %arrayidx.i23 = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.i20
  %62 = load double, double* %arrayidx.i23, align 8, !tbaa !2
  %call4.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %62) #8
  %indvars.iv.next.i24 = add nuw nsw i64 %indvars.iv.i20, 1
  %inc.i25 = add nuw nsw i32 %i.02.i21, 1
  %exitcond.not.i26 = icmp eq i64 %indvars.iv.next.i24, 4000
  br i1 %exitcond.not.i26, label %print_array.exit, label %for.body.i22, !llvm.loop !16

print_array.exit:                                 ; preds = %if.end.i
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !14
  %call5.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #8
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !14
  %65 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %64) #8
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_durbin.exit
  tail call void @free(i8* %call.i) #7
  tail call void @free(i8* nonnull %call.i15) #7
  ret i32 0
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

attributes #0 = { nounwind uwtable "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7, !10}
!10 = !{!"llvm.loop.isvectorized", i32 1}
!11 = distinct !{!11, !7, !12, !10}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = distinct !{!13, !7}
!14 = !{!15, !15, i64 0}
!15 = !{!"any pointer", !4, i64 0}
!16 = distinct !{!16, !7}

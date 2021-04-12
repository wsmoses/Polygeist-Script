; ModuleID = 'durbin.plutopar.c'
source_filename = "durbin.plutopar.c"
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
  %12 = fmul double %11, %11
  %add.i = fsub double 0.000000e+00, %12
  %sub.i = fsub double 1.000000e+00, %12
  %arrayidx8.i = getelementptr inbounds double, double* %arraydecay, i64 1
  %13 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %add9.i = fadd double %13, %add.i
  %fneg10.i = fneg double %add9.i
  %div.i = fdiv double %fneg10.i, %sub.i
  %arrayidx11.i = getelementptr inbounds double, double* %arraydecay3, i64 1
  store double %div.i, double* %arrayidx11.i, align 8, !tbaa !2
  %mul14.i = fmul double %div.i, %fneg.i
  %add15.i = fsub double %mul14.i, %11
  %arrayidx16.i = getelementptr inbounds [4000 x double], [4000 x double]* %z.i, i64 0, i64 0
  store double %add15.i, double* %arrayidx16.i, align 16, !tbaa !2
  store double %add15.i, double* %arraydecay3, align 8, !tbaa !2
  br label %for.body.i16

for.body.i16:                                     ; preds = %for.inc90.for.body_crit_edge.i, %init_array.exit
  %14 = phi double [ %13, %init_array.exit ], [ %34, %for.inc90.for.body_crit_edge.i ]
  %15 = phi double [ %add15.i, %init_array.exit ], [ %.pre.i, %for.inc90.for.body_crit_edge.i ]
  %indvars.iv23.i = phi i64 [ 4, %init_array.exit ], [ %indvars.iv.next24.i, %for.inc90.for.body_crit_edge.i ]
  %indvar.i = phi i64 [ 0, %init_array.exit ], [ %indvar.next.i, %for.inc90.for.body_crit_edge.i ]
  %indvars.iv12.i = phi i64 [ 2, %init_array.exit ], [ %indvars.iv.next13.i, %for.inc90.for.body_crit_edge.i ]
  %alpha.111.i = phi double [ %div.i, %init_array.exit ], [ %div46.i, %for.inc90.for.body_crit_edge.i ]
  %beta.110.i = phi double [ %sub.i, %init_array.exit ], [ %mul29.i, %for.inc90.for.body_crit_edge.i ]
  %16 = add nuw i64 %indvar.i, 1
  %17 = add nuw i64 %indvar.i, 2
  %18 = shl nuw nsw i64 %indvar.i, 3
  %mul25.i = fmul double %15, %14
  %add26.i = fadd double %mul25.i, 0.000000e+00
  %mul27.i = fmul double %alpha.111.i, %alpha.111.i
  %sext = shl i64 %indvars.iv12.i, 32
  %19 = ashr exact i64 %sext, 32
  %xtraiter = and i64 %16, 1
  %20 = icmp eq i64 %indvar.i, 0
  br i1 %20, label %for.end.i.unr-lcssa, label %for.body.i16.new

for.body.i16.new:                                 ; preds = %for.body.i16
  %unroll_iter = and i64 %16, -2
  br label %for.body33.i

for.body33.i:                                     ; preds = %for.body33.i, %for.body.i16.new
  %indvars.iv.i17 = phi i64 [ 1, %for.body.i16.new ], [ %indvars.iv.next.i18.1, %for.body33.i ]
  %sum.02.i = phi double [ %add26.i, %for.body.i16.new ], [ %add41.i.1, %for.body33.i ]
  %niter = phi i64 [ %unroll_iter, %for.body.i16.new ], [ %niter.nsub.1, %for.body33.i ]
  %21 = xor i64 %indvars.iv.i17, -1
  %22 = add nsw i64 %19, %21
  %arrayidx37.i = getelementptr inbounds double, double* %arraydecay, i64 %22
  %23 = load double, double* %arrayidx37.i, align 8, !tbaa !2
  %arrayidx39.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.i17
  %24 = load double, double* %arrayidx39.i, align 8, !tbaa !2
  %mul40.i = fmul double %23, %24
  %add41.i = fadd double %sum.02.i, %mul40.i
  %indvars.iv.next.i18 = add nuw nsw i64 %indvars.iv.i17, 1
  %25 = sub nuw i64 -2, %indvars.iv.i17
  %26 = add nsw i64 %19, %25
  %arrayidx37.i.1 = getelementptr inbounds double, double* %arraydecay, i64 %26
  %27 = load double, double* %arrayidx37.i.1, align 8, !tbaa !2
  %arrayidx39.i.1 = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.next.i18
  %28 = load double, double* %arrayidx39.i.1, align 8, !tbaa !2
  %mul40.i.1 = fmul double %27, %28
  %add41.i.1 = fadd double %add41.i, %mul40.i.1
  %indvars.iv.next.i18.1 = add nuw nsw i64 %indvars.iv.i17, 2
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %for.end.i.unr-lcssa, label %for.body33.i, !llvm.loop !8

for.end.i.unr-lcssa:                              ; preds = %for.body33.i, %for.body.i16
  %add41.i.lcssa.ph = phi double [ undef, %for.body.i16 ], [ %add41.i.1, %for.body33.i ]
  %indvars.iv.i17.unr = phi i64 [ 1, %for.body.i16 ], [ %indvars.iv.next.i18.1, %for.body33.i ]
  %sum.02.i.unr = phi double [ %add26.i, %for.body.i16 ], [ %add41.i.1, %for.body33.i ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %for.end.i, label %for.end.i.epilog-lcssa

for.end.i.epilog-lcssa:                           ; preds = %for.end.i.unr-lcssa
  %29 = xor i64 %indvars.iv.i17.unr, -1
  %30 = add nsw i64 %19, %29
  %arrayidx37.i.epil = getelementptr inbounds double, double* %arraydecay, i64 %30
  %31 = load double, double* %arrayidx37.i.epil, align 8, !tbaa !2
  %arrayidx39.i.epil = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.i17.unr
  %32 = load double, double* %arrayidx39.i.epil, align 8, !tbaa !2
  %mul40.i.epil = fmul double %31, %32
  %add41.i.epil = fadd double %sum.02.i.unr, %mul40.i.epil
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.i.unr-lcssa, %for.end.i.epilog-lcssa
  %add41.i.lcssa = phi double [ %add41.i.lcssa.ph, %for.end.i.unr-lcssa ], [ %add41.i.epil, %for.end.i.epilog-lcssa ]
  %33 = add nuw nsw i64 %18, 16
  %sub28.i = fsub double 1.000000e+00, %mul27.i
  %mul29.i = fmul double %beta.110.i, %sub28.i
  %arrayidx43.i = getelementptr inbounds double, double* %arraydecay, i64 %indvars.iv12.i
  %34 = load double, double* %arrayidx43.i, align 8, !tbaa !2
  %add44.i = fadd double %add41.i.lcssa, %34
  %fneg45.i = fneg double %add44.i
  %div46.i = fdiv double %fneg45.i, %mul29.i
  %arrayidx48.i = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv12.i
  store double %div46.i, double* %arrayidx48.i, align 8, !tbaa !2
  %35 = shl nuw nsw i64 %indvars.iv12.i, 1
  %cmp52.not.not3.i = icmp ult i64 %indvars.iv12.i, %35
  br i1 %cmp52.not.not3.i, label %for.body53.i.preheader, label %for.cond74.preheader.i

for.body53.i.preheader:                           ; preds = %for.end.i
  %min.iters.check = icmp ult i64 %indvar.i, 2
  br i1 %min.iters.check, label %for.body53.i.preheader34, label %vector.ph

vector.ph:                                        ; preds = %for.body53.i.preheader
  %n.vec = and i64 %17, -4
  %ind.end = add i64 %indvars.iv12.i, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %div46.i, i32 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert32 = insertelement <2 x double> poison, double %div46.i, i32 0
  %broadcast.splat33 = shufflevector <2 x double> %broadcast.splatinsert32, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %36 = getelementptr inbounds double, double* %arraydecay3, i64 %index
  %37 = bitcast double* %36 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %37, align 8, !tbaa !2
  %38 = getelementptr inbounds double, double* %36, i64 2
  %39 = bitcast double* %38 to <2 x double>*
  %wide.load28 = load <2 x double>, <2 x double>* %39, align 8, !tbaa !2
  %40 = xor i64 %index, -1
  %41 = add nsw i64 %indvars.iv12.i, %40
  %42 = getelementptr inbounds double, double* %arraydecay3, i64 %41
  %43 = getelementptr inbounds double, double* %42, i64 -1
  %44 = bitcast double* %43 to <2 x double>*
  %wide.load29 = load <2 x double>, <2 x double>* %44, align 8, !tbaa !2
  %reverse = shufflevector <2 x double> %wide.load29, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %45 = getelementptr inbounds double, double* %42, i64 -2
  %46 = getelementptr inbounds double, double* %45, i64 -1
  %47 = bitcast double* %46 to <2 x double>*
  %wide.load30 = load <2 x double>, <2 x double>* %47, align 8, !tbaa !2
  %reverse31 = shufflevector <2 x double> %wide.load30, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %48 = fmul <2 x double> %broadcast.splat, %reverse
  %49 = fmul <2 x double> %broadcast.splat33, %reverse31
  %50 = fadd <2 x double> %wide.load, %48
  %51 = fadd <2 x double> %wide.load28, %49
  %52 = getelementptr inbounds [4000 x double], [4000 x double]* %z.i, i64 0, i64 %index
  %53 = bitcast double* %52 to <2 x double>*
  store <2 x double> %50, <2 x double>* %53, align 16, !tbaa !2
  %54 = getelementptr inbounds double, double* %52, i64 2
  %55 = bitcast double* %54 to <2 x double>*
  store <2 x double> %51, <2 x double>* %55, align 16, !tbaa !2
  %index.next = add i64 %index, 4
  %56 = icmp eq i64 %index.next, %n.vec
  br i1 %56, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %17, %n.vec
  br i1 %cmp.n, label %for.cond74.preheader.i, label %for.body53.i.preheader34

for.body53.i.preheader34:                         ; preds = %for.body53.i.preheader, %middle.block
  %indvars.iv14.i.ph = phi i64 [ %indvars.iv12.i, %for.body53.i.preheader ], [ %ind.end, %middle.block ]
  br label %for.body53.i

for.cond74.preheader.i:                           ; preds = %for.body53.i, %middle.block, %for.end.i
  %57 = mul nuw nsw i64 %indvars.iv12.i, 3
  %cmp77.not.not5.i = icmp ult i64 %35, %57
  br i1 %cmp77.not.not5.i, label %for.body78.lr.ph.i, label %for.inc90.i

for.body78.lr.ph.i:                               ; preds = %for.cond74.preheader.i
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 8 %call.i15, i8* noundef nonnull align 16 %10, i64 %33, i1 false) #7
  br label %for.inc90.i

for.body53.i:                                     ; preds = %for.body53.i.preheader34, %for.body53.i
  %indvars.iv14.i = phi i64 [ %indvars.iv.next15.i, %for.body53.i ], [ %indvars.iv14.i.ph, %for.body53.i.preheader34 ]
  %58 = sub nuw nsw i64 %indvars.iv14.i, %indvars.iv12.i
  %arrayidx57.i = getelementptr inbounds double, double* %arraydecay3, i64 %58
  %59 = load double, double* %arrayidx57.i, align 8, !tbaa !2
  %60 = xor i64 %58, -1
  %61 = add nsw i64 %indvars.iv12.i, %60
  %arrayidx63.i = getelementptr inbounds double, double* %arraydecay3, i64 %61
  %62 = load double, double* %arrayidx63.i, align 8, !tbaa !2
  %mul64.i = fmul double %div46.i, %62
  %add65.i = fadd double %59, %mul64.i
  %arrayidx69.i = getelementptr inbounds [4000 x double], [4000 x double]* %z.i, i64 0, i64 %58
  store double %add65.i, double* %arrayidx69.i, align 8, !tbaa !2
  %indvars.iv.next15.i = add nuw nsw i64 %indvars.iv14.i, 1
  %exitcond21.not.i = icmp eq i64 %indvars.iv.next15.i, %indvars.iv23.i
  br i1 %exitcond21.not.i, label %for.cond74.preheader.i, label %for.body53.i, !llvm.loop !11

for.inc90.i:                                      ; preds = %for.body78.lr.ph.i, %for.cond74.preheader.i
  %indvar.next.i = add nuw nsw i64 %indvar.i, 1
  %exitcond31.not.i = icmp eq i64 %indvar.next.i, 3998
  br i1 %exitcond31.not.i, label %kernel_durbin.exit, label %for.inc90.for.body_crit_edge.i, !llvm.loop !13

for.inc90.for.body_crit_edge.i:                   ; preds = %for.inc90.i
  %indvars.iv.next24.i = add nuw nsw i64 %indvars.iv23.i, 2
  %indvars.iv.next13.i = add nuw nsw i64 %indvars.iv12.i, 1
  %.pre.i = load double, double* %arraydecay3, align 8, !tbaa !2
  br label %for.body.i16

kernel_durbin.exit:                               ; preds = %for.inc90.i
  call void @llvm.lifetime.end.p0i8(i64 32000, i8* nonnull %10) #7
  tail call void (...) @polybench_timer_stop() #7
  tail call void (...) @polybench_timer_print() #7
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_durbin.exit
  %63 = load i8*, i8** %argv, align 8, !tbaa !14
  %strcmpload = load i8, i8* %63, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !14
  %65 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %64) #8
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !14
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #8
  br label %for.body.i21

for.body.i21:                                     ; preds = %if.end.i, %if.then
  %indvars.iv.i20 = phi i64 [ 0, %if.then ], [ %indvars.iv.next.i23, %if.end.i ]
  %i.02.i = phi i32 [ 0, %if.then ], [ %inc.i24, %if.end.i ]
  %rem.lhs.trunc.i = trunc i32 %i.02.i to i16
  %rem1.i = urem i16 %rem.lhs.trunc.i, 20
  %cmp2.i = icmp eq i16 %rem1.i, 0
  br i1 %cmp2.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i21
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !14
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %67) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i21
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !14
  %arrayidx.i22 = getelementptr inbounds double, double* %arraydecay3, i64 %indvars.iv.i20
  %69 = load double, double* %arrayidx.i22, align 8, !tbaa !2
  %call4.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %69) #8
  %indvars.iv.next.i23 = add nuw nsw i64 %indvars.iv.i20, 1
  %inc.i24 = add nuw nsw i32 %i.02.i, 1
  %exitcond.not.i25 = icmp eq i64 %indvars.iv.next.i23, 4000
  br i1 %exitcond.not.i25, label %print_array.exit, label %for.body.i21, !llvm.loop !16

print_array.exit:                                 ; preds = %if.end.i
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !14
  %call5.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %70, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #8
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !14
  %72 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %71) #8
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

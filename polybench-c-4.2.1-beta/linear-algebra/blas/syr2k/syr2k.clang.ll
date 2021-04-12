; ModuleID = 'syr2k.c'
source_filename = "syr2k.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"==BEGIN DUMP_ARRAYS==\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"begin dump: %s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"\0Aend   dump: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"==END   DUMP_ARRAYS==\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** nocapture readonly %argv) local_unnamed_addr #0 {
entry:
  %call.i = tail call noalias dereferenceable_or_null(54080000) i8* @malloc(i64 54080000) #6
  %call.i25 = tail call noalias dereferenceable_or_null(41600000) i8* @malloc(i64 41600000) #6
  %call.i26 = tail call noalias dereferenceable_or_null(41600000) i8* @malloc(i64 41600000) #6
  %arraydecay3 = bitcast i8* %call.i25 to [2000 x double]*
  %arraydecay4 = bitcast i8* %call.i26 to [2000 x double]*
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc17.i, %entry
  %indvars.iv8.i = phi i64 [ 0, %entry ], [ %indvars.iv.next9.i, %for.inc17.i ]
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.body3.i, %for.cond1.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.cond1.preheader.i ], [ %indvars.iv.next.i, %for.body3.i ]
  %0 = mul nuw nsw i64 %indvars.iv.i, %indvars.iv8.i
  %1 = trunc i64 %0 to i32
  %2 = add i32 %1, 1
  %rem.i = urem i32 %2, 2600
  %conv.i = sitofp i32 %rem.i to double
  %div.i = fdiv double %conv.i, 2.600000e+03
  %arrayidx6.i = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay3, i64 %indvars.iv8.i, i64 %indvars.iv.i
  store double %div.i, double* %arrayidx6.i, align 8, !tbaa !2
  %3 = add i32 %1, 2
  %rem9.i = urem i32 %3, 2000
  %conv10.i = sitofp i32 %rem9.i to double
  %div12.i = fdiv double %conv10.i, 2.000000e+03
  %arrayidx16.i = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay4, i64 %indvars.iv8.i, i64 %indvars.iv.i
  store double %div12.i, double* %arrayidx16.i, align 8, !tbaa !2
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 2000
  br i1 %exitcond.not.i, label %for.inc17.i, label %for.body3.i, !llvm.loop !6

for.inc17.i:                                      ; preds = %for.body3.i
  %indvars.iv.next9.i = add nuw nsw i64 %indvars.iv8.i, 1
  %exitcond10.not.i = icmp eq i64 %indvars.iv.next9.i, 2600
  br i1 %exitcond10.not.i, label %for.cond24.preheader.i.preheader, label %for.cond1.preheader.i, !llvm.loop !8

for.cond24.preheader.i.preheader:                 ; preds = %for.inc17.i
  %arraydecay = bitcast i8* %call.i to [2600 x double]*
  br label %for.cond24.preheader.i

for.cond24.preheader.i:                           ; preds = %for.cond24.preheader.i.preheader, %for.inc41.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc41.i ], [ 0, %for.cond24.preheader.i.preheader ]
  br label %for.body27.i

for.body27.i:                                     ; preds = %for.body27.i, %for.cond24.preheader.i
  %indvars.iv11.i = phi i64 [ 0, %for.cond24.preheader.i ], [ %indvars.iv.next12.i, %for.body27.i ]
  %4 = mul nuw nsw i64 %indvars.iv11.i, %indvars.iv16.i
  %5 = trunc i64 %4 to i32
  %6 = add i32 %5, 3
  %rem30.i = urem i32 %6, 2600
  %conv31.i = sitofp i32 %rem30.i to double
  %div33.i = fdiv double %conv31.i, 2.000000e+03
  %arrayidx37.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv16.i, i64 %indvars.iv11.i
  store double %div33.i, double* %arrayidx37.i, align 8, !tbaa !2
  %indvars.iv.next12.i = add nuw nsw i64 %indvars.iv11.i, 1
  %exitcond15.not.i = icmp eq i64 %indvars.iv.next12.i, 2600
  br i1 %exitcond15.not.i, label %for.inc41.i, label %for.body27.i, !llvm.loop !9

for.inc41.i:                                      ; preds = %for.body27.i
  %indvars.iv.next17.i = add nuw nsw i64 %indvars.iv16.i, 1
  %exitcond18.not.i = icmp eq i64 %indvars.iv.next17.i, 2600
  br i1 %exitcond18.not.i, label %init_array.exit, label %for.cond24.preheader.i, !llvm.loop !10

init_array.exit:                                  ; preds = %for.inc41.i
  tail call void (...) @polybench_timer_start() #6
  br label %for.cond1.preheader.i28

for.cond1.preheader.i28:                          ; preds = %for.inc43.i, %init_array.exit
  %indvars.iv16.i27 = phi i64 [ 0, %init_array.exit ], [ %indvars.iv.next17.i36, %for.inc43.i ]
  %indvars.iv14.i = phi i64 [ 1, %init_array.exit ], [ %indvars.iv.next15.i, %for.inc43.i ]
  %7 = add nsw i64 %indvars.iv16.i27, -3
  %8 = lshr i64 %7, 2
  %9 = add nuw nsw i64 %8, 1
  %10 = add nuw i64 %indvars.iv16.i27, 1
  %11 = add nuw i64 %indvars.iv16.i27, 1
  %min.iters.check49 = icmp ult i64 %indvars.iv16.i27, 3
  br i1 %min.iters.check49, label %for.body3.i32.preheader, label %vector.ph50

vector.ph50:                                      ; preds = %for.cond1.preheader.i28
  %n.vec52 = and i64 %10, -4
  %xtraiter = and i64 %9, 1
  %12 = icmp eq i64 %8, 0
  br i1 %12, label %middle.block46.unr-lcssa, label %vector.ph50.new

vector.ph50.new:                                  ; preds = %vector.ph50
  %unroll_iter = and i64 %9, 9223372036854775806
  br label %vector.body48

vector.body48:                                    ; preds = %vector.body48, %vector.ph50.new
  %index53 = phi i64 [ 0, %vector.ph50.new ], [ %index.next54.1, %vector.body48 ]
  %niter = phi i64 [ %unroll_iter, %vector.ph50.new ], [ %niter.nsub.1, %vector.body48 ]
  %13 = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv16.i27, i64 %index53
  %14 = bitcast double* %13 to <2 x double>*
  %wide.load57 = load <2 x double>, <2 x double>* %14, align 8, !tbaa !2
  %15 = getelementptr inbounds double, double* %13, i64 2
  %16 = bitcast double* %15 to <2 x double>*
  %wide.load58 = load <2 x double>, <2 x double>* %16, align 8, !tbaa !2
  %17 = fmul <2 x double> %wide.load57, <double 1.200000e+00, double 1.200000e+00>
  %18 = fmul <2 x double> %wide.load58, <double 1.200000e+00, double 1.200000e+00>
  %19 = bitcast double* %13 to <2 x double>*
  store <2 x double> %17, <2 x double>* %19, align 8, !tbaa !2
  %20 = bitcast double* %15 to <2 x double>*
  store <2 x double> %18, <2 x double>* %20, align 8, !tbaa !2
  %index.next54 = or i64 %index53, 4
  %21 = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv16.i27, i64 %index.next54
  %22 = bitcast double* %21 to <2 x double>*
  %wide.load57.1 = load <2 x double>, <2 x double>* %22, align 8, !tbaa !2
  %23 = getelementptr inbounds double, double* %21, i64 2
  %24 = bitcast double* %23 to <2 x double>*
  %wide.load58.1 = load <2 x double>, <2 x double>* %24, align 8, !tbaa !2
  %25 = fmul <2 x double> %wide.load57.1, <double 1.200000e+00, double 1.200000e+00>
  %26 = fmul <2 x double> %wide.load58.1, <double 1.200000e+00, double 1.200000e+00>
  %27 = bitcast double* %21 to <2 x double>*
  store <2 x double> %25, <2 x double>* %27, align 8, !tbaa !2
  %28 = bitcast double* %23 to <2 x double>*
  store <2 x double> %26, <2 x double>* %28, align 8, !tbaa !2
  %index.next54.1 = add i64 %index53, 8
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %middle.block46.unr-lcssa, label %vector.body48, !llvm.loop !11

middle.block46.unr-lcssa:                         ; preds = %vector.body48, %vector.ph50
  %index53.unr = phi i64 [ 0, %vector.ph50 ], [ %index.next54.1, %vector.body48 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block46, label %vector.body48.epil

vector.body48.epil:                               ; preds = %middle.block46.unr-lcssa
  %29 = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv16.i27, i64 %index53.unr
  %30 = bitcast double* %29 to <2 x double>*
  %wide.load57.epil = load <2 x double>, <2 x double>* %30, align 8, !tbaa !2
  %31 = getelementptr inbounds double, double* %29, i64 2
  %32 = bitcast double* %31 to <2 x double>*
  %wide.load58.epil = load <2 x double>, <2 x double>* %32, align 8, !tbaa !2
  %33 = fmul <2 x double> %wide.load57.epil, <double 1.200000e+00, double 1.200000e+00>
  %34 = fmul <2 x double> %wide.load58.epil, <double 1.200000e+00, double 1.200000e+00>
  %35 = bitcast double* %29 to <2 x double>*
  store <2 x double> %33, <2 x double>* %35, align 8, !tbaa !2
  %36 = bitcast double* %31 to <2 x double>*
  store <2 x double> %34, <2 x double>* %36, align 8, !tbaa !2
  br label %middle.block46

middle.block46:                                   ; preds = %middle.block46.unr-lcssa, %vector.body48.epil
  %cmp.n56 = icmp eq i64 %10, %n.vec52
  br i1 %cmp.n56, label %for.cond9.preheader.i.preheader, label %for.body3.i32.preheader

for.body3.i32.preheader:                          ; preds = %for.cond1.preheader.i28, %middle.block46
  %indvars.iv.i29.ph = phi i64 [ 0, %for.cond1.preheader.i28 ], [ %n.vec52, %middle.block46 ]
  br label %for.body3.i32

for.body3.i32:                                    ; preds = %for.body3.i32.preheader, %for.body3.i32
  %indvars.iv.i29 = phi i64 [ %indvars.iv.next.i30, %for.body3.i32 ], [ %indvars.iv.i29.ph, %for.body3.i32.preheader ]
  %arrayidx5.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv16.i27, i64 %indvars.iv.i29
  %37 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul double %37, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next.i30 = add nuw nsw i64 %indvars.iv.i29, 1
  %exitcond.not.i31 = icmp eq i64 %indvars.iv.next.i30, %indvars.iv14.i
  br i1 %exitcond.not.i31, label %for.cond9.preheader.i.preheader, label %for.body3.i32, !llvm.loop !13

for.cond9.preheader.i.preheader:                  ; preds = %for.body3.i32, %middle.block46
  %min.iters.check = icmp eq i64 %indvars.iv16.i27, 0
  %n.vec = and i64 %11, -2
  %cmp.n = icmp eq i64 %11, %n.vec
  br label %for.cond9.preheader.i

for.cond9.preheader.i:                            ; preds = %for.cond9.preheader.i.preheader, %for.inc40.i
  %indvars.iv11.i33 = phi i64 [ %indvars.iv.next12.i35, %for.inc40.i ], [ 0, %for.cond9.preheader.i.preheader ]
  %arrayidx20.i = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay4, i64 %indvars.iv16.i27, i64 %indvars.iv11.i33
  %arrayidx30.i = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay3, i64 %indvars.iv16.i27, i64 %indvars.iv11.i33
  %38 = load double, double* %arrayidx20.i, align 8, !tbaa !2
  %39 = load double, double* %arrayidx30.i, align 8, !tbaa !2
  br i1 %min.iters.check, label %for.body11.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.cond9.preheader.i
  %broadcast.splatinsert = insertelement <2 x double> poison, double %38, i32 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert44 = insertelement <2 x double> poison, double %39, i32 0
  %broadcast.splat45 = shufflevector <2 x double> %broadcast.splatinsert44, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %40 = or i64 %index, 1
  %41 = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay3, i64 %index, i64 %indvars.iv11.i33
  %42 = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay3, i64 %40, i64 %indvars.iv11.i33
  %43 = load double, double* %41, align 8, !tbaa !2
  %44 = load double, double* %42, align 8, !tbaa !2
  %45 = insertelement <2 x double> poison, double %43, i32 0
  %46 = insertelement <2 x double> %45, double %44, i32 1
  %47 = fmul <2 x double> %46, <double 1.500000e+00, double 1.500000e+00>
  %48 = fmul <2 x double> %47, %broadcast.splat
  %49 = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay4, i64 %index, i64 %indvars.iv11.i33
  %50 = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay4, i64 %40, i64 %indvars.iv11.i33
  %51 = load double, double* %49, align 8, !tbaa !2
  %52 = load double, double* %50, align 8, !tbaa !2
  %53 = insertelement <2 x double> poison, double %51, i32 0
  %54 = insertelement <2 x double> %53, double %52, i32 1
  %55 = fmul <2 x double> %54, <double 1.500000e+00, double 1.500000e+00>
  %56 = fmul <2 x double> %55, %broadcast.splat45
  %57 = fadd <2 x double> %48, %56
  %58 = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv16.i27, i64 %index
  %59 = bitcast double* %58 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %59, align 8, !tbaa !2
  %60 = fadd <2 x double> %wide.load, %57
  %61 = bitcast double* %58 to <2 x double>*
  store <2 x double> %60, <2 x double>* %61, align 8, !tbaa !2
  %index.next = add i64 %index, 2
  %62 = icmp eq i64 %index.next, %n.vec
  br i1 %62, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.inc40.i, label %for.body11.i.preheader

for.body11.i.preheader:                           ; preds = %for.cond9.preheader.i, %middle.block
  %indvars.iv7.i.ph = phi i64 [ 0, %for.cond9.preheader.i ], [ %n.vec, %middle.block ]
  br label %for.body11.i

for.body11.i:                                     ; preds = %for.body11.i.preheader, %for.body11.i
  %indvars.iv7.i = phi i64 [ %indvars.iv.next8.i, %for.body11.i ], [ %indvars.iv7.i.ph, %for.body11.i.preheader ]
  %arrayidx15.i = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay3, i64 %indvars.iv7.i, i64 %indvars.iv11.i33
  %63 = load double, double* %arrayidx15.i, align 8, !tbaa !2
  %mul16.i = fmul double %63, 1.500000e+00
  %mul21.i = fmul double %mul16.i, %38
  %arrayidx25.i = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay4, i64 %indvars.iv7.i, i64 %indvars.iv11.i33
  %64 = load double, double* %arrayidx25.i, align 8, !tbaa !2
  %mul26.i = fmul double %64, 1.500000e+00
  %mul31.i = fmul double %mul26.i, %39
  %add.i = fadd double %mul21.i, %mul31.i
  %arrayidx35.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv16.i27, i64 %indvars.iv7.i
  %65 = load double, double* %arrayidx35.i, align 8, !tbaa !2
  %add36.i = fadd double %65, %add.i
  store double %add36.i, double* %arrayidx35.i, align 8, !tbaa !2
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond10.not.i34 = icmp eq i64 %indvars.iv.next8.i, %indvars.iv14.i
  br i1 %exitcond10.not.i34, label %for.inc40.i, label %for.body11.i, !llvm.loop !16

for.inc40.i:                                      ; preds = %for.body11.i, %middle.block
  %indvars.iv.next12.i35 = add nuw nsw i64 %indvars.iv11.i33, 1
  %exitcond13.not.i = icmp eq i64 %indvars.iv.next12.i35, 2000
  br i1 %exitcond13.not.i, label %for.inc43.i, label %for.cond9.preheader.i, !llvm.loop !17

for.inc43.i:                                      ; preds = %for.inc40.i
  %indvars.iv.next17.i36 = add nuw nsw i64 %indvars.iv16.i27, 1
  %indvars.iv.next15.i = add nuw nsw i64 %indvars.iv14.i, 1
  %exitcond18.not.i37 = icmp eq i64 %indvars.iv.next17.i36, 2600
  br i1 %exitcond18.not.i37, label %kernel_syr2k.exit, label %for.cond1.preheader.i28, !llvm.loop !18

kernel_syr2k.exit:                                ; preds = %for.inc43.i
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syr2k.exit
  %66 = load i8*, i8** %argv, align 8, !tbaa !19
  %strcmpload = load i8, i8* %66, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !19
  %68 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %67) #7
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !19
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %69, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.inc10.i, %if.then
  %indvars.iv4.i = phi i64 [ 0, %if.then ], [ %indvars.iv.next5.i, %for.inc10.i ]
  %70 = mul nuw nsw i64 %indvars.iv4.i, 2600
  br label %for.body4.i

for.body4.i:                                      ; preds = %if.end.i, %for.cond2.preheader.i
  %indvars.iv.i38 = phi i64 [ 0, %for.cond2.preheader.i ], [ %indvars.iv.next.i40, %if.end.i ]
  %71 = add nuw nsw i64 %indvars.iv.i38, %70
  %72 = trunc i64 %71 to i32
  %rem.i39 = urem i32 %72, 20
  %cmp5.i = icmp eq i32 %rem.i39, 0
  br i1 %cmp5.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body4.i
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !19
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %73) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !19
  %arrayidx8.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv4.i, i64 %indvars.iv.i38
  %75 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %75) #7
  %indvars.iv.next.i40 = add nuw nsw i64 %indvars.iv.i38, 1
  %exitcond.not.i41 = icmp eq i64 %indvars.iv.next.i40, 2600
  br i1 %exitcond.not.i41, label %for.inc10.i, label %for.body4.i, !llvm.loop !21

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 2600
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !22

print_array.exit:                                 ; preds = %for.inc10.i
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !19
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !19
  %78 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %77) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syr2k.exit
  tail call void @free(i8* nonnull %call.i) #6
  tail call void @free(i8* %call.i25) #6
  tail call void @free(i8* %call.i26) #6
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

attributes #0 = { nounwind uwtable "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inaccessiblemem_or_argmemonly nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inaccessiblememonly nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }
attributes #7 = { cold nounwind }

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
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7, !12}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = distinct !{!13, !7, !14, !12}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = distinct !{!15, !7, !12}
!16 = distinct !{!16, !7, !14, !12}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = !{!20, !20, i64 0}
!20 = !{!"any pointer", !4, i64 0}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}

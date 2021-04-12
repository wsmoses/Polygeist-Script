; ModuleID = 'syrk.c'
source_filename = "syrk.c"
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
  %call.i19 = tail call noalias dereferenceable_or_null(41600000) i8* @malloc(i64 41600000) #6
  %arraydecay2 = bitcast i8* %call.i19 to [2000 x double]*
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc7.i, %entry
  %indvars.iv7.i = phi i64 [ 0, %entry ], [ %indvars.iv.next8.i, %for.inc7.i ]
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.body3.i, %for.cond1.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.cond1.preheader.i ], [ %indvars.iv.next.i, %for.body3.i ]
  %0 = mul nuw nsw i64 %indvars.iv.i, %indvars.iv7.i
  %1 = trunc i64 %0 to i32
  %2 = add i32 %1, 1
  %rem.i = urem i32 %2, 2600
  %conv.i = sitofp i32 %rem.i to double
  %div.i = fdiv double %conv.i, 2.600000e+03
  %arrayidx6.i = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay2, i64 %indvars.iv7.i, i64 %indvars.iv.i
  store double %div.i, double* %arrayidx6.i, align 8, !tbaa !2
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 2000
  br i1 %exitcond.not.i, label %for.inc7.i, label %for.body3.i, !llvm.loop !6

for.inc7.i:                                       ; preds = %for.body3.i
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 2600
  br i1 %exitcond9.not.i, label %for.cond14.preheader.i.preheader, label %for.cond1.preheader.i, !llvm.loop !8

for.cond14.preheader.i.preheader:                 ; preds = %for.inc7.i
  %arraydecay = bitcast i8* %call.i to [2600 x double]*
  br label %for.cond14.preheader.i

for.cond14.preheader.i:                           ; preds = %for.cond14.preheader.i.preheader, %for.inc31.i
  %indvars.iv15.i = phi i64 [ %indvars.iv.next16.i, %for.inc31.i ], [ 0, %for.cond14.preheader.i.preheader ]
  br label %for.body17.i

for.body17.i:                                     ; preds = %for.body17.i, %for.cond14.preheader.i
  %indvars.iv10.i = phi i64 [ 0, %for.cond14.preheader.i ], [ %indvars.iv.next11.i, %for.body17.i ]
  %3 = mul nuw nsw i64 %indvars.iv10.i, %indvars.iv15.i
  %4 = trunc i64 %3 to i32
  %5 = add i32 %4, 2
  %rem20.i = urem i32 %5, 2000
  %conv21.i = sitofp i32 %rem20.i to double
  %div23.i = fdiv double %conv21.i, 2.000000e+03
  %arrayidx27.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv15.i, i64 %indvars.iv10.i
  store double %div23.i, double* %arrayidx27.i, align 8, !tbaa !2
  %indvars.iv.next11.i = add nuw nsw i64 %indvars.iv10.i, 1
  %exitcond14.not.i = icmp eq i64 %indvars.iv.next11.i, 2600
  br i1 %exitcond14.not.i, label %for.inc31.i, label %for.body17.i, !llvm.loop !9

for.inc31.i:                                      ; preds = %for.body17.i
  %indvars.iv.next16.i = add nuw nsw i64 %indvars.iv15.i, 1
  %exitcond17.not.i = icmp eq i64 %indvars.iv.next16.i, 2600
  br i1 %exitcond17.not.i, label %init_array.exit, label %for.cond14.preheader.i, !llvm.loop !10

init_array.exit:                                  ; preds = %for.inc31.i
  tail call void (...) @polybench_timer_start() #6
  br label %for.cond1.preheader.i20

for.cond1.preheader.i20:                          ; preds = %for.inc32.i, %init_array.exit
  %indvars.iv16.i = phi i64 [ 0, %init_array.exit ], [ %indvars.iv.next17.i, %for.inc32.i ]
  %indvars.iv14.i = phi i64 [ 1, %init_array.exit ], [ %indvars.iv.next15.i, %for.inc32.i ]
  %6 = add nsw i64 %indvars.iv16.i, -3
  %7 = lshr i64 %6, 2
  %8 = add nuw nsw i64 %7, 1
  %9 = add nuw i64 %indvars.iv16.i, 1
  %10 = add nuw i64 %indvars.iv16.i, 1
  %min.iters.check39 = icmp ult i64 %indvars.iv16.i, 3
  br i1 %min.iters.check39, label %for.body3.i24.preheader, label %vector.ph40

vector.ph40:                                      ; preds = %for.cond1.preheader.i20
  %n.vec42 = and i64 %9, -4
  %xtraiter = and i64 %8, 1
  %11 = icmp eq i64 %7, 0
  br i1 %11, label %middle.block36.unr-lcssa, label %vector.ph40.new

vector.ph40.new:                                  ; preds = %vector.ph40
  %unroll_iter = and i64 %8, 9223372036854775806
  br label %vector.body38

vector.body38:                                    ; preds = %vector.body38, %vector.ph40.new
  %index43 = phi i64 [ 0, %vector.ph40.new ], [ %index.next44.1, %vector.body38 ]
  %niter = phi i64 [ %unroll_iter, %vector.ph40.new ], [ %niter.nsub.1, %vector.body38 ]
  %12 = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv16.i, i64 %index43
  %13 = bitcast double* %12 to <2 x double>*
  %wide.load47 = load <2 x double>, <2 x double>* %13, align 8, !tbaa !2
  %14 = getelementptr inbounds double, double* %12, i64 2
  %15 = bitcast double* %14 to <2 x double>*
  %wide.load48 = load <2 x double>, <2 x double>* %15, align 8, !tbaa !2
  %16 = fmul <2 x double> %wide.load47, <double 1.200000e+00, double 1.200000e+00>
  %17 = fmul <2 x double> %wide.load48, <double 1.200000e+00, double 1.200000e+00>
  %18 = bitcast double* %12 to <2 x double>*
  store <2 x double> %16, <2 x double>* %18, align 8, !tbaa !2
  %19 = bitcast double* %14 to <2 x double>*
  store <2 x double> %17, <2 x double>* %19, align 8, !tbaa !2
  %index.next44 = or i64 %index43, 4
  %20 = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv16.i, i64 %index.next44
  %21 = bitcast double* %20 to <2 x double>*
  %wide.load47.1 = load <2 x double>, <2 x double>* %21, align 8, !tbaa !2
  %22 = getelementptr inbounds double, double* %20, i64 2
  %23 = bitcast double* %22 to <2 x double>*
  %wide.load48.1 = load <2 x double>, <2 x double>* %23, align 8, !tbaa !2
  %24 = fmul <2 x double> %wide.load47.1, <double 1.200000e+00, double 1.200000e+00>
  %25 = fmul <2 x double> %wide.load48.1, <double 1.200000e+00, double 1.200000e+00>
  %26 = bitcast double* %20 to <2 x double>*
  store <2 x double> %24, <2 x double>* %26, align 8, !tbaa !2
  %27 = bitcast double* %22 to <2 x double>*
  store <2 x double> %25, <2 x double>* %27, align 8, !tbaa !2
  %index.next44.1 = add i64 %index43, 8
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %middle.block36.unr-lcssa, label %vector.body38, !llvm.loop !11

middle.block36.unr-lcssa:                         ; preds = %vector.body38, %vector.ph40
  %index43.unr = phi i64 [ 0, %vector.ph40 ], [ %index.next44.1, %vector.body38 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block36, label %vector.body38.epil

vector.body38.epil:                               ; preds = %middle.block36.unr-lcssa
  %28 = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv16.i, i64 %index43.unr
  %29 = bitcast double* %28 to <2 x double>*
  %wide.load47.epil = load <2 x double>, <2 x double>* %29, align 8, !tbaa !2
  %30 = getelementptr inbounds double, double* %28, i64 2
  %31 = bitcast double* %30 to <2 x double>*
  %wide.load48.epil = load <2 x double>, <2 x double>* %31, align 8, !tbaa !2
  %32 = fmul <2 x double> %wide.load47.epil, <double 1.200000e+00, double 1.200000e+00>
  %33 = fmul <2 x double> %wide.load48.epil, <double 1.200000e+00, double 1.200000e+00>
  %34 = bitcast double* %28 to <2 x double>*
  store <2 x double> %32, <2 x double>* %34, align 8, !tbaa !2
  %35 = bitcast double* %30 to <2 x double>*
  store <2 x double> %33, <2 x double>* %35, align 8, !tbaa !2
  br label %middle.block36

middle.block36:                                   ; preds = %middle.block36.unr-lcssa, %vector.body38.epil
  %cmp.n46 = icmp eq i64 %9, %n.vec42
  br i1 %cmp.n46, label %for.cond9.preheader.i.preheader, label %for.body3.i24.preheader

for.body3.i24.preheader:                          ; preds = %for.cond1.preheader.i20, %middle.block36
  %indvars.iv.i21.ph = phi i64 [ 0, %for.cond1.preheader.i20 ], [ %n.vec42, %middle.block36 ]
  br label %for.body3.i24

for.body3.i24:                                    ; preds = %for.body3.i24.preheader, %for.body3.i24
  %indvars.iv.i21 = phi i64 [ %indvars.iv.next.i22, %for.body3.i24 ], [ %indvars.iv.i21.ph, %for.body3.i24.preheader ]
  %arrayidx5.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv16.i, i64 %indvars.iv.i21
  %36 = load double, double* %arrayidx5.i, align 8, !tbaa !2
  %mul.i = fmul double %36, 1.200000e+00
  store double %mul.i, double* %arrayidx5.i, align 8, !tbaa !2
  %indvars.iv.next.i22 = add nuw nsw i64 %indvars.iv.i21, 1
  %exitcond.not.i23 = icmp eq i64 %indvars.iv.next.i22, %indvars.iv14.i
  br i1 %exitcond.not.i23, label %for.cond9.preheader.i.preheader, label %for.body3.i24, !llvm.loop !13

for.cond9.preheader.i.preheader:                  ; preds = %for.body3.i24, %middle.block36
  %min.iters.check = icmp ult i64 %indvars.iv16.i, 3
  %n.vec = and i64 %10, -4
  %cmp.n = icmp eq i64 %10, %n.vec
  br label %for.cond9.preheader.i

for.cond9.preheader.i:                            ; preds = %for.cond9.preheader.i.preheader, %for.inc29.i
  %indvars.iv11.i = phi i64 [ %indvars.iv.next12.i, %for.inc29.i ], [ 0, %for.cond9.preheader.i.preheader ]
  %arrayidx15.i = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay2, i64 %indvars.iv16.i, i64 %indvars.iv11.i
  %37 = load double, double* %arrayidx15.i, align 8, !tbaa !2
  %mul16.i = fmul double %37, 1.500000e+00
  br i1 %min.iters.check, label %for.body11.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.cond9.preheader.i
  %broadcast.splatinsert = insertelement <2 x double> poison, double %mul16.i, i32 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert33 = insertelement <2 x double> poison, double %mul16.i, i32 0
  %broadcast.splat34 = shufflevector <2 x double> %broadcast.splatinsert33, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %38 = or i64 %index, 1
  %39 = or i64 %index, 2
  %40 = or i64 %index, 3
  %41 = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay2, i64 %index, i64 %indvars.iv11.i
  %42 = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay2, i64 %38, i64 %indvars.iv11.i
  %43 = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay2, i64 %39, i64 %indvars.iv11.i
  %44 = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay2, i64 %40, i64 %indvars.iv11.i
  %45 = load double, double* %41, align 8, !tbaa !2
  %46 = load double, double* %42, align 8, !tbaa !2
  %47 = insertelement <2 x double> poison, double %45, i32 0
  %48 = insertelement <2 x double> %47, double %46, i32 1
  %49 = load double, double* %43, align 8, !tbaa !2
  %50 = load double, double* %44, align 8, !tbaa !2
  %51 = insertelement <2 x double> poison, double %49, i32 0
  %52 = insertelement <2 x double> %51, double %50, i32 1
  %53 = fmul <2 x double> %broadcast.splat, %48
  %54 = fmul <2 x double> %broadcast.splat34, %52
  %55 = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv16.i, i64 %index
  %56 = bitcast double* %55 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %56, align 8, !tbaa !2
  %57 = getelementptr inbounds double, double* %55, i64 2
  %58 = bitcast double* %57 to <2 x double>*
  %wide.load35 = load <2 x double>, <2 x double>* %58, align 8, !tbaa !2
  %59 = fadd <2 x double> %wide.load, %53
  %60 = fadd <2 x double> %wide.load35, %54
  %61 = bitcast double* %55 to <2 x double>*
  store <2 x double> %59, <2 x double>* %61, align 8, !tbaa !2
  %62 = bitcast double* %57 to <2 x double>*
  store <2 x double> %60, <2 x double>* %62, align 8, !tbaa !2
  %index.next = add i64 %index, 4
  %63 = icmp eq i64 %index.next, %n.vec
  br i1 %63, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.inc29.i, label %for.body11.i.preheader

for.body11.i.preheader:                           ; preds = %for.cond9.preheader.i, %middle.block
  %indvars.iv7.i25.ph = phi i64 [ 0, %for.cond9.preheader.i ], [ %n.vec, %middle.block ]
  br label %for.body11.i

for.body11.i:                                     ; preds = %for.body11.i.preheader, %for.body11.i
  %indvars.iv7.i25 = phi i64 [ %indvars.iv.next8.i26, %for.body11.i ], [ %indvars.iv7.i25.ph, %for.body11.i.preheader ]
  %arrayidx20.i = getelementptr inbounds [2000 x double], [2000 x double]* %arraydecay2, i64 %indvars.iv7.i25, i64 %indvars.iv11.i
  %64 = load double, double* %arrayidx20.i, align 8, !tbaa !2
  %mul21.i = fmul double %mul16.i, %64
  %arrayidx25.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv16.i, i64 %indvars.iv7.i25
  %65 = load double, double* %arrayidx25.i, align 8, !tbaa !2
  %add.i = fadd double %65, %mul21.i
  store double %add.i, double* %arrayidx25.i, align 8, !tbaa !2
  %indvars.iv.next8.i26 = add nuw nsw i64 %indvars.iv7.i25, 1
  %exitcond10.not.i = icmp eq i64 %indvars.iv.next8.i26, %indvars.iv14.i
  br i1 %exitcond10.not.i, label %for.inc29.i, label %for.body11.i, !llvm.loop !16

for.inc29.i:                                      ; preds = %for.body11.i, %middle.block
  %indvars.iv.next12.i = add nuw nsw i64 %indvars.iv11.i, 1
  %exitcond13.not.i = icmp eq i64 %indvars.iv.next12.i, 2000
  br i1 %exitcond13.not.i, label %for.inc32.i, label %for.cond9.preheader.i, !llvm.loop !17

for.inc32.i:                                      ; preds = %for.inc29.i
  %indvars.iv.next17.i = add nuw nsw i64 %indvars.iv16.i, 1
  %indvars.iv.next15.i = add nuw nsw i64 %indvars.iv14.i, 1
  %exitcond18.not.i = icmp eq i64 %indvars.iv.next17.i, 2600
  br i1 %exitcond18.not.i, label %kernel_syrk.exit, label %for.cond1.preheader.i20, !llvm.loop !18

kernel_syrk.exit:                                 ; preds = %for.inc32.i
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_syrk.exit
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
  %indvars.iv.i27 = phi i64 [ 0, %for.cond2.preheader.i ], [ %indvars.iv.next.i29, %if.end.i ]
  %71 = add nuw nsw i64 %indvars.iv.i27, %70
  %72 = trunc i64 %71 to i32
  %rem.i28 = urem i32 %72, 20
  %cmp5.i = icmp eq i32 %rem.i28, 0
  br i1 %cmp5.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body4.i
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !19
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %73) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !19
  %arrayidx8.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv4.i, i64 %indvars.iv.i27
  %75 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %75) #7
  %indvars.iv.next.i29 = add nuw nsw i64 %indvars.iv.i27, 1
  %exitcond.not.i30 = icmp eq i64 %indvars.iv.next.i29, 2600
  br i1 %exitcond.not.i30, label %for.inc10.i, label %for.body4.i, !llvm.loop !21

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

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_syrk.exit
  tail call void @free(i8* nonnull %call.i) #6
  tail call void @free(i8* %call.i19) #6
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

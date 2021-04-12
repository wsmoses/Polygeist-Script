; ModuleID = 'gemm.c'
source_filename = "gemm.c"
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
  %call.i = tail call noalias dereferenceable_or_null(36800000) i8* @malloc(i64 36800000) #6
  %call.i28 = tail call noalias dereferenceable_or_null(41600000) i8* @malloc(i64 41600000) #6
  %call.i29 = tail call noalias dereferenceable_or_null(47840000) i8* @malloc(i64 47840000) #6
  %arraydecay = bitcast i8* %call.i to [2300 x double]*
  %arraydecay3 = bitcast i8* %call.i28 to [2600 x double]*
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc7.i, %entry
  %indvars.iv9.i = phi i64 [ 0, %entry ], [ %indvars.iv.next10.i, %for.inc7.i ]
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.body3.i, %for.cond1.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.cond1.preheader.i ], [ %indvars.iv.next.i, %for.body3.i ]
  %0 = mul nuw nsw i64 %indvars.iv.i, %indvars.iv9.i
  %1 = trunc i64 %0 to i32
  %2 = add i32 %1, 1
  %rem.i = urem i32 %2, 2000
  %conv.i = sitofp i32 %rem.i to double
  %div.i = fdiv double %conv.i, 2.000000e+03
  %arrayidx6.i = getelementptr inbounds [2300 x double], [2300 x double]* %arraydecay, i64 %indvars.iv9.i, i64 %indvars.iv.i
  store double %div.i, double* %arrayidx6.i, align 8, !tbaa !2
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 2300
  br i1 %exitcond.not.i, label %for.inc7.i, label %for.body3.i, !llvm.loop !6

for.inc7.i:                                       ; preds = %for.body3.i
  %indvars.iv.next10.i = add nuw nsw i64 %indvars.iv9.i, 1
  %exitcond11.not.i = icmp eq i64 %indvars.iv.next10.i, 2000
  br i1 %exitcond11.not.i, label %for.cond14.preheader.i, label %for.cond1.preheader.i, !llvm.loop !8

for.cond14.preheader.i:                           ; preds = %for.inc7.i, %for.inc31.i
  %indvars.iv16.i = phi i64 [ %indvars.iv.next17.i, %for.inc31.i ], [ 0, %for.inc7.i ]
  br label %for.body17.i

for.body17.i:                                     ; preds = %for.body17.i, %for.cond14.preheader.i
  %indvars.iv12.i = phi i64 [ 0, %for.cond14.preheader.i ], [ %indvars.iv.next13.i, %for.body17.i ]
  %indvars.iv.next13.i = add nuw nsw i64 %indvars.iv12.i, 1
  %3 = mul nuw nsw i64 %indvars.iv.next13.i, %indvars.iv16.i
  %4 = trunc i64 %3 to i32
  %rem20.i = urem i32 %4, 2600
  %conv21.i = sitofp i32 %rem20.i to double
  %div23.i = fdiv double %conv21.i, 2.600000e+03
  %arrayidx27.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay3, i64 %indvars.iv16.i, i64 %indvars.iv12.i
  store double %div23.i, double* %arrayidx27.i, align 8, !tbaa !2
  %exitcond15.not.i = icmp eq i64 %indvars.iv.next13.i, 2600
  br i1 %exitcond15.not.i, label %for.inc31.i, label %for.body17.i, !llvm.loop !9

for.inc31.i:                                      ; preds = %for.body17.i
  %indvars.iv.next17.i = add nuw nsw i64 %indvars.iv16.i, 1
  %exitcond18.not.i = icmp eq i64 %indvars.iv.next17.i, 2000
  br i1 %exitcond18.not.i, label %for.cond38.preheader.i.preheader, label %for.cond14.preheader.i, !llvm.loop !10

for.cond38.preheader.i.preheader:                 ; preds = %for.inc31.i
  %arraydecay4 = bitcast i8* %call.i29 to [2300 x double]*
  br label %for.cond38.preheader.i

for.cond38.preheader.i:                           ; preds = %for.cond38.preheader.i.preheader, %for.inc55.i
  %indvars.iv24.i = phi i64 [ %indvars.iv.next25.i, %for.inc55.i ], [ 0, %for.cond38.preheader.i.preheader ]
  br label %for.body41.i

for.body41.i:                                     ; preds = %for.body41.i, %for.cond38.preheader.i
  %indvars.iv19.i = phi i64 [ 0, %for.cond38.preheader.i ], [ %indvars.iv.next20.i, %for.body41.i ]
  %5 = add nuw nsw i64 %indvars.iv19.i, 2
  %6 = mul nuw nsw i64 %5, %indvars.iv24.i
  %7 = trunc i64 %6 to i32
  %rem44.i = urem i32 %7, 2300
  %conv45.i = sitofp i32 %rem44.i to double
  %div47.i = fdiv double %conv45.i, 2.300000e+03
  %arrayidx51.i = getelementptr inbounds [2300 x double], [2300 x double]* %arraydecay4, i64 %indvars.iv24.i, i64 %indvars.iv19.i
  store double %div47.i, double* %arrayidx51.i, align 8, !tbaa !2
  %indvars.iv.next20.i = add nuw nsw i64 %indvars.iv19.i, 1
  %exitcond23.not.i = icmp eq i64 %indvars.iv.next20.i, 2300
  br i1 %exitcond23.not.i, label %for.inc55.i, label %for.body41.i, !llvm.loop !11

for.inc55.i:                                      ; preds = %for.body41.i
  %indvars.iv.next25.i = add nuw nsw i64 %indvars.iv24.i, 1
  %exitcond26.not.i = icmp eq i64 %indvars.iv.next25.i, 2600
  br i1 %exitcond26.not.i, label %init_array.exit, label %for.cond38.preheader.i, !llvm.loop !12

init_array.exit:                                  ; preds = %for.inc55.i
  tail call void (...) @polybench_timer_start() #6
  br label %vector.ph50

vector.ph50:                                      ; preds = %init_array.exit, %for.inc32.i
  %indvars.iv11.i = phi i64 [ 0, %init_array.exit ], [ %indvars.iv.next12.i, %for.inc32.i ]
  br label %vector.body49

vector.body49:                                    ; preds = %vector.body49.1, %vector.ph50
  %index51 = phi i64 [ 0, %vector.ph50 ], [ %index.next52.1, %vector.body49.1 ]
  %8 = getelementptr inbounds [2300 x double], [2300 x double]* %arraydecay, i64 %indvars.iv11.i, i64 %index51
  %9 = bitcast double* %8 to <2 x double>*
  %wide.load55 = load <2 x double>, <2 x double>* %9, align 8, !tbaa !2
  %10 = getelementptr inbounds double, double* %8, i64 2
  %11 = bitcast double* %10 to <2 x double>*
  %wide.load56 = load <2 x double>, <2 x double>* %11, align 8, !tbaa !2
  %12 = fmul <2 x double> %wide.load55, <double 1.200000e+00, double 1.200000e+00>
  %13 = fmul <2 x double> %wide.load56, <double 1.200000e+00, double 1.200000e+00>
  %14 = bitcast double* %8 to <2 x double>*
  store <2 x double> %12, <2 x double>* %14, align 8, !tbaa !2
  %15 = bitcast double* %10 to <2 x double>*
  store <2 x double> %13, <2 x double>* %15, align 8, !tbaa !2
  %index.next52 = or i64 %index51, 4
  %16 = icmp eq i64 %index.next52, 2300
  br i1 %16, label %for.cond9.preheader.i, label %vector.body49.1, !llvm.loop !13

for.cond9.preheader.i:                            ; preds = %vector.body49, %for.inc29.i
  %indvars.iv8.i = phi i64 [ %indvars.iv.next9.i, %for.inc29.i ], [ 0, %vector.body49 ]
  %arrayidx15.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay3, i64 %indvars.iv11.i, i64 %indvars.iv8.i
  %17 = load double, double* %arrayidx15.i, align 8, !tbaa !2
  %mul16.i = fmul double %17, 1.500000e+00
  %broadcast.splatinsert = insertelement <2 x double> poison, double %mul16.i, i32 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert43 = insertelement <2 x double> poison, double %mul16.i, i32 0
  %broadcast.splat44 = shufflevector <2 x double> %broadcast.splatinsert43, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body.1, %for.cond9.preheader.i
  %index = phi i64 [ 0, %for.cond9.preheader.i ], [ %index.next.1, %vector.body.1 ]
  %18 = getelementptr inbounds [2300 x double], [2300 x double]* %arraydecay4, i64 %indvars.iv8.i, i64 %index
  %19 = bitcast double* %18 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %19, align 8, !tbaa !2
  %20 = getelementptr inbounds double, double* %18, i64 2
  %21 = bitcast double* %20 to <2 x double>*
  %wide.load42 = load <2 x double>, <2 x double>* %21, align 8, !tbaa !2
  %22 = fmul <2 x double> %broadcast.splat, %wide.load
  %23 = fmul <2 x double> %broadcast.splat44, %wide.load42
  %24 = getelementptr inbounds [2300 x double], [2300 x double]* %arraydecay, i64 %indvars.iv11.i, i64 %index
  %25 = bitcast double* %24 to <2 x double>*
  %wide.load45 = load <2 x double>, <2 x double>* %25, align 8, !tbaa !2
  %26 = getelementptr inbounds double, double* %24, i64 2
  %27 = bitcast double* %26 to <2 x double>*
  %wide.load46 = load <2 x double>, <2 x double>* %27, align 8, !tbaa !2
  %28 = fadd <2 x double> %wide.load45, %22
  %29 = fadd <2 x double> %wide.load46, %23
  %30 = bitcast double* %24 to <2 x double>*
  store <2 x double> %28, <2 x double>* %30, align 8, !tbaa !2
  %31 = bitcast double* %26 to <2 x double>*
  store <2 x double> %29, <2 x double>* %31, align 8, !tbaa !2
  %index.next = or i64 %index, 4
  %32 = icmp eq i64 %index.next, 2300
  br i1 %32, label %for.inc29.i, label %vector.body.1, !llvm.loop !15

for.inc29.i:                                      ; preds = %vector.body
  %indvars.iv.next9.i = add nuw nsw i64 %indvars.iv8.i, 1
  %exitcond10.not.i = icmp eq i64 %indvars.iv.next9.i, 2600
  br i1 %exitcond10.not.i, label %for.inc32.i, label %for.cond9.preheader.i, !llvm.loop !16

for.inc32.i:                                      ; preds = %for.inc29.i
  %indvars.iv.next12.i = add nuw nsw i64 %indvars.iv11.i, 1
  %exitcond13.not.i = icmp eq i64 %indvars.iv.next12.i, 2000
  br i1 %exitcond13.not.i, label %kernel_gemm.exit, label %vector.ph50, !llvm.loop !17

kernel_gemm.exit:                                 ; preds = %for.inc32.i
  tail call void (...) @polybench_timer_stop() #6
  tail call void (...) @polybench_timer_print() #6
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_gemm.exit
  %33 = load i8*, i8** %argv, align 8, !tbaa !18
  %strcmpload = load i8, i8* %33, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !18
  %35 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %34) #7
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !18
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.inc10.i, %if.then
  %indvars.iv4.i = phi i64 [ 0, %if.then ], [ %indvars.iv.next5.i, %for.inc10.i ]
  %37 = mul nuw nsw i64 %indvars.iv4.i, 2000
  br label %for.body4.i

for.body4.i:                                      ; preds = %if.end.i, %for.cond2.preheader.i
  %indvars.iv.i35 = phi i64 [ 0, %for.cond2.preheader.i ], [ %indvars.iv.next.i37, %if.end.i ]
  %38 = add nuw nsw i64 %indvars.iv.i35, %37
  %39 = trunc i64 %38 to i32
  %rem.i36 = urem i32 %39, 20
  %cmp5.i = icmp eq i32 %rem.i36, 0
  br i1 %cmp5.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body4.i
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !18
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %40) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !18
  %arrayidx8.i = getelementptr inbounds [2300 x double], [2300 x double]* %arraydecay, i64 %indvars.iv4.i, i64 %indvars.iv.i35
  %42 = load double, double* %arrayidx8.i, align 8, !tbaa !2
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %42) #7
  %indvars.iv.next.i37 = add nuw nsw i64 %indvars.iv.i35, 1
  %exitcond.not.i38 = icmp eq i64 %indvars.iv.next.i37, 2300
  br i1 %exitcond.not.i38, label %for.inc10.i, label %for.body4.i, !llvm.loop !20

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i39 = icmp eq i64 %indvars.iv.next5.i, 2000
  br i1 %exitcond7.not.i39, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !21

print_array.exit:                                 ; preds = %for.inc10.i
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !18
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !18
  %45 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %44) #7
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_gemm.exit
  tail call void @free(i8* nonnull %call.i) #6
  tail call void @free(i8* %call.i28) #6
  tail call void @free(i8* %call.i29) #6
  ret i32 0

vector.body49.1:                                  ; preds = %vector.body49
  %46 = getelementptr inbounds [2300 x double], [2300 x double]* %arraydecay, i64 %indvars.iv11.i, i64 %index.next52
  %47 = bitcast double* %46 to <2 x double>*
  %wide.load55.1 = load <2 x double>, <2 x double>* %47, align 8, !tbaa !2
  %48 = getelementptr inbounds double, double* %46, i64 2
  %49 = bitcast double* %48 to <2 x double>*
  %wide.load56.1 = load <2 x double>, <2 x double>* %49, align 8, !tbaa !2
  %50 = fmul <2 x double> %wide.load55.1, <double 1.200000e+00, double 1.200000e+00>
  %51 = fmul <2 x double> %wide.load56.1, <double 1.200000e+00, double 1.200000e+00>
  %52 = bitcast double* %46 to <2 x double>*
  store <2 x double> %50, <2 x double>* %52, align 8, !tbaa !2
  %53 = bitcast double* %48 to <2 x double>*
  store <2 x double> %51, <2 x double>* %53, align 8, !tbaa !2
  %index.next52.1 = add nuw nsw i64 %index51, 8
  br label %vector.body49

vector.body.1:                                    ; preds = %vector.body
  %54 = getelementptr inbounds [2300 x double], [2300 x double]* %arraydecay4, i64 %indvars.iv8.i, i64 %index.next
  %55 = bitcast double* %54 to <2 x double>*
  %wide.load.1 = load <2 x double>, <2 x double>* %55, align 8, !tbaa !2
  %56 = getelementptr inbounds double, double* %54, i64 2
  %57 = bitcast double* %56 to <2 x double>*
  %wide.load42.1 = load <2 x double>, <2 x double>* %57, align 8, !tbaa !2
  %58 = fmul <2 x double> %broadcast.splat, %wide.load.1
  %59 = fmul <2 x double> %broadcast.splat44, %wide.load42.1
  %60 = getelementptr inbounds [2300 x double], [2300 x double]* %arraydecay, i64 %indvars.iv11.i, i64 %index.next
  %61 = bitcast double* %60 to <2 x double>*
  %wide.load45.1 = load <2 x double>, <2 x double>* %61, align 8, !tbaa !2
  %62 = getelementptr inbounds double, double* %60, i64 2
  %63 = bitcast double* %62 to <2 x double>*
  %wide.load46.1 = load <2 x double>, <2 x double>* %63, align 8, !tbaa !2
  %64 = fadd <2 x double> %wide.load45.1, %58
  %65 = fadd <2 x double> %wide.load46.1, %59
  %66 = bitcast double* %60 to <2 x double>*
  store <2 x double> %64, <2 x double>* %66, align 8, !tbaa !2
  %67 = bitcast double* %62 to <2 x double>*
  store <2 x double> %65, <2 x double>* %67, align 8, !tbaa !2
  %index.next.1 = add nuw nsw i64 %index, 8
  br label %vector.body
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
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7, !14}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = distinct !{!15, !7, !14}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = !{!19, !19, i64 0}
!19 = !{!"any pointer", !4, i64 0}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}

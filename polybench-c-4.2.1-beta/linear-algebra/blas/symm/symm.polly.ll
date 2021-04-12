; ModuleID = 'symm.c'
source_filename = "symm.c"
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
polly.loop_preheader:
  %call.i = tail call noalias dereferenceable_or_null(41600000) i8* @malloc(i64 41600000) #7
  %call.i26 = tail call noalias dereferenceable_or_null(32000000) i8* @malloc(i64 32000000) #7
  %call.i27 = tail call noalias dereferenceable_or_null(41600000) i8* @malloc(i64 41600000) #7
  br label %polly.loop_preheader42

kernel_symm.exit:                                 ; preds = %polly.loop_exit169
  %arraydecay = bitcast i8* %call.i to [2600 x double]*
  tail call void (...) @polybench_timer_stop() #7
  tail call void (...) @polybench_timer_print() #7
  %cmp = icmp sgt i32 %argc, 42
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %kernel_symm.exit
  %0 = load i8*, i8** %argv, align 8, !tbaa !2
  %strcmpload = load i8, i8* %0, align 1
  %tobool.not = icmp eq i8 %strcmpload, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %2 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %1) #8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %call1.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #8
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.inc10.i, %if.then
  %indvars.iv4.i = phi i64 [ 0, %if.then ], [ %indvars.iv.next5.i, %for.inc10.i ]
  %4 = mul nuw nsw i64 %indvars.iv4.i, 2000
  br label %for.body4.i

for.body4.i:                                      ; preds = %if.end.i, %for.cond2.preheader.i
  %indvars.iv.i32 = phi i64 [ 0, %for.cond2.preheader.i ], [ %indvars.iv.next.i34, %if.end.i ]
  %5 = add nuw nsw i64 %indvars.iv.i32, %4
  %6 = trunc i64 %5 to i32
  %rem.i33 = urem i32 %6, 20
  %cmp5.i = icmp eq i32 %rem.i33, 0
  br i1 %cmp5.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body4.i
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %fputc.i = tail call i32 @fputc(i32 10, %struct._IO_FILE* %7) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body4.i
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %arrayidx8.i = getelementptr inbounds [2600 x double], [2600 x double]* %arraydecay, i64 %indvars.iv4.i, i64 %indvars.iv.i32
  %9 = load double, double* %arrayidx8.i, align 8, !tbaa !6
  %call9.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), double %9) #8
  %indvars.iv.next.i34 = add nuw nsw i64 %indvars.iv.i32, 1
  %exitcond.not.i35 = icmp eq i64 %indvars.iv.next.i34, 2600
  br i1 %exitcond.not.i35, label %for.inc10.i, label %for.body4.i, !llvm.loop !8

for.inc10.i:                                      ; preds = %if.end.i
  %indvars.iv.next5.i = add nuw nsw i64 %indvars.iv4.i, 1
  %exitcond7.not.i = icmp eq i64 %indvars.iv.next5.i, 2000
  br i1 %exitcond7.not.i, label %print_array.exit, label %for.cond2.preheader.i, !llvm.loop !10

print_array.exit:                                 ; preds = %for.inc10.i
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %call13.i = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #8
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !2
  %12 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %11) #8
  br label %if.end

if.end:                                           ; preds = %print_array.exit, %land.lhs.true, %kernel_symm.exit
  tail call void @free(i8* nonnull %call.i) #7
  tail call void @free(i8* %call.i26) #7
  tail call void @free(i8* %call.i27) #7
  ret i32 0

polly.loop_exit43:                                ; preds = %polly.loop_exit49
  %polly.indvar_next = add nuw nsw i64 %polly.indvar, 1
  %indvars.iv.next205 = add nsw i64 %indvars.iv204, -32
  %exitcond209.not = icmp eq i64 %polly.indvar_next, 63
  br i1 %exitcond209.not, label %polly.loop_preheader68.preheader, label %polly.loop_preheader42

polly.loop_preheader68.preheader:                 ; preds = %polly.loop_exit43
  %call.i2660 = bitcast i8* %call.i26 to [2000 x double]*
  br label %polly.loop_preheader68

polly.loop_exit49:                                ; preds = %polly.loop_exit55
  %polly.indvar_next45 = add nuw nsw i64 %polly.indvar44, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -32
  %exitcond208.not = icmp eq i64 %polly.indvar_next45, 82
  br i1 %exitcond208.not, label %polly.loop_exit43, label %polly.loop_preheader48

polly.loop_preheader42:                           ; preds = %polly.loop_preheader, %polly.loop_exit43
  %indvars.iv204 = phi i64 [ 0, %polly.loop_preheader ], [ %indvars.iv.next205, %polly.loop_exit43 ]
  %polly.indvar = phi i64 [ 0, %polly.loop_preheader ], [ %polly.indvar_next, %polly.loop_exit43 ]
  %smin206 = call i64 @llvm.smin.i64(i64 %indvars.iv204, i64 -1968)
  %13 = shl nsw i64 %polly.indvar, 5
  %14 = add nsw i64 %smin206, 1999
  br label %polly.loop_preheader48

polly.loop_exit55:                                ; preds = %polly.stmt.for.body3.i
  %polly.indvar_next51 = add nuw nsw i64 %polly.indvar50, 1
  %exitcond207.not = icmp eq i64 %polly.indvar50, %14
  br i1 %exitcond207.not, label %polly.loop_exit49, label %polly.loop_preheader54

polly.loop_preheader48:                           ; preds = %polly.loop_preheader42, %polly.loop_exit49
  %indvars.iv = phi i64 [ 0, %polly.loop_preheader42 ], [ %indvars.iv.next, %polly.loop_exit49 ]
  %polly.indvar44 = phi i64 [ 0, %polly.loop_preheader42 ], [ %polly.indvar_next45, %polly.loop_exit49 ]
  %smin = call i64 @llvm.smin.i64(i64 %indvars.iv, i64 -2568)
  %15 = shl nsw i64 %polly.indvar44, 5
  %16 = add nsw i64 %smin, 2599
  br label %polly.loop_preheader54

polly.stmt.for.body3.i:                           ; preds = %polly.loop_preheader54, %polly.stmt.for.body3.i
  %polly.indvar56 = phi i64 [ 0, %polly.loop_preheader54 ], [ %polly.indvar_next57, %polly.stmt.for.body3.i ]
  %17 = add nuw nsw i64 %polly.indvar56, %15
  %18 = trunc i64 %17 to i32
  %19 = sub i32 %25, %18
  %20 = urem i32 %19, 100
  %p_conv9.i = sitofp i32 %20 to double
  %p_div11.i = fdiv double %p_conv9.i, 2.000000e+03
  %21 = shl i64 %17, 3
  %22 = add nuw nsw i64 %21, %26
  %scevgep = getelementptr i8, i8* %call.i27, i64 %22
  %scevgep59 = bitcast i8* %scevgep to double*
  store double %p_div11.i, double* %scevgep59, align 8, !alias.scope !11, !noalias !13
  %polly.indvar_next57 = add nuw nsw i64 %polly.indvar56, 1
  %exitcond.not = icmp eq i64 %polly.indvar56, %16
  br i1 %exitcond.not, label %polly.loop_exit55, label %polly.stmt.for.body3.i

polly.loop_preheader54:                           ; preds = %polly.loop_preheader48, %polly.loop_exit55
  %polly.indvar50 = phi i64 [ 0, %polly.loop_preheader48 ], [ %polly.indvar_next51, %polly.loop_exit55 ]
  %23 = add nuw nsw i64 %polly.indvar50, %13
  %24 = trunc i64 %23 to i32
  %25 = add i32 %24, 2600
  %26 = mul nuw nsw i64 %23, 20800
  br label %polly.stmt.for.body3.i

polly.loop_exit69:                                ; preds = %polly.loop_exit75
  %polly.indvar_next65 = add nuw nsw i64 %polly.indvar64, 1
  %indvars.iv.next215 = add nsw i64 %indvars.iv214, -32
  %exitcond219.not = icmp eq i64 %polly.indvar_next65, 63
  br i1 %exitcond219.not, label %polly.loop_preheader95, label %polly.loop_preheader68

polly.loop_exit75:                                ; preds = %polly.loop_exit81
  %polly.indvar_next71 = add nuw nsw i64 %polly.indvar70, 1
  %indvars.iv.next211 = add nsw i64 %indvars.iv210, -32
  %exitcond218.not = icmp eq i64 %polly.indvar_next71, 82
  br i1 %exitcond218.not, label %polly.loop_exit69, label %polly.loop_preheader74

polly.loop_preheader68:                           ; preds = %polly.loop_preheader68.preheader, %polly.loop_exit69
  %indvars.iv214 = phi i64 [ 0, %polly.loop_preheader68.preheader ], [ %indvars.iv.next215, %polly.loop_exit69 ]
  %polly.indvar64 = phi i64 [ 0, %polly.loop_preheader68.preheader ], [ %polly.indvar_next65, %polly.loop_exit69 ]
  %smin216 = call i64 @llvm.smin.i64(i64 %indvars.iv214, i64 -1968)
  %27 = shl nsw i64 %polly.indvar64, 5
  %28 = add nsw i64 %smin216, 1999
  br label %polly.loop_preheader74

polly.loop_exit81:                                ; preds = %polly.stmt.for.body3.i85
  %polly.indvar_next77 = add nuw nsw i64 %polly.indvar76, 1
  %exitcond217.not = icmp eq i64 %polly.indvar76, %28
  br i1 %exitcond217.not, label %polly.loop_exit75, label %polly.loop_preheader80

polly.loop_preheader74:                           ; preds = %polly.loop_preheader68, %polly.loop_exit75
  %indvars.iv210 = phi i64 [ 0, %polly.loop_preheader68 ], [ %indvars.iv.next211, %polly.loop_exit75 ]
  %polly.indvar70 = phi i64 [ 0, %polly.loop_preheader68 ], [ %polly.indvar_next71, %polly.loop_exit75 ]
  %smin212 = call i64 @llvm.smin.i64(i64 %indvars.iv210, i64 -2568)
  %29 = shl nsw i64 %polly.indvar70, 5
  %30 = add nsw i64 %smin212, 2599
  br label %polly.loop_preheader80

polly.stmt.for.body3.i85:                         ; preds = %polly.loop_preheader80, %polly.stmt.for.body3.i85
  %polly.indvar82 = phi i64 [ 0, %polly.loop_preheader80 ], [ %polly.indvar_next83, %polly.stmt.for.body3.i85 ]
  %31 = add nuw nsw i64 %polly.indvar82, %29
  %32 = trunc i64 %31 to i32
  %33 = add i32 %32, %38
  %34 = urem i32 %33, 100
  %p_conv.i = sitofp i32 %34 to double
  %p_div.i = fdiv double %p_conv.i, 2.000000e+03
  %35 = shl i64 %31, 3
  %36 = add nuw nsw i64 %35, %39
  %scevgep86 = getelementptr i8, i8* %call.i, i64 %36
  %scevgep8687 = bitcast i8* %scevgep86 to double*
  store double %p_div.i, double* %scevgep8687, align 8, !alias.scope !14, !noalias !16
  %polly.indvar_next83 = add nuw nsw i64 %polly.indvar82, 1
  %exitcond213.not = icmp eq i64 %polly.indvar82, %30
  br i1 %exitcond213.not, label %polly.loop_exit81, label %polly.stmt.for.body3.i85

polly.loop_preheader80:                           ; preds = %polly.loop_preheader74, %polly.loop_exit81
  %polly.indvar76 = phi i64 [ 0, %polly.loop_preheader74 ], [ %polly.indvar_next77, %polly.loop_exit81 ]
  %37 = add nuw nsw i64 %polly.indvar76, %27
  %38 = trunc i64 %37 to i32
  %39 = mul nuw nsw i64 %37, 20800
  br label %polly.stmt.for.body3.i85

polly.loop_exit96:                                ; preds = %polly.loop_exit102
  %polly.indvar_next92 = add nuw nsw i64 %polly.indvar91, 1
  %indvars.iv.next221 = add nuw nsw i64 %indvars.iv220, 32
  %indvars.iv.next229 = add nsw i64 %indvars.iv228, -32
  %indvars.iv.next233 = add nuw nsw i64 %indvars.iv232, 1
  %exitcond235.not = icmp eq i64 %polly.indvar_next92, 63
  br i1 %exitcond235.not, label %polly.loop_preheader115, label %polly.loop_preheader95

polly.loop_exit102:                               ; preds = %polly.loop_exit108
  %polly.indvar_next98 = add nuw nsw i64 %polly.indvar97, 1
  %indvars.iv.next223 = add nsw i64 %indvars.iv222, -32
  %exitcond234.not = icmp eq i64 %polly.indvar_next98, %indvars.iv232
  br i1 %exitcond234.not, label %polly.loop_exit96, label %polly.loop_preheader101

polly.loop_preheader95:                           ; preds = %polly.loop_exit69, %polly.loop_exit96
  %indvars.iv232 = phi i64 [ %indvars.iv.next233, %polly.loop_exit96 ], [ 1, %polly.loop_exit69 ]
  %indvars.iv228 = phi i64 [ %indvars.iv.next229, %polly.loop_exit96 ], [ 0, %polly.loop_exit69 ]
  %indvars.iv220 = phi i64 [ %indvars.iv.next221, %polly.loop_exit96 ], [ 0, %polly.loop_exit69 ]
  %polly.indvar91 = phi i64 [ %polly.indvar_next92, %polly.loop_exit96 ], [ 0, %polly.loop_exit69 ]
  %smin230 = call i64 @llvm.smin.i64(i64 %indvars.iv228, i64 -1968)
  %40 = shl nsw i64 %polly.indvar91, 5
  %41 = add nsw i64 %smin230, 1999
  br label %polly.loop_preheader101

polly.loop_exit108:                               ; preds = %polly.stmt.for.body26.i, %polly.loop_if
  %polly.indvar_next104 = add nuw nsw i64 %polly.indvar103, 1
  %indvars.iv.next225 = add nsw i64 %indvars.iv224, 1
  %exitcond231.not = icmp eq i64 %polly.indvar103, %41
  br i1 %exitcond231.not, label %polly.loop_exit102, label %polly.loop_if

polly.loop_preheader101:                          ; preds = %polly.loop_preheader95, %polly.loop_exit102
  %indvars.iv222 = phi i64 [ %indvars.iv220, %polly.loop_preheader95 ], [ %indvars.iv.next223, %polly.loop_exit102 ]
  %polly.indvar97 = phi i64 [ 0, %polly.loop_preheader95 ], [ %polly.indvar_next98, %polly.loop_exit102 ]
  %42 = shl nsw i64 %polly.indvar97, 5
  %43 = sub nsw i64 %40, %42
  br label %polly.loop_if

polly.loop_if:                                    ; preds = %polly.loop_preheader101, %polly.loop_exit108
  %indvars.iv224 = phi i64 [ %indvars.iv222, %polly.loop_preheader101 ], [ %indvars.iv.next225, %polly.loop_exit108 ]
  %polly.indvar103 = phi i64 [ 0, %polly.loop_preheader101 ], [ %polly.indvar_next104, %polly.loop_exit108 ]
  %smin226 = call i64 @llvm.smin.i64(i64 %indvars.iv224, i64 31)
  %44 = add nsw i64 %polly.indvar103, %43
  %polly.loop_guard255 = icmp sgt i64 %44, -1
  br i1 %polly.loop_guard255, label %polly.stmt.for.body26.i.preheader, label %polly.loop_exit108

polly.stmt.for.body26.i.preheader:                ; preds = %polly.loop_if
  %45 = add nuw nsw i64 %polly.indvar103, %40
  %46 = trunc i64 %45 to i32
  %47 = mul nuw nsw i64 %45, 16000
  br label %polly.stmt.for.body26.i

polly.stmt.for.body26.i:                          ; preds = %polly.stmt.for.body26.i.preheader, %polly.stmt.for.body26.i
  %polly.indvar109 = phi i64 [ %polly.indvar_next110, %polly.stmt.for.body26.i ], [ 0, %polly.stmt.for.body26.i.preheader ]
  %48 = add nuw nsw i64 %polly.indvar109, %42
  %49 = trunc i64 %48 to i32
  %50 = add i32 %49, %46
  %51 = urem i32 %50, 100
  %p_conv29.i = sitofp i32 %51 to double
  %p_div31.i = fdiv double %p_conv29.i, 2.000000e+03
  %52 = shl i64 %48, 3
  %53 = add nuw nsw i64 %52, %47
  %scevgep112 = getelementptr i8, i8* %call.i26, i64 %53
  %scevgep112113 = bitcast i8* %scevgep112 to double*
  store double %p_div31.i, double* %scevgep112113, align 8, !alias.scope !15, !noalias !17
  %polly.indvar_next110 = add nuw nsw i64 %polly.indvar109, 1
  %exitcond227.not = icmp eq i64 %polly.indvar109, %smin226
  br i1 %exitcond227.not, label %polly.loop_exit108, label %polly.stmt.for.body26.i

polly.loop_exit122:                               ; preds = %polly.loop_exit129
  %polly.indvar_next118 = add nuw nsw i64 %polly.indvar117, 1
  %indvars.iv.next237 = add nsw i64 %indvars.iv236, -32
  %indvars.iv.next248 = add nsw i64 %indvars.iv247, -1
  %exitcond250.not = icmp eq i64 %polly.indvar_next118, 63
  br i1 %exitcond250.not, label %polly.loop_preheader150, label %polly.loop_preheader121

polly.loop_preheader115:                          ; preds = %polly.loop_exit96
  %scevgep142 = getelementptr i8, i8* %call.i26, i64 8
  br label %polly.loop_preheader121

polly.loop_exit129:                               ; preds = %polly.loop_exit137, %polly.loop_if126
  %polly.indvar_next124 = add nuw nsw i64 %polly.indvar123, 1
  %indvars.iv.next239 = add nsw i64 %indvars.iv238, -32
  %exitcond249.not = icmp eq i64 %polly.indvar_next124, %indvars.iv247
  br i1 %exitcond249.not, label %polly.loop_exit122, label %polly.loop_if126

polly.loop_preheader121:                          ; preds = %polly.loop_preheader115, %polly.loop_exit122
  %indvars.iv247 = phi i64 [ 63, %polly.loop_preheader115 ], [ %indvars.iv.next248, %polly.loop_exit122 ]
  %indvars.iv236 = phi i64 [ 0, %polly.loop_preheader115 ], [ %indvars.iv.next237, %polly.loop_exit122 ]
  %polly.indvar117 = phi i64 [ 0, %polly.loop_preheader115 ], [ %polly.indvar_next118, %polly.loop_exit122 ]
  %54 = mul nsw i64 %polly.indvar117, -32
  %55 = shl nsw i64 %polly.indvar117, 5
  br label %polly.loop_if126

polly.loop_if126:                                 ; preds = %polly.loop_preheader121, %polly.loop_exit129
  %indvars.iv238 = phi i64 [ %indvars.iv236, %polly.loop_preheader121 ], [ %indvars.iv.next239, %polly.loop_exit129 ]
  %polly.indvar123 = phi i64 [ 0, %polly.loop_preheader121 ], [ %polly.indvar_next124, %polly.loop_exit129 ]
  %56 = add nuw i64 %polly.indvar117, %polly.indvar123
  %57 = mul i64 %56, -32
  %58 = add nuw i64 %polly.indvar117, %polly.indvar123
  %59 = mul i64 %58, -32
  %smin244 = call i64 @llvm.smin.i64(i64 %indvars.iv238, i64 -1967)
  %60 = add nsw i64 %smin244, 1998
  %smax245 = call i64 @llvm.smax.i64(i64 %60, i64 0)
  %61 = shl nsw i64 %polly.indvar123, 5
  %62 = sub nsw i64 %54, %61
  %polly.loop_guard130256 = icmp sgt i64 %62, -1999
  br i1 %polly.loop_guard130256, label %polly.loop_if134, label %polly.loop_exit129

polly.loop_exit137:                               ; preds = %polly.stmt.for.body43.i, %middle.block, %polly.loop_if134
  %polly.indvar_next132 = add nuw nsw i64 %polly.indvar131, 1
  %indvars.iv.next241 = add nsw i64 %indvars.iv240, -1
  %exitcond246.not = icmp eq i64 %polly.indvar131, %smax245
  br i1 %exitcond246.not, label %polly.loop_exit129, label %polly.loop_if134

polly.loop_if134:                                 ; preds = %polly.loop_if126, %polly.loop_exit137
  %indvars.iv240 = phi i64 [ %indvars.iv.next241, %polly.loop_exit137 ], [ %indvars.iv238, %polly.loop_if126 ]
  %polly.indvar131 = phi i64 [ %polly.indvar_next132, %polly.loop_exit137 ], [ 0, %polly.loop_if126 ]
  %63 = sub i64 %57, %polly.indvar131
  %smin274 = call i64 @llvm.smin.i64(i64 %63, i64 -1967)
  %64 = add nsw i64 %smin274, 1998
  %smax275 = call i64 @llvm.smax.i64(i64 %64, i64 0)
  %65 = add nuw nsw i64 %smax275, 1
  %66 = and i64 %65, 9223372036854775806
  %67 = add nsw i64 %66, -2
  %68 = lshr exact i64 %67, 1
  %69 = add nuw i64 %68, 1
  %70 = sub i64 %59, %polly.indvar131
  %smin258 = call i64 @llvm.smin.i64(i64 %70, i64 -1967)
  %71 = add nsw i64 %smin258, 1998
  %smax259 = call i64 @llvm.smax.i64(i64 %71, i64 0)
  %72 = add nuw nsw i64 %smax259, 1
  %smin242 = call i64 @llvm.smin.i64(i64 %indvars.iv240, i64 -1967)
  %73 = add nsw i64 %smin242, 1998
  %smax = call i64 @llvm.smax.i64(i64 %73, i64 0)
  %74 = sub nsw i64 %62, %polly.indvar131
  %polly.loop_guard138257 = icmp sgt i64 %74, -1999
  br i1 %polly.loop_guard138257, label %polly.stmt.for.body43.i.preheader, label %polly.loop_exit137

polly.stmt.for.body43.i.preheader:                ; preds = %polly.loop_if134
  %75 = add nuw nsw i64 %polly.indvar131, %55
  %76 = mul nuw nsw i64 %75, 16008
  %min.iters.check = icmp ult i64 %smin258, -1997
  br i1 %min.iters.check, label %polly.stmt.for.body43.i.preheader273, label %vector.ph

vector.ph:                                        ; preds = %polly.stmt.for.body43.i.preheader
  %n.vec = and i64 %72, 9223372036854775806
  %xtraiter = and i64 %69, 3
  %77 = icmp ult i64 %67, 6
  br i1 %77, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter = and i64 %69, -4
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.3, %vector.body ]
  %niter = phi i64 [ %unroll_iter, %vector.ph.new ], [ %niter.nsub.3, %vector.body ]
  %78 = add nuw nsw i64 %index, %61
  %79 = shl i64 %78, 3
  %80 = add nuw nsw i64 %79, %76
  %81 = getelementptr i8, i8* %scevgep142, i64 %80
  %82 = bitcast i8* %81 to <2 x double>*
  store <2 x double> <double -9.990000e+02, double -9.990000e+02>, <2 x double>* %82, align 8, !alias.scope !15, !noalias !17
  %index.next = or i64 %index, 2
  %83 = add nuw nsw i64 %index.next, %61
  %84 = shl i64 %83, 3
  %85 = add nuw nsw i64 %84, %76
  %86 = getelementptr i8, i8* %scevgep142, i64 %85
  %87 = bitcast i8* %86 to <2 x double>*
  store <2 x double> <double -9.990000e+02, double -9.990000e+02>, <2 x double>* %87, align 8, !alias.scope !15, !noalias !17
  %index.next.1 = or i64 %index, 4
  %88 = add nuw nsw i64 %index.next.1, %61
  %89 = shl i64 %88, 3
  %90 = add nuw nsw i64 %89, %76
  %91 = getelementptr i8, i8* %scevgep142, i64 %90
  %92 = bitcast i8* %91 to <2 x double>*
  store <2 x double> <double -9.990000e+02, double -9.990000e+02>, <2 x double>* %92, align 8, !alias.scope !15, !noalias !17
  %index.next.2 = or i64 %index, 6
  %93 = add nuw nsw i64 %index.next.2, %61
  %94 = shl i64 %93, 3
  %95 = add nuw nsw i64 %94, %76
  %96 = getelementptr i8, i8* %scevgep142, i64 %95
  %97 = bitcast i8* %96 to <2 x double>*
  store <2 x double> <double -9.990000e+02, double -9.990000e+02>, <2 x double>* %97, align 8, !alias.scope !15, !noalias !17
  %index.next.3 = add i64 %index, 8
  %niter.nsub.3 = add i64 %niter, -4
  %niter.ncmp.3 = icmp eq i64 %niter.nsub.3, 0
  br i1 %niter.ncmp.3, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !18

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.3, %vector.body ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %index.epil = phi i64 [ %index.next.epil, %vector.body.epil ], [ %index.unr, %middle.block.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.sub, %vector.body.epil ], [ %xtraiter, %middle.block.unr-lcssa ]
  %98 = add nuw nsw i64 %index.epil, %61
  %99 = shl i64 %98, 3
  %100 = add nuw nsw i64 %99, %76
  %101 = getelementptr i8, i8* %scevgep142, i64 %100
  %102 = bitcast i8* %101 to <2 x double>*
  store <2 x double> <double -9.990000e+02, double -9.990000e+02>, <2 x double>* %102, align 8, !alias.scope !15, !noalias !17
  %index.next.epil = add i64 %index.epil, 2
  %epil.iter.sub = add i64 %epil.iter, -1
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.sub, 0
  br i1 %epil.iter.cmp.not, label %middle.block, label %vector.body.epil, !llvm.loop !20

middle.block:                                     ; preds = %vector.body.epil, %middle.block.unr-lcssa
  %cmp.n = icmp eq i64 %72, %n.vec
  br i1 %cmp.n, label %polly.loop_exit137, label %polly.stmt.for.body43.i.preheader273

polly.stmt.for.body43.i.preheader273:             ; preds = %polly.stmt.for.body43.i.preheader, %middle.block
  %polly.indvar139.ph = phi i64 [ 0, %polly.stmt.for.body43.i.preheader ], [ %n.vec, %middle.block ]
  br label %polly.stmt.for.body43.i

polly.stmt.for.body43.i:                          ; preds = %polly.stmt.for.body43.i.preheader273, %polly.stmt.for.body43.i
  %polly.indvar139 = phi i64 [ %polly.indvar_next140, %polly.stmt.for.body43.i ], [ %polly.indvar139.ph, %polly.stmt.for.body43.i.preheader273 ]
  %103 = add nuw nsw i64 %polly.indvar139, %61
  %104 = shl i64 %103, 3
  %105 = add nuw nsw i64 %104, %76
  %scevgep143 = getelementptr i8, i8* %scevgep142, i64 %105
  %scevgep143144 = bitcast i8* %scevgep143 to double*
  store double -9.990000e+02, double* %scevgep143144, align 8, !alias.scope !15, !noalias !17
  %polly.indvar_next140 = add nuw nsw i64 %polly.indvar139, 1
  %exitcond243.not = icmp eq i64 %polly.indvar139, %smax
  br i1 %exitcond243.not, label %polly.loop_exit137, label %polly.stmt.for.body43.i, !llvm.loop !22

polly.loop_preheader150:                          ; preds = %polly.loop_exit122
  tail call void (...) @polybench_timer_start() #7
  %polly.access.cast.arraydecay3.merge = getelementptr [2000 x double], [2000 x double]* %call.i2660, i64 0, i64 0
  %_p_scalar_ = load double, double* %polly.access.cast.arraydecay3.merge, align 8, !alias.scope !24, !noalias !26
  %broadcast.splatinsert = insertelement <2 x double> poison, double %_p_scalar_, i32 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert271 = insertelement <2 x double> poison, double %_p_scalar_, i32 0
  %broadcast.splat272 = shufflevector <2 x double> %broadcast.splatinsert271, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body262

vector.body262:                                   ; preds = %vector.body262, %polly.loop_preheader150
  %index264 = phi i64 [ 0, %polly.loop_preheader150 ], [ %index.next265, %vector.body262 ]
  %106 = shl nuw nsw i64 %index264, 3
  %107 = getelementptr i8, i8* %call.i, i64 %106
  %108 = bitcast i8* %107 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %108, align 8, !alias.scope !27, !noalias !29
  %109 = getelementptr i8, i8* %107, i64 16
  %110 = bitcast i8* %109 to <2 x double>*
  %wide.load268 = load <2 x double>, <2 x double>* %110, align 8, !alias.scope !27, !noalias !29
  %111 = fmul <2 x double> %wide.load, <double 1.200000e+00, double 1.200000e+00>
  %112 = fmul <2 x double> %wide.load268, <double 1.200000e+00, double 1.200000e+00>
  %113 = getelementptr i8, i8* %call.i27, i64 %106
  %114 = bitcast i8* %113 to <2 x double>*
  %wide.load269 = load <2 x double>, <2 x double>* %114, align 8, !alias.scope !28, !noalias !30
  %115 = getelementptr i8, i8* %113, i64 16
  %116 = bitcast i8* %115 to <2 x double>*
  %wide.load270 = load <2 x double>, <2 x double>* %116, align 8, !alias.scope !28, !noalias !30
  %117 = fmul <2 x double> %wide.load269, <double 1.500000e+00, double 1.500000e+00>
  %118 = fmul <2 x double> %wide.load270, <double 1.500000e+00, double 1.500000e+00>
  %119 = fmul <2 x double> %broadcast.splat, %117
  %120 = fmul <2 x double> %broadcast.splat272, %118
  %121 = fadd <2 x double> %111, %119
  %122 = fadd <2 x double> %112, %120
  %123 = fadd <2 x double> %121, zeroinitializer
  %124 = fadd <2 x double> %122, zeroinitializer
  %125 = bitcast i8* %107 to <2 x double>*
  store <2 x double> %123, <2 x double>* %125, align 8, !alias.scope !27, !noalias !29
  %126 = bitcast i8* %109 to <2 x double>*
  store <2 x double> %124, <2 x double>* %126, align 8, !alias.scope !27, !noalias !29
  %index.next265 = add i64 %index264, 4
  %127 = icmp eq i64 %index.next265, 2600
  br i1 %127, label %middle.block260, label %vector.body262, !llvm.loop !31

middle.block260:                                  ; preds = %vector.body262
  %polly.access.cast.call.i27 = bitcast i8* %call.i27 to double*
  br label %polly.loop_preheader168

polly.loop_exit169:                               ; preds = %polly.stmt.for.cond4.for.end_crit_edge.us.i
  %polly.indvar_next165 = add nuw nsw i64 %polly.indvar164, 1
  %exitcond254.not = icmp eq i64 %polly.indvar_next165, 2000
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond254.not, label %kernel_symm.exit, label %polly.loop_preheader168

polly.stmt.for.cond4.for.end_crit_edge.us.i.unr-lcssa: ; preds = %polly.stmt.for.body6.us.i, %polly.loop_preheader174
  %p_add27.us.i.lcssa.ph = phi double [ undef, %polly.loop_preheader174 ], [ %p_add27.us.i.1, %polly.stmt.for.body6.us.i ]
  %temp2.03.us.i.phiops.0.unr = phi double [ 0.000000e+00, %polly.loop_preheader174 ], [ %p_add27.us.i.1, %polly.stmt.for.body6.us.i ]
  %polly.indvar176.unr = phi i64 [ 0, %polly.loop_preheader174 ], [ %polly.indvar_next177.1, %polly.stmt.for.body6.us.i ]
  br i1 %lcmp.mod277.not, label %polly.stmt.for.cond4.for.end_crit_edge.us.i, label %polly.stmt.for.body6.us.i.epil

polly.stmt.for.body6.us.i.epil:                   ; preds = %polly.stmt.for.cond4.for.end_crit_edge.us.i.unr-lcssa
  %scevgep181.epil = getelementptr [2000 x double], [2000 x double]* %call.i2660, i64 %polly.indvar164, i64 %polly.indvar176.unr
  %_p_scalar_182.epil = load double, double* %scevgep181.epil, align 8, !alias.scope !24, !noalias !26
  %p_mul13.us.i.epil = fmul double %p_mul.us.i, %_p_scalar_182.epil
  %128 = mul nuw nsw i64 %polly.indvar176.unr, 20800
  %scevgep184.epil = getelementptr i8, i8* %scevgep183, i64 %128
  %scevgep184185.epil = bitcast i8* %scevgep184.epil to double*
  %_p_scalar_186.epil = load double, double* %scevgep184185.epil, align 8, !alias.scope !27, !noalias !29
  %p_add.us.i.epil = fadd double %_p_scalar_186.epil, %p_mul13.us.i.epil
  store double %p_add.us.i.epil, double* %scevgep184185.epil, align 8, !alias.scope !27, !noalias !29
  %scevgep188.epil = getelementptr i8, i8* %scevgep187, i64 %128
  %scevgep188189.epil = bitcast i8* %scevgep188.epil to double*
  %_p_scalar_190.epil = load double, double* %scevgep188189.epil, align 8, !alias.scope !28, !noalias !30
  %p_mul26.us.i.epil = fmul double %_p_scalar_182.epil, %_p_scalar_190.epil
  %p_add27.us.i.epil = fadd double %temp2.03.us.i.phiops.0.unr, %p_mul26.us.i.epil
  br label %polly.stmt.for.cond4.for.end_crit_edge.us.i

polly.stmt.for.cond4.for.end_crit_edge.us.i:      ; preds = %polly.stmt.for.cond4.for.end_crit_edge.us.i.unr-lcssa, %polly.stmt.for.body6.us.i.epil
  %p_add27.us.i.lcssa = phi double [ %p_add27.us.i.lcssa.ph, %polly.stmt.for.cond4.for.end_crit_edge.us.i.unr-lcssa ], [ %p_add27.us.i.epil, %polly.stmt.for.body6.us.i.epil ]
  %scevgep201 = getelementptr i8, i8* %scevgep200, i64 %134
  %scevgep201202 = bitcast i8* %scevgep201 to double*
  %_p_scalar_203 = load double, double* %scevgep201202, align 8, !alias.scope !27, !noalias !29
  %p_mul32.us.i = fmul double %_p_scalar_203, 1.200000e+00
  %p_mul42.us.i = fmul double %p_mul.us.i, %_p_scalar_193
  %p_add43.us.i = fadd double %p_mul42.us.i, %p_mul32.us.i
  %p_mul44.us.i = fmul double %p_add27.us.i.lcssa, 1.500000e+00
  %p_add45.us.i = fadd double %p_mul44.us.i, %p_add43.us.i
  store double %p_add45.us.i, double* %scevgep201202, align 8, !alias.scope !27, !noalias !29
  %polly.indvar_next171 = add nuw nsw i64 %polly.indvar170, 1
  %exitcond253.not = icmp eq i64 %polly.indvar_next171, 2600
  br i1 %exitcond253.not, label %polly.loop_exit169, label %polly.loop_preheader174

polly.loop_preheader168:                          ; preds = %middle.block260, %polly.loop_exit169
  %indvar = phi i64 [ 0, %middle.block260 ], [ %indvar.next, %polly.loop_exit169 ]
  %polly.indvar164 = phi i64 [ 1, %middle.block260 ], [ %polly.indvar_next165, %polly.loop_exit169 ]
  %129 = add i64 %indvar, 1
  %130 = mul nuw nsw i64 %polly.indvar164, 20800
  %scevgep200 = getelementptr i8, i8* %call.i, i64 %130
  %polly.access.add.arraydecay3.merge = mul nuw nsw i64 %polly.indvar164, 2001
  %polly.access.arraydecay3.merge192 = getelementptr [2000 x double], [2000 x double]* %call.i2660, i64 0, i64 %polly.access.add.arraydecay3.merge
  %polly.access.mul.call.i27 = mul nuw nsw i64 %polly.indvar164, 2600
  %_p_scalar_193 = load double, double* %polly.access.arraydecay3.merge192, align 8, !alias.scope !24, !noalias !26
  %xtraiter276 = and i64 %129, 1
  %131 = icmp eq i64 %indvar, 0
  %unroll_iter278 = and i64 %129, -2
  %lcmp.mod277.not = icmp eq i64 %xtraiter276, 0
  br label %polly.loop_preheader174

polly.stmt.for.body6.us.i:                        ; preds = %polly.loop_preheader174, %polly.stmt.for.body6.us.i
  %temp2.03.us.i.phiops.0 = phi double [ %p_add27.us.i.1, %polly.stmt.for.body6.us.i ], [ 0.000000e+00, %polly.loop_preheader174 ]
  %polly.indvar176 = phi i64 [ %polly.indvar_next177.1, %polly.stmt.for.body6.us.i ], [ 0, %polly.loop_preheader174 ]
  %niter279 = phi i64 [ %niter279.nsub.1, %polly.stmt.for.body6.us.i ], [ %unroll_iter278, %polly.loop_preheader174 ]
  %scevgep181 = getelementptr [2000 x double], [2000 x double]* %call.i2660, i64 %polly.indvar164, i64 %polly.indvar176
  %_p_scalar_182 = load double, double* %scevgep181, align 8, !alias.scope !24, !noalias !26
  %p_mul13.us.i = fmul double %p_mul.us.i, %_p_scalar_182
  %132 = mul nuw nsw i64 %polly.indvar176, 20800
  %scevgep184 = getelementptr i8, i8* %scevgep183, i64 %132
  %scevgep184185 = bitcast i8* %scevgep184 to double*
  %_p_scalar_186 = load double, double* %scevgep184185, align 8, !alias.scope !27, !noalias !29
  %p_add.us.i = fadd double %_p_scalar_186, %p_mul13.us.i
  store double %p_add.us.i, double* %scevgep184185, align 8, !alias.scope !27, !noalias !29
  %scevgep188 = getelementptr i8, i8* %scevgep187, i64 %132
  %scevgep188189 = bitcast i8* %scevgep188 to double*
  %_p_scalar_190 = load double, double* %scevgep188189, align 8, !alias.scope !28, !noalias !30
  %p_mul26.us.i = fmul double %_p_scalar_182, %_p_scalar_190
  %p_add27.us.i = fadd double %temp2.03.us.i.phiops.0, %p_mul26.us.i
  %polly.indvar_next177 = or i64 %polly.indvar176, 1
  %scevgep181.1 = getelementptr [2000 x double], [2000 x double]* %call.i2660, i64 %polly.indvar164, i64 %polly.indvar_next177
  %_p_scalar_182.1 = load double, double* %scevgep181.1, align 8, !alias.scope !24, !noalias !26
  %p_mul13.us.i.1 = fmul double %p_mul.us.i, %_p_scalar_182.1
  %133 = mul nuw nsw i64 %polly.indvar_next177, 20800
  %scevgep184.1 = getelementptr i8, i8* %scevgep183, i64 %133
  %scevgep184185.1 = bitcast i8* %scevgep184.1 to double*
  %_p_scalar_186.1 = load double, double* %scevgep184185.1, align 8, !alias.scope !27, !noalias !29
  %p_add.us.i.1 = fadd double %_p_scalar_186.1, %p_mul13.us.i.1
  store double %p_add.us.i.1, double* %scevgep184185.1, align 8, !alias.scope !27, !noalias !29
  %scevgep188.1 = getelementptr i8, i8* %scevgep187, i64 %133
  %scevgep188189.1 = bitcast i8* %scevgep188.1 to double*
  %_p_scalar_190.1 = load double, double* %scevgep188189.1, align 8, !alias.scope !28, !noalias !30
  %p_mul26.us.i.1 = fmul double %_p_scalar_182.1, %_p_scalar_190.1
  %p_add27.us.i.1 = fadd double %p_add27.us.i, %p_mul26.us.i.1
  %polly.indvar_next177.1 = add nuw nsw i64 %polly.indvar176, 2
  %niter279.nsub.1 = add i64 %niter279, -2
  %niter279.ncmp.1 = icmp eq i64 %niter279.nsub.1, 0
  br i1 %niter279.ncmp.1, label %polly.stmt.for.cond4.for.end_crit_edge.us.i.unr-lcssa, label %polly.stmt.for.body6.us.i

polly.loop_preheader174:                          ; preds = %polly.stmt.for.cond4.for.end_crit_edge.us.i, %polly.loop_preheader168
  %polly.indvar170 = phi i64 [ 0, %polly.loop_preheader168 ], [ %polly.indvar_next171, %polly.stmt.for.cond4.for.end_crit_edge.us.i ]
  %134 = shl nuw nsw i64 %polly.indvar170, 3
  %scevgep183 = getelementptr i8, i8* %call.i, i64 %134
  %scevgep187 = getelementptr i8, i8* %call.i27, i64 %134
  %polly.access.add.call.i27 = add nuw nsw i64 %polly.indvar170, %polly.access.mul.call.i27
  %polly.access.call.i27 = getelementptr double, double* %polly.access.cast.call.i27, i64 %polly.access.add.call.i27
  %_p_scalar_179 = load double, double* %polly.access.call.i27, align 8, !alias.scope !28, !noalias !30
  %p_mul.us.i = fmul double %_p_scalar_179, 1.500000e+00
  br i1 %131, label %polly.stmt.for.cond4.for.end_crit_edge.us.i.unr-lcssa, label %polly.stmt.for.body6.us.i
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

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #6

attributes #0 = { nounwind uwtable "frame-pointer"="none" "no-trapping-math"="true" "polly-optimized" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inaccessiblemem_or_argmemonly nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inaccessiblememonly nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 13.0.0 (https://github.com/wsmoses/MLIR-GPU.git 19da7eee184e4d715d9870fe866ac10858e874d1)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"double", !4, i64 0}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !12, !"polly.alias.scope.MemRef1"}
!12 = distinct !{!12, !"polly.alias.scope.domain"}
!13 = !{!14, !15}
!14 = distinct !{!14, !12, !"polly.alias.scope.MemRef0"}
!15 = distinct !{!15, !12, !"polly.alias.scope.MemRef3"}
!16 = !{!11, !15}
!17 = !{!14, !11}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.isvectorized", i32 1}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.unroll.disable"}
!22 = distinct !{!22, !23, !19}
!23 = !{!"llvm.loop.unroll.runtime.disable"}
!24 = distinct !{!24, !25, !"polly.alias.scope.MemRef0"}
!25 = distinct !{!25, !"polly.alias.scope.domain"}
!26 = !{!27, !28}
!27 = distinct !{!27, !25, !"polly.alias.scope.MemRef2"}
!28 = distinct !{!28, !25, !"polly.alias.scope.MemRef3"}
!29 = !{!24, !28}
!30 = !{!24, !27}
!31 = distinct !{!31, !19}

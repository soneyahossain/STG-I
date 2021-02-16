; ModuleID = 'PUT1.bc'
source_filename = "classify.cpp"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [8 x i8] c"uniform\00", align 1
@uniform = local_unnamed_addr global i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: norecurse nounwind readnone ssp uwtable
define i32 @_Z8classifyiii(i32 %a, i32 %b, i32 %c) local_unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %a, 1
  %cmp1 = icmp slt i32 %b, 1
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp slt i32 %c, 1
  %or.cond15 = or i1 %or.cond, %cmp3
  br i1 %or.cond15, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cmp4 = icmp eq i32 %a, %b
  %spec.select = zext i1 %cmp4 to i32
  %cmp7 = icmp eq i32 %a, %c
  %add9 = or i32 %spec.select, 2
  %type.1 = select i1 %cmp7, i32 %add9, i32 %spec.select
  %cmp11 = icmp eq i32 %b, %c
  %add13 = add nuw nsw i32 %type.1, 3
  %spec.select26 = select i1 %cmp11, i32 %add13, i32 %type.1
  br label %return

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %spec.select26, %if.end ], [ 4, %entry ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse ssp uwtable
define i32 @main() local_unnamed_addr #2 {
entry:
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %0 = bitcast i32* %a to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #5
  store i32 38, i32* %a, align 4, !tbaa !4
  %1 = bitcast i32* %b to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #5
  store i32 38, i32* %b, align 4, !tbaa !4
  %2 = bitcast i32* %c to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #5
  store i32 38, i32* %c, align 4, !tbaa !4
  tail call void @stg_begin_test()
  %3 = load i8*, i8** @uniform, align 8, !tbaa !8
  call void @stg_symbolic_variable_int(i32* nonnull %a, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), double -2.000000e+01, double 2.000000e+01, i8* %3, double 0.000000e+00, double 0.000000e+00)
  %4 = load i8*, i8** @uniform, align 8, !tbaa !8
  call void @stg_symbolic_variable_int(i32* nonnull %b, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), double -2.000000e+01, double 2.000000e+01, i8* %4, double 0.000000e+00, double 0.000000e+00)
  %5 = load i8*, i8** @uniform, align 8, !tbaa !8
  call void @stg_symbolic_variable_int(i32* nonnull %c, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), double -2.000000e+01, double 2.000000e+01, i8* %5, double 0.000000e+00, double 0.000000e+00)
  %6 = load i32, i32* %a, align 4, !tbaa !4
  %7 = load i32, i32* %b, align 4, !tbaa !4
  %8 = load i32, i32* %c, align 4, !tbaa !4
  %call = call i32 @_Z8classifyiii(i32 %6, i32 %7, i32 %8)
  call void @stg_end_test()
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %call)
  %cmp = icmp sgt i32 %call, 2
  call void @stg_record_test(i1 zeroext %cmp)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #5
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #5
  ret i32 0
}

declare void @stg_begin_test() local_unnamed_addr #3

declare void @stg_symbolic_variable_int(i32*, i8*, double, double, i8*, double, double) local_unnamed_addr #3

declare void @stg_end_test() local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #4

declare void @stg_record_test(i1 zeroext) local_unnamed_addr #3

; Function Attrs: norecurse nounwind readnone ssp uwtable
define i32 @_Z12classify_optiii(i32 %a, i32 %b, i32 %c) local_unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %a, 1
  %cmp1 = icmp slt i32 %b, 1
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp slt i32 %c, 1
  %or.cond12 = or i1 %or.cond, %cmp3
  br i1 %or.cond12, label %return, label %if.end

if.end:                                           ; preds = %entry
  %cmp4 = icmp eq i32 %a, %b
  %conv = zext i1 %cmp4 to i32
  %cmp5 = icmp eq i32 %a, %c
  %add = select i1 %cmp4, i32 3, i32 2
  %spec.select = select i1 %cmp5, i32 %add, i32 %conv
  %cmp8 = icmp eq i32 %b, %c
  %add10 = add nuw nsw i32 %spec.select, 3
  %type.1 = select i1 %cmp8, i32 %add10, i32 %spec.select
  br label %return

return:                                           ; preds = %if.end, %entry
  %retval.0 = phi i32 [ 4, %entry ], [ %type.1, %if.end ]
  ret i32 %retval.0
}

attributes #0 = { norecurse nounwind readnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { norecurse ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 14]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}

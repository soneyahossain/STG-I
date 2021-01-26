; ModuleID = 'PUT2.bc'
source_filename = "simpler_geofence.cpp"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [8 x i8] c"uniform\00", align 1
@uniform = local_unnamed_addr global i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"LAT\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"LON\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ALT\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"INC\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"HLAT\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"LLAT\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"HLON\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"LLON\00", align 1

; Function Attrs: norecurse nounwind readnone ssp uwtable
define zeroext i1 @_Z11insideFenceiibiiii(i32 %lat, i32 %lon, i1 zeroext %inclusion, i32 %high_lat, i32 %low_lat, i32 %high_lon, i32 %low_lon) local_unnamed_addr #0 {
entry:
  %cmp = icmp sgt i32 %lon, %low_lon
  %cmp1 = icmp slt i32 %lon, %high_lon
  %or.cond = and i1 %cmp1, %cmp
  %cmp2 = icmp slt i32 %lat, %high_lat
  %or.cond16 = and i1 %cmp2, %or.cond
  %cmp4 = icmp sgt i32 %lat, %low_lat
  %or.cond17 = and i1 %cmp4, %or.cond16
  %not.inclusion = xor i1 %inclusion, true
  %inside.1.v = xor i1 %or.cond17, %not.inclusion
  ret i1 %inside.1.v
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind readnone ssp uwtable
define zeroext i1 @_Z13checkGeofenceiiibiiii(i32 %lat, i32 %lon, i32 %altitude, i1 zeroext %inclusion, i32 %high_lat, i32 %low_lat, i32 %high_lon, i32 %low_lon) local_unnamed_addr #0 {
entry:
  %cmp.i = icmp sgt i32 %lon, %low_lon
  %cmp1.i = icmp slt i32 %lon, %high_lon
  %or.cond.i = and i1 %cmp1.i, %cmp.i
  %cmp2.i = icmp slt i32 %lat, %high_lat
  %or.cond16.i = and i1 %cmp2.i, %or.cond.i
  %cmp4.i = icmp sgt i32 %lat, %low_lat
  %or.cond17.i = and i1 %cmp4.i, %or.cond16.i
  %not.inclusion.i = xor i1 %inclusion, true
  %inside.1.v.i = xor i1 %or.cond17.i, %not.inclusion.i
  ret i1 %inside.1.v.i
}

; Function Attrs: norecurse ssp uwtable
define i32 @main(i32 %argc, i8** nocapture readnone %argv) local_unnamed_addr #2 {
entry:
  %lat = alloca i32, align 4
  %lon = alloca i32, align 4
  %altitude = alloca i32, align 4
  %inclusion = alloca i32, align 4
  %high_lat = alloca i32, align 4
  %low_lat = alloca i32, align 4
  %high_lon = alloca i32, align 4
  %low_lon = alloca i32, align 4
  %0 = bitcast i32* %lat to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #4
  %1 = bitcast i32* %lon to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #4
  %2 = bitcast i32* %altitude to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #4
  %3 = bitcast i32* %inclusion to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #4
  %4 = bitcast i32* %high_lat to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %4) #4
  %5 = bitcast i32* %low_lat to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #4
  %6 = bitcast i32* %high_lon to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #4
  %7 = bitcast i32* %low_lon to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #4
  %8 = load i8*, i8** @uniform, align 8, !tbaa !4
  call void @stg_symbolic_variable(i8* nonnull %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), double -1.000000e+02, double 1.000000e+02, i8* %8, double 0.000000e+00, double 0.000000e+00)
  %9 = load i8*, i8** @uniform, align 8, !tbaa !4
  call void @stg_symbolic_variable(i8* nonnull %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), double -1.000000e+02, double 1.000000e+02, i8* %9, double 0.000000e+00, double 0.000000e+00)
  %10 = load i8*, i8** @uniform, align 8, !tbaa !4
  call void @stg_symbolic_variable(i8* nonnull %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), double 0.000000e+00, double 5.000000e+02, i8* %10, double 0.000000e+00, double 0.000000e+00)
  %11 = load i8*, i8** @uniform, align 8, !tbaa !4
  call void @stg_symbolic_variable(i8* nonnull %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), double 0.000000e+00, double 1.000000e+00, i8* %11, double 0.000000e+00, double 0.000000e+00)
  %12 = load i8*, i8** @uniform, align 8, !tbaa !4
  call void @stg_symbolic_variable(i8* nonnull %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), double -1.000000e+02, double 1.000000e+02, i8* %12, double 0.000000e+00, double 0.000000e+00)
  %13 = load i8*, i8** @uniform, align 8, !tbaa !4
  call void @stg_symbolic_variable(i8* nonnull %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), double -1.000000e+02, double 1.000000e+02, i8* %13, double 0.000000e+00, double 0.000000e+00)
  %14 = load i8*, i8** @uniform, align 8, !tbaa !4
  call void @stg_symbolic_variable(i8* nonnull %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), double -1.000000e+02, double 1.000000e+02, i8* %14, double 0.000000e+00, double 0.000000e+00)
  %15 = load i8*, i8** @uniform, align 8, !tbaa !4
  call void @stg_symbolic_variable(i8* nonnull %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), double -1.000000e+02, double 1.000000e+02, i8* %15, double 0.000000e+00, double 0.000000e+00)
  call void @stg_begin_test()
  call void @stg_input_int(i8* nonnull %0, i32 10)
  call void @stg_input_int(i8* nonnull %1, i32 30)
  call void @stg_input_int(i8* nonnull %2, i32 200)
  call void @stg_input_int(i8* nonnull %3, i32 0)
  call void @stg_input_int(i8* nonnull %4, i32 20)
  call void @stg_input_int(i8* nonnull %5, i32 5)
  call void @stg_input_int(i8* nonnull %6, i32 40)
  call void @stg_input_int(i8* nonnull %7, i32 20)
  %16 = load i32, i32* %lat, align 4, !tbaa !8
  %17 = load i32, i32* %lon, align 4, !tbaa !8
  %18 = load i32, i32* %high_lat, align 4, !tbaa !8
  %19 = load i32, i32* %low_lat, align 4, !tbaa !8
  %20 = load i32, i32* %high_lon, align 4, !tbaa !8
  %21 = load i32, i32* %low_lon, align 4, !tbaa !8
  %cmp.i.i = icmp sgt i32 %17, %21
  %cmp1.i.i = icmp slt i32 %17, %20
  %or.cond.i.i = and i1 %cmp1.i.i, %cmp.i.i
  %cmp2.i.i = icmp slt i32 %16, %18
  %or.cond16.i.i = and i1 %cmp2.i.i, %or.cond.i.i
  %cmp4.i.i = icmp sgt i32 %16, %19
  %or.cond17.i.i = and i1 %cmp4.i.i, %or.cond16.i.i
  %inside.1.v.i.i = xor i1 %or.cond17.i.i, true
  call void @stg_end_test()
  call void @stg_record_test(i1 zeroext %inside.1.v.i.i)
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %4) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #4
  ret i32 0
}

declare void @stg_symbolic_variable(i8*, i8*, double, double, i8*, double, double) local_unnamed_addr #3

declare void @stg_begin_test() local_unnamed_addr #3

declare void @stg_input_int(i8*, i32) local_unnamed_addr #3

declare void @stg_end_test() local_unnamed_addr #3

declare void @stg_record_test(i1 zeroext) local_unnamed_addr #3

attributes #0 = { norecurse nounwind readnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { norecurse ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 14]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}

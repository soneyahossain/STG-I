; ModuleID = 'PUT.bc'
source_filename = "simpler_geofence.cpp"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [3 x i8] c"S0\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"S1\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"S2\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"S3\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"S4\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"S5\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"S6\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @_Z11insideFenceiibiiii(i32 %lat, i32 %lon, i1 zeroext %inclusion, i32 %high_lat, i32 %low_lat, i32 %high_lon, i32 %low_lon) #0 {
entry:
  %lat.addr = alloca i32, align 4
  %lon.addr = alloca i32, align 4
  %inclusion.addr = alloca i8, align 1
  %high_lat.addr = alloca i32, align 4
  %low_lat.addr = alloca i32, align 4
  %high_lon.addr = alloca i32, align 4
  %low_lon.addr = alloca i32, align 4
  %inside = alloca i8, align 1
  store i32 %lat, i32* %lat.addr, align 4
  store i32 %lon, i32* %lon.addr, align 4
  %frombool = zext i1 %inclusion to i8
  store i8 %frombool, i8* %inclusion.addr, align 1
  store i32 %high_lat, i32* %high_lat.addr, align 4
  store i32 %low_lat, i32* %low_lat.addr, align 4
  store i32 %high_lon, i32* %high_lon.addr, align 4
  store i32 %low_lon, i32* %low_lon.addr, align 4
  store i8 0, i8* %inside, align 1
  %0 = load i32, i32* %lon.addr, align 4
  %1 = load i32, i32* %low_lon.addr, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %land.lhs.true, label %if.end6

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %lon.addr, align 4
  %3 = load i32, i32* %high_lon.addr, align 4
  %cmp1 = icmp slt i32 %2, %3
  br i1 %cmp1, label %if.then, label %if.end6

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32, i32* %lat.addr, align 4
  %5 = load i32, i32* %high_lat.addr, align 4
  %cmp2 = icmp slt i32 %4, %5
  br i1 %cmp2, label %land.lhs.true3, label %if.end

land.lhs.true3:                                   ; preds = %if.then
  %6 = load i32, i32* %lat.addr, align 4
  %7 = load i32, i32* %low_lat.addr, align 4
  %cmp4 = icmp sgt i32 %6, %7
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %land.lhs.true3
  store i8 1, i8* %inside, align 1
  br label %if.end

if.end:                                           ; preds = %if.then5, %land.lhs.true3, %if.then
  br label %if.end6

if.end6:                                          ; preds = %if.end, %land.lhs.true, %entry
  %8 = load i8, i8* %inclusion.addr, align 1
  %tobool = trunc i8 %8 to i1
  br i1 %tobool, label %if.end11, label %if.then7

if.then7:                                         ; preds = %if.end6
  %9 = load i8, i8* %inside, align 1
  %tobool8 = trunc i8 %9 to i1
  br i1 %tobool8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.then7
  store i8 0, i8* %inside, align 1
  br label %if.end10

if.else:                                          ; preds = %if.then7
  store i8 1, i8* %inside, align 1
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.end6
  %10 = load i8, i8* %inside, align 1
  %tobool12 = trunc i8 %10 to i1
  ret i1 %tobool12
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @_Z13checkGeofenceiiibiiii(i32 %lat, i32 %lon, i32 %altitude, i1 zeroext %inclusion, i32 %high_lat, i32 %low_lat, i32 %high_lon, i32 %low_lon) #0 {
entry:
  %lat.addr = alloca i32, align 4
  %lon.addr = alloca i32, align 4
  %altitude.addr = alloca i32, align 4
  %inclusion.addr = alloca i8, align 1
  %high_lat.addr = alloca i32, align 4
  %low_lat.addr = alloca i32, align 4
  %high_lon.addr = alloca i32, align 4
  %low_lon.addr = alloca i32, align 4
  %acceptable = alloca i8, align 1
  %max_vertical_altitude = alloca i32, align 4
  store i32 %lat, i32* %lat.addr, align 4
  store i32 %lon, i32* %lon.addr, align 4
  store i32 %altitude, i32* %altitude.addr, align 4
  %frombool = zext i1 %inclusion to i8
  store i8 %frombool, i8* %inclusion.addr, align 1
  store i32 %high_lat, i32* %high_lat.addr, align 4
  store i32 %low_lat, i32* %low_lat.addr, align 4
  store i32 %high_lon, i32* %high_lon.addr, align 4
  store i32 %low_lon, i32* %low_lon.addr, align 4
  store i8 1, i8* %acceptable, align 1
  store i32 400, i32* %max_vertical_altitude, align 4
  %0 = load i32, i32* %altitude.addr, align 4
  %1 = load i32, i32* %max_vertical_altitude, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 0, i8* %acceptable, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8, i8* %acceptable, align 1
  %tobool = trunc i8 %2 to i1
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %3 = load i32, i32* %lat.addr, align 4
  %4 = load i32, i32* %lon.addr, align 4
  %5 = load i8, i8* %inclusion.addr, align 1
  %tobool1 = trunc i8 %5 to i1
  %6 = load i32, i32* %high_lat.addr, align 4
  %7 = load i32, i32* %low_lat.addr, align 4
  %8 = load i32, i32* %high_lon.addr, align 4
  %9 = load i32, i32* %low_lon.addr, align 4
  %call = call zeroext i1 @_Z11insideFenceiibiiii(i32 %3, i32 %4, i1 zeroext %tobool1, i32 %6, i32 %7, i32 %8, i32 %9)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %10 = phi i1 [ false, %if.end ], [ %call, %land.rhs ]
  %frombool2 = zext i1 %10 to i8
  store i8 %frombool2, i8* %acceptable, align 1
  %11 = load i8, i8* %acceptable, align 1
  %tobool3 = trunc i8 %11 to i1
  ret i1 %tobool3
}

; Function Attrs: noinline norecurse optnone ssp uwtable
define i32 @main() #1 {
entry:
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %e = alloca i32, align 4
  %f = alloca i32, align 4
  %g = alloca i32, align 4
  %name = alloca i8, align 1
  %l = alloca i16, align 2
  store i8 99, i8* %name, align 1
  store i16 2, i16* %l, align 2
  call void @stg_begin_test()
  %0 = bitcast i32* %a to i8*
  call void @stg_symbolic_variable(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0))
  %1 = bitcast i32* %b to i8*
  call void @stg_symbolic_variable(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  %2 = bitcast i32* %c to i8*
  call void @stg_symbolic_variable(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  %3 = bitcast i32* %d to i8*
  call void @stg_symbolic_variable(i8* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  %4 = bitcast i32* %e to i8*
  call void @stg_symbolic_variable(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0))
  %5 = bitcast i32* %f to i8*
  call void @stg_symbolic_variable(i8* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0))
  %6 = bitcast i32* %g to i8*
  call void @stg_symbolic_variable(i8* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0))
  %7 = bitcast i32* %a to i8*
  call void @stg_input_int(i8* %7, i32 38)
  %8 = bitcast i32* %b to i8*
  call void @stg_input_int(i8* %8, i32 78)
  %9 = bitcast i32* %c to i8*
  call void @stg_input_int(i8* %9, i32 100)
  %10 = bitcast i32* %d to i8*
  call void @stg_input_int(i8* %10, i32 79)
  %11 = bitcast i32* %e to i8*
  call void @stg_input_int(i8* %11, i32 35)
  %12 = bitcast i32* %f to i8*
  call void @stg_input_int(i8* %12, i32 85)
  %13 = bitcast i32* %g to i8*
  call void @stg_input_int(i8* %13, i32 35)
  %14 = load i32, i32* %a, align 4
  %15 = load i32, i32* %b, align 4
  %16 = load i32, i32* %c, align 4
  %17 = load i32, i32* %d, align 4
  %18 = load i32, i32* %e, align 4
  %19 = load i32, i32* %f, align 4
  %20 = load i32, i32* %g, align 4
  %call = call zeroext i1 @_Z13checkGeofenceiiibiiii(i32 %14, i32 %15, i32 %16, i1 zeroext true, i32 %17, i32 %18, i32 %19, i32 %20)
  call void @stg_assert(i1 zeroext %call)
  call void @stg_end_test()
  call void @stg_begin_test()
  %21 = bitcast i32* %a to i8*
  call void @stg_input_int(i8* %21, i32 38)
  %22 = bitcast i32* %b to i8*
  call void @stg_input_int(i8* %22, i32 100)
  %23 = bitcast i32* %c to i8*
  call void @stg_input_int(i8* %23, i32 100)
  %24 = bitcast i32* %d to i8*
  call void @stg_input_int(i8* %24, i32 79)
  %25 = bitcast i32* %e to i8*
  call void @stg_input_int(i8* %25, i32 35)
  %26 = bitcast i32* %f to i8*
  call void @stg_input_int(i8* %26, i32 85)
  %27 = bitcast i32* %g to i8*
  call void @stg_input_int(i8* %27, i32 35)
  %28 = load i32, i32* %a, align 4
  %29 = load i32, i32* %b, align 4
  %30 = load i32, i32* %c, align 4
  %31 = load i32, i32* %d, align 4
  %32 = load i32, i32* %e, align 4
  %33 = load i32, i32* %f, align 4
  %34 = load i32, i32* %g, align 4
  %call1 = call zeroext i1 @_Z13checkGeofenceiiibiiii(i32 %28, i32 %29, i32 %30, i1 zeroext true, i32 %31, i32 %32, i32 %33, i32 %34)
  call void @stg_assert(i1 zeroext %call1)
  call void @stg_end_test()
  ret i32 0
}

declare void @stg_begin_test() #2

declare void @stg_symbolic_variable(i8*, i8*) #2

declare void @stg_input_int(i8*, i32) #2

declare void @stg_assert(i1 zeroext) #2

declare void @stg_end_test() #2

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline norecurse optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 14]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}

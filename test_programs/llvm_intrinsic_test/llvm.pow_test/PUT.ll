; ModuleID = 'PUT.bc'
source_filename = "llvm.pow_test.cpp"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"P\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @_Z13isGreaterThandd(double %x, double %y) #0 {
entry:
  %retval = alloca i1, align 1
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %result = alloca double, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %1 = load double, double* %y.addr, align 8
  %2 = call double @llvm.pow.f64(double %0, double %1)
  %3 = load double, double* %x.addr, align 8
  %call = call double @_ZL3powIdiENSt3__116__lazy_enable_ifIXaasr3std13is_arithmeticIT_EE5valuesr3std13is_arithmeticIT0_EE5valueENS0_9__promoteIS2_S3_vEEE4typeES2_S3_(double %3, i32 2) #4
  %cmp = fcmp ogt double %2, %call
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load double, double* %x.addr, align 8
  %5 = load double, double* %y.addr, align 8
  %6 = call double @llvm.pow.f64(double %4, double %5)
  store double %6, double* %result, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load double, double* %x.addr, align 8
  %call1 = call double @_ZL3powIdiENSt3__116__lazy_enable_ifIXaasr3std13is_arithmeticIT_EE5valuesr3std13is_arithmeticIT0_EE5valueENS0_9__promoteIS2_S3_vEEE4typeES2_S3_(double %7, i32 2) #4
  store double %call1, double* %result, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load double, double* %x.addr, align 8
  %9 = load double, double* %y.addr, align 8
  %10 = call double @llvm.pow.f64(double %8, double %9)
  %cmp2 = fcmp ogt double %10, 5.000000e-01
  br i1 %cmp2, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.end
  store i1 true, i1* %retval, align 1
  br label %return

if.else4:                                         ; preds = %if.end
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.else4, %if.then3
  %11 = load i1, i1* %retval, align 1
  ret i1 %11
}

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.pow.f64(double, double) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define internal double @_ZL3powIdiENSt3__116__lazy_enable_ifIXaasr3std13is_arithmeticIT_EE5valuesr3std13is_arithmeticIT0_EE5valueENS0_9__promoteIS2_S3_vEEE4typeES2_S3_(double %__lcpp_x, i32 %__lcpp_y) #0 {
entry:
  %__lcpp_x.addr = alloca double, align 8
  %__lcpp_y.addr = alloca i32, align 4
  store double %__lcpp_x, double* %__lcpp_x.addr, align 8
  store i32 %__lcpp_y, i32* %__lcpp_y.addr, align 4
  %0 = load double, double* %__lcpp_x.addr, align 8
  %1 = load i32, i32* %__lcpp_y.addr, align 4
  %conv = sitofp i32 %1 to double
  %2 = call double @llvm.pow.f64(double %0, double %conv)
  ret double %2
}

; Function Attrs: noinline norecurse optnone ssp uwtable
define i32 @main() #2 {
entry:
  %retval = alloca i32, align 4
  %base = alloca double, align 8
  %power = alloca double, align 8
  %result = alloca i8, align 1
  store i32 0, i32* %retval, align 4
  %call = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), double* %base)
  %call1 = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), double* %power)
  call void @stg_begin_test()
  call void @stg_symbolic_variable_double(double* %base, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  call void @stg_symbolic_variable_double(double* %power, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %0 = load double, double* %base, align 8
  %1 = load double, double* %power, align 8
  %call2 = call zeroext i1 @_Z13isGreaterThandd(double %0, double %1)
  %frombool = zext i1 %call2 to i8
  store i8 %frombool, i8* %result, align 1
  call void @stg_end_test()
  %2 = load i8, i8* %result, align 1
  %tobool = trunc i8 %2 to i1
  call void @stg_record_test(i1 zeroext %tobool)
  ret i32 0
}

declare i32 @scanf(i8*, ...) #3

declare void @stg_begin_test() #3

declare void @stg_symbolic_variable_double(double*, i8*) #3

declare void @stg_end_test() #3

declare void @stg_record_test(i1 zeroext) #3

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline norecurse optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 14]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}

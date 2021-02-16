; ModuleID = 'PUT.bc'
source_filename = "fmod.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [3 x i8] c"S0\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @isGreaterThan(double %x, double %y, double %a, double %b) #0 {
entry:
  %retval = alloca i1, align 1
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %a.addr = alloca double, align 8
  %b.addr = alloca double, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store double %a, double* %a.addr, align 8
  store double %b, double* %b.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %1 = load double, double* %y.addr, align 8
  %fmod = frem double %0, %1
  %2 = load double, double* %a.addr, align 8
  %3 = load double, double* %b.addr, align 8
  %fmod1 = frem double %2, %3
  %cmp = fcmp ogt double %fmod, %fmod1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i1 true, i1* %retval, align 1
  br label %return

if.else:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load i1, i1* %retval, align 1
  ret i1 %4
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca double, align 8
  %y = alloca double, align 8
  %a = alloca double, align 8
  %b = alloca double, align 8
  %result = alloca i8, align 1
  store i32 0, i32* %retval, align 4
  store double 3.500000e+00, double* %x, align 8
  store double 5.600000e+00, double* %y, align 8
  store double 2.200000e+00, double* %a, align 8
  store double 9.000000e+00, double* %b, align 8
  call void (...) @stg_begin_test()
  call void @stg_symbolic_variable_double(double* %x, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0))
  call void @stg_symbolic_variable_double(double* %a, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  %0 = load double, double* %x, align 8
  %1 = load double, double* %y, align 8
  %2 = load double, double* %a, align 8
  %3 = load double, double* %b, align 8
  %call = call zeroext i1 @isGreaterThan(double %0, double %1, double %2, double %3)
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %result, align 1
  call void (...) @stg_end_test()
  %4 = load i8, i8* %result, align 1
  %tobool = trunc i8 %4 to i1
  call void @stg_record_test(i1 zeroext %tobool)
  ret i32 0
}

declare void @stg_begin_test(...) #1

declare void @stg_symbolic_variable_double(double*, i8*) #1

declare void @stg_end_test(...) #1

declare void @stg_record_test(i1 zeroext) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 14]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}

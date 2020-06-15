; ModuleID = 'PUT.bc'
source_filename = "globalFloatTest.cpp"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@short_ = global float 0x4017333340000000, align 4
@low_end_of_average = global float 0x40179999A0000000, align 4
@medium_end_of_average = global float 0x401470A3E0000000, align 4
@high_end_of_average = global float 6.000000e+00, align 4
@tall = global float 0x4018CCCCC0000000, align 4
@giant = global float 6.500000e+00, align 4
@.str = private unnamed_addr constant [2 x i8] c"H\00", align 1

; Function Attrs: noinline norecurse optnone ssp uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %height = alloca float, align 4
  store i32 0, i32* %retval, align 4
  call void @stg_begin_test()
  %0 = bitcast float* %height to i8*
  call void @stg_symbolic_variable(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %1 = bitcast float* %height to i8*
  call void @stg_input_float(i8* %1, float 0x401A666660000000)
  %2 = load float, float* %height, align 4
  %call = call zeroext i1 @_Z6isTallf(float %2)
  call void @stg_assert(i1 zeroext %call)
  call void @stg_end_test()
  ret i32 0
}

declare void @stg_begin_test() #1

declare void @stg_symbolic_variable(i8*, i8*) #1

declare void @stg_input_float(i8*, float) #1

declare void @stg_assert(i1 zeroext) #1

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @_Z6isTallf(float %height) #2 {
entry:
  %retval = alloca i1, align 1
  %height.addr = alloca float, align 4
  store float %height, float* %height.addr, align 4
  %0 = load float, float* %height.addr, align 4
  %1 = load float, float* @short_, align 4
  %cmp = fcmp olt float %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1
  br label %return

if.else:                                          ; preds = %entry
  %2 = load float, float* %height.addr, align 4
  %conv = fpext float %2 to double
  %cmp1 = fcmp ole double 5.800000e+00, %conv
  br i1 %cmp1, label %land.lhs.true, label %if.else4

land.lhs.true:                                    ; preds = %if.else
  %3 = load float, float* %height.addr, align 4
  %4 = load float, float* @low_end_of_average, align 4
  %cmp2 = fcmp ole float %3, %4
  br i1 %cmp2, label %if.then3, label %if.else4

if.then3:                                         ; preds = %land.lhs.true
  store i1 false, i1* %retval, align 1
  br label %return

if.else4:                                         ; preds = %land.lhs.true, %if.else
  %5 = load float, float* %height.addr, align 4
  %conv5 = fpext float %5 to double
  %cmp6 = fcmp ole double 5.100000e+00, %conv5
  br i1 %cmp6, label %land.lhs.true7, label %if.else10

land.lhs.true7:                                   ; preds = %if.else4
  %6 = load float, float* %height.addr, align 4
  %7 = load float, float* @medium_end_of_average, align 4
  %cmp8 = fcmp ole float %6, %7
  br i1 %cmp8, label %if.then9, label %if.else10

if.then9:                                         ; preds = %land.lhs.true7
  store i1 false, i1* %retval, align 1
  br label %return

if.else10:                                        ; preds = %land.lhs.true7, %if.else4
  %8 = load float, float* @high_end_of_average, align 4
  %9 = load float, float* %height.addr, align 4
  %cmp11 = fcmp ole float %8, %9
  br i1 %cmp11, label %land.lhs.true12, label %if.else16

land.lhs.true12:                                  ; preds = %if.else10
  %10 = load float, float* %height.addr, align 4
  %conv13 = fpext float %10 to double
  %cmp14 = fcmp ole double %conv13, 6.100000e+00
  br i1 %cmp14, label %if.then15, label %if.else16

if.then15:                                        ; preds = %land.lhs.true12
  store i1 false, i1* %retval, align 1
  br label %return

if.else16:                                        ; preds = %land.lhs.true12, %if.else10
  %11 = load float, float* @tall, align 4
  %12 = load float, float* %height.addr, align 4
  %cmp17 = fcmp ole float %11, %12
  br i1 %cmp17, label %land.lhs.true18, label %if.else21

land.lhs.true18:                                  ; preds = %if.else16
  %13 = load float, float* %height.addr, align 4
  %14 = load float, float* @giant, align 4
  %cmp19 = fcmp olt float %13, %14
  br i1 %cmp19, label %if.then20, label %if.else21

if.then20:                                        ; preds = %land.lhs.true18
  store i1 true, i1* %retval, align 1
  br label %return

if.else21:                                        ; preds = %land.lhs.true18, %if.else16
  %15 = load float, float* %height.addr, align 4
  %conv22 = fpext float %15 to double
  %cmp23 = fcmp ogt double 6.900000e+00, %conv22
  br i1 %cmp23, label %land.lhs.true24, label %if.else27

land.lhs.true24:                                  ; preds = %if.else21
  %16 = load float, float* %height.addr, align 4
  %17 = load float, float* @giant, align 4
  %cmp25 = fcmp oge float %16, %17
  br i1 %cmp25, label %if.then26, label %if.else27

if.then26:                                        ; preds = %land.lhs.true24
  store i1 true, i1* %retval, align 1
  br label %return

if.else27:                                        ; preds = %land.lhs.true24, %if.else21
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.else27, %if.then26, %if.then20, %if.then15, %if.then9, %if.then3, %if.then
  %18 = load i1, i1* %retval, align 1
  ret i1 %18
}

declare void @stg_end_test() #1

attributes #0 = { noinline norecurse optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 14]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}

; ModuleID = 'PUT.bc'
source_filename = "if_else_ladder.cpp"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"Y\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @_Z13isGreaterOrEqii(i32 %number1, i32 %number2) #0 {
entry:
  %retval = alloca i1, align 1
  %number1.addr = alloca i32, align 4
  %number2.addr = alloca i32, align 4
  store i32 %number1, i32* %number1.addr, align 4
  store i32 %number2, i32* %number2.addr, align 4
  %0 = load i32, i32* %number1.addr, align 4
  %1 = load i32, i32* %number2.addr, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i1 true, i1* %retval, align 1
  br label %return

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %number1.addr, align 4
  %3 = load i32, i32* %number2.addr, align 4
  %cmp1 = icmp sgt i32 %2, %3
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  store i1 true, i1* %retval, align 1
  br label %return

if.else3:                                         ; preds = %if.else
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.else3, %if.then2, %if.then
  %4 = load i1, i1* %retval, align 1
  ret i1 %4
}

; Function Attrs: noinline norecurse optnone ssp uwtable
define i32 @main() #1 {
entry:
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %test = alloca i8, align 1
  store i32 0, i32* %x, align 4
  store i32 1, i32* %y, align 4
  call void @stg_begin_test()
  call void @stg_symbolic_variable_int(i32* %x, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  call void @stg_symbolic_variable_int(i32* %y, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  %0 = load i32, i32* %x, align 4
  %1 = load i32, i32* %y, align 4
  %call = call zeroext i1 @_Z13isGreaterOrEqii(i32 %0, i32 %1)
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %test, align 1
  call void @stg_end_test()
  %2 = load i8, i8* %test, align 1
  %tobool = trunc i8 %2 to i1
  call void @stg_record_test(i1 zeroext %tobool)
  store i32 1, i32* %x, align 4
  store i32 0, i32* %y, align 4
  call void @stg_begin_test()
  call void @stg_symbolic_variable_int(i32* %x, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  call void @stg_symbolic_variable_int(i32* %y, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  %3 = load i32, i32* %x, align 4
  %4 = load i32, i32* %y, align 4
  %call1 = call zeroext i1 @_Z13isGreaterOrEqii(i32 %3, i32 %4)
  %frombool2 = zext i1 %call1 to i8
  store i8 %frombool2, i8* %test, align 1
  call void @stg_end_test()
  %5 = load i8, i8* %test, align 1
  %tobool3 = trunc i8 %5 to i1
  call void @stg_record_test(i1 zeroext %tobool3)
  store i32 1, i32* %x, align 4
  store i32 1, i32* %y, align 4
  call void @stg_begin_test()
  call void @stg_symbolic_variable_int(i32* %x, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  call void @stg_symbolic_variable_int(i32* %y, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  %6 = load i32, i32* %x, align 4
  %7 = load i32, i32* %y, align 4
  %call4 = call zeroext i1 @_Z13isGreaterOrEqii(i32 %6, i32 %7)
  %frombool5 = zext i1 %call4 to i8
  store i8 %frombool5, i8* %test, align 1
  call void @stg_end_test()
  %8 = load i8, i8* %test, align 1
  %tobool6 = trunc i8 %8 to i1
  call void @stg_record_test(i1 zeroext %tobool6)
  ret i32 0
}

declare void @stg_begin_test() #2

declare void @stg_symbolic_variable_int(i32*, i8*) #2

declare void @stg_end_test() #2

declare void @stg_record_test(i1 zeroext) #2

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline norecurse optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 14]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}

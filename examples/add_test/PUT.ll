; ModuleID = 'PUT.bc'
source_filename = "add.cpp"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"Y\00", align 1

; Function Attrs: noinline norecurse optnone ssp uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %testPassed = alloca i8, align 1
  store i32 0, i32* %retval, align 4
  store i32 0, i32* %x, align 4
  store i32 -5, i32* %y, align 4
  store i8 0, i8* %testPassed, align 1
  call void @stg_begin_test()
  call void @stg_symbolic_variable_int(i32* %x, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  call void @stg_symbolic_variable_int(i32* %y, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  call void @stg_pause_recording()
  %0 = load i32, i32* %x, align 4
  %1 = load i32, i32* %y, align 4
  %add = add nsw i32 %0, %1
  %cmp = icmp sgt i32 %add, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 1, i8* %testPassed, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @stg_resume_recording()
  %2 = load i32, i32* %x, align 4
  %3 = load i32, i32* %y, align 4
  %add1 = add nsw i32 %2, %3
  %cmp2 = icmp sgt i32 %add1, -10
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i8 1, i8* %testPassed, align 1
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  call void @stg_end_test()
  %4 = load i8, i8* %testPassed, align 1
  %tobool = trunc i8 %4 to i1
  call void @stg_record_test(i1 zeroext %tobool)
  ret i32 0
}

declare void @stg_begin_test() #1

declare void @stg_symbolic_variable_int(i32*, i8*) #1

declare void @stg_pause_recording() #1

declare void @stg_resume_recording() #1

declare void @stg_end_test() #1

declare void @stg_record_test(i1 zeroext) #1

attributes #0 = { noinline norecurse optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 14]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}

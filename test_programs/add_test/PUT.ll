; ModuleID = 'PUT.bc'
source_filename = "add.cpp"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline norecurse optnone ssp uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @stg_begin_test()
  %0 = bitcast i32* %x to i8*
  call void @stg_symbolic_variable(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %1 = bitcast i32* %y to i8*
  call void @stg_symbolic_variable(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  %2 = bitcast i32* %x to i8*
  call void @stg_input_int(i8* %2, i32 0)
  %3 = load i32, i32* %x, align 4
  %add = add nsw i32 %3, 5
  store i32 %add, i32* %x, align 4
  %4 = load i32, i32* %x, align 4
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @scanf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32* %y)
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 10, i32* %y, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %x, align 4
  %cmp1 = icmp sgt i32 %5, 2
  br i1 %cmp1, label %if.then2, label %if.else4

if.then2:                                         ; preds = %if.end
  %6 = load i32, i32* %y, align 4
  %cmp3 = icmp ne i32 %6, 2789
  call void @stg_assert(i1 zeroext %cmp3)
  br label %if.end5

if.else4:                                         ; preds = %if.end
  call void @stg_assert(i1 zeroext true)
  br label %if.end5

if.end5:                                          ; preds = %if.else4, %if.then2
  call void @stg_end_test()
  ret i32 0
}

declare void @stg_begin_test() #1

declare void @stg_symbolic_variable(i8*, i8*) #1

declare void @stg_input_int(i8*, i32) #1

declare i32 @scanf(i8*, ...) #1

declare void @stg_assert(i1 zeroext) #1

declare void @stg_end_test() #1

attributes #0 = { noinline norecurse optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 14]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}

; ModuleID = 'IPUT.bc'
source_filename = "max.cpp"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [8 x i8] c"uniform\00", align 1
@uniform = global i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), align 8
@0 = private unnamed_addr constant [19 x i8] c"_Z8find_maxiientry\00", align 1
@1 = private unnamed_addr constant [21 x i8] c"_Z8find_maxiiif.then\00", align 1
@2 = private unnamed_addr constant [21 x i8] c"_Z8find_maxiiif.else\00", align 1
@3 = private unnamed_addr constant [20 x i8] c"_Z8find_maxiireturn\00", align 1
@4 = private unnamed_addr constant [10 x i8] c"mainentry\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @_Z8find_maxii(i32 %a, i32 %b) #0 {
entry:
  %retval = alloca i32, align 4
  call void @update_bb_sequence(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @0, i32 0, i32 0))
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32, i32* %a.addr, align 4
  %1 = load i32, i32* %b.addr, align 4
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %a.addr, align 4
  call void @update_bb_sequence(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @1, i32 0, i32 0))
  store i32 %2, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %b.addr, align 4
  call void @update_bb_sequence(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @2, i32 0, i32 0))
  store i32 %3, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load i32, i32* %retval, align 4
  call void @update_bb_sequence(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @3, i32 0, i32 0))
  ret i32 %4
}

; Function Attrs: noinline norecurse optnone ssp uwtable
define i32 @main() #1 {
entry:
  %retval = alloca i32, align 4
  call void @update_bb_sequence(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @4, i32 0, i32 0))
  store i32 0, i32* %retval, align 4
  %call = call i32 @_Z8find_maxii(i32 0, i32 1)
  call void @stg_test_separator(i32 1)
  %call1 = call i32 @_Z8find_maxii(i32 1, i32 0)
  call void @stg_test_separator(i32 2)
  %call2 = call i32 @_Z8find_maxii(i32 1, i32 0)
  call void @stg_test_separator(i32 3)
  %call3 = call i32 @_Z8find_maxii(i32 1, i32 0)
  call void @stg_test_separator(i32 4)
  %call4 = call i32 @_Z8find_maxii(i32 1, i32 0)
  call void @stg_test_separator(i32 5)
  ret i32 0
}

declare void @stg_test_separator(i32) #2

declare void @update_bb_sequence(i8*)

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline norecurse optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 14]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}

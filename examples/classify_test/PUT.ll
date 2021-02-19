; ModuleID = 'PUT.bc'
source_filename = "classify.cpp"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"C\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @_Z8classifyiii(i32 %a, i32 %b, i32 %c) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %c.addr = alloca i32, align 4
  %type = alloca i32, align 4
  store i32 %a, i32* %a.addr, align 4
  store i32 %b, i32* %b.addr, align 4
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %a.addr, align 4
  %cmp = icmp sle i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %b.addr, align 4
  %cmp1 = icmp sle i32 %1, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i32, i32* %c.addr, align 4
  %cmp3 = icmp sle i32 %2, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 4, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  store i32 0, i32* %type, align 4
  %3 = load i32, i32* %a.addr, align 4
  %4 = load i32, i32* %b.addr, align 4
  %cmp4 = icmp eq i32 %3, %4
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %5 = load i32, i32* %type, align 4
  %add = add nsw i32 %5, 1
  store i32 %add, i32* %type, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  %6 = load i32, i32* %a.addr, align 4
  %7 = load i32, i32* %c.addr, align 4
  %cmp7 = icmp eq i32 %6, %7
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end6
  %8 = load i32, i32* %type, align 4
  %add9 = add nsw i32 %8, 2
  store i32 %add9, i32* %type, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end6
  %9 = load i32, i32* %b.addr, align 4
  %10 = load i32, i32* %c.addr, align 4
  %cmp11 = icmp eq i32 %9, %10
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end10
  %11 = load i32, i32* %type, align 4
  %add13 = add nsw i32 %11, 3
  store i32 %add13, i32* %type, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end10
  %12 = load i32, i32* %type, align 4
  %cmp15 = icmp eq i32 %12, 0
  br i1 %cmp15, label %if.then16, label %if.end27

if.then16:                                        ; preds = %if.end14
  %13 = load i32, i32* %a.addr, align 4
  %14 = load i32, i32* %b.addr, align 4
  %add17 = add nsw i32 %13, %14
  %15 = load i32, i32* %c.addr, align 4
  %cmp18 = icmp sle i32 %add17, %15
  br i1 %cmp18, label %if.then25, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %if.then16
  %16 = load i32, i32* %b.addr, align 4
  %17 = load i32, i32* %c.addr, align 4
  %add20 = add nsw i32 %16, %17
  %18 = load i32, i32* %a.addr, align 4
  %cmp21 = icmp sle i32 %add20, %18
  br i1 %cmp21, label %if.then25, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false19
  %19 = load i32, i32* %a.addr, align 4
  %20 = load i32, i32* %c.addr, align 4
  %add23 = add nsw i32 %19, %20
  %21 = load i32, i32* %b.addr, align 4
  %cmp24 = icmp sge i32 %add23, %21
  br i1 %cmp24, label %if.then25, label %if.else

if.then25:                                        ; preds = %lor.lhs.false22, %lor.lhs.false19, %if.then16
  store i32 4, i32* %type, align 4
  br label %if.end26

if.else:                                          ; preds = %lor.lhs.false22
  store i32 1, i32* %type, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then25
  %22 = load i32, i32* %type, align 4
  store i32 %22, i32* %retval, align 4
  br label %return

if.end27:                                         ; preds = %if.end14
  %23 = load i32, i32* %type, align 4
  %cmp28 = icmp sgt i32 %23, 3
  br i1 %cmp28, label %if.then29, label %if.else30

if.then29:                                        ; preds = %if.end27
  store i32 3, i32* %type, align 4
  br label %if.end51

if.else30:                                        ; preds = %if.end27
  %24 = load i32, i32* %type, align 4
  %cmp31 = icmp eq i32 %24, 1
  br i1 %cmp31, label %land.lhs.true, label %if.else35

land.lhs.true:                                    ; preds = %if.else30
  %25 = load i32, i32* %a.addr, align 4
  %26 = load i32, i32* %b.addr, align 4
  %add32 = add nsw i32 %25, %26
  %27 = load i32, i32* %c.addr, align 4
  %cmp33 = icmp sgt i32 %add32, %27
  br i1 %cmp33, label %if.then34, label %if.else35

if.then34:                                        ; preds = %land.lhs.true
  store i32 2, i32* %type, align 4
  br label %if.end50

if.else35:                                        ; preds = %land.lhs.true, %if.else30
  %28 = load i32, i32* %type, align 4
  %cmp36 = icmp eq i32 %28, 2
  br i1 %cmp36, label %land.lhs.true37, label %if.else41

land.lhs.true37:                                  ; preds = %if.else35
  %29 = load i32, i32* %a.addr, align 4
  %30 = load i32, i32* %c.addr, align 4
  %add38 = add nsw i32 %29, %30
  %31 = load i32, i32* %b.addr, align 4
  %cmp39 = icmp sgt i32 %add38, %31
  br i1 %cmp39, label %if.then40, label %if.else41

if.then40:                                        ; preds = %land.lhs.true37
  store i32 2, i32* %type, align 4
  br label %if.end49

if.else41:                                        ; preds = %land.lhs.true37, %if.else35
  %32 = load i32, i32* %type, align 4
  %cmp42 = icmp eq i32 %32, 3
  br i1 %cmp42, label %land.lhs.true43, label %if.else47

land.lhs.true43:                                  ; preds = %if.else41
  %33 = load i32, i32* %b.addr, align 4
  %34 = load i32, i32* %c.addr, align 4
  %add44 = add nsw i32 %33, %34
  %35 = load i32, i32* %a.addr, align 4
  %cmp45 = icmp sgt i32 %add44, %35
  br i1 %cmp45, label %if.then46, label %if.else47

if.then46:                                        ; preds = %land.lhs.true43
  store i32 2, i32* %type, align 4
  br label %if.end48

if.else47:                                        ; preds = %land.lhs.true43, %if.else41
  store i32 4, i32* %type, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.else47, %if.then46
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.then40
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.then34
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.then29
  %36 = load i32, i32* %type, align 4
  store i32 %36, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end51, %if.end26, %if.then
  %37 = load i32, i32* %retval, align 4
  ret i32 %37
}

; Function Attrs: noinline norecurse optnone ssp uwtable
define i32 @main() #1 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %triangle_type = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 8, i32* %a, align 4
  store i32 9, i32* %b, align 4
  store i32 10, i32* %c, align 4
  call void @stg_begin_test()
  call void @stg_symbolic_variable_int(i32* %a, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  call void @stg_symbolic_variable_int(i32* %b, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  call void @stg_symbolic_variable_int(i32* %c, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %0 = load i32, i32* %a, align 4
  %1 = load i32, i32* %b, align 4
  %2 = load i32, i32* %c, align 4
  %call = call i32 @_Z8classifyiii(i32 %0, i32 %1, i32 %2)
  store i32 %call, i32* %triangle_type, align 4
  call void @stg_end_test()
  call void @stg_record_test(i1 zeroext true)
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

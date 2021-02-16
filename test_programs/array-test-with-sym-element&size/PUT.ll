; ModuleID = 'PUT.bc'
source_filename = "array_with_sym_element_and_size.cpp"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"a_\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@__const.main.arr_2_0 = private unnamed_addr constant [2 x i32] [i32 2, i32 3], align 4
@__const.main.arr_2_1 = private unnamed_addr constant [2 x i32] [i32 2, i32 4], align 4
@__const.main.arr_2_2 = private unnamed_addr constant [2 x i32] [i32 1, i32 4], align 4
@__const.main.arr_2_3 = private unnamed_addr constant [2 x i32] [i32 1, i32 1], align 4

; Function Attrs: noinline optnone ssp uwtable
define void @_Z25getAverageOfAllEvenNUmberPii(i32* %arr, i32 %size) #0 {
entry:
  %arr.addr = alloca i32*, align 8
  %size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %sum = alloca i32, align 4
  %avg = alloca double, align 8
  store i32* %arr, i32** %arr.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  call void @stg_begin_test()
  %0 = load i32*, i32** %arr.addr, align 8
  %1 = bitcast i32* %0 to i8*
  call void @stg_symbolic_array(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  call void @stg_symbolic_variable_int(i32* %size.addr, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %count, align 4
  store i32 0, i32* %sum, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %size.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32*, i32** %arr.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %rem = srem i32 %6, 2
  %cmp1 = icmp eq i32 %rem, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load i32*, i32** %arr.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %8 to i64
  %arrayidx3 = getelementptr inbounds i32, i32* %7, i64 %idxprom2
  %9 = load i32, i32* %arrayidx3, align 4
  %10 = load i32, i32* %sum, align 4
  %add = add nsw i32 %10, %9
  store i32 %add, i32* %sum, align 4
  %11 = load i32, i32* %count, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %i, align 4
  %inc4 = add nsw i32 %12, 1
  store i32 %inc4, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @stg_end_test()
  call void @stg_record_test(i1 zeroext true)
  ret void
}

declare void @stg_begin_test() #1

declare void @stg_symbolic_array(i8*, i8*, i32, i8*) #1

declare void @stg_symbolic_variable_int(i32*, i8*) #1

declare void @stg_end_test() #1

declare void @stg_record_test(i1 zeroext) #1

; Function Attrs: noinline norecurse optnone ssp uwtable
define i32 @main() #2 {
entry:
  %retval = alloca i32, align 4
  %arr_2_0 = alloca [2 x i32], align 4
  %arr_2_1 = alloca [2 x i32], align 4
  %arr_2_2 = alloca [2 x i32], align 4
  %arr_2_3 = alloca [2 x i32], align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [2 x i32]* %arr_2_0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %0, i8* align 4 bitcast ([2 x i32]* @__const.main.arr_2_0 to i8*), i64 8, i1 false)
  %1 = bitcast [2 x i32]* %arr_2_1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 bitcast ([2 x i32]* @__const.main.arr_2_1 to i8*), i64 8, i1 false)
  %2 = bitcast [2 x i32]* %arr_2_2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %2, i8* align 4 bitcast ([2 x i32]* @__const.main.arr_2_2 to i8*), i64 8, i1 false)
  %3 = bitcast [2 x i32]* %arr_2_3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 bitcast ([2 x i32]* @__const.main.arr_2_3 to i8*), i64 8, i1 false)
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %arr_2_0, i32 0, i32 0
  call void @_Z25getAverageOfAllEvenNUmberPii(i32* %arraydecay, i32 2)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noinline optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline norecurse optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 14]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}

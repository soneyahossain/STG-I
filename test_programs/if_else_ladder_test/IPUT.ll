; ModuleID = 'IPUT.bc'
source_filename = "if_else_ladder.cpp"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@prev_bb = global i8* getelementptr inbounds ([6 x i8], [6 x i8]* @79, i32 0, i32 0), align 4
@0 = private unnamed_addr constant [13 x i8] c"number1.addr\00", align 1
@1 = private unnamed_addr constant [13 x i8] c"number2.addr\00", align 1
@2 = private unnamed_addr constant [8 x i8] c"number1\00", align 1
@3 = private unnamed_addr constant [8 x i8] c"number2\00", align 1
@4 = private unnamed_addr constant [24 x i8] c"tmp__Z13isGreaterOrEqii\00", align 1
@5 = private unnamed_addr constant [24 x i8] c"tmp__Z13isGreaterOrEqii\00", align 1
@6 = private unnamed_addr constant [25 x i8] c"tmp__Z13isGreaterOrEqii1\00", align 1
@7 = private unnamed_addr constant [25 x i8] c"tmp__Z13isGreaterOrEqii1\00", align 1
@8 = private unnamed_addr constant [4 x i8] c"cmp\00", align 1
@9 = private unnamed_addr constant [24 x i8] c"tmp__Z13isGreaterOrEqii\00", align 1
@10 = private unnamed_addr constant [25 x i8] c"tmp__Z13isGreaterOrEqii1\00", align 1
@11 = private unnamed_addr constant [3 x i8] c"eq\00", align 1
@12 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@13 = private unnamed_addr constant [4 x i8] c"cmp\00", align 1
@14 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@15 = private unnamed_addr constant [7 x i8] c"(i1 \01)\00", align 1
@16 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@17 = private unnamed_addr constant [25 x i8] c"tmp__Z13isGreaterOrEqii2\00", align 1
@18 = private unnamed_addr constant [25 x i8] c"tmp__Z13isGreaterOrEqii2\00", align 1
@19 = private unnamed_addr constant [25 x i8] c"tmp__Z13isGreaterOrEqii3\00", align 1
@20 = private unnamed_addr constant [25 x i8] c"tmp__Z13isGreaterOrEqii3\00", align 1
@21 = private unnamed_addr constant [5 x i8] c"cmp1\00", align 1
@22 = private unnamed_addr constant [25 x i8] c"tmp__Z13isGreaterOrEqii2\00", align 1
@23 = private unnamed_addr constant [25 x i8] c"tmp__Z13isGreaterOrEqii3\00", align 1
@24 = private unnamed_addr constant [4 x i8] c"sgt\00", align 1
@25 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@26 = private unnamed_addr constant [5 x i8] c"cmp1\00", align 1
@27 = private unnamed_addr constant [8 x i8] c"if.else\00", align 1
@28 = private unnamed_addr constant [7 x i8] c"(i1 \01)\00", align 1
@29 = private unnamed_addr constant [9 x i8] c"if.then2\00", align 1
@30 = private unnamed_addr constant [7 x i8] c"(i1 \00)\00", align 1
@31 = private unnamed_addr constant [9 x i8] c"if.else3\00", align 1
@32 = private unnamed_addr constant [25 x i8] c"tmp__Z13isGreaterOrEqii4\00", align 1
@33 = private unnamed_addr constant [25 x i8] c"tmp__Z13isGreaterOrEqii4\00", align 1
@34 = private unnamed_addr constant [24 x i8] c"_Z13isGreaterOrEqii_RET\00", align 1
@35 = private unnamed_addr constant [25 x i8] c"tmp__Z13isGreaterOrEqii4\00", align 1
@36 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@37 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@38 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@39 = private unnamed_addr constant [9 x i8] c"tmp_main\00", align 1
@40 = private unnamed_addr constant [10 x i8] c"tmp_main1\00", align 1
@41 = private unnamed_addr constant [10 x i8] c"tmp_main2\00", align 1
@42 = private unnamed_addr constant [10 x i8] c"tmp_main3\00", align 1
@43 = private unnamed_addr constant [10 x i8] c"tmp_main4\00", align 1
@44 = private unnamed_addr constant [10 x i8] c"tmp_main4\00", align 1
@45 = private unnamed_addr constant [10 x i8] c"tmp_main5\00", align 1
@46 = private unnamed_addr constant [10 x i8] c"tmp_main5\00", align 1
@47 = private unnamed_addr constant [8 x i8] c"number1\00", align 1
@48 = private unnamed_addr constant [10 x i8] c"tmp_main4\00", align 1
@49 = private unnamed_addr constant [8 x i8] c"number2\00", align 1
@50 = private unnamed_addr constant [10 x i8] c"tmp_main5\00", align 1
@51 = private unnamed_addr constant [5 x i8] c"call\00", align 1
@52 = private unnamed_addr constant [24 x i8] c"_Z13isGreaterOrEqii_RET\00", align 1
@53 = private unnamed_addr constant [10 x i8] c"tmp_main6\00", align 1
@54 = private unnamed_addr constant [10 x i8] c"tmp_main7\00", align 1
@55 = private unnamed_addr constant [10 x i8] c"tmp_main8\00", align 1
@56 = private unnamed_addr constant [10 x i8] c"tmp_main8\00", align 1
@57 = private unnamed_addr constant [10 x i8] c"tmp_main9\00", align 1
@58 = private unnamed_addr constant [10 x i8] c"tmp_main9\00", align 1
@59 = private unnamed_addr constant [8 x i8] c"number1\00", align 1
@60 = private unnamed_addr constant [10 x i8] c"tmp_main8\00", align 1
@61 = private unnamed_addr constant [8 x i8] c"number2\00", align 1
@62 = private unnamed_addr constant [10 x i8] c"tmp_main9\00", align 1
@63 = private unnamed_addr constant [6 x i8] c"call1\00", align 1
@64 = private unnamed_addr constant [24 x i8] c"_Z13isGreaterOrEqii_RET\00", align 1
@65 = private unnamed_addr constant [11 x i8] c"tmp_main10\00", align 1
@66 = private unnamed_addr constant [11 x i8] c"tmp_main11\00", align 1
@67 = private unnamed_addr constant [11 x i8] c"tmp_main12\00", align 1
@68 = private unnamed_addr constant [11 x i8] c"tmp_main12\00", align 1
@69 = private unnamed_addr constant [11 x i8] c"tmp_main13\00", align 1
@70 = private unnamed_addr constant [11 x i8] c"tmp_main13\00", align 1
@71 = private unnamed_addr constant [8 x i8] c"number1\00", align 1
@72 = private unnamed_addr constant [11 x i8] c"tmp_main12\00", align 1
@73 = private unnamed_addr constant [8 x i8] c"number2\00", align 1
@74 = private unnamed_addr constant [11 x i8] c"tmp_main13\00", align 1
@75 = private unnamed_addr constant [6 x i8] c"call2\00", align 1
@76 = private unnamed_addr constant [24 x i8] c"_Z13isGreaterOrEqii_RET\00", align 1
@77 = private unnamed_addr constant [9 x i8] c"main_RET\00", align 1
@78 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@79 = private unnamed_addr constant [6 x i8] c"entry\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @_Z13isGreaterOrEqii(i32 %number1, i32 %number2) #0 {
entry:
  %retval = alloca i1, align 1
  %number1.addr = alloca i32, align 4
  %number2.addr = alloca i32, align 4
  store i32 %number1, i32* %number1.addr, align 4
  call void @stg_update_store(i32* %number1.addr, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2, i32 0, i32 0))
  store i32 %number2, i32* %number2.addr, align 4
  call void @stg_update_store(i32* %number2.addr, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0))
  %tmp__Z13isGreaterOrEqii = load i32, i32* %number1.addr, align 4
  call void @stg_update_load(i32* %number1.addr, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @5, i32 0, i32 0))
  %tmp__Z13isGreaterOrEqii1 = load i32, i32* %number2.addr, align 4
  call void @stg_update_load(i32* %number2.addr, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @7, i32 0, i32 0))
  %cmp = icmp eq i32 %tmp__Z13isGreaterOrEqii, %tmp__Z13isGreaterOrEqii1
  call void @stg_update_cmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @12, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @13, i32 0, i32 0))
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i1 true, i1* %retval, align 1
  br label %return

if.else:                                          ; preds = %entry
  %tmp__Z13isGreaterOrEqii2 = load i32, i32* %number1.addr, align 4
  call void @stg_update_load(i32* %number1.addr, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @18, i32 0, i32 0))
  %tmp__Z13isGreaterOrEqii3 = load i32, i32* %number2.addr, align 4
  call void @stg_update_load(i32* %number2.addr, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @20, i32 0, i32 0))
  %cmp1 = icmp sgt i32 %tmp__Z13isGreaterOrEqii2, %tmp__Z13isGreaterOrEqii3
  call void @stg_update_cmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @23, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @25, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0))
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  store i1 true, i1* %retval, align 1
  br label %return

if.else3:                                         ; preds = %if.else
  store i1 false, i1* %retval, align 1
  br label %return

return:                                           ; preds = %if.else3, %if.then2, %if.then
  %tmp__Z13isGreaterOrEqii4 = load i1, i1* %retval, align 1
  call void @stg_update_char(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @34, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @35, i32 0, i32 0))
  ret i1 %tmp__Z13isGreaterOrEqii4
}

; Function Attrs: noinline norecurse optnone ssp uwtable
define i32 @main() #1 {
entry:
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  call void @stg_begin_test()
  %tmp_main = bitcast i32* %x to i8*
  call void @stg_symbolic_variable(i8* %tmp_main, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %tmp_main1 = bitcast i32* %y to i8*
  call void @stg_symbolic_variable(i8* %tmp_main1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  %tmp_main2 = bitcast i32* %x to i8*
  call void @stg_input_int(i8* %tmp_main2, i32 0)
  %tmp_main3 = bitcast i32* %y to i8*
  call void @stg_input_int(i8* %tmp_main3, i32 38)
  %tmp_main4 = load i32, i32* %x, align 4
  call void @stg_update_load(i32* %x, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @44, i32 0, i32 0))
  %tmp_main5 = load i32, i32* %y, align 4
  call void @stg_update_load(i32* %y, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @46, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @47, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @48, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @49, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @50, i32 0, i32 0))
  %call = call zeroext i1 @_Z13isGreaterOrEqii(i32 %tmp_main4, i32 %tmp_main5)
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @51, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @52, i32 0, i32 0))
  call void @stg_assert(i1 zeroext %call)
  call void @stg_end_test()
  call void @stg_begin_test()
  %tmp_main6 = bitcast i32* %x to i8*
  call void @stg_input_int(i8* %tmp_main6, i32 50)
  %tmp_main7 = bitcast i32* %y to i8*
  call void @stg_input_int(i8* %tmp_main7, i32 38)
  %tmp_main8 = load i32, i32* %x, align 4
  call void @stg_update_load(i32* %x, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @56, i32 0, i32 0))
  %tmp_main9 = load i32, i32* %y, align 4
  call void @stg_update_load(i32* %y, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @58, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @59, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @60, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @61, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @62, i32 0, i32 0))
  %call1 = call zeroext i1 @_Z13isGreaterOrEqii(i32 %tmp_main8, i32 %tmp_main9)
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @63, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @64, i32 0, i32 0))
  call void @stg_assert(i1 zeroext %call1)
  call void @stg_end_test()
  call void @stg_begin_test()
  %tmp_main10 = bitcast i32* %x to i8*
  call void @stg_input_int(i8* %tmp_main10, i32 50)
  %tmp_main11 = bitcast i32* %y to i8*
  call void @stg_input_int(i8* %tmp_main11, i32 50)
  %tmp_main12 = load i32, i32* %x, align 4
  call void @stg_update_load(i32* %x, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @68, i32 0, i32 0))
  %tmp_main13 = load i32, i32* %y, align 4
  call void @stg_update_load(i32* %y, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @70, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @71, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @72, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @73, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @74, i32 0, i32 0))
  %call2 = call zeroext i1 @_Z13isGreaterOrEqii(i32 %tmp_main12, i32 %tmp_main13)
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @75, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @76, i32 0, i32 0))
  call void @stg_assert(i1 zeroext %call2)
  call void @stg_end_test()
  call void @stg_update_char(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @77, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @78, i32 0, i32 0))
  ret i32 0
}

declare void @stg_begin_test() #2

declare void @stg_symbolic_variable(i8*, i8*) #2

declare void @stg_input_int(i8*, i32) #2

declare void @stg_assert(i1 zeroext) #2

declare void @stg_end_test() #2

declare void @stg_update_op(i8*, i8*, i8*, i8*)

declare void @stg_update_cast(i8*, i8*, i8*, i8*)

declare void @stg_update_pc(i1, i8*)

declare void @stg_set_symbolic(i8*, i8*)

declare void @stg_update_char(i8*, i8*)

declare void @stg_update_phi(i8*, i8*, i8*)

declare void @stg_update_int(i8*, i32)

declare void @stg_update_load(i32*, i8*)

declare void @stg_update_store(i32*, i8*)

declare void @stg_update_load_i8(i8*, i8*)

declare void @stg_update_store_i8(i8*, i8*)

declare void @stg_update_load_float(float*, i8*)

declare void @stg_update_store_float(float*, i8*)

declare void @stg_update_cmp(i8*, i8*, i8*, i8*, i8*)

declare void @stg_update_load_i64(i64*, i8*)

declare void @stg_update_store_i64(i64*, i8*)

declare void @stg_update_store_double(double*, i8*)

declare void @stg_update_load_double(double*, i8*)

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline norecurse optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 14]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}

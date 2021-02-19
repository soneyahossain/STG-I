; ModuleID = 'IPUT.bc'
source_filename = "symArrayIndexWithAssert.cpp"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@__const.main.a = private unnamed_addr constant [3 x i32] [i32 5, i32 10, i32 8], align 4
@.str = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@0 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@2 = private unnamed_addr constant [26 x i8] c"llvm.memcpy.p0i8.p0i8.i64\00", align 1
@3 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@4 = private unnamed_addr constant [9 x i8] c"tmp_main\00", align 1
@5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@6 = private unnamed_addr constant [9 x i8] c"(i64 12)\00", align 1
@7 = private unnamed_addr constant [7 x i8] c"(i1 0)\00", align 1
@8 = private unnamed_addr constant [8 x i8] c"(i32 1)\00", align 1
@9 = private unnamed_addr constant [8 x i8] c"(i32 1)\00", align 1
@10 = private unnamed_addr constant [10 x i8] c"tmp_main1\00", align 1
@11 = private unnamed_addr constant [10 x i8] c"tmp_main1\00", align 1
@12 = private unnamed_addr constant [9 x i8] c"cmp_main\00", align 1
@13 = private unnamed_addr constant [10 x i8] c"tmp_main1\00", align 1
@14 = private unnamed_addr constant [4 x i8] c"sgt\00", align 1
@15 = private unnamed_addr constant [8 x i8] c"(i32 2)\00", align 1
@16 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@17 = private unnamed_addr constant [9 x i8] c"cmp_main\00", align 1
@18 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@19 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@20 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@21 = private unnamed_addr constant [10 x i8] c"tmp_main2\00", align 1
@22 = private unnamed_addr constant [10 x i8] c"tmp_main2\00", align 1
@23 = private unnamed_addr constant [10 x i8] c"cmp1_main\00", align 1
@24 = private unnamed_addr constant [10 x i8] c"tmp_main2\00", align 1
@25 = private unnamed_addr constant [4 x i8] c"sgt\00", align 1
@26 = private unnamed_addr constant [8 x i8] c"(i32 2)\00", align 1
@27 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@28 = private unnamed_addr constant [10 x i8] c"cmp1_main\00", align 1
@29 = private unnamed_addr constant [8 x i8] c"if.else\00", align 1
@30 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@31 = private unnamed_addr constant [9 x i8] c"if.then2\00", align 1
@32 = private unnamed_addr constant [10 x i8] c"tmp_main3\00", align 1
@33 = private unnamed_addr constant [10 x i8] c"tmp_main3\00", align 1
@34 = private unnamed_addr constant [13 x i8] c"idxprom_main\00", align 1
@35 = private unnamed_addr constant [10 x i8] c"tmp_main3\00", align 1
@36 = private unnamed_addr constant [5 x i8] c"sext\00", align 1
@37 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@38 = private unnamed_addr constant [4 x i8] c"i64\00", align 1
@39 = private unnamed_addr constant [8 x i8] c"(i32 5)\00", align 1
@40 = private unnamed_addr constant [9 x i8] c"if.else3\00", align 1
@41 = private unnamed_addr constant [7 x i8] c"if.end\00", align 1
@42 = private unnamed_addr constant [10 x i8] c"tmp_main4\00", align 1
@43 = private unnamed_addr constant [10 x i8] c"tmp_main4\00", align 1
@44 = private unnamed_addr constant [14 x i8] c"idxprom5_main\00", align 1
@45 = private unnamed_addr constant [10 x i8] c"tmp_main4\00", align 1
@46 = private unnamed_addr constant [5 x i8] c"sext\00", align 1
@47 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@48 = private unnamed_addr constant [4 x i8] c"i64\00", align 1
@49 = private unnamed_addr constant [10 x i8] c"tmp_main5\00", align 1
@50 = private unnamed_addr constant [10 x i8] c"tmp_main5\00", align 1
@51 = private unnamed_addr constant [10 x i8] c"cmp7_main\00", align 1
@52 = private unnamed_addr constant [10 x i8] c"tmp_main5\00", align 1
@53 = private unnamed_addr constant [3 x i8] c"ne\00", align 1
@54 = private unnamed_addr constant [8 x i8] c"(i32 5)\00", align 1
@55 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@56 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@57 = private unnamed_addr constant [8 x i8] c"if.end4\00", align 1
@58 = private unnamed_addr constant [10 x i8] c"tmp_main6\00", align 1
@59 = private unnamed_addr constant [10 x i8] c"tmp_main6\00", align 1
@60 = private unnamed_addr constant [9 x i8] c"main_RET\00", align 1
@61 = private unnamed_addr constant [10 x i8] c"tmp_main6\00", align 1
@62 = private unnamed_addr constant [7 x i8] c"return\00", align 1

; Function Attrs: noinline norecurse optnone ssp uwtable
define i32 @main() #0 {
entry:
  %retval_main = alloca i32, align 4
  %a_main = alloca [3 x i32], align 4
  %i_main = alloca i32, align 4
  %j_main = alloca i32, align 4
  store i32 0, i32* %retval_main, align 4
  call void @stg_update_store_i32(i32* %retval_main, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @0, i32 0, i32 0))
  %tmp_main = bitcast [3 x i32]* %a_main to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %tmp_main, i8* align 4 bitcast ([3 x i32]* @__const.main.a to i8*), i64 12, i1 false)
  store i32 1, i32* %i_main, align 4
  call void @stg_update_store_i32(i32* %i_main, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @8, i32 0, i32 0))
  store i32 1, i32* %j_main, align 4
  call void @stg_update_store_i32(i32* %j_main, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0))
  call void @stg_begin_test()
  call void @stg_symbolic_variable_int(i32* %i_main, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  call void @stg_symbolic_variable_int(i32* %j_main, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  %tmp_main1 = load i32, i32* %i_main, align 4
  call void @stg_update_load_i32(i32* %i_main, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @11, i32 0, i32 0))
  %cmp_main = icmp sgt i32 %tmp_main1, 2
  call void @stg_update_cmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @16, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp_main, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @18, i32 0, i32 0))
  br i1 %cmp_main, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval_main, align 4
  call void @stg_update_store_i32(i32* %retval_main, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @19, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @20, i32 0, i32 0))
  br label %return

if.else:                                          ; preds = %entry
  %tmp_main2 = load i32, i32* %j_main, align 4
  call void @stg_update_load_i32(i32* %j_main, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @22, i32 0, i32 0))
  %cmp1_main = icmp sgt i32 %tmp_main2, 2
  call void @stg_update_cmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @23, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @27, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp1_main, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @28, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @29, i32 0, i32 0))
  br i1 %cmp1_main, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  store i32 0, i32* %retval_main, align 4
  call void @stg_update_store_i32(i32* %retval_main, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @30, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @31, i32 0, i32 0))
  br label %return

if.else3:                                         ; preds = %if.else
  %tmp_main3 = load i32, i32* %i_main, align 4
  call void @stg_update_load_i32(i32* %i_main, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @33, i32 0, i32 0))
  %idxprom_main = sext i32 %tmp_main3 to i64
  call void @stg_update_cast_i32(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @34, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @35, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @36, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @37, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @38, i32 0, i32 0), i32 %tmp_main3)
  %arrayidx_main = getelementptr inbounds [3 x i32], [3 x i32]* %a_main, i64 0, i64 %idxprom_main
  store i32 5, i32* %arrayidx_main, align 4
  call void @stg_update_store_i32(i32* %arrayidx_main, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @39, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @40, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else3
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @41, i32 0, i32 0))
  br label %if.end4

if.end4:                                          ; preds = %if.end
  call void @stg_end_test()
  %tmp_main4 = load i32, i32* %j_main, align 4
  call void @stg_update_load_i32(i32* %j_main, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @43, i32 0, i32 0))
  %idxprom5_main = sext i32 %tmp_main4 to i64
  call void @stg_update_cast_i32(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @44, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @45, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @46, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @47, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @48, i32 0, i32 0), i32 %tmp_main4)
  %arrayidx6_main = getelementptr inbounds [3 x i32], [3 x i32]* %a_main, i64 0, i64 %idxprom5_main
  %tmp_main5 = load i32, i32* %arrayidx6_main, align 4
  call void @stg_update_load_i32(i32* %arrayidx6_main, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @50, i32 0, i32 0))
  %cmp7_main = icmp ne i32 %tmp_main5, 5
  call void @stg_update_cmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @51, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @52, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @53, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @54, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @55, i32 0, i32 0))
  call void @stg_record_test(i1 zeroext %cmp7_main)
  store i32 0, i32* %retval_main, align 4
  call void @stg_update_store_i32(i32* %retval_main, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @56, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @57, i32 0, i32 0))
  br label %return

return:                                           ; preds = %if.end4, %if.then2, %if.then
  %tmp_main6 = load i32, i32* %retval_main, align 4
  call void @stg_update_load_i32(i32* %retval_main, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @59, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @60, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @61, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @62, i32 0, i32 0))
  ret i32 %tmp_main6
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare void @stg_begin_test() #2

declare void @stg_symbolic_variable_int(i32*, i8*) #2

declare void @stg_end_test() #2

declare void @stg_record_test(i1 zeroext) #2

declare void @stg_update_op(i8*, i8*, i8*, i8*)

declare void @stg_update_una_intrinsic(i8*, i8*, i8*, i8*)

declare void @stg_update_cast_i1(i8*, i8*, i8*, i8*, i8*, i1)

declare void @stg_update_cast_i8(i8*, i8*, i8*, i8*, i8*, i8)

declare void @stg_update_cast_i32(i8*, i8*, i8*, i8*, i8*, i32)

declare void @stg_update_cast_i64(i8*, i8*, i8*, i8*, i8*, i64)

declare void @stg_update_cast_float(i8*, i8*, i8*, i8*, i8*, float)

declare void @stg_update_cast_double(i8*, i8*, i8*, i8*, i8*, double)

declare void @stg_update_pc(i1, i8*)

declare void @stg_update_char(i8*, i8*)

declare void @stg_update_phi(i8*, i8*)

declare void @stg_update_int(i8*, i32, i8*)

declare void @stg_update_load_i32(i32*, i8*)

declare void @stg_update_input_i32(i32*)

declare void @stg_update_input_i64(i64*)

declare void @stg_update_input_float(float*)

declare void @stg_update_input_double(double*)

declare void @stg_update_store_i32(i32*, i8*)

declare void @stg_update_load_i8(i8*, i8*)

declare void @stg_update_store_i8(i8*, i8*)

declare void @stg_update_load_i1(i1*, i8*)

declare void @stg_update_store_i1(i1*, i8*)

declare void @stg_update_load_float(float*, i8*)

declare void @stg_update_store_float(float*, i8*)

declare void @stg_update_cmp(i8*, i8*, i8*, i8*, i8*)

declare void @stg_update_load_i64(i64*, i8*)

declare void @stg_update_store_i64(i64*, i8*)

declare void @stg_update_store_double(double*, i8*)

declare void @stg_update_load_double(double*, i8*)

declare void @stg_update_float(i8*, float, i8*)

declare void @stg_update_double(i8*, double, i8*)

declare void @stg_update_bin_intrinsic(i8*, i8*, i8*, i8*, i8*)

declare void @stg_update_prev_bb(i8*)

declare void @stg_update_select(i8*, i1, i8*, i8*, i8*, i8*)

attributes #0 = { noinline norecurse optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 14]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}

; ModuleID = 'IPUT.bc'
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
@0 = private unnamed_addr constant [4 x i8] c"arr\00", align 1
@1 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@3 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@4 = private unnamed_addr constant [4 x i8] c"arr\00", align 1
@5 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@6 = private unnamed_addr constant [37 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii\00", align 1
@7 = private unnamed_addr constant [37 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii\00", align 1
@8 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@9 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@10 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@11 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@12 = private unnamed_addr constant [38 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii2\00", align 1
@13 = private unnamed_addr constant [38 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii2\00", align 1
@14 = private unnamed_addr constant [38 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii3\00", align 1
@15 = private unnamed_addr constant [38 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii3\00", align 1
@16 = private unnamed_addr constant [37 x i8] c"cmp__Z25getAverageOfAllEvenNUmberPii\00", align 1
@17 = private unnamed_addr constant [38 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii2\00", align 1
@18 = private unnamed_addr constant [4 x i8] c"slt\00", align 1
@19 = private unnamed_addr constant [38 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii3\00", align 1
@20 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@21 = private unnamed_addr constant [37 x i8] c"cmp__Z25getAverageOfAllEvenNUmberPii\00", align 1
@22 = private unnamed_addr constant [9 x i8] c"for.cond\00", align 1
@23 = private unnamed_addr constant [38 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii4\00", align 1
@24 = private unnamed_addr constant [38 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii4\00", align 1
@25 = private unnamed_addr constant [38 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii5\00", align 1
@26 = private unnamed_addr constant [38 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii5\00", align 1
@27 = private unnamed_addr constant [41 x i8] c"idxprom__Z25getAverageOfAllEvenNUmberPii\00", align 1
@28 = private unnamed_addr constant [38 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii5\00", align 1
@29 = private unnamed_addr constant [5 x i8] c"sext\00", align 1
@30 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@31 = private unnamed_addr constant [4 x i8] c"i64\00", align 1
@32 = private unnamed_addr constant [38 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii6\00", align 1
@33 = private unnamed_addr constant [38 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii6\00", align 1
@34 = private unnamed_addr constant [37 x i8] c"rem__Z25getAverageOfAllEvenNUmberPii\00", align 1
@35 = private unnamed_addr constant [38 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii6\00", align 1
@36 = private unnamed_addr constant [5 x i8] c"srem\00", align 1
@37 = private unnamed_addr constant [8 x i8] c"(i32 2)\00", align 1
@38 = private unnamed_addr constant [38 x i8] c"cmp1__Z25getAverageOfAllEvenNUmberPii\00", align 1
@39 = private unnamed_addr constant [37 x i8] c"rem__Z25getAverageOfAllEvenNUmberPii\00", align 1
@40 = private unnamed_addr constant [3 x i8] c"eq\00", align 1
@41 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@42 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@43 = private unnamed_addr constant [38 x i8] c"cmp1__Z25getAverageOfAllEvenNUmberPii\00", align 1
@44 = private unnamed_addr constant [9 x i8] c"for.body\00", align 1
@45 = private unnamed_addr constant [38 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii7\00", align 1
@46 = private unnamed_addr constant [38 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii7\00", align 1
@47 = private unnamed_addr constant [38 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii8\00", align 1
@48 = private unnamed_addr constant [38 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii8\00", align 1
@49 = private unnamed_addr constant [42 x i8] c"idxprom2__Z25getAverageOfAllEvenNUmberPii\00", align 1
@50 = private unnamed_addr constant [38 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii8\00", align 1
@51 = private unnamed_addr constant [5 x i8] c"sext\00", align 1
@52 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@53 = private unnamed_addr constant [4 x i8] c"i64\00", align 1
@54 = private unnamed_addr constant [38 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii9\00", align 1
@55 = private unnamed_addr constant [38 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii9\00", align 1
@56 = private unnamed_addr constant [39 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii10\00", align 1
@57 = private unnamed_addr constant [39 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii10\00", align 1
@58 = private unnamed_addr constant [37 x i8] c"add__Z25getAverageOfAllEvenNUmberPii\00", align 1
@59 = private unnamed_addr constant [39 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii10\00", align 1
@60 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@61 = private unnamed_addr constant [38 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii9\00", align 1
@62 = private unnamed_addr constant [37 x i8] c"add__Z25getAverageOfAllEvenNUmberPii\00", align 1
@63 = private unnamed_addr constant [39 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii11\00", align 1
@64 = private unnamed_addr constant [39 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii11\00", align 1
@65 = private unnamed_addr constant [37 x i8] c"inc__Z25getAverageOfAllEvenNUmberPii\00", align 1
@66 = private unnamed_addr constant [39 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii11\00", align 1
@67 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@68 = private unnamed_addr constant [8 x i8] c"(i32 1)\00", align 1
@69 = private unnamed_addr constant [37 x i8] c"inc__Z25getAverageOfAllEvenNUmberPii\00", align 1
@70 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@71 = private unnamed_addr constant [7 x i8] c"if.end\00", align 1
@72 = private unnamed_addr constant [39 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii12\00", align 1
@73 = private unnamed_addr constant [39 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii12\00", align 1
@74 = private unnamed_addr constant [38 x i8] c"inc4__Z25getAverageOfAllEvenNUmberPii\00", align 1
@75 = private unnamed_addr constant [39 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii12\00", align 1
@76 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@77 = private unnamed_addr constant [8 x i8] c"(i32 1)\00", align 1
@78 = private unnamed_addr constant [38 x i8] c"inc4__Z25getAverageOfAllEvenNUmberPii\00", align 1
@79 = private unnamed_addr constant [8 x i8] c"for.inc\00", align 1
@80 = private unnamed_addr constant [8 x i8] c"for.end\00", align 1
@81 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@82 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@83 = private unnamed_addr constant [9 x i8] c"tmp_main\00", align 1
@84 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@85 = private unnamed_addr constant [8 x i8] c"(i64 8)\00", align 1
@86 = private unnamed_addr constant [7 x i8] c"(i1 0)\00", align 1
@87 = private unnamed_addr constant [26 x i8] c"llvm.memcpy.p0i8.p0i8.i64\00", align 1
@88 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@89 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@90 = private unnamed_addr constant [10 x i8] c"tmp_main1\00", align 1
@91 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@92 = private unnamed_addr constant [8 x i8] c"(i64 8)\00", align 1
@93 = private unnamed_addr constant [7 x i8] c"(i1 0)\00", align 1
@94 = private unnamed_addr constant [26 x i8] c"llvm.memcpy.p0i8.p0i8.i64\00", align 1
@95 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@96 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@97 = private unnamed_addr constant [10 x i8] c"tmp_main2\00", align 1
@98 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@99 = private unnamed_addr constant [8 x i8] c"(i64 8)\00", align 1
@100 = private unnamed_addr constant [7 x i8] c"(i1 0)\00", align 1
@101 = private unnamed_addr constant [26 x i8] c"llvm.memcpy.p0i8.p0i8.i64\00", align 1
@102 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@103 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@104 = private unnamed_addr constant [10 x i8] c"tmp_main3\00", align 1
@105 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@106 = private unnamed_addr constant [8 x i8] c"(i64 8)\00", align 1
@107 = private unnamed_addr constant [7 x i8] c"(i1 0)\00", align 1
@108 = private unnamed_addr constant [26 x i8] c"llvm.memcpy.p0i8.p0i8.i64\00", align 1
@109 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@110 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@111 = private unnamed_addr constant [16 x i8] c"arraydecay_main\00", align 1
@112 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@113 = private unnamed_addr constant [8 x i8] c"(i32 2)\00", align 1
@114 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@115 = private unnamed_addr constant [37 x i8] c"_Z25getAverageOfAllEvenNUmberPii_RET\00", align 1
@116 = private unnamed_addr constant [9 x i8] c"main_RET\00", align 1
@117 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@118 = private unnamed_addr constant [6 x i8] c"entry\00", align 1

; Function Attrs: noinline optnone ssp uwtable
define void @_Z25getAverageOfAllEvenNUmberPii(i32* %arr, i32 %size) #0 {
entry:
  call void @stg_update_char(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @3, i32 0, i32 0))
  %arr.addr__Z25getAverageOfAllEvenNUmberPii = alloca i32*, align 8
  %size.addr__Z25getAverageOfAllEvenNUmberPii = alloca i32, align 4
  %i__Z25getAverageOfAllEvenNUmberPii = alloca i32, align 4
  %count__Z25getAverageOfAllEvenNUmberPii = alloca i32, align 4
  %sum__Z25getAverageOfAllEvenNUmberPii = alloca i32, align 4
  %avg__Z25getAverageOfAllEvenNUmberPii = alloca double, align 8
  store i32* %arr, i32** %arr.addr__Z25getAverageOfAllEvenNUmberPii, align 8
  store i32 %size, i32* %size.addr__Z25getAverageOfAllEvenNUmberPii, align 4
  call void @stg_update_store_i32(i32* %size.addr__Z25getAverageOfAllEvenNUmberPii, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @5, i32 0, i32 0))
  call void @stg_begin_test()
  %tmp__Z25getAverageOfAllEvenNUmberPii = load i32*, i32** %arr.addr__Z25getAverageOfAllEvenNUmberPii, align 8
  %tmp__Z25getAverageOfAllEvenNUmberPii1 = bitcast i32* %tmp__Z25getAverageOfAllEvenNUmberPii to i8*
  call void @stg_symbolic_array(i8* %tmp__Z25getAverageOfAllEvenNUmberPii1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  call void @stg_symbolic_variable_int(i32* %size.addr__Z25getAverageOfAllEvenNUmberPii, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %count__Z25getAverageOfAllEvenNUmberPii, align 4
  call void @stg_update_store_i32(i32* %count__Z25getAverageOfAllEvenNUmberPii, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @8, i32 0, i32 0))
  store i32 0, i32* %sum__Z25getAverageOfAllEvenNUmberPii, align 4
  call void @stg_update_store_i32(i32* %sum__Z25getAverageOfAllEvenNUmberPii, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @9, i32 0, i32 0))
  store i32 0, i32* %i__Z25getAverageOfAllEvenNUmberPii, align 4
  call void @stg_update_store_i32(i32* %i__Z25getAverageOfAllEvenNUmberPii, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @10, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @11, i32 0, i32 0))
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %tmp__Z25getAverageOfAllEvenNUmberPii2 = load i32, i32* %i__Z25getAverageOfAllEvenNUmberPii, align 4
  call void @stg_update_load_i32(i32* %i__Z25getAverageOfAllEvenNUmberPii, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @13, i32 0, i32 0))
  %tmp__Z25getAverageOfAllEvenNUmberPii3 = load i32, i32* %size.addr__Z25getAverageOfAllEvenNUmberPii, align 4
  call void @stg_update_load_i32(i32* %size.addr__Z25getAverageOfAllEvenNUmberPii, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @15, i32 0, i32 0))
  %cmp__Z25getAverageOfAllEvenNUmberPii = icmp slt i32 %tmp__Z25getAverageOfAllEvenNUmberPii2, %tmp__Z25getAverageOfAllEvenNUmberPii3
  call void @stg_update_cmp(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @18, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @20, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp__Z25getAverageOfAllEvenNUmberPii, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @21, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0))
  br i1 %cmp__Z25getAverageOfAllEvenNUmberPii, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %tmp__Z25getAverageOfAllEvenNUmberPii4 = load i32*, i32** %arr.addr__Z25getAverageOfAllEvenNUmberPii, align 8
  %tmp__Z25getAverageOfAllEvenNUmberPii5 = load i32, i32* %i__Z25getAverageOfAllEvenNUmberPii, align 4
  call void @stg_update_load_i32(i32* %i__Z25getAverageOfAllEvenNUmberPii, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @26, i32 0, i32 0))
  %idxprom__Z25getAverageOfAllEvenNUmberPii = sext i32 %tmp__Z25getAverageOfAllEvenNUmberPii5 to i64
  call void @stg_update_cast_i32(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @27, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @29, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @31, i32 0, i32 0), i32 %tmp__Z25getAverageOfAllEvenNUmberPii5)
  %arrayidx__Z25getAverageOfAllEvenNUmberPii = getelementptr inbounds i32, i32* %tmp__Z25getAverageOfAllEvenNUmberPii4, i64 %idxprom__Z25getAverageOfAllEvenNUmberPii
  %tmp__Z25getAverageOfAllEvenNUmberPii6 = load i32, i32* %arrayidx__Z25getAverageOfAllEvenNUmberPii, align 4
  call void @stg_update_load_i32(i32* %arrayidx__Z25getAverageOfAllEvenNUmberPii, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @33, i32 0, i32 0))
  %rem__Z25getAverageOfAllEvenNUmberPii = srem i32 %tmp__Z25getAverageOfAllEvenNUmberPii6, 2
  call void @stg_update_op(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @34, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @35, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @36, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @37, i32 0, i32 0))
  %cmp1__Z25getAverageOfAllEvenNUmberPii = icmp eq i32 %rem__Z25getAverageOfAllEvenNUmberPii, 0
  call void @stg_update_cmp(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @38, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @39, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @40, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @41, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @42, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp1__Z25getAverageOfAllEvenNUmberPii, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @43, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @44, i32 0, i32 0))
  br i1 %cmp1__Z25getAverageOfAllEvenNUmberPii, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %tmp__Z25getAverageOfAllEvenNUmberPii7 = load i32*, i32** %arr.addr__Z25getAverageOfAllEvenNUmberPii, align 8
  %tmp__Z25getAverageOfAllEvenNUmberPii8 = load i32, i32* %i__Z25getAverageOfAllEvenNUmberPii, align 4
  call void @stg_update_load_i32(i32* %i__Z25getAverageOfAllEvenNUmberPii, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @48, i32 0, i32 0))
  %idxprom2__Z25getAverageOfAllEvenNUmberPii = sext i32 %tmp__Z25getAverageOfAllEvenNUmberPii8 to i64
  call void @stg_update_cast_i32(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @49, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @50, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @51, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @52, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @53, i32 0, i32 0), i32 %tmp__Z25getAverageOfAllEvenNUmberPii8)
  %arrayidx3__Z25getAverageOfAllEvenNUmberPii = getelementptr inbounds i32, i32* %tmp__Z25getAverageOfAllEvenNUmberPii7, i64 %idxprom2__Z25getAverageOfAllEvenNUmberPii
  %tmp__Z25getAverageOfAllEvenNUmberPii9 = load i32, i32* %arrayidx3__Z25getAverageOfAllEvenNUmberPii, align 4
  call void @stg_update_load_i32(i32* %arrayidx3__Z25getAverageOfAllEvenNUmberPii, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @55, i32 0, i32 0))
  %tmp__Z25getAverageOfAllEvenNUmberPii10 = load i32, i32* %sum__Z25getAverageOfAllEvenNUmberPii, align 4
  call void @stg_update_load_i32(i32* %sum__Z25getAverageOfAllEvenNUmberPii, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @57, i32 0, i32 0))
  %add__Z25getAverageOfAllEvenNUmberPii = add nsw i32 %tmp__Z25getAverageOfAllEvenNUmberPii10, %tmp__Z25getAverageOfAllEvenNUmberPii9
  call void @stg_update_op(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @58, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @59, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @60, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @61, i32 0, i32 0))
  store i32 %add__Z25getAverageOfAllEvenNUmberPii, i32* %sum__Z25getAverageOfAllEvenNUmberPii, align 4
  call void @stg_update_store_i32(i32* %sum__Z25getAverageOfAllEvenNUmberPii, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @62, i32 0, i32 0))
  %tmp__Z25getAverageOfAllEvenNUmberPii11 = load i32, i32* %count__Z25getAverageOfAllEvenNUmberPii, align 4
  call void @stg_update_load_i32(i32* %count__Z25getAverageOfAllEvenNUmberPii, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @64, i32 0, i32 0))
  %inc__Z25getAverageOfAllEvenNUmberPii = add nsw i32 %tmp__Z25getAverageOfAllEvenNUmberPii11, 1
  call void @stg_update_op(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @65, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @66, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @67, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @68, i32 0, i32 0))
  store i32 %inc__Z25getAverageOfAllEvenNUmberPii, i32* %count__Z25getAverageOfAllEvenNUmberPii, align 4
  call void @stg_update_store_i32(i32* %count__Z25getAverageOfAllEvenNUmberPii, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @69, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @70, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @71, i32 0, i32 0))
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %tmp__Z25getAverageOfAllEvenNUmberPii12 = load i32, i32* %i__Z25getAverageOfAllEvenNUmberPii, align 4
  call void @stg_update_load_i32(i32* %i__Z25getAverageOfAllEvenNUmberPii, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @73, i32 0, i32 0))
  %inc4__Z25getAverageOfAllEvenNUmberPii = add nsw i32 %tmp__Z25getAverageOfAllEvenNUmberPii12, 1
  call void @stg_update_op(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @74, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @75, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @76, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @77, i32 0, i32 0))
  store i32 %inc4__Z25getAverageOfAllEvenNUmberPii, i32* %i__Z25getAverageOfAllEvenNUmberPii, align 4
  call void @stg_update_store_i32(i32* %i__Z25getAverageOfAllEvenNUmberPii, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @78, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @79, i32 0, i32 0))
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @stg_end_test()
  call void @stg_record_test(i1 zeroext true)
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @80, i32 0, i32 0))
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
  %retval_main = alloca i32, align 4
  %arr_2_0_main = alloca [2 x i32], align 4
  %arr_2_1_main = alloca [2 x i32], align 4
  %arr_2_2_main = alloca [2 x i32], align 4
  %arr_2_3_main = alloca [2 x i32], align 4
  store i32 0, i32* %retval_main, align 4
  call void @stg_update_store_i32(i32* %retval_main, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @81, i32 0, i32 0))
  %tmp_main = bitcast [2 x i32]* %arr_2_0_main to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %tmp_main, i8* align 4 bitcast ([2 x i32]* @__const.main.arr_2_0 to i8*), i64 8, i1 false)
  %tmp_main1 = bitcast [2 x i32]* %arr_2_1_main to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %tmp_main1, i8* align 4 bitcast ([2 x i32]* @__const.main.arr_2_1 to i8*), i64 8, i1 false)
  %tmp_main2 = bitcast [2 x i32]* %arr_2_2_main to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %tmp_main2, i8* align 4 bitcast ([2 x i32]* @__const.main.arr_2_2 to i8*), i64 8, i1 false)
  %tmp_main3 = bitcast [2 x i32]* %arr_2_3_main to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %tmp_main3, i8* align 4 bitcast ([2 x i32]* @__const.main.arr_2_3 to i8*), i64 8, i1 false)
  %arraydecay_main = getelementptr inbounds [2 x i32], [2 x i32]* %arr_2_0_main, i32 0, i32 0
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @110, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @111, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @112, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @113, i32 0, i32 0))
  call void @_Z25getAverageOfAllEvenNUmberPii(i32* %arraydecay_main, i32 2)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @114, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @115, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @116, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @117, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @118, i32 0, i32 0))
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

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

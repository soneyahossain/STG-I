; ModuleID = 'IPUT.bc'
source_filename = "updateFutureBonus.cpp"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [8 x i8] c"uniform\00", align 1
@uniform = global i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), align 8
@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"updateFutureBonus.cpp\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"updateFutureBonus(85,82)==5\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"updateFutureBonus(65,67)==3\00", align 1
@0 = private unnamed_addr constant [8 x i8] c"m_score\00", align 1
@1 = private unnamed_addr constant [8 x i8] c"p_score\00", align 1
@2 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@3 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@4 = private unnamed_addr constant [28 x i8] c"tmp__Z17updateFutureBonusii\00", align 1
@5 = private unnamed_addr constant [28 x i8] c"tmp__Z17updateFutureBonusii\00", align 1
@6 = private unnamed_addr constant [28 x i8] c"cmp__Z17updateFutureBonusii\00", align 1
@7 = private unnamed_addr constant [28 x i8] c"tmp__Z17updateFutureBonusii\00", align 1
@8 = private unnamed_addr constant [4 x i8] c"sgt\00", align 1
@9 = private unnamed_addr constant [9 x i8] c"(i32 80)\00", align 1
@10 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@11 = private unnamed_addr constant [28 x i8] c"cmp__Z17updateFutureBonusii\00", align 1
@12 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@13 = private unnamed_addr constant [29 x i8] c"tmp__Z17updateFutureBonusii1\00", align 1
@14 = private unnamed_addr constant [29 x i8] c"tmp__Z17updateFutureBonusii1\00", align 1
@15 = private unnamed_addr constant [28 x i8] c"add__Z17updateFutureBonusii\00", align 1
@16 = private unnamed_addr constant [29 x i8] c"tmp__Z17updateFutureBonusii1\00", align 1
@17 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@18 = private unnamed_addr constant [8 x i8] c"(i32 2)\00", align 1
@19 = private unnamed_addr constant [28 x i8] c"add__Z17updateFutureBonusii\00", align 1
@20 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@21 = private unnamed_addr constant [29 x i8] c"tmp__Z17updateFutureBonusii2\00", align 1
@22 = private unnamed_addr constant [29 x i8] c"tmp__Z17updateFutureBonusii2\00", align 1
@23 = private unnamed_addr constant [29 x i8] c"add1__Z17updateFutureBonusii\00", align 1
@24 = private unnamed_addr constant [29 x i8] c"tmp__Z17updateFutureBonusii2\00", align 1
@25 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@26 = private unnamed_addr constant [8 x i8] c"(i32 1)\00", align 1
@27 = private unnamed_addr constant [29 x i8] c"add1__Z17updateFutureBonusii\00", align 1
@28 = private unnamed_addr constant [8 x i8] c"if.else\00", align 1
@29 = private unnamed_addr constant [29 x i8] c"tmp__Z17updateFutureBonusii3\00", align 1
@30 = private unnamed_addr constant [29 x i8] c"tmp__Z17updateFutureBonusii3\00", align 1
@31 = private unnamed_addr constant [29 x i8] c"cmp2__Z17updateFutureBonusii\00", align 1
@32 = private unnamed_addr constant [29 x i8] c"tmp__Z17updateFutureBonusii3\00", align 1
@33 = private unnamed_addr constant [4 x i8] c"sgt\00", align 1
@34 = private unnamed_addr constant [9 x i8] c"(i32 80)\00", align 1
@35 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@36 = private unnamed_addr constant [29 x i8] c"cmp2__Z17updateFutureBonusii\00", align 1
@37 = private unnamed_addr constant [7 x i8] c"if.end\00", align 1
@38 = private unnamed_addr constant [29 x i8] c"tmp__Z17updateFutureBonusii4\00", align 1
@39 = private unnamed_addr constant [29 x i8] c"tmp__Z17updateFutureBonusii4\00", align 1
@40 = private unnamed_addr constant [29 x i8] c"add4__Z17updateFutureBonusii\00", align 1
@41 = private unnamed_addr constant [29 x i8] c"tmp__Z17updateFutureBonusii4\00", align 1
@42 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@43 = private unnamed_addr constant [8 x i8] c"(i32 3)\00", align 1
@44 = private unnamed_addr constant [29 x i8] c"add4__Z17updateFutureBonusii\00", align 1
@45 = private unnamed_addr constant [9 x i8] c"if.then3\00", align 1
@46 = private unnamed_addr constant [29 x i8] c"tmp__Z17updateFutureBonusii5\00", align 1
@47 = private unnamed_addr constant [29 x i8] c"tmp__Z17updateFutureBonusii5\00", align 1
@48 = private unnamed_addr constant [29 x i8] c"add6__Z17updateFutureBonusii\00", align 1
@49 = private unnamed_addr constant [29 x i8] c"tmp__Z17updateFutureBonusii5\00", align 1
@50 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@51 = private unnamed_addr constant [8 x i8] c"(i32 2)\00", align 1
@52 = private unnamed_addr constant [29 x i8] c"add6__Z17updateFutureBonusii\00", align 1
@53 = private unnamed_addr constant [9 x i8] c"if.else5\00", align 1
@54 = private unnamed_addr constant [29 x i8] c"tmp__Z17updateFutureBonusii6\00", align 1
@55 = private unnamed_addr constant [29 x i8] c"tmp__Z17updateFutureBonusii6\00", align 1
@56 = private unnamed_addr constant [29 x i8] c"cmp8__Z17updateFutureBonusii\00", align 1
@57 = private unnamed_addr constant [29 x i8] c"tmp__Z17updateFutureBonusii6\00", align 1
@58 = private unnamed_addr constant [4 x i8] c"sge\00", align 1
@59 = private unnamed_addr constant [8 x i8] c"(i32 4)\00", align 1
@60 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@61 = private unnamed_addr constant [29 x i8] c"cmp8__Z17updateFutureBonusii\00", align 1
@62 = private unnamed_addr constant [8 x i8] c"if.end7\00", align 1
@63 = private unnamed_addr constant [10 x i8] c"(i32 100)\00", align 1
@64 = private unnamed_addr constant [9 x i8] c"if.then9\00", align 1
@65 = private unnamed_addr constant [9 x i8] c"(i32 50)\00", align 1
@66 = private unnamed_addr constant [10 x i8] c"if.else10\00", align 1
@67 = private unnamed_addr constant [29 x i8] c"tmp__Z17updateFutureBonusii7\00", align 1
@68 = private unnamed_addr constant [29 x i8] c"tmp__Z17updateFutureBonusii7\00", align 1
@69 = private unnamed_addr constant [28 x i8] c"_Z17updateFutureBonusii_RET\00", align 1
@70 = private unnamed_addr constant [29 x i8] c"tmp__Z17updateFutureBonusii7\00", align 1
@71 = private unnamed_addr constant [9 x i8] c"if.end11\00", align 1
@72 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@73 = private unnamed_addr constant [8 x i8] c"m_score\00", align 1
@74 = private unnamed_addr constant [9 x i8] c"(i32 85)\00", align 1
@75 = private unnamed_addr constant [8 x i8] c"p_score\00", align 1
@76 = private unnamed_addr constant [9 x i8] c"(i32 82)\00", align 1
@77 = private unnamed_addr constant [10 x i8] c"call_main\00", align 1
@78 = private unnamed_addr constant [28 x i8] c"_Z17updateFutureBonusii_RET\00", align 1
@79 = private unnamed_addr constant [9 x i8] c"cmp_main\00", align 1
@80 = private unnamed_addr constant [10 x i8] c"call_main\00", align 1
@81 = private unnamed_addr constant [3 x i8] c"eq\00", align 1
@82 = private unnamed_addr constant [8 x i8] c"(i32 5)\00", align 1
@83 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@84 = private unnamed_addr constant [10 x i8] c"lnot_main\00", align 1
@85 = private unnamed_addr constant [9 x i8] c"cmp_main\00", align 1
@86 = private unnamed_addr constant [4 x i8] c"xor\00", align 1
@87 = private unnamed_addr constant [7 x i8] c"(i1 1)\00", align 1
@88 = private unnamed_addr constant [10 x i8] c"lnot_main\00", align 1
@89 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@90 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@91 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@92 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@93 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@94 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@95 = private unnamed_addr constant [9 x i8] c"(i32 29)\00", align 1
@96 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@97 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@98 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@99 = private unnamed_addr constant [17 x i8] c"__assert_rtn_RET\00", align 1
@100 = private unnamed_addr constant [10 x i8] c"cond.true\00", align 1
@101 = private unnamed_addr constant [3 x i8] c"bb\00", align 1
@102 = private unnamed_addr constant [11 x i8] c"cond.false\00", align 1
@103 = private unnamed_addr constant [8 x i8] c"m_score\00", align 1
@104 = private unnamed_addr constant [9 x i8] c"(i32 65)\00", align 1
@105 = private unnamed_addr constant [8 x i8] c"p_score\00", align 1
@106 = private unnamed_addr constant [9 x i8] c"(i32 67)\00", align 1
@107 = private unnamed_addr constant [11 x i8] c"call1_main\00", align 1
@108 = private unnamed_addr constant [28 x i8] c"_Z17updateFutureBonusii_RET\00", align 1
@109 = private unnamed_addr constant [10 x i8] c"cmp2_main\00", align 1
@110 = private unnamed_addr constant [11 x i8] c"call1_main\00", align 1
@111 = private unnamed_addr constant [3 x i8] c"eq\00", align 1
@112 = private unnamed_addr constant [8 x i8] c"(i32 3)\00", align 1
@113 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@114 = private unnamed_addr constant [11 x i8] c"lnot3_main\00", align 1
@115 = private unnamed_addr constant [10 x i8] c"cmp2_main\00", align 1
@116 = private unnamed_addr constant [4 x i8] c"xor\00", align 1
@117 = private unnamed_addr constant [7 x i8] c"(i1 1)\00", align 1
@118 = private unnamed_addr constant [11 x i8] c"lnot3_main\00", align 1
@119 = private unnamed_addr constant [9 x i8] c"cond.end\00", align 1
@120 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@121 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@122 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@123 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@124 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@125 = private unnamed_addr constant [9 x i8] c"(i32 31)\00", align 1
@126 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@127 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@128 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@129 = private unnamed_addr constant [17 x i8] c"__assert_rtn_RET\00", align 1
@130 = private unnamed_addr constant [11 x i8] c"cond.true4\00", align 1
@131 = private unnamed_addr constant [4 x i8] c"bb1\00", align 1
@132 = private unnamed_addr constant [12 x i8] c"cond.false5\00", align 1
@133 = private unnamed_addr constant [9 x i8] c"main_RET\00", align 1
@134 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@135 = private unnamed_addr constant [10 x i8] c"cond.end6\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @_Z17updateFutureBonusii(i32 %m_score, i32 %p_score) #0 {
entry:
  %m_score.addr__Z17updateFutureBonusii = alloca i32, align 4
  %p_score.addr__Z17updateFutureBonusii = alloca i32, align 4
  %score__Z17updateFutureBonusii = alloca i32, align 4
  %bonus__Z17updateFutureBonusii = alloca i32, align 4
  store i32 %m_score, i32* %m_score.addr__Z17updateFutureBonusii, align 4
  call void @stg_update_store_i32(i32* %m_score.addr__Z17updateFutureBonusii, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @0, i32 0, i32 0))
  store i32 %p_score, i32* %p_score.addr__Z17updateFutureBonusii, align 4
  call void @stg_update_store_i32(i32* %p_score.addr__Z17updateFutureBonusii, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @1, i32 0, i32 0))
  store i32 0, i32* %score__Z17updateFutureBonusii, align 4
  call void @stg_update_store_i32(i32* %score__Z17updateFutureBonusii, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @2, i32 0, i32 0))
  store i32 0, i32* %bonus__Z17updateFutureBonusii, align 4
  call void @stg_update_store_i32(i32* %bonus__Z17updateFutureBonusii, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0))
  %tmp__Z17updateFutureBonusii = load i32, i32* %m_score.addr__Z17updateFutureBonusii, align 4
  call void @stg_update_load_i32(i32* %m_score.addr__Z17updateFutureBonusii, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @5, i32 0, i32 0))
  %cmp__Z17updateFutureBonusii = icmp sgt i32 %tmp__Z17updateFutureBonusii, 80
  call void @stg_update_cmp(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @10, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp__Z17updateFutureBonusii, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @11, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @12, i32 0, i32 0))
  br i1 %cmp__Z17updateFutureBonusii, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %tmp__Z17updateFutureBonusii1 = load i32, i32* %score__Z17updateFutureBonusii, align 4
  call void @stg_update_load_i32(i32* %score__Z17updateFutureBonusii, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @14, i32 0, i32 0))
  %add__Z17updateFutureBonusii = add nsw i32 %tmp__Z17updateFutureBonusii1, 2
  call void @stg_update_op(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @18, i32 0, i32 0))
  store i32 %add__Z17updateFutureBonusii, i32* %score__Z17updateFutureBonusii, align 4
  call void @stg_update_store_i32(i32* %score__Z17updateFutureBonusii, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @19, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @20, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %entry
  %tmp__Z17updateFutureBonusii2 = load i32, i32* %score__Z17updateFutureBonusii, align 4
  call void @stg_update_load_i32(i32* %score__Z17updateFutureBonusii, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @22, i32 0, i32 0))
  %add1__Z17updateFutureBonusii = add nsw i32 %tmp__Z17updateFutureBonusii2, 1
  call void @stg_update_op(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @23, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @26, i32 0, i32 0))
  store i32 %add1__Z17updateFutureBonusii, i32* %score__Z17updateFutureBonusii, align 4
  call void @stg_update_store_i32(i32* %score__Z17updateFutureBonusii, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @27, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @28, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %tmp__Z17updateFutureBonusii3 = load i32, i32* %p_score.addr__Z17updateFutureBonusii, align 4
  call void @stg_update_load_i32(i32* %p_score.addr__Z17updateFutureBonusii, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @30, i32 0, i32 0))
  %cmp2__Z17updateFutureBonusii = icmp sgt i32 %tmp__Z17updateFutureBonusii3, 80
  call void @stg_update_cmp(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @31, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @32, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @33, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @34, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @35, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp2__Z17updateFutureBonusii, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @36, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @37, i32 0, i32 0))
  br i1 %cmp2__Z17updateFutureBonusii, label %if.then3, label %if.else5

if.then3:                                         ; preds = %if.end
  %tmp__Z17updateFutureBonusii4 = load i32, i32* %score__Z17updateFutureBonusii, align 4
  call void @stg_update_load_i32(i32* %score__Z17updateFutureBonusii, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @39, i32 0, i32 0))
  %add4__Z17updateFutureBonusii = add nsw i32 %tmp__Z17updateFutureBonusii4, 3
  call void @stg_update_op(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @40, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @41, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @42, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @43, i32 0, i32 0))
  store i32 %add4__Z17updateFutureBonusii, i32* %score__Z17updateFutureBonusii, align 4
  call void @stg_update_store_i32(i32* %score__Z17updateFutureBonusii, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @44, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @45, i32 0, i32 0))
  br label %if.end7

if.else5:                                         ; preds = %if.end
  %tmp__Z17updateFutureBonusii5 = load i32, i32* %score__Z17updateFutureBonusii, align 4
  call void @stg_update_load_i32(i32* %score__Z17updateFutureBonusii, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @47, i32 0, i32 0))
  %add6__Z17updateFutureBonusii = add nsw i32 %tmp__Z17updateFutureBonusii5, 2
  call void @stg_update_op(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @48, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @49, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @50, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @51, i32 0, i32 0))
  store i32 %add6__Z17updateFutureBonusii, i32* %score__Z17updateFutureBonusii, align 4
  call void @stg_update_store_i32(i32* %score__Z17updateFutureBonusii, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @52, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @53, i32 0, i32 0))
  br label %if.end7

if.end7:                                          ; preds = %if.else5, %if.then3
  %tmp__Z17updateFutureBonusii6 = load i32, i32* %score__Z17updateFutureBonusii, align 4
  call void @stg_update_load_i32(i32* %score__Z17updateFutureBonusii, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @55, i32 0, i32 0))
  %cmp8__Z17updateFutureBonusii = icmp sge i32 %tmp__Z17updateFutureBonusii6, 4
  call void @stg_update_cmp(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @56, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @57, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @58, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @59, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @60, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp8__Z17updateFutureBonusii, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @61, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @62, i32 0, i32 0))
  br i1 %cmp8__Z17updateFutureBonusii, label %if.then9, label %if.else10

if.then9:                                         ; preds = %if.end7
  store i32 100, i32* %bonus__Z17updateFutureBonusii, align 4
  call void @stg_update_store_i32(i32* %bonus__Z17updateFutureBonusii, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @63, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @64, i32 0, i32 0))
  br label %if.end11

if.else10:                                        ; preds = %if.end7
  store i32 50, i32* %bonus__Z17updateFutureBonusii, align 4
  call void @stg_update_store_i32(i32* %bonus__Z17updateFutureBonusii, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @65, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @66, i32 0, i32 0))
  br label %if.end11

if.end11:                                         ; preds = %if.else10, %if.then9
  %tmp__Z17updateFutureBonusii7 = load i32, i32* %score__Z17updateFutureBonusii, align 4
  call void @stg_update_load_i32(i32* %score__Z17updateFutureBonusii, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @68, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @69, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @70, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @71, i32 0, i32 0))
  ret i32 %tmp__Z17updateFutureBonusii7
}

; Function Attrs: noinline norecurse optnone ssp uwtable
define i32 @main() #1 {
entry:
  %retval_main = alloca i32, align 4
  store i32 0, i32* %retval_main, align 4
  call void @stg_update_store_i32(i32* %retval_main, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @72, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @73, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @74, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @75, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @76, i32 0, i32 0))
  %call_main = call i32 @_Z17updateFutureBonusii(i32 85, i32 82)
  call void @stg_update_char(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @77, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @78, i32 0, i32 0))
  %cmp_main = icmp eq i32 %call_main, 5
  call void @stg_update_cmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @79, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @80, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @81, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @82, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @83, i32 0, i32 0))
  %lnot_main = xor i1 %cmp_main, true
  call void @stg_update_op(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @84, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @85, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @86, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @87, i32 0, i32 0))
  call void @stg_update_pc(i1 %lnot_main, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @88, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @89, i32 0, i32 0))
  br i1 %lnot_main, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @90, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @91, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @92, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @93, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @94, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @95, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @96, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @97, i32 0, i32 0))
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 29, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0)) #3
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @98, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @99, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @100, i32 0, i32 0))
  unreachable

bb:                                               ; No predecessors!
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @101, i32 0, i32 0))
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @102, i32 0, i32 0))
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %bb
  call void @stg_update_char(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @103, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @104, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @105, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @106, i32 0, i32 0))
  %call1_main = call i32 @_Z17updateFutureBonusii(i32 65, i32 67)
  call void @stg_update_char(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @107, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @108, i32 0, i32 0))
  %cmp2_main = icmp eq i32 %call1_main, 3
  call void @stg_update_cmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @109, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @110, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @111, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @112, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @113, i32 0, i32 0))
  %lnot3_main = xor i1 %cmp2_main, true
  call void @stg_update_op(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @114, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @115, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @116, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @117, i32 0, i32 0))
  call void @stg_update_pc(i1 %lnot3_main, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @118, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @119, i32 0, i32 0))
  br i1 %lnot3_main, label %cond.true4, label %cond.false5

cond.true4:                                       ; preds = %cond.end
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @120, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @121, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @122, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @123, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @124, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @125, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @126, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @127, i32 0, i32 0))
  call void @__assert_rtn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__func__.main, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0)) #3
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @128, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @129, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @130, i32 0, i32 0))
  unreachable

bb1:                                              ; No predecessors!
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @131, i32 0, i32 0))
  br label %cond.end6

cond.false5:                                      ; preds = %cond.end
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @132, i32 0, i32 0))
  br label %cond.end6

cond.end6:                                        ; preds = %cond.false5, %bb1
  call void @stg_update_char(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @133, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @134, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @135, i32 0, i32 0))
  ret i32 0
}

; Function Attrs: noreturn
declare void @__assert_rtn(i8*, i8*, i32, i8*) #2

declare void @stg_update_op(i8*, i8*, i8*, i8*)

declare void @stg_update_cast(i8*, i8*, i8*, i8*)

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

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline norecurse optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="true" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 14]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}

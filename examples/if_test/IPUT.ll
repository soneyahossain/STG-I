; ModuleID = 'IPUT.bc'
source_filename = "if_else_if_else_min.cpp"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [42 x i8] c"among %d, %d, %d ,  minimum number is: %d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@0 = private unnamed_addr constant [5 x i8] c"num1\00", align 1
@1 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2 = private unnamed_addr constant [5 x i8] c"num2\00", align 1
@3 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@4 = private unnamed_addr constant [5 x i8] c"num3\00", align 1
@5 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@6 = private unnamed_addr constant [5 x i8] c"num1\00", align 1
@7 = private unnamed_addr constant [5 x i8] c"num2\00", align 1
@8 = private unnamed_addr constant [5 x i8] c"num3\00", align 1
@9 = private unnamed_addr constant [19 x i8] c"tmp__Z8find_miniii\00", align 1
@10 = private unnamed_addr constant [19 x i8] c"tmp__Z8find_miniii\00", align 1
@11 = private unnamed_addr constant [20 x i8] c"tmp__Z8find_miniii1\00", align 1
@12 = private unnamed_addr constant [20 x i8] c"tmp__Z8find_miniii1\00", align 1
@13 = private unnamed_addr constant [19 x i8] c"cmp__Z8find_miniii\00", align 1
@14 = private unnamed_addr constant [19 x i8] c"tmp__Z8find_miniii\00", align 1
@15 = private unnamed_addr constant [4 x i8] c"slt\00", align 1
@16 = private unnamed_addr constant [20 x i8] c"tmp__Z8find_miniii1\00", align 1
@17 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@18 = private unnamed_addr constant [19 x i8] c"cmp__Z8find_miniii\00", align 1
@19 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@20 = private unnamed_addr constant [20 x i8] c"tmp__Z8find_miniii2\00", align 1
@21 = private unnamed_addr constant [20 x i8] c"tmp__Z8find_miniii2\00", align 1
@22 = private unnamed_addr constant [20 x i8] c"tmp__Z8find_miniii3\00", align 1
@23 = private unnamed_addr constant [20 x i8] c"tmp__Z8find_miniii3\00", align 1
@24 = private unnamed_addr constant [20 x i8] c"cmp1__Z8find_miniii\00", align 1
@25 = private unnamed_addr constant [20 x i8] c"tmp__Z8find_miniii2\00", align 1
@26 = private unnamed_addr constant [4 x i8] c"slt\00", align 1
@27 = private unnamed_addr constant [20 x i8] c"tmp__Z8find_miniii3\00", align 1
@28 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@29 = private unnamed_addr constant [20 x i8] c"cmp1__Z8find_miniii\00", align 1
@30 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@31 = private unnamed_addr constant [20 x i8] c"tmp__Z8find_miniii4\00", align 1
@32 = private unnamed_addr constant [20 x i8] c"tmp__Z8find_miniii4\00", align 1
@33 = private unnamed_addr constant [20 x i8] c"tmp__Z8find_miniii4\00", align 1
@34 = private unnamed_addr constant [9 x i8] c"if.then2\00", align 1
@35 = private unnamed_addr constant [20 x i8] c"tmp__Z8find_miniii5\00", align 1
@36 = private unnamed_addr constant [20 x i8] c"tmp__Z8find_miniii5\00", align 1
@37 = private unnamed_addr constant [20 x i8] c"tmp__Z8find_miniii5\00", align 1
@38 = private unnamed_addr constant [8 x i8] c"if.else\00", align 1
@39 = private unnamed_addr constant [7 x i8] c"if.end\00", align 1
@40 = private unnamed_addr constant [20 x i8] c"tmp__Z8find_miniii6\00", align 1
@41 = private unnamed_addr constant [20 x i8] c"tmp__Z8find_miniii6\00", align 1
@42 = private unnamed_addr constant [20 x i8] c"tmp__Z8find_miniii7\00", align 1
@43 = private unnamed_addr constant [20 x i8] c"tmp__Z8find_miniii7\00", align 1
@44 = private unnamed_addr constant [20 x i8] c"cmp4__Z8find_miniii\00", align 1
@45 = private unnamed_addr constant [20 x i8] c"tmp__Z8find_miniii6\00", align 1
@46 = private unnamed_addr constant [4 x i8] c"slt\00", align 1
@47 = private unnamed_addr constant [20 x i8] c"tmp__Z8find_miniii7\00", align 1
@48 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@49 = private unnamed_addr constant [20 x i8] c"cmp4__Z8find_miniii\00", align 1
@50 = private unnamed_addr constant [9 x i8] c"if.else3\00", align 1
@51 = private unnamed_addr constant [20 x i8] c"tmp__Z8find_miniii8\00", align 1
@52 = private unnamed_addr constant [20 x i8] c"tmp__Z8find_miniii8\00", align 1
@53 = private unnamed_addr constant [20 x i8] c"tmp__Z8find_miniii8\00", align 1
@54 = private unnamed_addr constant [9 x i8] c"if.then5\00", align 1
@55 = private unnamed_addr constant [20 x i8] c"tmp__Z8find_miniii9\00", align 1
@56 = private unnamed_addr constant [20 x i8] c"tmp__Z8find_miniii9\00", align 1
@57 = private unnamed_addr constant [20 x i8] c"tmp__Z8find_miniii9\00", align 1
@58 = private unnamed_addr constant [9 x i8] c"if.else6\00", align 1
@59 = private unnamed_addr constant [8 x i8] c"if.end7\00", align 1
@60 = private unnamed_addr constant [21 x i8] c"tmp__Z8find_miniii10\00", align 1
@61 = private unnamed_addr constant [21 x i8] c"tmp__Z8find_miniii10\00", align 1
@62 = private unnamed_addr constant [21 x i8] c"tmp__Z8find_miniii11\00", align 1
@63 = private unnamed_addr constant [21 x i8] c"tmp__Z8find_miniii11\00", align 1
@64 = private unnamed_addr constant [21 x i8] c"tmp__Z8find_miniii12\00", align 1
@65 = private unnamed_addr constant [21 x i8] c"tmp__Z8find_miniii12\00", align 1
@66 = private unnamed_addr constant [21 x i8] c"tmp__Z8find_miniii13\00", align 1
@67 = private unnamed_addr constant [21 x i8] c"tmp__Z8find_miniii13\00", align 1
@68 = private unnamed_addr constant [21 x i8] c"tmp__Z8find_miniii14\00", align 1
@69 = private unnamed_addr constant [21 x i8] c"tmp__Z8find_miniii14\00", align 1
@70 = private unnamed_addr constant [19 x i8] c"_Z8find_miniii_RET\00", align 1
@71 = private unnamed_addr constant [21 x i8] c"tmp__Z8find_miniii14\00", align 1
@72 = private unnamed_addr constant [8 x i8] c"if.end8\00", align 1
@73 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@74 = private unnamed_addr constant [9 x i8] c"(i32 38)\00", align 1
@75 = private unnamed_addr constant [9 x i8] c"(i32 78)\00", align 1
@76 = private unnamed_addr constant [9 x i8] c"(i32 78)\00", align 1
@77 = private unnamed_addr constant [9 x i8] c"tmp_main\00", align 1
@78 = private unnamed_addr constant [9 x i8] c"tmp_main\00", align 1
@79 = private unnamed_addr constant [10 x i8] c"tmp_main1\00", align 1
@80 = private unnamed_addr constant [10 x i8] c"tmp_main1\00", align 1
@81 = private unnamed_addr constant [10 x i8] c"tmp_main2\00", align 1
@82 = private unnamed_addr constant [10 x i8] c"tmp_main2\00", align 1
@83 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@84 = private unnamed_addr constant [9 x i8] c"tmp_main\00", align 1
@85 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@86 = private unnamed_addr constant [10 x i8] c"tmp_main1\00", align 1
@87 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@88 = private unnamed_addr constant [10 x i8] c"tmp_main2\00", align 1
@89 = private unnamed_addr constant [10 x i8] c"call_main\00", align 1
@90 = private unnamed_addr constant [19 x i8] c"_Z8find_miniii_RET\00", align 1
@91 = private unnamed_addr constant [12 x i8] c"tobool_main\00", align 1
@92 = private unnamed_addr constant [10 x i8] c"call_main\00", align 1
@93 = private unnamed_addr constant [3 x i8] c"ne\00", align 1
@94 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@95 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@96 = private unnamed_addr constant [14 x i8] c"frombool_main\00", align 1
@97 = private unnamed_addr constant [12 x i8] c"tobool_main\00", align 1
@98 = private unnamed_addr constant [5 x i8] c"zext\00", align 1
@99 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@100 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@101 = private unnamed_addr constant [14 x i8] c"frombool_main\00", align 1
@102 = private unnamed_addr constant [10 x i8] c"tmp_main3\00", align 1
@103 = private unnamed_addr constant [10 x i8] c"tmp_main3\00", align 1
@104 = private unnamed_addr constant [13 x i8] c"tobool1_main\00", align 1
@105 = private unnamed_addr constant [10 x i8] c"tmp_main3\00", align 1
@106 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@107 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@108 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@109 = private unnamed_addr constant [8 x i8] c"(i32 1)\00", align 1
@110 = private unnamed_addr constant [8 x i8] c"(i32 4)\00", align 1
@111 = private unnamed_addr constant [8 x i8] c"(i32 3)\00", align 1
@112 = private unnamed_addr constant [10 x i8] c"tmp_main4\00", align 1
@113 = private unnamed_addr constant [10 x i8] c"tmp_main4\00", align 1
@114 = private unnamed_addr constant [10 x i8] c"tmp_main5\00", align 1
@115 = private unnamed_addr constant [10 x i8] c"tmp_main5\00", align 1
@116 = private unnamed_addr constant [10 x i8] c"tmp_main6\00", align 1
@117 = private unnamed_addr constant [10 x i8] c"tmp_main6\00", align 1
@118 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@119 = private unnamed_addr constant [10 x i8] c"tmp_main4\00", align 1
@120 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@121 = private unnamed_addr constant [10 x i8] c"tmp_main5\00", align 1
@122 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@123 = private unnamed_addr constant [10 x i8] c"tmp_main6\00", align 1
@124 = private unnamed_addr constant [11 x i8] c"call2_main\00", align 1
@125 = private unnamed_addr constant [19 x i8] c"_Z8find_miniii_RET\00", align 1
@126 = private unnamed_addr constant [13 x i8] c"tobool3_main\00", align 1
@127 = private unnamed_addr constant [11 x i8] c"call2_main\00", align 1
@128 = private unnamed_addr constant [3 x i8] c"ne\00", align 1
@129 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@130 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@131 = private unnamed_addr constant [15 x i8] c"frombool4_main\00", align 1
@132 = private unnamed_addr constant [13 x i8] c"tobool3_main\00", align 1
@133 = private unnamed_addr constant [5 x i8] c"zext\00", align 1
@134 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@135 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@136 = private unnamed_addr constant [15 x i8] c"frombool4_main\00", align 1
@137 = private unnamed_addr constant [10 x i8] c"tmp_main7\00", align 1
@138 = private unnamed_addr constant [10 x i8] c"tmp_main7\00", align 1
@139 = private unnamed_addr constant [13 x i8] c"tobool5_main\00", align 1
@140 = private unnamed_addr constant [10 x i8] c"tmp_main7\00", align 1
@141 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@142 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@143 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@144 = private unnamed_addr constant [8 x i8] c"(i32 1)\00", align 1
@145 = private unnamed_addr constant [8 x i8] c"(i32 1)\00", align 1
@146 = private unnamed_addr constant [8 x i8] c"(i32 1)\00", align 1
@147 = private unnamed_addr constant [10 x i8] c"tmp_main8\00", align 1
@148 = private unnamed_addr constant [10 x i8] c"tmp_main8\00", align 1
@149 = private unnamed_addr constant [10 x i8] c"tmp_main9\00", align 1
@150 = private unnamed_addr constant [10 x i8] c"tmp_main9\00", align 1
@151 = private unnamed_addr constant [11 x i8] c"tmp_main10\00", align 1
@152 = private unnamed_addr constant [11 x i8] c"tmp_main10\00", align 1
@153 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@154 = private unnamed_addr constant [10 x i8] c"tmp_main8\00", align 1
@155 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@156 = private unnamed_addr constant [10 x i8] c"tmp_main9\00", align 1
@157 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@158 = private unnamed_addr constant [11 x i8] c"tmp_main10\00", align 1
@159 = private unnamed_addr constant [11 x i8] c"call6_main\00", align 1
@160 = private unnamed_addr constant [19 x i8] c"_Z8find_miniii_RET\00", align 1
@161 = private unnamed_addr constant [13 x i8] c"tobool7_main\00", align 1
@162 = private unnamed_addr constant [11 x i8] c"call6_main\00", align 1
@163 = private unnamed_addr constant [3 x i8] c"ne\00", align 1
@164 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@165 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@166 = private unnamed_addr constant [15 x i8] c"frombool8_main\00", align 1
@167 = private unnamed_addr constant [13 x i8] c"tobool7_main\00", align 1
@168 = private unnamed_addr constant [5 x i8] c"zext\00", align 1
@169 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@170 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@171 = private unnamed_addr constant [15 x i8] c"frombool8_main\00", align 1
@172 = private unnamed_addr constant [11 x i8] c"tmp_main11\00", align 1
@173 = private unnamed_addr constant [11 x i8] c"tmp_main11\00", align 1
@174 = private unnamed_addr constant [13 x i8] c"tobool9_main\00", align 1
@175 = private unnamed_addr constant [11 x i8] c"tmp_main11\00", align 1
@176 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@177 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@178 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@179 = private unnamed_addr constant [9 x i8] c"main_RET\00", align 1
@180 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@181 = private unnamed_addr constant [6 x i8] c"entry\00", align 1

; Function Attrs: noinline optnone ssp uwtable
define i32 @_Z8find_miniii(i32 %num1, i32 %num2, i32 %num3) #0 {
entry:
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @3, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @5, i32 0, i32 0))
  %num1.addr__Z8find_miniii = alloca i32, align 4
  %num2.addr__Z8find_miniii = alloca i32, align 4
  %num3.addr__Z8find_miniii = alloca i32, align 4
  %min__Z8find_miniii = alloca i32, align 4
  store i32 %num1, i32* %num1.addr__Z8find_miniii, align 4
  call void @stg_update_store_i32(i32* %num1.addr__Z8find_miniii, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @6, i32 0, i32 0))
  store i32 %num2, i32* %num2.addr__Z8find_miniii, align 4
  call void @stg_update_store_i32(i32* %num2.addr__Z8find_miniii, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @7, i32 0, i32 0))
  store i32 %num3, i32* %num3.addr__Z8find_miniii, align 4
  call void @stg_update_store_i32(i32* %num3.addr__Z8find_miniii, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @8, i32 0, i32 0))
  %tmp__Z8find_miniii = load i32, i32* %num1.addr__Z8find_miniii, align 4
  call void @stg_update_load_i32(i32* %num1.addr__Z8find_miniii, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @10, i32 0, i32 0))
  %tmp__Z8find_miniii1 = load i32, i32* %num2.addr__Z8find_miniii, align 4
  call void @stg_update_load_i32(i32* %num2.addr__Z8find_miniii, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @12, i32 0, i32 0))
  %cmp__Z8find_miniii = icmp slt i32 %tmp__Z8find_miniii, %tmp__Z8find_miniii1
  call void @stg_update_cmp(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @17, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp__Z8find_miniii, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @18, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @19, i32 0, i32 0))
  br i1 %cmp__Z8find_miniii, label %if.then, label %if.else3

if.then:                                          ; preds = %entry
  %tmp__Z8find_miniii2 = load i32, i32* %num1.addr__Z8find_miniii, align 4
  call void @stg_update_load_i32(i32* %num1.addr__Z8find_miniii, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @21, i32 0, i32 0))
  %tmp__Z8find_miniii3 = load i32, i32* %num3.addr__Z8find_miniii, align 4
  call void @stg_update_load_i32(i32* %num3.addr__Z8find_miniii, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @23, i32 0, i32 0))
  %cmp1__Z8find_miniii = icmp slt i32 %tmp__Z8find_miniii2, %tmp__Z8find_miniii3
  call void @stg_update_cmp(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @27, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @28, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp1__Z8find_miniii, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @29, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @30, i32 0, i32 0))
  br i1 %cmp1__Z8find_miniii, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %tmp__Z8find_miniii4 = load i32, i32* %num1.addr__Z8find_miniii, align 4
  call void @stg_update_load_i32(i32* %num1.addr__Z8find_miniii, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @32, i32 0, i32 0))
  store i32 %tmp__Z8find_miniii4, i32* %min__Z8find_miniii, align 4
  call void @stg_update_store_i32(i32* %min__Z8find_miniii, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @33, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @34, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %if.then
  %tmp__Z8find_miniii5 = load i32, i32* %num3.addr__Z8find_miniii, align 4
  call void @stg_update_load_i32(i32* %num3.addr__Z8find_miniii, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @36, i32 0, i32 0))
  store i32 %tmp__Z8find_miniii5, i32* %min__Z8find_miniii, align 4
  call void @stg_update_store_i32(i32* %min__Z8find_miniii, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @37, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @38, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @39, i32 0, i32 0))
  br label %if.end8

if.else3:                                         ; preds = %entry
  %tmp__Z8find_miniii6 = load i32, i32* %num2.addr__Z8find_miniii, align 4
  call void @stg_update_load_i32(i32* %num2.addr__Z8find_miniii, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @41, i32 0, i32 0))
  %tmp__Z8find_miniii7 = load i32, i32* %num3.addr__Z8find_miniii, align 4
  call void @stg_update_load_i32(i32* %num3.addr__Z8find_miniii, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @43, i32 0, i32 0))
  %cmp4__Z8find_miniii = icmp slt i32 %tmp__Z8find_miniii6, %tmp__Z8find_miniii7
  call void @stg_update_cmp(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @44, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @45, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @46, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @47, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @48, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp4__Z8find_miniii, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @49, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @50, i32 0, i32 0))
  br i1 %cmp4__Z8find_miniii, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else3
  %tmp__Z8find_miniii8 = load i32, i32* %num2.addr__Z8find_miniii, align 4
  call void @stg_update_load_i32(i32* %num2.addr__Z8find_miniii, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @52, i32 0, i32 0))
  store i32 %tmp__Z8find_miniii8, i32* %min__Z8find_miniii, align 4
  call void @stg_update_store_i32(i32* %min__Z8find_miniii, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @53, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @54, i32 0, i32 0))
  br label %if.end7

if.else6:                                         ; preds = %if.else3
  %tmp__Z8find_miniii9 = load i32, i32* %num3.addr__Z8find_miniii, align 4
  call void @stg_update_load_i32(i32* %num3.addr__Z8find_miniii, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @56, i32 0, i32 0))
  store i32 %tmp__Z8find_miniii9, i32* %min__Z8find_miniii, align 4
  call void @stg_update_store_i32(i32* %min__Z8find_miniii, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @57, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @58, i32 0, i32 0))
  br label %if.end7

if.end7:                                          ; preds = %if.else6, %if.then5
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @59, i32 0, i32 0))
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.end
  %tmp__Z8find_miniii10 = load i32, i32* %num1.addr__Z8find_miniii, align 4
  call void @stg_update_load_i32(i32* %num1.addr__Z8find_miniii, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @61, i32 0, i32 0))
  %tmp__Z8find_miniii11 = load i32, i32* %num2.addr__Z8find_miniii, align 4
  call void @stg_update_load_i32(i32* %num2.addr__Z8find_miniii, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @63, i32 0, i32 0))
  %tmp__Z8find_miniii12 = load i32, i32* %num3.addr__Z8find_miniii, align 4
  call void @stg_update_load_i32(i32* %num3.addr__Z8find_miniii, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @65, i32 0, i32 0))
  %tmp__Z8find_miniii13 = load i32, i32* %min__Z8find_miniii, align 4
  call void @stg_update_load_i32(i32* %min__Z8find_miniii, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @67, i32 0, i32 0))
  %call__Z8find_miniii = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i32 0, i32 0), i32 %tmp__Z8find_miniii10, i32 %tmp__Z8find_miniii11, i32 %tmp__Z8find_miniii12, i32 %tmp__Z8find_miniii13)
  %tmp__Z8find_miniii14 = load i32, i32* %min__Z8find_miniii, align 4
  call void @stg_update_load_i32(i32* %min__Z8find_miniii, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @69, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @70, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @71, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @72, i32 0, i32 0))
  ret i32 %tmp__Z8find_miniii14
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline norecurse optnone ssp uwtable
define i32 @main() #2 {
entry:
  %retval_main = alloca i32, align 4
  %a_main = alloca i32, align 4
  %b_main = alloca i32, align 4
  %c_main = alloca i32, align 4
  %testpassed_main = alloca i8, align 1
  store i32 0, i32* %retval_main, align 4
  call void @stg_update_store_i32(i32* %retval_main, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @73, i32 0, i32 0))
  store i32 38, i32* %a_main, align 4
  call void @stg_update_store_i32(i32* %a_main, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @74, i32 0, i32 0))
  store i32 78, i32* %b_main, align 4
  call void @stg_update_store_i32(i32* %b_main, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @75, i32 0, i32 0))
  store i32 78, i32* %c_main, align 4
  call void @stg_update_store_i32(i32* %c_main, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @76, i32 0, i32 0))
  call void @stg_begin_test()
  call void @stg_symbolic_variable_int(i32* %a_main, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  call void @stg_symbolic_variable_int(i32* %b_main, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  call void @stg_symbolic_variable_int(i32* %c_main, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  %tmp_main = load i32, i32* %a_main, align 4
  call void @stg_update_load_i32(i32* %a_main, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @78, i32 0, i32 0))
  %tmp_main1 = load i32, i32* %b_main, align 4
  call void @stg_update_load_i32(i32* %b_main, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @80, i32 0, i32 0))
  %tmp_main2 = load i32, i32* %c_main, align 4
  call void @stg_update_load_i32(i32* %c_main, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @82, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @83, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @84, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @85, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @86, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @87, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @88, i32 0, i32 0))
  %call_main = call i32 @_Z8find_miniii(i32 %tmp_main, i32 %tmp_main1, i32 %tmp_main2)
  call void @stg_update_char(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @89, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @90, i32 0, i32 0))
  %tobool_main = icmp ne i32 %call_main, 0
  call void @stg_update_cmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @91, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @92, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @93, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @94, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @95, i32 0, i32 0))
  call void @stg_update_cast_i1(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @96, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @97, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @98, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @99, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @100, i32 0, i32 0), i1 %tobool_main)
  %frombool_main = zext i1 %tobool_main to i8
  store i8 %frombool_main, i8* %testpassed_main, align 1
  call void @stg_update_store_i8(i8* %testpassed_main, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @101, i32 0, i32 0))
  call void @stg_end_test()
  %tmp_main3 = load i8, i8* %testpassed_main, align 1
  call void @stg_update_load_i8(i8* %testpassed_main, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @103, i32 0, i32 0))
  %tobool1_main = trunc i8 %tmp_main3 to i1
  call void @stg_update_cast_i8(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @104, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @105, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @106, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @107, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @108, i32 0, i32 0), i8 %tmp_main3)
  call void @stg_record_test(i1 zeroext %tobool1_main)
  store i32 1, i32* %a_main, align 4
  call void @stg_update_store_i32(i32* %a_main, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @109, i32 0, i32 0))
  store i32 4, i32* %b_main, align 4
  call void @stg_update_store_i32(i32* %b_main, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @110, i32 0, i32 0))
  store i32 3, i32* %c_main, align 4
  call void @stg_update_store_i32(i32* %c_main, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @111, i32 0, i32 0))
  call void @stg_begin_test()
  call void @stg_symbolic_variable_int(i32* %a_main, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  call void @stg_symbolic_variable_int(i32* %b_main, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  call void @stg_symbolic_variable_int(i32* %c_main, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  %tmp_main4 = load i32, i32* %a_main, align 4
  call void @stg_update_load_i32(i32* %a_main, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @113, i32 0, i32 0))
  %tmp_main5 = load i32, i32* %b_main, align 4
  call void @stg_update_load_i32(i32* %b_main, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @115, i32 0, i32 0))
  %tmp_main6 = load i32, i32* %c_main, align 4
  call void @stg_update_load_i32(i32* %c_main, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @117, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @118, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @119, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @120, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @121, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @122, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @123, i32 0, i32 0))
  %call2_main = call i32 @_Z8find_miniii(i32 %tmp_main4, i32 %tmp_main5, i32 %tmp_main6)
  call void @stg_update_char(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @124, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @125, i32 0, i32 0))
  %tobool3_main = icmp ne i32 %call2_main, 0
  call void @stg_update_cmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @126, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @127, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @128, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @129, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @130, i32 0, i32 0))
  call void @stg_update_cast_i1(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @131, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @132, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @133, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @134, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @135, i32 0, i32 0), i1 %tobool3_main)
  %frombool4_main = zext i1 %tobool3_main to i8
  store i8 %frombool4_main, i8* %testpassed_main, align 1
  call void @stg_update_store_i8(i8* %testpassed_main, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @136, i32 0, i32 0))
  call void @stg_end_test()
  %tmp_main7 = load i8, i8* %testpassed_main, align 1
  call void @stg_update_load_i8(i8* %testpassed_main, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @138, i32 0, i32 0))
  %tobool5_main = trunc i8 %tmp_main7 to i1
  call void @stg_update_cast_i8(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @139, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @140, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @141, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @142, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @143, i32 0, i32 0), i8 %tmp_main7)
  call void @stg_record_test(i1 zeroext %tobool5_main)
  store i32 1, i32* %a_main, align 4
  call void @stg_update_store_i32(i32* %a_main, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @144, i32 0, i32 0))
  store i32 1, i32* %b_main, align 4
  call void @stg_update_store_i32(i32* %b_main, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @145, i32 0, i32 0))
  store i32 1, i32* %c_main, align 4
  call void @stg_update_store_i32(i32* %c_main, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @146, i32 0, i32 0))
  call void @stg_begin_test()
  call void @stg_symbolic_variable_int(i32* %a_main, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  call void @stg_symbolic_variable_int(i32* %b_main, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  call void @stg_symbolic_variable_int(i32* %c_main, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  %tmp_main8 = load i32, i32* %a_main, align 4
  call void @stg_update_load_i32(i32* %a_main, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @148, i32 0, i32 0))
  %tmp_main9 = load i32, i32* %b_main, align 4
  call void @stg_update_load_i32(i32* %b_main, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @150, i32 0, i32 0))
  %tmp_main10 = load i32, i32* %c_main, align 4
  call void @stg_update_load_i32(i32* %c_main, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @152, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @153, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @154, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @155, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @156, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @157, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @158, i32 0, i32 0))
  %call6_main = call i32 @_Z8find_miniii(i32 %tmp_main8, i32 %tmp_main9, i32 %tmp_main10)
  call void @stg_update_char(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @159, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @160, i32 0, i32 0))
  %tobool7_main = icmp ne i32 %call6_main, 0
  call void @stg_update_cmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @161, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @162, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @163, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @164, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @165, i32 0, i32 0))
  call void @stg_update_cast_i1(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @166, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @167, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @168, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @169, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @170, i32 0, i32 0), i1 %tobool7_main)
  %frombool8_main = zext i1 %tobool7_main to i8
  store i8 %frombool8_main, i8* %testpassed_main, align 1
  call void @stg_update_store_i8(i8* %testpassed_main, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @171, i32 0, i32 0))
  call void @stg_end_test()
  %tmp_main11 = load i8, i8* %testpassed_main, align 1
  call void @stg_update_load_i8(i8* %testpassed_main, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @173, i32 0, i32 0))
  %tobool9_main = trunc i8 %tmp_main11 to i1
  call void @stg_update_cast_i8(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @174, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @175, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @176, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @177, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @178, i32 0, i32 0), i8 %tmp_main11)
  call void @stg_record_test(i1 zeroext %tobool9_main)
  call void @stg_update_char(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @179, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @180, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @181, i32 0, i32 0))
  ret i32 0
}

declare void @stg_begin_test() #1

declare void @stg_symbolic_variable_int(i32*, i8*) #1

declare void @stg_end_test() #1

declare void @stg_record_test(i1 zeroext) #1

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

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 14]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}

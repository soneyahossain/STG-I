; ModuleID = 'IPUT.bc'
source_filename = "nested_if_else.cpp"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@0 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@1 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@3 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@4 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@5 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@6 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@7 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@8 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@9 = private unnamed_addr constant [22 x i8] c"tmp__Z10isMaxOrMiniii\00", align 1
@10 = private unnamed_addr constant [22 x i8] c"tmp__Z10isMaxOrMiniii\00", align 1
@11 = private unnamed_addr constant [23 x i8] c"tmp__Z10isMaxOrMiniii1\00", align 1
@12 = private unnamed_addr constant [23 x i8] c"tmp__Z10isMaxOrMiniii1\00", align 1
@13 = private unnamed_addr constant [22 x i8] c"cmp__Z10isMaxOrMiniii\00", align 1
@14 = private unnamed_addr constant [22 x i8] c"tmp__Z10isMaxOrMiniii\00", align 1
@15 = private unnamed_addr constant [4 x i8] c"sgt\00", align 1
@16 = private unnamed_addr constant [23 x i8] c"tmp__Z10isMaxOrMiniii1\00", align 1
@17 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@18 = private unnamed_addr constant [22 x i8] c"cmp__Z10isMaxOrMiniii\00", align 1
@19 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@20 = private unnamed_addr constant [23 x i8] c"tmp__Z10isMaxOrMiniii2\00", align 1
@21 = private unnamed_addr constant [23 x i8] c"tmp__Z10isMaxOrMiniii2\00", align 1
@22 = private unnamed_addr constant [23 x i8] c"tmp__Z10isMaxOrMiniii3\00", align 1
@23 = private unnamed_addr constant [23 x i8] c"tmp__Z10isMaxOrMiniii3\00", align 1
@24 = private unnamed_addr constant [23 x i8] c"cmp1__Z10isMaxOrMiniii\00", align 1
@25 = private unnamed_addr constant [23 x i8] c"tmp__Z10isMaxOrMiniii2\00", align 1
@26 = private unnamed_addr constant [4 x i8] c"sgt\00", align 1
@27 = private unnamed_addr constant [23 x i8] c"tmp__Z10isMaxOrMiniii3\00", align 1
@28 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@29 = private unnamed_addr constant [23 x i8] c"cmp1__Z10isMaxOrMiniii\00", align 1
@30 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@31 = private unnamed_addr constant [7 x i8] c"(i1 1)\00", align 1
@32 = private unnamed_addr constant [9 x i8] c"if.then2\00", align 1
@33 = private unnamed_addr constant [7 x i8] c"(i1 0)\00", align 1
@34 = private unnamed_addr constant [8 x i8] c"if.else\00", align 1
@35 = private unnamed_addr constant [23 x i8] c"tmp__Z10isMaxOrMiniii4\00", align 1
@36 = private unnamed_addr constant [23 x i8] c"tmp__Z10isMaxOrMiniii4\00", align 1
@37 = private unnamed_addr constant [23 x i8] c"tmp__Z10isMaxOrMiniii5\00", align 1
@38 = private unnamed_addr constant [23 x i8] c"tmp__Z10isMaxOrMiniii5\00", align 1
@39 = private unnamed_addr constant [23 x i8] c"cmp4__Z10isMaxOrMiniii\00", align 1
@40 = private unnamed_addr constant [23 x i8] c"tmp__Z10isMaxOrMiniii4\00", align 1
@41 = private unnamed_addr constant [4 x i8] c"sgt\00", align 1
@42 = private unnamed_addr constant [23 x i8] c"tmp__Z10isMaxOrMiniii5\00", align 1
@43 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@44 = private unnamed_addr constant [23 x i8] c"cmp4__Z10isMaxOrMiniii\00", align 1
@45 = private unnamed_addr constant [9 x i8] c"if.else3\00", align 1
@46 = private unnamed_addr constant [7 x i8] c"(i1 1)\00", align 1
@47 = private unnamed_addr constant [9 x i8] c"if.then5\00", align 1
@48 = private unnamed_addr constant [7 x i8] c"(i1 0)\00", align 1
@49 = private unnamed_addr constant [9 x i8] c"if.else6\00", align 1
@50 = private unnamed_addr constant [23 x i8] c"tmp__Z10isMaxOrMiniii6\00", align 1
@51 = private unnamed_addr constant [23 x i8] c"tmp__Z10isMaxOrMiniii6\00", align 1
@52 = private unnamed_addr constant [22 x i8] c"_Z10isMaxOrMiniii_RET\00", align 1
@53 = private unnamed_addr constant [23 x i8] c"tmp__Z10isMaxOrMiniii6\00", align 1
@54 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@55 = private unnamed_addr constant [10 x i8] c"(i32 550)\00", align 1
@56 = private unnamed_addr constant [9 x i8] c"(i32 38)\00", align 1
@57 = private unnamed_addr constant [9 x i8] c"(i32 58)\00", align 1
@58 = private unnamed_addr constant [9 x i8] c"tmp_main\00", align 1
@59 = private unnamed_addr constant [9 x i8] c"tmp_main\00", align 1
@60 = private unnamed_addr constant [10 x i8] c"tmp_main1\00", align 1
@61 = private unnamed_addr constant [10 x i8] c"tmp_main1\00", align 1
@62 = private unnamed_addr constant [10 x i8] c"tmp_main2\00", align 1
@63 = private unnamed_addr constant [10 x i8] c"tmp_main2\00", align 1
@64 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@65 = private unnamed_addr constant [9 x i8] c"tmp_main\00", align 1
@66 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@67 = private unnamed_addr constant [10 x i8] c"tmp_main1\00", align 1
@68 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@69 = private unnamed_addr constant [10 x i8] c"tmp_main2\00", align 1
@70 = private unnamed_addr constant [10 x i8] c"call_main\00", align 1
@71 = private unnamed_addr constant [22 x i8] c"_Z10isMaxOrMiniii_RET\00", align 1
@72 = private unnamed_addr constant [14 x i8] c"frombool_main\00", align 1
@73 = private unnamed_addr constant [10 x i8] c"call_main\00", align 1
@74 = private unnamed_addr constant [5 x i8] c"zext\00", align 1
@75 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@76 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@77 = private unnamed_addr constant [14 x i8] c"frombool_main\00", align 1
@78 = private unnamed_addr constant [10 x i8] c"tmp_main3\00", align 1
@79 = private unnamed_addr constant [10 x i8] c"tmp_main3\00", align 1
@80 = private unnamed_addr constant [12 x i8] c"tobool_main\00", align 1
@81 = private unnamed_addr constant [10 x i8] c"tmp_main3\00", align 1
@82 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@83 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@84 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@85 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@86 = private unnamed_addr constant [9 x i8] c"(i32 38)\00", align 1
@87 = private unnamed_addr constant [9 x i8] c"(i32 10)\00", align 1
@88 = private unnamed_addr constant [10 x i8] c"tmp_main4\00", align 1
@89 = private unnamed_addr constant [10 x i8] c"tmp_main4\00", align 1
@90 = private unnamed_addr constant [10 x i8] c"tmp_main5\00", align 1
@91 = private unnamed_addr constant [10 x i8] c"tmp_main5\00", align 1
@92 = private unnamed_addr constant [10 x i8] c"tmp_main6\00", align 1
@93 = private unnamed_addr constant [10 x i8] c"tmp_main6\00", align 1
@94 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@95 = private unnamed_addr constant [10 x i8] c"tmp_main4\00", align 1
@96 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@97 = private unnamed_addr constant [10 x i8] c"tmp_main5\00", align 1
@98 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@99 = private unnamed_addr constant [10 x i8] c"tmp_main6\00", align 1
@100 = private unnamed_addr constant [11 x i8] c"call1_main\00", align 1
@101 = private unnamed_addr constant [22 x i8] c"_Z10isMaxOrMiniii_RET\00", align 1
@102 = private unnamed_addr constant [15 x i8] c"frombool2_main\00", align 1
@103 = private unnamed_addr constant [11 x i8] c"call1_main\00", align 1
@104 = private unnamed_addr constant [5 x i8] c"zext\00", align 1
@105 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@106 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@107 = private unnamed_addr constant [15 x i8] c"frombool2_main\00", align 1
@108 = private unnamed_addr constant [10 x i8] c"tmp_main7\00", align 1
@109 = private unnamed_addr constant [10 x i8] c"tmp_main7\00", align 1
@110 = private unnamed_addr constant [13 x i8] c"tobool3_main\00", align 1
@111 = private unnamed_addr constant [10 x i8] c"tmp_main7\00", align 1
@112 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@113 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@114 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@115 = private unnamed_addr constant [8 x i8] c"(i32 5)\00", align 1
@116 = private unnamed_addr constant [9 x i8] c"(i32 38)\00", align 1
@117 = private unnamed_addr constant [9 x i8] c"(i32 58)\00", align 1
@118 = private unnamed_addr constant [10 x i8] c"tmp_main8\00", align 1
@119 = private unnamed_addr constant [10 x i8] c"tmp_main8\00", align 1
@120 = private unnamed_addr constant [10 x i8] c"tmp_main9\00", align 1
@121 = private unnamed_addr constant [10 x i8] c"tmp_main9\00", align 1
@122 = private unnamed_addr constant [11 x i8] c"tmp_main10\00", align 1
@123 = private unnamed_addr constant [11 x i8] c"tmp_main10\00", align 1
@124 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@125 = private unnamed_addr constant [10 x i8] c"tmp_main8\00", align 1
@126 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@127 = private unnamed_addr constant [10 x i8] c"tmp_main9\00", align 1
@128 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@129 = private unnamed_addr constant [11 x i8] c"tmp_main10\00", align 1
@130 = private unnamed_addr constant [11 x i8] c"call4_main\00", align 1
@131 = private unnamed_addr constant [22 x i8] c"_Z10isMaxOrMiniii_RET\00", align 1
@132 = private unnamed_addr constant [15 x i8] c"frombool5_main\00", align 1
@133 = private unnamed_addr constant [11 x i8] c"call4_main\00", align 1
@134 = private unnamed_addr constant [5 x i8] c"zext\00", align 1
@135 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@136 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@137 = private unnamed_addr constant [15 x i8] c"frombool5_main\00", align 1
@138 = private unnamed_addr constant [11 x i8] c"tmp_main11\00", align 1
@139 = private unnamed_addr constant [11 x i8] c"tmp_main11\00", align 1
@140 = private unnamed_addr constant [13 x i8] c"tobool6_main\00", align 1
@141 = private unnamed_addr constant [11 x i8] c"tmp_main11\00", align 1
@142 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@143 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@144 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@145 = private unnamed_addr constant [9 x i8] c"main_RET\00", align 1
@146 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@147 = private unnamed_addr constant [6 x i8] c"entry\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @_Z10isMaxOrMiniii(i32 %a, i32 %b, i32 %c) #0 {
entry:
  call void @stg_update_char(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @3, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @5, i32 0, i32 0))
  %retval__Z10isMaxOrMiniii = alloca i1, align 1
  %a.addr__Z10isMaxOrMiniii = alloca i32, align 4
  %b.addr__Z10isMaxOrMiniii = alloca i32, align 4
  %c.addr__Z10isMaxOrMiniii = alloca i32, align 4
  store i32 %a, i32* %a.addr__Z10isMaxOrMiniii, align 4
  call void @stg_update_store_i32(i32* %a.addr__Z10isMaxOrMiniii, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @6, i32 0, i32 0))
  store i32 %b, i32* %b.addr__Z10isMaxOrMiniii, align 4
  call void @stg_update_store_i32(i32* %b.addr__Z10isMaxOrMiniii, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @7, i32 0, i32 0))
  store i32 %c, i32* %c.addr__Z10isMaxOrMiniii, align 4
  call void @stg_update_store_i32(i32* %c.addr__Z10isMaxOrMiniii, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @8, i32 0, i32 0))
  %tmp__Z10isMaxOrMiniii = load i32, i32* %a.addr__Z10isMaxOrMiniii, align 4
  call void @stg_update_load_i32(i32* %a.addr__Z10isMaxOrMiniii, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @10, i32 0, i32 0))
  %tmp__Z10isMaxOrMiniii1 = load i32, i32* %b.addr__Z10isMaxOrMiniii, align 4
  call void @stg_update_load_i32(i32* %b.addr__Z10isMaxOrMiniii, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @12, i32 0, i32 0))
  %cmp__Z10isMaxOrMiniii = icmp sgt i32 %tmp__Z10isMaxOrMiniii, %tmp__Z10isMaxOrMiniii1
  call void @stg_update_cmp(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @17, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp__Z10isMaxOrMiniii, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @18, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @19, i32 0, i32 0))
  br i1 %cmp__Z10isMaxOrMiniii, label %if.then, label %if.else3

if.then:                                          ; preds = %entry
  %tmp__Z10isMaxOrMiniii2 = load i32, i32* %a.addr__Z10isMaxOrMiniii, align 4
  call void @stg_update_load_i32(i32* %a.addr__Z10isMaxOrMiniii, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @21, i32 0, i32 0))
  %tmp__Z10isMaxOrMiniii3 = load i32, i32* %c.addr__Z10isMaxOrMiniii, align 4
  call void @stg_update_load_i32(i32* %c.addr__Z10isMaxOrMiniii, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @23, i32 0, i32 0))
  %cmp1__Z10isMaxOrMiniii = icmp sgt i32 %tmp__Z10isMaxOrMiniii2, %tmp__Z10isMaxOrMiniii3
  call void @stg_update_cmp(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @27, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @28, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp1__Z10isMaxOrMiniii, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @29, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @30, i32 0, i32 0))
  br i1 %cmp1__Z10isMaxOrMiniii, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  store i1 true, i1* %retval__Z10isMaxOrMiniii, align 1
  call void @stg_update_store_i1(i1* %retval__Z10isMaxOrMiniii, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @31, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @32, i32 0, i32 0))
  br label %return

if.else:                                          ; preds = %if.then
  store i1 false, i1* %retval__Z10isMaxOrMiniii, align 1
  call void @stg_update_store_i1(i1* %retval__Z10isMaxOrMiniii, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @33, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @34, i32 0, i32 0))
  br label %return

if.else3:                                         ; preds = %entry
  %tmp__Z10isMaxOrMiniii4 = load i32, i32* %b.addr__Z10isMaxOrMiniii, align 4
  call void @stg_update_load_i32(i32* %b.addr__Z10isMaxOrMiniii, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @36, i32 0, i32 0))
  %tmp__Z10isMaxOrMiniii5 = load i32, i32* %c.addr__Z10isMaxOrMiniii, align 4
  call void @stg_update_load_i32(i32* %c.addr__Z10isMaxOrMiniii, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @38, i32 0, i32 0))
  %cmp4__Z10isMaxOrMiniii = icmp sgt i32 %tmp__Z10isMaxOrMiniii4, %tmp__Z10isMaxOrMiniii5
  call void @stg_update_cmp(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @39, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @40, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @41, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @42, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @43, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp4__Z10isMaxOrMiniii, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @44, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @45, i32 0, i32 0))
  br i1 %cmp4__Z10isMaxOrMiniii, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else3
  store i1 true, i1* %retval__Z10isMaxOrMiniii, align 1
  call void @stg_update_store_i1(i1* %retval__Z10isMaxOrMiniii, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @46, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @47, i32 0, i32 0))
  br label %return

if.else6:                                         ; preds = %if.else3
  store i1 false, i1* %retval__Z10isMaxOrMiniii, align 1
  call void @stg_update_store_i1(i1* %retval__Z10isMaxOrMiniii, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @48, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @49, i32 0, i32 0))
  br label %return

return:                                           ; preds = %if.else6, %if.then5, %if.else, %if.then2
  %tmp__Z10isMaxOrMiniii6 = load i1, i1* %retval__Z10isMaxOrMiniii, align 1
  call void @stg_update_load_i1(i1* %retval__Z10isMaxOrMiniii, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @51, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @52, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @53, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @54, i32 0, i32 0))
  ret i1 %tmp__Z10isMaxOrMiniii6
}

; Function Attrs: noinline norecurse optnone ssp uwtable
define i32 @main() #1 {
entry:
  %a_main = alloca i32, align 4
  %b_main = alloca i32, align 4
  %c_main = alloca i32, align 4
  %testpassed_main = alloca i8, align 1
  store i32 550, i32* %a_main, align 4
  call void @stg_update_store_i32(i32* %a_main, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @55, i32 0, i32 0))
  store i32 38, i32* %b_main, align 4
  call void @stg_update_store_i32(i32* %b_main, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @56, i32 0, i32 0))
  store i32 58, i32* %c_main, align 4
  call void @stg_update_store_i32(i32* %c_main, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @57, i32 0, i32 0))
  call void @stg_begin_test()
  call void @stg_symbolic_variable_int(i32* %a_main, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  call void @stg_symbolic_variable_int(i32* %b_main, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  call void @stg_symbolic_variable_int(i32* %c_main, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %tmp_main = load i32, i32* %a_main, align 4
  call void @stg_update_load_i32(i32* %a_main, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @59, i32 0, i32 0))
  %tmp_main1 = load i32, i32* %b_main, align 4
  call void @stg_update_load_i32(i32* %b_main, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @61, i32 0, i32 0))
  %tmp_main2 = load i32, i32* %c_main, align 4
  call void @stg_update_load_i32(i32* %c_main, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @63, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @64, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @65, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @66, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @67, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @68, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @69, i32 0, i32 0))
  %call_main = call zeroext i1 @_Z10isMaxOrMiniii(i32 %tmp_main, i32 %tmp_main1, i32 %tmp_main2)
  call void @stg_update_char(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @70, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @71, i32 0, i32 0))
  call void @stg_update_cast_i1(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @72, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @73, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @74, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @75, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @76, i32 0, i32 0), i1 %call_main)
  %frombool_main = zext i1 %call_main to i8
  store i8 %frombool_main, i8* %testpassed_main, align 1
  call void @stg_update_store_i8(i8* %testpassed_main, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @77, i32 0, i32 0))
  call void @stg_end_test()
  %tmp_main3 = load i8, i8* %testpassed_main, align 1
  call void @stg_update_load_i8(i8* %testpassed_main, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @79, i32 0, i32 0))
  %tobool_main = trunc i8 %tmp_main3 to i1
  call void @stg_update_cast_i8(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @80, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @81, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @82, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @83, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @84, i32 0, i32 0), i8 %tmp_main3)
  call void @stg_record_test(i1 zeroext %tobool_main)
  store i32 0, i32* %a_main, align 4
  call void @stg_update_store_i32(i32* %a_main, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @85, i32 0, i32 0))
  store i32 38, i32* %b_main, align 4
  call void @stg_update_store_i32(i32* %b_main, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @86, i32 0, i32 0))
  store i32 10, i32* %c_main, align 4
  call void @stg_update_store_i32(i32* %c_main, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @87, i32 0, i32 0))
  call void @stg_begin_test()
  call void @stg_symbolic_variable_int(i32* %a_main, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  call void @stg_symbolic_variable_int(i32* %b_main, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  call void @stg_symbolic_variable_int(i32* %c_main, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %tmp_main4 = load i32, i32* %a_main, align 4
  call void @stg_update_load_i32(i32* %a_main, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @89, i32 0, i32 0))
  %tmp_main5 = load i32, i32* %b_main, align 4
  call void @stg_update_load_i32(i32* %b_main, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @91, i32 0, i32 0))
  %tmp_main6 = load i32, i32* %c_main, align 4
  call void @stg_update_load_i32(i32* %c_main, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @93, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @94, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @95, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @96, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @97, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @98, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @99, i32 0, i32 0))
  %call1_main = call zeroext i1 @_Z10isMaxOrMiniii(i32 %tmp_main4, i32 %tmp_main5, i32 %tmp_main6)
  call void @stg_update_char(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @100, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @101, i32 0, i32 0))
  call void @stg_update_cast_i1(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @102, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @103, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @104, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @105, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @106, i32 0, i32 0), i1 %call1_main)
  %frombool2_main = zext i1 %call1_main to i8
  store i8 %frombool2_main, i8* %testpassed_main, align 1
  call void @stg_update_store_i8(i8* %testpassed_main, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @107, i32 0, i32 0))
  call void @stg_end_test()
  %tmp_main7 = load i8, i8* %testpassed_main, align 1
  call void @stg_update_load_i8(i8* %testpassed_main, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @109, i32 0, i32 0))
  %tobool3_main = trunc i8 %tmp_main7 to i1
  call void @stg_update_cast_i8(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @110, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @111, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @112, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @113, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @114, i32 0, i32 0), i8 %tmp_main7)
  call void @stg_record_test(i1 zeroext %tobool3_main)
  store i32 5, i32* %a_main, align 4
  call void @stg_update_store_i32(i32* %a_main, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @115, i32 0, i32 0))
  store i32 38, i32* %b_main, align 4
  call void @stg_update_store_i32(i32* %b_main, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @116, i32 0, i32 0))
  store i32 58, i32* %c_main, align 4
  call void @stg_update_store_i32(i32* %c_main, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @117, i32 0, i32 0))
  call void @stg_begin_test()
  call void @stg_symbolic_variable_int(i32* %a_main, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  call void @stg_symbolic_variable_int(i32* %b_main, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  call void @stg_symbolic_variable_int(i32* %c_main, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %tmp_main8 = load i32, i32* %a_main, align 4
  call void @stg_update_load_i32(i32* %a_main, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @119, i32 0, i32 0))
  %tmp_main9 = load i32, i32* %b_main, align 4
  call void @stg_update_load_i32(i32* %b_main, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @121, i32 0, i32 0))
  %tmp_main10 = load i32, i32* %c_main, align 4
  call void @stg_update_load_i32(i32* %c_main, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @123, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @124, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @125, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @126, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @127, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @128, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @129, i32 0, i32 0))
  %call4_main = call zeroext i1 @_Z10isMaxOrMiniii(i32 %tmp_main8, i32 %tmp_main9, i32 %tmp_main10)
  call void @stg_update_char(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @130, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @131, i32 0, i32 0))
  call void @stg_update_cast_i1(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @132, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @133, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @134, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @135, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @136, i32 0, i32 0), i1 %call4_main)
  %frombool5_main = zext i1 %call4_main to i8
  store i8 %frombool5_main, i8* %testpassed_main, align 1
  call void @stg_update_store_i8(i8* %testpassed_main, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @137, i32 0, i32 0))
  call void @stg_end_test()
  %tmp_main11 = load i8, i8* %testpassed_main, align 1
  call void @stg_update_load_i8(i8* %testpassed_main, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @139, i32 0, i32 0))
  %tobool6_main = trunc i8 %tmp_main11 to i1
  call void @stg_update_cast_i8(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @140, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @141, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @142, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @143, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @144, i32 0, i32 0), i8 %tmp_main11)
  call void @stg_record_test(i1 zeroext %tobool6_main)
  call void @stg_update_char(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @145, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @146, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @147, i32 0, i32 0))
  ret i32 0
}

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

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline norecurse optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 14]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}

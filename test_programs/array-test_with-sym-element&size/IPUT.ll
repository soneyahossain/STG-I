; ModuleID = 'IPUT.bc'
source_filename = "symbolic_array_2.cpp"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [8 x i8] c"uniform\00", align 1
@uniform = global i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), align 8
@__const.main.arr_2_0 = private unnamed_addr constant [2 x i32] [i32 2, i32 3], align 4
@__const.main.arr_2_1 = private unnamed_addr constant [2 x i32] [i32 2, i32 4], align 4
@__const.main.arr_2_2 = private unnamed_addr constant [2 x i32] [i32 1, i32 4], align 4
@__const.main.arr_2_3 = private unnamed_addr constant [2 x i32] [i32 1, i32 1], align 4
@__const.main.arr_3_0 = private unnamed_addr constant [3 x i32] [i32 1, i32 1, i32 1], align 4
@__const.main.arr_3_1 = private unnamed_addr constant [3 x i32] [i32 2, i32 4, i32 6], align 4
@__const.main.arr_3_2 = private unnamed_addr constant [3 x i32] [i32 1, i32 1, i32 2], align 4
@__const.main.arr_3_3 = private unnamed_addr constant [3 x i32] [i32 2, i32 1, i32 1], align 4
@__const.main.arr_4_0 = private unnamed_addr constant [4 x i32] [i32 1, i32 1, i32 1, i32 1], align 16
@__const.main.arr_4_1 = private unnamed_addr constant [4 x i32] [i32 1, i32 1, i32 1, i32 2], align 16
@__const.main.arr_4_2 = private unnamed_addr constant [4 x i32] [i32 1, i32 1, i32 2, i32 1], align 16
@__const.main.arr_4_3 = private unnamed_addr constant [4 x i32] [i32 1, i32 1, i32 2, i32 2], align 16
@__const.main.arr_4_4 = private unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 1, i32 1], align 16
@__const.main.arr_4_5 = private unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 1, i32 2], align 16
@__const.main.arr_4_6 = private unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 2, i32 1], align 16
@__const.main.arr_4_7 = private unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 2, i32 2], align 16
@.str.1 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"a_\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@0 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@1 = private unnamed_addr constant [9 x i8] c"tmp_main\00", align 1
@2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@3 = private unnamed_addr constant [9 x i8] c"tmp_main\00", align 1
@4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@5 = private unnamed_addr constant [8 x i8] c"(i64 8)\00", align 1
@6 = private unnamed_addr constant [7 x i8] c"(i1 0)\00", align 1
@7 = private unnamed_addr constant [26 x i8] c"llvm.memcpy.p0i8.p0i8.i64\00", align 1
@8 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@9 = private unnamed_addr constant [10 x i8] c"tmp_main1\00", align 1
@10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@11 = private unnamed_addr constant [10 x i8] c"tmp_main1\00", align 1
@12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@13 = private unnamed_addr constant [8 x i8] c"(i64 8)\00", align 1
@14 = private unnamed_addr constant [7 x i8] c"(i1 0)\00", align 1
@15 = private unnamed_addr constant [26 x i8] c"llvm.memcpy.p0i8.p0i8.i64\00", align 1
@16 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@17 = private unnamed_addr constant [10 x i8] c"tmp_main2\00", align 1
@18 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@19 = private unnamed_addr constant [10 x i8] c"tmp_main2\00", align 1
@20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@21 = private unnamed_addr constant [8 x i8] c"(i64 8)\00", align 1
@22 = private unnamed_addr constant [7 x i8] c"(i1 0)\00", align 1
@23 = private unnamed_addr constant [26 x i8] c"llvm.memcpy.p0i8.p0i8.i64\00", align 1
@24 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@25 = private unnamed_addr constant [10 x i8] c"tmp_main3\00", align 1
@26 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@27 = private unnamed_addr constant [10 x i8] c"tmp_main3\00", align 1
@28 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@29 = private unnamed_addr constant [8 x i8] c"(i64 8)\00", align 1
@30 = private unnamed_addr constant [7 x i8] c"(i1 0)\00", align 1
@31 = private unnamed_addr constant [26 x i8] c"llvm.memcpy.p0i8.p0i8.i64\00", align 1
@32 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@33 = private unnamed_addr constant [4 x i8] c"arr\00", align 1
@34 = private unnamed_addr constant [16 x i8] c"arraydecay_main\00", align 1
@35 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@36 = private unnamed_addr constant [8 x i8] c"(i32 2)\00", align 1
@37 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@38 = private unnamed_addr constant [37 x i8] c"_Z25getAverageOfAllEvenNUmberPii_RET\00", align 1
@39 = private unnamed_addr constant [4 x i8] c"arr\00", align 1
@40 = private unnamed_addr constant [17 x i8] c"arraydecay1_main\00", align 1
@41 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@42 = private unnamed_addr constant [8 x i8] c"(i32 2)\00", align 1
@43 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@44 = private unnamed_addr constant [37 x i8] c"_Z25getAverageOfAllEvenNUmberPii_RET\00", align 1
@45 = private unnamed_addr constant [4 x i8] c"arr\00", align 1
@46 = private unnamed_addr constant [17 x i8] c"arraydecay2_main\00", align 1
@47 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@48 = private unnamed_addr constant [8 x i8] c"(i32 2)\00", align 1
@49 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@50 = private unnamed_addr constant [37 x i8] c"_Z25getAverageOfAllEvenNUmberPii_RET\00", align 1
@51 = private unnamed_addr constant [4 x i8] c"arr\00", align 1
@52 = private unnamed_addr constant [17 x i8] c"arraydecay3_main\00", align 1
@53 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@54 = private unnamed_addr constant [8 x i8] c"(i32 2)\00", align 1
@55 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@56 = private unnamed_addr constant [37 x i8] c"_Z25getAverageOfAllEvenNUmberPii_RET\00", align 1
@57 = private unnamed_addr constant [10 x i8] c"tmp_main4\00", align 1
@58 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@59 = private unnamed_addr constant [10 x i8] c"tmp_main4\00", align 1
@60 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@61 = private unnamed_addr constant [9 x i8] c"(i64 12)\00", align 1
@62 = private unnamed_addr constant [7 x i8] c"(i1 0)\00", align 1
@63 = private unnamed_addr constant [26 x i8] c"llvm.memcpy.p0i8.p0i8.i64\00", align 1
@64 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@65 = private unnamed_addr constant [10 x i8] c"tmp_main5\00", align 1
@66 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@67 = private unnamed_addr constant [10 x i8] c"tmp_main5\00", align 1
@68 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@69 = private unnamed_addr constant [9 x i8] c"(i64 12)\00", align 1
@70 = private unnamed_addr constant [7 x i8] c"(i1 0)\00", align 1
@71 = private unnamed_addr constant [26 x i8] c"llvm.memcpy.p0i8.p0i8.i64\00", align 1
@72 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@73 = private unnamed_addr constant [10 x i8] c"tmp_main6\00", align 1
@74 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@75 = private unnamed_addr constant [10 x i8] c"tmp_main6\00", align 1
@76 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@77 = private unnamed_addr constant [9 x i8] c"(i64 12)\00", align 1
@78 = private unnamed_addr constant [7 x i8] c"(i1 0)\00", align 1
@79 = private unnamed_addr constant [26 x i8] c"llvm.memcpy.p0i8.p0i8.i64\00", align 1
@80 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@81 = private unnamed_addr constant [10 x i8] c"tmp_main7\00", align 1
@82 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@83 = private unnamed_addr constant [10 x i8] c"tmp_main7\00", align 1
@84 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@85 = private unnamed_addr constant [9 x i8] c"(i64 12)\00", align 1
@86 = private unnamed_addr constant [7 x i8] c"(i1 0)\00", align 1
@87 = private unnamed_addr constant [26 x i8] c"llvm.memcpy.p0i8.p0i8.i64\00", align 1
@88 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@89 = private unnamed_addr constant [4 x i8] c"arr\00", align 1
@90 = private unnamed_addr constant [17 x i8] c"arraydecay4_main\00", align 1
@91 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@92 = private unnamed_addr constant [8 x i8] c"(i32 3)\00", align 1
@93 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@94 = private unnamed_addr constant [37 x i8] c"_Z25getAverageOfAllEvenNUmberPii_RET\00", align 1
@95 = private unnamed_addr constant [4 x i8] c"arr\00", align 1
@96 = private unnamed_addr constant [17 x i8] c"arraydecay5_main\00", align 1
@97 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@98 = private unnamed_addr constant [8 x i8] c"(i32 3)\00", align 1
@99 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@100 = private unnamed_addr constant [37 x i8] c"_Z25getAverageOfAllEvenNUmberPii_RET\00", align 1
@101 = private unnamed_addr constant [4 x i8] c"arr\00", align 1
@102 = private unnamed_addr constant [17 x i8] c"arraydecay6_main\00", align 1
@103 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@104 = private unnamed_addr constant [8 x i8] c"(i32 3)\00", align 1
@105 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@106 = private unnamed_addr constant [37 x i8] c"_Z25getAverageOfAllEvenNUmberPii_RET\00", align 1
@107 = private unnamed_addr constant [4 x i8] c"arr\00", align 1
@108 = private unnamed_addr constant [17 x i8] c"arraydecay7_main\00", align 1
@109 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@110 = private unnamed_addr constant [8 x i8] c"(i32 3)\00", align 1
@111 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@112 = private unnamed_addr constant [37 x i8] c"_Z25getAverageOfAllEvenNUmberPii_RET\00", align 1
@113 = private unnamed_addr constant [10 x i8] c"tmp_main8\00", align 1
@114 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@115 = private unnamed_addr constant [10 x i8] c"tmp_main8\00", align 1
@116 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@117 = private unnamed_addr constant [9 x i8] c"(i64 16)\00", align 1
@118 = private unnamed_addr constant [7 x i8] c"(i1 0)\00", align 1
@119 = private unnamed_addr constant [26 x i8] c"llvm.memcpy.p0i8.p0i8.i64\00", align 1
@120 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@121 = private unnamed_addr constant [10 x i8] c"tmp_main9\00", align 1
@122 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@123 = private unnamed_addr constant [10 x i8] c"tmp_main9\00", align 1
@124 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@125 = private unnamed_addr constant [9 x i8] c"(i64 16)\00", align 1
@126 = private unnamed_addr constant [7 x i8] c"(i1 0)\00", align 1
@127 = private unnamed_addr constant [26 x i8] c"llvm.memcpy.p0i8.p0i8.i64\00", align 1
@128 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@129 = private unnamed_addr constant [11 x i8] c"tmp_main10\00", align 1
@130 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@131 = private unnamed_addr constant [11 x i8] c"tmp_main10\00", align 1
@132 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@133 = private unnamed_addr constant [9 x i8] c"(i64 16)\00", align 1
@134 = private unnamed_addr constant [7 x i8] c"(i1 0)\00", align 1
@135 = private unnamed_addr constant [26 x i8] c"llvm.memcpy.p0i8.p0i8.i64\00", align 1
@136 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@137 = private unnamed_addr constant [11 x i8] c"tmp_main11\00", align 1
@138 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@139 = private unnamed_addr constant [11 x i8] c"tmp_main11\00", align 1
@140 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@141 = private unnamed_addr constant [9 x i8] c"(i64 16)\00", align 1
@142 = private unnamed_addr constant [7 x i8] c"(i1 0)\00", align 1
@143 = private unnamed_addr constant [26 x i8] c"llvm.memcpy.p0i8.p0i8.i64\00", align 1
@144 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@145 = private unnamed_addr constant [11 x i8] c"tmp_main12\00", align 1
@146 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@147 = private unnamed_addr constant [11 x i8] c"tmp_main12\00", align 1
@148 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@149 = private unnamed_addr constant [9 x i8] c"(i64 16)\00", align 1
@150 = private unnamed_addr constant [7 x i8] c"(i1 0)\00", align 1
@151 = private unnamed_addr constant [26 x i8] c"llvm.memcpy.p0i8.p0i8.i64\00", align 1
@152 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@153 = private unnamed_addr constant [11 x i8] c"tmp_main13\00", align 1
@154 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@155 = private unnamed_addr constant [11 x i8] c"tmp_main13\00", align 1
@156 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@157 = private unnamed_addr constant [9 x i8] c"(i64 16)\00", align 1
@158 = private unnamed_addr constant [7 x i8] c"(i1 0)\00", align 1
@159 = private unnamed_addr constant [26 x i8] c"llvm.memcpy.p0i8.p0i8.i64\00", align 1
@160 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@161 = private unnamed_addr constant [11 x i8] c"tmp_main14\00", align 1
@162 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@163 = private unnamed_addr constant [11 x i8] c"tmp_main14\00", align 1
@164 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@165 = private unnamed_addr constant [9 x i8] c"(i64 16)\00", align 1
@166 = private unnamed_addr constant [7 x i8] c"(i1 0)\00", align 1
@167 = private unnamed_addr constant [26 x i8] c"llvm.memcpy.p0i8.p0i8.i64\00", align 1
@168 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@169 = private unnamed_addr constant [11 x i8] c"tmp_main15\00", align 1
@170 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@171 = private unnamed_addr constant [11 x i8] c"tmp_main15\00", align 1
@172 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@173 = private unnamed_addr constant [9 x i8] c"(i64 16)\00", align 1
@174 = private unnamed_addr constant [7 x i8] c"(i1 0)\00", align 1
@175 = private unnamed_addr constant [26 x i8] c"llvm.memcpy.p0i8.p0i8.i64\00", align 1
@176 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@177 = private unnamed_addr constant [4 x i8] c"arr\00", align 1
@178 = private unnamed_addr constant [17 x i8] c"arraydecay8_main\00", align 1
@179 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@180 = private unnamed_addr constant [8 x i8] c"(i32 4)\00", align 1
@181 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@182 = private unnamed_addr constant [37 x i8] c"_Z25getAverageOfAllEvenNUmberPii_RET\00", align 1
@183 = private unnamed_addr constant [4 x i8] c"arr\00", align 1
@184 = private unnamed_addr constant [17 x i8] c"arraydecay9_main\00", align 1
@185 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@186 = private unnamed_addr constant [8 x i8] c"(i32 4)\00", align 1
@187 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@188 = private unnamed_addr constant [37 x i8] c"_Z25getAverageOfAllEvenNUmberPii_RET\00", align 1
@189 = private unnamed_addr constant [4 x i8] c"arr\00", align 1
@190 = private unnamed_addr constant [18 x i8] c"arraydecay10_main\00", align 1
@191 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@192 = private unnamed_addr constant [8 x i8] c"(i32 4)\00", align 1
@193 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@194 = private unnamed_addr constant [37 x i8] c"_Z25getAverageOfAllEvenNUmberPii_RET\00", align 1
@195 = private unnamed_addr constant [4 x i8] c"arr\00", align 1
@196 = private unnamed_addr constant [18 x i8] c"arraydecay11_main\00", align 1
@197 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@198 = private unnamed_addr constant [8 x i8] c"(i32 4)\00", align 1
@199 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@200 = private unnamed_addr constant [37 x i8] c"_Z25getAverageOfAllEvenNUmberPii_RET\00", align 1
@201 = private unnamed_addr constant [4 x i8] c"arr\00", align 1
@202 = private unnamed_addr constant [18 x i8] c"arraydecay12_main\00", align 1
@203 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@204 = private unnamed_addr constant [8 x i8] c"(i32 4)\00", align 1
@205 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@206 = private unnamed_addr constant [37 x i8] c"_Z25getAverageOfAllEvenNUmberPii_RET\00", align 1
@207 = private unnamed_addr constant [4 x i8] c"arr\00", align 1
@208 = private unnamed_addr constant [18 x i8] c"arraydecay13_main\00", align 1
@209 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@210 = private unnamed_addr constant [8 x i8] c"(i32 4)\00", align 1
@211 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@212 = private unnamed_addr constant [37 x i8] c"_Z25getAverageOfAllEvenNUmberPii_RET\00", align 1
@213 = private unnamed_addr constant [4 x i8] c"arr\00", align 1
@214 = private unnamed_addr constant [18 x i8] c"arraydecay14_main\00", align 1
@215 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@216 = private unnamed_addr constant [8 x i8] c"(i32 4)\00", align 1
@217 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@218 = private unnamed_addr constant [37 x i8] c"_Z25getAverageOfAllEvenNUmberPii_RET\00", align 1
@219 = private unnamed_addr constant [4 x i8] c"arr\00", align 1
@220 = private unnamed_addr constant [18 x i8] c"arraydecay15_main\00", align 1
@221 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@222 = private unnamed_addr constant [8 x i8] c"(i32 4)\00", align 1
@223 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@224 = private unnamed_addr constant [37 x i8] c"_Z25getAverageOfAllEvenNUmberPii_RET\00", align 1
@225 = private unnamed_addr constant [9 x i8] c"main_RET\00", align 1
@226 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@227 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@228 = private unnamed_addr constant [4 x i8] c"arr\00", align 1
@229 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@230 = private unnamed_addr constant [37 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii\00", align 1
@231 = private unnamed_addr constant [37 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii\00", align 1
@232 = private unnamed_addr constant [38 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii1\00", align 1
@233 = private unnamed_addr constant [38 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii2\00", align 1
@234 = private unnamed_addr constant [4 x i8] c"i8*\00", align 1
@235 = private unnamed_addr constant [38 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii3\00", align 1
@236 = private unnamed_addr constant [38 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii4\00", align 1
@237 = private unnamed_addr constant [4 x i8] c"i8*\00", align 1
@238 = private unnamed_addr constant [38 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii5\00", align 1
@239 = private unnamed_addr constant [38 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii5\00", align 1
@240 = private unnamed_addr constant [38 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii6\00", align 1
@241 = private unnamed_addr constant [38 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii7\00", align 1
@242 = private unnamed_addr constant [38 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii7\00", align 1
@243 = private unnamed_addr constant [38 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii8\00", align 1
@244 = private unnamed_addr constant [38 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii9\00", align 1
@245 = private unnamed_addr constant [39 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii10\00", align 1
@246 = private unnamed_addr constant [39 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii10\00", align 1
@247 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@248 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@249 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@250 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@251 = private unnamed_addr constant [39 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii11\00", align 1
@252 = private unnamed_addr constant [39 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii11\00", align 1
@253 = private unnamed_addr constant [39 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii12\00", align 1
@254 = private unnamed_addr constant [39 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii12\00", align 1
@255 = private unnamed_addr constant [37 x i8] c"cmp__Z25getAverageOfAllEvenNUmberPii\00", align 1
@256 = private unnamed_addr constant [39 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii11\00", align 1
@257 = private unnamed_addr constant [4 x i8] c"slt\00", align 1
@258 = private unnamed_addr constant [39 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii12\00", align 1
@259 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@260 = private unnamed_addr constant [37 x i8] c"cmp__Z25getAverageOfAllEvenNUmberPii\00", align 1
@261 = private unnamed_addr constant [9 x i8] c"for.cond\00", align 1
@262 = private unnamed_addr constant [39 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii13\00", align 1
@263 = private unnamed_addr constant [39 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii13\00", align 1
@264 = private unnamed_addr constant [39 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii14\00", align 1
@265 = private unnamed_addr constant [39 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii14\00", align 1
@266 = private unnamed_addr constant [41 x i8] c"idxprom__Z25getAverageOfAllEvenNUmberPii\00", align 1
@267 = private unnamed_addr constant [39 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii14\00", align 1
@268 = private unnamed_addr constant [5 x i8] c"sext\00", align 1
@269 = private unnamed_addr constant [4 x i8] c"i64\00", align 1
@270 = private unnamed_addr constant [39 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii15\00", align 1
@271 = private unnamed_addr constant [39 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii15\00", align 1
@272 = private unnamed_addr constant [37 x i8] c"rem__Z25getAverageOfAllEvenNUmberPii\00", align 1
@273 = private unnamed_addr constant [39 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii15\00", align 1
@274 = private unnamed_addr constant [5 x i8] c"srem\00", align 1
@275 = private unnamed_addr constant [8 x i8] c"(i32 2)\00", align 1
@276 = private unnamed_addr constant [38 x i8] c"cmp1__Z25getAverageOfAllEvenNUmberPii\00", align 1
@277 = private unnamed_addr constant [37 x i8] c"rem__Z25getAverageOfAllEvenNUmberPii\00", align 1
@278 = private unnamed_addr constant [3 x i8] c"eq\00", align 1
@279 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@280 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@281 = private unnamed_addr constant [38 x i8] c"cmp1__Z25getAverageOfAllEvenNUmberPii\00", align 1
@282 = private unnamed_addr constant [9 x i8] c"for.body\00", align 1
@283 = private unnamed_addr constant [39 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii16\00", align 1
@284 = private unnamed_addr constant [39 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii16\00", align 1
@285 = private unnamed_addr constant [39 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii17\00", align 1
@286 = private unnamed_addr constant [39 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii17\00", align 1
@287 = private unnamed_addr constant [42 x i8] c"idxprom2__Z25getAverageOfAllEvenNUmberPii\00", align 1
@288 = private unnamed_addr constant [39 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii17\00", align 1
@289 = private unnamed_addr constant [5 x i8] c"sext\00", align 1
@290 = private unnamed_addr constant [4 x i8] c"i64\00", align 1
@291 = private unnamed_addr constant [39 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii18\00", align 1
@292 = private unnamed_addr constant [39 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii18\00", align 1
@293 = private unnamed_addr constant [39 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii19\00", align 1
@294 = private unnamed_addr constant [39 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii19\00", align 1
@295 = private unnamed_addr constant [37 x i8] c"add__Z25getAverageOfAllEvenNUmberPii\00", align 1
@296 = private unnamed_addr constant [39 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii19\00", align 1
@297 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@298 = private unnamed_addr constant [39 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii18\00", align 1
@299 = private unnamed_addr constant [37 x i8] c"add__Z25getAverageOfAllEvenNUmberPii\00", align 1
@300 = private unnamed_addr constant [39 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii20\00", align 1
@301 = private unnamed_addr constant [39 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii20\00", align 1
@302 = private unnamed_addr constant [37 x i8] c"inc__Z25getAverageOfAllEvenNUmberPii\00", align 1
@303 = private unnamed_addr constant [39 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii20\00", align 1
@304 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@305 = private unnamed_addr constant [8 x i8] c"(i32 1)\00", align 1
@306 = private unnamed_addr constant [37 x i8] c"inc__Z25getAverageOfAllEvenNUmberPii\00", align 1
@307 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@308 = private unnamed_addr constant [7 x i8] c"if.end\00", align 1
@309 = private unnamed_addr constant [39 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii21\00", align 1
@310 = private unnamed_addr constant [39 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii21\00", align 1
@311 = private unnamed_addr constant [38 x i8] c"inc4__Z25getAverageOfAllEvenNUmberPii\00", align 1
@312 = private unnamed_addr constant [39 x i8] c"tmp__Z25getAverageOfAllEvenNUmberPii21\00", align 1
@313 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@314 = private unnamed_addr constant [8 x i8] c"(i32 1)\00", align 1
@315 = private unnamed_addr constant [38 x i8] c"inc4__Z25getAverageOfAllEvenNUmberPii\00", align 1
@316 = private unnamed_addr constant [8 x i8] c"for.inc\00", align 1
@317 = private unnamed_addr constant [8 x i8] c"for.end\00", align 1

; Function Attrs: noinline norecurse optnone ssp uwtable
define i32 @main() #0 {
entry:
  %retval_main = alloca i32, align 4
  %arr_2_0_main = alloca [2 x i32], align 4
  %arr_2_1_main = alloca [2 x i32], align 4
  %arr_2_2_main = alloca [2 x i32], align 4
  %arr_2_3_main = alloca [2 x i32], align 4
  %arr_3_0_main = alloca [3 x i32], align 4
  %arr_3_1_main = alloca [3 x i32], align 4
  %arr_3_2_main = alloca [3 x i32], align 4
  %arr_3_3_main = alloca [3 x i32], align 4
  %arr_4_0_main = alloca [4 x i32], align 16
  %arr_4_1_main = alloca [4 x i32], align 16
  %arr_4_2_main = alloca [4 x i32], align 16
  %arr_4_3_main = alloca [4 x i32], align 16
  %arr_4_4_main = alloca [4 x i32], align 16
  %arr_4_5_main = alloca [4 x i32], align 16
  %arr_4_6_main = alloca [4 x i32], align 16
  %arr_4_7_main = alloca [4 x i32], align 16
  store i32 0, i32* %retval_main, align 4
  call void @stg_update_store_i32(i32* %retval_main, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @0, i32 0, i32 0))
  %tmp_main = bitcast [2 x i32]* %arr_2_0_main to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %tmp_main, i8* align 4 bitcast ([2 x i32]* @__const.main.arr_2_0 to i8*), i64 8, i1 false)
  %tmp_main1 = bitcast [2 x i32]* %arr_2_1_main to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %tmp_main1, i8* align 4 bitcast ([2 x i32]* @__const.main.arr_2_1 to i8*), i64 8, i1 false)
  %tmp_main2 = bitcast [2 x i32]* %arr_2_2_main to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %tmp_main2, i8* align 4 bitcast ([2 x i32]* @__const.main.arr_2_2 to i8*), i64 8, i1 false)
  %tmp_main3 = bitcast [2 x i32]* %arr_2_3_main to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %tmp_main3, i8* align 4 bitcast ([2 x i32]* @__const.main.arr_2_3 to i8*), i64 8, i1 false)
  %arraydecay_main = getelementptr inbounds [2 x i32], [2 x i32]* %arr_2_0_main, i32 0, i32 0
  call void @stg_update_char(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @33, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @34, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @35, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @36, i32 0, i32 0))
  call void @_Z25getAverageOfAllEvenNUmberPii(i32* %arraydecay_main, i32 2)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @37, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @38, i32 0, i32 0))
  %arraydecay1_main = getelementptr inbounds [2 x i32], [2 x i32]* %arr_2_1_main, i32 0, i32 0
  call void @stg_update_char(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @39, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @40, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @41, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @42, i32 0, i32 0))
  call void @_Z25getAverageOfAllEvenNUmberPii(i32* %arraydecay1_main, i32 2)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @43, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @44, i32 0, i32 0))
  %arraydecay2_main = getelementptr inbounds [2 x i32], [2 x i32]* %arr_2_2_main, i32 0, i32 0
  call void @stg_update_char(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @45, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @46, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @47, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @48, i32 0, i32 0))
  call void @_Z25getAverageOfAllEvenNUmberPii(i32* %arraydecay2_main, i32 2)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @49, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @50, i32 0, i32 0))
  %arraydecay3_main = getelementptr inbounds [2 x i32], [2 x i32]* %arr_2_3_main, i32 0, i32 0
  call void @stg_update_char(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @51, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @52, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @53, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @54, i32 0, i32 0))
  call void @_Z25getAverageOfAllEvenNUmberPii(i32* %arraydecay3_main, i32 2)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @55, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @56, i32 0, i32 0))
  %tmp_main4 = bitcast [3 x i32]* %arr_3_0_main to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %tmp_main4, i8* align 4 bitcast ([3 x i32]* @__const.main.arr_3_0 to i8*), i64 12, i1 false)
  %tmp_main5 = bitcast [3 x i32]* %arr_3_1_main to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %tmp_main5, i8* align 4 bitcast ([3 x i32]* @__const.main.arr_3_1 to i8*), i64 12, i1 false)
  %tmp_main6 = bitcast [3 x i32]* %arr_3_2_main to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %tmp_main6, i8* align 4 bitcast ([3 x i32]* @__const.main.arr_3_2 to i8*), i64 12, i1 false)
  %tmp_main7 = bitcast [3 x i32]* %arr_3_3_main to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %tmp_main7, i8* align 4 bitcast ([3 x i32]* @__const.main.arr_3_3 to i8*), i64 12, i1 false)
  %arraydecay4_main = getelementptr inbounds [3 x i32], [3 x i32]* %arr_3_0_main, i32 0, i32 0
  call void @stg_update_char(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @89, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @90, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @91, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @92, i32 0, i32 0))
  call void @_Z25getAverageOfAllEvenNUmberPii(i32* %arraydecay4_main, i32 3)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @93, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @94, i32 0, i32 0))
  %arraydecay5_main = getelementptr inbounds [3 x i32], [3 x i32]* %arr_3_1_main, i32 0, i32 0
  call void @stg_update_char(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @95, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @96, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @97, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @98, i32 0, i32 0))
  call void @_Z25getAverageOfAllEvenNUmberPii(i32* %arraydecay5_main, i32 3)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @99, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @100, i32 0, i32 0))
  %arraydecay6_main = getelementptr inbounds [3 x i32], [3 x i32]* %arr_3_2_main, i32 0, i32 0
  call void @stg_update_char(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @101, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @102, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @103, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @104, i32 0, i32 0))
  call void @_Z25getAverageOfAllEvenNUmberPii(i32* %arraydecay6_main, i32 3)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @105, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @106, i32 0, i32 0))
  %arraydecay7_main = getelementptr inbounds [3 x i32], [3 x i32]* %arr_3_3_main, i32 0, i32 0
  call void @stg_update_char(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @107, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @108, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @109, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @110, i32 0, i32 0))
  call void @_Z25getAverageOfAllEvenNUmberPii(i32* %arraydecay7_main, i32 3)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @111, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @112, i32 0, i32 0))
  %tmp_main8 = bitcast [4 x i32]* %arr_4_0_main to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %tmp_main8, i8* align 16 bitcast ([4 x i32]* @__const.main.arr_4_0 to i8*), i64 16, i1 false)
  %tmp_main9 = bitcast [4 x i32]* %arr_4_1_main to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %tmp_main9, i8* align 16 bitcast ([4 x i32]* @__const.main.arr_4_1 to i8*), i64 16, i1 false)
  %tmp_main10 = bitcast [4 x i32]* %arr_4_2_main to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %tmp_main10, i8* align 16 bitcast ([4 x i32]* @__const.main.arr_4_2 to i8*), i64 16, i1 false)
  %tmp_main11 = bitcast [4 x i32]* %arr_4_3_main to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %tmp_main11, i8* align 16 bitcast ([4 x i32]* @__const.main.arr_4_3 to i8*), i64 16, i1 false)
  %tmp_main12 = bitcast [4 x i32]* %arr_4_4_main to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %tmp_main12, i8* align 16 bitcast ([4 x i32]* @__const.main.arr_4_4 to i8*), i64 16, i1 false)
  %tmp_main13 = bitcast [4 x i32]* %arr_4_5_main to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %tmp_main13, i8* align 16 bitcast ([4 x i32]* @__const.main.arr_4_5 to i8*), i64 16, i1 false)
  %tmp_main14 = bitcast [4 x i32]* %arr_4_6_main to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %tmp_main14, i8* align 16 bitcast ([4 x i32]* @__const.main.arr_4_6 to i8*), i64 16, i1 false)
  %tmp_main15 = bitcast [4 x i32]* %arr_4_7_main to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %tmp_main15, i8* align 16 bitcast ([4 x i32]* @__const.main.arr_4_7 to i8*), i64 16, i1 false)
  %arraydecay8_main = getelementptr inbounds [4 x i32], [4 x i32]* %arr_4_0_main, i32 0, i32 0
  call void @stg_update_char(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @177, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @178, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @179, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @180, i32 0, i32 0))
  call void @_Z25getAverageOfAllEvenNUmberPii(i32* %arraydecay8_main, i32 4)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @181, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @182, i32 0, i32 0))
  %arraydecay9_main = getelementptr inbounds [4 x i32], [4 x i32]* %arr_4_1_main, i32 0, i32 0
  call void @stg_update_char(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @183, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @184, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @185, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @186, i32 0, i32 0))
  call void @_Z25getAverageOfAllEvenNUmberPii(i32* %arraydecay9_main, i32 4)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @187, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @188, i32 0, i32 0))
  %arraydecay10_main = getelementptr inbounds [4 x i32], [4 x i32]* %arr_4_2_main, i32 0, i32 0
  call void @stg_update_char(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @189, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @190, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @191, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @192, i32 0, i32 0))
  call void @_Z25getAverageOfAllEvenNUmberPii(i32* %arraydecay10_main, i32 4)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @193, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @194, i32 0, i32 0))
  %arraydecay11_main = getelementptr inbounds [4 x i32], [4 x i32]* %arr_4_3_main, i32 0, i32 0
  call void @stg_update_char(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @195, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @196, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @197, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @198, i32 0, i32 0))
  call void @_Z25getAverageOfAllEvenNUmberPii(i32* %arraydecay11_main, i32 4)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @199, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @200, i32 0, i32 0))
  %arraydecay12_main = getelementptr inbounds [4 x i32], [4 x i32]* %arr_4_4_main, i32 0, i32 0
  call void @stg_update_char(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @201, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @202, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @203, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @204, i32 0, i32 0))
  call void @_Z25getAverageOfAllEvenNUmberPii(i32* %arraydecay12_main, i32 4)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @205, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @206, i32 0, i32 0))
  %arraydecay13_main = getelementptr inbounds [4 x i32], [4 x i32]* %arr_4_5_main, i32 0, i32 0
  call void @stg_update_char(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @207, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @208, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @209, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @210, i32 0, i32 0))
  call void @_Z25getAverageOfAllEvenNUmberPii(i32* %arraydecay13_main, i32 4)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @211, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @212, i32 0, i32 0))
  %arraydecay14_main = getelementptr inbounds [4 x i32], [4 x i32]* %arr_4_6_main, i32 0, i32 0
  call void @stg_update_char(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @213, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @214, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @215, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @216, i32 0, i32 0))
  call void @_Z25getAverageOfAllEvenNUmberPii(i32* %arraydecay14_main, i32 4)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @217, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @218, i32 0, i32 0))
  %arraydecay15_main = getelementptr inbounds [4 x i32], [4 x i32]* %arr_4_7_main, i32 0, i32 0
  call void @stg_update_char(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @219, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @220, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @221, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @222, i32 0, i32 0))
  call void @_Z25getAverageOfAllEvenNUmberPii(i32* %arraydecay15_main, i32 4)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @223, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @224, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @225, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @226, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @227, i32 0, i32 0))
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: noinline optnone ssp uwtable
define void @_Z25getAverageOfAllEvenNUmberPii(i32* %arr, i32 %size) #2 {
entry:
  %arr.addr__Z25getAverageOfAllEvenNUmberPii = alloca i32*, align 8
  %size.addr__Z25getAverageOfAllEvenNUmberPii = alloca i32, align 4
  %i__Z25getAverageOfAllEvenNUmberPii = alloca i32, align 4
  %count__Z25getAverageOfAllEvenNUmberPii = alloca i32, align 4
  %sum__Z25getAverageOfAllEvenNUmberPii = alloca i32, align 4
  %avg__Z25getAverageOfAllEvenNUmberPii = alloca double, align 8
  store i32* %arr, i32** %arr.addr__Z25getAverageOfAllEvenNUmberPii, align 8
  store i32 %size, i32* %size.addr__Z25getAverageOfAllEvenNUmberPii, align 4
  call void @stg_update_store_i32(i32* %size.addr__Z25getAverageOfAllEvenNUmberPii, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @229, i32 0, i32 0))
  %tmp__Z25getAverageOfAllEvenNUmberPii = load i32*, i32** %arr.addr__Z25getAverageOfAllEvenNUmberPii, align 8
  %tmp__Z25getAverageOfAllEvenNUmberPii1 = bitcast i32* %tmp__Z25getAverageOfAllEvenNUmberPii to i8*
  %tmp__Z25getAverageOfAllEvenNUmberPii2 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_array(i8* %tmp__Z25getAverageOfAllEvenNUmberPii1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), double 0.000000e+00, double 1.000000e+02, i8* %tmp__Z25getAverageOfAllEvenNUmberPii2, double 0.000000e+00, double 0.000000e+00)
  %tmp__Z25getAverageOfAllEvenNUmberPii3 = bitcast i32* %size.addr__Z25getAverageOfAllEvenNUmberPii to i8*
  %tmp__Z25getAverageOfAllEvenNUmberPii4 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable(i8* %tmp__Z25getAverageOfAllEvenNUmberPii3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), double 0.000000e+00, double 4.000000e+00, i8* %tmp__Z25getAverageOfAllEvenNUmberPii4, double 0.000000e+00, double 0.000000e+00)
  call void @stg_begin_test()
  %tmp__Z25getAverageOfAllEvenNUmberPii5 = load i32*, i32** %arr.addr__Z25getAverageOfAllEvenNUmberPii, align 8
  %tmp__Z25getAverageOfAllEvenNUmberPii6 = bitcast i32* %tmp__Z25getAverageOfAllEvenNUmberPii5 to i8*
  %tmp__Z25getAverageOfAllEvenNUmberPii7 = load i32*, i32** %arr.addr__Z25getAverageOfAllEvenNUmberPii, align 8
  %tmp__Z25getAverageOfAllEvenNUmberPii8 = bitcast i32* %tmp__Z25getAverageOfAllEvenNUmberPii7 to i8*
  call void @stg_input_array(i8* %tmp__Z25getAverageOfAllEvenNUmberPii6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 10, i8* %tmp__Z25getAverageOfAllEvenNUmberPii8)
  %tmp__Z25getAverageOfAllEvenNUmberPii9 = bitcast i32* %size.addr__Z25getAverageOfAllEvenNUmberPii to i8*
  %tmp__Z25getAverageOfAllEvenNUmberPii10 = load i32, i32* %size.addr__Z25getAverageOfAllEvenNUmberPii, align 4
  call void @stg_update_load_i32(i32* %size.addr__Z25getAverageOfAllEvenNUmberPii, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @246, i32 0, i32 0))
  call void @stg_input_int(i8* %tmp__Z25getAverageOfAllEvenNUmberPii9, i32 %tmp__Z25getAverageOfAllEvenNUmberPii10)
  store i32 0, i32* %count__Z25getAverageOfAllEvenNUmberPii, align 4
  call void @stg_update_store_i32(i32* %count__Z25getAverageOfAllEvenNUmberPii, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @247, i32 0, i32 0))
  store i32 0, i32* %sum__Z25getAverageOfAllEvenNUmberPii, align 4
  call void @stg_update_store_i32(i32* %sum__Z25getAverageOfAllEvenNUmberPii, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @248, i32 0, i32 0))
  store i32 0, i32* %i__Z25getAverageOfAllEvenNUmberPii, align 4
  call void @stg_update_store_i32(i32* %i__Z25getAverageOfAllEvenNUmberPii, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @249, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @250, i32 0, i32 0))
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %tmp__Z25getAverageOfAllEvenNUmberPii11 = load i32, i32* %i__Z25getAverageOfAllEvenNUmberPii, align 4
  call void @stg_update_load_i32(i32* %i__Z25getAverageOfAllEvenNUmberPii, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @252, i32 0, i32 0))
  %tmp__Z25getAverageOfAllEvenNUmberPii12 = load i32, i32* %size.addr__Z25getAverageOfAllEvenNUmberPii, align 4
  call void @stg_update_load_i32(i32* %size.addr__Z25getAverageOfAllEvenNUmberPii, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @254, i32 0, i32 0))
  %cmp__Z25getAverageOfAllEvenNUmberPii = icmp slt i32 %tmp__Z25getAverageOfAllEvenNUmberPii11, %tmp__Z25getAverageOfAllEvenNUmberPii12
  call void @stg_update_cmp(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @255, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @256, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @257, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @258, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @259, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp__Z25getAverageOfAllEvenNUmberPii, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @260, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @261, i32 0, i32 0))
  br i1 %cmp__Z25getAverageOfAllEvenNUmberPii, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %tmp__Z25getAverageOfAllEvenNUmberPii13 = load i32*, i32** %arr.addr__Z25getAverageOfAllEvenNUmberPii, align 8
  %tmp__Z25getAverageOfAllEvenNUmberPii14 = load i32, i32* %i__Z25getAverageOfAllEvenNUmberPii, align 4
  call void @stg_update_load_i32(i32* %i__Z25getAverageOfAllEvenNUmberPii, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @265, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @266, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @267, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @268, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @269, i32 0, i32 0))
  %idxprom__Z25getAverageOfAllEvenNUmberPii = sext i32 %tmp__Z25getAverageOfAllEvenNUmberPii14 to i64
  %arrayidx__Z25getAverageOfAllEvenNUmberPii = getelementptr inbounds i32, i32* %tmp__Z25getAverageOfAllEvenNUmberPii13, i64 %idxprom__Z25getAverageOfAllEvenNUmberPii
  %tmp__Z25getAverageOfAllEvenNUmberPii15 = load i32, i32* %arrayidx__Z25getAverageOfAllEvenNUmberPii, align 4
  call void @stg_update_load_i32(i32* %arrayidx__Z25getAverageOfAllEvenNUmberPii, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @271, i32 0, i32 0))
  %rem__Z25getAverageOfAllEvenNUmberPii = srem i32 %tmp__Z25getAverageOfAllEvenNUmberPii15, 2
  call void @stg_update_op(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @272, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @273, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @274, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @275, i32 0, i32 0))
  %cmp1__Z25getAverageOfAllEvenNUmberPii = icmp eq i32 %rem__Z25getAverageOfAllEvenNUmberPii, 0
  call void @stg_update_cmp(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @276, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @277, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @278, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @279, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @280, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp1__Z25getAverageOfAllEvenNUmberPii, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @281, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @282, i32 0, i32 0))
  br i1 %cmp1__Z25getAverageOfAllEvenNUmberPii, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %tmp__Z25getAverageOfAllEvenNUmberPii16 = load i32*, i32** %arr.addr__Z25getAverageOfAllEvenNUmberPii, align 8
  %tmp__Z25getAverageOfAllEvenNUmberPii17 = load i32, i32* %i__Z25getAverageOfAllEvenNUmberPii, align 4
  call void @stg_update_load_i32(i32* %i__Z25getAverageOfAllEvenNUmberPii, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @286, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @287, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @288, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @289, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @290, i32 0, i32 0))
  %idxprom2__Z25getAverageOfAllEvenNUmberPii = sext i32 %tmp__Z25getAverageOfAllEvenNUmberPii17 to i64
  %arrayidx3__Z25getAverageOfAllEvenNUmberPii = getelementptr inbounds i32, i32* %tmp__Z25getAverageOfAllEvenNUmberPii16, i64 %idxprom2__Z25getAverageOfAllEvenNUmberPii
  %tmp__Z25getAverageOfAllEvenNUmberPii18 = load i32, i32* %arrayidx3__Z25getAverageOfAllEvenNUmberPii, align 4
  call void @stg_update_load_i32(i32* %arrayidx3__Z25getAverageOfAllEvenNUmberPii, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @292, i32 0, i32 0))
  %tmp__Z25getAverageOfAllEvenNUmberPii19 = load i32, i32* %sum__Z25getAverageOfAllEvenNUmberPii, align 4
  call void @stg_update_load_i32(i32* %sum__Z25getAverageOfAllEvenNUmberPii, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @294, i32 0, i32 0))
  %add__Z25getAverageOfAllEvenNUmberPii = add nsw i32 %tmp__Z25getAverageOfAllEvenNUmberPii19, %tmp__Z25getAverageOfAllEvenNUmberPii18
  call void @stg_update_op(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @295, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @296, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @297, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @298, i32 0, i32 0))
  store i32 %add__Z25getAverageOfAllEvenNUmberPii, i32* %sum__Z25getAverageOfAllEvenNUmberPii, align 4
  call void @stg_update_store_i32(i32* %sum__Z25getAverageOfAllEvenNUmberPii, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @299, i32 0, i32 0))
  %tmp__Z25getAverageOfAllEvenNUmberPii20 = load i32, i32* %count__Z25getAverageOfAllEvenNUmberPii, align 4
  call void @stg_update_load_i32(i32* %count__Z25getAverageOfAllEvenNUmberPii, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @301, i32 0, i32 0))
  %inc__Z25getAverageOfAllEvenNUmberPii = add nsw i32 %tmp__Z25getAverageOfAllEvenNUmberPii20, 1
  call void @stg_update_op(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @302, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @303, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @304, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @305, i32 0, i32 0))
  store i32 %inc__Z25getAverageOfAllEvenNUmberPii, i32* %count__Z25getAverageOfAllEvenNUmberPii, align 4
  call void @stg_update_store_i32(i32* %count__Z25getAverageOfAllEvenNUmberPii, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @306, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @307, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @308, i32 0, i32 0))
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %tmp__Z25getAverageOfAllEvenNUmberPii21 = load i32, i32* %i__Z25getAverageOfAllEvenNUmberPii, align 4
  call void @stg_update_load_i32(i32* %i__Z25getAverageOfAllEvenNUmberPii, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @310, i32 0, i32 0))
  %inc4__Z25getAverageOfAllEvenNUmberPii = add nsw i32 %tmp__Z25getAverageOfAllEvenNUmberPii21, 1
  call void @stg_update_op(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @311, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @312, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @313, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @314, i32 0, i32 0))
  store i32 %inc4__Z25getAverageOfAllEvenNUmberPii, i32* %i__Z25getAverageOfAllEvenNUmberPii, align 4
  call void @stg_update_store_i32(i32* %i__Z25getAverageOfAllEvenNUmberPii, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @315, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @316, i32 0, i32 0))
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @stg_end_test()
  call void @stg_record_test(i1 zeroext true)
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @317, i32 0, i32 0))
  ret void
}

declare void @stg_symbolic_array(i8*, i8*, i32, i8*, double, double, i8*, double, double) #3

declare void @stg_symbolic_variable(i8*, i8*, double, double, i8*, double, double) #3

declare void @stg_begin_test() #3

declare void @stg_input_array(i8*, i8*, i32, i8*) #3

declare void @stg_input_int(i8*, i32) #3

declare void @stg_end_test() #3

declare void @stg_record_test(i1 zeroext) #3

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

attributes #0 = { noinline norecurse optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { noinline optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 14]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}

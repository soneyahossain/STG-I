; ModuleID = 'IPUT.bc'
source_filename = "fixed_fence.float.cpp"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@__stderrp = external global %struct.__sFILE*, align 8
@.str = private unnamed_addr constant [29 x i8] c"Missing test parameter file\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Invalid file specified\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%f %f %d\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"LAT\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"LON\00", align 1
@0 = private unnamed_addr constant [4 x i8] c"lat\00", align 1
@1 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2 = private unnamed_addr constant [4 x i8] c"lon\00", align 1
@3 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@4 = private unnamed_addr constant [9 x i8] c"altitude\00", align 1
@5 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@6 = private unnamed_addr constant [8 x i8] c"low_alt\00", align 1
@7 = private unnamed_addr constant [6 x i8] c"arg_4\00", align 1
@8 = private unnamed_addr constant [9 x i8] c"high_alt\00", align 1
@9 = private unnamed_addr constant [6 x i8] c"arg_5\00", align 1
@10 = private unnamed_addr constant [8 x i8] c"low_lat\00", align 1
@11 = private unnamed_addr constant [6 x i8] c"arg_6\00", align 1
@12 = private unnamed_addr constant [9 x i8] c"high_lat\00", align 1
@13 = private unnamed_addr constant [6 x i8] c"arg_7\00", align 1
@14 = private unnamed_addr constant [8 x i8] c"low_lon\00", align 1
@15 = private unnamed_addr constant [6 x i8] c"arg_8\00", align 1
@16 = private unnamed_addr constant [9 x i8] c"high_lon\00", align 1
@17 = private unnamed_addr constant [6 x i8] c"arg_9\00", align 1
@18 = private unnamed_addr constant [4 x i8] c"lat\00", align 1
@19 = private unnamed_addr constant [4 x i8] c"lon\00", align 1
@20 = private unnamed_addr constant [9 x i8] c"altitude\00", align 1
@21 = private unnamed_addr constant [8 x i8] c"low_alt\00", align 1
@22 = private unnamed_addr constant [9 x i8] c"high_alt\00", align 1
@23 = private unnamed_addr constant [8 x i8] c"low_lat\00", align 1
@24 = private unnamed_addr constant [9 x i8] c"high_lat\00", align 1
@25 = private unnamed_addr constant [8 x i8] c"low_lon\00", align 1
@26 = private unnamed_addr constant [9 x i8] c"high_lon\00", align 1
@27 = private unnamed_addr constant [7 x i8] c"(i8 1)\00", align 1
@28 = private unnamed_addr constant [31 x i8] c"tmp__Z13checkGeofencefffffffff\00", align 1
@29 = private unnamed_addr constant [31 x i8] c"tmp__Z13checkGeofencefffffffff\00", align 1
@30 = private unnamed_addr constant [32 x i8] c"tmp__Z13checkGeofencefffffffff1\00", align 1
@31 = private unnamed_addr constant [32 x i8] c"tmp__Z13checkGeofencefffffffff1\00", align 1
@32 = private unnamed_addr constant [31 x i8] c"cmp__Z13checkGeofencefffffffff\00", align 1
@33 = private unnamed_addr constant [31 x i8] c"tmp__Z13checkGeofencefffffffff\00", align 1
@34 = private unnamed_addr constant [4 x i8] c"olt\00", align 1
@35 = private unnamed_addr constant [32 x i8] c"tmp__Z13checkGeofencefffffffff1\00", align 1
@36 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@37 = private unnamed_addr constant [31 x i8] c"cmp__Z13checkGeofencefffffffff\00", align 1
@38 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@39 = private unnamed_addr constant [7 x i8] c"(i8 0)\00", align 1
@40 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@41 = private unnamed_addr constant [32 x i8] c"tmp__Z13checkGeofencefffffffff2\00", align 1
@42 = private unnamed_addr constant [32 x i8] c"tmp__Z13checkGeofencefffffffff2\00", align 1
@43 = private unnamed_addr constant [32 x i8] c"tmp__Z13checkGeofencefffffffff3\00", align 1
@44 = private unnamed_addr constant [32 x i8] c"tmp__Z13checkGeofencefffffffff3\00", align 1
@45 = private unnamed_addr constant [32 x i8] c"cmp1__Z13checkGeofencefffffffff\00", align 1
@46 = private unnamed_addr constant [32 x i8] c"tmp__Z13checkGeofencefffffffff2\00", align 1
@47 = private unnamed_addr constant [4 x i8] c"ogt\00", align 1
@48 = private unnamed_addr constant [32 x i8] c"tmp__Z13checkGeofencefffffffff3\00", align 1
@49 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@50 = private unnamed_addr constant [32 x i8] c"cmp1__Z13checkGeofencefffffffff\00", align 1
@51 = private unnamed_addr constant [7 x i8] c"if.end\00", align 1
@52 = private unnamed_addr constant [7 x i8] c"(i8 0)\00", align 1
@53 = private unnamed_addr constant [9 x i8] c"if.then2\00", align 1
@54 = private unnamed_addr constant [32 x i8] c"tmp__Z13checkGeofencefffffffff4\00", align 1
@55 = private unnamed_addr constant [32 x i8] c"tmp__Z13checkGeofencefffffffff4\00", align 1
@56 = private unnamed_addr constant [32 x i8] c"tmp__Z13checkGeofencefffffffff5\00", align 1
@57 = private unnamed_addr constant [32 x i8] c"tmp__Z13checkGeofencefffffffff5\00", align 1
@58 = private unnamed_addr constant [32 x i8] c"cmp4__Z13checkGeofencefffffffff\00", align 1
@59 = private unnamed_addr constant [32 x i8] c"tmp__Z13checkGeofencefffffffff4\00", align 1
@60 = private unnamed_addr constant [4 x i8] c"olt\00", align 1
@61 = private unnamed_addr constant [32 x i8] c"tmp__Z13checkGeofencefffffffff5\00", align 1
@62 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@63 = private unnamed_addr constant [32 x i8] c"cmp4__Z13checkGeofencefffffffff\00", align 1
@64 = private unnamed_addr constant [8 x i8] c"if.end3\00", align 1
@65 = private unnamed_addr constant [7 x i8] c"(i8 0)\00", align 1
@66 = private unnamed_addr constant [9 x i8] c"if.then5\00", align 1
@67 = private unnamed_addr constant [32 x i8] c"tmp__Z13checkGeofencefffffffff6\00", align 1
@68 = private unnamed_addr constant [32 x i8] c"tmp__Z13checkGeofencefffffffff6\00", align 1
@69 = private unnamed_addr constant [32 x i8] c"tmp__Z13checkGeofencefffffffff7\00", align 1
@70 = private unnamed_addr constant [32 x i8] c"tmp__Z13checkGeofencefffffffff7\00", align 1
@71 = private unnamed_addr constant [32 x i8] c"cmp7__Z13checkGeofencefffffffff\00", align 1
@72 = private unnamed_addr constant [32 x i8] c"tmp__Z13checkGeofencefffffffff6\00", align 1
@73 = private unnamed_addr constant [4 x i8] c"ogt\00", align 1
@74 = private unnamed_addr constant [32 x i8] c"tmp__Z13checkGeofencefffffffff7\00", align 1
@75 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@76 = private unnamed_addr constant [32 x i8] c"cmp7__Z13checkGeofencefffffffff\00", align 1
@77 = private unnamed_addr constant [8 x i8] c"if.end6\00", align 1
@78 = private unnamed_addr constant [7 x i8] c"(i8 0)\00", align 1
@79 = private unnamed_addr constant [9 x i8] c"if.then8\00", align 1
@80 = private unnamed_addr constant [32 x i8] c"tmp__Z13checkGeofencefffffffff8\00", align 1
@81 = private unnamed_addr constant [32 x i8] c"tmp__Z13checkGeofencefffffffff8\00", align 1
@82 = private unnamed_addr constant [32 x i8] c"tmp__Z13checkGeofencefffffffff9\00", align 1
@83 = private unnamed_addr constant [32 x i8] c"tmp__Z13checkGeofencefffffffff9\00", align 1
@84 = private unnamed_addr constant [33 x i8] c"cmp10__Z13checkGeofencefffffffff\00", align 1
@85 = private unnamed_addr constant [32 x i8] c"tmp__Z13checkGeofencefffffffff8\00", align 1
@86 = private unnamed_addr constant [4 x i8] c"olt\00", align 1
@87 = private unnamed_addr constant [32 x i8] c"tmp__Z13checkGeofencefffffffff9\00", align 1
@88 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@89 = private unnamed_addr constant [33 x i8] c"cmp10__Z13checkGeofencefffffffff\00", align 1
@90 = private unnamed_addr constant [8 x i8] c"if.end9\00", align 1
@91 = private unnamed_addr constant [7 x i8] c"(i8 0)\00", align 1
@92 = private unnamed_addr constant [10 x i8] c"if.then11\00", align 1
@93 = private unnamed_addr constant [33 x i8] c"tmp__Z13checkGeofencefffffffff10\00", align 1
@94 = private unnamed_addr constant [33 x i8] c"tmp__Z13checkGeofencefffffffff10\00", align 1
@95 = private unnamed_addr constant [33 x i8] c"tmp__Z13checkGeofencefffffffff11\00", align 1
@96 = private unnamed_addr constant [33 x i8] c"tmp__Z13checkGeofencefffffffff11\00", align 1
@97 = private unnamed_addr constant [33 x i8] c"cmp13__Z13checkGeofencefffffffff\00", align 1
@98 = private unnamed_addr constant [33 x i8] c"tmp__Z13checkGeofencefffffffff10\00", align 1
@99 = private unnamed_addr constant [4 x i8] c"ogt\00", align 1
@100 = private unnamed_addr constant [33 x i8] c"tmp__Z13checkGeofencefffffffff11\00", align 1
@101 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@102 = private unnamed_addr constant [33 x i8] c"cmp13__Z13checkGeofencefffffffff\00", align 1
@103 = private unnamed_addr constant [9 x i8] c"if.end12\00", align 1
@104 = private unnamed_addr constant [7 x i8] c"(i8 0)\00", align 1
@105 = private unnamed_addr constant [10 x i8] c"if.then14\00", align 1
@106 = private unnamed_addr constant [33 x i8] c"tmp__Z13checkGeofencefffffffff12\00", align 1
@107 = private unnamed_addr constant [33 x i8] c"tmp__Z13checkGeofencefffffffff12\00", align 1
@108 = private unnamed_addr constant [34 x i8] c"tobool__Z13checkGeofencefffffffff\00", align 1
@109 = private unnamed_addr constant [33 x i8] c"tmp__Z13checkGeofencefffffffff12\00", align 1
@110 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@111 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@112 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@113 = private unnamed_addr constant [31 x i8] c"_Z13checkGeofencefffffffff_RET\00", align 1
@114 = private unnamed_addr constant [34 x i8] c"tobool__Z13checkGeofencefffffffff\00", align 1
@115 = private unnamed_addr constant [9 x i8] c"if.end15\00", align 1
@116 = private unnamed_addr constant [5 x i8] c"argc\00", align 1
@117 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@118 = private unnamed_addr constant [5 x i8] c"argv\00", align 1
@119 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@120 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@121 = private unnamed_addr constant [5 x i8] c"argc\00", align 1
@122 = private unnamed_addr constant [5 x i8] c"argv\00", align 1
@123 = private unnamed_addr constant [9 x i8] c"tmp_main\00", align 1
@124 = private unnamed_addr constant [9 x i8] c"tmp_main\00", align 1
@125 = private unnamed_addr constant [9 x i8] c"cmp_main\00", align 1
@126 = private unnamed_addr constant [9 x i8] c"tmp_main\00", align 1
@127 = private unnamed_addr constant [3 x i8] c"ne\00", align 1
@128 = private unnamed_addr constant [8 x i8] c"(i32 2)\00", align 1
@129 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@130 = private unnamed_addr constant [9 x i8] c"cmp_main\00", align 1
@131 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@132 = private unnamed_addr constant [10 x i8] c"tmp_main1\00", align 1
@133 = private unnamed_addr constant [17 x i8] c"%struct.__sFILE*\00", align 1
@134 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@135 = private unnamed_addr constant [10 x i8] c"tmp_main2\00", align 1
@136 = private unnamed_addr constant [10 x i8] c"tmp_main2\00", align 1
@137 = private unnamed_addr constant [10 x i8] c"tmp_main3\00", align 1
@138 = private unnamed_addr constant [10 x i8] c"tmp_main3\00", align 1
@139 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@140 = private unnamed_addr constant [10 x i8] c"tmp_main3\00", align 1
@141 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@142 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@143 = private unnamed_addr constant [11 x i8] c"call1_main\00", align 1
@144 = private unnamed_addr constant [12 x i8] c"\01_fopen_RET\00", align 1
@145 = private unnamed_addr constant [11 x i8] c"call1_main\00", align 1
@146 = private unnamed_addr constant [10 x i8] c"tmp_main4\00", align 1
@147 = private unnamed_addr constant [10 x i8] c"tmp_main4\00", align 1
@148 = private unnamed_addr constant [12 x i8] c"tobool_main\00", align 1
@149 = private unnamed_addr constant [10 x i8] c"tmp_main4\00", align 1
@150 = private unnamed_addr constant [3 x i8] c"ne\00", align 1
@151 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@152 = private unnamed_addr constant [17 x i8] c"%struct.__sFILE*\00", align 1
@153 = private unnamed_addr constant [12 x i8] c"tobool_main\00", align 1
@154 = private unnamed_addr constant [8 x i8] c"if.else\00", align 1
@155 = private unnamed_addr constant [10 x i8] c"tmp_main5\00", align 1
@156 = private unnamed_addr constant [17 x i8] c"%struct.__sFILE*\00", align 1
@157 = private unnamed_addr constant [9 x i8] c"if.then2\00", align 1
@158 = private unnamed_addr constant [7 x i8] c"if.end\00", align 1
@159 = private unnamed_addr constant [19 x i8] c"(float 200.000000)\00", align 1
@160 = private unnamed_addr constant [18 x i8] c"(float 70.000000)\00", align 1
@161 = private unnamed_addr constant [18 x i8] c"(float 80.000000)\00", align 1
@162 = private unnamed_addr constant [19 x i8] c"(float 150.000000)\00", align 1
@163 = private unnamed_addr constant [19 x i8] c"(float 170.000000)\00", align 1
@164 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@165 = private unnamed_addr constant [19 x i8] c"(float 400.000000)\00", align 1
@166 = private unnamed_addr constant [8 x i8] c"if.end4\00", align 1
@167 = private unnamed_addr constant [10 x i8] c"tmp_main6\00", align 1
@168 = private unnamed_addr constant [10 x i8] c"tmp_main6\00", align 1
@169 = private unnamed_addr constant [13 x i8] c"tobool6_main\00", align 1
@170 = private unnamed_addr constant [11 x i8] c"call5_main\00", align 1
@171 = private unnamed_addr constant [3 x i8] c"ne\00", align 1
@172 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@173 = private unnamed_addr constant [4 x i8] c"i8*\00", align 1
@174 = private unnamed_addr constant [13 x i8] c"tobool6_main\00", align 1
@175 = private unnamed_addr constant [11 x i8] c"while.cond\00", align 1
@176 = private unnamed_addr constant [10 x i8] c"tmp_main7\00", align 1
@177 = private unnamed_addr constant [10 x i8] c"tmp_main7\00", align 1
@178 = private unnamed_addr constant [10 x i8] c"conv_main\00", align 1
@179 = private unnamed_addr constant [10 x i8] c"tmp_main7\00", align 1
@180 = private unnamed_addr constant [5 x i8] c"sext\00", align 1
@181 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@182 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@183 = private unnamed_addr constant [10 x i8] c"cmp8_main\00", align 1
@184 = private unnamed_addr constant [10 x i8] c"conv_main\00", align 1
@185 = private unnamed_addr constant [3 x i8] c"eq\00", align 1
@186 = private unnamed_addr constant [9 x i8] c"(i32 35)\00", align 1
@187 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@188 = private unnamed_addr constant [10 x i8] c"cmp8_main\00", align 1
@189 = private unnamed_addr constant [11 x i8] c"while.body\00", align 1
@190 = private unnamed_addr constant [9 x i8] c"if.then9\00", align 1
@191 = private unnamed_addr constant [10 x i8] c"tmp_main8\00", align 1
@192 = private unnamed_addr constant [10 x i8] c"tmp_main8\00", align 1
@193 = private unnamed_addr constant [10 x i8] c"tmp_main9\00", align 1
@194 = private unnamed_addr constant [10 x i8] c"tmp_main9\00", align 1
@195 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@196 = private unnamed_addr constant [10 x i8] c"tmp_main8\00", align 1
@197 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@198 = private unnamed_addr constant [10 x i8] c"tmp_main9\00", align 1
@199 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@200 = private unnamed_addr constant [19 x i8] c"(float 200.000000)\00", align 1
@201 = private unnamed_addr constant [6 x i8] c"arg_4\00", align 1
@202 = private unnamed_addr constant [17 x i8] c"(float 0.000000)\00", align 1
@203 = private unnamed_addr constant [6 x i8] c"arg_5\00", align 1
@204 = private unnamed_addr constant [19 x i8] c"(float 400.000000)\00", align 1
@205 = private unnamed_addr constant [6 x i8] c"arg_6\00", align 1
@206 = private unnamed_addr constant [18 x i8] c"(float 70.000000)\00", align 1
@207 = private unnamed_addr constant [6 x i8] c"arg_7\00", align 1
@208 = private unnamed_addr constant [18 x i8] c"(float 80.000000)\00", align 1
@209 = private unnamed_addr constant [6 x i8] c"arg_8\00", align 1
@210 = private unnamed_addr constant [19 x i8] c"(float 150.000000)\00", align 1
@211 = private unnamed_addr constant [6 x i8] c"arg_9\00", align 1
@212 = private unnamed_addr constant [19 x i8] c"(float 170.000000)\00", align 1
@213 = private unnamed_addr constant [12 x i8] c"call13_main\00", align 1
@214 = private unnamed_addr constant [31 x i8] c"_Z13checkGeofencefffffffff_RET\00", align 1
@215 = private unnamed_addr constant [14 x i8] c"frombool_main\00", align 1
@216 = private unnamed_addr constant [12 x i8] c"call13_main\00", align 1
@217 = private unnamed_addr constant [5 x i8] c"zext\00", align 1
@218 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@219 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@220 = private unnamed_addr constant [14 x i8] c"frombool_main\00", align 1
@221 = private unnamed_addr constant [11 x i8] c"tmp_main10\00", align 1
@222 = private unnamed_addr constant [11 x i8] c"tmp_main10\00", align 1
@223 = private unnamed_addr constant [14 x i8] c"tobool14_main\00", align 1
@224 = private unnamed_addr constant [11 x i8] c"tmp_main10\00", align 1
@225 = private unnamed_addr constant [3 x i8] c"ne\00", align 1
@226 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@227 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@228 = private unnamed_addr constant [14 x i8] c"tobool14_main\00", align 1
@229 = private unnamed_addr constant [9 x i8] c"if.end10\00", align 1
@230 = private unnamed_addr constant [11 x i8] c"tmp_main11\00", align 1
@231 = private unnamed_addr constant [11 x i8] c"tmp_main11\00", align 1
@232 = private unnamed_addr constant [14 x i8] c"tobool15_main\00", align 1
@233 = private unnamed_addr constant [11 x i8] c"tmp_main11\00", align 1
@234 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@235 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@236 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@237 = private unnamed_addr constant [10 x i8] c"cond.true\00", align 1
@238 = private unnamed_addr constant [11 x i8] c"tmp_main12\00", align 1
@239 = private unnamed_addr constant [11 x i8] c"tmp_main12\00", align 1
@240 = private unnamed_addr constant [14 x i8] c"tobool16_main\00", align 1
@241 = private unnamed_addr constant [11 x i8] c"tmp_main12\00", align 1
@242 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@243 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@244 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@245 = private unnamed_addr constant [10 x i8] c"lnot_main\00", align 1
@246 = private unnamed_addr constant [14 x i8] c"tobool16_main\00", align 1
@247 = private unnamed_addr constant [4 x i8] c"xor\00", align 1
@248 = private unnamed_addr constant [7 x i8] c"(i1 1)\00", align 1
@249 = private unnamed_addr constant [11 x i8] c"cond.false\00", align 1
@250 = private unnamed_addr constant [10 x i8] c"cond_main\00", align 1
@251 = private unnamed_addr constant [46 x i8] c"cond.true,tobool15_main,cond.false,lnot_main,\00", align 1
@252 = private unnamed_addr constant [16 x i8] c"frombool17_main\00", align 1
@253 = private unnamed_addr constant [10 x i8] c"cond_main\00", align 1
@254 = private unnamed_addr constant [5 x i8] c"zext\00", align 1
@255 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@256 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@257 = private unnamed_addr constant [16 x i8] c"frombool17_main\00", align 1
@258 = private unnamed_addr constant [11 x i8] c"tmp_main13\00", align 1
@259 = private unnamed_addr constant [11 x i8] c"tmp_main13\00", align 1
@260 = private unnamed_addr constant [14 x i8] c"tobool18_main\00", align 1
@261 = private unnamed_addr constant [11 x i8] c"tmp_main13\00", align 1
@262 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@263 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@264 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@265 = private unnamed_addr constant [9 x i8] c"cond.end\00", align 1
@266 = private unnamed_addr constant [11 x i8] c"tmp_main14\00", align 1
@267 = private unnamed_addr constant [11 x i8] c"tmp_main14\00", align 1
@268 = private unnamed_addr constant [11 x i8] c"tmp_main15\00", align 1
@269 = private unnamed_addr constant [11 x i8] c"tmp_main15\00", align 1
@270 = private unnamed_addr constant [9 x i8] c"main_RET\00", align 1
@271 = private unnamed_addr constant [11 x i8] c"tmp_main15\00", align 1
@272 = private unnamed_addr constant [10 x i8] c"while.end\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @_Z13checkGeofencefffffffff(float %lat, float %lon, float %altitude, float %low_alt, float %high_alt, float %low_lat, float %high_lat, float %low_lon, float %high_lon) #0 {
entry:
  call void @stg_update_char(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @3, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @5, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @7, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @9, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @11, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @13, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @15, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @17, i32 0, i32 0))
  %lat.addr__Z13checkGeofencefffffffff = alloca float, align 4
  %lon.addr__Z13checkGeofencefffffffff = alloca float, align 4
  %altitude.addr__Z13checkGeofencefffffffff = alloca float, align 4
  %low_alt.addr__Z13checkGeofencefffffffff = alloca float, align 4
  %high_alt.addr__Z13checkGeofencefffffffff = alloca float, align 4
  %low_lat.addr__Z13checkGeofencefffffffff = alloca float, align 4
  %high_lat.addr__Z13checkGeofencefffffffff = alloca float, align 4
  %low_lon.addr__Z13checkGeofencefffffffff = alloca float, align 4
  %high_lon.addr__Z13checkGeofencefffffffff = alloca float, align 4
  %inside__Z13checkGeofencefffffffff = alloca i8, align 1
  store float %lat, float* %lat.addr__Z13checkGeofencefffffffff, align 4
  call void @stg_update_store_float(float* %lat.addr__Z13checkGeofencefffffffff, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @18, i32 0, i32 0))
  store float %lon, float* %lon.addr__Z13checkGeofencefffffffff, align 4
  call void @stg_update_store_float(float* %lon.addr__Z13checkGeofencefffffffff, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @19, i32 0, i32 0))
  store float %altitude, float* %altitude.addr__Z13checkGeofencefffffffff, align 4
  call void @stg_update_store_float(float* %altitude.addr__Z13checkGeofencefffffffff, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @20, i32 0, i32 0))
  store float %low_alt, float* %low_alt.addr__Z13checkGeofencefffffffff, align 4
  call void @stg_update_store_float(float* %low_alt.addr__Z13checkGeofencefffffffff, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @21, i32 0, i32 0))
  store float %high_alt, float* %high_alt.addr__Z13checkGeofencefffffffff, align 4
  call void @stg_update_store_float(float* %high_alt.addr__Z13checkGeofencefffffffff, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @22, i32 0, i32 0))
  store float %low_lat, float* %low_lat.addr__Z13checkGeofencefffffffff, align 4
  call void @stg_update_store_float(float* %low_lat.addr__Z13checkGeofencefffffffff, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @23, i32 0, i32 0))
  store float %high_lat, float* %high_lat.addr__Z13checkGeofencefffffffff, align 4
  call void @stg_update_store_float(float* %high_lat.addr__Z13checkGeofencefffffffff, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @24, i32 0, i32 0))
  store float %low_lon, float* %low_lon.addr__Z13checkGeofencefffffffff, align 4
  call void @stg_update_store_float(float* %low_lon.addr__Z13checkGeofencefffffffff, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @25, i32 0, i32 0))
  store float %high_lon, float* %high_lon.addr__Z13checkGeofencefffffffff, align 4
  call void @stg_update_store_float(float* %high_lon.addr__Z13checkGeofencefffffffff, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @26, i32 0, i32 0))
  store i8 1, i8* %inside__Z13checkGeofencefffffffff, align 1
  call void @stg_update_store_i8(i8* %inside__Z13checkGeofencefffffffff, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @27, i32 0, i32 0))
  %tmp__Z13checkGeofencefffffffff = load float, float* %altitude.addr__Z13checkGeofencefffffffff, align 4
  call void @stg_update_load_float(float* %altitude.addr__Z13checkGeofencefffffffff, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @29, i32 0, i32 0))
  %tmp__Z13checkGeofencefffffffff1 = load float, float* %low_alt.addr__Z13checkGeofencefffffffff, align 4
  call void @stg_update_load_float(float* %low_alt.addr__Z13checkGeofencefffffffff, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @31, i32 0, i32 0))
  %cmp__Z13checkGeofencefffffffff = fcmp olt float %tmp__Z13checkGeofencefffffffff, %tmp__Z13checkGeofencefffffffff1
  call void @stg_update_cmp(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @32, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @33, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @34, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @35, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @36, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp__Z13checkGeofencefffffffff, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @37, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @38, i32 0, i32 0))
  br i1 %cmp__Z13checkGeofencefffffffff, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8 0, i8* %inside__Z13checkGeofencefffffffff, align 1
  call void @stg_update_store_i8(i8* %inside__Z13checkGeofencefffffffff, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @39, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @40, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %tmp__Z13checkGeofencefffffffff2 = load float, float* %altitude.addr__Z13checkGeofencefffffffff, align 4
  call void @stg_update_load_float(float* %altitude.addr__Z13checkGeofencefffffffff, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @42, i32 0, i32 0))
  %tmp__Z13checkGeofencefffffffff3 = load float, float* %high_alt.addr__Z13checkGeofencefffffffff, align 4
  call void @stg_update_load_float(float* %high_alt.addr__Z13checkGeofencefffffffff, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @44, i32 0, i32 0))
  %cmp1__Z13checkGeofencefffffffff = fcmp ogt float %tmp__Z13checkGeofencefffffffff2, %tmp__Z13checkGeofencefffffffff3
  call void @stg_update_cmp(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @45, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @46, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @47, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @48, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @49, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp1__Z13checkGeofencefffffffff, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @50, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @51, i32 0, i32 0))
  br i1 %cmp1__Z13checkGeofencefffffffff, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  store i8 0, i8* %inside__Z13checkGeofencefffffffff, align 1
  call void @stg_update_store_i8(i8* %inside__Z13checkGeofencefffffffff, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @52, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @53, i32 0, i32 0))
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %tmp__Z13checkGeofencefffffffff4 = load float, float* %lat.addr__Z13checkGeofencefffffffff, align 4
  call void @stg_update_load_float(float* %lat.addr__Z13checkGeofencefffffffff, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @55, i32 0, i32 0))
  %tmp__Z13checkGeofencefffffffff5 = load float, float* %low_lat.addr__Z13checkGeofencefffffffff, align 4
  call void @stg_update_load_float(float* %low_lat.addr__Z13checkGeofencefffffffff, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @57, i32 0, i32 0))
  %cmp4__Z13checkGeofencefffffffff = fcmp olt float %tmp__Z13checkGeofencefffffffff4, %tmp__Z13checkGeofencefffffffff5
  call void @stg_update_cmp(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @58, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @59, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @60, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @61, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @62, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp4__Z13checkGeofencefffffffff, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @63, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @64, i32 0, i32 0))
  br i1 %cmp4__Z13checkGeofencefffffffff, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  store i8 0, i8* %inside__Z13checkGeofencefffffffff, align 1
  call void @stg_update_store_i8(i8* %inside__Z13checkGeofencefffffffff, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @65, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @66, i32 0, i32 0))
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3
  %tmp__Z13checkGeofencefffffffff6 = load float, float* %lat.addr__Z13checkGeofencefffffffff, align 4
  call void @stg_update_load_float(float* %lat.addr__Z13checkGeofencefffffffff, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @68, i32 0, i32 0))
  %tmp__Z13checkGeofencefffffffff7 = load float, float* %high_lat.addr__Z13checkGeofencefffffffff, align 4
  call void @stg_update_load_float(float* %high_lat.addr__Z13checkGeofencefffffffff, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @70, i32 0, i32 0))
  %cmp7__Z13checkGeofencefffffffff = fcmp ogt float %tmp__Z13checkGeofencefffffffff6, %tmp__Z13checkGeofencefffffffff7
  call void @stg_update_cmp(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @71, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @72, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @73, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @74, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @75, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp7__Z13checkGeofencefffffffff, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @76, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @77, i32 0, i32 0))
  br i1 %cmp7__Z13checkGeofencefffffffff, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  store i8 0, i8* %inside__Z13checkGeofencefffffffff, align 1
  call void @stg_update_store_i8(i8* %inside__Z13checkGeofencefffffffff, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @78, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @79, i32 0, i32 0))
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6
  %tmp__Z13checkGeofencefffffffff8 = load float, float* %lon.addr__Z13checkGeofencefffffffff, align 4
  call void @stg_update_load_float(float* %lon.addr__Z13checkGeofencefffffffff, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @81, i32 0, i32 0))
  %tmp__Z13checkGeofencefffffffff9 = load float, float* %low_lon.addr__Z13checkGeofencefffffffff, align 4
  call void @stg_update_load_float(float* %low_lon.addr__Z13checkGeofencefffffffff, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @83, i32 0, i32 0))
  %cmp10__Z13checkGeofencefffffffff = fcmp olt float %tmp__Z13checkGeofencefffffffff8, %tmp__Z13checkGeofencefffffffff9
  call void @stg_update_cmp(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @84, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @85, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @86, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @87, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @88, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp10__Z13checkGeofencefffffffff, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @89, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @90, i32 0, i32 0))
  br i1 %cmp10__Z13checkGeofencefffffffff, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end9
  store i8 0, i8* %inside__Z13checkGeofencefffffffff, align 1
  call void @stg_update_store_i8(i8* %inside__Z13checkGeofencefffffffff, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @91, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @92, i32 0, i32 0))
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end9
  %tmp__Z13checkGeofencefffffffff10 = load float, float* %lon.addr__Z13checkGeofencefffffffff, align 4
  call void @stg_update_load_float(float* %lon.addr__Z13checkGeofencefffffffff, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @94, i32 0, i32 0))
  %tmp__Z13checkGeofencefffffffff11 = load float, float* %high_lon.addr__Z13checkGeofencefffffffff, align 4
  call void @stg_update_load_float(float* %high_lon.addr__Z13checkGeofencefffffffff, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @96, i32 0, i32 0))
  %cmp13__Z13checkGeofencefffffffff = fcmp ogt float %tmp__Z13checkGeofencefffffffff10, %tmp__Z13checkGeofencefffffffff11
  call void @stg_update_cmp(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @97, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @98, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @99, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @100, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @101, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp13__Z13checkGeofencefffffffff, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @102, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @103, i32 0, i32 0))
  br i1 %cmp13__Z13checkGeofencefffffffff, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end12
  store i8 0, i8* %inside__Z13checkGeofencefffffffff, align 1
  call void @stg_update_store_i8(i8* %inside__Z13checkGeofencefffffffff, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @104, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @105, i32 0, i32 0))
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end12
  %tmp__Z13checkGeofencefffffffff12 = load i8, i8* %inside__Z13checkGeofencefffffffff, align 1
  call void @stg_update_load_i8(i8* %inside__Z13checkGeofencefffffffff, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @107, i32 0, i32 0))
  %tobool__Z13checkGeofencefffffffff = trunc i8 %tmp__Z13checkGeofencefffffffff12 to i1
  call void @stg_update_cast_i8(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @108, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @109, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @110, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @111, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @112, i32 0, i32 0), i8 %tmp__Z13checkGeofencefffffffff12)
  call void @stg_update_char(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @113, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @114, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @115, i32 0, i32 0))
  ret i1 %tobool__Z13checkGeofencefffffffff
}

; Function Attrs: noinline norecurse optnone ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #1 {
entry:
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @116, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @117, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @118, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @119, i32 0, i32 0))
  %retval_main = alloca i32, align 4
  %argc.addr_main = alloca i32, align 4
  %argv.addr_main = alloca i8**, align 8
  %lat_main = alloca float, align 4
  %lon_main = alloca float, align 4
  %altitude_main = alloca float, align 4
  %low_alt_main = alloca float, align 4
  %high_alt_main = alloca float, align 4
  %high_lat_main = alloca float, align 4
  %low_lat_main = alloca float, align 4
  %high_lon_main = alloca float, align 4
  %low_lon_main = alloca float, align 4
  %params_main = alloca %struct.__sFILE*, align 8
  %buf_main = alloca [1001 x i8], align 16
  %expected_main = alloca i32, align 4
  %isGeofenced_main = alloca i8, align 1
  %testPassed_main = alloca i8, align 1
  store i32 0, i32* %retval_main, align 4
  call void @stg_update_store_i32(i32* %retval_main, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @120, i32 0, i32 0))
  store i32 %argc, i32* %argc.addr_main, align 4
  call void @stg_update_store_i32(i32* %argc.addr_main, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @121, i32 0, i32 0))
  store i8** %argv, i8*** %argv.addr_main, align 8
  %tmp_main = load i32, i32* %argc.addr_main, align 4
  call void @stg_update_load_i32(i32* %argc.addr_main, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @124, i32 0, i32 0))
  %cmp_main = icmp ne i32 %tmp_main, 2
  call void @stg_update_cmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @125, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @126, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @127, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @128, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @129, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp_main, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @130, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @131, i32 0, i32 0))
  br i1 %cmp_main, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %tmp_main1 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call_main = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %tmp_main1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 1) #4
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @134, i32 0, i32 0))
  unreachable

if.else:                                          ; preds = %entry
  %tmp_main2 = load i8**, i8*** %argv.addr_main, align 8
  %arrayidx_main = getelementptr inbounds i8*, i8** %tmp_main2, i64 1
  %tmp_main3 = load i8*, i8** %arrayidx_main, align 8
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @139, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @140, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @141, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @142, i32 0, i32 0))
  %call1_main = call %struct.__sFILE* @"\01_fopen"(i8* %tmp_main3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @143, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @144, i32 0, i32 0))
  store %struct.__sFILE* %call1_main, %struct.__sFILE** %params_main, align 8
  %tmp_main4 = load %struct.__sFILE*, %struct.__sFILE** %params_main, align 8
  %tobool_main = icmp ne %struct.__sFILE* %tmp_main4, null
  call void @stg_update_cmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @148, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @149, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @150, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @151, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @152, i32 0, i32 0))
  call void @stg_update_pc(i1 %tobool_main, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @153, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @154, i32 0, i32 0))
  br i1 %tobool_main, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.else
  %tmp_main5 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call3_main = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %tmp_main5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  call void @exit(i32 1) #4
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @157, i32 0, i32 0))
  unreachable

if.end:                                           ; preds = %if.else
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @158, i32 0, i32 0))
  br label %if.end4

if.end4:                                          ; preds = %if.end
  store float 2.000000e+02, float* %altitude_main, align 4
  call void @stg_update_store_float(float* %altitude_main, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @159, i32 0, i32 0))
  store float 7.000000e+01, float* %low_lat_main, align 4
  call void @stg_update_store_float(float* %low_lat_main, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @160, i32 0, i32 0))
  store float 8.000000e+01, float* %high_lat_main, align 4
  call void @stg_update_store_float(float* %high_lat_main, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @161, i32 0, i32 0))
  store float 1.500000e+02, float* %low_lon_main, align 4
  call void @stg_update_store_float(float* %low_lon_main, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @162, i32 0, i32 0))
  store float 1.700000e+02, float* %high_lon_main, align 4
  call void @stg_update_store_float(float* %high_lon_main, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @163, i32 0, i32 0))
  store float 0.000000e+00, float* %low_alt_main, align 4
  call void @stg_update_store_float(float* %low_alt_main, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @164, i32 0, i32 0))
  store float 4.000000e+02, float* %high_alt_main, align 4
  call void @stg_update_store_float(float* %high_alt_main, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @165, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @166, i32 0, i32 0))
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %if.then9, %if.end4
  %arraydecay_main = getelementptr inbounds [1001 x i8], [1001 x i8]* %buf_main, i32 0, i32 0
  %tmp_main6 = load %struct.__sFILE*, %struct.__sFILE** %params_main, align 8
  %call5_main = call i8* @fgets(i8* %arraydecay_main, i32 1000, %struct.__sFILE* %tmp_main6)
  %tobool6_main = icmp ne i8* %call5_main, null
  call void @stg_update_cmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @169, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @170, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @171, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @172, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @173, i32 0, i32 0))
  call void @stg_update_pc(i1 %tobool6_main, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @174, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @175, i32 0, i32 0))
  br i1 %tobool6_main, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arrayidx7_main = getelementptr inbounds [1001 x i8], [1001 x i8]* %buf_main, i64 0, i64 0
  %tmp_main7 = load i8, i8* %arrayidx7_main, align 16
  call void @stg_update_load_i8(i8* %arrayidx7_main, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @177, i32 0, i32 0))
  %conv_main = sext i8 %tmp_main7 to i32
  call void @stg_update_cast_i8(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @178, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @179, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @180, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @181, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @182, i32 0, i32 0), i8 %tmp_main7)
  %cmp8_main = icmp eq i32 %conv_main, 35
  call void @stg_update_cmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @183, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @184, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @185, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @186, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @187, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp8_main, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @188, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @189, i32 0, i32 0))
  br i1 %cmp8_main, label %if.then9, label %if.end10

if.then9:                                         ; preds = %while.body
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @190, i32 0, i32 0))
  br label %while.cond

if.end10:                                         ; preds = %while.body
  %arraydecay11_main = getelementptr inbounds [1001 x i8], [1001 x i8]* %buf_main, i32 0, i32 0
  %call12_main = call i32 (i8*, i8*, ...) @sscanf(i8* %arraydecay11_main, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), float* %lat_main, float* %lon_main, i32* %expected_main)
  call void @stg_update_input_i32(i32* %expected_main)
  call void @stg_update_input_float(float* %lon_main)
  call void @stg_update_input_float(float* %lat_main)
  call void @stg_begin_test()
  call void @stg_symbolic_variable_float(float* %lat_main, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0))
  call void @stg_symbolic_variable_float(float* %lon_main, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0))
  %tmp_main8 = load float, float* %lat_main, align 4
  call void @stg_update_load_float(float* %lat_main, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @192, i32 0, i32 0))
  %tmp_main9 = load float, float* %lon_main, align 4
  call void @stg_update_load_float(float* %lon_main, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @194, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @195, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @196, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @197, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @198, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @199, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @200, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @201, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @202, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @203, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @204, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @205, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @206, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @207, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @208, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @209, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @210, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @211, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @212, i32 0, i32 0))
  %call13_main = call zeroext i1 @_Z13checkGeofencefffffffff(float %tmp_main8, float %tmp_main9, float 2.000000e+02, float 0.000000e+00, float 4.000000e+02, float 7.000000e+01, float 8.000000e+01, float 1.500000e+02, float 1.700000e+02)
  call void @stg_update_char(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @213, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @214, i32 0, i32 0))
  call void @stg_update_cast_i1(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @215, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @216, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @217, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @218, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @219, i32 0, i32 0), i1 %call13_main)
  %frombool_main = zext i1 %call13_main to i8
  store i8 %frombool_main, i8* %isGeofenced_main, align 1
  call void @stg_update_store_i8(i8* %isGeofenced_main, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @220, i32 0, i32 0))
  call void @stg_end_test()
  %tmp_main10 = load i32, i32* %expected_main, align 4
  call void @stg_update_load_i32(i32* %expected_main, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @222, i32 0, i32 0))
  %tobool14_main = icmp ne i32 %tmp_main10, 0
  call void @stg_update_cmp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @223, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @224, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @225, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @226, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @227, i32 0, i32 0))
  call void @stg_update_pc(i1 %tobool14_main, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @228, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @229, i32 0, i32 0))
  br i1 %tobool14_main, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end10
  %tmp_main11 = load i8, i8* %isGeofenced_main, align 1
  call void @stg_update_load_i8(i8* %isGeofenced_main, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @231, i32 0, i32 0))
  %tobool15_main = trunc i8 %tmp_main11 to i1
  call void @stg_update_cast_i8(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @232, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @233, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @234, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @235, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @236, i32 0, i32 0), i8 %tmp_main11)
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @237, i32 0, i32 0))
  br label %cond.end

cond.false:                                       ; preds = %if.end10
  %tmp_main12 = load i8, i8* %isGeofenced_main, align 1
  call void @stg_update_load_i8(i8* %isGeofenced_main, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @239, i32 0, i32 0))
  %tobool16_main = trunc i8 %tmp_main12 to i1
  call void @stg_update_cast_i8(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @240, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @241, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @242, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @243, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @244, i32 0, i32 0), i8 %tmp_main12)
  %lnot_main = xor i1 %tobool16_main, true
  call void @stg_update_op(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @245, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @246, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @247, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @248, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @249, i32 0, i32 0))
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond_main = phi i1 [ %tobool15_main, %cond.true ], [ %lnot_main, %cond.false ]
  call void @stg_update_phi(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @250, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @251, i32 0, i32 0))
  call void @stg_update_cast_i1(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @252, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @253, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @254, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @255, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @256, i32 0, i32 0), i1 %cond_main)
  %frombool17_main = zext i1 %cond_main to i8
  store i8 %frombool17_main, i8* %testPassed_main, align 1
  call void @stg_update_store_i8(i8* %testPassed_main, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @257, i32 0, i32 0))
  %tmp_main13 = load i8, i8* %testPassed_main, align 1
  call void @stg_update_load_i8(i8* %testPassed_main, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @259, i32 0, i32 0))
  %tobool18_main = trunc i8 %tmp_main13 to i1
  call void @stg_update_cast_i8(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @260, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @261, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @262, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @263, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @264, i32 0, i32 0), i8 %tmp_main13)
  call void @stg_record_test(i1 zeroext %tobool18_main)
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @265, i32 0, i32 0))
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %tmp_main14 = load %struct.__sFILE*, %struct.__sFILE** %params_main, align 8
  %call19_main = call i32 @fclose(%struct.__sFILE* %tmp_main14)
  %tmp_main15 = load i32, i32* %retval_main, align 4
  call void @stg_update_load_i32(i32* %retval_main, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @269, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @270, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @271, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @272, i32 0, i32 0))
  ret i32 %tmp_main15
}

declare i32 @fprintf(%struct.__sFILE*, i8*, ...) #2

; Function Attrs: noreturn
declare void @exit(i32) #3

declare %struct.__sFILE* @"\01_fopen"(i8*, i8*) #2

declare i8* @fgets(i8*, i32, %struct.__sFILE*) #2

declare i32 @sscanf(i8*, i8*, ...) #2

declare void @stg_begin_test() #2

declare void @stg_symbolic_variable_float(float*, i8*) #2

declare void @stg_end_test() #2

declare void @stg_record_test(i1 zeroext) #2

declare i32 @fclose(%struct.__sFILE*) #2

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
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 14]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}

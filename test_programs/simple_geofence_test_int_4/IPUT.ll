; ModuleID = 'IPUT.bc'
source_filename = "simple_geofence.int4.cpp"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"uniform\00", align 1
@uniform = global i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"got same value\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"got different value\0A\00", align 1
@__stderrp = external global %struct.__sFILE*, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"Missing test parameter file\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Invalid file specified\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"LAT\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"LON\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"ALT\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"INC\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"HLAT\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"LLAT\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"HLON\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"LLON\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"%d %d %d %d %d %d %d %d %d\00", align 1
@.str.15 = private unnamed_addr constant [73 x i8] c"lat=%d lon=%d alt=%d inc=%d hlat=%d llat=%d hlon=%d llon=%d expected=%d\0A\00", align 1
@0 = private unnamed_addr constant [4 x i8] c"lat\00", align 1
@1 = private unnamed_addr constant [4 x i8] c"lon\00", align 1
@2 = private unnamed_addr constant [10 x i8] c"inclusion\00", align 1
@3 = private unnamed_addr constant [9 x i8] c"high_lat\00", align 1
@4 = private unnamed_addr constant [8 x i8] c"low_lat\00", align 1
@5 = private unnamed_addr constant [9 x i8] c"high_lon\00", align 1
@6 = private unnamed_addr constant [8 x i8] c"low_lon\00", align 1
@7 = private unnamed_addr constant [7 x i8] c"(i8 0)\00", align 1
@8 = private unnamed_addr constant [27 x i8] c"tmp__Z11insideFenceiiiiiii\00", align 1
@9 = private unnamed_addr constant [27 x i8] c"tmp__Z11insideFenceiiiiiii\00", align 1
@10 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiiiiiii1\00", align 1
@11 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiiiiiii1\00", align 1
@12 = private unnamed_addr constant [27 x i8] c"cmp__Z11insideFenceiiiiiii\00", align 1
@13 = private unnamed_addr constant [27 x i8] c"tmp__Z11insideFenceiiiiiii\00", align 1
@14 = private unnamed_addr constant [4 x i8] c"sgt\00", align 1
@15 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiiiiiii1\00", align 1
@16 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@17 = private unnamed_addr constant [27 x i8] c"cmp__Z11insideFenceiiiiiii\00", align 1
@18 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@19 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiiiiiii2\00", align 1
@20 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiiiiiii2\00", align 1
@21 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiiiiiii3\00", align 1
@22 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiiiiiii3\00", align 1
@23 = private unnamed_addr constant [28 x i8] c"cmp1__Z11insideFenceiiiiiii\00", align 1
@24 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiiiiiii2\00", align 1
@25 = private unnamed_addr constant [4 x i8] c"slt\00", align 1
@26 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiiiiiii3\00", align 1
@27 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@28 = private unnamed_addr constant [28 x i8] c"cmp1__Z11insideFenceiiiiiii\00", align 1
@29 = private unnamed_addr constant [14 x i8] c"land.lhs.true\00", align 1
@30 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiiiiiii4\00", align 1
@31 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiiiiiii4\00", align 1
@32 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiiiiiii5\00", align 1
@33 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiiiiiii5\00", align 1
@34 = private unnamed_addr constant [28 x i8] c"cmp3__Z11insideFenceiiiiiii\00", align 1
@35 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiiiiiii4\00", align 1
@36 = private unnamed_addr constant [4 x i8] c"slt\00", align 1
@37 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiiiiiii5\00", align 1
@38 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@39 = private unnamed_addr constant [28 x i8] c"cmp3__Z11insideFenceiiiiiii\00", align 1
@40 = private unnamed_addr constant [15 x i8] c"land.lhs.true2\00", align 1
@41 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiiiiiii6\00", align 1
@42 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiiiiiii6\00", align 1
@43 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiiiiiii7\00", align 1
@44 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiiiiiii7\00", align 1
@45 = private unnamed_addr constant [28 x i8] c"cmp4__Z11insideFenceiiiiiii\00", align 1
@46 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiiiiiii6\00", align 1
@47 = private unnamed_addr constant [4 x i8] c"sgt\00", align 1
@48 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiiiiiii7\00", align 1
@49 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@50 = private unnamed_addr constant [9 x i8] c"land.rhs\00", align 1
@51 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiiiiiii8\00", align 1
@52 = private unnamed_addr constant [79 x i8] c"land.lhs.true2,0,land.lhs.true,0,entry,0,land.rhs,cmp4__Z11insideFenceiiiiiii,\00", align 1
@53 = private unnamed_addr constant [28 x i8] c"conv__Z11insideFenceiiiiiii\00", align 1
@54 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiiiiiii8\00", align 1
@55 = private unnamed_addr constant [5 x i8] c"zext\00", align 1
@56 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@57 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiiiiiii9\00", align 1
@58 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiiiiiii9\00", align 1
@59 = private unnamed_addr constant [30 x i8] c"tobool__Z11insideFenceiiiiiii\00", align 1
@60 = private unnamed_addr constant [28 x i8] c"tmp__Z11insideFenceiiiiiii9\00", align 1
@61 = private unnamed_addr constant [3 x i8] c"ne\00", align 1
@62 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@63 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@64 = private unnamed_addr constant [28 x i8] c"lnot__Z11insideFenceiiiiiii\00", align 1
@65 = private unnamed_addr constant [30 x i8] c"tobool__Z11insideFenceiiiiiii\00", align 1
@66 = private unnamed_addr constant [4 x i8] c"xor\00", align 1
@67 = private unnamed_addr constant [7 x i8] c"(i1 1)\00", align 1
@68 = private unnamed_addr constant [29 x i8] c"conv5__Z11insideFenceiiiiiii\00", align 1
@69 = private unnamed_addr constant [28 x i8] c"lnot__Z11insideFenceiiiiiii\00", align 1
@70 = private unnamed_addr constant [5 x i8] c"zext\00", align 1
@71 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@72 = private unnamed_addr constant [27 x i8] c"xor__Z11insideFenceiiiiiii\00", align 1
@73 = private unnamed_addr constant [28 x i8] c"conv__Z11insideFenceiiiiiii\00", align 1
@74 = private unnamed_addr constant [4 x i8] c"xor\00", align 1
@75 = private unnamed_addr constant [29 x i8] c"conv5__Z11insideFenceiiiiiii\00", align 1
@76 = private unnamed_addr constant [31 x i8] c"tobool6__Z11insideFenceiiiiiii\00", align 1
@77 = private unnamed_addr constant [27 x i8] c"xor__Z11insideFenceiiiiiii\00", align 1
@78 = private unnamed_addr constant [3 x i8] c"ne\00", align 1
@79 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@80 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@81 = private unnamed_addr constant [32 x i8] c"frombool__Z11insideFenceiiiiiii\00", align 1
@82 = private unnamed_addr constant [31 x i8] c"tobool6__Z11insideFenceiiiiiii\00", align 1
@83 = private unnamed_addr constant [5 x i8] c"zext\00", align 1
@84 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@85 = private unnamed_addr constant [32 x i8] c"frombool__Z11insideFenceiiiiiii\00", align 1
@86 = private unnamed_addr constant [29 x i8] c"tmp__Z11insideFenceiiiiiii10\00", align 1
@87 = private unnamed_addr constant [29 x i8] c"tmp__Z11insideFenceiiiiiii10\00", align 1
@88 = private unnamed_addr constant [29 x i8] c"tmp__Z11insideFenceiiiiiii11\00", align 1
@89 = private unnamed_addr constant [29 x i8] c"tmp__Z11insideFenceiiiiiii11\00", align 1
@90 = private unnamed_addr constant [28 x i8] c"cmp7__Z11insideFenceiiiiiii\00", align 1
@91 = private unnamed_addr constant [29 x i8] c"tmp__Z11insideFenceiiiiiii10\00", align 1
@92 = private unnamed_addr constant [4 x i8] c"sge\00", align 1
@93 = private unnamed_addr constant [29 x i8] c"tmp__Z11insideFenceiiiiiii11\00", align 1
@94 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@95 = private unnamed_addr constant [28 x i8] c"cmp7__Z11insideFenceiiiiiii\00", align 1
@96 = private unnamed_addr constant [9 x i8] c"land.end\00", align 1
@97 = private unnamed_addr constant [29 x i8] c"tmp__Z11insideFenceiiiiiii12\00", align 1
@98 = private unnamed_addr constant [29 x i8] c"tmp__Z11insideFenceiiiiiii12\00", align 1
@99 = private unnamed_addr constant [29 x i8] c"tmp__Z11insideFenceiiiiiii13\00", align 1
@100 = private unnamed_addr constant [29 x i8] c"tmp__Z11insideFenceiiiiiii13\00", align 1
@101 = private unnamed_addr constant [28 x i8] c"cmp9__Z11insideFenceiiiiiii\00", align 1
@102 = private unnamed_addr constant [29 x i8] c"tmp__Z11insideFenceiiiiiii12\00", align 1
@103 = private unnamed_addr constant [4 x i8] c"sle\00", align 1
@104 = private unnamed_addr constant [29 x i8] c"tmp__Z11insideFenceiiiiiii13\00", align 1
@105 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@106 = private unnamed_addr constant [28 x i8] c"cmp9__Z11insideFenceiiiiiii\00", align 1
@107 = private unnamed_addr constant [15 x i8] c"land.lhs.true8\00", align 1
@108 = private unnamed_addr constant [29 x i8] c"tmp__Z11insideFenceiiiiiii14\00", align 1
@109 = private unnamed_addr constant [29 x i8] c"tmp__Z11insideFenceiiiiiii14\00", align 1
@110 = private unnamed_addr constant [29 x i8] c"tmp__Z11insideFenceiiiiiii15\00", align 1
@111 = private unnamed_addr constant [29 x i8] c"tmp__Z11insideFenceiiiiiii15\00", align 1
@112 = private unnamed_addr constant [29 x i8] c"cmp10__Z11insideFenceiiiiiii\00", align 1
@113 = private unnamed_addr constant [29 x i8] c"tmp__Z11insideFenceiiiiiii14\00", align 1
@114 = private unnamed_addr constant [4 x i8] c"sle\00", align 1
@115 = private unnamed_addr constant [29 x i8] c"tmp__Z11insideFenceiiiiiii15\00", align 1
@116 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@117 = private unnamed_addr constant [29 x i8] c"cmp10__Z11insideFenceiiiiiii\00", align 1
@118 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@119 = private unnamed_addr constant [29 x i8] c"tmp__Z11insideFenceiiiiiii16\00", align 1
@120 = private unnamed_addr constant [29 x i8] c"tmp__Z11insideFenceiiiiiii16\00", align 1
@121 = private unnamed_addr constant [29 x i8] c"tmp__Z11insideFenceiiiiiii17\00", align 1
@122 = private unnamed_addr constant [29 x i8] c"tmp__Z11insideFenceiiiiiii17\00", align 1
@123 = private unnamed_addr constant [29 x i8] c"cmp12__Z11insideFenceiiiiiii\00", align 1
@124 = private unnamed_addr constant [29 x i8] c"tmp__Z11insideFenceiiiiiii16\00", align 1
@125 = private unnamed_addr constant [4 x i8] c"sge\00", align 1
@126 = private unnamed_addr constant [29 x i8] c"tmp__Z11insideFenceiiiiiii17\00", align 1
@127 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@128 = private unnamed_addr constant [29 x i8] c"cmp12__Z11insideFenceiiiiiii\00", align 1
@129 = private unnamed_addr constant [16 x i8] c"land.lhs.true11\00", align 1
@130 = private unnamed_addr constant [7 x i8] c"(i8 1)\00", align 1
@131 = private unnamed_addr constant [10 x i8] c"if.then13\00", align 1
@132 = private unnamed_addr constant [7 x i8] c"if.end\00", align 1
@133 = private unnamed_addr constant [29 x i8] c"tmp__Z11insideFenceiiiiiii18\00", align 1
@134 = private unnamed_addr constant [29 x i8] c"tmp__Z11insideFenceiiiiiii18\00", align 1
@135 = private unnamed_addr constant [32 x i8] c"tobool15__Z11insideFenceiiiiiii\00", align 1
@136 = private unnamed_addr constant [29 x i8] c"tmp__Z11insideFenceiiiiiii18\00", align 1
@137 = private unnamed_addr constant [3 x i8] c"ne\00", align 1
@138 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@139 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@140 = private unnamed_addr constant [32 x i8] c"tobool15__Z11insideFenceiiiiiii\00", align 1
@141 = private unnamed_addr constant [9 x i8] c"if.end14\00", align 1
@142 = private unnamed_addr constant [29 x i8] c"tmp__Z11insideFenceiiiiiii19\00", align 1
@143 = private unnamed_addr constant [29 x i8] c"tmp__Z11insideFenceiiiiiii19\00", align 1
@144 = private unnamed_addr constant [32 x i8] c"tobool17__Z11insideFenceiiiiiii\00", align 1
@145 = private unnamed_addr constant [29 x i8] c"tmp__Z11insideFenceiiiiiii19\00", align 1
@146 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@147 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@148 = private unnamed_addr constant [32 x i8] c"tobool17__Z11insideFenceiiiiiii\00", align 1
@149 = private unnamed_addr constant [10 x i8] c"if.then16\00", align 1
@150 = private unnamed_addr constant [7 x i8] c"(i8 0)\00", align 1
@151 = private unnamed_addr constant [10 x i8] c"if.then18\00", align 1
@152 = private unnamed_addr constant [7 x i8] c"(i8 1)\00", align 1
@153 = private unnamed_addr constant [8 x i8] c"if.else\00", align 1
@154 = private unnamed_addr constant [9 x i8] c"if.end19\00", align 1
@155 = private unnamed_addr constant [29 x i8] c"tmp__Z11insideFenceiiiiiii20\00", align 1
@156 = private unnamed_addr constant [29 x i8] c"tmp__Z11insideFenceiiiiiii20\00", align 1
@157 = private unnamed_addr constant [32 x i8] c"tobool21__Z11insideFenceiiiiiii\00", align 1
@158 = private unnamed_addr constant [29 x i8] c"tmp__Z11insideFenceiiiiiii20\00", align 1
@159 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@160 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@161 = private unnamed_addr constant [30 x i8] c"conv22__Z11insideFenceiiiiiii\00", align 1
@162 = private unnamed_addr constant [32 x i8] c"tobool21__Z11insideFenceiiiiiii\00", align 1
@163 = private unnamed_addr constant [5 x i8] c"zext\00", align 1
@164 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@165 = private unnamed_addr constant [29 x i8] c"tmp__Z11insideFenceiiiiiii21\00", align 1
@166 = private unnamed_addr constant [29 x i8] c"tmp__Z11insideFenceiiiiiii21\00", align 1
@167 = private unnamed_addr constant [32 x i8] c"tobool23__Z11insideFenceiiiiiii\00", align 1
@168 = private unnamed_addr constant [29 x i8] c"tmp__Z11insideFenceiiiiiii21\00", align 1
@169 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@170 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@171 = private unnamed_addr constant [30 x i8] c"conv24__Z11insideFenceiiiiiii\00", align 1
@172 = private unnamed_addr constant [32 x i8] c"tobool23__Z11insideFenceiiiiiii\00", align 1
@173 = private unnamed_addr constant [5 x i8] c"zext\00", align 1
@174 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@175 = private unnamed_addr constant [29 x i8] c"cmp25__Z11insideFenceiiiiiii\00", align 1
@176 = private unnamed_addr constant [30 x i8] c"conv22__Z11insideFenceiiiiiii\00", align 1
@177 = private unnamed_addr constant [3 x i8] c"eq\00", align 1
@178 = private unnamed_addr constant [30 x i8] c"conv24__Z11insideFenceiiiiiii\00", align 1
@179 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@180 = private unnamed_addr constant [29 x i8] c"cmp25__Z11insideFenceiiiiiii\00", align 1
@181 = private unnamed_addr constant [9 x i8] c"if.end20\00", align 1
@182 = private unnamed_addr constant [10 x i8] c"if.then26\00", align 1
@183 = private unnamed_addr constant [10 x i8] c"if.else27\00", align 1
@184 = private unnamed_addr constant [29 x i8] c"tmp__Z11insideFenceiiiiiii22\00", align 1
@185 = private unnamed_addr constant [29 x i8] c"tmp__Z11insideFenceiiiiiii22\00", align 1
@186 = private unnamed_addr constant [32 x i8] c"tobool30__Z11insideFenceiiiiiii\00", align 1
@187 = private unnamed_addr constant [29 x i8] c"tmp__Z11insideFenceiiiiiii22\00", align 1
@188 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@189 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@190 = private unnamed_addr constant [27 x i8] c"_Z11insideFenceiiiiiii_RET\00", align 1
@191 = private unnamed_addr constant [32 x i8] c"tobool30__Z11insideFenceiiiiiii\00", align 1
@192 = private unnamed_addr constant [9 x i8] c"if.end29\00", align 1
@193 = private unnamed_addr constant [4 x i8] c"lat\00", align 1
@194 = private unnamed_addr constant [4 x i8] c"lon\00", align 1
@195 = private unnamed_addr constant [9 x i8] c"altitude\00", align 1
@196 = private unnamed_addr constant [10 x i8] c"inclusion\00", align 1
@197 = private unnamed_addr constant [9 x i8] c"high_lat\00", align 1
@198 = private unnamed_addr constant [8 x i8] c"low_lat\00", align 1
@199 = private unnamed_addr constant [9 x i8] c"high_lon\00", align 1
@200 = private unnamed_addr constant [8 x i8] c"low_lon\00", align 1
@201 = private unnamed_addr constant [7 x i8] c"(i8 1)\00", align 1
@202 = private unnamed_addr constant [10 x i8] c"(i32 400)\00", align 1
@203 = private unnamed_addr constant [30 x i8] c"tmp__Z13checkGeofenceiiiiiiii\00", align 1
@204 = private unnamed_addr constant [30 x i8] c"tmp__Z13checkGeofenceiiiiiiii\00", align 1
@205 = private unnamed_addr constant [31 x i8] c"tmp__Z13checkGeofenceiiiiiiii1\00", align 1
@206 = private unnamed_addr constant [31 x i8] c"tmp__Z13checkGeofenceiiiiiiii1\00", align 1
@207 = private unnamed_addr constant [30 x i8] c"cmp__Z13checkGeofenceiiiiiiii\00", align 1
@208 = private unnamed_addr constant [30 x i8] c"tmp__Z13checkGeofenceiiiiiiii\00", align 1
@209 = private unnamed_addr constant [4 x i8] c"slt\00", align 1
@210 = private unnamed_addr constant [31 x i8] c"tmp__Z13checkGeofenceiiiiiiii1\00", align 1
@211 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@212 = private unnamed_addr constant [30 x i8] c"cmp__Z13checkGeofenceiiiiiiii\00", align 1
@213 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@214 = private unnamed_addr constant [31 x i8] c"tmp__Z13checkGeofenceiiiiiiii2\00", align 1
@215 = private unnamed_addr constant [31 x i8] c"tmp__Z13checkGeofenceiiiiiiii2\00", align 1
@216 = private unnamed_addr constant [31 x i8] c"tmp__Z13checkGeofenceiiiiiiii3\00", align 1
@217 = private unnamed_addr constant [31 x i8] c"tmp__Z13checkGeofenceiiiiiiii3\00", align 1
@218 = private unnamed_addr constant [31 x i8] c"cmp1__Z13checkGeofenceiiiiiiii\00", align 1
@219 = private unnamed_addr constant [31 x i8] c"tmp__Z13checkGeofenceiiiiiiii2\00", align 1
@220 = private unnamed_addr constant [4 x i8] c"slt\00", align 1
@221 = private unnamed_addr constant [31 x i8] c"tmp__Z13checkGeofenceiiiiiiii3\00", align 1
@222 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@223 = private unnamed_addr constant [31 x i8] c"cmp1__Z13checkGeofenceiiiiiiii\00", align 1
@224 = private unnamed_addr constant [14 x i8] c"lor.lhs.false\00", align 1
@225 = private unnamed_addr constant [7 x i8] c"(i1 0)\00", align 1
@226 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@227 = private unnamed_addr constant [31 x i8] c"tmp__Z13checkGeofenceiiiiiiii4\00", align 1
@228 = private unnamed_addr constant [31 x i8] c"tmp__Z13checkGeofenceiiiiiiii4\00", align 1
@229 = private unnamed_addr constant [31 x i8] c"tmp__Z13checkGeofenceiiiiiiii5\00", align 1
@230 = private unnamed_addr constant [31 x i8] c"tmp__Z13checkGeofenceiiiiiiii5\00", align 1
@231 = private unnamed_addr constant [31 x i8] c"cmp2__Z13checkGeofenceiiiiiiii\00", align 1
@232 = private unnamed_addr constant [31 x i8] c"tmp__Z13checkGeofenceiiiiiiii4\00", align 1
@233 = private unnamed_addr constant [4 x i8] c"sgt\00", align 1
@234 = private unnamed_addr constant [31 x i8] c"tmp__Z13checkGeofenceiiiiiiii5\00", align 1
@235 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@236 = private unnamed_addr constant [31 x i8] c"cmp2__Z13checkGeofenceiiiiiiii\00", align 1
@237 = private unnamed_addr constant [7 x i8] c"if.end\00", align 1
@238 = private unnamed_addr constant [7 x i8] c"(i8 0)\00", align 1
@239 = private unnamed_addr constant [7 x i8] c"(i1 0)\00", align 1
@240 = private unnamed_addr constant [9 x i8] c"if.then3\00", align 1
@241 = private unnamed_addr constant [31 x i8] c"tmp__Z13checkGeofenceiiiiiiii6\00", align 1
@242 = private unnamed_addr constant [31 x i8] c"tmp__Z13checkGeofenceiiiiiiii6\00", align 1
@243 = private unnamed_addr constant [31 x i8] c"tmp__Z13checkGeofenceiiiiiiii7\00", align 1
@244 = private unnamed_addr constant [31 x i8] c"tmp__Z13checkGeofenceiiiiiiii7\00", align 1
@245 = private unnamed_addr constant [31 x i8] c"tmp__Z13checkGeofenceiiiiiiii8\00", align 1
@246 = private unnamed_addr constant [31 x i8] c"tmp__Z13checkGeofenceiiiiiiii8\00", align 1
@247 = private unnamed_addr constant [31 x i8] c"tmp__Z13checkGeofenceiiiiiiii9\00", align 1
@248 = private unnamed_addr constant [31 x i8] c"tmp__Z13checkGeofenceiiiiiiii9\00", align 1
@249 = private unnamed_addr constant [32 x i8] c"tmp__Z13checkGeofenceiiiiiiii10\00", align 1
@250 = private unnamed_addr constant [32 x i8] c"tmp__Z13checkGeofenceiiiiiiii10\00", align 1
@251 = private unnamed_addr constant [32 x i8] c"tmp__Z13checkGeofenceiiiiiiii11\00", align 1
@252 = private unnamed_addr constant [32 x i8] c"tmp__Z13checkGeofenceiiiiiiii11\00", align 1
@253 = private unnamed_addr constant [32 x i8] c"tmp__Z13checkGeofenceiiiiiiii12\00", align 1
@254 = private unnamed_addr constant [32 x i8] c"tmp__Z13checkGeofenceiiiiiiii12\00", align 1
@255 = private unnamed_addr constant [4 x i8] c"lat\00", align 1
@256 = private unnamed_addr constant [31 x i8] c"tmp__Z13checkGeofenceiiiiiiii6\00", align 1
@257 = private unnamed_addr constant [4 x i8] c"lon\00", align 1
@258 = private unnamed_addr constant [31 x i8] c"tmp__Z13checkGeofenceiiiiiiii7\00", align 1
@259 = private unnamed_addr constant [10 x i8] c"inclusion\00", align 1
@260 = private unnamed_addr constant [31 x i8] c"tmp__Z13checkGeofenceiiiiiiii8\00", align 1
@261 = private unnamed_addr constant [9 x i8] c"high_lat\00", align 1
@262 = private unnamed_addr constant [31 x i8] c"tmp__Z13checkGeofenceiiiiiiii9\00", align 1
@263 = private unnamed_addr constant [8 x i8] c"low_lat\00", align 1
@264 = private unnamed_addr constant [32 x i8] c"tmp__Z13checkGeofenceiiiiiiii10\00", align 1
@265 = private unnamed_addr constant [9 x i8] c"high_lon\00", align 1
@266 = private unnamed_addr constant [32 x i8] c"tmp__Z13checkGeofenceiiiiiiii11\00", align 1
@267 = private unnamed_addr constant [8 x i8] c"low_lon\00", align 1
@268 = private unnamed_addr constant [32 x i8] c"tmp__Z13checkGeofenceiiiiiiii12\00", align 1
@269 = private unnamed_addr constant [31 x i8] c"call__Z13checkGeofenceiiiiiiii\00", align 1
@270 = private unnamed_addr constant [27 x i8] c"_Z11insideFenceiiiiiii_RET\00", align 1
@271 = private unnamed_addr constant [35 x i8] c"frombool__Z13checkGeofenceiiiiiiii\00", align 1
@272 = private unnamed_addr constant [31 x i8] c"call__Z13checkGeofenceiiiiiiii\00", align 1
@273 = private unnamed_addr constant [5 x i8] c"zext\00", align 1
@274 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@275 = private unnamed_addr constant [35 x i8] c"frombool__Z13checkGeofenceiiiiiiii\00", align 1
@276 = private unnamed_addr constant [32 x i8] c"tmp__Z13checkGeofenceiiiiiiii13\00", align 1
@277 = private unnamed_addr constant [32 x i8] c"tmp__Z13checkGeofenceiiiiiiii13\00", align 1
@278 = private unnamed_addr constant [33 x i8] c"tobool__Z13checkGeofenceiiiiiiii\00", align 1
@279 = private unnamed_addr constant [32 x i8] c"tmp__Z13checkGeofenceiiiiiiii13\00", align 1
@280 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@281 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@282 = private unnamed_addr constant [33 x i8] c"tobool__Z13checkGeofenceiiiiiiii\00", align 1
@283 = private unnamed_addr constant [8 x i8] c"if.end4\00", align 1
@284 = private unnamed_addr constant [32 x i8] c"tmp__Z13checkGeofenceiiiiiiii14\00", align 1
@285 = private unnamed_addr constant [32 x i8] c"tmp__Z13checkGeofenceiiiiiiii14\00", align 1
@286 = private unnamed_addr constant [30 x i8] c"_Z13checkGeofenceiiiiiiii_RET\00", align 1
@287 = private unnamed_addr constant [32 x i8] c"tmp__Z13checkGeofenceiiiiiiii14\00", align 1
@288 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@289 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@290 = private unnamed_addr constant [5 x i8] c"argc\00", align 1
@291 = private unnamed_addr constant [5 x i8] c"argv\00", align 1
@292 = private unnamed_addr constant [9 x i8] c"tmp_main\00", align 1
@293 = private unnamed_addr constant [9 x i8] c"tmp_main\00", align 1
@294 = private unnamed_addr constant [9 x i8] c"cmp_main\00", align 1
@295 = private unnamed_addr constant [9 x i8] c"tmp_main\00", align 1
@296 = private unnamed_addr constant [3 x i8] c"ne\00", align 1
@297 = private unnamed_addr constant [8 x i8] c"(i32 2)\00", align 1
@298 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@299 = private unnamed_addr constant [9 x i8] c"cmp_main\00", align 1
@300 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@301 = private unnamed_addr constant [10 x i8] c"tmp_main1\00", align 1
@302 = private unnamed_addr constant [17 x i8] c"%struct.__sFILE*\00", align 1
@303 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@304 = private unnamed_addr constant [10 x i8] c"tmp_main2\00", align 1
@305 = private unnamed_addr constant [10 x i8] c"tmp_main2\00", align 1
@306 = private unnamed_addr constant [10 x i8] c"tmp_main3\00", align 1
@307 = private unnamed_addr constant [10 x i8] c"tmp_main3\00", align 1
@308 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@309 = private unnamed_addr constant [10 x i8] c"tmp_main3\00", align 1
@310 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@311 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@312 = private unnamed_addr constant [11 x i8] c"call1_main\00", align 1
@313 = private unnamed_addr constant [12 x i8] c"\01_fopen_RET\00", align 1
@314 = private unnamed_addr constant [11 x i8] c"call1_main\00", align 1
@315 = private unnamed_addr constant [10 x i8] c"tmp_main4\00", align 1
@316 = private unnamed_addr constant [10 x i8] c"tmp_main4\00", align 1
@317 = private unnamed_addr constant [12 x i8] c"tobool_main\00", align 1
@318 = private unnamed_addr constant [10 x i8] c"tmp_main4\00", align 1
@319 = private unnamed_addr constant [3 x i8] c"ne\00", align 1
@320 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@321 = private unnamed_addr constant [17 x i8] c"%struct.__sFILE*\00", align 1
@322 = private unnamed_addr constant [12 x i8] c"tobool_main\00", align 1
@323 = private unnamed_addr constant [8 x i8] c"if.else\00", align 1
@324 = private unnamed_addr constant [10 x i8] c"tmp_main5\00", align 1
@325 = private unnamed_addr constant [17 x i8] c"%struct.__sFILE*\00", align 1
@326 = private unnamed_addr constant [9 x i8] c"if.then2\00", align 1
@327 = private unnamed_addr constant [7 x i8] c"if.end\00", align 1
@328 = private unnamed_addr constant [10 x i8] c"tmp_main6\00", align 1
@329 = private unnamed_addr constant [10 x i8] c"tmp_main7\00", align 1
@330 = private unnamed_addr constant [4 x i8] c"i8*\00", align 1
@331 = private unnamed_addr constant [10 x i8] c"tmp_main8\00", align 1
@332 = private unnamed_addr constant [10 x i8] c"tmp_main9\00", align 1
@333 = private unnamed_addr constant [4 x i8] c"i8*\00", align 1
@334 = private unnamed_addr constant [11 x i8] c"tmp_main10\00", align 1
@335 = private unnamed_addr constant [11 x i8] c"tmp_main11\00", align 1
@336 = private unnamed_addr constant [4 x i8] c"i8*\00", align 1
@337 = private unnamed_addr constant [11 x i8] c"tmp_main12\00", align 1
@338 = private unnamed_addr constant [11 x i8] c"tmp_main13\00", align 1
@339 = private unnamed_addr constant [4 x i8] c"i8*\00", align 1
@340 = private unnamed_addr constant [11 x i8] c"tmp_main14\00", align 1
@341 = private unnamed_addr constant [11 x i8] c"tmp_main15\00", align 1
@342 = private unnamed_addr constant [4 x i8] c"i8*\00", align 1
@343 = private unnamed_addr constant [11 x i8] c"tmp_main16\00", align 1
@344 = private unnamed_addr constant [11 x i8] c"tmp_main17\00", align 1
@345 = private unnamed_addr constant [4 x i8] c"i8*\00", align 1
@346 = private unnamed_addr constant [11 x i8] c"tmp_main18\00", align 1
@347 = private unnamed_addr constant [11 x i8] c"tmp_main19\00", align 1
@348 = private unnamed_addr constant [4 x i8] c"i8*\00", align 1
@349 = private unnamed_addr constant [11 x i8] c"tmp_main20\00", align 1
@350 = private unnamed_addr constant [11 x i8] c"tmp_main21\00", align 1
@351 = private unnamed_addr constant [4 x i8] c"i8*\00", align 1
@352 = private unnamed_addr constant [8 x i8] c"if.end4\00", align 1
@353 = private unnamed_addr constant [11 x i8] c"tmp_main22\00", align 1
@354 = private unnamed_addr constant [11 x i8] c"tmp_main22\00", align 1
@355 = private unnamed_addr constant [13 x i8] c"tobool6_main\00", align 1
@356 = private unnamed_addr constant [11 x i8] c"call5_main\00", align 1
@357 = private unnamed_addr constant [3 x i8] c"ne\00", align 1
@358 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@359 = private unnamed_addr constant [4 x i8] c"i8*\00", align 1
@360 = private unnamed_addr constant [13 x i8] c"tobool6_main\00", align 1
@361 = private unnamed_addr constant [11 x i8] c"while.cond\00", align 1
@362 = private unnamed_addr constant [11 x i8] c"tmp_main23\00", align 1
@363 = private unnamed_addr constant [11 x i8] c"tmp_main23\00", align 1
@364 = private unnamed_addr constant [10 x i8] c"conv_main\00", align 1
@365 = private unnamed_addr constant [11 x i8] c"tmp_main23\00", align 1
@366 = private unnamed_addr constant [5 x i8] c"sext\00", align 1
@367 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@368 = private unnamed_addr constant [10 x i8] c"cmp8_main\00", align 1
@369 = private unnamed_addr constant [10 x i8] c"conv_main\00", align 1
@370 = private unnamed_addr constant [3 x i8] c"eq\00", align 1
@371 = private unnamed_addr constant [9 x i8] c"(i32 35)\00", align 1
@372 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@373 = private unnamed_addr constant [10 x i8] c"cmp8_main\00", align 1
@374 = private unnamed_addr constant [11 x i8] c"while.body\00", align 1
@375 = private unnamed_addr constant [9 x i8] c"if.then9\00", align 1
@376 = private unnamed_addr constant [11 x i8] c"tmp_main24\00", align 1
@377 = private unnamed_addr constant [11 x i8] c"tmp_main24\00", align 1
@378 = private unnamed_addr constant [11 x i8] c"tmp_main25\00", align 1
@379 = private unnamed_addr constant [11 x i8] c"tmp_main25\00", align 1
@380 = private unnamed_addr constant [11 x i8] c"tmp_main26\00", align 1
@381 = private unnamed_addr constant [11 x i8] c"tmp_main26\00", align 1
@382 = private unnamed_addr constant [11 x i8] c"tmp_main27\00", align 1
@383 = private unnamed_addr constant [11 x i8] c"tmp_main27\00", align 1
@384 = private unnamed_addr constant [11 x i8] c"tmp_main28\00", align 1
@385 = private unnamed_addr constant [11 x i8] c"tmp_main28\00", align 1
@386 = private unnamed_addr constant [11 x i8] c"tmp_main29\00", align 1
@387 = private unnamed_addr constant [11 x i8] c"tmp_main29\00", align 1
@388 = private unnamed_addr constant [11 x i8] c"tmp_main30\00", align 1
@389 = private unnamed_addr constant [11 x i8] c"tmp_main30\00", align 1
@390 = private unnamed_addr constant [11 x i8] c"tmp_main31\00", align 1
@391 = private unnamed_addr constant [11 x i8] c"tmp_main31\00", align 1
@392 = private unnamed_addr constant [11 x i8] c"tmp_main32\00", align 1
@393 = private unnamed_addr constant [11 x i8] c"tmp_main32\00", align 1
@394 = private unnamed_addr constant [11 x i8] c"tmp_main33\00", align 1
@395 = private unnamed_addr constant [11 x i8] c"tmp_main33\00", align 1
@396 = private unnamed_addr constant [11 x i8] c"tmp_main34\00", align 1
@397 = private unnamed_addr constant [11 x i8] c"tmp_main34\00", align 1
@398 = private unnamed_addr constant [11 x i8] c"tmp_main35\00", align 1
@399 = private unnamed_addr constant [11 x i8] c"tmp_main35\00", align 1
@400 = private unnamed_addr constant [11 x i8] c"tmp_main36\00", align 1
@401 = private unnamed_addr constant [11 x i8] c"tmp_main36\00", align 1
@402 = private unnamed_addr constant [11 x i8] c"tmp_main37\00", align 1
@403 = private unnamed_addr constant [11 x i8] c"tmp_main37\00", align 1
@404 = private unnamed_addr constant [11 x i8] c"tmp_main38\00", align 1
@405 = private unnamed_addr constant [11 x i8] c"tmp_main38\00", align 1
@406 = private unnamed_addr constant [11 x i8] c"tmp_main39\00", align 1
@407 = private unnamed_addr constant [11 x i8] c"tmp_main39\00", align 1
@408 = private unnamed_addr constant [11 x i8] c"tmp_main40\00", align 1
@409 = private unnamed_addr constant [11 x i8] c"tmp_main40\00", align 1
@410 = private unnamed_addr constant [4 x i8] c"lat\00", align 1
@411 = private unnamed_addr constant [11 x i8] c"tmp_main33\00", align 1
@412 = private unnamed_addr constant [4 x i8] c"lon\00", align 1
@413 = private unnamed_addr constant [11 x i8] c"tmp_main34\00", align 1
@414 = private unnamed_addr constant [9 x i8] c"altitude\00", align 1
@415 = private unnamed_addr constant [11 x i8] c"tmp_main35\00", align 1
@416 = private unnamed_addr constant [10 x i8] c"inclusion\00", align 1
@417 = private unnamed_addr constant [11 x i8] c"tmp_main36\00", align 1
@418 = private unnamed_addr constant [9 x i8] c"high_lat\00", align 1
@419 = private unnamed_addr constant [11 x i8] c"tmp_main37\00", align 1
@420 = private unnamed_addr constant [8 x i8] c"low_lat\00", align 1
@421 = private unnamed_addr constant [11 x i8] c"tmp_main38\00", align 1
@422 = private unnamed_addr constant [9 x i8] c"high_lon\00", align 1
@423 = private unnamed_addr constant [11 x i8] c"tmp_main39\00", align 1
@424 = private unnamed_addr constant [8 x i8] c"low_lon\00", align 1
@425 = private unnamed_addr constant [11 x i8] c"tmp_main40\00", align 1
@426 = private unnamed_addr constant [12 x i8] c"call14_main\00", align 1
@427 = private unnamed_addr constant [30 x i8] c"_Z13checkGeofenceiiiiiiii_RET\00", align 1
@428 = private unnamed_addr constant [14 x i8] c"frombool_main\00", align 1
@429 = private unnamed_addr constant [12 x i8] c"call14_main\00", align 1
@430 = private unnamed_addr constant [5 x i8] c"zext\00", align 1
@431 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@432 = private unnamed_addr constant [14 x i8] c"frombool_main\00", align 1
@433 = private unnamed_addr constant [11 x i8] c"tmp_main41\00", align 1
@434 = private unnamed_addr constant [11 x i8] c"tmp_main41\00", align 1
@435 = private unnamed_addr constant [14 x i8] c"tobool15_main\00", align 1
@436 = private unnamed_addr constant [11 x i8] c"tmp_main41\00", align 1
@437 = private unnamed_addr constant [3 x i8] c"ne\00", align 1
@438 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@439 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@440 = private unnamed_addr constant [14 x i8] c"tobool15_main\00", align 1
@441 = private unnamed_addr constant [9 x i8] c"if.end10\00", align 1
@442 = private unnamed_addr constant [11 x i8] c"tmp_main42\00", align 1
@443 = private unnamed_addr constant [11 x i8] c"tmp_main42\00", align 1
@444 = private unnamed_addr constant [14 x i8] c"tobool16_main\00", align 1
@445 = private unnamed_addr constant [11 x i8] c"tmp_main42\00", align 1
@446 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@447 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@448 = private unnamed_addr constant [10 x i8] c"cond.true\00", align 1
@449 = private unnamed_addr constant [11 x i8] c"tmp_main43\00", align 1
@450 = private unnamed_addr constant [11 x i8] c"tmp_main43\00", align 1
@451 = private unnamed_addr constant [14 x i8] c"tobool17_main\00", align 1
@452 = private unnamed_addr constant [11 x i8] c"tmp_main43\00", align 1
@453 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@454 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@455 = private unnamed_addr constant [10 x i8] c"lnot_main\00", align 1
@456 = private unnamed_addr constant [14 x i8] c"tobool17_main\00", align 1
@457 = private unnamed_addr constant [4 x i8] c"xor\00", align 1
@458 = private unnamed_addr constant [7 x i8] c"(i1 1)\00", align 1
@459 = private unnamed_addr constant [11 x i8] c"cond.false\00", align 1
@460 = private unnamed_addr constant [10 x i8] c"cond_main\00", align 1
@461 = private unnamed_addr constant [46 x i8] c"cond.true,tobool16_main,cond.false,lnot_main,\00", align 1
@462 = private unnamed_addr constant [16 x i8] c"frombool18_main\00", align 1
@463 = private unnamed_addr constant [10 x i8] c"cond_main\00", align 1
@464 = private unnamed_addr constant [5 x i8] c"zext\00", align 1
@465 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@466 = private unnamed_addr constant [16 x i8] c"frombool18_main\00", align 1
@467 = private unnamed_addr constant [11 x i8] c"tmp_main44\00", align 1
@468 = private unnamed_addr constant [11 x i8] c"tmp_main44\00", align 1
@469 = private unnamed_addr constant [14 x i8] c"tobool19_main\00", align 1
@470 = private unnamed_addr constant [11 x i8] c"tmp_main44\00", align 1
@471 = private unnamed_addr constant [6 x i8] c"trunc\00", align 1
@472 = private unnamed_addr constant [3 x i8] c"i1\00", align 1
@473 = private unnamed_addr constant [9 x i8] c"cond.end\00", align 1
@474 = private unnamed_addr constant [11 x i8] c"tmp_main45\00", align 1
@475 = private unnamed_addr constant [11 x i8] c"tmp_main45\00", align 1
@476 = private unnamed_addr constant [11 x i8] c"tmp_main46\00", align 1
@477 = private unnamed_addr constant [11 x i8] c"tmp_main46\00", align 1
@478 = private unnamed_addr constant [9 x i8] c"main_RET\00", align 1
@479 = private unnamed_addr constant [11 x i8] c"tmp_main46\00", align 1
@480 = private unnamed_addr constant [10 x i8] c"while.end\00", align 1

; Function Attrs: noinline optnone ssp uwtable
define zeroext i1 @_Z11insideFenceiiiiiii(i32 %lat, i32 %lon, i32 %inclusion, i32 %high_lat, i32 %low_lat, i32 %high_lon, i32 %low_lon) #0 {
entry:
  %lat.addr__Z11insideFenceiiiiiii = alloca i32, align 4
  %lon.addr__Z11insideFenceiiiiiii = alloca i32, align 4
  %inclusion.addr__Z11insideFenceiiiiiii = alloca i32, align 4
  %high_lat.addr__Z11insideFenceiiiiiii = alloca i32, align 4
  %low_lat.addr__Z11insideFenceiiiiiii = alloca i32, align 4
  %high_lon.addr__Z11insideFenceiiiiiii = alloca i32, align 4
  %low_lon.addr__Z11insideFenceiiiiiii = alloca i32, align 4
  %inside__Z11insideFenceiiiiiii = alloca i8, align 1
  %inside___Z11insideFenceiiiiiii = alloca i8, align 1
  store i32 %lat, i32* %lat.addr__Z11insideFenceiiiiiii, align 4
  call void @stg_update_store_i32(i32* %lat.addr__Z11insideFenceiiiiiii, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @0, i32 0, i32 0))
  store i32 %lon, i32* %lon.addr__Z11insideFenceiiiiiii, align 4
  call void @stg_update_store_i32(i32* %lon.addr__Z11insideFenceiiiiiii, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @1, i32 0, i32 0))
  store i32 %inclusion, i32* %inclusion.addr__Z11insideFenceiiiiiii, align 4
  call void @stg_update_store_i32(i32* %inclusion.addr__Z11insideFenceiiiiiii, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @2, i32 0, i32 0))
  store i32 %high_lat, i32* %high_lat.addr__Z11insideFenceiiiiiii, align 4
  call void @stg_update_store_i32(i32* %high_lat.addr__Z11insideFenceiiiiiii, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @3, i32 0, i32 0))
  store i32 %low_lat, i32* %low_lat.addr__Z11insideFenceiiiiiii, align 4
  call void @stg_update_store_i32(i32* %low_lat.addr__Z11insideFenceiiiiiii, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @4, i32 0, i32 0))
  store i32 %high_lon, i32* %high_lon.addr__Z11insideFenceiiiiiii, align 4
  call void @stg_update_store_i32(i32* %high_lon.addr__Z11insideFenceiiiiiii, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @5, i32 0, i32 0))
  store i32 %low_lon, i32* %low_lon.addr__Z11insideFenceiiiiiii, align 4
  call void @stg_update_store_i32(i32* %low_lon.addr__Z11insideFenceiiiiiii, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @6, i32 0, i32 0))
  store i8 0, i8* %inside__Z11insideFenceiiiiiii, align 1
  call void @stg_update_store_i8(i8* %inside__Z11insideFenceiiiiiii, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @7, i32 0, i32 0))
  %tmp__Z11insideFenceiiiiiii = load i32, i32* %lon.addr__Z11insideFenceiiiiiii, align 4
  call void @stg_update_load_i32(i32* %lon.addr__Z11insideFenceiiiiiii, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @9, i32 0, i32 0))
  %tmp__Z11insideFenceiiiiiii1 = load i32, i32* %low_lon.addr__Z11insideFenceiiiiiii, align 4
  call void @stg_update_load_i32(i32* %low_lon.addr__Z11insideFenceiiiiiii, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @11, i32 0, i32 0))
  %cmp__Z11insideFenceiiiiiii = icmp sgt i32 %tmp__Z11insideFenceiiiiiii, %tmp__Z11insideFenceiiiiiii1
  call void @stg_update_cmp(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @16, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp__Z11insideFenceiiiiiii, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @17, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @18, i32 0, i32 0))
  br i1 %cmp__Z11insideFenceiiiiiii, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %tmp__Z11insideFenceiiiiiii2 = load i32, i32* %lon.addr__Z11insideFenceiiiiiii, align 4
  call void @stg_update_load_i32(i32* %lon.addr__Z11insideFenceiiiiiii, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @20, i32 0, i32 0))
  %tmp__Z11insideFenceiiiiiii3 = load i32, i32* %high_lon.addr__Z11insideFenceiiiiiii, align 4
  call void @stg_update_load_i32(i32* %high_lon.addr__Z11insideFenceiiiiiii, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @22, i32 0, i32 0))
  %cmp1__Z11insideFenceiiiiiii = icmp slt i32 %tmp__Z11insideFenceiiiiiii2, %tmp__Z11insideFenceiiiiiii3
  call void @stg_update_cmp(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @23, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @27, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp1__Z11insideFenceiiiiiii, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @28, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @29, i32 0, i32 0))
  br i1 %cmp1__Z11insideFenceiiiiiii, label %land.lhs.true2, label %land.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %tmp__Z11insideFenceiiiiiii4 = load i32, i32* %lat.addr__Z11insideFenceiiiiiii, align 4
  call void @stg_update_load_i32(i32* %lat.addr__Z11insideFenceiiiiiii, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @31, i32 0, i32 0))
  %tmp__Z11insideFenceiiiiiii5 = load i32, i32* %high_lat.addr__Z11insideFenceiiiiiii, align 4
  call void @stg_update_load_i32(i32* %high_lat.addr__Z11insideFenceiiiiiii, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @33, i32 0, i32 0))
  %cmp3__Z11insideFenceiiiiiii = icmp slt i32 %tmp__Z11insideFenceiiiiiii4, %tmp__Z11insideFenceiiiiiii5
  call void @stg_update_cmp(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @34, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @35, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @36, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @37, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @38, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp3__Z11insideFenceiiiiiii, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @39, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @40, i32 0, i32 0))
  br i1 %cmp3__Z11insideFenceiiiiiii, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true2
  %tmp__Z11insideFenceiiiiiii6 = load i32, i32* %lat.addr__Z11insideFenceiiiiiii, align 4
  call void @stg_update_load_i32(i32* %lat.addr__Z11insideFenceiiiiiii, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @42, i32 0, i32 0))
  %tmp__Z11insideFenceiiiiiii7 = load i32, i32* %low_lat.addr__Z11insideFenceiiiiiii, align 4
  call void @stg_update_load_i32(i32* %low_lat.addr__Z11insideFenceiiiiiii, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @44, i32 0, i32 0))
  %cmp4__Z11insideFenceiiiiiii = icmp sgt i32 %tmp__Z11insideFenceiiiiiii6, %tmp__Z11insideFenceiiiiiii7
  call void @stg_update_cmp(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @45, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @46, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @47, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @48, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @49, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @50, i32 0, i32 0))
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true2, %land.lhs.true, %entry
  %tmp__Z11insideFenceiiiiiii8 = phi i1 [ false, %land.lhs.true2 ], [ false, %land.lhs.true ], [ false, %entry ], [ %cmp4__Z11insideFenceiiiiiii, %land.rhs ]
  call void @stg_update_phi(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @51, i32 0, i32 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @52, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @53, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @54, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @55, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @56, i32 0, i32 0))
  %conv__Z11insideFenceiiiiiii = zext i1 %tmp__Z11insideFenceiiiiiii8 to i32
  %tmp__Z11insideFenceiiiiiii9 = load i32, i32* %inclusion.addr__Z11insideFenceiiiiiii, align 4
  call void @stg_update_load_i32(i32* %inclusion.addr__Z11insideFenceiiiiiii, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @58, i32 0, i32 0))
  %tobool__Z11insideFenceiiiiiii = icmp ne i32 %tmp__Z11insideFenceiiiiiii9, 0
  call void @stg_update_cmp(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @59, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @60, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @61, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @62, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @63, i32 0, i32 0))
  %lnot__Z11insideFenceiiiiiii = xor i1 %tobool__Z11insideFenceiiiiiii, true
  call void @stg_update_op(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @64, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @65, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @66, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @67, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @68, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @69, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @70, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @71, i32 0, i32 0))
  %conv5__Z11insideFenceiiiiiii = zext i1 %lnot__Z11insideFenceiiiiiii to i32
  %xor__Z11insideFenceiiiiiii = xor i32 %conv__Z11insideFenceiiiiiii, %conv5__Z11insideFenceiiiiiii
  call void @stg_update_op(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @72, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @73, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @74, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @75, i32 0, i32 0))
  %tobool6__Z11insideFenceiiiiiii = icmp ne i32 %xor__Z11insideFenceiiiiiii, 0
  call void @stg_update_cmp(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @76, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @77, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @78, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @79, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @80, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @81, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @82, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @83, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @84, i32 0, i32 0))
  %frombool__Z11insideFenceiiiiiii = zext i1 %tobool6__Z11insideFenceiiiiiii to i8
  store i8 %frombool__Z11insideFenceiiiiiii, i8* %inside___Z11insideFenceiiiiiii, align 1
  call void @stg_update_store_i8(i8* %inside___Z11insideFenceiiiiiii, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @85, i32 0, i32 0))
  %tmp__Z11insideFenceiiiiiii10 = load i32, i32* %lon.addr__Z11insideFenceiiiiiii, align 4
  call void @stg_update_load_i32(i32* %lon.addr__Z11insideFenceiiiiiii, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @87, i32 0, i32 0))
  %tmp__Z11insideFenceiiiiiii11 = load i32, i32* %low_lon.addr__Z11insideFenceiiiiiii, align 4
  call void @stg_update_load_i32(i32* %low_lon.addr__Z11insideFenceiiiiiii, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @89, i32 0, i32 0))
  %cmp7__Z11insideFenceiiiiiii = icmp sge i32 %tmp__Z11insideFenceiiiiiii10, %tmp__Z11insideFenceiiiiiii11
  call void @stg_update_cmp(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @90, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @91, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @92, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @93, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @94, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp7__Z11insideFenceiiiiiii, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @95, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @96, i32 0, i32 0))
  br i1 %cmp7__Z11insideFenceiiiiiii, label %land.lhs.true8, label %if.end14

land.lhs.true8:                                   ; preds = %land.end
  %tmp__Z11insideFenceiiiiiii12 = load i32, i32* %lon.addr__Z11insideFenceiiiiiii, align 4
  call void @stg_update_load_i32(i32* %lon.addr__Z11insideFenceiiiiiii, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @98, i32 0, i32 0))
  %tmp__Z11insideFenceiiiiiii13 = load i32, i32* %high_lon.addr__Z11insideFenceiiiiiii, align 4
  call void @stg_update_load_i32(i32* %high_lon.addr__Z11insideFenceiiiiiii, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @100, i32 0, i32 0))
  %cmp9__Z11insideFenceiiiiiii = icmp sle i32 %tmp__Z11insideFenceiiiiiii12, %tmp__Z11insideFenceiiiiiii13
  call void @stg_update_cmp(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @101, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @102, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @103, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @104, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @105, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp9__Z11insideFenceiiiiiii, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @106, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @107, i32 0, i32 0))
  br i1 %cmp9__Z11insideFenceiiiiiii, label %if.then, label %if.end14

if.then:                                          ; preds = %land.lhs.true8
  %tmp__Z11insideFenceiiiiiii14 = load i32, i32* %lat.addr__Z11insideFenceiiiiiii, align 4
  call void @stg_update_load_i32(i32* %lat.addr__Z11insideFenceiiiiiii, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @109, i32 0, i32 0))
  %tmp__Z11insideFenceiiiiiii15 = load i32, i32* %high_lat.addr__Z11insideFenceiiiiiii, align 4
  call void @stg_update_load_i32(i32* %high_lat.addr__Z11insideFenceiiiiiii, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @111, i32 0, i32 0))
  %cmp10__Z11insideFenceiiiiiii = icmp sle i32 %tmp__Z11insideFenceiiiiiii14, %tmp__Z11insideFenceiiiiiii15
  call void @stg_update_cmp(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @112, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @113, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @114, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @115, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @116, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp10__Z11insideFenceiiiiiii, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @117, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @118, i32 0, i32 0))
  br i1 %cmp10__Z11insideFenceiiiiiii, label %land.lhs.true11, label %if.end

land.lhs.true11:                                  ; preds = %if.then
  %tmp__Z11insideFenceiiiiiii16 = load i32, i32* %lat.addr__Z11insideFenceiiiiiii, align 4
  call void @stg_update_load_i32(i32* %lat.addr__Z11insideFenceiiiiiii, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @120, i32 0, i32 0))
  %tmp__Z11insideFenceiiiiiii17 = load i32, i32* %low_lat.addr__Z11insideFenceiiiiiii, align 4
  call void @stg_update_load_i32(i32* %low_lat.addr__Z11insideFenceiiiiiii, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @122, i32 0, i32 0))
  %cmp12__Z11insideFenceiiiiiii = icmp sge i32 %tmp__Z11insideFenceiiiiiii16, %tmp__Z11insideFenceiiiiiii17
  call void @stg_update_cmp(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @123, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @124, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @125, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @126, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @127, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp12__Z11insideFenceiiiiiii, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @128, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @129, i32 0, i32 0))
  br i1 %cmp12__Z11insideFenceiiiiiii, label %if.then13, label %if.end

if.then13:                                        ; preds = %land.lhs.true11
  store i8 1, i8* %inside__Z11insideFenceiiiiiii, align 1
  call void @stg_update_store_i8(i8* %inside__Z11insideFenceiiiiiii, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @130, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @131, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then13, %land.lhs.true11, %if.then
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @132, i32 0, i32 0))
  br label %if.end14

if.end14:                                         ; preds = %if.end, %land.lhs.true8, %land.end
  %tmp__Z11insideFenceiiiiiii18 = load i32, i32* %inclusion.addr__Z11insideFenceiiiiiii, align 4
  call void @stg_update_load_i32(i32* %inclusion.addr__Z11insideFenceiiiiiii, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @134, i32 0, i32 0))
  %tobool15__Z11insideFenceiiiiiii = icmp ne i32 %tmp__Z11insideFenceiiiiiii18, 0
  call void @stg_update_cmp(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @135, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @136, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @137, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @138, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @139, i32 0, i32 0))
  call void @stg_update_pc(i1 %tobool15__Z11insideFenceiiiiiii, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @140, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @141, i32 0, i32 0))
  br i1 %tobool15__Z11insideFenceiiiiiii, label %if.end20, label %if.then16

if.then16:                                        ; preds = %if.end14
  %tmp__Z11insideFenceiiiiiii19 = load i8, i8* %inside__Z11insideFenceiiiiiii, align 1
  call void @stg_update_load_i8(i8* %inside__Z11insideFenceiiiiiii, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @143, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @144, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @145, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @146, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @147, i32 0, i32 0))
  %tobool17__Z11insideFenceiiiiiii = trunc i8 %tmp__Z11insideFenceiiiiiii19 to i1
  call void @stg_update_pc(i1 %tobool17__Z11insideFenceiiiiiii, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @148, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @149, i32 0, i32 0))
  br i1 %tobool17__Z11insideFenceiiiiiii, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.then16
  store i8 0, i8* %inside__Z11insideFenceiiiiiii, align 1
  call void @stg_update_store_i8(i8* %inside__Z11insideFenceiiiiiii, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @150, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @151, i32 0, i32 0))
  br label %if.end19

if.else:                                          ; preds = %if.then16
  store i8 1, i8* %inside__Z11insideFenceiiiiiii, align 1
  call void @stg_update_store_i8(i8* %inside__Z11insideFenceiiiiiii, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @152, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @153, i32 0, i32 0))
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then18
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @154, i32 0, i32 0))
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.end14
  %tmp__Z11insideFenceiiiiiii20 = load i8, i8* %inside__Z11insideFenceiiiiiii, align 1
  call void @stg_update_load_i8(i8* %inside__Z11insideFenceiiiiiii, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @156, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @157, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @158, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @159, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @160, i32 0, i32 0))
  %tobool21__Z11insideFenceiiiiiii = trunc i8 %tmp__Z11insideFenceiiiiiii20 to i1
  call void @stg_update_cast(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @161, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @162, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @163, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @164, i32 0, i32 0))
  %conv22__Z11insideFenceiiiiiii = zext i1 %tobool21__Z11insideFenceiiiiiii to i32
  %tmp__Z11insideFenceiiiiiii21 = load i8, i8* %inside___Z11insideFenceiiiiiii, align 1
  call void @stg_update_load_i8(i8* %inside___Z11insideFenceiiiiiii, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @166, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @167, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @168, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @169, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @170, i32 0, i32 0))
  %tobool23__Z11insideFenceiiiiiii = trunc i8 %tmp__Z11insideFenceiiiiiii21 to i1
  call void @stg_update_cast(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @171, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @172, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @173, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @174, i32 0, i32 0))
  %conv24__Z11insideFenceiiiiiii = zext i1 %tobool23__Z11insideFenceiiiiiii to i32
  %cmp25__Z11insideFenceiiiiiii = icmp eq i32 %conv22__Z11insideFenceiiiiiii, %conv24__Z11insideFenceiiiiiii
  call void @stg_update_cmp(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @175, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @176, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @177, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @178, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @179, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp25__Z11insideFenceiiiiiii, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @180, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @181, i32 0, i32 0))
  br i1 %cmp25__Z11insideFenceiiiiiii, label %if.then26, label %if.else27

if.then26:                                        ; preds = %if.end20
  %call__Z11insideFenceiiiiiii = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @182, i32 0, i32 0))
  br label %if.end29

if.else27:                                        ; preds = %if.end20
  %call28__Z11insideFenceiiiiiii = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @183, i32 0, i32 0))
  br label %if.end29

if.end29:                                         ; preds = %if.else27, %if.then26
  %tmp__Z11insideFenceiiiiiii22 = load i8, i8* %inside__Z11insideFenceiiiiiii, align 1
  call void @stg_update_load_i8(i8* %inside__Z11insideFenceiiiiiii, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @185, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @186, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @187, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @188, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @189, i32 0, i32 0))
  %tobool30__Z11insideFenceiiiiiii = trunc i8 %tmp__Z11insideFenceiiiiiii22 to i1
  call void @stg_update_char(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @190, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @191, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @192, i32 0, i32 0))
  ret i1 %tobool30__Z11insideFenceiiiiiii
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline optnone ssp uwtable
define zeroext i1 @_Z13checkGeofenceiiiiiiii(i32 %lat, i32 %lon, i32 %altitude, i32 %inclusion, i32 %high_lat, i32 %low_lat, i32 %high_lon, i32 %low_lon) #0 {
entry:
  %retval__Z13checkGeofenceiiiiiiii = alloca i1, align 1
  %lat.addr__Z13checkGeofenceiiiiiiii = alloca i32, align 4
  %lon.addr__Z13checkGeofenceiiiiiiii = alloca i32, align 4
  %altitude.addr__Z13checkGeofenceiiiiiiii = alloca i32, align 4
  %inclusion.addr__Z13checkGeofenceiiiiiiii = alloca i32, align 4
  %high_lat.addr__Z13checkGeofenceiiiiiiii = alloca i32, align 4
  %low_lat.addr__Z13checkGeofenceiiiiiiii = alloca i32, align 4
  %high_lon.addr__Z13checkGeofenceiiiiiiii = alloca i32, align 4
  %low_lon.addr__Z13checkGeofenceiiiiiiii = alloca i32, align 4
  %acceptable__Z13checkGeofenceiiiiiiii = alloca i8, align 1
  %max_vertical_altitude__Z13checkGeofenceiiiiiiii = alloca i32, align 4
  store i32 %lat, i32* %lat.addr__Z13checkGeofenceiiiiiiii, align 4
  call void @stg_update_store_i32(i32* %lat.addr__Z13checkGeofenceiiiiiiii, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @193, i32 0, i32 0))
  store i32 %lon, i32* %lon.addr__Z13checkGeofenceiiiiiiii, align 4
  call void @stg_update_store_i32(i32* %lon.addr__Z13checkGeofenceiiiiiiii, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @194, i32 0, i32 0))
  store i32 %altitude, i32* %altitude.addr__Z13checkGeofenceiiiiiiii, align 4
  call void @stg_update_store_i32(i32* %altitude.addr__Z13checkGeofenceiiiiiiii, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @195, i32 0, i32 0))
  store i32 %inclusion, i32* %inclusion.addr__Z13checkGeofenceiiiiiiii, align 4
  call void @stg_update_store_i32(i32* %inclusion.addr__Z13checkGeofenceiiiiiiii, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @196, i32 0, i32 0))
  store i32 %high_lat, i32* %high_lat.addr__Z13checkGeofenceiiiiiiii, align 4
  call void @stg_update_store_i32(i32* %high_lat.addr__Z13checkGeofenceiiiiiiii, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @197, i32 0, i32 0))
  store i32 %low_lat, i32* %low_lat.addr__Z13checkGeofenceiiiiiiii, align 4
  call void @stg_update_store_i32(i32* %low_lat.addr__Z13checkGeofenceiiiiiiii, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @198, i32 0, i32 0))
  store i32 %high_lon, i32* %high_lon.addr__Z13checkGeofenceiiiiiiii, align 4
  call void @stg_update_store_i32(i32* %high_lon.addr__Z13checkGeofenceiiiiiiii, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @199, i32 0, i32 0))
  store i32 %low_lon, i32* %low_lon.addr__Z13checkGeofenceiiiiiiii, align 4
  call void @stg_update_store_i32(i32* %low_lon.addr__Z13checkGeofenceiiiiiiii, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @200, i32 0, i32 0))
  store i8 1, i8* %acceptable__Z13checkGeofenceiiiiiiii, align 1
  call void @stg_update_store_i8(i8* %acceptable__Z13checkGeofenceiiiiiiii, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @201, i32 0, i32 0))
  store i32 400, i32* %max_vertical_altitude__Z13checkGeofenceiiiiiiii, align 4
  call void @stg_update_store_i32(i32* %max_vertical_altitude__Z13checkGeofenceiiiiiiii, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @202, i32 0, i32 0))
  %tmp__Z13checkGeofenceiiiiiiii = load i32, i32* %high_lon.addr__Z13checkGeofenceiiiiiiii, align 4
  call void @stg_update_load_i32(i32* %high_lon.addr__Z13checkGeofenceiiiiiiii, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @204, i32 0, i32 0))
  %tmp__Z13checkGeofenceiiiiiiii1 = load i32, i32* %low_lon.addr__Z13checkGeofenceiiiiiiii, align 4
  call void @stg_update_load_i32(i32* %low_lon.addr__Z13checkGeofenceiiiiiiii, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @206, i32 0, i32 0))
  %cmp__Z13checkGeofenceiiiiiiii = icmp slt i32 %tmp__Z13checkGeofenceiiiiiiii, %tmp__Z13checkGeofenceiiiiiiii1
  call void @stg_update_cmp(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @207, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @208, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @209, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @210, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @211, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp__Z13checkGeofenceiiiiiiii, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @212, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @213, i32 0, i32 0))
  br i1 %cmp__Z13checkGeofenceiiiiiiii, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %tmp__Z13checkGeofenceiiiiiiii2 = load i32, i32* %high_lat.addr__Z13checkGeofenceiiiiiiii, align 4
  call void @stg_update_load_i32(i32* %high_lat.addr__Z13checkGeofenceiiiiiiii, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @215, i32 0, i32 0))
  %tmp__Z13checkGeofenceiiiiiiii3 = load i32, i32* %low_lat.addr__Z13checkGeofenceiiiiiiii, align 4
  call void @stg_update_load_i32(i32* %low_lat.addr__Z13checkGeofenceiiiiiiii, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @217, i32 0, i32 0))
  %cmp1__Z13checkGeofenceiiiiiiii = icmp slt i32 %tmp__Z13checkGeofenceiiiiiiii2, %tmp__Z13checkGeofenceiiiiiiii3
  call void @stg_update_cmp(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @218, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @219, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @220, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @221, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @222, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp1__Z13checkGeofenceiiiiiiii, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @223, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @224, i32 0, i32 0))
  br i1 %cmp1__Z13checkGeofenceiiiiiiii, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i1 false, i1* %retval__Z13checkGeofenceiiiiiiii, align 1
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @226, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %tmp__Z13checkGeofenceiiiiiiii4 = load i32, i32* %altitude.addr__Z13checkGeofenceiiiiiiii, align 4
  call void @stg_update_load_i32(i32* %altitude.addr__Z13checkGeofenceiiiiiiii, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @228, i32 0, i32 0))
  %tmp__Z13checkGeofenceiiiiiiii5 = load i32, i32* %max_vertical_altitude__Z13checkGeofenceiiiiiiii, align 4
  call void @stg_update_load_i32(i32* %max_vertical_altitude__Z13checkGeofenceiiiiiiii, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @230, i32 0, i32 0))
  %cmp2__Z13checkGeofenceiiiiiiii = icmp sgt i32 %tmp__Z13checkGeofenceiiiiiiii4, %tmp__Z13checkGeofenceiiiiiiii5
  call void @stg_update_cmp(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @231, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @232, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @233, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @234, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @235, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp2__Z13checkGeofenceiiiiiiii, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @236, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @237, i32 0, i32 0))
  br i1 %cmp2__Z13checkGeofenceiiiiiiii, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i8 0, i8* %acceptable__Z13checkGeofenceiiiiiiii, align 1
  call void @stg_update_store_i8(i8* %acceptable__Z13checkGeofenceiiiiiiii, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @238, i32 0, i32 0))
  store i1 false, i1* %retval__Z13checkGeofenceiiiiiiii, align 1
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @240, i32 0, i32 0))
  br label %return

if.end4:                                          ; preds = %if.end
  %tmp__Z13checkGeofenceiiiiiiii6 = load i32, i32* %lat.addr__Z13checkGeofenceiiiiiiii, align 4
  call void @stg_update_load_i32(i32* %lat.addr__Z13checkGeofenceiiiiiiii, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @242, i32 0, i32 0))
  %tmp__Z13checkGeofenceiiiiiiii7 = load i32, i32* %lon.addr__Z13checkGeofenceiiiiiiii, align 4
  call void @stg_update_load_i32(i32* %lon.addr__Z13checkGeofenceiiiiiiii, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @244, i32 0, i32 0))
  %tmp__Z13checkGeofenceiiiiiiii8 = load i32, i32* %inclusion.addr__Z13checkGeofenceiiiiiiii, align 4
  call void @stg_update_load_i32(i32* %inclusion.addr__Z13checkGeofenceiiiiiiii, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @246, i32 0, i32 0))
  %tmp__Z13checkGeofenceiiiiiiii9 = load i32, i32* %high_lat.addr__Z13checkGeofenceiiiiiiii, align 4
  call void @stg_update_load_i32(i32* %high_lat.addr__Z13checkGeofenceiiiiiiii, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @248, i32 0, i32 0))
  %tmp__Z13checkGeofenceiiiiiiii10 = load i32, i32* %low_lat.addr__Z13checkGeofenceiiiiiiii, align 4
  call void @stg_update_load_i32(i32* %low_lat.addr__Z13checkGeofenceiiiiiiii, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @250, i32 0, i32 0))
  %tmp__Z13checkGeofenceiiiiiiii11 = load i32, i32* %high_lon.addr__Z13checkGeofenceiiiiiiii, align 4
  call void @stg_update_load_i32(i32* %high_lon.addr__Z13checkGeofenceiiiiiiii, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @252, i32 0, i32 0))
  %tmp__Z13checkGeofenceiiiiiiii12 = load i32, i32* %low_lon.addr__Z13checkGeofenceiiiiiiii, align 4
  call void @stg_update_load_i32(i32* %low_lon.addr__Z13checkGeofenceiiiiiiii, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @254, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @255, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @256, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @257, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @258, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @259, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @260, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @261, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @262, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @263, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @264, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @265, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @266, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @267, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @268, i32 0, i32 0))
  %call__Z13checkGeofenceiiiiiiii = call zeroext i1 @_Z11insideFenceiiiiiii(i32 %tmp__Z13checkGeofenceiiiiiiii6, i32 %tmp__Z13checkGeofenceiiiiiiii7, i32 %tmp__Z13checkGeofenceiiiiiiii8, i32 %tmp__Z13checkGeofenceiiiiiiii9, i32 %tmp__Z13checkGeofenceiiiiiiii10, i32 %tmp__Z13checkGeofenceiiiiiiii11, i32 %tmp__Z13checkGeofenceiiiiiiii12)
  call void @stg_update_char(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @269, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @270, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @271, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @272, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @273, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @274, i32 0, i32 0))
  %frombool__Z13checkGeofenceiiiiiiii = zext i1 %call__Z13checkGeofenceiiiiiiii to i8
  store i8 %frombool__Z13checkGeofenceiiiiiiii, i8* %acceptable__Z13checkGeofenceiiiiiiii, align 1
  call void @stg_update_store_i8(i8* %acceptable__Z13checkGeofenceiiiiiiii, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @275, i32 0, i32 0))
  %tmp__Z13checkGeofenceiiiiiiii13 = load i8, i8* %acceptable__Z13checkGeofenceiiiiiiii, align 1
  call void @stg_update_load_i8(i8* %acceptable__Z13checkGeofenceiiiiiiii, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @277, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @278, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @279, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @280, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @281, i32 0, i32 0))
  %tobool__Z13checkGeofenceiiiiiiii = trunc i8 %tmp__Z13checkGeofenceiiiiiiii13 to i1
  store i1 %tobool__Z13checkGeofenceiiiiiiii, i1* %retval__Z13checkGeofenceiiiiiiii, align 1
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @283, i32 0, i32 0))
  br label %return

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %tmp__Z13checkGeofenceiiiiiiii14 = load i1, i1* %retval__Z13checkGeofenceiiiiiiii, align 1
  call void @stg_update_char(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @286, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @287, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @288, i32 0, i32 0))
  ret i1 %tmp__Z13checkGeofenceiiiiiiii14
}

; Function Attrs: noinline norecurse optnone ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #2 {
entry:
  %retval_main = alloca i32, align 4
  %argc.addr_main = alloca i32, align 4
  %argv.addr_main = alloca i8**, align 8
  %lat_main = alloca i32, align 4
  %lon_main = alloca i32, align 4
  %altitude_main = alloca i32, align 4
  %high_lat_main = alloca i32, align 4
  %low_lat_main = alloca i32, align 4
  %high_lon_main = alloca i32, align 4
  %low_lon_main = alloca i32, align 4
  %inclusion_main = alloca i32, align 4
  %params_main = alloca %struct.__sFILE*, align 8
  %buf_main = alloca [1001 x i8], align 16
  %expected_main = alloca i32, align 4
  %isGeofenced_main = alloca i8, align 1
  %testPassed_main = alloca i8, align 1
  store i32 0, i32* %retval_main, align 4
  call void @stg_update_store_i32(i32* %retval_main, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @289, i32 0, i32 0))
  store i32 %argc, i32* %argc.addr_main, align 4
  call void @stg_update_store_i32(i32* %argc.addr_main, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @290, i32 0, i32 0))
  store i8** %argv, i8*** %argv.addr_main, align 8
  %tmp_main = load i32, i32* %argc.addr_main, align 4
  call void @stg_update_load_i32(i32* %argc.addr_main, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @293, i32 0, i32 0))
  %cmp_main = icmp ne i32 %tmp_main, 2
  call void @stg_update_cmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @294, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @295, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @296, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @297, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @298, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp_main, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @299, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @300, i32 0, i32 0))
  br i1 %cmp_main, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %tmp_main1 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call_main = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %tmp_main1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0))
  call void @exit(i32 1) #4
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @303, i32 0, i32 0))
  unreachable

if.else:                                          ; preds = %entry
  %tmp_main2 = load i8**, i8*** %argv.addr_main, align 8
  %arrayidx_main = getelementptr inbounds i8*, i8** %tmp_main2, i64 1
  %tmp_main3 = load i8*, i8** %arrayidx_main, align 8
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @308, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @309, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @310, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @311, i32 0, i32 0))
  %call1_main = call %struct.__sFILE* @"\01_fopen"(i8* %tmp_main3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @312, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @313, i32 0, i32 0))
  store %struct.__sFILE* %call1_main, %struct.__sFILE** %params_main, align 8
  %tmp_main4 = load %struct.__sFILE*, %struct.__sFILE** %params_main, align 8
  %tobool_main = icmp ne %struct.__sFILE* %tmp_main4, null
  call void @stg_update_cmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @317, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @318, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @319, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @320, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @321, i32 0, i32 0))
  call void @stg_update_pc(i1 %tobool_main, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @322, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @323, i32 0, i32 0))
  br i1 %tobool_main, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.else
  %tmp_main5 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8
  %call3_main = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %tmp_main5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0))
  call void @exit(i32 1) #4
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @326, i32 0, i32 0))
  unreachable

if.end:                                           ; preds = %if.else
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @327, i32 0, i32 0))
  br label %if.end4

if.end4:                                          ; preds = %if.end
  %tmp_main6 = bitcast i32* %lat_main to i8*
  %tmp_main7 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable(i8* %tmp_main6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %tmp_main7, double 0.000000e+00, double 0.000000e+00)
  %tmp_main8 = bitcast i32* %lon_main to i8*
  %tmp_main9 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable(i8* %tmp_main8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %tmp_main9, double 0.000000e+00, double 0.000000e+00)
  %tmp_main10 = bitcast i32* %altitude_main to i8*
  %tmp_main11 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable(i8* %tmp_main10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %tmp_main11, double 0.000000e+00, double 0.000000e+00)
  %tmp_main12 = bitcast i32* %inclusion_main to i8*
  %tmp_main13 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable(i8* %tmp_main12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %tmp_main13, double 0.000000e+00, double 0.000000e+00)
  %tmp_main14 = bitcast i32* %high_lat_main to i8*
  %tmp_main15 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable(i8* %tmp_main14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %tmp_main15, double 0.000000e+00, double 0.000000e+00)
  %tmp_main16 = bitcast i32* %low_lat_main to i8*
  %tmp_main17 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable(i8* %tmp_main16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %tmp_main17, double 0.000000e+00, double 0.000000e+00)
  %tmp_main18 = bitcast i32* %high_lon_main to i8*
  %tmp_main19 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable(i8* %tmp_main18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %tmp_main19, double 0.000000e+00, double 0.000000e+00)
  %tmp_main20 = bitcast i32* %low_lon_main to i8*
  %tmp_main21 = load i8*, i8** @uniform, align 8
  call void @stg_symbolic_variable(i8* %tmp_main20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), double -2.000000e+01, double 2.000000e+01, i8* %tmp_main21, double 0.000000e+00, double 0.000000e+00)
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @352, i32 0, i32 0))
  br label %while.cond

while.cond:                                       ; preds = %cond.end, %if.then9, %if.end4
  %arraydecay_main = getelementptr inbounds [1001 x i8], [1001 x i8]* %buf_main, i32 0, i32 0
  %tmp_main22 = load %struct.__sFILE*, %struct.__sFILE** %params_main, align 8
  %call5_main = call i8* @fgets(i8* %arraydecay_main, i32 1000, %struct.__sFILE* %tmp_main22)
  %tobool6_main = icmp ne i8* %call5_main, null
  call void @stg_update_cmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @355, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @356, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @357, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @358, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @359, i32 0, i32 0))
  call void @stg_update_pc(i1 %tobool6_main, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @360, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @361, i32 0, i32 0))
  br i1 %tobool6_main, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arrayidx7_main = getelementptr inbounds [1001 x i8], [1001 x i8]* %buf_main, i64 0, i64 0
  %tmp_main23 = load i8, i8* %arrayidx7_main, align 16
  call void @stg_update_load_i8(i8* %arrayidx7_main, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @363, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @364, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @365, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @366, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @367, i32 0, i32 0))
  %conv_main = sext i8 %tmp_main23 to i32
  %cmp8_main = icmp eq i32 %conv_main, 35
  call void @stg_update_cmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @368, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @369, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @370, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @371, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @372, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp8_main, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @373, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @374, i32 0, i32 0))
  br i1 %cmp8_main, label %if.then9, label %if.end10

if.then9:                                         ; preds = %while.body
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @375, i32 0, i32 0))
  br label %while.cond

if.end10:                                         ; preds = %while.body
  call void @stg_begin_test()
  %arraydecay11_main = getelementptr inbounds [1001 x i8], [1001 x i8]* %buf_main, i32 0, i32 0
  %call12_main = call i32 (i8*, i8*, ...) @sscanf(i8* %arraydecay11_main, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i32 0, i32 0), i32* %lon_main, i32* %lat_main, i32* %altitude_main, i32* %inclusion_main, i32* %high_lon_main, i32* %low_lon_main, i32* %high_lat_main, i32* %low_lat_main, i32* %expected_main)
  call void @stg_update_input_i32(i32* %expected_main)
  call void @stg_update_input_i32(i32* %low_lat_main)
  call void @stg_update_input_i32(i32* %high_lat_main)
  call void @stg_update_input_i32(i32* %low_lon_main)
  call void @stg_update_input_i32(i32* %high_lon_main)
  call void @stg_update_input_i32(i32* %inclusion_main)
  call void @stg_update_input_i32(i32* %altitude_main)
  call void @stg_update_input_i32(i32* %lat_main)
  call void @stg_update_input_i32(i32* %lon_main)
  %tmp_main24 = load i32, i32* %lat_main, align 4
  call void @stg_update_load_i32(i32* %lat_main, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @377, i32 0, i32 0))
  %tmp_main25 = load i32, i32* %lon_main, align 4
  call void @stg_update_load_i32(i32* %lon_main, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @379, i32 0, i32 0))
  %tmp_main26 = load i32, i32* %altitude_main, align 4
  call void @stg_update_load_i32(i32* %altitude_main, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @381, i32 0, i32 0))
  %tmp_main27 = load i32, i32* %inclusion_main, align 4
  call void @stg_update_load_i32(i32* %inclusion_main, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @383, i32 0, i32 0))
  %tmp_main28 = load i32, i32* %high_lat_main, align 4
  call void @stg_update_load_i32(i32* %high_lat_main, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @385, i32 0, i32 0))
  %tmp_main29 = load i32, i32* %low_lat_main, align 4
  call void @stg_update_load_i32(i32* %low_lat_main, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @387, i32 0, i32 0))
  %tmp_main30 = load i32, i32* %high_lon_main, align 4
  call void @stg_update_load_i32(i32* %high_lon_main, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @389, i32 0, i32 0))
  %tmp_main31 = load i32, i32* %low_lon_main, align 4
  call void @stg_update_load_i32(i32* %low_lon_main, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @391, i32 0, i32 0))
  %tmp_main32 = load i32, i32* %expected_main, align 4
  call void @stg_update_load_i32(i32* %expected_main, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @393, i32 0, i32 0))
  %call13_main = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.15, i32 0, i32 0), i32 %tmp_main24, i32 %tmp_main25, i32 %tmp_main26, i32 %tmp_main27, i32 %tmp_main28, i32 %tmp_main29, i32 %tmp_main30, i32 %tmp_main31, i32 %tmp_main32)
  %tmp_main33 = load i32, i32* %lat_main, align 4
  call void @stg_update_load_i32(i32* %lat_main, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @395, i32 0, i32 0))
  %tmp_main34 = load i32, i32* %lon_main, align 4
  call void @stg_update_load_i32(i32* %lon_main, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @397, i32 0, i32 0))
  %tmp_main35 = load i32, i32* %altitude_main, align 4
  call void @stg_update_load_i32(i32* %altitude_main, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @399, i32 0, i32 0))
  %tmp_main36 = load i32, i32* %inclusion_main, align 4
  call void @stg_update_load_i32(i32* %inclusion_main, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @401, i32 0, i32 0))
  %tmp_main37 = load i32, i32* %high_lat_main, align 4
  call void @stg_update_load_i32(i32* %high_lat_main, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @403, i32 0, i32 0))
  %tmp_main38 = load i32, i32* %low_lat_main, align 4
  call void @stg_update_load_i32(i32* %low_lat_main, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @405, i32 0, i32 0))
  %tmp_main39 = load i32, i32* %high_lon_main, align 4
  call void @stg_update_load_i32(i32* %high_lon_main, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @407, i32 0, i32 0))
  %tmp_main40 = load i32, i32* %low_lon_main, align 4
  call void @stg_update_load_i32(i32* %low_lon_main, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @409, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @410, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @411, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @412, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @413, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @414, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @415, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @416, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @417, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @418, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @419, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @420, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @421, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @422, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @423, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @424, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @425, i32 0, i32 0))
  %call14_main = call zeroext i1 @_Z13checkGeofenceiiiiiiii(i32 %tmp_main33, i32 %tmp_main34, i32 %tmp_main35, i32 %tmp_main36, i32 %tmp_main37, i32 %tmp_main38, i32 %tmp_main39, i32 %tmp_main40)
  call void @stg_update_char(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @426, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @427, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @428, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @429, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @430, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @431, i32 0, i32 0))
  %frombool_main = zext i1 %call14_main to i8
  store i8 %frombool_main, i8* %isGeofenced_main, align 1
  call void @stg_update_store_i8(i8* %isGeofenced_main, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @432, i32 0, i32 0))
  call void @stg_end_test()
  %tmp_main41 = load i32, i32* %expected_main, align 4
  call void @stg_update_load_i32(i32* %expected_main, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @434, i32 0, i32 0))
  %tobool15_main = icmp ne i32 %tmp_main41, 0
  call void @stg_update_cmp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @435, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @436, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @437, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @438, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @439, i32 0, i32 0))
  call void @stg_update_pc(i1 %tobool15_main, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @440, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @441, i32 0, i32 0))
  br i1 %tobool15_main, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end10
  %tmp_main42 = load i8, i8* %isGeofenced_main, align 1
  call void @stg_update_load_i8(i8* %isGeofenced_main, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @443, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @444, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @445, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @446, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @447, i32 0, i32 0))
  %tobool16_main = trunc i8 %tmp_main42 to i1
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @448, i32 0, i32 0))
  br label %cond.end

cond.false:                                       ; preds = %if.end10
  %tmp_main43 = load i8, i8* %isGeofenced_main, align 1
  call void @stg_update_load_i8(i8* %isGeofenced_main, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @450, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @451, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @452, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @453, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @454, i32 0, i32 0))
  %tobool17_main = trunc i8 %tmp_main43 to i1
  %lnot_main = xor i1 %tobool17_main, true
  call void @stg_update_op(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @455, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @456, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @457, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @458, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @459, i32 0, i32 0))
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond_main = phi i1 [ %tobool16_main, %cond.true ], [ %lnot_main, %cond.false ]
  call void @stg_update_phi(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @460, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @461, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @462, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @463, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @464, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @465, i32 0, i32 0))
  %frombool18_main = zext i1 %cond_main to i8
  store i8 %frombool18_main, i8* %testPassed_main, align 1
  call void @stg_update_store_i8(i8* %testPassed_main, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @466, i32 0, i32 0))
  %tmp_main44 = load i8, i8* %testPassed_main, align 1
  call void @stg_update_load_i8(i8* %testPassed_main, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @468, i32 0, i32 0))
  call void @stg_update_cast(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @469, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @470, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @471, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @472, i32 0, i32 0))
  %tobool19_main = trunc i8 %tmp_main44 to i1
  call void @stg_record_test(i1 zeroext %tobool19_main)
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @473, i32 0, i32 0))
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %tmp_main45 = load %struct.__sFILE*, %struct.__sFILE** %params_main, align 8
  %call20_main = call i32 @fclose(%struct.__sFILE* %tmp_main45)
  %tmp_main46 = load i32, i32* %retval_main, align 4
  call void @stg_update_load_i32(i32* %retval_main, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @477, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @478, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @479, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @480, i32 0, i32 0))
  ret i32 %tmp_main46
}

declare i32 @fprintf(%struct.__sFILE*, i8*, ...) #1

; Function Attrs: noreturn
declare void @exit(i32) #3

declare %struct.__sFILE* @"\01_fopen"(i8*, i8*) #1

declare void @stg_symbolic_variable(i8*, i8*, double, double, i8*, double, double) #1

declare i8* @fgets(i8*, i32, %struct.__sFILE*) #1

declare void @stg_begin_test() #1

declare i32 @sscanf(i8*, i8*, ...) #1

declare void @stg_end_test() #1

declare void @stg_record_test(i1 zeroext) #1

declare i32 @fclose(%struct.__sFILE*) #1

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

attributes #0 = { noinline optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline norecurse optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 14]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}

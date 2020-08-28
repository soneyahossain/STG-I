; ModuleID = 'IPUT.bc'
source_filename = "simpler_geofence.cpp"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"uniform\00", align 1
@uniform = local_unnamed_addr global i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), align 8
@__stderrp = external local_unnamed_addr global %struct.__sFILE*, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Missing test parameter file\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Invalid file specified\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"LAT\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"LON\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"ALT\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"INC\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"HLAT\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"LLAT\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"HLON\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"LLON\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"%d %d %d %d %d %d %d %d %d\00", align 1
@.str.13 = private unnamed_addr constant [73 x i8] c"lat=%d lon=%d alt=%d inc=%d hlat=%d llat=%d hlon=%d llon=%d expected=%d\0A\00", align 1
@0 = private unnamed_addr constant [27 x i8] c"cmp__Z11insideFenceiibiiii\00", align 1
@1 = private unnamed_addr constant [4 x i8] c"lon\00", align 1
@2 = private unnamed_addr constant [4 x i8] c"sgt\00", align 1
@3 = private unnamed_addr constant [8 x i8] c"low_lon\00", align 1
@4 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@5 = private unnamed_addr constant [28 x i8] c"cmp1__Z11insideFenceiibiiii\00", align 1
@6 = private unnamed_addr constant [4 x i8] c"lon\00", align 1
@7 = private unnamed_addr constant [4 x i8] c"slt\00", align 1
@8 = private unnamed_addr constant [9 x i8] c"high_lon\00", align 1
@9 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@10 = private unnamed_addr constant [31 x i8] c"or.cond__Z11insideFenceiibiiii\00", align 1
@11 = private unnamed_addr constant [28 x i8] c"cmp1__Z11insideFenceiibiiii\00", align 1
@12 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@13 = private unnamed_addr constant [27 x i8] c"cmp__Z11insideFenceiibiiii\00", align 1
@14 = private unnamed_addr constant [28 x i8] c"cmp2__Z11insideFenceiibiiii\00", align 1
@15 = private unnamed_addr constant [4 x i8] c"lat\00", align 1
@16 = private unnamed_addr constant [4 x i8] c"slt\00", align 1
@17 = private unnamed_addr constant [9 x i8] c"high_lat\00", align 1
@18 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@19 = private unnamed_addr constant [33 x i8] c"or.cond16__Z11insideFenceiibiiii\00", align 1
@20 = private unnamed_addr constant [28 x i8] c"cmp2__Z11insideFenceiibiiii\00", align 1
@21 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@22 = private unnamed_addr constant [31 x i8] c"or.cond__Z11insideFenceiibiiii\00", align 1
@23 = private unnamed_addr constant [28 x i8] c"cmp4__Z11insideFenceiibiiii\00", align 1
@24 = private unnamed_addr constant [4 x i8] c"lat\00", align 1
@25 = private unnamed_addr constant [4 x i8] c"sgt\00", align 1
@26 = private unnamed_addr constant [8 x i8] c"low_lat\00", align 1
@27 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@28 = private unnamed_addr constant [33 x i8] c"or.cond17__Z11insideFenceiibiiii\00", align 1
@29 = private unnamed_addr constant [28 x i8] c"cmp4__Z11insideFenceiibiiii\00", align 1
@30 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@31 = private unnamed_addr constant [33 x i8] c"or.cond16__Z11insideFenceiibiiii\00", align 1
@32 = private unnamed_addr constant [37 x i8] c"not.inclusion__Z11insideFenceiibiiii\00", align 1
@33 = private unnamed_addr constant [10 x i8] c"inclusion\00", align 1
@34 = private unnamed_addr constant [4 x i8] c"xor\00", align 1
@35 = private unnamed_addr constant [7 x i8] c"(i1 1)\00", align 1
@36 = private unnamed_addr constant [34 x i8] c"inside.1.v__Z11insideFenceiibiiii\00", align 1
@37 = private unnamed_addr constant [33 x i8] c"or.cond17__Z11insideFenceiibiiii\00", align 1
@38 = private unnamed_addr constant [4 x i8] c"xor\00", align 1
@39 = private unnamed_addr constant [37 x i8] c"not.inclusion__Z11insideFenceiibiiii\00", align 1
@40 = private unnamed_addr constant [27 x i8] c"_Z11insideFenceiibiiii_RET\00", align 1
@41 = private unnamed_addr constant [34 x i8] c"inside.1.v__Z11insideFenceiibiiii\00", align 1
@42 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@43 = private unnamed_addr constant [30 x i8] c"cmp__Z13checkGeofenceiiibiiii\00", align 1
@44 = private unnamed_addr constant [9 x i8] c"altitude\00", align 1
@45 = private unnamed_addr constant [4 x i8] c"slt\00", align 1
@46 = private unnamed_addr constant [10 x i8] c"(i32 401)\00", align 1
@47 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@48 = private unnamed_addr constant [30 x i8] c"cmp__Z13checkGeofenceiiibiiii\00", align 1
@49 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@50 = private unnamed_addr constant [32 x i8] c"cmp.i__Z13checkGeofenceiiibiiii\00", align 1
@51 = private unnamed_addr constant [4 x i8] c"lon\00", align 1
@52 = private unnamed_addr constant [4 x i8] c"sgt\00", align 1
@53 = private unnamed_addr constant [8 x i8] c"low_lon\00", align 1
@54 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@55 = private unnamed_addr constant [33 x i8] c"cmp1.i__Z13checkGeofenceiiibiiii\00", align 1
@56 = private unnamed_addr constant [4 x i8] c"lon\00", align 1
@57 = private unnamed_addr constant [4 x i8] c"slt\00", align 1
@58 = private unnamed_addr constant [9 x i8] c"high_lon\00", align 1
@59 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@60 = private unnamed_addr constant [36 x i8] c"or.cond.i__Z13checkGeofenceiiibiiii\00", align 1
@61 = private unnamed_addr constant [33 x i8] c"cmp1.i__Z13checkGeofenceiiibiiii\00", align 1
@62 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@63 = private unnamed_addr constant [32 x i8] c"cmp.i__Z13checkGeofenceiiibiiii\00", align 1
@64 = private unnamed_addr constant [33 x i8] c"cmp2.i__Z13checkGeofenceiiibiiii\00", align 1
@65 = private unnamed_addr constant [4 x i8] c"lat\00", align 1
@66 = private unnamed_addr constant [4 x i8] c"slt\00", align 1
@67 = private unnamed_addr constant [9 x i8] c"high_lat\00", align 1
@68 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@69 = private unnamed_addr constant [38 x i8] c"or.cond16.i__Z13checkGeofenceiiibiiii\00", align 1
@70 = private unnamed_addr constant [33 x i8] c"cmp2.i__Z13checkGeofenceiiibiiii\00", align 1
@71 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@72 = private unnamed_addr constant [36 x i8] c"or.cond.i__Z13checkGeofenceiiibiiii\00", align 1
@73 = private unnamed_addr constant [33 x i8] c"cmp4.i__Z13checkGeofenceiiibiiii\00", align 1
@74 = private unnamed_addr constant [4 x i8] c"lat\00", align 1
@75 = private unnamed_addr constant [4 x i8] c"sgt\00", align 1
@76 = private unnamed_addr constant [8 x i8] c"low_lat\00", align 1
@77 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@78 = private unnamed_addr constant [38 x i8] c"or.cond17.i__Z13checkGeofenceiiibiiii\00", align 1
@79 = private unnamed_addr constant [33 x i8] c"cmp4.i__Z13checkGeofenceiiibiiii\00", align 1
@80 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@81 = private unnamed_addr constant [38 x i8] c"or.cond16.i__Z13checkGeofenceiiibiiii\00", align 1
@82 = private unnamed_addr constant [42 x i8] c"not.inclusion.i__Z13checkGeofenceiiibiiii\00", align 1
@83 = private unnamed_addr constant [10 x i8] c"inclusion\00", align 1
@84 = private unnamed_addr constant [4 x i8] c"xor\00", align 1
@85 = private unnamed_addr constant [7 x i8] c"(i1 1)\00", align 1
@86 = private unnamed_addr constant [39 x i8] c"inside.1.v.i__Z13checkGeofenceiiibiiii\00", align 1
@87 = private unnamed_addr constant [38 x i8] c"or.cond17.i__Z13checkGeofenceiiibiiii\00", align 1
@88 = private unnamed_addr constant [4 x i8] c"xor\00", align 1
@89 = private unnamed_addr constant [42 x i8] c"not.inclusion.i__Z13checkGeofenceiiibiiii\00", align 1
@90 = private unnamed_addr constant [9 x i8] c"land.rhs\00", align 1
@91 = private unnamed_addr constant [30 x i8] c"tmp__Z13checkGeofenceiiibiiii\00", align 1
@92 = private unnamed_addr constant [57 x i8] c"entry,0,land.rhs,inside.1.v.i__Z13checkGeofenceiiibiiii,\00", align 1
@93 = private unnamed_addr constant [30 x i8] c"_Z13checkGeofenceiiibiiii_RET\00", align 1
@94 = private unnamed_addr constant [30 x i8] c"tmp__Z13checkGeofenceiiibiiii\00", align 1
@95 = private unnamed_addr constant [9 x i8] c"land.end\00", align 1
@96 = private unnamed_addr constant [9 x i8] c"tmp_main\00", align 1
@97 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@98 = private unnamed_addr constant [8 x i8] c"(i64 4)\00", align 1
@99 = private unnamed_addr constant [9 x i8] c"tmp_main\00", align 1
@100 = private unnamed_addr constant [25 x i8] c"llvm.lifetime.start.p0i8\00", align 1
@101 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@102 = private unnamed_addr constant [10 x i8] c"tmp_main1\00", align 1
@103 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@104 = private unnamed_addr constant [8 x i8] c"(i64 4)\00", align 1
@105 = private unnamed_addr constant [10 x i8] c"tmp_main1\00", align 1
@106 = private unnamed_addr constant [25 x i8] c"llvm.lifetime.start.p0i8\00", align 1
@107 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@108 = private unnamed_addr constant [10 x i8] c"tmp_main2\00", align 1
@109 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@110 = private unnamed_addr constant [8 x i8] c"(i64 4)\00", align 1
@111 = private unnamed_addr constant [10 x i8] c"tmp_main2\00", align 1
@112 = private unnamed_addr constant [25 x i8] c"llvm.lifetime.start.p0i8\00", align 1
@113 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@114 = private unnamed_addr constant [10 x i8] c"tmp_main3\00", align 1
@115 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@116 = private unnamed_addr constant [8 x i8] c"(i64 4)\00", align 1
@117 = private unnamed_addr constant [10 x i8] c"tmp_main3\00", align 1
@118 = private unnamed_addr constant [25 x i8] c"llvm.lifetime.start.p0i8\00", align 1
@119 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@120 = private unnamed_addr constant [10 x i8] c"tmp_main4\00", align 1
@121 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@122 = private unnamed_addr constant [8 x i8] c"(i64 4)\00", align 1
@123 = private unnamed_addr constant [10 x i8] c"tmp_main4\00", align 1
@124 = private unnamed_addr constant [25 x i8] c"llvm.lifetime.start.p0i8\00", align 1
@125 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@126 = private unnamed_addr constant [10 x i8] c"tmp_main5\00", align 1
@127 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@128 = private unnamed_addr constant [8 x i8] c"(i64 4)\00", align 1
@129 = private unnamed_addr constant [10 x i8] c"tmp_main5\00", align 1
@130 = private unnamed_addr constant [25 x i8] c"llvm.lifetime.start.p0i8\00", align 1
@131 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@132 = private unnamed_addr constant [10 x i8] c"tmp_main6\00", align 1
@133 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@134 = private unnamed_addr constant [8 x i8] c"(i64 4)\00", align 1
@135 = private unnamed_addr constant [10 x i8] c"tmp_main6\00", align 1
@136 = private unnamed_addr constant [25 x i8] c"llvm.lifetime.start.p0i8\00", align 1
@137 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@138 = private unnamed_addr constant [10 x i8] c"tmp_main7\00", align 1
@139 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@140 = private unnamed_addr constant [8 x i8] c"(i64 4)\00", align 1
@141 = private unnamed_addr constant [10 x i8] c"tmp_main7\00", align 1
@142 = private unnamed_addr constant [25 x i8] c"llvm.lifetime.start.p0i8\00", align 1
@143 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@144 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@145 = private unnamed_addr constant [11 x i8] c"(i64 1001)\00", align 1
@146 = private unnamed_addr constant [10 x i8] c"tmp_main8\00", align 1
@147 = private unnamed_addr constant [25 x i8] c"llvm.lifetime.start.p0i8\00", align 1
@148 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@149 = private unnamed_addr constant [9 x i8] c"cmp_main\00", align 1
@150 = private unnamed_addr constant [5 x i8] c"argc\00", align 1
@151 = private unnamed_addr constant [3 x i8] c"eq\00", align 1
@152 = private unnamed_addr constant [8 x i8] c"(i32 2)\00", align 1
@153 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@154 = private unnamed_addr constant [9 x i8] c"cmp_main\00", align 1
@155 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@156 = private unnamed_addr constant [10 x i8] c"tmp_main9\00", align 1
@157 = private unnamed_addr constant [17 x i8] c"%struct.__sFILE*\00", align 1
@158 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@159 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@160 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@161 = private unnamed_addr constant [9 x i8] c"(i64 28)\00", align 1
@162 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@163 = private unnamed_addr constant [8 x i8] c"(i64 1)\00", align 1
@164 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@165 = private unnamed_addr constant [10 x i8] c"tmp_main9\00", align 1
@166 = private unnamed_addr constant [11 x i8] c"tmp_main10\00", align 1
@167 = private unnamed_addr constant [11 x i8] c"fwrite_RET\00", align 1
@168 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@169 = private unnamed_addr constant [11 x i8] c"tmp_main11\00", align 1
@170 = private unnamed_addr constant [11 x i8] c"tmp_main11\00", align 1
@171 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@172 = private unnamed_addr constant [11 x i8] c"tmp_main11\00", align 1
@173 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@174 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@175 = private unnamed_addr constant [11 x i8] c"call1_main\00", align 1
@176 = private unnamed_addr constant [12 x i8] c"\01_fopen_RET\00", align 1
@177 = private unnamed_addr constant [12 x i8] c"tobool_main\00", align 1
@178 = private unnamed_addr constant [11 x i8] c"call1_main\00", align 1
@179 = private unnamed_addr constant [3 x i8] c"eq\00", align 1
@180 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@181 = private unnamed_addr constant [17 x i8] c"%struct.__sFILE*\00", align 1
@182 = private unnamed_addr constant [12 x i8] c"tobool_main\00", align 1
@183 = private unnamed_addr constant [8 x i8] c"if.else\00", align 1
@184 = private unnamed_addr constant [11 x i8] c"tmp_main12\00", align 1
@185 = private unnamed_addr constant [17 x i8] c"%struct.__sFILE*\00", align 1
@186 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@187 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@188 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@189 = private unnamed_addr constant [9 x i8] c"(i64 23)\00", align 1
@190 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@191 = private unnamed_addr constant [8 x i8] c"(i64 1)\00", align 1
@192 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@193 = private unnamed_addr constant [11 x i8] c"tmp_main12\00", align 1
@194 = private unnamed_addr constant [11 x i8] c"tmp_main13\00", align 1
@195 = private unnamed_addr constant [11 x i8] c"fwrite_RET\00", align 1
@196 = private unnamed_addr constant [9 x i8] c"if.then2\00", align 1
@197 = private unnamed_addr constant [11 x i8] c"tmp_main14\00", align 1
@198 = private unnamed_addr constant [4 x i8] c"i8*\00", align 1
@199 = private unnamed_addr constant [11 x i8] c"tmp_main15\00", align 1
@200 = private unnamed_addr constant [4 x i8] c"i8*\00", align 1
@201 = private unnamed_addr constant [11 x i8] c"tmp_main16\00", align 1
@202 = private unnamed_addr constant [4 x i8] c"i8*\00", align 1
@203 = private unnamed_addr constant [11 x i8] c"tmp_main17\00", align 1
@204 = private unnamed_addr constant [4 x i8] c"i8*\00", align 1
@205 = private unnamed_addr constant [11 x i8] c"tmp_main18\00", align 1
@206 = private unnamed_addr constant [4 x i8] c"i8*\00", align 1
@207 = private unnamed_addr constant [11 x i8] c"tmp_main19\00", align 1
@208 = private unnamed_addr constant [4 x i8] c"i8*\00", align 1
@209 = private unnamed_addr constant [11 x i8] c"tmp_main20\00", align 1
@210 = private unnamed_addr constant [4 x i8] c"i8*\00", align 1
@211 = private unnamed_addr constant [11 x i8] c"tmp_main21\00", align 1
@212 = private unnamed_addr constant [4 x i8] c"i8*\00", align 1
@213 = private unnamed_addr constant [15 x i8] c"tobool626_main\00", align 1
@214 = private unnamed_addr constant [13 x i8] c"call525_main\00", align 1
@215 = private unnamed_addr constant [3 x i8] c"eq\00", align 1
@216 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@217 = private unnamed_addr constant [4 x i8] c"i8*\00", align 1
@218 = private unnamed_addr constant [15 x i8] c"tobool626_main\00", align 1
@219 = private unnamed_addr constant [8 x i8] c"if.end4\00", align 1
@220 = private unnamed_addr constant [11 x i8] c"tmp_main22\00", align 1
@221 = private unnamed_addr constant [17 x i8] c"while.body.lr.ph\00", align 1
@222 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@223 = private unnamed_addr constant [8 x i8] c"(i64 4)\00", align 1
@224 = private unnamed_addr constant [11 x i8] c"tmp_main22\00", align 1
@225 = private unnamed_addr constant [25 x i8] c"llvm.lifetime.start.p0i8\00", align 1
@226 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@227 = private unnamed_addr constant [11 x i8] c"tmp_main23\00", align 1
@228 = private unnamed_addr constant [11 x i8] c"tmp_main23\00", align 1
@229 = private unnamed_addr constant [10 x i8] c"cmp8_main\00", align 1
@230 = private unnamed_addr constant [11 x i8] c"tmp_main23\00", align 1
@231 = private unnamed_addr constant [3 x i8] c"eq\00", align 1
@232 = private unnamed_addr constant [8 x i8] c"(i8 35)\00", align 1
@233 = private unnamed_addr constant [3 x i8] c"i8\00", align 1
@234 = private unnamed_addr constant [10 x i8] c"cmp8_main\00", align 1
@235 = private unnamed_addr constant [11 x i8] c"while.body\00", align 1
@236 = private unnamed_addr constant [11 x i8] c"tmp_main24\00", align 1
@237 = private unnamed_addr constant [11 x i8] c"tmp_main24\00", align 1
@238 = private unnamed_addr constant [11 x i8] c"tmp_main25\00", align 1
@239 = private unnamed_addr constant [11 x i8] c"tmp_main25\00", align 1
@240 = private unnamed_addr constant [11 x i8] c"tmp_main26\00", align 1
@241 = private unnamed_addr constant [11 x i8] c"tmp_main26\00", align 1
@242 = private unnamed_addr constant [11 x i8] c"tmp_main27\00", align 1
@243 = private unnamed_addr constant [11 x i8] c"tmp_main27\00", align 1
@244 = private unnamed_addr constant [11 x i8] c"tmp_main28\00", align 1
@245 = private unnamed_addr constant [11 x i8] c"tmp_main28\00", align 1
@246 = private unnamed_addr constant [11 x i8] c"tmp_main29\00", align 1
@247 = private unnamed_addr constant [11 x i8] c"tmp_main29\00", align 1
@248 = private unnamed_addr constant [11 x i8] c"tmp_main30\00", align 1
@249 = private unnamed_addr constant [11 x i8] c"tmp_main30\00", align 1
@250 = private unnamed_addr constant [11 x i8] c"tmp_main31\00", align 1
@251 = private unnamed_addr constant [11 x i8] c"tmp_main31\00", align 1
@252 = private unnamed_addr constant [11 x i8] c"tmp_main32\00", align 1
@253 = private unnamed_addr constant [11 x i8] c"tmp_main32\00", align 1
@254 = private unnamed_addr constant [11 x i8] c"tmp_main33\00", align 1
@255 = private unnamed_addr constant [11 x i8] c"tmp_main33\00", align 1
@256 = private unnamed_addr constant [11 x i8] c"tmp_main34\00", align 1
@257 = private unnamed_addr constant [11 x i8] c"tmp_main34\00", align 1
@258 = private unnamed_addr constant [11 x i8] c"tmp_main35\00", align 1
@259 = private unnamed_addr constant [11 x i8] c"tmp_main35\00", align 1
@260 = private unnamed_addr constant [11 x i8] c"cmp.i_main\00", align 1
@261 = private unnamed_addr constant [11 x i8] c"tmp_main35\00", align 1
@262 = private unnamed_addr constant [4 x i8] c"slt\00", align 1
@263 = private unnamed_addr constant [10 x i8] c"(i32 401)\00", align 1
@264 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@265 = private unnamed_addr constant [11 x i8] c"cmp.i_main\00", align 1
@266 = private unnamed_addr constant [9 x i8] c"if.end10\00", align 1
@267 = private unnamed_addr constant [11 x i8] c"tmp_main36\00", align 1
@268 = private unnamed_addr constant [11 x i8] c"tmp_main36\00", align 1
@269 = private unnamed_addr constant [11 x i8] c"tmp_main37\00", align 1
@270 = private unnamed_addr constant [11 x i8] c"tmp_main37\00", align 1
@271 = private unnamed_addr constant [11 x i8] c"tmp_main38\00", align 1
@272 = private unnamed_addr constant [11 x i8] c"tmp_main38\00", align 1
@273 = private unnamed_addr constant [11 x i8] c"tmp_main39\00", align 1
@274 = private unnamed_addr constant [11 x i8] c"tmp_main39\00", align 1
@275 = private unnamed_addr constant [11 x i8] c"tmp_main40\00", align 1
@276 = private unnamed_addr constant [11 x i8] c"tmp_main40\00", align 1
@277 = private unnamed_addr constant [14 x i8] c"tobool14_main\00", align 1
@278 = private unnamed_addr constant [11 x i8] c"tmp_main40\00", align 1
@279 = private unnamed_addr constant [3 x i8] c"eq\00", align 1
@280 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@281 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@282 = private unnamed_addr constant [13 x i8] c"cmp.i.i_main\00", align 1
@283 = private unnamed_addr constant [11 x i8] c"tmp_main34\00", align 1
@284 = private unnamed_addr constant [4 x i8] c"sgt\00", align 1
@285 = private unnamed_addr constant [11 x i8] c"tmp_main36\00", align 1
@286 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@287 = private unnamed_addr constant [14 x i8] c"cmp1.i.i_main\00", align 1
@288 = private unnamed_addr constant [11 x i8] c"tmp_main34\00", align 1
@289 = private unnamed_addr constant [4 x i8] c"slt\00", align 1
@290 = private unnamed_addr constant [11 x i8] c"tmp_main37\00", align 1
@291 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@292 = private unnamed_addr constant [17 x i8] c"or.cond.i.i_main\00", align 1
@293 = private unnamed_addr constant [13 x i8] c"cmp.i.i_main\00", align 1
@294 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@295 = private unnamed_addr constant [14 x i8] c"cmp1.i.i_main\00", align 1
@296 = private unnamed_addr constant [14 x i8] c"cmp2.i.i_main\00", align 1
@297 = private unnamed_addr constant [11 x i8] c"tmp_main33\00", align 1
@298 = private unnamed_addr constant [4 x i8] c"slt\00", align 1
@299 = private unnamed_addr constant [11 x i8] c"tmp_main39\00", align 1
@300 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@301 = private unnamed_addr constant [19 x i8] c"or.cond16.i.i_main\00", align 1
@302 = private unnamed_addr constant [17 x i8] c"or.cond.i.i_main\00", align 1
@303 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@304 = private unnamed_addr constant [14 x i8] c"cmp2.i.i_main\00", align 1
@305 = private unnamed_addr constant [14 x i8] c"cmp4.i.i_main\00", align 1
@306 = private unnamed_addr constant [11 x i8] c"tmp_main33\00", align 1
@307 = private unnamed_addr constant [4 x i8] c"sgt\00", align 1
@308 = private unnamed_addr constant [11 x i8] c"tmp_main38\00", align 1
@309 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@310 = private unnamed_addr constant [19 x i8] c"or.cond17.i.i_main\00", align 1
@311 = private unnamed_addr constant [14 x i8] c"cmp4.i.i_main\00", align 1
@312 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@313 = private unnamed_addr constant [19 x i8] c"or.cond16.i.i_main\00", align 1
@314 = private unnamed_addr constant [20 x i8] c"inside.1.v.i.i_main\00", align 1
@315 = private unnamed_addr constant [14 x i8] c"tobool14_main\00", align 1
@316 = private unnamed_addr constant [4 x i8] c"xor\00", align 1
@317 = private unnamed_addr constant [19 x i8] c"or.cond17.i.i_main\00", align 1
@318 = private unnamed_addr constant [11 x i8] c"land.rhs.i\00", align 1
@319 = private unnamed_addr constant [11 x i8] c"tmp_main41\00", align 1
@320 = private unnamed_addr constant [43 x i8] c"if.end10,0,land.rhs.i,inside.1.v.i.i_main,\00", align 1
@321 = private unnamed_addr constant [11 x i8] c"tmp_main42\00", align 1
@322 = private unnamed_addr constant [11 x i8] c"tmp_main42\00", align 1
@323 = private unnamed_addr constant [14 x i8] c"tobool16_main\00", align 1
@324 = private unnamed_addr constant [11 x i8] c"tmp_main42\00", align 1
@325 = private unnamed_addr constant [3 x i8] c"eq\00", align 1
@326 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@327 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@328 = private unnamed_addr constant [17 x i8] c"spec.select_main\00", align 1
@329 = private unnamed_addr constant [11 x i8] c"tmp_main41\00", align 1
@330 = private unnamed_addr constant [4 x i8] c"xor\00", align 1
@331 = private unnamed_addr constant [14 x i8] c"tobool16_main\00", align 1
@332 = private unnamed_addr constant [31 x i8] c"_Z13checkGeofenceiiibiiii.exit\00", align 1
@333 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@334 = private unnamed_addr constant [8 x i8] c"(i64 4)\00", align 1
@335 = private unnamed_addr constant [11 x i8] c"tmp_main22\00", align 1
@336 = private unnamed_addr constant [23 x i8] c"llvm.lifetime.end.p0i8\00", align 1
@337 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@338 = private unnamed_addr constant [13 x i8] c"tobool6_main\00", align 1
@339 = private unnamed_addr constant [11 x i8] c"call5_main\00", align 1
@340 = private unnamed_addr constant [3 x i8] c"eq\00", align 1
@341 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@342 = private unnamed_addr constant [4 x i8] c"i8*\00", align 1
@343 = private unnamed_addr constant [13 x i8] c"tobool6_main\00", align 1
@344 = private unnamed_addr constant [8 x i8] c"cleanup\00", align 1
@345 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@346 = private unnamed_addr constant [11 x i8] c"(i64 1001)\00", align 1
@347 = private unnamed_addr constant [10 x i8] c"tmp_main8\00", align 1
@348 = private unnamed_addr constant [23 x i8] c"llvm.lifetime.end.p0i8\00", align 1
@349 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@350 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@351 = private unnamed_addr constant [8 x i8] c"(i64 4)\00", align 1
@352 = private unnamed_addr constant [10 x i8] c"tmp_main7\00", align 1
@353 = private unnamed_addr constant [23 x i8] c"llvm.lifetime.end.p0i8\00", align 1
@354 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@355 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@356 = private unnamed_addr constant [8 x i8] c"(i64 4)\00", align 1
@357 = private unnamed_addr constant [10 x i8] c"tmp_main6\00", align 1
@358 = private unnamed_addr constant [23 x i8] c"llvm.lifetime.end.p0i8\00", align 1
@359 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@360 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@361 = private unnamed_addr constant [8 x i8] c"(i64 4)\00", align 1
@362 = private unnamed_addr constant [10 x i8] c"tmp_main5\00", align 1
@363 = private unnamed_addr constant [23 x i8] c"llvm.lifetime.end.p0i8\00", align 1
@364 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@365 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@366 = private unnamed_addr constant [8 x i8] c"(i64 4)\00", align 1
@367 = private unnamed_addr constant [10 x i8] c"tmp_main4\00", align 1
@368 = private unnamed_addr constant [23 x i8] c"llvm.lifetime.end.p0i8\00", align 1
@369 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@370 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@371 = private unnamed_addr constant [8 x i8] c"(i64 4)\00", align 1
@372 = private unnamed_addr constant [10 x i8] c"tmp_main3\00", align 1
@373 = private unnamed_addr constant [23 x i8] c"llvm.lifetime.end.p0i8\00", align 1
@374 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@375 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@376 = private unnamed_addr constant [8 x i8] c"(i64 4)\00", align 1
@377 = private unnamed_addr constant [10 x i8] c"tmp_main2\00", align 1
@378 = private unnamed_addr constant [23 x i8] c"llvm.lifetime.end.p0i8\00", align 1
@379 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@380 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@381 = private unnamed_addr constant [8 x i8] c"(i64 4)\00", align 1
@382 = private unnamed_addr constant [10 x i8] c"tmp_main1\00", align 1
@383 = private unnamed_addr constant [23 x i8] c"llvm.lifetime.end.p0i8\00", align 1
@384 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@385 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@386 = private unnamed_addr constant [8 x i8] c"(i64 4)\00", align 1
@387 = private unnamed_addr constant [9 x i8] c"tmp_main\00", align 1
@388 = private unnamed_addr constant [23 x i8] c"llvm.lifetime.end.p0i8\00", align 1
@389 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@390 = private unnamed_addr constant [9 x i8] c"main_RET\00", align 1
@391 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@392 = private unnamed_addr constant [10 x i8] c"while.end\00", align 1

; Function Attrs: norecurse nounwind readnone ssp uwtable
define zeroext i1 @_Z11insideFenceiibiiii(i32 %lat, i32 %lon, i1 zeroext %inclusion, i32 %high_lat, i32 %low_lat, i32 %high_lon, i32 %low_lon) local_unnamed_addr #0 {
entry:
  %cmp__Z11insideFenceiibiiii = icmp sgt i32 %lon, %low_lon
  call void @stg_update_cmp(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @4, i32 0, i32 0))
  %cmp1__Z11insideFenceiibiiii = icmp slt i32 %lon, %high_lon
  call void @stg_update_cmp(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @5, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @6, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @9, i32 0, i32 0))
  %or.cond__Z11insideFenceiibiiii = and i1 %cmp1__Z11insideFenceiibiiii, %cmp__Z11insideFenceiibiiii
  call void @stg_update_op(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @13, i32 0, i32 0))
  %cmp2__Z11insideFenceiibiiii = icmp slt i32 %lat, %high_lat
  call void @stg_update_cmp(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @18, i32 0, i32 0))
  %or.cond16__Z11insideFenceiibiiii = and i1 %cmp2__Z11insideFenceiibiiii, %or.cond__Z11insideFenceiibiiii
  call void @stg_update_op(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @19, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @22, i32 0, i32 0))
  %cmp4__Z11insideFenceiibiiii = icmp sgt i32 %lat, %low_lat
  call void @stg_update_cmp(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @23, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @27, i32 0, i32 0))
  %or.cond17__Z11insideFenceiibiiii = and i1 %cmp4__Z11insideFenceiibiiii, %or.cond16__Z11insideFenceiibiiii
  call void @stg_update_op(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @29, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @31, i32 0, i32 0))
  %not.inclusion__Z11insideFenceiibiiii = xor i1 %inclusion, true
  call void @stg_update_op(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @32, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @33, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @34, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @35, i32 0, i32 0))
  %inside.1.v__Z11insideFenceiibiiii = xor i1 %or.cond17__Z11insideFenceiibiiii, %not.inclusion__Z11insideFenceiibiiii
  call void @stg_update_op(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @36, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @37, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @38, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @39, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @40, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @41, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @42, i32 0, i32 0))
  ret i1 %inside.1.v__Z11insideFenceiibiiii
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind readnone ssp uwtable
define zeroext i1 @_Z13checkGeofenceiiibiiii(i32 %lat, i32 %lon, i32 %altitude, i1 zeroext %inclusion, i32 %high_lat, i32 %low_lat, i32 %high_lon, i32 %low_lon) local_unnamed_addr #0 {
entry:
  %cmp__Z13checkGeofenceiiibiiii = icmp slt i32 %altitude, 401
  call void @stg_update_cmp(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @43, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @44, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @45, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @46, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @47, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp__Z13checkGeofenceiiibiiii, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @48, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @49, i32 0, i32 0))
  br i1 %cmp__Z13checkGeofenceiiibiiii, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %cmp.i__Z13checkGeofenceiiibiiii = icmp sgt i32 %lon, %low_lon
  call void @stg_update_cmp(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @50, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @51, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @52, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @53, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @54, i32 0, i32 0))
  %cmp1.i__Z13checkGeofenceiiibiiii = icmp slt i32 %lon, %high_lon
  call void @stg_update_cmp(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @55, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @56, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @57, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @58, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @59, i32 0, i32 0))
  %or.cond.i__Z13checkGeofenceiiibiiii = and i1 %cmp1.i__Z13checkGeofenceiiibiiii, %cmp.i__Z13checkGeofenceiiibiiii
  call void @stg_update_op(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @60, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @61, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @62, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @63, i32 0, i32 0))
  %cmp2.i__Z13checkGeofenceiiibiiii = icmp slt i32 %lat, %high_lat
  call void @stg_update_cmp(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @64, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @65, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @66, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @67, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @68, i32 0, i32 0))
  %or.cond16.i__Z13checkGeofenceiiibiiii = and i1 %cmp2.i__Z13checkGeofenceiiibiiii, %or.cond.i__Z13checkGeofenceiiibiiii
  call void @stg_update_op(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @69, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @70, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @71, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @72, i32 0, i32 0))
  %cmp4.i__Z13checkGeofenceiiibiiii = icmp sgt i32 %lat, %low_lat
  call void @stg_update_cmp(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @73, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @74, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @75, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @76, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @77, i32 0, i32 0))
  %or.cond17.i__Z13checkGeofenceiiibiiii = and i1 %cmp4.i__Z13checkGeofenceiiibiiii, %or.cond16.i__Z13checkGeofenceiiibiiii
  call void @stg_update_op(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @78, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @79, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @80, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @81, i32 0, i32 0))
  %not.inclusion.i__Z13checkGeofenceiiibiiii = xor i1 %inclusion, true
  call void @stg_update_op(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @82, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @83, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @84, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @85, i32 0, i32 0))
  %inside.1.v.i__Z13checkGeofenceiiibiiii = xor i1 %or.cond17.i__Z13checkGeofenceiiibiiii, %not.inclusion.i__Z13checkGeofenceiiibiiii
  call void @stg_update_op(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @86, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @87, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @88, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @89, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @90, i32 0, i32 0))
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %tmp__Z13checkGeofenceiiibiiii = phi i1 [ false, %entry ], [ %inside.1.v.i__Z13checkGeofenceiiibiiii, %land.rhs ]
  call void @stg_update_phi(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @91, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @92, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @93, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @94, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @95, i32 0, i32 0))
  ret i1 %tmp__Z13checkGeofenceiiibiiii
}

; Function Attrs: norecurse ssp uwtable
define i32 @main(i32 %argc, i8** nocapture readonly %argv) local_unnamed_addr #2 {
entry:
  %lat_main = alloca i32, align 4
  %lon_main = alloca i32, align 4
  %altitude_main = alloca i32, align 4
  %high_lat_main = alloca i32, align 4
  %low_lat_main = alloca i32, align 4
  %high_lon_main = alloca i32, align 4
  %low_lon_main = alloca i32, align 4
  %inclusion_main = alloca i32, align 4
  %buf_main = alloca [1001 x i8], align 16
  %expected_main = alloca i32, align 4
  %tmp_main = bitcast i32* %lat_main to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %tmp_main) #6
  %tmp_main1 = bitcast i32* %lon_main to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %tmp_main1) #6
  %tmp_main2 = bitcast i32* %altitude_main to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %tmp_main2) #6
  %tmp_main3 = bitcast i32* %high_lat_main to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %tmp_main3) #6
  %tmp_main4 = bitcast i32* %low_lat_main to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %tmp_main4) #6
  %tmp_main5 = bitcast i32* %high_lon_main to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %tmp_main5) #6
  %tmp_main6 = bitcast i32* %low_lon_main to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %tmp_main6) #6
  %tmp_main7 = bitcast i32* %inclusion_main to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %tmp_main7) #6
  %tmp_main8 = getelementptr inbounds [1001 x i8], [1001 x i8]* %buf_main, i64 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 1001, i8* nonnull %tmp_main8) #6
  %cmp_main = icmp eq i32 %argc, 2
  call void @stg_update_cmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @149, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @150, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @151, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @152, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @153, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp_main, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @154, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @155, i32 0, i32 0))
  br i1 %cmp_main, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %tmp_main9 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !4
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @158, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @159, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @160, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @161, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @162, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @163, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @164, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @165, i32 0, i32 0))
  %tmp_main10 = tail call i64 @fwrite(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 28, i64 1, %struct.__sFILE* %tmp_main9)
  call void @stg_update_char(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @166, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @167, i32 0, i32 0))
  tail call void @exit(i32 1) #7
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @168, i32 0, i32 0))
  unreachable

if.else:                                          ; preds = %entry
  %arrayidx_main = getelementptr inbounds i8*, i8** %argv, i64 1
  %tmp_main11 = load i8*, i8** %arrayidx_main, align 8, !tbaa !4
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @171, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @172, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @173, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @174, i32 0, i32 0))
  %call1_main = tail call %struct.__sFILE* @"\01_fopen"(i8* %tmp_main11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  call void @stg_update_char(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @175, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @176, i32 0, i32 0))
  %tobool_main = icmp eq %struct.__sFILE* %call1_main, null
  call void @stg_update_cmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @177, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @178, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @179, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @180, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @181, i32 0, i32 0))
  call void @stg_update_pc(i1 %tobool_main, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @182, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @183, i32 0, i32 0))
  br i1 %tobool_main, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.else
  %tmp_main12 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !tbaa !4
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @186, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @187, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @188, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @189, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @190, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @191, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @192, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @193, i32 0, i32 0))
  %tmp_main13 = tail call i64 @fwrite(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i64 23, i64 1, %struct.__sFILE* %tmp_main12)
  call void @stg_update_char(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @194, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @195, i32 0, i32 0))
  tail call void @exit(i32 1) #7
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @196, i32 0, i32 0))
  unreachable

if.end4:                                          ; preds = %if.else
  %tmp_main14 = load i8*, i8** @uniform, align 8, !tbaa !4
  call void @stg_symbolic_variable(i8* nonnull %tmp_main, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), double -2.000000e+01, double 2.000000e+01, i8* %tmp_main14, double 0.000000e+00, double 0.000000e+00)
  %tmp_main15 = load i8*, i8** @uniform, align 8, !tbaa !4
  call void @stg_symbolic_variable(i8* nonnull %tmp_main1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), double -2.000000e+01, double 2.000000e+01, i8* %tmp_main15, double 0.000000e+00, double 0.000000e+00)
  %tmp_main16 = load i8*, i8** @uniform, align 8, !tbaa !4
  call void @stg_symbolic_variable(i8* nonnull %tmp_main2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double -2.000000e+01, double 2.000000e+01, i8* %tmp_main16, double 0.000000e+00, double 0.000000e+00)
  %tmp_main17 = load i8*, i8** @uniform, align 8, !tbaa !4
  call void @stg_symbolic_variable(i8* nonnull %tmp_main7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), double -2.000000e+01, double 2.000000e+01, i8* %tmp_main17, double 0.000000e+00, double 0.000000e+00)
  %tmp_main18 = load i8*, i8** @uniform, align 8, !tbaa !4
  call void @stg_symbolic_variable(i8* nonnull %tmp_main3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), double -2.000000e+01, double 2.000000e+01, i8* %tmp_main18, double 0.000000e+00, double 0.000000e+00)
  %tmp_main19 = load i8*, i8** @uniform, align 8, !tbaa !4
  call void @stg_symbolic_variable(i8* nonnull %tmp_main4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), double -2.000000e+01, double 2.000000e+01, i8* %tmp_main19, double 0.000000e+00, double 0.000000e+00)
  %tmp_main20 = load i8*, i8** @uniform, align 8, !tbaa !4
  call void @stg_symbolic_variable(i8* nonnull %tmp_main5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), double -2.000000e+01, double 2.000000e+01, i8* %tmp_main20, double 0.000000e+00, double 0.000000e+00)
  %tmp_main21 = load i8*, i8** @uniform, align 8, !tbaa !4
  call void @stg_symbolic_variable(i8* nonnull %tmp_main6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), double -2.000000e+01, double 2.000000e+01, i8* %tmp_main21, double 0.000000e+00, double 0.000000e+00)
  %call525_main = call i8* @fgets(i8* nonnull %tmp_main8, i32 1000, %struct.__sFILE* nonnull %call1_main)
  %tobool626_main = icmp eq i8* %call525_main, null
  call void @stg_update_cmp(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @213, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @214, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @215, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @216, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @217, i32 0, i32 0))
  call void @stg_update_pc(i1 %tobool626_main, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @218, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @219, i32 0, i32 0))
  br i1 %tobool626_main, label %while.end, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.end4
  %tmp_main22 = bitcast i32* %expected_main to i8*
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @221, i32 0, i32 0))
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %cleanup
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %tmp_main22) #6
  %tmp_main23 = load i8, i8* %tmp_main8, align 16, !tbaa !8
  call void @stg_update_load_i8(i8* %tmp_main8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @228, i32 0, i32 0))
  %cmp8_main = icmp eq i8 %tmp_main23, 35
  call void @stg_update_cmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @229, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @230, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @231, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @232, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @233, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp8_main, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @234, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @235, i32 0, i32 0))
  br i1 %cmp8_main, label %cleanup, label %if.end10

if.end10:                                         ; preds = %while.body
  call void @stg_begin_test()
  %call12_main = call i32 (i8*, i8*, ...) @sscanf(i8* nonnull %tmp_main8, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i32* nonnull %lon_main, i32* nonnull %lat_main, i32* nonnull %altitude_main, i32* nonnull %inclusion_main, i32* nonnull %high_lon_main, i32* nonnull %low_lon_main, i32* nonnull %high_lat_main, i32* nonnull %low_lat_main, i32* nonnull %expected_main)
  call void @stg_update_input_i32(i32* %expected_main)
  call void @stg_update_input_i32(i32* %low_lat_main)
  call void @stg_update_input_i32(i32* %high_lat_main)
  call void @stg_update_input_i32(i32* %low_lon_main)
  call void @stg_update_input_i32(i32* %high_lon_main)
  call void @stg_update_input_i32(i32* %inclusion_main)
  call void @stg_update_input_i32(i32* %altitude_main)
  call void @stg_update_input_i32(i32* %lat_main)
  call void @stg_update_input_i32(i32* %lon_main)
  %tmp_main24 = load i32, i32* %lat_main, align 4, !tbaa !9
  call void @stg_update_load_i32(i32* %lat_main, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @237, i32 0, i32 0))
  %tmp_main25 = load i32, i32* %lon_main, align 4, !tbaa !9
  call void @stg_update_load_i32(i32* %lon_main, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @239, i32 0, i32 0))
  %tmp_main26 = load i32, i32* %altitude_main, align 4, !tbaa !9
  call void @stg_update_load_i32(i32* %altitude_main, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @241, i32 0, i32 0))
  %tmp_main27 = load i32, i32* %inclusion_main, align 4, !tbaa !9
  call void @stg_update_load_i32(i32* %inclusion_main, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @243, i32 0, i32 0))
  %tmp_main28 = load i32, i32* %high_lat_main, align 4, !tbaa !9
  call void @stg_update_load_i32(i32* %high_lat_main, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @245, i32 0, i32 0))
  %tmp_main29 = load i32, i32* %low_lat_main, align 4, !tbaa !9
  call void @stg_update_load_i32(i32* %low_lat_main, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @247, i32 0, i32 0))
  %tmp_main30 = load i32, i32* %high_lon_main, align 4, !tbaa !9
  call void @stg_update_load_i32(i32* %high_lon_main, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @249, i32 0, i32 0))
  %tmp_main31 = load i32, i32* %low_lon_main, align 4, !tbaa !9
  call void @stg_update_load_i32(i32* %low_lon_main, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @251, i32 0, i32 0))
  %tmp_main32 = load i32, i32* %expected_main, align 4, !tbaa !9
  call void @stg_update_load_i32(i32* %expected_main, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @253, i32 0, i32 0))
  %call13_main = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.13, i64 0, i64 0), i32 %tmp_main24, i32 %tmp_main25, i32 %tmp_main26, i32 %tmp_main27, i32 %tmp_main28, i32 %tmp_main29, i32 %tmp_main30, i32 %tmp_main31, i32 %tmp_main32)
  %tmp_main33 = load i32, i32* %lat_main, align 4, !tbaa !9
  call void @stg_update_load_i32(i32* %lat_main, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @255, i32 0, i32 0))
  %tmp_main34 = load i32, i32* %lon_main, align 4, !tbaa !9
  call void @stg_update_load_i32(i32* %lon_main, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @257, i32 0, i32 0))
  %tmp_main35 = load i32, i32* %altitude_main, align 4, !tbaa !9
  call void @stg_update_load_i32(i32* %altitude_main, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @259, i32 0, i32 0))
  %cmp.i_main = icmp slt i32 %tmp_main35, 401
  call void @stg_update_cmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @260, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @261, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @262, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @263, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @264, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp.i_main, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @265, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @266, i32 0, i32 0))
  br i1 %cmp.i_main, label %land.rhs.i, label %_Z13checkGeofenceiiibiiii.exit

land.rhs.i:                                       ; preds = %if.end10
  %tmp_main36 = load i32, i32* %low_lon_main, align 4, !tbaa !9
  call void @stg_update_load_i32(i32* %low_lon_main, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @268, i32 0, i32 0))
  %tmp_main37 = load i32, i32* %high_lon_main, align 4, !tbaa !9
  call void @stg_update_load_i32(i32* %high_lon_main, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @270, i32 0, i32 0))
  %tmp_main38 = load i32, i32* %low_lat_main, align 4, !tbaa !9
  call void @stg_update_load_i32(i32* %low_lat_main, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @272, i32 0, i32 0))
  %tmp_main39 = load i32, i32* %high_lat_main, align 4, !tbaa !9
  call void @stg_update_load_i32(i32* %high_lat_main, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @274, i32 0, i32 0))
  %tmp_main40 = load i32, i32* %inclusion_main, align 4, !tbaa !9
  call void @stg_update_load_i32(i32* %inclusion_main, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @276, i32 0, i32 0))
  %tobool14_main = icmp eq i32 %tmp_main40, 0
  call void @stg_update_cmp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @277, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @278, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @279, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @280, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @281, i32 0, i32 0))
  %cmp.i.i_main = icmp sgt i32 %tmp_main34, %tmp_main36
  call void @stg_update_cmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @282, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @283, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @284, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @285, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @286, i32 0, i32 0))
  %cmp1.i.i_main = icmp slt i32 %tmp_main34, %tmp_main37
  call void @stg_update_cmp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @287, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @288, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @289, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @290, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @291, i32 0, i32 0))
  %or.cond.i.i_main = and i1 %cmp.i.i_main, %cmp1.i.i_main
  call void @stg_update_op(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @292, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @293, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @294, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @295, i32 0, i32 0))
  %cmp2.i.i_main = icmp slt i32 %tmp_main33, %tmp_main39
  call void @stg_update_cmp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @296, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @297, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @298, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @299, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @300, i32 0, i32 0))
  %or.cond16.i.i_main = and i1 %or.cond.i.i_main, %cmp2.i.i_main
  call void @stg_update_op(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @301, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @302, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @303, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @304, i32 0, i32 0))
  %cmp4.i.i_main = icmp sgt i32 %tmp_main33, %tmp_main38
  call void @stg_update_cmp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @305, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @306, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @307, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @308, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @309, i32 0, i32 0))
  %or.cond17.i.i_main = and i1 %cmp4.i.i_main, %or.cond16.i.i_main
  call void @stg_update_op(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @310, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @311, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @312, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @313, i32 0, i32 0))
  %inside.1.v.i.i_main = xor i1 %tobool14_main, %or.cond17.i.i_main
  call void @stg_update_op(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @314, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @315, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @316, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @317, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @318, i32 0, i32 0))
  br label %_Z13checkGeofenceiiibiiii.exit

_Z13checkGeofenceiiibiiii.exit:                   ; preds = %if.end10, %land.rhs.i
  %tmp_main41 = phi i1 [ false, %if.end10 ], [ %inside.1.v.i.i_main, %land.rhs.i ]
  call void @stg_update_phi(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @319, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @320, i32 0, i32 0))
  call void @stg_end_test()
  %tmp_main42 = load i32, i32* %expected_main, align 4, !tbaa !9
  call void @stg_update_load_i32(i32* %expected_main, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @322, i32 0, i32 0))
  %tobool16_main = icmp eq i32 %tmp_main42, 0
  call void @stg_update_cmp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @323, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @324, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @325, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @326, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @327, i32 0, i32 0))
  %spec.select_main = xor i1 %tmp_main41, %tobool16_main
  call void @stg_update_op(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @328, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @329, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @330, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @331, i32 0, i32 0))
  call void @stg_record_test(i1 zeroext %spec.select_main)
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @332, i32 0, i32 0))
  br label %cleanup

cleanup:                                          ; preds = %while.body, %_Z13checkGeofenceiiibiiii.exit
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %tmp_main22) #6
  %call5_main = call i8* @fgets(i8* nonnull %tmp_main8, i32 1000, %struct.__sFILE* nonnull %call1_main)
  %tobool6_main = icmp eq i8* %call5_main, null
  call void @stg_update_cmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @338, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @339, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @340, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @341, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @342, i32 0, i32 0))
  call void @stg_update_pc(i1 %tobool6_main, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @343, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @344, i32 0, i32 0))
  br i1 %tobool6_main, label %while.end, label %while.body

while.end:                                        ; preds = %cleanup, %if.end4
  %call21_main = call i32 @fclose(%struct.__sFILE* nonnull %call1_main)
  call void @llvm.lifetime.end.p0i8(i64 1001, i8* nonnull %tmp_main8) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %tmp_main7) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %tmp_main6) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %tmp_main5) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %tmp_main4) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %tmp_main3) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %tmp_main2) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %tmp_main1) #6
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %tmp_main) #6
  call void @stg_update_char(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @390, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @391, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @392, i32 0, i32 0))
  ret i32 0
}

; Function Attrs: noreturn
declare void @exit(i32) local_unnamed_addr #3

declare %struct.__sFILE* @"\01_fopen"(i8*, i8*) local_unnamed_addr #4

declare void @stg_symbolic_variable(i8*, i8*, double, double, i8*, double, double) local_unnamed_addr #4

; Function Attrs: nounwind
declare i8* @fgets(i8*, i32, %struct.__sFILE* nocapture) local_unnamed_addr #5

declare void @stg_begin_test() local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @sscanf(i8* nocapture readonly, i8* nocapture readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #5

declare void @stg_end_test() local_unnamed_addr #4

declare void @stg_record_test(i1 zeroext) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @fclose(%struct.__sFILE* nocapture) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) local_unnamed_addr #6

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

attributes #0 = { norecurse nounwind readnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { norecurse ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 14]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !6, i64 0}

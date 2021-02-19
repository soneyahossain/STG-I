; ModuleID = 'IPUT.bc'
source_filename = "classify.cpp"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@.str = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@0 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@1 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@3 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@4 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@5 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@6 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@7 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@8 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@9 = private unnamed_addr constant [19 x i8] c"tmp__Z8classifyiii\00", align 1
@10 = private unnamed_addr constant [19 x i8] c"tmp__Z8classifyiii\00", align 1
@11 = private unnamed_addr constant [19 x i8] c"cmp__Z8classifyiii\00", align 1
@12 = private unnamed_addr constant [19 x i8] c"tmp__Z8classifyiii\00", align 1
@13 = private unnamed_addr constant [4 x i8] c"sle\00", align 1
@14 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@15 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@16 = private unnamed_addr constant [19 x i8] c"cmp__Z8classifyiii\00", align 1
@17 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@18 = private unnamed_addr constant [20 x i8] c"tmp__Z8classifyiii1\00", align 1
@19 = private unnamed_addr constant [20 x i8] c"tmp__Z8classifyiii1\00", align 1
@20 = private unnamed_addr constant [20 x i8] c"cmp1__Z8classifyiii\00", align 1
@21 = private unnamed_addr constant [20 x i8] c"tmp__Z8classifyiii1\00", align 1
@22 = private unnamed_addr constant [4 x i8] c"sle\00", align 1
@23 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@24 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@25 = private unnamed_addr constant [20 x i8] c"cmp1__Z8classifyiii\00", align 1
@26 = private unnamed_addr constant [14 x i8] c"lor.lhs.false\00", align 1
@27 = private unnamed_addr constant [20 x i8] c"tmp__Z8classifyiii2\00", align 1
@28 = private unnamed_addr constant [20 x i8] c"tmp__Z8classifyiii2\00", align 1
@29 = private unnamed_addr constant [20 x i8] c"cmp3__Z8classifyiii\00", align 1
@30 = private unnamed_addr constant [20 x i8] c"tmp__Z8classifyiii2\00", align 1
@31 = private unnamed_addr constant [4 x i8] c"sle\00", align 1
@32 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@33 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@34 = private unnamed_addr constant [20 x i8] c"cmp3__Z8classifyiii\00", align 1
@35 = private unnamed_addr constant [15 x i8] c"lor.lhs.false2\00", align 1
@36 = private unnamed_addr constant [8 x i8] c"(i32 4)\00", align 1
@37 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@38 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@39 = private unnamed_addr constant [20 x i8] c"tmp__Z8classifyiii3\00", align 1
@40 = private unnamed_addr constant [20 x i8] c"tmp__Z8classifyiii3\00", align 1
@41 = private unnamed_addr constant [20 x i8] c"tmp__Z8classifyiii4\00", align 1
@42 = private unnamed_addr constant [20 x i8] c"tmp__Z8classifyiii4\00", align 1
@43 = private unnamed_addr constant [20 x i8] c"cmp4__Z8classifyiii\00", align 1
@44 = private unnamed_addr constant [20 x i8] c"tmp__Z8classifyiii3\00", align 1
@45 = private unnamed_addr constant [3 x i8] c"eq\00", align 1
@46 = private unnamed_addr constant [20 x i8] c"tmp__Z8classifyiii4\00", align 1
@47 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@48 = private unnamed_addr constant [20 x i8] c"cmp4__Z8classifyiii\00", align 1
@49 = private unnamed_addr constant [7 x i8] c"if.end\00", align 1
@50 = private unnamed_addr constant [20 x i8] c"tmp__Z8classifyiii5\00", align 1
@51 = private unnamed_addr constant [20 x i8] c"tmp__Z8classifyiii5\00", align 1
@52 = private unnamed_addr constant [19 x i8] c"add__Z8classifyiii\00", align 1
@53 = private unnamed_addr constant [20 x i8] c"tmp__Z8classifyiii5\00", align 1
@54 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@55 = private unnamed_addr constant [8 x i8] c"(i32 1)\00", align 1
@56 = private unnamed_addr constant [19 x i8] c"add__Z8classifyiii\00", align 1
@57 = private unnamed_addr constant [9 x i8] c"if.then5\00", align 1
@58 = private unnamed_addr constant [20 x i8] c"tmp__Z8classifyiii6\00", align 1
@59 = private unnamed_addr constant [20 x i8] c"tmp__Z8classifyiii6\00", align 1
@60 = private unnamed_addr constant [20 x i8] c"tmp__Z8classifyiii7\00", align 1
@61 = private unnamed_addr constant [20 x i8] c"tmp__Z8classifyiii7\00", align 1
@62 = private unnamed_addr constant [20 x i8] c"cmp7__Z8classifyiii\00", align 1
@63 = private unnamed_addr constant [20 x i8] c"tmp__Z8classifyiii6\00", align 1
@64 = private unnamed_addr constant [3 x i8] c"eq\00", align 1
@65 = private unnamed_addr constant [20 x i8] c"tmp__Z8classifyiii7\00", align 1
@66 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@67 = private unnamed_addr constant [20 x i8] c"cmp7__Z8classifyiii\00", align 1
@68 = private unnamed_addr constant [8 x i8] c"if.end6\00", align 1
@69 = private unnamed_addr constant [20 x i8] c"tmp__Z8classifyiii8\00", align 1
@70 = private unnamed_addr constant [20 x i8] c"tmp__Z8classifyiii8\00", align 1
@71 = private unnamed_addr constant [20 x i8] c"add9__Z8classifyiii\00", align 1
@72 = private unnamed_addr constant [20 x i8] c"tmp__Z8classifyiii8\00", align 1
@73 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@74 = private unnamed_addr constant [8 x i8] c"(i32 2)\00", align 1
@75 = private unnamed_addr constant [20 x i8] c"add9__Z8classifyiii\00", align 1
@76 = private unnamed_addr constant [9 x i8] c"if.then8\00", align 1
@77 = private unnamed_addr constant [20 x i8] c"tmp__Z8classifyiii9\00", align 1
@78 = private unnamed_addr constant [20 x i8] c"tmp__Z8classifyiii9\00", align 1
@79 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii10\00", align 1
@80 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii10\00", align 1
@81 = private unnamed_addr constant [21 x i8] c"cmp11__Z8classifyiii\00", align 1
@82 = private unnamed_addr constant [20 x i8] c"tmp__Z8classifyiii9\00", align 1
@83 = private unnamed_addr constant [3 x i8] c"eq\00", align 1
@84 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii10\00", align 1
@85 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@86 = private unnamed_addr constant [21 x i8] c"cmp11__Z8classifyiii\00", align 1
@87 = private unnamed_addr constant [9 x i8] c"if.end10\00", align 1
@88 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii11\00", align 1
@89 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii11\00", align 1
@90 = private unnamed_addr constant [21 x i8] c"add13__Z8classifyiii\00", align 1
@91 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii11\00", align 1
@92 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@93 = private unnamed_addr constant [8 x i8] c"(i32 3)\00", align 1
@94 = private unnamed_addr constant [21 x i8] c"add13__Z8classifyiii\00", align 1
@95 = private unnamed_addr constant [10 x i8] c"if.then12\00", align 1
@96 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii12\00", align 1
@97 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii12\00", align 1
@98 = private unnamed_addr constant [21 x i8] c"cmp15__Z8classifyiii\00", align 1
@99 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii12\00", align 1
@100 = private unnamed_addr constant [3 x i8] c"eq\00", align 1
@101 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@102 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@103 = private unnamed_addr constant [21 x i8] c"cmp15__Z8classifyiii\00", align 1
@104 = private unnamed_addr constant [9 x i8] c"if.end14\00", align 1
@105 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii13\00", align 1
@106 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii13\00", align 1
@107 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii14\00", align 1
@108 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii14\00", align 1
@109 = private unnamed_addr constant [21 x i8] c"add17__Z8classifyiii\00", align 1
@110 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii13\00", align 1
@111 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@112 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii14\00", align 1
@113 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii15\00", align 1
@114 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii15\00", align 1
@115 = private unnamed_addr constant [21 x i8] c"cmp18__Z8classifyiii\00", align 1
@116 = private unnamed_addr constant [21 x i8] c"add17__Z8classifyiii\00", align 1
@117 = private unnamed_addr constant [4 x i8] c"sle\00", align 1
@118 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii15\00", align 1
@119 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@120 = private unnamed_addr constant [21 x i8] c"cmp18__Z8classifyiii\00", align 1
@121 = private unnamed_addr constant [10 x i8] c"if.then16\00", align 1
@122 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii16\00", align 1
@123 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii16\00", align 1
@124 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii17\00", align 1
@125 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii17\00", align 1
@126 = private unnamed_addr constant [21 x i8] c"add20__Z8classifyiii\00", align 1
@127 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii16\00", align 1
@128 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@129 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii17\00", align 1
@130 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii18\00", align 1
@131 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii18\00", align 1
@132 = private unnamed_addr constant [21 x i8] c"cmp21__Z8classifyiii\00", align 1
@133 = private unnamed_addr constant [21 x i8] c"add20__Z8classifyiii\00", align 1
@134 = private unnamed_addr constant [4 x i8] c"sle\00", align 1
@135 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii18\00", align 1
@136 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@137 = private unnamed_addr constant [21 x i8] c"cmp21__Z8classifyiii\00", align 1
@138 = private unnamed_addr constant [16 x i8] c"lor.lhs.false19\00", align 1
@139 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii19\00", align 1
@140 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii19\00", align 1
@141 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii20\00", align 1
@142 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii20\00", align 1
@143 = private unnamed_addr constant [21 x i8] c"add23__Z8classifyiii\00", align 1
@144 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii19\00", align 1
@145 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@146 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii20\00", align 1
@147 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii21\00", align 1
@148 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii21\00", align 1
@149 = private unnamed_addr constant [21 x i8] c"cmp24__Z8classifyiii\00", align 1
@150 = private unnamed_addr constant [21 x i8] c"add23__Z8classifyiii\00", align 1
@151 = private unnamed_addr constant [4 x i8] c"sge\00", align 1
@152 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii21\00", align 1
@153 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@154 = private unnamed_addr constant [21 x i8] c"cmp24__Z8classifyiii\00", align 1
@155 = private unnamed_addr constant [16 x i8] c"lor.lhs.false22\00", align 1
@156 = private unnamed_addr constant [8 x i8] c"(i32 4)\00", align 1
@157 = private unnamed_addr constant [10 x i8] c"if.then25\00", align 1
@158 = private unnamed_addr constant [8 x i8] c"(i32 1)\00", align 1
@159 = private unnamed_addr constant [8 x i8] c"if.else\00", align 1
@160 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii22\00", align 1
@161 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii22\00", align 1
@162 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii22\00", align 1
@163 = private unnamed_addr constant [9 x i8] c"if.end26\00", align 1
@164 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii23\00", align 1
@165 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii23\00", align 1
@166 = private unnamed_addr constant [21 x i8] c"cmp28__Z8classifyiii\00", align 1
@167 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii23\00", align 1
@168 = private unnamed_addr constant [4 x i8] c"sgt\00", align 1
@169 = private unnamed_addr constant [8 x i8] c"(i32 3)\00", align 1
@170 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@171 = private unnamed_addr constant [21 x i8] c"cmp28__Z8classifyiii\00", align 1
@172 = private unnamed_addr constant [9 x i8] c"if.end27\00", align 1
@173 = private unnamed_addr constant [8 x i8] c"(i32 3)\00", align 1
@174 = private unnamed_addr constant [10 x i8] c"if.then29\00", align 1
@175 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii24\00", align 1
@176 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii24\00", align 1
@177 = private unnamed_addr constant [21 x i8] c"cmp31__Z8classifyiii\00", align 1
@178 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii24\00", align 1
@179 = private unnamed_addr constant [3 x i8] c"eq\00", align 1
@180 = private unnamed_addr constant [8 x i8] c"(i32 1)\00", align 1
@181 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@182 = private unnamed_addr constant [21 x i8] c"cmp31__Z8classifyiii\00", align 1
@183 = private unnamed_addr constant [10 x i8] c"if.else30\00", align 1
@184 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii25\00", align 1
@185 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii25\00", align 1
@186 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii26\00", align 1
@187 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii26\00", align 1
@188 = private unnamed_addr constant [21 x i8] c"add32__Z8classifyiii\00", align 1
@189 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii25\00", align 1
@190 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@191 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii26\00", align 1
@192 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii27\00", align 1
@193 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii27\00", align 1
@194 = private unnamed_addr constant [21 x i8] c"cmp33__Z8classifyiii\00", align 1
@195 = private unnamed_addr constant [21 x i8] c"add32__Z8classifyiii\00", align 1
@196 = private unnamed_addr constant [4 x i8] c"sgt\00", align 1
@197 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii27\00", align 1
@198 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@199 = private unnamed_addr constant [21 x i8] c"cmp33__Z8classifyiii\00", align 1
@200 = private unnamed_addr constant [14 x i8] c"land.lhs.true\00", align 1
@201 = private unnamed_addr constant [8 x i8] c"(i32 2)\00", align 1
@202 = private unnamed_addr constant [10 x i8] c"if.then34\00", align 1
@203 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii28\00", align 1
@204 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii28\00", align 1
@205 = private unnamed_addr constant [21 x i8] c"cmp36__Z8classifyiii\00", align 1
@206 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii28\00", align 1
@207 = private unnamed_addr constant [3 x i8] c"eq\00", align 1
@208 = private unnamed_addr constant [8 x i8] c"(i32 2)\00", align 1
@209 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@210 = private unnamed_addr constant [21 x i8] c"cmp36__Z8classifyiii\00", align 1
@211 = private unnamed_addr constant [10 x i8] c"if.else35\00", align 1
@212 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii29\00", align 1
@213 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii29\00", align 1
@214 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii30\00", align 1
@215 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii30\00", align 1
@216 = private unnamed_addr constant [21 x i8] c"add38__Z8classifyiii\00", align 1
@217 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii29\00", align 1
@218 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@219 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii30\00", align 1
@220 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii31\00", align 1
@221 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii31\00", align 1
@222 = private unnamed_addr constant [21 x i8] c"cmp39__Z8classifyiii\00", align 1
@223 = private unnamed_addr constant [21 x i8] c"add38__Z8classifyiii\00", align 1
@224 = private unnamed_addr constant [4 x i8] c"sgt\00", align 1
@225 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii31\00", align 1
@226 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@227 = private unnamed_addr constant [21 x i8] c"cmp39__Z8classifyiii\00", align 1
@228 = private unnamed_addr constant [16 x i8] c"land.lhs.true37\00", align 1
@229 = private unnamed_addr constant [8 x i8] c"(i32 2)\00", align 1
@230 = private unnamed_addr constant [10 x i8] c"if.then40\00", align 1
@231 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii32\00", align 1
@232 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii32\00", align 1
@233 = private unnamed_addr constant [21 x i8] c"cmp42__Z8classifyiii\00", align 1
@234 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii32\00", align 1
@235 = private unnamed_addr constant [3 x i8] c"eq\00", align 1
@236 = private unnamed_addr constant [8 x i8] c"(i32 3)\00", align 1
@237 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@238 = private unnamed_addr constant [21 x i8] c"cmp42__Z8classifyiii\00", align 1
@239 = private unnamed_addr constant [10 x i8] c"if.else41\00", align 1
@240 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii33\00", align 1
@241 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii33\00", align 1
@242 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii34\00", align 1
@243 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii34\00", align 1
@244 = private unnamed_addr constant [21 x i8] c"add44__Z8classifyiii\00", align 1
@245 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii33\00", align 1
@246 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@247 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii34\00", align 1
@248 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii35\00", align 1
@249 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii35\00", align 1
@250 = private unnamed_addr constant [21 x i8] c"cmp45__Z8classifyiii\00", align 1
@251 = private unnamed_addr constant [21 x i8] c"add44__Z8classifyiii\00", align 1
@252 = private unnamed_addr constant [4 x i8] c"sgt\00", align 1
@253 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii35\00", align 1
@254 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@255 = private unnamed_addr constant [21 x i8] c"cmp45__Z8classifyiii\00", align 1
@256 = private unnamed_addr constant [16 x i8] c"land.lhs.true43\00", align 1
@257 = private unnamed_addr constant [8 x i8] c"(i32 2)\00", align 1
@258 = private unnamed_addr constant [10 x i8] c"if.then46\00", align 1
@259 = private unnamed_addr constant [8 x i8] c"(i32 4)\00", align 1
@260 = private unnamed_addr constant [10 x i8] c"if.else47\00", align 1
@261 = private unnamed_addr constant [9 x i8] c"if.end48\00", align 1
@262 = private unnamed_addr constant [9 x i8] c"if.end49\00", align 1
@263 = private unnamed_addr constant [9 x i8] c"if.end50\00", align 1
@264 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii36\00", align 1
@265 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii36\00", align 1
@266 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii36\00", align 1
@267 = private unnamed_addr constant [9 x i8] c"if.end51\00", align 1
@268 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii37\00", align 1
@269 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii37\00", align 1
@270 = private unnamed_addr constant [19 x i8] c"_Z8classifyiii_RET\00", align 1
@271 = private unnamed_addr constant [21 x i8] c"tmp__Z8classifyiii37\00", align 1
@272 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@273 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@274 = private unnamed_addr constant [8 x i8] c"(i32 8)\00", align 1
@275 = private unnamed_addr constant [8 x i8] c"(i32 9)\00", align 1
@276 = private unnamed_addr constant [9 x i8] c"(i32 10)\00", align 1
@277 = private unnamed_addr constant [9 x i8] c"tmp_main\00", align 1
@278 = private unnamed_addr constant [9 x i8] c"tmp_main\00", align 1
@279 = private unnamed_addr constant [10 x i8] c"tmp_main1\00", align 1
@280 = private unnamed_addr constant [10 x i8] c"tmp_main1\00", align 1
@281 = private unnamed_addr constant [10 x i8] c"tmp_main2\00", align 1
@282 = private unnamed_addr constant [10 x i8] c"tmp_main2\00", align 1
@283 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@284 = private unnamed_addr constant [9 x i8] c"tmp_main\00", align 1
@285 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@286 = private unnamed_addr constant [10 x i8] c"tmp_main1\00", align 1
@287 = private unnamed_addr constant [6 x i8] c"arg_3\00", align 1
@288 = private unnamed_addr constant [10 x i8] c"tmp_main2\00", align 1
@289 = private unnamed_addr constant [10 x i8] c"call_main\00", align 1
@290 = private unnamed_addr constant [19 x i8] c"_Z8classifyiii_RET\00", align 1
@291 = private unnamed_addr constant [10 x i8] c"call_main\00", align 1
@292 = private unnamed_addr constant [9 x i8] c"main_RET\00", align 1
@293 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@294 = private unnamed_addr constant [6 x i8] c"entry\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @_Z8classifyiii(i32 %a, i32 %b, i32 %c) #0 {
entry:
  call void @stg_update_char(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @3, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @5, i32 0, i32 0))
  %retval__Z8classifyiii = alloca i32, align 4
  %a.addr__Z8classifyiii = alloca i32, align 4
  %b.addr__Z8classifyiii = alloca i32, align 4
  %c.addr__Z8classifyiii = alloca i32, align 4
  %type__Z8classifyiii = alloca i32, align 4
  store i32 %a, i32* %a.addr__Z8classifyiii, align 4
  call void @stg_update_store_i32(i32* %a.addr__Z8classifyiii, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @6, i32 0, i32 0))
  store i32 %b, i32* %b.addr__Z8classifyiii, align 4
  call void @stg_update_store_i32(i32* %b.addr__Z8classifyiii, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @7, i32 0, i32 0))
  store i32 %c, i32* %c.addr__Z8classifyiii, align 4
  call void @stg_update_store_i32(i32* %c.addr__Z8classifyiii, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @8, i32 0, i32 0))
  %tmp__Z8classifyiii = load i32, i32* %a.addr__Z8classifyiii, align 4
  call void @stg_update_load_i32(i32* %a.addr__Z8classifyiii, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @10, i32 0, i32 0))
  %cmp__Z8classifyiii = icmp sle i32 %tmp__Z8classifyiii, 0
  call void @stg_update_cmp(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @13, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @15, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp__Z8classifyiii, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @16, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @17, i32 0, i32 0))
  br i1 %cmp__Z8classifyiii, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %tmp__Z8classifyiii1 = load i32, i32* %b.addr__Z8classifyiii, align 4
  call void @stg_update_load_i32(i32* %b.addr__Z8classifyiii, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @19, i32 0, i32 0))
  %cmp1__Z8classifyiii = icmp sle i32 %tmp__Z8classifyiii1, 0
  call void @stg_update_cmp(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @20, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @21, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @22, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @23, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @24, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp1__Z8classifyiii, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @25, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @26, i32 0, i32 0))
  br i1 %cmp1__Z8classifyiii, label %if.then, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %tmp__Z8classifyiii2 = load i32, i32* %c.addr__Z8classifyiii, align 4
  call void @stg_update_load_i32(i32* %c.addr__Z8classifyiii, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @28, i32 0, i32 0))
  %cmp3__Z8classifyiii = icmp sle i32 %tmp__Z8classifyiii2, 0
  call void @stg_update_cmp(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @29, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @31, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @32, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @33, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp3__Z8classifyiii, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @34, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @35, i32 0, i32 0))
  br i1 %cmp3__Z8classifyiii, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 4, i32* %retval__Z8classifyiii, align 4
  call void @stg_update_store_i32(i32* %retval__Z8classifyiii, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @36, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @37, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  store i32 0, i32* %type__Z8classifyiii, align 4
  call void @stg_update_store_i32(i32* %type__Z8classifyiii, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @38, i32 0, i32 0))
  %tmp__Z8classifyiii3 = load i32, i32* %a.addr__Z8classifyiii, align 4
  call void @stg_update_load_i32(i32* %a.addr__Z8classifyiii, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @40, i32 0, i32 0))
  %tmp__Z8classifyiii4 = load i32, i32* %b.addr__Z8classifyiii, align 4
  call void @stg_update_load_i32(i32* %b.addr__Z8classifyiii, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @42, i32 0, i32 0))
  %cmp4__Z8classifyiii = icmp eq i32 %tmp__Z8classifyiii3, %tmp__Z8classifyiii4
  call void @stg_update_cmp(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @43, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @44, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @45, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @46, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @47, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp4__Z8classifyiii, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @48, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @49, i32 0, i32 0))
  br i1 %cmp4__Z8classifyiii, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  %tmp__Z8classifyiii5 = load i32, i32* %type__Z8classifyiii, align 4
  call void @stg_update_load_i32(i32* %type__Z8classifyiii, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @51, i32 0, i32 0))
  %add__Z8classifyiii = add nsw i32 %tmp__Z8classifyiii5, 1
  call void @stg_update_op(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @52, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @53, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @54, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @55, i32 0, i32 0))
  store i32 %add__Z8classifyiii, i32* %type__Z8classifyiii, align 4
  call void @stg_update_store_i32(i32* %type__Z8classifyiii, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @56, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @57, i32 0, i32 0))
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  %tmp__Z8classifyiii6 = load i32, i32* %a.addr__Z8classifyiii, align 4
  call void @stg_update_load_i32(i32* %a.addr__Z8classifyiii, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @59, i32 0, i32 0))
  %tmp__Z8classifyiii7 = load i32, i32* %c.addr__Z8classifyiii, align 4
  call void @stg_update_load_i32(i32* %c.addr__Z8classifyiii, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @61, i32 0, i32 0))
  %cmp7__Z8classifyiii = icmp eq i32 %tmp__Z8classifyiii6, %tmp__Z8classifyiii7
  call void @stg_update_cmp(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @62, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @63, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @64, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @65, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @66, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp7__Z8classifyiii, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @67, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @68, i32 0, i32 0))
  br i1 %cmp7__Z8classifyiii, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end6
  %tmp__Z8classifyiii8 = load i32, i32* %type__Z8classifyiii, align 4
  call void @stg_update_load_i32(i32* %type__Z8classifyiii, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @70, i32 0, i32 0))
  %add9__Z8classifyiii = add nsw i32 %tmp__Z8classifyiii8, 2
  call void @stg_update_op(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @71, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @72, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @73, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @74, i32 0, i32 0))
  store i32 %add9__Z8classifyiii, i32* %type__Z8classifyiii, align 4
  call void @stg_update_store_i32(i32* %type__Z8classifyiii, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @75, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @76, i32 0, i32 0))
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end6
  %tmp__Z8classifyiii9 = load i32, i32* %b.addr__Z8classifyiii, align 4
  call void @stg_update_load_i32(i32* %b.addr__Z8classifyiii, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @78, i32 0, i32 0))
  %tmp__Z8classifyiii10 = load i32, i32* %c.addr__Z8classifyiii, align 4
  call void @stg_update_load_i32(i32* %c.addr__Z8classifyiii, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @80, i32 0, i32 0))
  %cmp11__Z8classifyiii = icmp eq i32 %tmp__Z8classifyiii9, %tmp__Z8classifyiii10
  call void @stg_update_cmp(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @81, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @82, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @83, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @84, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @85, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp11__Z8classifyiii, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @86, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @87, i32 0, i32 0))
  br i1 %cmp11__Z8classifyiii, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end10
  %tmp__Z8classifyiii11 = load i32, i32* %type__Z8classifyiii, align 4
  call void @stg_update_load_i32(i32* %type__Z8classifyiii, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @89, i32 0, i32 0))
  %add13__Z8classifyiii = add nsw i32 %tmp__Z8classifyiii11, 3
  call void @stg_update_op(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @90, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @91, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @92, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @93, i32 0, i32 0))
  store i32 %add13__Z8classifyiii, i32* %type__Z8classifyiii, align 4
  call void @stg_update_store_i32(i32* %type__Z8classifyiii, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @94, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @95, i32 0, i32 0))
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end10
  %tmp__Z8classifyiii12 = load i32, i32* %type__Z8classifyiii, align 4
  call void @stg_update_load_i32(i32* %type__Z8classifyiii, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @97, i32 0, i32 0))
  %cmp15__Z8classifyiii = icmp eq i32 %tmp__Z8classifyiii12, 0
  call void @stg_update_cmp(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @98, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @99, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @100, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @101, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @102, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp15__Z8classifyiii, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @103, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @104, i32 0, i32 0))
  br i1 %cmp15__Z8classifyiii, label %if.then16, label %if.end27

if.then16:                                        ; preds = %if.end14
  %tmp__Z8classifyiii13 = load i32, i32* %a.addr__Z8classifyiii, align 4
  call void @stg_update_load_i32(i32* %a.addr__Z8classifyiii, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @106, i32 0, i32 0))
  %tmp__Z8classifyiii14 = load i32, i32* %b.addr__Z8classifyiii, align 4
  call void @stg_update_load_i32(i32* %b.addr__Z8classifyiii, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @108, i32 0, i32 0))
  %add17__Z8classifyiii = add nsw i32 %tmp__Z8classifyiii13, %tmp__Z8classifyiii14
  call void @stg_update_op(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @109, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @110, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @111, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @112, i32 0, i32 0))
  %tmp__Z8classifyiii15 = load i32, i32* %c.addr__Z8classifyiii, align 4
  call void @stg_update_load_i32(i32* %c.addr__Z8classifyiii, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @114, i32 0, i32 0))
  %cmp18__Z8classifyiii = icmp sle i32 %add17__Z8classifyiii, %tmp__Z8classifyiii15
  call void @stg_update_cmp(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @115, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @116, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @117, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @118, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @119, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp18__Z8classifyiii, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @120, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @121, i32 0, i32 0))
  br i1 %cmp18__Z8classifyiii, label %if.then25, label %lor.lhs.false19

lor.lhs.false19:                                  ; preds = %if.then16
  %tmp__Z8classifyiii16 = load i32, i32* %b.addr__Z8classifyiii, align 4
  call void @stg_update_load_i32(i32* %b.addr__Z8classifyiii, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @123, i32 0, i32 0))
  %tmp__Z8classifyiii17 = load i32, i32* %c.addr__Z8classifyiii, align 4
  call void @stg_update_load_i32(i32* %c.addr__Z8classifyiii, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @125, i32 0, i32 0))
  %add20__Z8classifyiii = add nsw i32 %tmp__Z8classifyiii16, %tmp__Z8classifyiii17
  call void @stg_update_op(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @126, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @127, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @128, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @129, i32 0, i32 0))
  %tmp__Z8classifyiii18 = load i32, i32* %a.addr__Z8classifyiii, align 4
  call void @stg_update_load_i32(i32* %a.addr__Z8classifyiii, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @131, i32 0, i32 0))
  %cmp21__Z8classifyiii = icmp sle i32 %add20__Z8classifyiii, %tmp__Z8classifyiii18
  call void @stg_update_cmp(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @132, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @133, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @134, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @135, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @136, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp21__Z8classifyiii, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @137, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @138, i32 0, i32 0))
  br i1 %cmp21__Z8classifyiii, label %if.then25, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false19
  %tmp__Z8classifyiii19 = load i32, i32* %a.addr__Z8classifyiii, align 4
  call void @stg_update_load_i32(i32* %a.addr__Z8classifyiii, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @140, i32 0, i32 0))
  %tmp__Z8classifyiii20 = load i32, i32* %c.addr__Z8classifyiii, align 4
  call void @stg_update_load_i32(i32* %c.addr__Z8classifyiii, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @142, i32 0, i32 0))
  %add23__Z8classifyiii = add nsw i32 %tmp__Z8classifyiii19, %tmp__Z8classifyiii20
  call void @stg_update_op(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @143, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @144, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @145, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @146, i32 0, i32 0))
  %tmp__Z8classifyiii21 = load i32, i32* %b.addr__Z8classifyiii, align 4
  call void @stg_update_load_i32(i32* %b.addr__Z8classifyiii, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @148, i32 0, i32 0))
  %cmp24__Z8classifyiii = icmp sge i32 %add23__Z8classifyiii, %tmp__Z8classifyiii21
  call void @stg_update_cmp(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @149, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @150, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @151, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @152, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @153, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp24__Z8classifyiii, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @154, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @155, i32 0, i32 0))
  br i1 %cmp24__Z8classifyiii, label %if.then25, label %if.else

if.then25:                                        ; preds = %lor.lhs.false22, %lor.lhs.false19, %if.then16
  store i32 4, i32* %type__Z8classifyiii, align 4
  call void @stg_update_store_i32(i32* %type__Z8classifyiii, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @156, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @157, i32 0, i32 0))
  br label %if.end26

if.else:                                          ; preds = %lor.lhs.false22
  store i32 1, i32* %type__Z8classifyiii, align 4
  call void @stg_update_store_i32(i32* %type__Z8classifyiii, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @158, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @159, i32 0, i32 0))
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then25
  %tmp__Z8classifyiii22 = load i32, i32* %type__Z8classifyiii, align 4
  call void @stg_update_load_i32(i32* %type__Z8classifyiii, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @161, i32 0, i32 0))
  store i32 %tmp__Z8classifyiii22, i32* %retval__Z8classifyiii, align 4
  call void @stg_update_store_i32(i32* %retval__Z8classifyiii, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @162, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @163, i32 0, i32 0))
  br label %return

if.end27:                                         ; preds = %if.end14
  %tmp__Z8classifyiii23 = load i32, i32* %type__Z8classifyiii, align 4
  call void @stg_update_load_i32(i32* %type__Z8classifyiii, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @165, i32 0, i32 0))
  %cmp28__Z8classifyiii = icmp sgt i32 %tmp__Z8classifyiii23, 3
  call void @stg_update_cmp(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @166, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @167, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @168, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @169, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @170, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp28__Z8classifyiii, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @171, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @172, i32 0, i32 0))
  br i1 %cmp28__Z8classifyiii, label %if.then29, label %if.else30

if.then29:                                        ; preds = %if.end27
  store i32 3, i32* %type__Z8classifyiii, align 4
  call void @stg_update_store_i32(i32* %type__Z8classifyiii, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @173, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @174, i32 0, i32 0))
  br label %if.end51

if.else30:                                        ; preds = %if.end27
  %tmp__Z8classifyiii24 = load i32, i32* %type__Z8classifyiii, align 4
  call void @stg_update_load_i32(i32* %type__Z8classifyiii, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @176, i32 0, i32 0))
  %cmp31__Z8classifyiii = icmp eq i32 %tmp__Z8classifyiii24, 1
  call void @stg_update_cmp(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @177, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @178, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @179, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @180, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @181, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp31__Z8classifyiii, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @182, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @183, i32 0, i32 0))
  br i1 %cmp31__Z8classifyiii, label %land.lhs.true, label %if.else35

land.lhs.true:                                    ; preds = %if.else30
  %tmp__Z8classifyiii25 = load i32, i32* %a.addr__Z8classifyiii, align 4
  call void @stg_update_load_i32(i32* %a.addr__Z8classifyiii, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @185, i32 0, i32 0))
  %tmp__Z8classifyiii26 = load i32, i32* %b.addr__Z8classifyiii, align 4
  call void @stg_update_load_i32(i32* %b.addr__Z8classifyiii, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @187, i32 0, i32 0))
  %add32__Z8classifyiii = add nsw i32 %tmp__Z8classifyiii25, %tmp__Z8classifyiii26
  call void @stg_update_op(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @188, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @189, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @190, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @191, i32 0, i32 0))
  %tmp__Z8classifyiii27 = load i32, i32* %c.addr__Z8classifyiii, align 4
  call void @stg_update_load_i32(i32* %c.addr__Z8classifyiii, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @193, i32 0, i32 0))
  %cmp33__Z8classifyiii = icmp sgt i32 %add32__Z8classifyiii, %tmp__Z8classifyiii27
  call void @stg_update_cmp(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @194, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @195, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @196, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @197, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @198, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp33__Z8classifyiii, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @199, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @200, i32 0, i32 0))
  br i1 %cmp33__Z8classifyiii, label %if.then34, label %if.else35

if.then34:                                        ; preds = %land.lhs.true
  store i32 2, i32* %type__Z8classifyiii, align 4
  call void @stg_update_store_i32(i32* %type__Z8classifyiii, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @201, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @202, i32 0, i32 0))
  br label %if.end50

if.else35:                                        ; preds = %land.lhs.true, %if.else30
  %tmp__Z8classifyiii28 = load i32, i32* %type__Z8classifyiii, align 4
  call void @stg_update_load_i32(i32* %type__Z8classifyiii, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @204, i32 0, i32 0))
  %cmp36__Z8classifyiii = icmp eq i32 %tmp__Z8classifyiii28, 2
  call void @stg_update_cmp(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @205, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @206, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @207, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @208, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @209, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp36__Z8classifyiii, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @210, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @211, i32 0, i32 0))
  br i1 %cmp36__Z8classifyiii, label %land.lhs.true37, label %if.else41

land.lhs.true37:                                  ; preds = %if.else35
  %tmp__Z8classifyiii29 = load i32, i32* %a.addr__Z8classifyiii, align 4
  call void @stg_update_load_i32(i32* %a.addr__Z8classifyiii, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @213, i32 0, i32 0))
  %tmp__Z8classifyiii30 = load i32, i32* %c.addr__Z8classifyiii, align 4
  call void @stg_update_load_i32(i32* %c.addr__Z8classifyiii, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @215, i32 0, i32 0))
  %add38__Z8classifyiii = add nsw i32 %tmp__Z8classifyiii29, %tmp__Z8classifyiii30
  call void @stg_update_op(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @216, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @217, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @218, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @219, i32 0, i32 0))
  %tmp__Z8classifyiii31 = load i32, i32* %b.addr__Z8classifyiii, align 4
  call void @stg_update_load_i32(i32* %b.addr__Z8classifyiii, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @221, i32 0, i32 0))
  %cmp39__Z8classifyiii = icmp sgt i32 %add38__Z8classifyiii, %tmp__Z8classifyiii31
  call void @stg_update_cmp(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @222, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @223, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @224, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @225, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @226, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp39__Z8classifyiii, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @227, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @228, i32 0, i32 0))
  br i1 %cmp39__Z8classifyiii, label %if.then40, label %if.else41

if.then40:                                        ; preds = %land.lhs.true37
  store i32 2, i32* %type__Z8classifyiii, align 4
  call void @stg_update_store_i32(i32* %type__Z8classifyiii, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @229, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @230, i32 0, i32 0))
  br label %if.end49

if.else41:                                        ; preds = %land.lhs.true37, %if.else35
  %tmp__Z8classifyiii32 = load i32, i32* %type__Z8classifyiii, align 4
  call void @stg_update_load_i32(i32* %type__Z8classifyiii, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @232, i32 0, i32 0))
  %cmp42__Z8classifyiii = icmp eq i32 %tmp__Z8classifyiii32, 3
  call void @stg_update_cmp(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @233, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @234, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @235, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @236, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @237, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp42__Z8classifyiii, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @238, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @239, i32 0, i32 0))
  br i1 %cmp42__Z8classifyiii, label %land.lhs.true43, label %if.else47

land.lhs.true43:                                  ; preds = %if.else41
  %tmp__Z8classifyiii33 = load i32, i32* %b.addr__Z8classifyiii, align 4
  call void @stg_update_load_i32(i32* %b.addr__Z8classifyiii, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @241, i32 0, i32 0))
  %tmp__Z8classifyiii34 = load i32, i32* %c.addr__Z8classifyiii, align 4
  call void @stg_update_load_i32(i32* %c.addr__Z8classifyiii, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @243, i32 0, i32 0))
  %add44__Z8classifyiii = add nsw i32 %tmp__Z8classifyiii33, %tmp__Z8classifyiii34
  call void @stg_update_op(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @244, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @245, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @246, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @247, i32 0, i32 0))
  %tmp__Z8classifyiii35 = load i32, i32* %a.addr__Z8classifyiii, align 4
  call void @stg_update_load_i32(i32* %a.addr__Z8classifyiii, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @249, i32 0, i32 0))
  %cmp45__Z8classifyiii = icmp sgt i32 %add44__Z8classifyiii, %tmp__Z8classifyiii35
  call void @stg_update_cmp(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @250, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @251, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @252, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @253, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @254, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp45__Z8classifyiii, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @255, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @256, i32 0, i32 0))
  br i1 %cmp45__Z8classifyiii, label %if.then46, label %if.else47

if.then46:                                        ; preds = %land.lhs.true43
  store i32 2, i32* %type__Z8classifyiii, align 4
  call void @stg_update_store_i32(i32* %type__Z8classifyiii, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @257, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @258, i32 0, i32 0))
  br label %if.end48

if.else47:                                        ; preds = %land.lhs.true43, %if.else41
  store i32 4, i32* %type__Z8classifyiii, align 4
  call void @stg_update_store_i32(i32* %type__Z8classifyiii, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @259, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @260, i32 0, i32 0))
  br label %if.end48

if.end48:                                         ; preds = %if.else47, %if.then46
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @261, i32 0, i32 0))
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.then40
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @262, i32 0, i32 0))
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.then34
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @263, i32 0, i32 0))
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.then29
  %tmp__Z8classifyiii36 = load i32, i32* %type__Z8classifyiii, align 4
  call void @stg_update_load_i32(i32* %type__Z8classifyiii, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @265, i32 0, i32 0))
  store i32 %tmp__Z8classifyiii36, i32* %retval__Z8classifyiii, align 4
  call void @stg_update_store_i32(i32* %retval__Z8classifyiii, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @266, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @267, i32 0, i32 0))
  br label %return

return:                                           ; preds = %if.end51, %if.end26, %if.then
  %tmp__Z8classifyiii37 = load i32, i32* %retval__Z8classifyiii, align 4
  call void @stg_update_load_i32(i32* %retval__Z8classifyiii, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @269, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @270, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @271, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @272, i32 0, i32 0))
  ret i32 %tmp__Z8classifyiii37
}

; Function Attrs: noinline norecurse optnone ssp uwtable
define i32 @main() #1 {
entry:
  %retval_main = alloca i32, align 4
  %a_main = alloca i32, align 4
  %b_main = alloca i32, align 4
  %c_main = alloca i32, align 4
  %triangle_type_main = alloca i32, align 4
  store i32 0, i32* %retval_main, align 4
  call void @stg_update_store_i32(i32* %retval_main, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @273, i32 0, i32 0))
  store i32 8, i32* %a_main, align 4
  call void @stg_update_store_i32(i32* %a_main, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @274, i32 0, i32 0))
  store i32 9, i32* %b_main, align 4
  call void @stg_update_store_i32(i32* %b_main, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @275, i32 0, i32 0))
  store i32 10, i32* %c_main, align 4
  call void @stg_update_store_i32(i32* %c_main, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @276, i32 0, i32 0))
  call void @stg_begin_test()
  call void @stg_symbolic_variable_int(i32* %a_main, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  call void @stg_symbolic_variable_int(i32* %b_main, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  call void @stg_symbolic_variable_int(i32* %c_main, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  %tmp_main = load i32, i32* %a_main, align 4
  call void @stg_update_load_i32(i32* %a_main, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @278, i32 0, i32 0))
  %tmp_main1 = load i32, i32* %b_main, align 4
  call void @stg_update_load_i32(i32* %b_main, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @280, i32 0, i32 0))
  %tmp_main2 = load i32, i32* %c_main, align 4
  call void @stg_update_load_i32(i32* %c_main, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @282, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @283, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @284, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @285, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @286, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @287, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @288, i32 0, i32 0))
  %call_main = call i32 @_Z8classifyiii(i32 %tmp_main, i32 %tmp_main1, i32 %tmp_main2)
  call void @stg_update_char(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @289, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @290, i32 0, i32 0))
  store i32 %call_main, i32* %triangle_type_main, align 4
  call void @stg_update_store_i32(i32* %triangle_type_main, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @291, i32 0, i32 0))
  call void @stg_end_test()
  call void @stg_record_test(i1 zeroext true)
  call void @stg_update_char(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @292, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @293, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @294, i32 0, i32 0))
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

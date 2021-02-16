; ModuleID = 'IPUT.bc'
source_filename = "OddEven.cpp"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

%class.OddEven = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"NUM\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%d is even\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%d is odd\0A\00", align 1
@0 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@1 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@3 = private unnamed_addr constant [22 x i8] c"this1__ZN7OddEvenC2Ev\00", align 1
@4 = private unnamed_addr constant [22 x i8] c"this1__ZN7OddEvenC2Ev\00", align 1
@5 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@6 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@7 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@8 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@9 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@10 = private unnamed_addr constant [22 x i8] c"this1__ZN7OddEvenC1Ev\00", align 1
@11 = private unnamed_addr constant [22 x i8] c"this1__ZN7OddEvenC1Ev\00", align 1
@12 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@13 = private unnamed_addr constant [22 x i8] c"this1__ZN7OddEvenC1Ev\00", align 1
@14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@15 = private unnamed_addr constant [20 x i8] c"_ZN7OddEvenC2Ev_RET\00", align 1
@16 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@17 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@18 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@19 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@20 = private unnamed_addr constant [27 x i8] c"this1__ZN7OddEven6isEvenEv\00", align 1
@21 = private unnamed_addr constant [27 x i8] c"this1__ZN7OddEven6isEvenEv\00", align 1
@22 = private unnamed_addr constant [25 x i8] c"tmp__ZN7OddEven6isEvenEv\00", align 1
@23 = private unnamed_addr constant [25 x i8] c"tmp__ZN7OddEven6isEvenEv\00", align 1
@24 = private unnamed_addr constant [25 x i8] c"rem__ZN7OddEven6isEvenEv\00", align 1
@25 = private unnamed_addr constant [25 x i8] c"tmp__ZN7OddEven6isEvenEv\00", align 1
@26 = private unnamed_addr constant [5 x i8] c"srem\00", align 1
@27 = private unnamed_addr constant [8 x i8] c"(i32 2)\00", align 1
@28 = private unnamed_addr constant [28 x i8] c"tobool__ZN7OddEven6isEvenEv\00", align 1
@29 = private unnamed_addr constant [25 x i8] c"rem__ZN7OddEven6isEvenEv\00", align 1
@30 = private unnamed_addr constant [3 x i8] c"ne\00", align 1
@31 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@32 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@33 = private unnamed_addr constant [25 x i8] c"_ZN7OddEven6isEvenEv_RET\00", align 1
@34 = private unnamed_addr constant [28 x i8] c"tobool__ZN7OddEven6isEvenEv\00", align 1
@35 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@36 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@37 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@38 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@39 = private unnamed_addr constant [26 x i8] c"this1__ZN7OddEven5isOddEv\00", align 1
@40 = private unnamed_addr constant [26 x i8] c"this1__ZN7OddEven5isOddEv\00", align 1
@41 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@42 = private unnamed_addr constant [26 x i8] c"this1__ZN7OddEven5isOddEv\00", align 1
@43 = private unnamed_addr constant [25 x i8] c"call__ZN7OddEven5isOddEv\00", align 1
@44 = private unnamed_addr constant [25 x i8] c"_ZN7OddEven6isEvenEv_RET\00", align 1
@45 = private unnamed_addr constant [25 x i8] c"lnot__ZN7OddEven5isOddEv\00", align 1
@46 = private unnamed_addr constant [25 x i8] c"call__ZN7OddEven5isOddEv\00", align 1
@47 = private unnamed_addr constant [4 x i8] c"xor\00", align 1
@48 = private unnamed_addr constant [7 x i8] c"(i1 1)\00", align 1
@49 = private unnamed_addr constant [24 x i8] c"_ZN7OddEven5isOddEv_RET\00", align 1
@50 = private unnamed_addr constant [25 x i8] c"lnot__ZN7OddEven5isOddEv\00", align 1
@51 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@52 = private unnamed_addr constant [8 x i8] c"(i32 0)\00", align 1
@53 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@54 = private unnamed_addr constant [8 x i8] c"oe_main\00", align 1
@55 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@56 = private unnamed_addr constant [20 x i8] c"_ZN7OddEvenC1Ev_RET\00", align 1
@57 = private unnamed_addr constant [8 x i8] c"(i32 5)\00", align 1
@58 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@59 = private unnamed_addr constant [8 x i8] c"oe_main\00", align 1
@60 = private unnamed_addr constant [10 x i8] c"call_main\00", align 1
@61 = private unnamed_addr constant [25 x i8] c"_ZN7OddEven6isEvenEv_RET\00", align 1
@62 = private unnamed_addr constant [10 x i8] c"call_main\00", align 1
@63 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@64 = private unnamed_addr constant [9 x i8] c"tmp_main\00", align 1
@65 = private unnamed_addr constant [9 x i8] c"tmp_main\00", align 1
@66 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@67 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@68 = private unnamed_addr constant [8 x i8] c"oe_main\00", align 1
@69 = private unnamed_addr constant [11 x i8] c"call4_main\00", align 1
@70 = private unnamed_addr constant [24 x i8] c"_ZN7OddEven5isOddEv_RET\00", align 1
@71 = private unnamed_addr constant [11 x i8] c"call4_main\00", align 1
@72 = private unnamed_addr constant [7 x i8] c"if.end\00", align 1
@73 = private unnamed_addr constant [10 x i8] c"tmp_main1\00", align 1
@74 = private unnamed_addr constant [10 x i8] c"tmp_main1\00", align 1
@75 = private unnamed_addr constant [9 x i8] c"if.then5\00", align 1
@76 = private unnamed_addr constant [10 x i8] c"tmp_main2\00", align 1
@77 = private unnamed_addr constant [10 x i8] c"tmp_main2\00", align 1
@78 = private unnamed_addr constant [9 x i8] c"main_RET\00", align 1
@79 = private unnamed_addr constant [10 x i8] c"tmp_main2\00", align 1
@80 = private unnamed_addr constant [8 x i8] c"if.end8\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @_ZN7OddEvenC2Ev(%class.OddEven* %this) unnamed_addr #0 align 2 {
entry:
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1, i32 0, i32 0))
  %this.addr__ZN7OddEvenC2Ev = alloca %class.OddEven*, align 8
  store %class.OddEven* %this, %class.OddEven** %this.addr__ZN7OddEvenC2Ev, align 8
  %this1__ZN7OddEvenC2Ev = load %class.OddEven*, %class.OddEven** %this.addr__ZN7OddEvenC2Ev, align 8
  %_number__ZN7OddEvenC2Ev = getelementptr inbounds %class.OddEven, %class.OddEven* %this1__ZN7OddEvenC2Ev, i32 0, i32 0
  store i32 0, i32* %_number__ZN7OddEvenC2Ev, align 4
  call void @stg_update_store_i32(i32* %_number__ZN7OddEvenC2Ev, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @5, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @6, i32 0, i32 0))
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define void @_ZN7OddEvenC1Ev(%class.OddEven* %this) unnamed_addr #0 align 2 {
entry:
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @7, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @8, i32 0, i32 0))
  %this.addr__ZN7OddEvenC1Ev = alloca %class.OddEven*, align 8
  store %class.OddEven* %this, %class.OddEven** %this.addr__ZN7OddEvenC1Ev, align 8
  %this1__ZN7OddEvenC1Ev = load %class.OddEven*, %class.OddEven** %this.addr__ZN7OddEvenC1Ev, align 8
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @13, i32 0, i32 0))
  call void @_ZN7OddEvenC2Ev(%class.OddEven* %this1__ZN7OddEvenC1Ev)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @15, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @16, i32 0, i32 0))
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @_ZN7OddEven6isEvenEv(%class.OddEven* %this) #0 align 2 {
entry:
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @18, i32 0, i32 0))
  %this.addr__ZN7OddEven6isEvenEv = alloca %class.OddEven*, align 8
  store %class.OddEven* %this, %class.OddEven** %this.addr__ZN7OddEven6isEvenEv, align 8
  %this1__ZN7OddEven6isEvenEv = load %class.OddEven*, %class.OddEven** %this.addr__ZN7OddEven6isEvenEv, align 8
  %_number__ZN7OddEven6isEvenEv = getelementptr inbounds %class.OddEven, %class.OddEven* %this1__ZN7OddEven6isEvenEv, i32 0, i32 0
  %tmp__ZN7OddEven6isEvenEv = load i32, i32* %_number__ZN7OddEven6isEvenEv, align 4
  call void @stg_update_load_i32(i32* %_number__ZN7OddEven6isEvenEv, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @23, i32 0, i32 0))
  %rem__ZN7OddEven6isEvenEv = srem i32 %tmp__ZN7OddEven6isEvenEv, 2
  call void @stg_update_op(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @24, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @25, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @26, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @27, i32 0, i32 0))
  %tobool__ZN7OddEven6isEvenEv = icmp ne i32 %rem__ZN7OddEven6isEvenEv, 0
  call void @stg_update_cmp(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @28, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @29, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @30, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @31, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @32, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @33, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @34, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @35, i32 0, i32 0))
  ret i1 %tobool__ZN7OddEven6isEvenEv
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define zeroext i1 @_ZN7OddEven5isOddEv(%class.OddEven* %this) #0 align 2 {
entry:
  call void @stg_update_char(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @36, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @37, i32 0, i32 0))
  %this.addr__ZN7OddEven5isOddEv = alloca %class.OddEven*, align 8
  store %class.OddEven* %this, %class.OddEven** %this.addr__ZN7OddEven5isOddEv, align 8
  %this1__ZN7OddEven5isOddEv = load %class.OddEven*, %class.OddEven** %this.addr__ZN7OddEven5isOddEv, align 8
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @41, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @42, i32 0, i32 0))
  %call__ZN7OddEven5isOddEv = call zeroext i1 @_ZN7OddEven6isEvenEv(%class.OddEven* %this1__ZN7OddEven5isOddEv)
  call void @stg_update_char(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @43, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @44, i32 0, i32 0))
  %lnot__ZN7OddEven5isOddEv = xor i1 %call__ZN7OddEven5isOddEv, true
  call void @stg_update_op(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @45, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @46, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @47, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @48, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @49, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @50, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @51, i32 0, i32 0))
  ret i1 %lnot__ZN7OddEven5isOddEv
}

; Function Attrs: noinline norecurse optnone ssp uwtable
define i32 @main() #1 {
entry:
  %retval_main = alloca i32, align 4
  %oe_main = alloca %class.OddEven, align 4
  store i32 0, i32* %retval_main, align 4
  call void @stg_update_store_i32(i32* %retval_main, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @52, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @53, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @54, i32 0, i32 0))
  call void @_ZN7OddEvenC1Ev(%class.OddEven* %oe_main)
  call void @stg_update_char(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @55, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @56, i32 0, i32 0))
  %_number_main = getelementptr inbounds %class.OddEven, %class.OddEven* %oe_main, i32 0, i32 0
  store i32 5, i32* %_number_main, align 4
  call void @stg_update_store_i32(i32* %_number_main, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @57, i32 0, i32 0))
  call void @stg_begin_test()
  %_number1_main = getelementptr inbounds %class.OddEven, %class.OddEven* %oe_main, i32 0, i32 0
  call void @stg_symbolic_variable_int(i32* %_number1_main, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @58, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @59, i32 0, i32 0))
  %call_main = call zeroext i1 @_ZN7OddEven6isEvenEv(%class.OddEven* %oe_main)
  call void @stg_update_char(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @60, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @61, i32 0, i32 0))
  call void @stg_update_pc(i1 %call_main, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @62, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @63, i32 0, i32 0))
  br i1 %call_main, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_number2_main = getelementptr inbounds %class.OddEven, %class.OddEven* %oe_main, i32 0, i32 0
  %tmp_main = load i32, i32* %_number2_main, align 4
  call void @stg_update_load_i32(i32* %_number2_main, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @65, i32 0, i32 0))
  %call3_main = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 %tmp_main)
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @66, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @stg_update_char(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @67, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @68, i32 0, i32 0))
  %call4_main = call zeroext i1 @_ZN7OddEven5isOddEv(%class.OddEven* %oe_main)
  call void @stg_update_char(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @69, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @70, i32 0, i32 0))
  call void @stg_update_pc(i1 %call4_main, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @71, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @72, i32 0, i32 0))
  br i1 %call4_main, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  %_number6_main = getelementptr inbounds %class.OddEven, %class.OddEven* %oe_main, i32 0, i32 0
  %tmp_main1 = load i32, i32* %_number6_main, align 4
  call void @stg_update_load_i32(i32* %_number6_main, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @74, i32 0, i32 0))
  %call7_main = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 %tmp_main1)
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @75, i32 0, i32 0))
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end
  call void @stg_end_test()
  call void @stg_record_test(i1 zeroext true)
  %tmp_main2 = load i32, i32* %retval_main, align 4
  call void @stg_update_load_i32(i32* %retval_main, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @77, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @78, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @79, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @80, i32 0, i32 0))
  ret i32 %tmp_main2
}

declare void @stg_begin_test() #2

declare void @stg_symbolic_variable_int(i32*, i8*) #2

declare i32 @printf(i8*, ...) #2

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

; ModuleID = 'foo.bc'
source_filename = "foo.cpp"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.14.0"

@0 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@1 = private unnamed_addr constant [6 x i8] c"arg_1\00", align 1
@2 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@3 = private unnamed_addr constant [6 x i8] c"arg_2\00", align 1
@4 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@5 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@6 = private unnamed_addr constant [13 x i8] c"tmp__Z3fooii\00", align 1
@7 = private unnamed_addr constant [13 x i8] c"tmp__Z3fooii\00", align 1
@8 = private unnamed_addr constant [14 x i8] c"tmp__Z3fooii1\00", align 1
@9 = private unnamed_addr constant [14 x i8] c"tmp__Z3fooii1\00", align 1
@10 = private unnamed_addr constant [13 x i8] c"add__Z3fooii\00", align 1
@11 = private unnamed_addr constant [13 x i8] c"tmp__Z3fooii\00", align 1
@12 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@13 = private unnamed_addr constant [14 x i8] c"tmp__Z3fooii1\00", align 1
@14 = private unnamed_addr constant [13 x i8] c"cmp__Z3fooii\00", align 1
@15 = private unnamed_addr constant [13 x i8] c"add__Z3fooii\00", align 1
@16 = private unnamed_addr constant [4 x i8] c"sgt\00", align 1
@17 = private unnamed_addr constant [10 x i8] c"(i32 160)\00", align 1
@18 = private unnamed_addr constant [4 x i8] c"i32\00", align 1
@19 = private unnamed_addr constant [13 x i8] c"cmp__Z3fooii\00", align 1
@20 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@21 = private unnamed_addr constant [9 x i8] c"(i32 10)\00", align 1
@22 = private unnamed_addr constant [8 x i8] c"if.then\00", align 1
@23 = private unnamed_addr constant [8 x i8] c"(i32 5)\00", align 1
@24 = private unnamed_addr constant [8 x i8] c"if.else\00", align 1
@25 = private unnamed_addr constant [14 x i8] c"tmp__Z3fooii2\00", align 1
@26 = private unnamed_addr constant [14 x i8] c"tmp__Z3fooii2\00", align 1
@27 = private unnamed_addr constant [13 x i8] c"_Z3fooii_RET\00", align 1
@28 = private unnamed_addr constant [14 x i8] c"tmp__Z3fooii2\00", align 1
@29 = private unnamed_addr constant [7 x i8] c"return\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @_Z3fooii(i32 %m, i32 %p) #0 {
entry:
  call void @stg_update_char(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @0, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @1, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @3, i32 0, i32 0))
  %retval__Z3fooii = alloca i32, align 4
  %m.addr__Z3fooii = alloca i32, align 4
  %p.addr__Z3fooii = alloca i32, align 4
  store i32 %m, i32* %m.addr__Z3fooii, align 4
  call void @stg_update_store_i32(i32* %m.addr__Z3fooii, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @4, i32 0, i32 0))
  store i32 %p, i32* %p.addr__Z3fooii, align 4
  call void @stg_update_store_i32(i32* %p.addr__Z3fooii, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @5, i32 0, i32 0))
  %tmp__Z3fooii = load i32, i32* %m.addr__Z3fooii, align 4
  call void @stg_update_load_i32(i32* %m.addr__Z3fooii, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @7, i32 0, i32 0))
  %tmp__Z3fooii1 = load i32, i32* %p.addr__Z3fooii, align 4
  call void @stg_update_load_i32(i32* %p.addr__Z3fooii, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @9, i32 0, i32 0))
  %add__Z3fooii = add nsw i32 %tmp__Z3fooii, %tmp__Z3fooii1
  call void @stg_update_op(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @11, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @13, i32 0, i32 0))
  %cmp__Z3fooii = icmp sgt i32 %add__Z3fooii, 160
  call void @stg_update_cmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @16, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @17, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @18, i32 0, i32 0))
  call void @stg_update_pc(i1 %cmp__Z3fooii, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @19, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @20, i32 0, i32 0))
  br i1 %cmp__Z3fooii, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 10, i32* %retval__Z3fooii, align 4
  call void @stg_update_store_i32(i32* %retval__Z3fooii, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @21, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @22, i32 0, i32 0))
  br label %return

if.else:                                          ; preds = %entry
  store i32 5, i32* %retval__Z3fooii, align 4
  call void @stg_update_store_i32(i32* %retval__Z3fooii, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @23, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @24, i32 0, i32 0))
  br label %return

return:                                           ; preds = %if.else, %if.then
  %tmp__Z3fooii2 = load i32, i32* %retval__Z3fooii, align 4
  call void @stg_update_load_i32(i32* %retval__Z3fooii, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @26, i32 0, i32 0))
  call void @stg_update_char(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @27, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @28, i32 0, i32 0))
  call void @stg_update_prev_bb(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @29, i32 0, i32 0))
  ret i32 %tmp__Z3fooii2
}

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

attributes #0 = { noinline nounwind optnone ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 14]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{!"Apple LLVM version 10.0.1 (clang-1001.0.46.4)"}

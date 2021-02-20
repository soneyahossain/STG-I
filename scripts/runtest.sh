#!/bin/bash



testPassed=true
echo "STGI_HOME is set to: $STGI_HOME"
# array for tes file paths
filePaths=("add_test/add.cpp" "array_test/array_sym_index.cpp" "array_with_sym_index/symArrayIndexWithAssert.cpp" "complex_if_test/complex_if.cpp" "global_float_test/globalFloatTest.cpp" "if_else_ladder_test/if_else_ladder.cpp"
"if_nested_if_else_test/nested_if_else.cpp" "if_test/if_else_if_else_min.cpp" "classify_test/classify.cpp"  "max_test/max.cpp" "fmod_test/fmod.c" "llvm_intrinsic_test/llvm.ceil+floor_test/llvm.ceil.floor_test.cpp" "llvm_intrinsic_test/llvm.exp_test/llvm.exp_test.cpp" "llvm_intrinsic_test/llvm.log_test/llvm.log_test.cpp"
 "llvm_intrinsic_test/llvm.pow_test/llvm.pow_test.cpp" "llvm_intrinsic_test/llvm.sin+cos+sqrt_test/llvm.sin+cos_test.cpp")


#remove all existing sub directories
rm -R -- */

#create text file to store test summary
if [ ! -f test_result.txt ]
then
    touch test_result.txt
else
    : > test_result.txt
fi

for i in "${!filePaths[@]}";
do
  filepath=${filePaths[$i]}

  dir_name=$(dirname "$filepath")
  filename=$(basename "$filepath")

  echo "$dir_name"
  echo "$filename"

  ./buildtest.sh "$STGI_HOME"/examples/"$filepath"

  mv stg-out-0 stg-out-"$filename"
  DIFF=$(diff -x '*.txt' -r -N stg-out-"$filename"  "$STGI_HOME"/examples/"$dir_name"/stg-expec)   # -x means exclude .txt file, -r check recursively , - N show if as full file if other absent
  #echo "$DIFF"

  if [ "$DIFF" != "" ]
  then
      echo "Test Failed for $filename" >> test_result.txt
      testPassed=false
  else
      echo "Test Passed for $filename" >> test_result.txt
  fi
done

echo $testPassed

if [ "$testPassed" ]
then
  #remove all existing sub directories
  rm -R -- */
  rm -rf *.ll
  rm -rf *.bc
  rm -rf *.o
  rm -rf *.out
fi

echo "Test Summary"
cat test_result.txt


rm -rf test_result.txt

#end of script





























<< 'MULTILINE-COMMENT'

./buildtest.sh "$STGI_HOME"/test_programs/odd_even/OddEven.cpp
./buildtest.sh "$STGI_HOME"/test_programs/scanf_test/scanf.cpp  // we dont need anymore

MULTILINE-COMMENT

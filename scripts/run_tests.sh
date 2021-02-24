#!/bin/bash
#start:
testPassed=true

#making sure the environments are set properly
if [ -z "$STGI_HOME" ]
then
     echo "STGI_HOME is not set"
     exit 1
else
  echo "STGI_HOME is set to: $STGI_HOME"
fi

if [ -z "$STGI_EXAMPLE_DIR" ]
then
     echo "STGI_EXAMPLE_DIR is not set"
     exit 1
else
  echo "STGI_EXAMPLE_DIR is set to: $STGI_HOME"
fi

if [ -z "$STGI_SCRIPT_DIR" ]
then
     echo "STGI_SCRIPT_DIR is not set"
     exit 1
else
  echo "STGI_SCRIPT_DIR is set to: $STGI_HOME"
fi

# cd into the script directory
cd "$STGI_SCRIPT_DIR"

#remove all existing sub directories
#rm -R -- */

mkdir -p "$STGI_HOME"/out/temp


if [ ! -d "$STGI_HOME"/out/temp ]
then
     echo "../out/temp creation failed"
     exit 1
else
    cd "$STGI_HOME"/out/temp
fi

#create text file to store test summary
if [ ! -f test_result.txt ]
then
    touch test_result.txt
else
    : > test_result.txt
fi


for dir in "$STGI_EXAMPLE_DIR"/*      # list directories"
do
    #echo "$dir"
    file_path=$(find "$dir" -type f -name "*.cpp")
    echo "$file_path"

    dir_name=$(basename $(dirname "$file_path"))
    filename=$(basename "$file_path")

    #echo "$dir_name"
    #echo "$filename"
  

   sh "$STGI_SCRIPT_DIR"/buildtest.sh "$file_path"

    mv stg-out-0   "$dir_name"
    DIFF=$(diff -x '*.txt' -r -N "$dir_name"  "$STGI_EXAMPLE_DIR"/"$dir_name"/stg-expec)   # -x means exclude .txt file, -r check recursively , - N show if as full file if other absent
    #echo "$DIFF"

    if [ "$DIFF" != "" ]
    then
      echo "Test Failed for $filename" >> test_result.txt
      testPassed=false
    else
      echo "Test Passed for $filename" >> test_result.txt
      echo "$DIFF"
    fi
done

echo -n "Test Summary"
cat test_result.txt
cp test_result.txt  "$STGI_HOME"/out

if [ "$testPassed" ]
then

  cd "$STGI_HOME"/out
  #remove temp
  rm -r temp

else
  echo "A few tests failed, for details see out/test_result.txt"
  exit 1
fi


#end of script

<< 'MULTILINE-COMMENT'
MULTILINE-COMMENT

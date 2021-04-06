#!/bin/bash
#start:
testPassed=true


#making sure the environments are set properly
if [ -z "$STGI_HOME" ];then
  echo "STGI_HOME is not set"
  testPassed=false
  exit 1
else
  echo "STGI_HOME is set to: $STGI_HOME"
fi

if [ -z "$STGI_EXAMPLE_DIR" ];then
  echo "STGI_EXAMPLE_DIR is not set"
  testPassed=false
  exit 1
else
  echo "STGI_EXAMPLE_DIR is set to: $STGI_HOME"
fi

if [ -z "$STGI_SCRIPT_DIR" ];then
  echo "STGI_SCRIPT_DIR is not set"
  testPassed=false
  exit 1
else
  echo "STGI_SCRIPT_DIR is set to: $STGI_HOME"
fi

#creating out dir inside out
mkdir -p "$STGI_HOME"/out

if [ ! -d "$STGI_HOME"/out ];then
  echo "out dir creation failed"
  testPassed=false
  exit 1
else
    echo "out directory exists, creating temp directory if not exists"
    if [ -d "$STGI_HOME"/out/temp ];then
      rm -rf  "$STGI_HOME"/out/temp
    fi

    mkdir "$STGI_HOME"/out/temp
    cd "$STGI_HOME"/out/temp || exit
fi

#create text file to store test summary
if [ ! -f test_result.txt ];then
  touch test_result.txt
else
  : > test_result.txt
fi


for dir in "$STGI_EXAMPLE_DIR"/*      # list directories"
do
    echo "$dir"
    file_path=$(find "$dir" -type f -name "*.cpp")

    if [ -z "$file_path" ];then
      echo "No file in $dir" >> test_result.txt
      testPassed=false
      break
    else
       echo "$file_path"
    fi

    # shellcheck disable=SC2046
    #dir_name=$(basename $(dirname "$file_path"))
    dir_name=$(basename "$dir")
    filename=$(basename "$file_path")

    echo "directory name $dir_name"
    echo "file name $filename"

    #if dir name is simple_geofence then pass input file ( mcdc.txt)

    if [ "$dir_name" = "simple_geofence" ]; then
      sh "$STGI_SCRIPT_DIR"/buildtest.sh "$file_path"  "$STGI_EXAMPLE_DIR"/"$dir_name"/"mcdc.txt"            #calling build script
    elif [ "$dir_name" = "classify_gtest" ]; then
      sh "$STGI_EXAMPLE_DIR"/"$dir_name"/run.sh
    elif [ "$dir_name" = "px4_artifactSuite" ]; then
      sh "$STGI_EXAMPLE_DIR"/"$dir_name"/run.sh
    elif [ "$dir_name" = "px4_velocity_smoothing" ]; then
      sh "$STGI_EXAMPLE_DIR"/"$dir_name"/commandLine.sh
    else
      sh "$STGI_SCRIPT_DIR"/buildtest.sh "$file_path" #calling build script
    fi

    mv stg-out-0 "$dir_name"

    DIFF=$(diff -x '*.txt' -r -N "$dir_name"  "$STGI_EXAMPLE_DIR"/"$dir_name"/stg-expec)   # -x means exclude .txt file, -r check recursively , - N show if as full file if other absent
    echo "$DIFF"

    if [ "$DIFF" != "" ];then
      echo "Test Failed for $filename" >> test_result.txt
      testPassed=false
      break
    else
      echo "Test Passed for $filename" >> test_result.txt
      echo "$DIFF" >> test_result.txt
    fi
done

echo -e "----------------Test Summary--------------------\n"

#echo $testPassed
cat test_result.txt
cp test_result.txt  "$STGI_HOME"/out

if [ "$testPassed" = true ];then
  cd "$STGI_HOME"/out || exit
  rm -r temp  #remove temp
else
  echo "A few tests failed, for details see $STGI_HOME/out/temp and $STGI_HOME/out/test_result.txt"
  exit 1
fi

#end of script

#!/bin/bash

rm -f result.txt
for source in src_qif/*.c; do
	name=$(basename "$source")
	extension="${name##*.}"
	name="${name%.*}"
	echo $source
  echo $name

	START=`date +%s%N`
	cbmc --unwind 10 --smt2 --outfile QF_AUFBV'/'$name'.smt2' $source
	java CBMCwrapper QF_AUFBV'/'$name'.smt2'
	END=`date +%s%N`
	ELAPSED=`echo "scale=8; ($END - $START) / 1000000000" | bc` 
  echo $name': '$ELAPSED >> result.txt
done

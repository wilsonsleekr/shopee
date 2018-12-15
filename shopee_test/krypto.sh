#!/bin/bash
rm -rf rerun.txt
rm -rf rerun2.txt

echo "=== Running test === "
docker run -v "$(PWD)":/app -it kryptonite "$@" -f rerun  -o rerun.txt
# docker run --entrypoint=parallel_cucumber -v "$(PWD)":/app -it kryptonite features -n 4 -o " b$@ -f rerun  -o rerun.txt"
# condition to do retry test when rerun.txt is not empty
if [ -s "rerun.txt" ]
then 
   echo " ==== !!! Test FAILED !!! ==== "
   cat rerun.txt
   echo ""
   echo " ===== Rerun failed test once again! ===== "
   #docker run -v "$(PWD)":/app -it kryptonite @rerun.txt -o rerun2.txt
   echo ""
   echo " =========================================== "
   cat rerun2.txt # print out the failed retry scenarios
else
   echo " ==== All Test PASS :) ==== "
fi
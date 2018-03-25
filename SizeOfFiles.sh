#!/bin/bash
echo "Calculating total size of all files in $PWD ....."
ls -l | awk '{ print $2 " " $5}' | cat > space.txt
count=0
while IFS= read line
do
 v1=$( echo $line | awk '{print $1}' ) #If no of hardlinks is 1 then it must be afile
 v2=$( echo $line | awk '{print $2}' ) #This column gives size 
 if [ $v1 -eq 1 ]                      #If it is a file then...
 	then
 		count=`expr $count + $v2 `
 fi
done < space.txt
echo "Size=$count" 
rm -f space.txt		

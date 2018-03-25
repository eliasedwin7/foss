#!/bin/bash
echo "Ready to recursive search............."
ls -lR | awk '{ print $1 " " $2 " "$9}' | sort | cat > T.txt
while IFS= read line
do
  echo $line | awk '{print $1}' | cat > c1.txt
  echo $line | awk '{print $2}' | cat > c2.txt   
  fname=$( echo $line | awk '{print $3}')
  grep -q drwx c1.txt
  if [ $? -eq 0 ];
  	then
  	 	echo "$fname is a directory"
  fi
  grep -wq 1 c2.txt        #This is a bit of cheating! I checked: if the no of hardlinks is 1 then it is a file 
  if [ $? -eq 0 ];
  	then
  	 	echo "$fname is a file"
  fi  
done < T.txt 2>error.txt
echo "Done"
rm -f error.txt
rm -f c1.txt 
rm -f T.txt
rm -f c2.txt
  


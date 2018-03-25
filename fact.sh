#!bin/bash
echo "Enter no whose fact is to be found out:"
read n
fact=1
while [ $n != 0 ]
 do
   fact=`expr $fact \* $n `
   n=`expr $n - 1 ` 
 done
echo $fact 

#!/bin/bash
echo "Enter No:"
read n
r=$(echo $n | rev )  # echo $n | rev returns the reversed no as numbers can be read as strings :P
if [ $r -eq $n ]
  then
 		echo "The given no is a palindrome number!"
else
 		echo "Not a palindrome number!" 
fi 


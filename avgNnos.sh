#!/bin/bash
echo "Enter Limit"
read n
echo "Enter Numbers: "

for ((i=0;i < n; i++))
	do
  		read array[$i]  #To read into an array.. 
	done
	              #I guess an array is defined with 1024 spaces..
sum=0

for ((i=0;i < n; i++))
	do
 		sum=`expr $sum + ${array[$i]} `
	done
	
avg=$( echo "scale=3; $sum/$n" | bc )  #Returns quotient with precision upto 3 decimal units 
                                      #Does not check if n is 0 or not, modify acc to your need!
                                      #bc will return an error of n=0, try it out
echo "Average is: $avg"


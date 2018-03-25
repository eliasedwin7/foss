#!/bin/bash
echo "Enter no"
read n
p=1
while [ $n -ne 0 ]
do
  r=`expr $n % 10 `
  n=`expr $n / 10 `
  p=`expr $p \* $r `
done
echo "Product of digits: $p"

#!/bin/bash
n=$#
array=("$@")
great=${array[0]}
for ((i=0; i < n ; i++))
do
  if [ ${array[$i]} -gt $great ];
   then
      great=${array[$i]}
  fi
done
echo $great

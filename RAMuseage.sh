#!/bin/bash
echo "Calculating RAM useage...."
free_mem=$(free -m | grep Mem)
current=$( echo $free_mem | cut -f3 -d' ')
total=$(echo $free_mem | cut -f2 -d' ')
echo "Ram Useage (%):"
echo "scale=2; $current/$total*100" | bc  

#!/bin/bash
n=$(cat * 2>error.txt | wc -m)
echo " Character Count $n"
rm -f error.txt

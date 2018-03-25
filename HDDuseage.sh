#!/bin/bash
echo "Calculating available Hardisk space...."
useage=$(df -lh | awk '{if ($6 == "/") { print $4 }}' | head -1 | cut -f1)
echo "$useage Bytes Availabe!"

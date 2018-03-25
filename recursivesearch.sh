#!/bin/bash
echo "Ready to recursive search in the pwd"
echo "Enter the word to find"
read w
grep -rn $w *

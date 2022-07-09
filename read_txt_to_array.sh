#!/bin/bash

clear

i=0
table=()
for i in `cat kolory.txt`; do
table[l]=$i
l=$((l+1))
done
echo "${table[@]}";
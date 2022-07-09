#!/bin/bash

clear

echo "Podaj kolory:"
read -a table
for((i=0;i<4;i++)) do
echo "${table[i]}" >> kolory.txt
done
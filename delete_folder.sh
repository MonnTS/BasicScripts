#!/bin/bash

echo "Podaj nazwe pliku"
read name
for((i=1; i<=6; i++))
do
rmdir folder$i
done
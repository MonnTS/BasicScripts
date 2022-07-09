#!/bin/bash

clear

i=0
echo "Podaj imiona rozdzielone spacja:"
read -a tablica
for i in "${tablica[@]}"
do
echo -e "Podales imie $i"
done
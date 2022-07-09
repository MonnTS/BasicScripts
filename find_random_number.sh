#!/bin/bash

clear

echo "Znajdz liczbe od 0 do 50"
rnd=$((RANDOM % 51))

while [ "$wp" != "$rnd" ]; do
read -p "Podaj liczbe" wp
if [ $wp -lt $rnd ]; then
echo "Liczba za mala"
else if [ $wp -gt $rnd ]; then
echo "Liczba jest za duza"
fi
fi
done
echo "Brawo!"
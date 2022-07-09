#!/bin/bash

echo "Kalkulator"

read -p "Dzialanie: 1-dodowanie 2-odejmowanie 3-mnozenie 4-dzielenie" wybor
read -p "Podaj pierwsze liczbe: " x
read -p "Podaj druga liczbe: " y
declare -i wynik

if [ $wybor -eq 1] ; then
wynik=$x+$y
else
if [ $wybor -eq 2 ] ; then
wynik=$x-$y
else
if [ $wybor -eq 3 ] ; then
wynik=$x*$y
else
if [ $wybor -eq 4 ] ; then
wynik=$x/$y
fi
fi
fi
fi
echo "Wynik: $wynik"

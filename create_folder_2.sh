#!/bin/bash

read -p "Podaj nazwe folderu: " k
if [ -d $k ]
then
	echo "$k juz istnieje"
else
	mkdir $k
	echo "Utworzone folderu $k"
fi
#!/bin/bash

user="$(whoami)"
a=$(date '+%Y-%m-%d')
echo "Dzisiaj jest $a"
printf "Zalogowany uzytkownik: $user\n"
#!/bin/bash

echo "Podaj imie pliku: "
read name

echo "Podaj imie uzytkownika: "
read user

echo "Witaj $user" > $name.txt
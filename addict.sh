#!/bin/bash

echo X: $1
read X

echo Y: $2
read Y

W=$(($X+$Y))
echo "$X + $Y = $W"
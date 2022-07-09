#!/bin/bash

echo "Username"
read USR

echo "Password"
read PWD
sudo useradd -m -p $PWD $USER && echo "Created new user: $USR"
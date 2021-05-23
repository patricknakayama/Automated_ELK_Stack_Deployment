#!/usr/bin/env bash

# Basic script utilizing variables, environment variables, and command expansion

name='Patrick'

age=100

echo "Hello $name."

echo "Your age is $age."

echo -e "\nThis is my script.\n"

echo -e "The files in $PWD are: \n$(ls)"

echo -e "\nCopying the passwd file into my directory.\n"

cp /etc/passwd $PWD

echo -e "The files in $PWD are now: \n$(ls)"

echo " "

echo "Goodbye!"
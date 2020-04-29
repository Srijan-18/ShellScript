#!/bin/bash -x

read -p "Enter the day of week in number : " input

if [ $input -eq 1 ]
then
        echo "$input : SUNDAY"

elif [ $input -eq 2 ]
then
        echo "$input : MONDAY"

elif [ $input -eq 3 ]
then
        echo "$input : TUESDAY"

elif [ $input -eq 4 ]
then
        echo "$input : WEDNESDAY"

elif [ $input -eq 5 ]
then
        echo "$input : THURSDAY"

elif [ $input -eq 6 ]
then
        echo "$input : FRIDAY"

elif [ $input -eq 7 ]
then
        echo "$input : SATURDAY"
else
	echo "INVALID INPUT"
fi

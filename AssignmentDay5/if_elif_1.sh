#!/bin/bash -x

read -p "Enter a single digit number : " input
if [ $input -eq 0 ]
then
	echo "$input : Zero"

elif [ $input -eq 1 ]
then
	echo "$input : One"

elif [ $input -eq 2 ]
then
	echo "$input : Two"

elif [ $input -eq 3 ]
then
	echo "$input : Three"

elif [ $input -eq 4 ]
then
	echo "$input : Four"

elif [ $input -eq 5 ]
then
	echo "$input : Five"

elif [ $input -eq 6 ]
then
	echo "$input : Six"

elif [ $input -eq 7 ]
then
	echo "$input : Seven"

elif [ $input -eq 8 ]
then
	echo "$input : Eight"

elif [ $input -eq 9 ]
then
	echo "$input : Nine"

else
	echo "INVALID INPUT";
fi


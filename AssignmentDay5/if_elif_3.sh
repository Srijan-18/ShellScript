#!/bin/bash -x

read -p "Enter the number :" input

if [ $input -eq 1 ]
then
        echo "$input : UNIT"

elif [ $input -eq 10 ]
then
        echo "$input : TEN"

elif [ $input -eq 100 ]
then
        echo "$input : HUNDERED"

elif [ $input -eq 1000 ]
then
        echo "$input : THOUSAND"

elif [ $input -eq 100000 ]
then
        echo "$input : LAKH"

else
	echo "INVALID INPUT";
fi


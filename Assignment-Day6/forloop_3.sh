#!/bin/bash 

read -p "Enter the number to check for prime :" input
isPrime=0;
for (( count=1;count<=input;count++ ))
do
	if [ $(( $input%$count )) -eq 0 ]
	then
		((isPrime++))
	fi
done

if [ $isPrime -eq 2 ]
then
	echo "$input is a PRIME NUMBER"
else
	echo "$input is NOT A PRIME NUMBER"
fi


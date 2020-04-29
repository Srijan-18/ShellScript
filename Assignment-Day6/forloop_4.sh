#!/bin/bash 

read -p "Enter the starting limit to check for prime :" startInput
read -p "Enter the ending limit to check for prime :" endInput

for (( num=$startInput;num<=$endInput;num++ ))
do
	isPrime=0;
	for (( count=1;count<=num;count++ ))
	do
		if [ $(( $num%$count )) -eq 0 ]
		then
			((isPrime++))
		fi
	done

	if [ $isPrime -eq 2 ]
	then
		echo "$num is PRIME"
	fi
done

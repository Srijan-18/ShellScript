#!/bin/bash/ 

read -p "Enter the number whose factorial is to be calculated :" inputNum
factorial=1;
for (( count=1;count<=$inputNum;count++ ))
do
	factorial=$(( $factorial*$count ))
done

echo "Factorial of $inputNum is $factorial"


#!/bin/bash 

read -p "Enter the value of n :" n
result=1;
count=1

while (( $result<256 && $count<=$n ))
do
	((count++))
	result=$(( result*2 ))
	echo $result
done


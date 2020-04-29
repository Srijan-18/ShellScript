#!/bin/bash 

read -p "Enter the number of terms to display : " numOfTerms
result=1;
for (( count=1;count<=$numOfTerms;count++ ))
do
	result=$(( $result*2 ))
	echo "2^$count=$result"
done

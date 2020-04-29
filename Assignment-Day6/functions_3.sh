#!/bin/bash 

function prime()
{
	num=$1;
	isPrime=1;

	for (( count=2; count<=(num/2); count++ ))
	do
		if [ $(($num%$count)) -eq 0 ]
		then
			((isPrime++))
		fi
	done

	if [ $isPrime -eq 1 ]
	then
		echo "PRIME"
	else
		echo "NOT PRIME"
	fi

}

function palindrome()
{
	num=$1
	numPalin=0
	while (( num>0 ))
	do
		numPalin=$(( numPalin*10+num%10 ))
		num=$(( num/10 ))
	done
	echo $numPalin
}

read -p "Enter the number :" inpNum

result_prime=$( prime $inpNum )
echo "$inpNum is $result_prime"
if [ "$result_prime" == "PRIME" ]
then
	result_palindrome=$( palindrome $inpNum )
	result_prime=$( prime $result_palindrome )
	echo "$result_palindrome is $result_prime"
fi


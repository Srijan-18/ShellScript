#!/bin/bash 

function palindrome()
{
num1=$1;
num2=$2;
revNum=0

while (( num1>0 ))
do
	revNum=$(( revNum*10+num1%10 ))
	num1=$(( num1/10 ))
done

if [ $revNum -eq $num2 ]
then
	echo "BOTH ARE PALINDROME OF EACH OTHER"
else
	echo "BOTH ARE NOT PALINDROME OF EACH OTHER"
fi

}

read -p "Enter First Number :" inp1
read -p "Enter Second Number :" inp2

result=$( palindrome $inp1 $inp2 )
echo $result

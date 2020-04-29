#!/bin/bash -x

read -p "Enter the number whose prime factors are to be found :" inputNum
count=0
declare -a primeFactors
for (( div=2; inputNum%div==0; ))
do
	primeFactors[((count++))]=$div
	inputNum=$(( $inputNum/$div ))
done

for (( div=3; div*div<=inputNum; div++ ))
do
	for (( testVar=div; inputNum%testVar==0; ))
	do
		primeFactors[((count++))]=$div
		inputNum=$(( $inputNum/$testVar ))
	done
	((div++))
done

if [ $inputNum -gt 2 ]
then
	primeFactors[((count++))]=$inputNum
fi

echo ${primeFactors[@]}


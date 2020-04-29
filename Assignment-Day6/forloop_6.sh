#!/bin/bash 

read -p "Enter the number whose prime factors are to be found :" inputNum

for (( div=2; inputNum%div==0; ))
do
	echo "2"
	inputNum=$(( $inputNum/$div ))
done

for (( div=3; div*div<=inputNum; div+2 ))
do
	for (( testVar=div; inputNum%testVar==0; ))
	do
		echo $testVar
		inputNum=$(( $inputNum/$testVar ))
	done
done

if [ $inputNum -gt 2 ]
then
	echo $inputNum
fi


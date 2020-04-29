#!/bin/bash 

for (( count=0;count<10; count++ ))
do
   randomArray[count]=$((RANDOM%1000))
done

for (( count=0;count<9;count++ ))
do
	for (( inner=0;inner<(9-count);inner++ ))
	do
		if [ ${randomArray[inner]} -gt ${randomArray[(( inner+1 ))]} ]
		then
			randomArray[(( inner+1 ))]=$(( randomArray[(( inner+1 ))] + randomArray[inner] ))
			randomArray[inner]=$(( randomArray[(( inner+1 ))] - randomArray[inner] ))
			randomArray[(( inner+1 ))]=$(( randomArray[(( inner+1 ))] - randomArray[inner] ))
		fi
	done
done
echo ${randomArray[@]}
echo "Second Maximum=${randomArray[8]}"
echo "Second Minimum=${randomArray[1]}"

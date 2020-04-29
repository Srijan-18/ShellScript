#!/bin/bash 

read -p "Enter the number of integers you want to enter (minimum 3) :" integerCount
if [ $integerCount -lt 3 ]
then
	echo "INVALID INPUT"
else
	tripletCount=0
	for (( count=1; count<=integerCount; count++ ))
	do
		read -p "Enter element number $count :" integers[$((count-1))]
	done
	for (( i=0;i<(integerCount-2);i++ ))
	do
		for (( j=i+1;j<(integerCount-1);j++ ))
		do
			for (( k=j+1;k<(integerCount);k++ ))
			do
				if [ $(( integers[$i] + integers[$j] + integers[$k] )) -eq 0 ]
				then
					((tripletCount++))
					echo  ${integers[$i]} ${integers[$j]} ${integers[$k]}
				fi
			done
		done
	done
	if [ $tripletCount -eq 0 ]
	then
		echo "NO SUCH TRIPLET"
	fi
fi


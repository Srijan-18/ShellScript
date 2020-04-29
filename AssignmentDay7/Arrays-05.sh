#!/bin/bash -x
read -p "Enter the starting point of range between 0 and 100 :" rangeStart
if [[ $rangeStart -lt 0 || $rangeStart -gt 100 ]]
then
	echo "INVALID INPUT"
else
	read -p "Enter the Ending point of range between 0 and 100 :" rangeEnd
	if [[ $rangeEnd -lt 0 || $rangeEnd -gt 100 || $rangeEnd -le $rangeStart ]]
	then
		echo "INVALID INPUT"
	else
		count=0;
		for(( element=rangeStart;element<=rangeEnd;element++ ))
		do
			if [[ $element -ne 0 && $((element%11)) -eq 0 ]]
			then
			array[((count++))]=$element
			fi
		done
		if [ $count -eq 0 ]
		then
			echo "NO SUCH NUMBER IN THE RANGE"
		else
			echo ${array[@]}
		fi
	fi
fi

#!/bin/bash 
for (( count=0;count<10; count++ ))
do
	randomArray[count]=$((RANDOM%1000))
done
maximum=${randomArray[0]}
secondMaximum=${randomArray[0]}

for (( count=1;count<10;count++ ))
do
	if [ $maximum -lt ${randomArray[count]} ]
	then
		secondMaximum=$maximum;
		maximum=${randomArray[count]};

	elif [[ $maximum -gt ${randomArray[count]} && $secondMaximum -lt ${randomArray[count]} ]]
	then
		secondMaximum=${randomArray[count]}
	fi
done
minimum=${randomArray[0]}
secondMinimum=${randomArray[0]}

for (( count=1;count<10;count++ ))
do
	if [ $minimum -gt ${randomArray[count]} ]
	then
		secondMinimum=$minimum;
		minimum=${randomArray[count]};

	elif [[ $minimum -lt ${randomArray[count]} && $secondMinimum -gt ${randomArray[count]} ]]
	then
		secondMinimum=${randomArray[count]}
	fi
done

echo ${randomArray[@]}
echo $secondMaximum $secondMinimum

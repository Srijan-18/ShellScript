#!/bin/bash -x

num1=$(( RANDOM%1000 ));
num2=$(( RANDOM%1000 ));
num3=$(( RANDOM%1000 ));
num4=$(( RANDOM%1000 ));
num5=$(( RANDOM%1000 ));
max=0;
min=0;

if [ $num1 -ge $num2 -a $num2 -ge $num3 -a $num3 -ge $num4 -a $num4 -ge $num5 ];
then
	 max=$num1;
else
	if [ $num2 -ge $num1 -a $num2 -ge $num3 -a $num2 -ge $num4 -a $num2 -ge $num5 ];
	then
		 max=$num2;
	else
		if [ $num3 -ge $num1 -a $num3 -ge $num2 -a $num3 -ge $num4 -a $num3 -ge $num5 ];
		then
			 max=$num3;
		else
			if [ $num4 -ge $num1 -a $num4 -ge $num2 -a $num4 -ge $num3 -a $num4 -ge $num5 ];
			then
				 max=$num4;
			else
				if [ $num5 -ge $num1 -a $num5 -ge $num2 -a $num5 -ge $num3 -a $num5 -ge $num4 ];
				then
					 max=$num5;
				else
					 max=$num1;
				fi
			fi
		fi
	fi
fi

if [ $num1 -le $num2 -a $num2 -le $num3 -a $num3 -le $num4 -a $num4 -le $num5 ];
then
	 min=$num1;
else
	if [ $num2 -le $num1 -a $num2 -le $num3 -a $num2 -le $num4 -a $num2 -le $num5 ];
	then
		 min=$num2;
	else
		if [ $num3 -le $num1 -a $num3 -le $num2 -a $num3 -le $num4 -a $num3 -le $num5 ];
		then
			 min=$num3;
		else
			if [ $num4 -le $num1 -a $num4 -le $num2 -a $num4 -le $num3 -a $num4 -le $num5 ];
			then
				 min=$num4;
			else
				if [ $num5 -le $num1 -a $num5 -le $num2 -a $num5 -le $num3 -a $num5 -le $num4 ];
				then
					 min=$num5;
				else
					 min=$num1;
				fi
			fi
		fi
	fi
fi
echo "$max is maximum";
echo "$min is minimum";

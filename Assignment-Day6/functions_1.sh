#!/bin/bash 

function cTOf ()
{
	inDegC=$1
	inDegF=$( bc <<< "scale=4;($inDegC*9/5)+32" )
	echo $inDegF
}
function fTOc ()
{
	inDegF=$1
	inDegC=$( bc <<< "scale=4;($inDegF-32)*5/9" )
	echo $inDegC
}

read -p "Enter 1 to convert from Celcius to Farenheit and 2 to convert from Farenheit to Celcius ::" userChoice
case $userChoice in
	1)
		read -p "Enter the value in degree Celcius :" degC
		if [[ $degC -le 100 && $degC -ge 0 ]]
		then
			degF="$( cTOf $degC )"
			echo "In Farenheit :$degF"
		else
			echo "OUT OF WORKING LIMITS"
		fi
	;;

	2)
		read -p "Enter the value in degree Farenheit :" degF
		if [[ $degF -le 212 && $degF -ge 32 ]]
		then
			degC="$( fTOc $degF )"
			echo "In Celcius :$degC" 
		else
			echo "OUT OF WORKING LIMITS"
		fi
	;;

	*)
		echo "INVALID INPUT"
	;;
esac

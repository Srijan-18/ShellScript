#!/bin/bash -x

read -p " Enter the day of week in number : " dayInNumber
case "$dayInNumber" in
	1) echo "SUNDAY" ;;
	2) echo "MONDAY" ;;
	3) echo "TUESDAY" ;;
	4) echo "WEDNESDAY" ;;
	5) echo "THURSDAY" ;;
	6) echo "FRIDAY" ;;
	7) echo "SATURDAY" ;;
	*) echo "INVALID INPUT" ;;
esac

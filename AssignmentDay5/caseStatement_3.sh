#!/bin/bash -x

read -p "Enter the number : " input
case "$input" in
	1) echo "UNIT" ;;
	10) echo "TEN" ;;
	100) echo "HUNDERED" ;;
	1000) echo "THOUDSAND" ;;
	100000) echo "LAKH" ;;
	*) echo "INVALID INPUT" ;;
esac


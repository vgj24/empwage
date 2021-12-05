#!/bin/bash/ -x

ispresent=1
randomcheck=$((RANDOM%2));
if [ $ispresent -eq $randomcheck ]
then
	echo "present"
else
	echo "absent"
fi

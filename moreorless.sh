#!/bin/bash

nbrrandom=$(( ( RANDOM % 10 ) ))
i=1
read nbr
while [ $nbr != $nbrrandom ]
do
	if [ $nbr -le $nbrrandom ]
		then
			echo "Plus"
		else
			echo "Moins"
	fi
	read nbr
	i=`expr $i + 1`
done;

if [ $nbr -eq $nbrrandom ]
	then
		echo "Trouvé après $i essai(s)"
fi
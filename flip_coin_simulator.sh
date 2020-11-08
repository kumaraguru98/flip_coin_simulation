#! /bin/bash -x
echo "welcome to flipcoinsimulation!!"
headcount=0
tailcount=0

for (( i=0; i<20; i++ ))
do
	while [[ $headcount -le 21 && $tailcount -le 21 ]]
	do
		coinrandomcheck=$(( RANDOM%2 ))
		if (( $coinrandomcheck==0 ))
		then 
			echo "flips of coin Head"
			headcount=$(( $headcount+1 ))
		else
			echo "flips of Tail"
			tailcount=$(( $tailcount+1 ))
	fi
	done
done
echo "number of times head won" $headcount
echo "number of times tail won" $tailcount
if [ $headcount -le $tailcount ]
then
	echo "won head by "$(($headcount-1))
elif [ $headcount -le $tailcount ]
then
	echo "won tail by "$(($tailcount-1))
else
	echo "tie between head and tail"
fi


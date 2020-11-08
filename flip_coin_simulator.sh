#! /bin/bash -x
echo "welcome to flipcoinsimulation!!"
headcount=0
tailcount=0

for (( i=0; i<20; i++ ))
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
echo "number of times head won" $headcount
echo "number of times tail won" $tailcount

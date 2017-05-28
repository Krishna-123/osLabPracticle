# check for armstrong

echo -e "enter  the no. \c"
read num
s=0
for (( i=0; i<${#num};i++ ))
do 
	s=$(echo "$s + ${num:i:1} ^${#num} "|bc)
done
if (( "$s" == "$num" ))
then
echo "$num is armstrong"
else
echo "$num is not armstrong"	
fi

# perfect number
s=0
for (( i=1;i<$num;i++ ))
do
	mod=$(( num % i ))
	if (( $mod == 0 ))
		then 
		s=$(( s + i ))
	fi	
done
if (( "$s" == "$num" ))
	then
	echo "$num is perfect"
else
	echo "$num is not perfect"
fi

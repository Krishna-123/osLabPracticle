# find the leap years from the list or of years and also find calender of the provided year

echo -e "enter the no. of years \c"
read n

echo -e "enter  the list of $n years \c"
for (( i=0;i<$n;i++ ))
do 
	read year[$i]
done

# leap year checking

for (( i = 0; i < $n; i++ ))
do
	#statements
	num=${year[i]}
	if  [[ $(( num % 400 )) -eq 0 ]] || [[ $(( num % 4 )) -eq 0 ]] && [[ $(( num % 100 )) -ne 0 ]]
		then
		echo "$num"
	fi

done

echo -e "enter the year for the calender \c"
read ye

cal $ye
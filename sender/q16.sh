#  prime no bet given range

echo -e "enter the given range \c"
read ll ul 

for (( i = $ll; i <=$ul ; i++ )); do
	#statements
	f=1
	for (( j=2; j<= i/2 ;j++))
	do
		if [[ $(( i % j )) -eq 0 ]]
			then
			f=0
			break
		fi	
	done

	if (( "$f" == 1 ))
		then
		echo "$i"
	fi	

done

# take more then 1 words from the file and 
#check they are pallindrome or  not

clear

echo -e "enter the file name \c "
read fname
echo -e "enetr the no. of words want to read from the file \c"
read nword

read p< $fname
i=0
#echo $p

for words in $p
  do 
	w1[i]=$words
	i=$(( i + 1 ))

	if (( "$i" >= "$nword" ))
		then
		break
	fi
	  done

	 echo ${#w1[@]} 
# palidrome checking start
	for (( i=0; i<${#w1[@]}; i++ ))
		do
			
				num=${w1[i]}
				rnum=""
				c=$(( ${#num} - 1 ))
				for (( j=c; j >= 0; j-- )); do
					
					#statements
					rnum="$rnum${num:j:1}"
				done
			
				if [ "$rnum" == "$num" ]
				 then
					#statements
					echo "$num"
				fi
		done		

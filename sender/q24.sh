# count the no. of files in the current directory and find largest among them

count=0
for var in *
 do
	#statements
	if [[ -f $var ]]; then
		#statements
		count=$(( count + 1 ))
		size[count]=`wc -c<"$var"`

	fi
done

echo "$count"

echo "larget file size is"

si=${size[1]}
for (( i = 2; i <= ${#size[@]}; i++ )); do
	#statements
	if [[ ${size[i]} -gt $si ]]; then
		#statements
		si=${size[i]}
	fi

done
echo
echo "$si"




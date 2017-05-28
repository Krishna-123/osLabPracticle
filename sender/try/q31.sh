# count the files haveing size 0 bytes

i=0
for var in *
do
	si=$(wc -c<"$var")
 if [[ $si -eq 0 ]]; then
 	#statements
 	i=$(( i + 1 ))
 fi
done

echo " number of files having size 0 bytes are $i"
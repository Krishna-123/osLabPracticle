# delete all the files of 0 byte size
i=0
for var in *
do 
  i=$(( i + 1 ))
  size[i]=`wc -c<"$var"`
 files[i]=$var
 echo ${size[i]}
done

for (( i=1;i<${#size[@]};i++ ))
do
if [[ ${size[i]} -eq 0 ]]
then
	rm ${files[i]}
fi

done	
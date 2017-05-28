# take the da_name and temp from 1 file and store the wheather from another file

echo -e "enteer the file name \c"
read fname
n=$( wc -l<$fname )

for (( i = 0; i <=n ; i++ )); do
	#statements
	read p[i]
done<$fname

for (( i = 0; i <=n; i++ )); do
	#statements
	IFS=' '
	set ${p[i]}
	d_name[i]=$1
	temp[i]=$2

done

echo  " ${d_name[0]} ${temp[0]} wheather "	>whe.txt

for (( i = 1; i <= n; i++ )); do
	#statements

	if [[ ${temp[i]} -lt 15 ]]
		then
	    wheather=very_cold
	elif (( ${temp[i]} >= 15 )) && (( ${temp[i]} < 25 ))
	 then
		wheather=cold	
	elif (( ${temp[i]} >= 25 )) && (( ${temp[i]} < 35 ))
	 then
		wheather=Hot	
	elif (( ${temp[i]} >= 35 ))
	 then
		wheather=very_Hot	
	fi

	echo  " ${d_name[i]} ${temp[i]} $wheather "	>>whe.txt

done
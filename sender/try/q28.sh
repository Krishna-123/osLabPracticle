# update

echo "enter the file name"
read fname

echo "enter the roll no. to update marks"
read rol

n=$(wc -l<"$fname")

for (( i = 0; i <=$n; i++ )); do
	#statements
	read p[i]
done<$fname

for (( i = 1; i <=$n; i++ )); do
	#statements
	IFS=" "
	set ${p[i]}
	name[i]=$1
	roll[i]=$2
	marks[i]=$3

done

echo " Name Roll Marks ">updaterecord.txt

for (( i = 1; i <=$n; i++ )); do
	#statements
	if [[ ${roll[i]} -eq $rol ]]; then
		#statements
		echo -e "enter new marks \c"
		read marks[i]

		echo " ${name[i]} ${roll[i]} ${marks[i]} ">>updaterecord.txt
	else
		echo " ${name[i]} ${roll[i]} ${marks[i]} ">>updaterecord.txt	
	fi

done

cat updaterecord.txt
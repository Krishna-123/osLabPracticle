# insert  the student records and fird the student take highest maeks
echo "enter the file name"
read fname
n=$(wc -l<"$fname")

cat $fname
echo "start inserting the records and press ctrl+d to quit "

cat>> $fname

for (( i=0;i<=$n;i++ ))
do
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

maxm=${marks[1]}

for (( i = 2; i <= $n; i++ )); do
	#statements
	if [[ ${marks[i]} -gt $maxm ]]; then
		#statements
		maxm=${marks[i]}
		pos=$i
	fi

done

echo "name of student is : ${name[pos]} roll is : ${roll[pos]} marks is: ${marks[pos]} "
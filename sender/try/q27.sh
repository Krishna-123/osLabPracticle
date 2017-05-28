# delete the record

echo "enter the file name"
read fname

echo "enter the roll no. to delete"
read rol

n=$(wc -l<"$fname")

for (( i=0;i<=$n ;i++ ))
do
	read p[i]
done<$fname

# for (( i = 1; i <=$n; i++ )); do
# 	#statements
# 	IFS=" "
# 	set ${p[i]}
# 	name[i]=$1
# 	roll[i]=$2
# 	marks[i]=$3
# done

# echo "Name Roll Marks">record.txt

# for (( i = 1; i <=$n; i++ )); do
# 	#statements
#  	if [[ ${roll[i]} -ne $rol ]]; then
#  		#statements
#  		echo "${name[i]} ${roll[i]} ${marks[i]}">>record.txt
#  	fi

# done

# echo "......content of new file....."

cat record.txt

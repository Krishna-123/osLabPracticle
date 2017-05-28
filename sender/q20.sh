# to find the  grade 


function gradeing(){
	marks=$1

	if [ $marks -gt 89 ]
		then
		grade=O
	elif [ $marks -gt 69 ] && [ $marks -lt 89 ]	
		then
		grade=E
	else
		grade=A	
	fi
 	
 	echo $grade
 }


echo "enter the file name"
read fname

n=$(wc -l<"$fname")

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
		mcp[i]=$3
		mos[i]=$4
	done	

	echo " name roll Mcp gcp Mos gos ">grade.txt
	for (( i=1;i<=$n;i++ ))
	do
		#avg=$(echo "scale=3;( ${mcp[i]} + ${mos[i]} )/2 "| bc)

		gradecp=$( gradeing ${mcp[i]} )
		gradeos=$( gradeing ${mos[i]} )

		echo " ${name[i]} ${roll[i]} ${mcp[i]} $gradecp ${mos[i]} $gradeos ">>grade.txt


	done
	cat grade.txt

# comparing the no. of files in a directories

 echo "enter the directory names"
 read dir1 dir2


count=0
for var in /home/krishna/final_practicle/$dir1/*
do
count=$(( count + 1  ))
done

counta=0
for var in /home/krishna/final_practicle/$dir2/*
do
counta=$(( counta + 1  ))
done

if [[ $count -gt $counta ]]; then
	#statements
	echo "the files contain largest directory is $dir1 and number of files are$count "
	else
		echo "the files contain largest directory is  $dir1 and number of files are $counta "
fi
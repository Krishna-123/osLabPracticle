# find words from the file and remove . or ; from the file and store them to another file

echo "enter  the file name"
read fname


n=$(wc  -l<"$fname")

for (( i=0;i<=$n;i++ ))
do
	read p[i]
done<$fname
j=0
  for (( i=0;i<=$n;i++ ))	 
  do
  	 for var in ${p[i]}
	do
		word[$j]=$var
		j=$(( j + 1 ))
	done 
  done	

  echo "${word[@]}"
for (( i=0; i<=${#word[@]}; i++  ))
do
 		sword=${word[i]}
 		
	if [ "${sword:$(( ${#sword} - 1 )):1}" == "." ] || [ "${sword:$(( ${#sword} - 1 )):1}" == ";" ]
	 then
		#statements
		word[i]="${sword:0:$(( ${#sword} - 1 ))}"
	fi
done
  
  echo "${word[@]}"

for var in ${word[@]}
do
	cword=""
	c=$(( ${#var} -1 ))
  for (( i=$c;i>=0;i-- ))
  do
  	
  	cword="$cword${var:i:1}"
  done	
  if [ "$cword" == "$var" ]
  	then
  	echo "$var">>pallindrom.txt
  fi
 done 

 cat pallindrom.txt
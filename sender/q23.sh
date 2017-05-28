# take file name and directory as input
echo -e "enter the no of files and directories \c"
read n

echo "start entering the files and directories"
for (( i = 0; i < $n; i++ )); do
	#statements
	read files[i]
done

for (( i = 0; i < $n; i++ )); do
	#statements

	if [[ -d ${files[i]} ]]; then
		#statements
		echo "${files[i]} is directory" 

	elif [[ -f ${files[i]} ]]; then
			#statements	
		echo "${files[i]} is file "	
		echo
		echo ".......contents........"
		cat ${files[i]}
		echo
		echo "characters: $(wc -m<${files[i]}) lines : $(wc -l<${files[i]}) words :  $(wc -w<${files[i]})   "
		l=$(ls -lg ${files[i]})
		per=${l:0:10}

		echo "permession are $per"
		echo
		echo "now change the permission for other user"
		chmod o+x ${files[i]}
		l=$(ls -lg ${files[i]})
		per=${l:0:10}

		echo "permession after change are $per"
	fi
done
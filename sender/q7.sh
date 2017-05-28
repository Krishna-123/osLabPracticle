# sort 3 nos. in ascending  order

echo -e "enter the 3 numbers : \c "
read n[0] n[1] n[2]

echo "${n[@]}"

# sorting start 

for (( i=0;i<${#n[@]};i++ ))
 do
 	for (( j=0 ; j<${#n[@]}-i-1 ; j++ )); do
 		#statements
 		
 		if [[ ${n[j]} -gt ${n[j+1]} ]]; then
 			#statements
 			temp=${n[j]}
 			n[j]=${n[j+1]}
 			n[j+1]=$temp
 			
 		fi
 	done

 done

echo "sorted nos. are ${n[@]}"
# to draw the pascal triangle

function fact(){
	n=$1
	f=1
	for (( g = 1; g <= $n; g++ )); do
		#statements
		f=$(( f * g ))
	done

	echo $f

}


echo -e " enter the no of rows \c"
read row


r=$(( 20 + row ))
c=40
row=$(( row - 1 ))
for (( i=$row ;i>=0;i-- ))
do
  eve=$( echo " 11^$i "|bc -l ) 
 
 	tc=$c
  for (( j=0;j<${#eve};j++ ))
  do
 	facti=$(fact $i)
 	factij=$(fact $(( i - j )) )
 	factj=$(fact $j)
 	
 	sub=$(( facti / ( factij * factj ) ))

 	tput cup $r $tc
 	 echo "$sub "
 	tc=$(( tc + 2 ))
	done
  r=$(( r - 1 ))
  c=$(( c + 1 ))

done

# echo 
# tput cup 4 0
# print the square's side by *

echo -e " enter the side of the square \c"
read side

r=20

for (( i = 1; i <= $side; i++ )); do
	c=30
	for (( j = 1; j <= $side; j++ )); do
		#statements

		if [ $i == 1 -o $i == 4 -o $j == 1 -o $j == 4 ]; then
			#statements
			tput cup $r $c
			echo "*"
		fi
		c=$(( c + 3 ))
	done
		r=$(( r + 3 ))
done

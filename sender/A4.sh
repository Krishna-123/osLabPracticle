# series operaton

# 1+x^2/2! .....x^(2*n)/(2*n)!

echo -e "enter the value of x and n : \c"
read x n
s=0
for (( i=1; i<$n; i++ ))
do 
	f=1
	fact=1
  while [ $f -le $(( 2 * i )) ]; do 
  		 fact=$(( fact * f))
  		(( f++ ))
  		
    done


 s=$(echo "scale=3;$s + $x^(2 * $i)/$fact"|bc -l )

done
s=$(echo "$s + 1"|bc)
echo "result is $s "

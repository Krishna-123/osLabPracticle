#series 1+x/2+x^2/2^2...+x^n/(2^n)

echo -e "enter the  value of x and n \c"
read x n

s=1
for (( i=1; i<n; i++ ))
do
s=$(echo "scale=3;$s + $x^$i / (2^$i)"|bc -l)

done
echo "final result is $s "
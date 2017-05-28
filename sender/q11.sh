# print the fibonacci series

echo -e "enter the value of n \c"
read num

a=0
b=1

for (( i=2; i<$num; i++ ))
do 
    c=$(( a + b ))
    a=$b
    b=$c
    echo $c

done	
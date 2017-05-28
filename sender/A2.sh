# gcd
echo -e "enter the nos. : \c"
read a b

c=$a
if (( "$b" < "$a" )) 
	then
	c=$b
fi

f=1
for (( i=2; i<=$c; i++ ))
do 
	if [ $(( a % i )) -eq 0 -a $(( b % i )) -eq 0 ] 
		then
		f=$i
		break
	fi
done

echo "gcd of $a and $b is : $f"


# lcm
d=$a 
c=$(( a * b ))
f=1
if (( "$a" < "$b" )) 
then
 d=$b  
fi

for (( i=$d; i<=$c; i++ ))
do 
  if [ $(( i % a )) -eq 0 -a $(( i % b )) = 0  ]
  	then
  		f=$i
  		break
  	fi	

done

echo "lcm of $a and $b is : $f"
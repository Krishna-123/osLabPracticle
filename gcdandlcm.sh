#gcd
echo "enter two no. for gcd"
read a b
while [ 1 ]
do
if [ $a -eq $b ]
 then 
  echo "gcd : $a "
  break
elif [ $a -gt $b ]
then
	a=`expr $a - $b`
else
	b=`expr $b - $a`
fi
done

echo "enter two no. for lcm"
read a b
if [ $a -gt $b ]
then 
  lcm=$a
else
  lcm=$b
fi
while [ 1 ]
do
if [ `expr $lcm % $a` -eq 0 -a `expr $lcm % $b` -eq 0 ]
then
	echo "lcm is : $lcm" 
break
else
	lcm=`expr $lcm + 1`
fi
done 

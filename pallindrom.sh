#pallindrom
echo "enter the number"
read a
c=0
p=$a
while [ $a -gt 0 ]
do
d=`expr $a % 10`
c=`expr $c \* 10 + $d` 
a=`expr $a / 10`
done
if [ $p -eq $c ]
then 
echo "the no. is pallindrom"
else
echo "the no. is not pallindrom"
fi


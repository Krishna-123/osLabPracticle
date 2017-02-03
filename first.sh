# leap year

echo "enter year"
read a 
if [ `expr $a % 400` -eq 0 -o \( `expr $a % 4` -eq 0 -a `expr $a % 100` -ne 0 \) ]
then 
echo "it is leap year" 
else
echo "not leap"
fi





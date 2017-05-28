# check for the pallindrom of integer

echo -e "enter the numbers :\c"
read a

# b=""

# for (( i=$(( ${#a} - 1 )); i >=0; i-- )); do
# 	#statements
	
# 	b="$b${a:i:1}"
# done

# if [ "$b" = "$a" ] 
# 	then
#  echo "$a is pallindrom"
# else
# echo "$a is not pallindrom"	
# fi


c=$a
nnum=0
while (( "$c" > 0 )) 
do
  
  r=$(( c % 10 ))
  nnum=$(( nnum * 10 + r ))
  c=$(( c / 10 ))

done
if (( $nnum == $a ))
	then
 echo "$a is pallindrom"
else
echo "$a is not pallindrom"	
fi
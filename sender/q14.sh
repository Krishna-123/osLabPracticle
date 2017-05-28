# how many days and months are left for the coming of given year
# assume every months of length 30

sy=`date +%Y`
sm=`date +%m`
sd=`date +%d`

echo "today date is $sy/$sd/$sm"
echo -e "ent erht eyear \c"
read year

lm=$(( 11 - sm ))
cm=$(( lm + (year - sy - 1) * 12 ))

ld=$(( 30 - sd ))

echo "left months:=$cm and left days =$ld"


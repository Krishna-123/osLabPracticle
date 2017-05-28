# draw the line segment by putting * on the line


function caly(){
	x=$1
	y=$( echo "( ( ($x - $x1) * ($y2 - $y1) ) / ($x2 - $x1) ) + $y1"|bc )

echo $y
}


echo " enter the 1st coordinates of the line (x,y)"
read x1 y1

echo " enter the 2nd coordinates of the line (x,y)"
read x2 y2

clear

s=$(( x1 + 1 ))
if [ $x2 -lt $x1 ]
	then
	s=$(( x2 + 1 ))
fi	


l=$x1
if [ $x2 -gt $x1 ]
	then
	l=$x2
fi	
j=$(( x1 + 20 ))
g=$(( y1 + 30 ))
tput cup $j $g

echo "x"

j=$(( x2 + 20 ))
g=$(( y2 + 30 ))
tput cup $j $g

echo "x"

for (( i=$s;i<$l;i++ ))
do
	j=$(( i + 20 ))
	f=30
	g=$( echo "$(caly $i) + $f "|bc )
	tput cup $j $g
	echo "x"
done	
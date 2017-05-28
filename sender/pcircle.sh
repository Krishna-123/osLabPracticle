# print the circle
# x=rcos@ and y=rsin@
echo " enter the radius "
read r
clear
for (( i = 0; i <360; i=i+10 )); do
	#statements
	a=$(echo "scale=10;$i*3.14/180 "|bc|awk '{print cos($1)}')
	x=$(echo "scale=10;($r * $a) + 10 "|bc|awk '{print int($1)}')

	b=$(echo "scale=10;$i*3.14/180 "|bc|awk '{print sin($1)}')
	y=$(echo "scale=10;( $r * $b) + 20 "|bc|awk '{print int($1)}')

tput cup $x $y
echo "*"
done
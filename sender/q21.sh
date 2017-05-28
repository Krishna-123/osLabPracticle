# store pay slip

# basic pay, da , hra ,pf ,total salary

echo -e "enter the number of employ \c"
read n

echo "enter the bassic of each employ "
for (( i = 0; i < $n; i++ )); do
	#statements
	read basic[$i] 
done

echo "Basic		| D.A 	| H.R.A 	| P.F 	| T_salary	">emp.txt

for (( i = 0; i < $n; i++ )); do
	#statements
	da[$i]=$( echo "scale=2;0.45 * ${basic[$i]}  " | bc -l)
	hra[$i]=$( echo "scale=2;0.15 * ${basic[$i]}  " | bc -l)
	pf[$i]=$( echo "scale=2;0.10 * ${basic[$i]}  " | bc -l)
	tsalary[$i]=$( echo "scale=2;${basic[$i]} + ${da[$i]} + ${hra[$i]} + ${pf[$i]}" | bc -l)

echo "${basic[$i]} 	 | ${da[$i]}  |${hra[$i]}	 | ${pf[$i]}  | ${tsalary[$i]}	">>emp.txt	
done
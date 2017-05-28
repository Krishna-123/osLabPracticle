# calculate the age from the dob
# assume days in a month are 30
echo "enter the dob in YYYY/MM/DD"
read year

IFS="/"
set $year
dy=$1
dm=$2
da=$3

if [ "$dm" == "08" ] 
	 then
	#statements
	dm=8
	elif  [ "$dm" == "09" ] 
		then
	dm=9		
fi

sy=$(date +%Y)
sm=$(date +%m)
sd=$(date +%d)

if [ $dy -gt $sy ]
	then
	echo "not valid date"	
else
	ty=$((sy - dy))	
	if [ $dm -le $sm ] 
		then
		tm=$((sm - dm))	
	else
		tm=$(( ( 12 - dm ) + sm ))
		  if [ $tm -gt 12 ]
		   then
		  	tm=$((tm - 12))
		  else 
		  	ty=$((ty - 1))
		  fi
	fi	  
	if [ $sd -ge $da ]	  	
		then
		 td=$((sd - da))
	else
		tm=$((tm - 1))			 
		td=$sd
    fi
fi
  
  echo "year: $ty Month: $tm days: $td"   

# another menu driven program

select var in today_date files_with_permission calendar currently_logedUsers
do
	case $var in
		today_date )
				sd=`date +%d`
				sm=`date +%m`
				sy=`date +%y`

				echo "$sd-$sm-$sy"
			;;

			files_with_permission)
									ls -al
									;;
			calendar)
				cal 2017;;
			currently_logedUsers)
				who
				;;	
	esac

done
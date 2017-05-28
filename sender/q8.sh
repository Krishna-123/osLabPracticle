# menu driven programm

select var in content no_c_w_l working_directory today_date Exit
 do
 	case  $var in
 		content)
 				cat test.txt ;;
 		no_c_w_l)
 			echo $`wc -l -c -w <test.txt`;;
 		working_directory)
 				pwd ;;
 		today_date)
 			sy=`date +%y`
 			sd=`date +%d`
 			sm=`date +%m`
 			echo "$sd$sm$sy"
 			;;
 		Exit)	
 				exit ;;			
 	esac
 done 
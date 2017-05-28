# menu driven program
select var in content_file list_of_user working_director_and_files Exit
do
	case $var in
		content_file)
						cat A5.sh;;

		list_of_user) 	who;;

		working_director_and_files) pwd
									ls 
									;;
		Exit) exit;;
		esac				
done
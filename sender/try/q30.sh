# check permissions of other users

echo "enter the file name "
read fname

per=$(ls -lg $fname)

otherper=${per:7:3}
echo "$per "
echo "others permissions is $otherper"

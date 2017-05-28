# no of line word and charactes in the file name pass as cmd
# check wheather it is regular or not

echo -e " enter the file name \c"
read fname

if [ -f $fname ] 
	then
echo "yes the file is regular "	
word=$(wc -w<$fname)
characters=$(wc -m<$fname)
lines=$(wc -l<$fname)

echo "words : $word  lines :$lines characters :$characters"
fi


echo Computing: all male members of the data file

grep -i  ",Male" data.text


printf "\n"
printf "\n"
printf "\n"
echo Computing: Find the details of members whose name starts with either ‘A’ or ‘K’.

grep "[0-9],A" data.text
grep "[0-9],K" data.text

printf "\n"
printf "\n"

echo Computing: Write a command to find only phone numbers from the data file.
 
grep -o "[0-9]..-[0-9]..-[0-9]..." data.text


printf "\n"
printf "\n"

echo Computing: Store the data of each column to a new file and name the file as per the column name.


grep -o "^[0-9]*," data.text > id.txt 

grep -o ",[A-Z][a-z]*[^Male]," data.text > First_name.txt

grep -o "[a-z],[A-Z][a-z]*[^Male]," data.text > Last_name.txt

grep -E -o "\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}\b" data.text > email.txt

grep -o "Male\|Female" data.text > Gender.txt

grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}" data.text > Ip_Address.txt

grep -o "...-...-...." data.text > Phone_number.txt


printf "\n"
printf "\n"
echo Computing: Write a command to count the total number of members in the file.

grep -c "^[0-9]" data.text

printf "\n"
printf "\n"

echo Computing: Replace all “.com” string with “.org”

sed 's/.com/.org' email.txt
sed 's/.com/.org' data.text

echo Computing: Parenthesize first character of the first and last name of each member  lastname.

sed 's/\(\b[A-Z]\)/\(\1\)/g' Last_name.txt
sed 's/\(\b[A-Z]\)/\(\1\)/g' First_name.txt

echo Computing: Write a command to delete a particular line from a file *id.txt*.
sed -i '10d' id.txt


echo Computing: Number each line of a file *email.txt*

grep -n "^" email.txt

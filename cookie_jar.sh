#!/usr/bin/env bash
############################
#
# Name: Or Braha
# Date: 23.01.2019
# Purpose: To find files across the system and copy them to home folder.
# Cookie_1 - Copies the contents of /var/log/messages to a new messages.old file and deletes the former.
# Gets a file name and copies it to user's home folder.
# Cookie_3 Puts date command output in 3 lines, showing day, month, and year as 2 digit number.
# Cookie_4 wtf? must mean something with tr
# Cookie_5 wtf?
############################
function archive_and_delete {
sudo cp /var/log/messages /var/log/messages.old
sudo rm -f /var/log/messages
}
function find_and_copy {
read -p "Please enter the name of the file you wish to copy to home folder: " FILENAME
find / -iname $FILENAME -exec cp {} ~/ \;
}

function date_play {
	DATES=$(date +%d-%m-%y)

echo "$DATES" | awk -F "-" '{print "The day is: " $1} '
echo "$DATES" | awk -F "-" '{print "The month is: " $2} '
echo "$DATES" | awk -F "-" '{print "The year is: " $3} '
}


function extract_user {
	
	ALEX_STRING="cn=bruce,dc=vaiolabs,dc=cOm"
echo "$ALEX_STRING" | awk -F "dc=|cn=|," ' { print $2,$4,$6 "\n" } ' | tr 'A-Z' 'a-z' | tr -d '[:space:]' 
}







############################## MENU ############################
function menu_for_script {
	echo "1. Cookie 1 - Copy /var/messages to /var/messages.old and delete the former."
	echo "2. Cookie 2 - Find file and copy to home folder. "
	echo "3. Cookie 3 - Display date in numbers and seperate lines"
	echo "4. Cookie 4 - Extract user name from Alex's string"
	read -p "Please Choose: " button
	if [[ $button -eq 1 ]] 
		then
			archive_and_delete
		elif
			[[ $button -eq 2 ]]
			then
				find_and_copy
			elif
				[[ $button -eq 3 ]]
			then
				date_play
			elif
				[[ $button -eq 4 ]]
			then
				extract_user			
	fi
	}
	menu_for_script

#!/bin/bash
# A. write script that will verify all user password databases :
#    1.create a variable that includes all the files: /etc/passwd /etc/group /etc/shadow /etc/gshdow
#    2. loop through them
#    3. if they exists and are refular file, print it out else print the notification.
array=( "/etc/passwd" "/etc/group" "/etc/shadow" "/etc/gshdow" )
counter=3
while
	[[ $counter -ge 0 ]]
do
	if
	[ -f ${array[$counter]} ];then
	echo "${array[$counter]} Exists and is a regular file."
else
	echo "${array[$counter]} Does not exist and/or is not a regular file"
fi
	let counter-- ; sleep 1

done

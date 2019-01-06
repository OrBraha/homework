#!/bin/bash
#B. write a scipt that gets 4 command and saves them into array. later loop though them and prints them out
#    1. use a loop to get 4 variable in to array
#    2. validate that you have 4 variables.
#    3. use another loop to go through elements of array.
#    4. print out notification message before runnung the command.
# Or Braha.
declare -a array
c=0
while [[ $c -le 3 ]]
do
	echo "Please enter elements: "
	read element
  array[$c]="$element"
  let c++
done
echo "WARNING - WARNING - ABOUT TO SHOW YOU SOME ELEMENTS IN AN ARRAY - WARNING" ; sleep 3
echo  "The FULL array is ${array[@]}"
echo "The first Element is:${array[0]}"
echo "The second Element is:${array[1]}"
echo "The third Element is:${array[2]}"
echo "The fourth Element is:${array[3]}"
c=3
while [[ $c -ge 0 ]]
do
	echo "This is the elments shown in loop: ${array[$c]}"
	let c--
done

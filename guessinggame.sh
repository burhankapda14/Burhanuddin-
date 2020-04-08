#!usr/bin/bash
# This is the guessing game made by burhanuddin kapadwala 

function main(){
while true
do
	echo "please enter your guess:"
	read guess
	if [[ $guess =~ [^0-9] ]]
	then
		echo "$guess is not an Int"
	elif [[ $guess -eq $num ]]
	then
		echo "congratulations!!!!!!!!!!!!!!!!!!!!!"
		echo "Your answer is correct!!!!!!!!!!!!!!!!!!!!!!!"
		break
	elif [[ $guess -gt $num ]]
	then
		echo "$guess is too high "
        else
       	        echo "$guess is too low"
	fi
done
}

echo "@@@@@@@ GAME START @@@@@@@@"
echo "Guess the number of files"
echo "in the current directory."
num=$(ls -l|grep "^-"|wc -l)
guess=-1
main

echo "@@@@@@@@  GAME END  @@@@@@@@@"

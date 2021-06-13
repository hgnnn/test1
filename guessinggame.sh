#!/usr/bin/bash
echo "Guess the number of files in the current directory:"
read number_guessed
function files_in_dir {
	local number=$(ls -l | wc -l)-1
	echo $number
}
correct_number=$(files_in_dir)
while [[ $number_guessed -ne $correct_number ]]
do
	if [[ $number_guessed -gt $correct_number ]]
	then
		echo "Number of files is lower..."
	else
		echo "Number of files is greater.."
	fi
	echo "Next guess: "
	read number_guessed
done

echo "Congratulations! You guessed the number of files!"

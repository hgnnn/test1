readme:
	touch readme.md
	echo "Guessing Game, by Marko Zivanovic" >> readme.md
	date >> readme.md 
	echo "The number of lines in the script is: " >> readme.md
	cat guessinggame.sh | wc -l >> readme.md

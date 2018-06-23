d := $(shell date)
c := $(shell wc -l guessinggame.sh | egrep -o "[0-9]+")

README.md:
	echo "# Coursera Guessing Game" > README.md 
	echo "The program was executed on $(d)<br />" >> README.md
	echo "In total, "$c" lines of code in guessinggame.sh<br />" >> README.md

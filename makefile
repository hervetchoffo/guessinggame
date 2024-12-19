all: README.md

README.md: guessinggame.sh
	echo "# Guessing Game Project" > README.md
	echo "" >> README.md
	echo "## Date and Time" >> README.md
	echo "" >> README.md
	LC_ALL=C date >> README.md
	echo "" >> README.md
	echo "## Number of Lines in guessinggame.sh" >> README.md
	echo "" >> README.md
	wc -l < guessinggame.sh >> README.md

clean:
	rm README.md

all: README.md

README.md: guessinggame.sh
	echo "guessing game project" > README.md
	LC_ALL=C date >> README.md
	wc -l < guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md

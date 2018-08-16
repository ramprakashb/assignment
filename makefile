all: README.md

README.md: guessinggame.sh
	echo "#GUESSINGGAME PROJECT" > README.md
	$ date >> README.md
	wc -l < guessinggame.sh >> README.md

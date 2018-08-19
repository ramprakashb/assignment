all: README.md

README.md: guessinggame.sh
	echo "# GUESSINGGAME PROJECT" > README.md
	echo "Makefile execution time" >> README.md
	$ date >> README.md
	echo "" >> README.md
	echo "lines= ">> README.md | wc -l < guessinggame.sh >> README.md

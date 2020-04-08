all:README.md

README.md:
	touch README.md
	echo "# The Unix Workbench Gussing Game" >> README.md
	echo "### Create date:" >> README.md
	echo $$(date) >> README.md
	echo "### Number of lines in guessinggame.sh file:" >> README.md
	cat guessinggame.sh|wc -l >> README.md

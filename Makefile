# Makefile pour générer le README.md

README.md: guessinggame.sh
	@echo "# Projet Guessing Game" > README.md
	@echo "Date de création: $(shell date)" >> README.md
	@echo "Nombre de lignes dans guessinggame.sh: $(shell wc -l < guessinggame.sh)" >> README.md
	@echo "Le programme vous demande de deviner le nombre de fichiers dans le répertoire actuel." >> README.md
	@echo "" >> README.md
	@echo "Exécution : bash guessinggame.sh" >> README.md

# Cible pour exécuter le jeu
run:
	bash guessinggame.sh

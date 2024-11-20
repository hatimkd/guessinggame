#!/usr/bin/env bash
# File: guessinggame.sh

# Fonction pour compter le nombre de fichiers dans le répertoire actuel
count_files() {
  echo $(ls -1 | wc -l)
}

# Nombre correct de fichiers dans le répertoire
correct_answer=$(count_files)

# Demander à l'utilisateur de deviner
echo "Devinez combien de fichiers se trouvent dans le répertoire actuel."

# Boucle jusqu'à ce que l'utilisateur devine le bon nombre
while true; do
  # Demander une estimation
  read -p "Votre estimation: " guess

  # Vérifier si l'estimation est correcte
  if [[ $guess -eq $correct_answer ]]; then
    echo "Félicitations ! Vous avez deviné le bon nombre de fichiers : $correct_answer"
    break
  elif [[ $guess -lt $correct_answer ]]; then
    echo "Trop bas ! Essayez encore."
  else
    echo "Trop élevé ! Essayez encore."
  fi
done

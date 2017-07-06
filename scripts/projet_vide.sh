#! /usr/bin/env bash
#
# desc: génère un projet vide



projet=$1
path=archives/$1
# tester s'il y a un projet ayant le même nom
if [ -d $path ]; then echo "Vous avez déjà une archive à ce nom"; exit -1; fi
mkdir $path
echo "# $projet" > $path/readme.md
echo "" > $path/readme.md
echo "*Template de site riki.jekyll généré par les outils cli*" > $path/readme.md

# copie des pages standard
mkdir -p $path/pages
touch $path/pages/.gitkeep



# migration des collections
for collection in nouvelles
  do
    mkdir -p $path/collections/$collection
    touch $path/collections/$collection/.gitkeep
  done

# ressources
mkdir -p $path/ressources/images
touch $path/ressources/images/.gitkeep
mkdir -p $path/ressources/descriptions
touch $path/ressources/descriptions/.gitkeep

# utilisateur
mkdir -p $path/utilisateur
touch $path/utilisateur/.gitkeep

# designer
mkdir -p $path/designer
touch $path/designer/.gitkeep

# initialisation git
   # éventuellement, on enregistrera le site à un serveur et on l'incluera comme submodule
git init $path
  # demander l'adresse du serveur git
  # demander le nom d'utilisateur
  # demander dans quelle ressource gpg se trouve les informations d'authentification au serveur + clefs api
  # demander si la clef la configuration ssh est correcte
  # créer un projet sur le serveur
  # git remote add origin git@$serverurl:$username/$projet.git
git add -A
git commit -m "initialisation de votre site riki.jekyll"


git submodule add ./$path
git commit -m "ajout du site $projet"

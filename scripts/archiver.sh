#! /usr/bin/env bash
#
# desc: prendre les fichiers actifs et les archiver (dans le répertoire archives)


# tester s'il y a un projet nom d'archive
 if [ -z "$1" ]; then echo "Il n'y a pas de nom de projet. STOP"; exit -1; fi


path=archives/$1
if [ -d $path ]; then echo "Vous avez déjà une archive à ce nom"; exit -1; fi
mkdir $path

# copie des pages standard
mkdir $path/pages

for file in $(ls *.md)
  do
    # à faire: permettre une liste d'exception
    if [ "$file" != "readme.md" ];
      then
        mv $file $path/pages/.
    fi
  done

# migration des collections
mkdir $path/collections
for collection in nouvelles
  do
    mv _$collection $path/collections/.
  done

# ressources
mkdir $path/ressources
mkdir $path/ressources/images
mkdir $path/ressources/descriptions
mv img/* $path/ressources/images/.
mv _data/res/* $path/ressources/descriptions/.

# utilisateur
mkdir $path/utilisateur
mv _data/usr $path/utilisateur

# designer
mkdir $path/designer/.
mv _data/design $path/designer/.

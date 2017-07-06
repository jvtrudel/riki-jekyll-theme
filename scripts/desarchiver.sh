#! /usr/bin/env bash
#
# desc: prendre les fichiers actifs et les archiver (dans le répertoire archives)


# tester s'il y a un projet nom d'archive
 if [ -z "$1" ]; then echo "Il n'y a pas de nom de projet. STOP"; exit -1; fi

# tester si le projet existe
path=archives/$1
if [ ! -d $path ]; then echo "Vous n'avez pas de projet portant ce nom dans vos archives"; exit -1; fi

# tester s'il y a un projet en place
# 1- pages standard

# 2- collections
# 3- ressources
# 4- utilisateur
# 5- designer


# copie des pages standard
cp $path/pages/* .  2> /dev/null

# migration des collections
for collection in nouvelles
  do
    cp -r $path/collections/$collection/* _$collection/.  2> /dev/null
  done

# ressources
mkdir -p img
cp $path/ressources/images/* img/.  2> /dev/null
mkdir -p _data/res
cp $path/ressources/descriptions/* _data/res/.  2> /dev/null

# utilisateur
mkdir -p _data/usr/
cp $path/utilisateur/* _data/usr/.  2> /dev/null

# designer
mkdir -p _data/design
cp $path/designer/* _data/design/.  2> /dev/null

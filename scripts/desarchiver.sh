#! /usr/bin/env bash
#
# desc: prendre les fichiers actifs et les archiver (dans le répertoire archives)


# tester s'il y a un projet nom d'archive
 if [ -z "$1" ]; then echo "Il n'y a pas de nom de projet. STOP"; exit -1; fi

# tester si le projet existe
path=archives/$1
if [ ! -d $path ]; then echo "Vous n'avez pas de projet portant ce nom dans vos archives"; exit -1; fi
mkdir $path

# tester s'il y a un projet en place
# 1- pages standard

# 2- collections
# 3- ressources
# 4- utilisateur
# 5- designer


# copie des pages standard
mv $path/pages/* .

# migration des collections
for collection in nouvelles
  do
    mv -f $path/collections/_$collection .
  done

# ressources
mkdir -p img
mv -f $path/ressources/images/* img/.
mkdir -p _data/res
mv -f $path/ressources/descriptions/* _data/res/.

# utilisateur
mkdir -p _data/usr/
mv -f $path/utilisateur/* _data/usr/.

# designer
mkdir -p _data/design
mv -f $path/designer/* _data/design/.

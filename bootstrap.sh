#! /usr/bin/env bash
#
# Quelques opérations nécessaire au déploiement du templates

# paramètre
cssFramework="bootstrap" # primerCss ou bootstrap


# mettre à jour et installer le framework primer-css

rm -rf _sass/*

if [ $cssFramework == "primerCss" ]
then
  git submodule update vendors/primer-css
  cp -r `ls -d vendors/primer-css/modules/*/ | awk '{ print substr($0, 1, length($0)-1) }'` _sass/.
fi

if [ $cssFramework == "bootstrap" ]
then
  echo $cssFramework
  git submodule update vendors/bootstrap
  cp -r vendors/bootstrap/scss/* _sass/.
  cp -r vendors/bootstrap/js/dist/* js/.
fi


# Définir le layout général
# options: stack

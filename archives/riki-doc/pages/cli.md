---
layout: basic
meta:
  titre: cli
  bref: >
    Outils **command line interface
menu:
  logo:
    img:
      src: "img/printemps.jpg"
      alt: "Arbre rose au printemps"
    ref: index
  sections:
    - index
    - cli
---
# Outils cli pour développeur

Le thème Riki permet de gérer indépendamment le code source du thème et le contenu. Pour ce faire, nous fournissons quelques scripts pour faciliter les opérations courantes.

Les principales commandes sont:

## riki-install

Installation du contenu à partir de la structure de donnée suivante:

  - mon_projet
    - collections
      - nouvelles
        - fichiers de type nouvelles
      - autre collection
        - fichiers de type autre collection
      - pages
        - mes pages
      - ressources
        - descriptions
          - fichier de description des ressources
        - images
          - mes images
        - videos
          - mes vidéos
      - designer
        - répertoires et fichiers de configuration du site
      - utilisateur
        - répertoire et fichier de configuration utilisateur

## riki-install-css

### SYNOPSIS

    riki-install-css <nom du framework>

### DESCRIPTION

Installe le framework css sélectionné. Les frameworks compatibles (et nécessaires en ce moment) sont:

  - bootstrap
  - riki-css

## riki-archive

### SYNOPSIS

    riki-archive <nom du projet>

### DESCRIPTION

Désinstalle le contenu et archive le projet.

## riki-projet

### SYNOPSIS

    riki-projet <nom du projet>

### DESCRIPTION

Crée un nouveau projet vide. Les noms **riki-dump** et **riki-doc** sont réservés.

## riki-update

### SYNOPSIS

    riki-update <nom de l'archive>

### DESCRIPTION

Récupère le contenu modifié d'une archive.

## riki-doc

### SYNOPSIS

    riki-doc

### DESCRIPTION

Génère et installe la documentation de riki-jekyll-thème.

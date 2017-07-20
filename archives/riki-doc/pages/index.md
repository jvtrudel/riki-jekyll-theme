---
layout: basic
meta:
  titre: sommaire
  bref: >
    Brève description de ce qu'est le thème Jekyll riki et comment s'en servir
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
# Riki, un thème Jekyll

## Séparation des responsabilités

### Utilisateur

  - contenu

### designer

  - structure du site
    - sitemap
    - menus
  - choix de paramètres
    - layouts
    - palette de couleur
    - effets dynamiques
    - ...

### developpeur

   - Création des layouts et des includes
   - ...

# Menu

Le menu est simplement un map vers certaines pages à partir d'un noeud *sections* en yaml:

      sections:
        - index
        - page-2
        - une-autre-page

Les informaitons pertinentes (titre, ... ) sont récupérés dans la page.


# Couleurs

Inspiré du site paletton.com, Riki-thème peu prendre en charge des pallettes de couleur à base de 1,2,3 et 4 couleurs principales. Les palettes sont déposées dans le répertoire `includes/palettes/` et utilise la convension de paletton.com. La palette peut-être simplement désignée par son nom (nom du fichier include).

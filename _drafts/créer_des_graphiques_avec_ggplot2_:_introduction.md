---
title: "Créer des graphiques avec ggplot2 : introduction"
menu_order: 1
post_status: publish
taxonomy:
    category:
        - visualisation
    post_tag:
        - ggplot2
        - graphique
---

# Créer des graphiques avec ggplot2 : Introduction

Le package `ggplot2` est l'un des outils les plus puissants et populaires pour créer des graphiques en R. Il est basé sur la grammaire des graphiques, ce qui signifie qu'il vous permet de construire des graphiques de manière modulaire en ajoutant des couches. Dans cet article, nous allons explorer les bases de `ggplot2` et créer un graphique simple.

## Installation de ggplot2

Avant de commencer, assurez-vous que le package `ggplot2` est installé. Vous pouvez l'installer en utilisant la commande suivante :

```R
install.packages("ggplot2")
```

Ensuite, chargez le package :

```R
library(ggplot2)
```

## Structure de base d'un graphique ggplot2

La structure de base d'un graphique `ggplot2` se compose de trois éléments principaux :

1. **Données** : Le jeu de données que vous souhaitez visualiser.
2. **Aesthetics (aes)** : Les variables que vous souhaitez représenter sur les axes.
3. **Géométrie (geom)** : Le type de graphique que vous souhaitez créer (points, lignes, barres, etc.).

## Exemple concret

Prenons un exemple simple avec le jeu de données intégré `mtcars`, qui contient des informations sur des voitures. Nous allons créer un graphique à dispersion (scatter plot) pour visualiser la relation entre le poids des voitures (`wt`) et leur consommation de carburant (`mpg`).

Voici le code :

```R
# Charger le package ggplot2
library(ggplot2)

# Créer un graphique à dispersion
ggplot(data = mtcars, aes(x = wt, y = mpg)) +
  geom_point() +
  labs(title = "Relation entre le poids et la consommation de carburant",
       x = "Poids (1000 lbs)",
       y = "Consommation (miles par gallon)") +
  theme_minimal()
```

### Explication du code

1. **ggplot(data = mtcars, aes(x = wt, y = mpg))** : Ici, nous spécifions que nous allons utiliser le jeu de données `mtcars`. Nous définissons également les axes avec `aes()`, où `wt` est sur l'axe des x et `mpg` sur l'axe des y.

2. **geom_point()** : Cette fonction ajoute des points au graphique, créant ainsi un graphique à dispersion.

3. **labs()** : Cette fonction permet d'ajouter des titres et des étiquettes aux axes.

4. **theme_minimal()** : Cela applique un thème minimal au graphique, rendant la visualisation plus propre et plus esthétique.

## Conclusion

`ggplot2` est un outil puissant pour créer des graphiques en R. Avec sa structure modulaire, il permet de personnaliser facilement vos visualisations. Dans cet article, nous avons vu comment créer un graphique à dispersion simple, mais `ggplot2` offre de nombreuses autres possibilités pour explorer et visualiser vos données. N'hésitez pas à expérimenter avec d'autres types de graphiques et à ajouter des couches pour enrichir vos visualisations !


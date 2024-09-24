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

# Créer des graphiques avec ggplot2 : introduction

Le package `ggplot2` est l'un des outils les plus puissants et populaires pour créer des graphiques en R. Développé par Hadley Wickham, il repose sur le principe de la grammaire des graphiques, ce qui permet de construire des visualisations de manière cohérente et modulable.

## Installation de ggplot2

Avant de commencer, assurez-vous que le package `ggplot2` est installé. Vous pouvez l'installer en utilisant la commande suivante :

```R
install.packages("ggplot2")
```

## Structure de base d'un graphique avec ggplot2

Pour créer un graphique avec `ggplot2`, vous devez généralement suivre ces étapes :

1. **Créer une base avec `ggplot()`** : Cette étape définit les données et les mappings esthétiques (comme les axes x et y).
2. **Ajouter des couches avec `+`** : C'est ici que vous spécifiez quel type de graphique vous souhaitez créer (par exemple, un scatter plot ou un histogramme).
3. **Personnaliser le graphique** : Vous pouvez ajouter des thèmes, des labels, et d'autres éléments pour améliorer la présentation.

## Exemple concret

Prenons un exemple simple où nous allons créer un graphique de dispersion (scatter plot) pour visualiser la relation entre deux variables dans le dataset `mtcars`, qui contient des informations sur différentes voitures.

```R
# Charger le package ggplot2
library(ggplot2)

# Utiliser le dataset mtcars
data(mtcars)

# Créer un graphique de dispersion
ggplot(data = mtcars, aes(x = wt, y = mpg)) +
  geom_point() +
  labs(title = "Relation entre le poids et la consommation",
       x = "Poids (en 1000 lbs)",
       y = "Consommation (miles par gallon)") +
  theme_minimal()
```

### Explication du code

1. **Chargement du package** : Nous commençons par charger le package `ggplot2` avec `library(ggplot2)`.
2. **Sélection des données** : Nous utilisons le dataset `mtcars`, qui est déjà intégré dans R.
3. **Création de la base de graphique** : `ggplot(data = mtcars, aes(x = wt, y = mpg))` définit que nous allons utiliser `mtcars` comme source de données, avec `wt` (le poids des voitures) sur l'axe des x et `mpg` (la consommation) sur l'axe des y.
4. **Ajout des points** : `geom_point()` ajoute les points au graphique, chacun représentant une voiture.
5. **Ajout de labels** : `labs()` permet de donner un titre au graphique ainsi que des labels pour les axes.
6. **Choix du thème** : `theme_minimal()` applique un thème minimaliste au graphique.

## Conclusion

`ggplot2` est un outil puissant pour créer des graphiques en R. Avec sa syntaxe claire et sa flexibilité, il permet de produire des visualisations de haute qualité facilement. N'hésitez pas à explorer davantage ses fonctionnalités pour enrichir vos analyses.


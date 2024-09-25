---
title: "Créer des boîtes à moustaches (boxplots) avec ggplot2"
menu_order: 1
post_status: publish
taxonomy:
    category:
        - visualisation
    post_tag:
        - ggplot2
        - boxplot
---

# Créer des boîtes à moustaches (boxplots) avec ggplot2 en R

Les boîtes à moustaches, ou boxplots, sont des outils graphiques très utiles pour visualiser la distribution d'un ensemble de données. Elles permettent de mettre en évidence les médianes, les quartiles et les valeurs aberrantes. Dans cet article, nous allons apprendre à créer des boxplots en utilisant le package `ggplot2`, qui est l'un des outils de visualisation les plus populaires en R.

## Installation et chargement de ggplot2

Avant de commencer, assurez-vous que le package `ggplot2` est installé. Vous pouvez l'installer avec la commande suivante :

```R
install.packages("ggplot2")
```

Ensuite, chargez le package :

```R
library(ggplot2)
```

## Exemple de données

Pour illustrer la création de boxplots, nous allons utiliser le jeu de données intégré `mtcars`, qui contient des informations sur différentes voitures. Nous allons créer un boxplot pour visualiser la distribution des miles par gallon (mpg) en fonction du nombre de cylindres (cyl).

## Création du boxplot

Voici un exemple de code pour créer un boxplot avec `ggplot2` :

```R
# Charger le package ggplot2
library(ggplot2)

# Créer le boxplot
ggplot(mtcars, aes(x = factor(cyl), y = mpg)) +
  geom_boxplot(fill = "lightblue", color = "darkblue") +
  labs(title = "Boxplot des miles par gallon en fonction du nombre de cylindres",
       x = "Nombre de cylindres",
       y = "Miles par gallon") +
  theme_minimal()
```

### Explication du code

1. **Chargement des données** : Nous utilisons le jeu de données `mtcars`, qui est déjà disponible dans R.

2. **Fonction `ggplot()`** : Cette fonction initialise le graphique. Nous spécifions le jeu de données `mtcars` et définissons les axes avec `aes()`. Ici, `x` est le nombre de cylindres (cyl) que nous transformons en facteur avec `factor(cyl)` pour que ggplot traite cela comme une variable catégorielle, et `y` est les miles par gallon (mpg).

3. **Ajout du boxplot** : La fonction `geom_boxplot()` crée le boxplot. Nous pouvons personnaliser l'apparence avec des arguments comme `fill` pour la couleur de remplissage et `color` pour la couleur des contours.

4. **Ajout de titres et labels** : Avec `labs()`, nous ajoutons un titre au graphique et des labels aux axes.

5. **Thème minimal** : La fonction `theme_minimal()` applique un thème épuré au graphique.

## Conclusion

Les boxplots sont un excellent moyen de visualiser la distribution des données et de comparer plusieurs groupes. Avec `ggplot2`, il est facile de créer des visualisations élégantes et informatives. N'hésitez pas à expérimenter avec d'autres jeux de données et à personnaliser vos graphiques selon vos besoins !


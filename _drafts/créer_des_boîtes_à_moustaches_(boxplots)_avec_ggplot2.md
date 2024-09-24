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

Les boîtes à moustaches, ou boxplots, sont un outil graphique très utile pour visualiser la distribution d'un jeu de données. Elles permettent de résumer des informations telles que la médiane, les quartiles, et d'identifier les valeurs aberrantes. Dans cet article, nous allons apprendre à créer des boxplots avec le package `ggplot2`, qui est l'un des outils de visualisation les plus populaires en R.

## Installation et chargement de ggplot2

Tout d'abord, assurez-vous que le package `ggplot2` est installé. Si ce n'est pas le cas, vous pouvez l'installer avec la commande suivante :

```R
install.packages("ggplot2")
```

Ensuite, chargez le package en utilisant :

```R
library(ggplot2)
```

## Exemple de création de boxplot

Pour illustrer la création d'un boxplot, nous allons utiliser le jeu de données intégré `mtcars`, qui contient des informations sur des voitures. Nous allons créer un boxplot pour visualiser la distribution des miles par gallon (mpg) en fonction du nombre de cylindres (cyl).

Voici le code pour créer le boxplot :

```R
# Chargement du package ggplot2
library(ggplot2)

# Création du boxplot
ggplot(mtcars, aes(x = factor(cyl), y = mpg)) +
  geom_boxplot(fill = "lightblue", color = "darkblue") +
  labs(title = "Boxplot des miles par gallon en fonction du nombre de cylindres",
       x = "Nombre de cylindres",
       y = "Miles par gallon (mpg)") +
  theme_minimal()
```

### Explication du code

1. **`ggplot(mtcars, aes(x = factor(cyl), y = mpg))`** : Nous initialisons un objet ggplot avec le jeu de données `mtcars`. Nous spécifions que l'axe des x correspond au nombre de cylindres (`cyl`), que nous transformons en facteur pour que chaque catégorie soit traitée séparément. L'axe des y correspond aux miles par gallon (`mpg`).

2. **`geom_boxplot(fill = "lightblue", color = "darkblue")`** : Nous ajoutons une couche de boxplot. Ici, nous définissons la couleur de remplissage des boxplots en bleu clair et la couleur des contours en bleu foncé.

3. **`labs(title = "...", x = "...", y = "...")`** : Cette fonction permet d'ajouter un titre au graphique ainsi que des étiquettes aux axes.

4. **`theme_minimal()`** : Nous appliquons un thème minimaliste pour rendre le graphique plus agréable visuellement.

## Conclusion

Les boxplots sont un excellent moyen d'explorer et de visualiser la distribution de données. Avec `ggplot2`, il est facile de créer des graphiques élégants et informatifs. N'hésitez pas à expérimenter avec d'autres jeux de données et à personnaliser vos graphiques selon vos besoins !


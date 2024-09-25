---
title: "Créer des courbes de densité avec ggplot2"
menu_order: 1
post_status: publish
taxonomy:
    category:
        - visualisation
    post_tag:
        - ggplot2
        - densité
---

# Créer des courbes de densité avec ggplot2 en R

Les courbes de densité sont un excellent moyen de visualiser la distribution d'un ensemble de données. Elles permettent de comprendre la forme de la distribution, d'identifier les pics et de comparer plusieurs distributions. Dans cet article, nous allons apprendre à créer des courbes de densité en utilisant le package `ggplot2` en R.

## Installation et chargement des packages

Avant de commencer, assurez-vous d'avoir installé le package `ggplot2`. Si ce n'est pas déjà fait, vous pouvez l'installer avec la commande suivante :

```R
install.packages("ggplot2")
```

Ensuite, chargez le package :

```R
library(ggplot2)
```

## Exemple de données

Pour cet exemple, nous allons utiliser le jeu de données intégré `mtcars`, qui contient des informations sur différentes voitures. Nous allons créer une courbe de densité pour la variable `mpg` (miles per gallon).

## Création de la courbe de densité

Voici comment créer une courbe de densité avec `ggplot2` :

```R
# Créer la courbe de densité
ggplot(mtcars, aes(x = mpg)) +
  geom_density(fill = "blue", alpha = 0.5) +
  labs(title = "Courbe de densité des miles par gallon (mpg)",
       x = "Miles par gallon (mpg)",
       y = "Densité") +
  theme_minimal()
```

### Explication du code

1. **ggplot(mtcars, aes(x = mpg))** : Cette ligne initialise le graphique en spécifiant le jeu de données (`mtcars`) et la variable à représenter sur l'axe des x (`mpg`).

2. **geom_density(fill = "blue", alpha = 0.5)** : Cette fonction ajoute la courbe de densité au graphique. Nous avons choisi de remplir la courbe avec une couleur bleue et d'appliquer une transparence (`alpha`) de 0.5 pour que la courbe soit légèrement transparente.

3. **labs(...)** : Cette fonction permet d'ajouter des titres et des étiquettes aux axes. Ici, nous avons ajouté un titre au graphique et des étiquettes pour les axes x et y.

4. **theme_minimal()** : Cette fonction applique un thème minimal au graphique, ce qui le rend plus esthétique et facile à lire.

## Conclusion

Les courbes de densité sont un outil puissant pour visualiser la distribution des données. Avec `ggplot2`, il est facile de créer des graphiques élégants et informatifs. N'hésitez pas à expérimenter avec d'autres variables et à personnaliser vos graphiques en modifiant les couleurs, les titres et les thèmes. Bonne visualisation !


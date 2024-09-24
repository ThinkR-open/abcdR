---
title: "Customiser les couleurs des graphiques dans ggplot2"
menu_order: 1
post_status: publish
taxonomy:
    category:
        - visualisation
    post_tag:
        - ggplot2
        - couleurs
---

# Customiser les couleurs des graphiques dans ggplot2

Le package `ggplot2` est l'un des outils les plus puissants pour créer des graphiques en R. L'une des fonctionnalités les plus appréciées de `ggplot2` est la possibilité de personnaliser les couleurs des graphiques. Dans cet article, nous allons voir comment modifier les couleurs pour améliorer la présentation de nos visuels.

## Pourquoi personnaliser les couleurs ?

Personnaliser les couleurs de vos graphiques peut aider à :
- Améliorer la lisibilité.
- Rendre vos graphiques plus attrayants visuellement.
- Mettre en avant certaines informations ou catégories.

## Exemple de personnalisation des couleurs

Pour illustrer cela, nous allons utiliser le jeu de données intégré `mtcars`, qui contient des informations sur différentes voitures. Nous allons créer un graphique de dispersion (scatter plot) pour visualiser la relation entre le poids des voitures (variable `wt`) et leur consommation de carburant (variable `mpg`), tout en personnalisant les couleurs selon le nombre de cylindres (`cyl`).

### Étape 1 : Charger les bibliothèques nécessaires

```R
# Charger la bibliothèque ggplot2
library(ggplot2)
```

### Étape 2 : Créer un graphique de base

Commençons par créer un graphique de dispersion de base :

```R
# Graphique de base
ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point()
```

### Étape 3 : Ajouter des couleurs

Pour ajouter des couleurs en fonction du nombre de cylindres, nous allons modifier l'esthétique `aes()` en ajoutant `color = factor(cyl)` :

```R
# Graphique avec couleurs personnalisées
ggplot(mtcars, aes(x = wt, y = mpg, color = factor(cyl))) +
  geom_point(size = 3) +
  labs(color = "Nombre de cylindres") +
  theme_minimal()
```

### Étape 4 : Personnaliser les couleurs

Pour aller plus loin, nous pouvons personnaliser les couleurs en utilisant la fonction `scale_color_manual()`. Supposons que nous voulons utiliser les couleurs rouge, vert et bleu pour les 4, 6 et 8 cylindres respectivement.

```R
# Graphique avec couleurs personnalisées
ggplot(mtcars, aes(x = wt, y = mpg, color = factor(cyl))) +
  geom_point(size = 3) +
  labs(color = "Nombre de cylindres") +
  scale_color_manual(values = c("4" = "red", "6" = "green", "8" = "blue")) +
  theme_minimal()
```

## Conclusion

Voilà comment vous pouvez facilement personnaliser les couleurs de vos graphiques dans `ggplot2`. En jouant avec les couleurs, vous pouvez rendre vos données plus visuelles et plus faciles à comprendre. N'hésitez pas à explorer d'autres options de personnalisation que `ggplot2` offre pour créer des graphiques qui correspondent à vos besoins et à votre style !


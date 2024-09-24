---
title: "Utiliser ggplotly pour rendre les graphiques interactifs"
menu_order: 1
post_status: publish
taxonomy:
    category:
        - interactivité
    post_tag:
        - ggplotly
        - interactif
---

# Utiliser ggplotly pour rendre les graphiques interactifs en R

## Introduction

Lorsqu'on crée des graphiques en R, la bibliothèque `ggplot2` est souvent le premier choix en raison de sa flexibilité et de sa puissance. Cependant, ces graphiques peuvent parfois manquer d'interactivité, ce qui limite leur utilisation dans des présentations ou des analyses exploratoires. C'est là qu'intervient `plotly`, une bibliothèque qui permet de rendre les graphiques `ggplot2` interactifs grâce à la fonction `ggplotly()`.

Dans cet article, nous allons explorer comment transformer un graphique statique en un graphique interactif en utilisant `ggplot2` et `plotly`.

## Installation des packages

Avant de commencer, assurez-vous d'avoir installé les packages nécessaires. Vous pouvez le faire en exécutant les commandes suivantes dans votre console R :

```R
install.packages("ggplot2")
install.packages("plotly")
```

## Exemple concret

Prenons un exemple simple où nous allons créer un graphique de dispersion (scatter plot) montrant la relation entre le poids et la taille d'une sélection d'individus.

### Étape 1 : Charger les bibliothèques

Nous devons d'abord charger les bibliothèques nécessaires.

```R
library(ggplot2)
library(plotly)
```

### Étape 2 : Créer un jeu de données

Pour notre exemple, nous allons créer un petit jeu de données fictif.

```R
# Création d'un jeu de données
data <- data.frame(
  taille = c(150, 160, 170, 180, 190),
  poids = c(50, 60, 70, 80, 90)
)
```

### Étape 3 : Créer un graphique avec ggplot2

Nous allons maintenant créer un graphique de dispersion avec `ggplot2`.

```R
# Création du graphique
graphique <- ggplot(data, aes(x = taille, y = poids)) +
  geom_point(size = 3, color = "blue") +
  labs(title = "Relation entre la taille et le poids",
       x = "Taille (cm)",
       y = "Poids (kg)")
```

### Étape 4 : Rendre le graphique interactif avec ggplotly

Pour rendre notre graphique interactif, nous allons utiliser la fonction `ggplotly()`.

```R
# Rendre le graphique interactif
graphique_interactif <- ggplotly(graphique)

# Afficher le graphique interactif
graphique_interactif
```

## Explication du code

1. **Chargement des bibliothèques** : Nous chargeons `ggplot2` pour créer le graphique et `plotly` pour le rendre interactif.
2. **Création du jeu de données** : Nous créons un dataframe simple avec des valeurs de taille et de poids.
3. **Création du graphique** : Nous utilisons `ggplot()` pour créer un graphique de dispersion en spécifiant les axes et le style des points.
4. **Interactivité** : La fonction `ggplotly()` prend notre graphique `ggplot` et le transforme en un graphique interactif. Vous pouvez alors survoler les points pour voir les valeurs exactes et interagir avec le graphique de différentes manières.

## Conclusion

Rendre vos graphiques interactifs avec `ggplotly` est un excellent moyen d'améliorer vos visualisations en R. Cela permet une exploration plus profonde des données et rend vos présentations plus engageantes. N'hésitez pas à expérimenter avec différents types de graphiques et à ajouter des éléments interactifs supplémentaires pour enrichir vos analyses.


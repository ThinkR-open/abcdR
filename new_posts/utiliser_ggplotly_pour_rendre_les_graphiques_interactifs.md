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

Dans le monde de la visualisation de données, rendre les graphiques interactifs peut considérablement améliorer l'expérience utilisateur. L'une des bibliothèques les plus populaires pour créer des graphiques en R est `ggplot2`. Cependant, pour ajouter une couche d'interactivité, nous pouvons utiliser la fonction `ggplotly()` de la bibliothèque `plotly`. Cet article vous montrera comment transformer un graphique statique en un graphique interactif en quelques étapes simples.

## Installation des bibliothèques nécessaires

Avant de commencer, assurez-vous d'avoir installé les bibliothèques `ggplot2` et `plotly`. Vous pouvez les installer en utilisant les commandes suivantes :

```R
install.packages("ggplot2")
install.packages("plotly")
```

## Exemple de code

Voici un exemple concret où nous allons créer un graphique de dispersion interactif à partir d'un jeu de données simple. Nous allons utiliser le jeu de données intégré `mtcars`, qui contient des informations sur différentes voitures.

```R
# Charger les bibliothèques
library(ggplot2)
library(plotly)

# Créer un graphique de dispersion avec ggplot2
graphique <- ggplot(mtcars, aes(x = wt, y = mpg, text = paste("Modèle:", rownames(mtcars)))) +
  geom_point(aes(color = factor(cyl)), size = 3) +
  labs(title = "Consommation de carburant en fonction du poids des voitures",
       x = "Poids (en milliers de livres)",
       y = "Consommation (miles par gallon)",
       color = "Nombre de cylindres") +
  theme_minimal()

# Convertir le graphique ggplot en graphique interactif avec ggplotly
graphique_interactif <- ggplotly(graphique, tooltip = "text")

# Afficher le graphique interactif
graphique_interactif
```

## Explications du code

1. **Chargement des bibliothèques** : Nous commençons par charger `ggplot2` pour créer le graphique et `plotly` pour le rendre interactif.

2. **Création du graphique** : Nous utilisons `ggplot()` pour créer un graphique de dispersion. Les axes `x` et `y` représentent respectivement le poids (`wt`) et la consommation de carburant (`mpg`). Nous ajoutons également un texte d'information qui affichera le modèle de la voiture lorsque l'utilisateur survolera un point.

3. **Personnalisation du graphique** : Nous utilisons `geom_point()` pour ajouter des points au graphique, en coloriant les points en fonction du nombre de cylindres (`cyl`). Nous ajoutons des titres et des étiquettes aux axes pour rendre le graphique plus informatif.

4. **Transformation en graphique interactif** : La fonction `ggplotly()` est utilisée pour transformer notre graphique `ggplot` en un graphique interactif. Nous spécifions que nous voulons afficher le texte d'information lorsque l'utilisateur interagit avec les points.

5. **Affichage du graphique** : Enfin, nous affichons le graphique interactif.

## Conclusion

Avec `ggplotly`, il est facile de transformer des graphiques statiques en graphiques interactifs qui permettent une exploration plus approfondie des données. Cela améliore non seulement la présentation, mais aussi la compréhension des informations. N'hésitez pas à expérimenter avec vos propres jeux de données et à ajouter d'autres éléments interactifs pour enrichir vos visualisations !


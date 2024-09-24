---
title: "Créer des notebooks interactifs avec RStudio"
menu_order: 1
post_status: publish
taxonomy:
    category:
        - interactivité
    post_tag:
        - notebooks
        - interactif
---

# Créer des notebooks interactifs avec RStudio

RStudio offre une fonctionnalité puissante permettant de créer des notebooks interactifs, qui sont des documents intégrant à la fois du code R, des résultats et des explications textuelles. Ces notebooks sont particulièrement utiles pour le partage de résultats d'analyse, la documentation de projets ou l'enseignement.

## Qu'est-ce qu'un notebook R ?

Un notebook R est un document au format R Markdown, qui combine du texte en Markdown, du code R et des visualisations. Il permet d'exécuter le code directement dans le document et d'afficher les résultats de manière dynamique.

## Créer un Notebook

Pour créer un nouveau notebook dans RStudio, suivez ces étapes :

1. **Ouvrir RStudio**.
2. **Aller dans "File" > "New File" > "R Notebook"**.

Cela ouvrira un nouvel onglet avec un document R Markdown pré-rempli.

## Exemple de Code

Voici un exemple simple d’un notebook R qui effectue des calculs de base et génère un graphique.

```r
# Charger les bibliothèques nécessaires
library(ggplot2)

# Créer un jeu de données d'exemple
data <- data.frame(
  x = 1:10,
  y = (1:10) * rnorm(10, mean = 5)
)

# Afficher les premières lignes du jeu de données
head(data)

# Tracer les données
ggplot(data, aes(x = x, y = y)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  ggtitle("Exemple de graphique avec ggplot2")
```

## Explications du Code

1. **Chargement de bibliothèques** : Nous utilisons `library(ggplot2)` pour charger la bibliothèque `ggplot2`, qui est utilisée pour créer des graphiques.

2. **Création de données** : Nous générons un petit jeu de données avec deux colonnes : `x` allant de 1 à 10 et `y` qui est une valeur aléatoire multipliée par 5.

3. **Affichage des données** : `head(data)` affiche les premières lignes du jeu de données pour vérifier son contenu.

4. **Création du graphique** : Nous utilisons `ggplot` pour créer un nuage de points (`geom_point()`) et ajouter une ligne de tendance (`geom_smooth()`).

## Exécution du Code

Dans un notebook R, vous pouvez exécuter chaque bloc de code individuellement en cliquant sur le bouton "Run" situé à côté de chaque bloc. Les résultats, y compris les graphiques, seront affichés directement dans le document, permettant une visualisation immédiate des résultats.

## Conclusion

Les notebooks R dans RStudio sont un outil puissant pour la recherche, l'enseignement et la documentation. Ils permettent de combiner code, résultats et explications dans un format interactif et facile à partager. Que ce soit pour des analyses de données ou des présentations, les notebooks R facilitent la communication des résultats de manière claire et efficace. N'hésitez pas à expérimenter et à créer vos propres notebooks pour vos projets !


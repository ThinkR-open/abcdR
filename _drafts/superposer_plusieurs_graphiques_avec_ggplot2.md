---
title: "Superposer plusieurs graphiques avec ggplot2"
menu_order: 1
post_status: publish
taxonomy:
    category:
        - superposition
    post_tag:
        - ggplot2
        - superposition
---

# Superposer plusieurs graphiques avec ggplot2 en R

`ggplot2` est l'un des packages les plus populaires pour la création de graphiques en R. L'une de ses fonctionnalités les plus puissantes est la possibilité de superposer plusieurs graphiques sur une même figure. Cela permet de comparer différentes données visuellement, rendant l'interprétation plus intuitive.

## Exemple concret

Supposons que nous disposions d'un jeu de données sur les ventes mensuelles de deux produits différents. Nous voulons visualiser ces ventes sur le même graphique pour comparer leurs tendances.

### Étape 1 : Installer et charger les packages nécessaires

Si vous n'avez pas encore installé `ggplot2`, vous pouvez le faire avec la commande suivante :

```R
install.packages("ggplot2")
```

Ensuite, nous chargeons le package :

```R
library(ggplot2)
```

### Étape 2 : Créer un jeu de données

Nous allons créer un petit jeu de données pour illustrer notre exemple.

```R
# Création d'un jeu de données
mois <- c("Jan", "Fév", "Mar", "Avr", "Mai", "Jun", "Jul", "Août", "Sep", "Oct", "Nov", "Déc")
ventes_produit_A <- c(200, 250, 300, 400, 450, 500, 600, 700, 800, 900, 950, 1000)
ventes_produit_B <- c(150, 200, 250, 300, 350, 450, 500, 550, 600, 650, 700, 800)

donnees <- data.frame(mois, ventes_produit_A, ventes_produit_B)
```

### Étape 3 : Créer le graphique

Nous allons utiliser `ggplot2` pour tracer les ventes des deux produits sur le même graphique.

```R
# Création du graphique
ggplot(donnees, aes(x = mois)) +
  geom_line(aes(y = ventes_produit_A, color = "Produit A"), size = 1) + 
  geom_line(aes(y = ventes_produit_B, color = "Produit B"), size = 1) +
  labs(title = "Comparaison des ventes mensuelles",
       x = "Mois",
       y = "Ventes",
       color = "Légende") +
  theme_minimal()
```

### Explications du code

1. **`ggplot(donnees, aes(x = mois))`** : Nous initialisons le graphique avec le jeu de données `donnees` en spécifiant que l'axe des x sera constitué des mois.

2. **`geom_line(aes(y = ventes_produit_A, color = "Produit A"), size = 1)`** : Nous ajoutons la première série de données (ventes du produit A) en utilisant `geom_line()`. Nous assignons également une couleur et une taille à la ligne.

3. **`geom_line(aes(y = ventes_produit_B, color = "Produit B"), size = 1)`** : Nous ajoutons la seconde série de données (ventes du produit B) de la même manière.

4. **`labs(...)`** : Cette fonction permet de personnaliser les titres et les labels des axes et de la légende.

5. **`theme_minimal()`** : Nous appliquons un thème minimal au graphique pour le rendre plus esthétique.

### Conclusion

La superposition de graphiques avec `ggplot2` est une technique puissante pour visualiser des données multiples sur un même graphique. Cela permet de réaliser une analyse comparative efficace. Vous pouvez étendre cet exemple en ajoutant d'autres types de géométries ou en personnalisant davantage le graphique selon vos besoins.


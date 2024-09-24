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

Les courbes de densité sont un excellent moyen de visualiser la distribution d'une variable continue. Elles permettent de voir où les valeurs se concentrent et où elles sont rares. Dans cet article, nous allons apprendre à créer des courbes de densité à l'aide du package `ggplot2` en R.

## Installation et chargement de ggplot2

Si vous n'avez pas encore installé le package `ggplot2`, vous pouvez le faire en utilisant la commande suivante :

```R
install.packages("ggplot2")
```

Ensuite, nous devons charger le package :

```R
library(ggplot2)
```

## Exemple concret

Pour illustrer la création de courbes de densité, nous allons utiliser le jeu de données intégré `mtcars`, qui contient des informations sur différentes voitures. Nous allons créer une courbe de densité pour la variable `mpg` (miles per gallon).

### Étape 1 : Préparer les données

Nous n'avons pas besoin de préparer les données, car `mtcars` est déjà prêt à l'emploi. Nous allons directement passer à la création de la courbe de densité.

### Étape 2 : Créer la courbe de densité

Pour créer une courbe de densité, nous allons utiliser la fonction `ggplot()` suivie de `geom_density()`. Voici le code complet :

```R
# Charger le package ggplot2
library(ggplot2)

# Créer une courbe de densité pour la variable mpg
ggplot(mtcars, aes(x = mpg)) +
  geom_density(fill = "blue", alpha = 0.5) +
  labs(title = "Courbe de densité des miles per gallon (mpg)",
       x = "Miles per Gallon (mpg)",
       y = "Densité") +
  theme_minimal()
```

### Explications du code :

- **ggplot(mtcars, aes(x = mpg))** : Nous commençons par initialiser le graphique avec `ggplot()`, en spécifiant le jeu de données `mtcars` et en indiquant que nous voulons tracer la variable `mpg` sur l'axe des x.
  
- **geom_density(fill = "blue", alpha = 0.5)** : Ici, nous ajoutons la courbe de densité avec `geom_density()`. Nous avons choisi de remplir la courbe avec une couleur bleue et d'utiliser un niveau de transparence de 0.5 (alpha).

- **labs()** : Cette fonction permet d'ajouter des titres et des étiquettes aux axes de notre graphique.

- **theme_minimal()** : Enfin, nous appliquons un thème minimal pour rendre le graphique plus esthétique.

### Étape 3 : Interpréter la courbe de densité

La courbe de densité obtenue montre la distribution des valeurs de `mpg` dans le jeu de données `mtcars`. Les pics de la courbe indiquent les plages de valeurs où les voitures ont tendance à consommer le plus ou le moins de carburant. Une courbe plus large indique une plus grande variabilité dans les valeurs de `mpg`.

## Conclusion

Créer des courbes de densité avec `ggplot2` est un processus simple et efficace pour visualiser la distribution des données. Avec quelques lignes de code, vous pouvez obtenir une visualisation informative qui vous aide à mieux comprendre vos données. N'hésitez pas à explorer d'autres variables et à personnaliser vos graphiques en jouant avec les options de `ggplot2` !


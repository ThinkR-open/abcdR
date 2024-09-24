---
title: "Ajouter une régression linéaire à un graphique avec ggplot2"
menu_order: 1
post_status: publish
taxonomy:
    category:
        - visualisation
    post_tag:
        - ggplot2
        - régression
---

# Ajouter une régression linéaire à un graphique avec ggplot2

Le package `ggplot2` est un outil puissant pour la création de graphiques en R. L'une des fonctionnalités intéressantes de `ggplot2` est la capacité d'ajouter une régression linéaire à un graphique de dispersion. Cela permet de visualiser la tendance générale des données.

## Installation et chargement de ggplot2

Si vous n'avez pas encore installé `ggplot2`, vous pouvez le faire en utilisant la commande suivante :

```R
install.packages("ggplot2")
```

Ensuite, chargez le package :

```R
library(ggplot2)
```

## Exemple concret

Imaginons que nous avons un jeu de données simple qui contient les heures d'étude et les notes obtenues par des étudiants. Nous allons créer un graphique de dispersion de ces données et ajouter une ligne de régression linéaire.

### Création des données

Nous allons d'abord créer un petit jeu de données :

```R
# Création d'un dataframe
data <- data.frame(
  heures_etude = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10),
  notes = c(50, 55, 60, 65, 70, 75, 80, 85, 90, 95)
)
```

### Création du graphique

Maintenant, nous allons créer un graphique de dispersion et ajouter une régression linéaire :

```R
# Création du graphique avec ggplot2
ggplot(data, aes(x = heures_etude, y = notes)) +
  geom_point(color = "blue", size = 3) +  # Ajout des points
  geom_smooth(method = "lm", color = "red") +  # Ajout de la ligne de régression
  labs(title = "Relation entre les heures d'étude et les notes",
       x = "Heures d'étude",
       y = "Notes") +
  theme_minimal()
```

### Explications du code

1. **`ggplot(data, aes(x = heures_etude, y = notes))`** : Nous initialisons le graphique en spécifiant notre dataframe `data` et en définissant les axes `x` et `y`.
  
2. **`geom_point()`** : Cette fonction ajoute les points de données au graphique. Ici, nous avons choisi une couleur bleue et une taille de point de 3.

3. **`geom_smooth(method = "lm", color = "red")`** : Cette fonction ajoute une ligne de régression linéaire au graphique. Le paramètre `method = "lm"` indique que nous voulons une régression linéaire, et nous avons choisi une couleur rouge pour la ligne.

4. **`labs()`** : Cette fonction permet d'ajouter des titres et des étiquettes aux axes.

5. **`theme_minimal()`** : Cette fonction applique un thème minimal au graphique pour une présentation plus claire.

## Conclusion

Ajouter une régression linéaire à un graphique avec `ggplot2` est un moyen efficace de visualiser la relation entre deux variables. Grâce à la simplicité de la syntaxe et à la puissance de `ggplot2`, vous pouvez rapidement créer des visualisations informatives pour vos analyses de données. N'hésitez pas à explorer d'autres fonctionnalités de `ggplot2` pour améliorer vos graphiques !


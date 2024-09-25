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

La bibliothèque `ggplot2` est l'un des outils les plus puissants pour la visualisation de données en R. L'une de ses fonctionnalités intéressantes est la possibilité de superposer plusieurs graphiques sur un même graphique. Cela peut être très utile pour comparer différentes séries de données ou pour ajouter des éléments supplémentaires comme des lignes de tendance.

## Exemple concret

Imaginons que nous avons un jeu de données contenant des informations sur les ventes de deux produits différents au fil du temps. Nous allons créer un graphique qui superpose les ventes de ces deux produits.

### Étape 1 : Installer et charger ggplot2

Si vous n'avez pas encore installé `ggplot2`, vous pouvez le faire avec la commande suivante :

```R
install.packages("ggplot2")
```

Ensuite, chargez la bibliothèque :

```R
library(ggplot2)
```

### Étape 2 : Créer un jeu de données

Nous allons créer un jeu de données fictif pour illustrer notre exemple :

```R
# Création d'un jeu de données fictif
data <- data.frame(
  mois = rep(1:12, 2),
  ventes = c(sample(100:200, 12), sample(150:250, 12)),
  produit = rep(c("Produit A", "Produit B"), each = 12)
)
```

### Étape 3 : Créer le graphique

Nous allons maintenant utiliser `ggplot2` pour créer un graphique qui superpose les ventes des deux produits.

```R
# Création du graphique
ggplot(data, aes(x = mois, y = ventes, color = produit)) +
  geom_line(size = 1) +  # Ajout des lignes pour chaque produit
  geom_point(size = 2) +  # Ajout des points pour chaque observation
  labs(title = "Ventes des Produits A et B au cours de l'année",
       x = "Mois",
       y = "Ventes") +
  theme_minimal()  # Application d'un thème minimal
```

### Explication du code

1. **`ggplot(data, aes(x = mois, y = ventes, color = produit))`** : Nous initialisons le graphique avec notre jeu de données. Nous spécifions que l'axe des x sera le mois, l'axe des y sera les ventes, et nous utiliserons la couleur pour distinguer les produits.

2. **`geom_line(size = 1)`** : Cette fonction ajoute des lignes au graphique pour chaque produit. Le paramètre `size` permet de définir l'épaisseur des lignes.

3. **`geom_point(size = 2)`** : Cette fonction ajoute des points sur le graphique pour chaque observation. Cela permet de visualiser les données individuelles.

4. **`labs(...)`** : Cette fonction permet d'ajouter des titres et des étiquettes aux axes.

5. **`theme_minimal()`** : Cette fonction applique un thème minimaliste au graphique, rendant la visualisation plus claire.

### Conclusion

Superposer plusieurs graphiques avec `ggplot2` est un moyen efficace de comparer différentes séries de données. Dans cet exemple, nous avons vu comment visualiser les ventes de deux produits au cours d'une année. En jouant avec les différentes géométries et options de personnalisation, vous pouvez créer des visualisations encore plus informatives et esthétiques. N'hésitez pas à explorer davantage les fonctionnalités de `ggplot2` pour enrichir vos analyses de données !


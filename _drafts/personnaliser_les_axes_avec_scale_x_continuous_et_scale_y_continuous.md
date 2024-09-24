---
title: "Personnaliser les axes avec scale_x_continuous et scale_y_continuous"
menu_order: 1
post_status: publish
taxonomy:
    category:
        - axes
    post_tag:
        - axes
        - ggplot2
---

# Personnaliser les axes avec `scale_x_continuous` et `scale_y_continuous` en R

Dans la visualisation de données avec R, il est souvent important de personnaliser les axes pour améliorer la lisibilité et la présentation de nos graphiques. Les fonctions `scale_x_continuous` et `scale_y_continuous` de la bibliothèque `ggplot2` permettent de modifier les axes des graphiques continus de manière simple et efficace.

## Installation et chargement de ggplot2

Assurez-vous d'avoir installé le package `ggplot2` si ce n'est pas déjà fait. Voici comment l'installer et le charger :

```R
install.packages("ggplot2")
library(ggplot2)
```

## Exemple concret

Prenons un exemple où nous avons un jeu de données sur les ventes d'un produit au fil des mois. Nous allons créer un graphique de type ligne et personnaliser les axes.

### Création des données

Commençons par créer un jeu de données simple :

```R
# Création d'un jeu de données
mois <- c("Jan", "Fév", "Mar", "Avr", "Mai", "Juin")
ventes <- c(150, 200, 250, 300, 350, 400)
data <- data.frame(mois, ventes)
```

### Création du graphique

Nous allons maintenant créer un graphique avec `ggplot2` :

```R
# Création du graphique de base
ggplot(data, aes(x = mois, y = ventes)) +
  geom_line() +
  geom_point()
```

### Personnalisation des axes

Utilisons `scale_x_continuous` et `scale_y_continuous` pour personnaliser les axes. Supposons que nous voulions changer les étiquettes de l'axe des ventes pour les afficher en milliers et les axes pour avoir des limites spécifiques :

```R
# Graphique avec personnalisation des axes
ggplot(data, aes(x = mois, y = ventes)) +
  geom_line() +
  geom_point() +
  scale_x_continuous(breaks = seq(1, 6, 1), labels = mois) +  # Étiquettes personnalisées sur l'axe X
  scale_y_continuous(breaks = seq(0, 400, 50), labels = paste0(seq(0, 400, 50)/1000, "k")) +  # Étiquettes en milliers sur l'axe Y
  labs(title = "Ventes mensuelles", x = "Mois", y = "Ventes (en milliers)")
```

### Explication du code

1. **`scale_x_continuous`** : Cette fonction nous permet de définir les "breaks" (intervalles) sur l'axe X. Ici, nous spécifions que nous voulons des étiquettes pour chaque mois. Les étiquettes sont fournies par le vecteur `mois`.

2. **`scale_y_continuous`** : De même, cette fonction modifie l'axe Y. Nous définissons des "breaks" allant de 0 à 400 par pas de 50. Ensuite, nous formatons les étiquettes pour qu'elles apparaissent en milliers (par exemple, "150k" au lieu de "150").

3. **`labs`** : Cette fonction permet d'ajouter un titre et des étiquettes aux axes.

## Conclusion

La personnalisation des axes est essentielle pour rendre vos graphiques plus informatifs et agréables à lire. Avec `scale_x_continuous` et `scale_y_continuous`, vous pouvez facilement ajuster les étiquettes et les limites de vos axes dans R. N'hésitez pas à expérimenter avec d'autres paramètres pour adapter vos visualisations à


---
title: "Utiliser tidyr::pivot_wider pour transformer des données"
menu_order: 1
post_status: publish
taxonomy:
    category:
        - transformation
    post_tag:
        - pivot_wider
        - transformation
---

# Utiliser `tidyr::pivot_wider` pour transformer des données

Dans le traitement des données, il est souvent nécessaire de transformer la structure des données pour faciliter l'analyse. L'une des fonctions les plus utiles pour cela dans le package `tidyr` est `pivot_wider()`. Cette fonction permet de convertir des données de format long en format large, ce qui peut être particulièrement utile pour des analyses ou des visualisations.

## Qu'est-ce que le format long et le format large ?

- **Format long** : Chaque ligne représente une observation unique, avec des colonnes pour les variables et une colonne pour les valeurs. Par exemple, si nous avons des données sur les ventes de différents produits par mois, chaque ligne pourrait représenter une vente pour un produit donné à un moment donné.

- **Format large** : Chaque ligne représente une entité unique, avec des colonnes pour chaque variable d'intérêt. Dans notre exemple de ventes, chaque produit aurait une colonne pour chaque mois, avec les ventes correspondantes.

## Exemple concret

Imaginons que nous avons un jeu de données sur les ventes de deux produits (A et B) sur trois mois (janvier, février, mars). Voici comment nos données pourraient être structurées en format long :

```r
library(tidyr)
library(dplyr)

# Création d'un jeu de données exemple
ventes_long <- data.frame(
  produit = c("A", "A", "A", "B", "B", "B"),
  mois = c("janvier", "février", "mars", "janvier", "février", "mars"),
  ventes = c(100, 150, 200, 80, 120, 160)
)

print(ventes_long)
```

Ce jeu de données ressemble à ceci :

```
  produit     mois ventes
1       A janvier    100
2       A février    150
3       A    mars    200
4       B janvier     80
5       B février    120
6       B    mars    160
```

Nous souhaitons transformer ce jeu de données en format large, où chaque produit a une colonne pour chaque mois.

## Utilisation de `pivot_wider()`

Pour effectuer cette transformation, nous allons utiliser la fonction `pivot_wider()` :

```r
ventes_large <- ventes_long %>%
  pivot_wider(names_from = mois, values_from = ventes)

print(ventes_large)
```

### Explication du code

- `names_from = mois` : Cette option indique que les noms des nouvelles colonnes (celles correspondant aux mois) doivent être pris de la colonne `mois`.
- `values_from = ventes` : Cette option indique que les valeurs à remplir dans les nouvelles colonnes proviennent de la colonne `ventes`.

Après avoir exécuté ce code, notre jeu de données en format large ressemblera à ceci :

```
# A tibble: 2 x 4
  produit janvier février  mars
  <chr>     <dbl>   <dbl> <dbl>
1 A         100     150   200
2 B          80     120   160
```

## Conclusion

La fonction `pivot_wider()` de `tidyr` est un outil puissant pour transformer des données de format long en format large. Cela facilite l'analyse et la visualisation des données. Dans cet article, nous avons vu un exemple concret de transformation de données de ventes, mais cette méthode peut être appliquée à une variété de jeux de données dans différents contextes. N'hésitez pas à explorer cette fonction pour vos propres analyses !


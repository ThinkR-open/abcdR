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

Dans le cadre de l'analyse de données avec R, il est souvent nécessaire de transformer les données pour les rendre plus faciles à analyser et à visualiser. L'une des fonctions les plus utiles pour cela est `pivot_wider()` du package `tidyr`. Cette fonction permet de convertir des données "longues" en données "larges", facilitant ainsi l'accès aux informations.

## Qu'est-ce que des données longues et larges ?

- **Données longues** : Chaque observation est présentée dans une ligne, avec des colonnes pour les variables. Par exemple, les mesures de plusieurs années pour différents groupes pourraient être dans une seule colonne.
- **Données larges** : Chaque variable est présentée dans une colonne distincte. Cela permet de mieux visualiser certains types de données, comme les résultats d'une enquête.

## Exemple concret

Imaginons que nous avons un jeu de données contenant les ventes de produits sur plusieurs mois, comme ceci :

```r
library(tidyr)
library(dplyr)

# Création d'un dataframe exemple
ventes <- data.frame(
  mois = c("Janvier", "Janvier", "Février", "Février"),
  produit = c("A", "B", "A", "B"),
  ventes = c(100, 150, 200, 250)
)

print(ventes)
```

Ce tableau est un exemple de données longues où chaque ligne représente les ventes d'un produit pour un mois donné.

### Transformation avec `pivot_wider()`

Nous voulons transformer ce tableau pour avoir chaque produit dans une colonne distincte avec les ventes correspondantes. Pour ce faire, nous utiliserons `pivot_wider()`.

Voici comment procéder :

```r
# Transformation des données
ventes_largues <- ventes %>%
  pivot_wider(names_from = produit, values_from = ventes)

print(ventes_largues)
```

### Explication du code

- **`names_from = produit`** : Cela indique à `pivot_wider()` d'utiliser les valeurs de la colonne `produit` pour créer les noms des nouvelles colonnes.
- **`values_from = ventes`** : Cela indique que les valeurs à placer dans ces nouvelles colonnes proviennent de la colonne `ventes`.

Après avoir exécuté ce code, nous obtiendrons un tableau où chaque produit a sa propre colonne, avec les ventes par mois :

```
# A tibble: 2 x 3
  mois    A     B
  <chr> <dbl> <dbl>
1 Janvier  100   150
2 Février   200   250
```

## Conclusion

La fonction `pivot_wider()` de `tidyr` est un outil puissant pour transformer des données longues en données larges. Cela facilite l'analyse et la visualisation des données. En suivant cet exemple, vous pouvez facilement appliquer cette technique à vos propres jeux de données pour les rendre plus exploitables.


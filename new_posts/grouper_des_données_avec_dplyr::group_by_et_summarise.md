---
title: "Grouper des données avec dplyr::group_by et summarise"
menu_order: 1
post_status: publish
taxonomy:
    category:
        - groupement
    post_tag:
        - group_by
        - summarise
---

# Grouper des données avec dplyr::group_by et summarise

Dans l'analyse de données, il est souvent nécessaire de regrouper des données par certaines catégories et de calculer des statistiques résumées pour chaque groupe. Le package `dplyr` de R offre des fonctions puissantes pour effectuer ces opérations de manière efficace et intuitive. Dans cet article, nous allons explorer comment utiliser `dplyr::group_by` et `dplyr::summarise` pour grouper des données et obtenir des résumés.

## Installation et chargement de dplyr

Si vous n'avez pas encore installé le package `dplyr`, vous pouvez le faire avec la commande suivante :

```R
install.packages("dplyr")
```

Ensuite, chargez le package :

```R
library(dplyr)
```

## Exemple concret

Imaginons que nous avons un jeu de données sur les ventes de produits dans un magasin. Ce jeu de données contient les colonnes suivantes : `produit`, `quantite`, et `prix`. Nous souhaitons calculer le total des ventes pour chaque produit.

Voici un exemple de jeu de données :

```R
# Création d'un jeu de données exemple
ventes <- data.frame(
  produit = c("A", "B", "A", "C", "B", "A"),
  quantite = c(10, 5, 8, 2, 3, 7),
  prix = c(100, 200, 100, 300, 200, 100)
)
```

### Utilisation de group_by et summarise

Pour calculer le total des ventes pour chaque produit, nous allons d'abord grouper les données par `produit` avec `group_by`, puis utiliser `summarise` pour calculer la somme des quantités et des ventes (quantité * prix).

Voici comment faire cela :

```R
# Calculer le total des ventes par produit
resultat <- ventes %>%
  group_by(produit) %>%
  summarise(
    total_quantite = sum(quantite),
    total_ventes = sum(quantite * prix)
  )

# Afficher le résultat
print(resultat)
```

### Explication du code

1. **group_by(produit)** : Cette fonction regroupe les données par la colonne `produit`. Chaque groupe correspond à un produit unique.
  
2. **summarise(...)** : Cette fonction permet de créer un résumé pour chaque groupe. Dans notre cas, nous calculons :
   - `total_quantite` : la somme des quantités vendues pour chaque produit.
   - `total_ventes` : la somme des ventes totales, calculée comme `quantite * prix`.

3. **print(resultat)** : Enfin, nous affichons le résultat.

### Résultat attendu

Le résultat affiché devrait ressembler à ceci :

```
# A tibble: 3 × 3
  produit total_quantite total_ventes
  <chr>            <int>        <dbl>
1 A                   25        2500
2 B                    8        1600
3 C                    2         600
```

## Conclusion

Dans cet article, nous avons vu comment utiliser `dplyr::group_by` et `dplyr::summarise` pour grouper des données et calculer des statistiques résumées. Ces fonctions sont très utiles pour analyser des jeux de données et extraire des informations significatives. N'hésitez pas à explorer d'autres fonctions de `dplyr` pour enrichir vos analyses de données !


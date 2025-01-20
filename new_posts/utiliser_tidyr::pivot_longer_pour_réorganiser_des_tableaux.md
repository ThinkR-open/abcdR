---
title: "Utiliser tidyr::pivot_longer pour réorganiser des tableaux"
menu_order: 1
post_status: publish
taxonomy:
    category:
        - réorganisation
    post_tag:
        - pivot_longer
        - réorganiser
---

# Utiliser `tidyr::pivot_longer` pour réorganiser des tableaux

Dans le cadre de l'analyse de données, il est souvent nécessaire de réorganiser les tableaux pour faciliter l'analyse. L'une des fonctions les plus utiles pour cela dans le package `tidyr` est `pivot_longer()`. Cette fonction permet de transformer un tableau large en un tableau long, ce qui est souvent plus adapté pour certaines analyses et visualisations.

## Qu'est-ce qu'un tableau large et un tableau long ?

- **Tableau large** : Les données sont organisées avec des colonnes pour chaque variable. Par exemple, vous pourriez avoir une colonne pour chaque année de vente.
- **Tableau long** : Les données sont organisées avec une colonne pour les variables et une autre pour les valeurs. Cela permet de mieux gérer les données dans des analyses statistiques et des visualisations.

## Exemple concret

Imaginons que nous avons un tableau de ventes de fruits sur plusieurs mois, organisé comme suit :

```r
library(tibble)

# Création d'un tableau large
ventes_fruits <- tibble(
  mois = c("Janvier", "Février", "Mars"),
  pommes = c(30, 45, 25),
  oranges = c(20, 30, 35)
)

print(ventes_fruits)
```

Ce tableau contient des colonnes pour les mois et les ventes de pommes et d'oranges. Cependant, pour certaines analyses, nous préférerions avoir un tableau long.

### Transformation avec `pivot_longer`

Pour transformer ce tableau large en un tableau long, nous allons utiliser `pivot_longer()`. Voici comment procéder :

```r
library(tidyr)

# Transformation du tableau large en tableau long
ventes_long <- ventes_fruits %>%
  pivot_longer(
    cols = c(pommes, oranges),  # Colonnes à transformer
    names_to = "fruit",          # Nom de la nouvelle colonne pour les fruits
    values_to = "quantite"       # Nom de la nouvelle colonne pour les quantités
  )

print(ventes_long)
```

### Explications du code

1. **`cols = c(pommes, oranges)`** : Nous spécifions les colonnes que nous voulons transformer en lignes. Dans ce cas, ce sont les colonnes `pommes` et `oranges`.
2. **`names_to = "fruit"`** : Nous indiquons que les noms des fruits (pommes et oranges) seront stockés dans une nouvelle colonne appelée `fruit`.
3. **`values_to = "quantite"`** : Les valeurs correspondantes (les quantités vendues) seront stockées dans une nouvelle colonne appelée `quantite`.

### Résultat

Après avoir exécuté le code ci-dessus, le tableau `ventes_long` ressemblera à ceci :

```
# A tibble: 6 × 3
  mois    fruit   quantite
  <chr>   <chr>      <dbl>
1 Janvier pommes        30
2 Janvier oranges       20
3 Février pommes        45
4 Février oranges       30
5 Mars    pommes        25
6 Mars    oranges       35
```

## Conclusion

La fonction `pivot_longer()` de `tidyr` est un outil puissant pour réorganiser vos données. En transformant un tableau large en un tableau long, vous facilitez l'analyse et la visualisation de vos données. N'hésitez pas à l'utiliser dans vos projets d'analyse de données pour obtenir des résultats plus clairs et plus exploitables.


---
title: "Calculer des statistiques basiques avec summarise"
menu_order: 1
post_status: publish
taxonomy:
    category:
        - statistiques
    post_tag:
        - summarise
        - statistiques
---

# Calculer des statistiques basiques avec `summarise` en R

La fonction `summarise` de la bibliothèque `dplyr` est un outil puissant pour calculer des statistiques descriptives à partir d'un jeu de données en R. Elle permet de réduire un ensemble de données en une seule ligne par groupe, facilitant ainsi l'analyse des données.

## Installation et chargement des bibliothèques

Avant de commencer, assurez-vous d'avoir installé et chargé le paquet `dplyr`. Si vous ne l'avez pas encore fait, voici comment procéder :

```R
install.packages("dplyr")
library(dplyr)
```

## Exemple de données

Pour illustrer l'utilisation de `summarise`, utilisons un jeu de données fictif sur les ventes d'un magasin :

```R
# Création d'un jeu de données fictif
ventes <- data.frame(
  produit = c("A", "A", "B", "B", "C", "C"),
  prix = c(10, 15, 20, 25, 30, 35),
  quantite = c(1, 2, 1, 3, 2, 1)
)
```

Ce jeu de données comprend trois colonnes : `produit`, `prix` et `quantite`. Chaque ligne représente une vente d'un produit particulier.

## Calculer des statistiques avec `summarise`

Supposons que nous souhaitons calculer le chiffre d'affaires total pour chaque produit. Le chiffre d'affaires peut être calculé en multipliant le `prix` par la `quantite`. Nous allons utiliser `summarise` pour obtenir ces informations :

```R
resultats <- ventes %>%
  group_by(produit) %>%  # Regroupe les données par produit
  summarise(
    chiffre_affaires = sum(prix * quantite)  # Calcule le chiffre d'affaires
  )
```

### Explication du code

1. **group_by(produit)** : Cette fonction regroupe les données par la colonne `produit`, ce qui signifie que toutes les lignes ayant le même produit seront considérées ensemble.
   
2. **summarise(...)** : À l'intérieur de cette fonction, nous définissons les statistiques que nous voulons calculer. Ici, nous créons une nouvelle colonne `chiffre_affaires` qui contient la somme du produit des colonnes `prix` et `quantite`.

3. **sum(prix * quantite)** : Nous multiplions le prix par la quantité pour chaque vente et ensuite nous faisons la somme pour obtenir le chiffre d'affaires total par produit.

### Résultat

Après avoir exécuté le code ci-dessus, la variable `resultats` contiendra le chiffre d'affaires total pour chaque produit :

```R
# Affichage des résultats
print(resultats)
```

Cela affichera une table comme suit :

```
# A tibble: 3 × 2
  produit chiffre_affaires
  <chr>              <dbl>
1 A                     75
2 B                     115
3 C                     215
```

## Conclusion

La fonction `summarise` est essentielle pour effectuer rapidement des analyses statistiques de base sur vos ensembles de données. Grâce à son utilisation conjointe avec `group_by`, vous pouvez facilement obtenir des résumés de vos données en quelques lignes de code. N'hésitez pas à explorer davantage les nombreuses autres fonctions statistiques que `dplyr` propose pour enrichir votre analyse de données en R.


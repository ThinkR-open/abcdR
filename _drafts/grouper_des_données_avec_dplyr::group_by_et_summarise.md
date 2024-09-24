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

# Grouper des données avec dplyr : group_by et summarise

La manipulation des données est une tâche courante en analyse de données, et le package `dplyr` de R offre des fonctions puissantes pour simplifier ce processus. Parmi ces fonctions, `group_by` et `summarise` sont souvent utilisées ensemble pour obtenir des résumés de données groupées. Cet article vous montrera comment utiliser ces fonctions avec un exemple concret.

## Introduction à group_by et summarise

La fonction `group_by` permet de regrouper un ensemble de données en fonction d'une ou plusieurs variables. Une fois les données regroupées, la fonction `summarise` (ou `summarize`) permet de créer des résumés statistiques pour chaque groupe.

### Exemple concret

Imaginons que nous avons un jeu de données contenant des informations sur les ventes de produits dans un magasin. Voici un exemple de jeu de données :

```r
# Chargement des bibliothèques nécessaires
library(dplyr)

# Création d'un data frame d'exemple
ventes <- data.frame(
  produit = c("A", "B", "A", "C", "B", "A", "C"),
  quantite = c(10, 20, 15, 10, 25, 5, 30),
  prix = c(100, 200, 100, 300, 200, 100, 300)
)

# Affichage des données
print(ventes)
```

Ce data frame `ventes` contient trois colonnes : `produit`, `quantite` et `prix`. Nous souhaitons savoir combien de produits ont été vendus et quel est le chiffre d'affaires total pour chaque produit.

### Utilisation de group_by et summarise

Pour obtenir ces informations, nous allons utiliser `group_by` pour regrouper les données par produit, puis `summarise` pour calculer la quantité totale vendue et le chiffre d'affaires total.

Voici comment procéder :

```r
# Regrouper par produit et résumer les données
resultats <- ventes %>%
  group_by(produit) %>%
  summarise(
    quantite_totale = sum(quantite),
    chiffre_affaires = sum(quantite * prix)
  )

# Affichage des résultats
print(resultats)
```

### Explication du code

1. **group_by(produit)** : Cette ligne indique à R de regrouper les données par la colonne `produit`.
2. **summarise(...)** : Ici, nous créons deux nouvelles colonnes :
   - `quantite_totale` qui calcule la somme de la colonne `quantite` pour chaque produit.
   - `chiffre_affaires` qui calcule le total des ventes en multipliant la `quantite` par le `prix` pour chaque produit, puis en faisant la somme.

### Résultat

Après avoir exécuté le code ci-dessus, nous obtiendrons un nouveau data frame `resultats` qui affiche la quantité totale vendue et le chiffre d'affaires pour chaque produit.

## Conclusion

Les fonctions `group_by` et `summarise` de `dplyr` sont des outils puissants pour l'analyse de données. Elles permettent de regrouper les données par catégories et d'obtenir des résumés statistiques facilement. Cet article a illustré leur utilisation avec un exemple simple, mais ces fonctions peuvent être appliquées à des ensembles de données beaucoup plus complexes pour obtenir des insights précieux. 

N'hésitez pas à explorer d'autres fonctions de `dplyr` pour enrichir vos analyses de données !


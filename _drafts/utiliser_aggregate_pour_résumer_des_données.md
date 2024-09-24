---
title: "Utiliser aggregate pour résumer des données"
menu_order: 1
post_status: publish
taxonomy:
    category:
        - résumé
    post_tag:
        - aggregate
        - résumé
---

# Utiliser `aggregate` pour résumer des données en R

La fonction `aggregate` en R est un outil puissant pour résumer des données en fonction de groupes. Elle permet de calculer des statistiques agrégées, telles que la moyenne, la somme ou le nombre d'observations, pour des sous-ensembles de données. Dans cet article, nous allons explorer comment utiliser `aggregate` avec un exemple concret.

## Exemple de données

Supposons que nous avons un jeu de données qui contient les ventes de différents produits dans plusieurs régions. Voici un exemple de jeu de données :

```r
# Création d'un data frame d'exemple
ventes <- data.frame(
  produit = c("A", "A", "B", "B", "C", "C"),
  region = c("Nord", "Sud", "Nord", "Sud", "Nord", "Sud"),
  montant = c(100, 150, 200, 250, 300, 350)
)
```

Ce jeu de données contient trois colonnes : `produit`, `region` et `montant`.

## Résumer les données avec `aggregate`

Nous souhaitons savoir combien chaque produit a généré de ventes dans chaque région. Pour cela, nous allons utiliser la fonction `aggregate`. Voici comment faire :

```r
# Utilisation de aggregate pour résumer les ventes par produit et région
resultat <- aggregate(montant ~ produit + region, data = ventes, FUN = sum)

# Affichage des résultats
print(resultat)
```

### Explication du code

- `montant ~ produit + region` : Cette formule indique que nous voulons résumer la colonne `montant` en fonction des colonnes `produit` et `region`.
- `data = ventes` : Cela spécifie que nous travaillons avec le data frame `ventes`.
- `FUN = sum` : Nous utilisons la fonction `sum` pour calculer le total des montants pour chaque combinaison de produit et de région.

### Résultat

Après avoir exécuté le code ci-dessus, vous obtiendrez un tableau qui résume les ventes totales de chaque produit par région :

```
  produit region montant
1       A   Nord     100
2       A    Sud     150
3       B   Nord     200
4       B    Sud     250
5       C   Nord     300
6       C    Sud     350
```

## Conclusion

La fonction `aggregate` est très utile pour résumer des données en fonction de plusieurs groupes. Dans cet exemple, nous avons calculé les ventes totales par produit et par région, mais vous pouvez l'adapter à d'autres types de résumés statistiques en changeant la fonction utilisée dans l'argument `FUN`. Que ce soit pour calculer des moyennes, des médianes ou d'autres statistiques, `aggregate` est un outil essentiel dans l'analyse de données en R.


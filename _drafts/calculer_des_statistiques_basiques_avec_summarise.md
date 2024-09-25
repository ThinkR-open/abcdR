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

Dans le langage R, la fonction `summarise` (ou `summarize`) est un outil puissant pour effectuer des calculs statistiques sur des ensembles de données. Elle fait partie du package `dplyr`, qui est largement utilisé pour la manipulation de données. Cet article vous montrera comment utiliser `summarise` pour calculer des statistiques de base, comme la moyenne, la médiane, et l'écart type.

## Installation et chargement du package `dplyr`

Avant de commencer, assurez-vous d'avoir installé le package `dplyr`. Vous pouvez l'installer avec la commande suivante :

```R
install.packages("dplyr")
```

Ensuite, chargez le package :

```R
library(dplyr)
```

## Exemple de données

Pour illustrer l'utilisation de `summarise`, nous allons créer un petit jeu de données représentant les notes d'élèves dans une classe :

```R
# Création d'un data frame
data <- data.frame(
  nom = c("Alice", "Bob", "Charlie", "David", "Eva"),
  note = c(85, 92, 78, 90, 88)
)
```

## Utilisation de `summarise`

Nous allons maintenant utiliser `summarise` pour calculer quelques statistiques de base sur les notes des élèves. Voici comment faire :

```R
# Calcul des statistiques de base
statistiques <- data %>%
  summarise(
    moyenne = mean(note),
    mediane = median(note),
    ecart_type = sd(note)
  )

print(statistiques)
```

### Explication du code

1. **Création du data frame** : Nous avons créé un data frame nommé `data` avec deux colonnes : `nom` et `note`.

2. **Utilisation de `summarise`** : 
   - Nous utilisons l'opérateur `%>%` (pipe) pour passer le data frame `data` à la fonction `summarise`.
   - À l'intérieur de `summarise`, nous calculons trois statistiques :
     - `moyenne` : la moyenne des notes avec `mean(note)`.
     - `mediane` : la médiane des notes avec `median(note)`.
     - `ecart_type` : l'écart type des notes avec `sd(note)`.

3. **Affichage des résultats** : Enfin, nous affichons le data frame `statistiques` qui contient nos résultats.

## Résultat attendu

Lorsque vous exécutez le code ci-dessus, vous obtiendrez un résultat similaire à ceci :

```
  moyenne mediane ecart_type
1      86.6      88   5.066202
```

Cela signifie que la moyenne des notes est de 86.6, la médiane est de 88, et l'écart type est d'environ 5.07.

## Conclusion

La fonction `summarise` de `dplyr` est un excellent moyen de calculer rapidement des statistiques de base sur vos données. Que ce soit pour des analyses simples ou pour des explorations plus complexes, `summarise` vous permet d'obtenir des résumés clairs et concis de vos ensembles de données. N'hésitez pas à l'utiliser dans vos propres projets pour simplifier vos analyses statistiques !


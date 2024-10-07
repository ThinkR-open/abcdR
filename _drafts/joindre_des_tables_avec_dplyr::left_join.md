---
title: "Joindre des tables avec dplyr::left_join"
menu_order: 1
post_status: publish
taxonomy:
    category:
        - jointure
    post_tag:
        - left_join
        - tables
---

# Joindre des tables avec dplyr::left_join

Dans l'analyse de données, il est fréquent de devoir combiner plusieurs tables (ou data frames) pour obtenir des informations plus complètes. L'une des fonctions les plus utilisées pour cela est `left_join()` du package `dplyr`. Cet article vous expliquera comment utiliser cette fonction avec un exemple concret.

## Qu'est-ce que `left_join` ?

La fonction `left_join()` permet de joindre deux tables en conservant toutes les lignes de la première table (la table de gauche) et en ajoutant les colonnes de la deuxième table (la table de droite) lorsque les valeurs correspondent. Si aucune correspondance n'est trouvée, les colonnes de la table de droite seront remplies avec des valeurs manquantes (NA).

## Exemple concret

Imaginons que nous avons deux tables : une table `clients` contenant des informations sur des clients et une table `commandes` contenant des informations sur les commandes passées par ces clients.

### Création des tables

Voici comment nous pouvons créer ces deux tables en R :

```R
# Chargement du package dplyr
library(dplyr)

# Création de la table des clients
clients <- data.frame(
  id_client = c(1, 2, 3, 4),
  nom = c("Alice", "Bob", "Charlie", "David")
)

# Création de la table des commandes
commandes <- data.frame(
  id_commande = c(101, 102, 103),
  id_client = c(1, 2, 1),
  produit = c("Livre", "Stylo", "Cahier")
)

# Affichage des tables
print(clients)
print(commandes)
```

### Utilisation de `left_join`

Nous allons maintenant utiliser `left_join()` pour combiner ces deux tables en fonction de la colonne `id_client`. Cela nous permettra d'obtenir une table qui contient les informations des clients ainsi que les produits qu'ils ont commandés.

```R
# Jointure des tables
resultat <- left_join(clients, commandes, by = "id_client")

# Affichage du résultat
print(resultat)
```

### Résultat attendu

Après avoir exécuté le code ci-dessus, le résultat sera le suivant :

```
  id_client     nom id_commande produit
1         1   Alice         101   Livre
2         1   Alice         103  Cahier
3         2     Bob         102   Stylo
4         3 Charlie          NA    <NA>
5         4   David          NA    <NA>
```

### Explications des résultats

Dans le tableau résultant :

- Les clients Alice et Bob apparaissent avec leurs commandes respectives.
- Charlie et David n'ont pas de commandes, donc les colonnes `id_commande` et `produit` sont remplies avec des valeurs manquantes (NA).

## Conclusion

La fonction `left_join()` de `dplyr` est un outil puissant pour combiner des tables en R. Elle vous permet de conserver toutes les lignes de la table de gauche tout en ajoutant des informations de la table de droite lorsque cela est possible. Cela facilite l'analyse des données en vous permettant de travailler avec des ensembles de données plus complets. N'hésitez pas à explorer d'autres types de jointures comme `inner_join()`, `right_join()` et `full_join()` pour répondre à différents besoins d'analyse.


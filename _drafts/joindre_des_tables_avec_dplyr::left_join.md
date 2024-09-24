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

Dans le monde de l'analyse de données, il est fréquent de devoir combiner plusieurs tables (ou data frames) pour obtenir une vue d'ensemble des informations. Une des fonctions les plus utilisées pour ce faire dans le langage R est `left_join()` du package `dplyr`. Cet article vous expliquera comment utiliser cette fonction de manière simple et efficace.

## Qu'est-ce que `left_join` ?

La fonction `left_join()` permet de joindre deux tables en utilisant une clé commune. La principale caractéristique d'un "left join" est qu'il conserve toutes les lignes de la table de gauche (la première table mentionnée) et ajoute les colonnes de la table de droite (la deuxième table mentionnée) lorsque les clés correspondent. Si aucune correspondance n'est trouvée, les colonnes de la table de droite auront des valeurs `NA`.

## Exemple concret

Imaginons que nous avons deux tables : une table contenant des informations sur des employés et une autre table contenant des informations sur les départements. Voici un exemple simple en R :

### Création des tables

```r
# Chargement du package dplyr
library(dplyr)

# Création de la table des employés
employes <- data.frame(
  id_employe = c(1, 2, 3, 4),
  nom = c("Alice", "Bob", "Charlie", "David"),
  id_departement = c(1, 2, 1, 3)
)

# Création de la table des départements
departements <- data.frame(
  id_departement = c(1, 2, 3),
  nom_departement = c("Ressources Humaines", "Informatique", "Marketing")
)
```

### Utilisation de `left_join`

Pour joindre ces deux tables sur la colonne `id_departement`, nous allons utiliser `left_join()` :

```r
# Jointure des tables
resultat <- left_join(employes, departements, by = "id_departement")

# Affichage du résultat
print(resultat)
```

### Résultat attendu

Le résultat de cette jointure sera une nouvelle table qui contient toutes les informations des employés, ainsi que le nom de leur département respectif :

```
  id_employe     nom id_departement         nom_departement
1          1   Alice              1 Ressources Humaines
2          2     Bob              2        Informatique
3          3 Charlie              1 Ressources Humaines
4          4   David              3           Marketing
```

## Explications

Dans cet exemple :

- La table `employes` contient quatre employés, chacun ayant un identifiant de département.
- La table `departements` contient trois départements avec leur identifiant correspondant.
- Lorsque nous appliquons `left_join(employes, departements, by = "id_departement")`, R combine les deux tables en utilisant `id_departement` comme clé de jointure.
- Le résultat contient toutes les lignes de la table `employes`, même celles pour lesquelles il n'y a pas de correspondance dans la table `departements`. Dans notre exemple, toutes les correspondances ont été trouvées, et aucune valeur `NA` n'apparaît.

## Conclusion

La fonction `left_join()` de `dplyr` est un outil puissant pour combiner des tables en R. Elle permet de maintenir toutes les informations de la table de gauche tout en ajoutant des informations pertinentes de la table de droite. En comprenant comment et quand utiliser cette fonction, vous serez en mesure d'effectuer des analyses plus complètes et informatives sur vos données.


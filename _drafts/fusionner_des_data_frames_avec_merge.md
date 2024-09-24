---
title: "Fusionner des data frames avec merge"
menu_order: 1
post_status: publish
taxonomy:
    category:
        - fusion
    post_tag:
        - merge
        - data frame
---

# Fusionner des Data Frames avec `merge` en R

La fusion de data frames est une tâche courante en analyse de données, permettant de combiner plusieurs ensembles de données en un seul en fonction de colonnes communes. En R, la fonction `merge` est un outil puissant et flexible pour réaliser cette opération.

## Qu'est-ce que `merge` ?

La fonction `merge` permet de combiner deux data frames en fonction d'une ou plusieurs colonnes qui agissent comme clés de jointure. Elle prend en entrée deux data frames et propose plusieurs options pour définir comment les données doivent être fusionnées.

## Syntaxe de base

La syntaxe de la fonction `merge` est la suivante :

```R
merge(x, y, by = "nom_colonne", all = FALSE)
```

- `x` : le premier data frame.
- `y` : le deuxième data frame.
- `by` : le nom de la colonne (ou des colonnes) sur laquelle la fusion doit se faire.
- `all` : un argument logique qui détermine si toutes les lignes des deux data frames doivent être incluses (`TRUE`) ou seulement celles qui ont des correspondances (`FALSE`).

## Exemple concret

Imaginons que nous avons deux data frames : un contenant des informations sur des employés et un autre contenant des informations sur leurs départements.

```R
# Création du premier data frame : employés
employes <- data.frame(
  id_employe = c(1, 2, 3, 4),
  nom = c("Alice", "Bob", "Charlie", "David"),
  id_departement = c(10, 20, 10, 30)
)

# Création du deuxième data frame : départements
departements <- data.frame(
  id_departement = c(10, 20, 30),
  nom_departement = c("Ressources Humaines", "IT", "Finance")
)

# Fusion des deux data frames sur la colonne id_departement
resultat <- merge(employes, departements, by = "id_departement")

# Affichage du résultat
print(resultat)
```

### Explications du code

1. **Création des data frames** : Nous avons d'abord créé deux data frames, `employes` et `departements`, contenant respectivement les informations des employés et des départements.
  
2. **Fusion** : Ensuite, nous avons utilisé la fonction `merge` pour fusionner ces deux data frames sur la colonne `id_departement`. Cela signifie que R va combiner les lignes des deux data frames où les valeurs de `id_departement` correspondent.

3. **Affichage** : Enfin, nous affichons le résultat de la fusion.

### Résultat

Le résultat de la fusion ressemblera à ceci :

```
  id_departement      nom id_employe       nom_departement
1             10    Alice          1 Ressources Humaines
2             10  Charlie          3 Ressources Humaines
3             20      Bob          2                 IT
4             30    David          4             Finance
```

## Conclusion

La fonction `merge` en R est un outil essentiel pour combiner des ensembles de données. Que vous ayez besoin d'une jointure interne, externe, ou d'autres types de jointures, `merge` vous offre la flexibilité nécessaire pour gérer vos données efficacement. N'hésitez pas à explorer les différents arguments de la fonction pour adapter la fusion à vos besoins spécifiques.


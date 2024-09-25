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

La fusion de data frames est une opération courante en R, surtout lorsque vous travaillez avec des ensembles de données qui partagent des colonnes communes. La fonction `merge()` est un outil puissant pour combiner ces data frames en fonction de clés communes. Dans cet article, nous allons explorer comment utiliser `merge()` avec un exemple concret.

## Qu'est-ce que `merge()` ?

La fonction `merge()` permet de combiner deux data frames en fonction d'une ou plusieurs colonnes qui contiennent des valeurs communes. Cela fonctionne de manière similaire à une jointure en SQL. Vous pouvez spécifier si vous souhaitez effectuer une jointure interne, externe, à gauche ou à droite.

## Syntaxe de `merge()`

La syntaxe de base de `merge()` est la suivante :

```R
merge(x, y, by = "nom_colonne_commune", all = FALSE)
```

- `x` : le premier data frame.
- `y` : le deuxième data frame.
- `by` : le nom de la colonne commune sur laquelle vous souhaitez fusionner.
- `all` : un argument logique qui détermine le type de jointure (par défaut, `FALSE` pour une jointure interne).

## Exemple concret

Imaginons que nous avons deux data frames : `df1` contenant des informations sur des employés et `df2` contenant des informations sur leurs départements.

```R
# Création des data frames
df1 <- data.frame(
  id = c(1, 2, 3, 4),
  nom = c("Alice", "Bob", "Charlie", "David"),
  id_departement = c(101, 102, 101, 103)
)

df2 <- data.frame(
  id_departement = c(101, 102, 103),
  nom_departement = c("Ressources Humaines", "Informatique", "Marketing")
)

# Affichage des data frames
print(df1)
print(df2)

# Fusion des data frames
resultat <- merge(df1, df2, by = "id_departement")

# Affichage du résultat
print(resultat)
```

### Explication du code

1. **Création des data frames** : Nous avons créé `df1` avec des colonnes `id`, `nom` et `id_departement`, et `df2` avec `id_departement` et `nom_departement`.

2. **Fusion des data frames** : Nous utilisons `merge(df1, df2, by = "id_departement")` pour fusionner les deux data frames sur la colonne `id_departement`. Cela signifie que nous allons combiner les lignes de `df1` et `df2` où les valeurs de `id_departement` correspondent.

3. **Affichage du résultat** : Le data frame résultant contient toutes les colonnes de `df1` et `df2`, mais seulement pour les lignes où `id_departement` correspond dans les deux data frames.

### Résultat

Le data frame `resultat` ressemblera à ceci :

```
  id_departement     nom id
1             101   Alice  1
2             101 Charlie  3
3             102     Bob  2
4             103   David  4
```

## Conclusion

La fonction `merge()` est un outil essentiel pour combiner des data frames en R. En utilisant des colonnes communes, vous pouvez facilement créer un ensemble de données plus riche et plus informatif. N'hésitez pas à explorer les options supplémentaires de `merge()` pour personnaliser vos jointures selon vos besoins.


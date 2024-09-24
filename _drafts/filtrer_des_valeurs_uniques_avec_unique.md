---
title: "Filtrer des valeurs uniques avec unique"
menu_order: 1
post_status: publish
taxonomy:
    category:
        - filtrage
    post_tag:
        - unique
        - filtre
---

# Filtrer des valeurs uniques avec `unique` en R

Dans le langage R, il est souvent nécessaire de travailler avec des données qui contiennent des valeurs répétées. Pour extraire uniquement les valeurs uniques d'un vecteur ou d'une colonne d'un dataframe, la fonction `unique()` est la solution idéale. Cet article vous montrera comment utiliser cette fonction de manière concrète.

## Qu'est-ce que `unique()` ?

La fonction `unique()` en R permet de retourner un vecteur, une matrice ou un dataframe en ne conservant que les valeurs uniques. Cela signifie que toutes les valeurs dupliquées seront supprimées, et seules les valeurs distinctes resteront.

## Exemple concret

Imaginons que nous avons un vecteur de données qui contient des noms de fruits, dont certains sont répétés. Nous souhaitons obtenir une liste de ces fruits sans doublons.

Voici un exemple de code R qui illustre cela :

```R
# Création d'un vecteur avec des fruits, incluant des doublons
fruits <- c("Pomme", "Banane", "Orange", "Pomme", "Fraise", "Banane", "Kiwi")

# Affichage du vecteur original
print("Vecteur original :")
print(fruits)

# Utilisation de la fonction unique() pour filtrer les valeurs uniques
fruits_uniques <- unique(fruits)

# Affichage des fruits uniques
print("Fruits uniques :")
print(fruits_uniques)
```

### Explication du code

1. **Création du vecteur** : Nous avons créé un vecteur `fruits` qui contient plusieurs noms de fruits, certains étant répétés.
2. **Affichage du vecteur original** : On utilise `print()` pour afficher les valeurs du vecteur initial.
3. **Filtrage des valeurs uniques** : La fonction `unique(fruits)` est utilisée pour extraire uniquement les noms de fruits uniques. Le résultat est stocké dans le vecteur `fruits_uniques`.
4. **Affichage des fruits uniques** : Enfin, nous affichons les valeurs uniques obtenues.

## Résultat

Lorsque vous exécutez ce code, vous obtiendrez la sortie suivante :

```
[1] "Vecteur original :"
[1] "Pomme"  "Banane" "Orange" "Pomme"  "Fraise" "Banane" "Kiwi"
[1] "Fruits uniques :"
[1] "Pomme"  "Banane" "Orange" "Fraise" "Kiwi"
```

Comme vous pouvez le voir, le vecteur `fruits_uniques` ne contient que des noms de fruits distincts, sans répétitions.

## Conclusion

La fonction `unique()` est un outil puissant et simple à utiliser pour filtrer les valeurs uniques dans vos données R. Que vous travailliez avec des vecteurs, des matrices ou des dataframes, cette fonction vous aidera à nettoyer vos données et à obtenir des résultats plus précis. N'hésitez pas à l'intégrer dans votre flux de travail d'analyse de données !


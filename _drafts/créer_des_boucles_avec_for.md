---
title: "Créer des boucles avec for"
menu_order: 1
post_status: publish
taxonomy:
    category:
        - boucle
    post_tag:
        - for
        - boucle
---

# Créer des boucles avec `for` en R

Les boucles sont un élément fondamental de la programmation qui permettent d'exécuter un bloc de code plusieurs fois. En R, la boucle `for` est souvent utilisée pour itérer sur des vecteurs, des listes, ou d'autres structures de données. Cet article vous montrera comment créer une boucle `for` simple avec un exemple concret.

## Syntaxe de la boucle `for`

La syntaxe de base d'une boucle `for` en R est la suivante :

```R
for (variable in collection) {
  # Code à exécuter
}
```

- `variable` : un nom qui prendra successivement chaque valeur de `collection`.
- `collection` : un vecteur ou une liste sur lequel on souhaite itérer.

## Exemple concret

Imaginons que nous voulons calculer le carré des nombres de 1 à 5 et afficher le résultat. Voici comment nous pouvons le faire avec une boucle `for`.

### Code R

```R
# Création d'un vecteur contenant les nombres de 1 à 5
nombres <- 1:5

# Boucle for pour calculer et afficher le carré de chaque nombre
for (nombre in nombres) {
  carre <- nombre^2
  cat("Le carré de", nombre, "est", carre, "\n")
}
```

### Explication du code

1. Nous créons d'abord un vecteur `nombres` qui contient les valeurs de 1 à 5 en utilisant l'opérateur `:`.

2. Ensuite, nous utilisons une boucle `for` pour itérer sur chaque élément du vecteur `nombres`.
   - À chaque itération, la variable `nombre` prend la valeur actuelle de l'élément dans `nombres`.

3. À l'intérieur de la boucle, nous calculons le carré de `nombre` en utilisant l'opérateur `^`.

4. Nous utilisons la fonction `cat()` pour afficher le résultat dans la console. Le `"\n"` à la fin de la chaîne permet d'ajouter une nouvelle ligne après chaque affichage.

### Résultat attendu

Lorsque vous exécutez le code ci-dessus, vous devriez voir la sortie suivante dans la console :

```
Le carré de 1 est 1 
Le carré de 2 est 4 
Le carré de 3 est 9 
Le carré de 4 est 16 
Le carré de 5 est 25 
```

## Conclusion

Les boucles `for` en R sont un outil puissant et facile à utiliser pour exécuter des tâches répétitives. Dans cet article, nous avons vu comment créer une boucle `for` pour calculer et afficher le carré des nombres de 1 à 5. Vous pouvez utiliser cette structure pour d'autres tâches où vous devez traiter des éléments d'une collection. N'hésitez pas à expérimenter avec vos propres exemples pour vous familiariser avec les boucles en R !


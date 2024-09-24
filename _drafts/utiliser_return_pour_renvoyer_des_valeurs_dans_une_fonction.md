---
title: "Utiliser return pour renvoyer des valeurs dans une fonction"
menu_order: 1
post_status: publish
taxonomy:
    category:
        - fonction
    post_tag:
        - return
        - fonction
---

# Utiliser `return` pour renvoyer des valeurs dans une fonction en R

En R, les fonctions sont des blocs de code qui permettent d'exécuter des tâches spécifiques. Pour qu'une fonction soit utile, elle doit souvent renvoyer des valeurs. C'est là qu'intervient l'instruction `return()`. Cette instruction permet de spécifier quel résultat doit être renvoyé par la fonction.

## Syntaxe de base

La syntaxe de la fonction `return()` est simple :

```r
return(valeur)
```

Ici, `valeur` représente le résultat que vous souhaitez renvoyer. Si vous omettez l'instruction `return()`, R renverra automatiquement la dernière valeur calculée dans la fonction.

## Exemple concret

Prenons un exemple simple où nous voulons créer une fonction qui calcule le carré d'un nombre. Voici comment nous pourrions le faire en utilisant `return()` :

```r
# Définition de la fonction
carrer <- function(x) {
  resultat <- x^2        # Calcul du carré
  return(resultat)      # Renvoi du résultat
}

# Appel de la fonction
valeur <- 5
carré_de_valeur <- carrer(valeur)
print(carré_de_valeur)  # Affiche 25
```

### Explication du code

1. **Définition de la fonction** : Nous définissons une fonction nommée `carrer` qui prend un argument `x`.
2. **Calcul du carré** : À l'intérieur de la fonction, nous calculons le carré de `x` et le stockons dans la variable `resultat`.
3. **Utilisation de `return()`** : Nous utilisons `return(resultat)` pour renvoyer la valeur calculée à l'appelant.
4. **Appel de la fonction** : Nous appelons la fonction avec la valeur `5` et stockons le résultat dans la variable `carré_de_valeur`.
5. **Affichage du résultat** : Enfin, nous affichons le résultat avec `print()`.

## Conclusion

L'instruction `return()` est un moyen pratique de renvoyer des valeurs depuis une fonction en R. Elle rend votre code plus clair et explicite, ce qui est particulièrement utile lorsque vous travaillez avec des fonctions plus complexes qui peuvent avoir plusieurs résultats à renvoyer. N'hésitez pas à l'utiliser pour améliorer la lisibilité et la fonctionnalité de votre code R !


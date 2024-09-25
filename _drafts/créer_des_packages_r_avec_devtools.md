---
title: "Créer des packages R avec devtools"
menu_order: 1
post_status: publish
taxonomy:
    category:
        - packages
    post_tag:
        - devtools
        - package
---

# Créer des packages R avec devtools

Créer un package R peut sembler intimidant au premier abord, mais avec l'aide de la bibliothèque `devtools`, ce processus devient beaucoup plus accessible. Dans cet article, nous allons vous guider à travers les étapes nécessaires pour créer un package R simple.

## Étape 1 : Installer et charger devtools

Avant de commencer, assurez-vous d'avoir installé le package `devtools`. Si ce n'est pas déjà fait, vous pouvez l'installer avec la commande suivante :

```R
install.packages("devtools")
```

Ensuite, chargez le package :

```R
library(devtools)
```

## Étape 2 : Créer un nouveau package

Pour créer un nouveau package, utilisez la fonction `create()` de `devtools`. Par exemple, créons un package appelé `monPackage` :

```R
create("monPackage")
```

Cette commande va créer un dossier nommé `monPackage` avec la structure de base d'un package R.

## Étape 3 : Ajouter une fonction

Maintenant, ajoutons une fonction à notre package. Créez un fichier R dans le dossier `R` de votre package. Vous pouvez le faire directement dans RStudio ou en utilisant la fonction `file.create()`.

Pour cet exemple, créons une fonction simple qui additionne deux nombres. Créez un fichier nommé `addition.R` dans le dossier `R` et ajoutez le code suivant :

```R
#' Additionne deux nombres
#'
#' @param a Un nombre
#' @param b Un nombre
#' @return La somme de a et b
#' @export
addition <- function(a, b) {
  return(a + b)
}
```

### Explications :
- Les lignes commençant par `#'` sont des commentaires qui servent à documenter la fonction. Ils seront utilisés pour générer la documentation du package.
- `@param` décrit les paramètres de la fonction.
- `@return` décrit la valeur retournée par la fonction.
- `@export` indique que cette fonction doit être accessible aux utilisateurs du package.

## Étape 4 : Documenter le package

Pour générer la documentation de votre package, utilisez la fonction `document()` :

```R
document("monPackage")
```

Cela créera des fichiers de documentation dans le dossier `man` de votre package.

## Étape 5 : Installer et tester le package

Pour installer votre package localement, utilisez la fonction `install()` :

```R
install("monPackage")
```

Une fois installé, vous pouvez charger votre package et tester la fonction `addition` :

```R
library(monPackage)

# Testons la fonction
resultat <- addition(3, 5)
print(resultat)  # Cela devrait afficher 8
```

## Conclusion

Vous avez maintenant créé un package R simple avec `devtools` ! Vous avez appris à créer une structure de package, à ajouter une fonction, à documenter votre code et à installer le package. Avec ces bases, vous pouvez explorer des fonctionnalités plus avancées et créer des packages plus complexes. N'hésitez pas à consulter la documentation de `devtools` pour approfondir vos connaissances.


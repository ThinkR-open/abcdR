---
title: "Utiliser roxygen2 pour documenter un package"
menu_order: 1
post_status: publish
taxonomy:
    category:
        - documentation
    post_tag:
        - roxygen2
        - documentation
---

# Utiliser roxygen2 pour documenter un package R

La documentation est un aspect essentiel du développement de packages en R. Une bonne documentation aide les utilisateurs à comprendre comment utiliser votre package et ses fonctions. `roxygen2` est un outil populaire qui facilite la création de documentation en utilisant des commentaires dans le code. Dans cet article, nous allons voir comment utiliser `roxygen2` pour documenter un package R de manière simple et efficace.

## Installation de roxygen2

Avant de commencer, assurez-vous d'avoir installé le package `roxygen2`. Vous pouvez l'installer depuis CRAN avec la commande suivante :

```R
install.packages("roxygen2")
```

## Structure d'un package R

Un package R doit avoir une structure spécifique. Voici les éléments de base :

- Un dossier principal avec le nom de votre package.
- Un sous-dossier `R/` pour les fichiers de code R.
- Un fichier `DESCRIPTION` pour décrire le package.
- Un fichier `NAMESPACE` pour gérer l'exportation des fonctions.

## Exemple de documentation avec roxygen2

Imaginons que nous avons une fonction simple qui additionne deux nombres. Nous allons créer un package appelé `monPackage` et documenter cette fonction.

### Étape 1 : Créer la fonction

Dans le dossier `R/`, créons un fichier appelé `addition.R` et ajoutons la fonction suivante :

```R
# addition.R

addition <- function(a, b) {
  return(a + b)
}
```

### Étape 2 : Documenter la fonction avec roxygen2

Pour documenter la fonction, nous allons ajouter des commentaires `roxygen2` juste au-dessus de la définition de la fonction. Voici comment faire :

```R
#' Additionne deux nombres
#'
#' Cette fonction prend deux nombres en entrée et retourne leur somme.
#'
#' @param a Un nombre.
#' @param b Un nombre.
#' @return La somme de a et b.
#' @examples
#' addition(2, 3) # retourne 5
#' addition(-1, 1) # retourne 0
#' @export
addition <- function(a, b) {
  return(a + b)
}
```

### Explication des tags roxygen2

- `#'` : Indique que le texte suivant est un commentaire de documentation.
- `@param` : Décrit un paramètre de la fonction.
- `@return` : Indique ce que la fonction retourne.
- `@examples` : Fournit des exemples d'utilisation de la fonction.
- `@export` : Indique que la fonction doit être exportée pour être accessible aux utilisateurs du package.

### Étape 3 : Générer la documentation

Après avoir ajouté la documentation, vous devez générer les fichiers de documentation. Dans le répertoire principal de votre package, exécutez la commande suivante :

```R
library(roxygen2)
roxygen2::roxygenise()
```

Cette commande va créer ou mettre à jour le fichier `NAMESPACE` et générer la documentation en format Rd dans le dossier `man/`.

### Étape 4 : Vérifier la documentation

Pour vérifier que la documentation a été correctement générée, vous pouvez utiliser la fonction `?` suivie du nom de votre fonction dans la console R :

```R
?addition
```

Cela ouvrira la documentation de la fonction `addition`, où vous pourrez voir la description, les paramètres, le retour et les exemples.

## Conclusion

Utiliser `roxygen2` pour documenter un package R est un moyen efficace et simple de s'assurer que votre code est bien documenté. En ajoutant des commentaires clairs et en utilisant les tags appropriés, vous pouvez créer une documentation utile pour vous et pour les utilisateurs de votre package. N'hésitez pas


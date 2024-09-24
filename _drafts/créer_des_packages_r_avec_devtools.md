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

# Créer des Packages R avec devtools

Créer un package R peut sembler intimidant au premier abord, mais avec l'aide de la bibliothèque `devtools`, cela devient un processus beaucoup plus simple et structuré. Dans cet article, nous allons passer en revue les étapes de base pour créer votre propre package R.

## Prérequis

Avant de commencer, assurez-vous d'avoir installé `devtools`. Vous pouvez l'installer depuis CRAN avec la commande suivante :

```R
install.packages("devtools")
```

## Étape 1 : Créer un nouveau package

Pour créer un nouveau package, utilisez la fonction `create()` de `devtools`. Voici comment procéder :

```R
library(devtools)

# Créez un nouveau package appelé "monPackage"
create("monPackage")
```

Cela créera un répertoire nommé `monPackage` avec la structure de base d'un package R.

## Étape 2 : Ajouter une fonction

Une fois le package créé, vous pouvez ajouter une fonction. Par exemple, créons une fonction simple qui calcule le carré d'un nombre.

1. Allez dans le répertoire de votre package :
   ```R
   setwd("monPackage/R")
   ```

2. Créez un fichier R, par exemple `carre.R`, et ajoutez-y le code suivant :

```R
#' Calcule le carré d'un nombre
#'
#' @param x Un nombre
#' @return Le carré de x
#' @export
carre <- function(x) {
  return(x^2)
}
```

## Étape 3 : Documenter votre fonction

Il est important de documenter vos fonctions pour faciliter leur utilisation. `devtools` utilise `roxygen2` pour générer la documentation automatiquement. Pour documenter votre fonction, ajoutez des commentaires au-dessus de votre fonction, comme montré dans l'exemple ci-dessus.

Ensuite, générez la documentation avec :

```R
document()
```

Cela créera un fichier `NAMESPACE` et un dossier `man` avec la documentation de votre fonction.

## Étape 4 : Installer et tester votre package

Pour tester votre package, vous devez l'installer. Depuis le répertoire principal de votre package, exécutez :

```R
install()
```

Ensuite, vous pouvez charger votre package et utiliser votre fonction :

```R
library(monPackage)

# Testons la fonction
resultat <- carre(4)
print(resultat)  # Devrait afficher 16
```

## Étape 5 : Partager votre package

Une fois que vous êtes satisfait de votre package, vous pouvez le partager. Vous pouvez le publier sur CRAN ou le partager via GitHub. Pour le publier sur CRAN, assurez-vous de respecter les lignes directrices de CRAN concernant la soumission de packages.

## Conclusion

Créer un package R avec `devtools` est un processus direct qui vous permet de structurer et de partager votre code de manière efficace. Avec les étapes simples décrites dans cet article, vous pouvez commencer à développer et à distribuer vos propres outils R. N'hésitez pas à explorer davantage les fonctionnalités de `devtools` pour enrichir vos packages !


---
title: "Lister des fichiers dans un répertoire avec list.files"
menu_order: 1
post_status: publish
taxonomy:
    category:
        - gestion de fichiers
    post_tag:
        - list.files
        - répertoire
---

# Lister des fichiers dans un répertoire avec `list.files`

En R, il est fréquent de travailler avec des fichiers et des répertoires. La fonction `list.files()` est un outil pratique pour lister les fichiers présents dans un répertoire donné. Cet article vous expliquera comment utiliser cette fonction de manière simple et efficace.

## Qu'est-ce que `list.files()` ?

La fonction `list.files()` permet de récupérer les noms des fichiers dans un répertoire spécifié. Elle est très utile pour explorer le contenu d'un dossier ou pour effectuer des opérations sur plusieurs fichiers à la fois.

## Syntaxe de base

La syntaxe de `list.files()` est la suivante :

```R
list.files(path = ".", pattern = NULL, all.files = FALSE, full.names = FALSE, recursive = FALSE)
```

### Paramètres principaux

- `path` : le chemin du répertoire à explorer. Par défaut, il s'agit du répertoire de travail actuel (`"."`).
- `pattern` : une expression régulière pour filtrer les fichiers selon leur nom.
- `all.files` : un booléen indiquant s'il faut lister tous les fichiers, y compris ceux qui commencent par un point (fichiers cachés). Par défaut, c'est `FALSE`.
- `full.names` : si `TRUE`, renvoie le chemin complet des fichiers, sinon, seuls les noms de fichiers sont renvoyés.
- `recursive` : si `TRUE`, listera les fichiers dans les sous-répertoires.

## Exemple concret

Imaginons que vous souhaitiez lister tous les fichiers `.csv` dans un répertoire nommé "data". Voici comment vous pouvez le faire :

```R
# Spécifier le chemin du dossier
chemin_dossier <- "data"

# Lister les fichiers .csv dans le dossier
fichiers_csv <- list.files(path = chemin_dossier, pattern = "\\.csv$", full.names = TRUE)

# Afficher les résultats
print(fichiers_csv)
```

### Explications du code

1. **Spécification du chemin** : Nous définissons le chemin du répertoire que nous voulons explorer avec la variable `chemin_dossier`.

2. **Utilisation de `list.files()`** : Nous appelons `list.files()` en spécifiant le chemin, en utilisant `pattern` pour ne récupérer que les fichiers qui se terminent par `.csv` (l'expression régulière `\\.csv$` indique que le nom doit se terminer par `.csv`). Nous avons également choisi `full.names = TRUE` pour obtenir le chemin complet des fichiers.

3. **Affichage des résultats** : Enfin, nous utilisons `print()` pour afficher la liste des fichiers `.csv` trouvés dans le répertoire.

## Conclusion

La fonction `list.files()` est un outil puissant pour gérer les fichiers dans R. Que vous souhaitiez explorer un dossier ou préparer des analyses sur plusieurs fichiers, elle vous simplifiera la tâche. N'hésitez pas à expérimenter avec les différents paramètres pour adapter la fonction à vos besoins spécifiques !


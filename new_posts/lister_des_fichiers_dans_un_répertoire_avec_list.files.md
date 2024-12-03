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

# Lister des fichiers dans un répertoire avec `list.files` en R

R est un langage de programmation très utilisé pour l'analyse de données et la manipulation de fichiers. L'une des tâches courantes lors de la gestion de données consiste à lister les fichiers présents dans un répertoire. Pour cela, la fonction `list.files()` est particulièrement utile. Dans cet article, nous allons explorer comment utiliser cette fonction de manière simple et efficace.

## Qu'est-ce que `list.files()` ?

La fonction `list.files()` permet de récupérer les noms des fichiers présents dans un répertoire spécifié. Elle peut également filtrer les fichiers selon des critères spécifiques, comme les extensions de fichiers.

## Syntaxe de `list.files()`

La syntaxe de base de la fonction est la suivante :

```R
list.files(path = ".", pattern = NULL, full.names = FALSE, recursive = FALSE)
```

### Paramètres :

- **path** : Le chemin du répertoire dont vous souhaitez lister les fichiers. Par défaut, il s'agit du répertoire de travail actuel (indiqué par ".").
- **pattern** : Une expression régulière pour filtrer les fichiers selon leur nom. Par exemple, vous pouvez l'utiliser pour ne lister que les fichiers `.csv`.
- **full.names** : Un booléen qui indique si vous souhaitez obtenir le chemin complet des fichiers (`TRUE`) ou seulement leurs noms (`FALSE`).
- **recursive** : Un booléen qui permet de lister les fichiers dans les sous-répertoires (`TRUE`) ou seulement dans le répertoire spécifié (`FALSE`).

## Exemple concret

Imaginons que vous avez un répertoire contenant plusieurs fichiers de données, et que vous souhaitez lister tous les fichiers CSV. Voici comment vous pouvez le faire :

```R
# Définir le chemin du répertoire
chemin_repertoire <- "chemin/vers/votre/repertoire"

# Lister les fichiers CSV dans le répertoire
fichiers_csv <- list.files(path = chemin_repertoire, pattern = "\\.csv$", full.names = TRUE)

# Afficher la liste des fichiers
print(fichiers_csv)
```

### Explications du code :

1. **Définir le chemin** : Nous définissons une variable `chemin_repertoire` qui contient le chemin vers le répertoire où se trouvent nos fichiers.
   
2. **Lister les fichiers** : Nous utilisons `list.files()` pour lister tous les fichiers qui se terminent par `.csv`. Le `pattern` utilise une expression régulière pour filtrer les fichiers. Le `full.names = TRUE` nous permet d'obtenir le chemin complet des fichiers.

3. **Afficher les résultats** : Enfin, nous utilisons `print()` pour afficher la liste des fichiers CSV trouvés dans le répertoire.

## Conclusion

La fonction `list.files()` est un outil puissant pour gérer et explorer les fichiers dans un répertoire en R. Que vous souhaitiez simplement lister tous les fichiers ou filtrer par type, cette fonction vous permet de le faire facilement. N'hésitez pas à expérimenter avec les différents paramètres pour répondre à vos besoins spécifiques.


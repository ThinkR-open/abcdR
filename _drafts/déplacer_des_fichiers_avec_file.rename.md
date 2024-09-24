---
title: "Déplacer des fichiers avec file.rename"
menu_order: 1
post_status: publish
taxonomy:
    category:
        - gestion de fichiers
    post_tag:
        - rename
        - fichier
---

# Déplacer des fichiers avec `file.rename` en R

Dans le langage de programmation R, la fonction `file.rename` est un outil pratique pour déplacer ou renommer des fichiers. Cet article vous expliquera comment utiliser cette fonction de manière concrète.

## Qu'est-ce que `file.rename` ?

La fonction `file.rename` permet de modifier le nom d'un fichier ou de le déplacer vers un autre emplacement sur votre système de fichiers. Elle prend deux arguments : le chemin actuel du fichier (ou son nom) et le nouveau chemin (ou le nouveau nom) que vous souhaitez lui donner.

## Syntaxe de `file.rename`

```R
file.rename(from, to)
```

- `from` : le chemin actuel du fichier ou le nom du fichier à renommer/déplacer.
- `to` : le nouveau chemin ou le nouveau nom que vous souhaitez donner au fichier.

## Exemple concret

Imaginons que vous avez un fichier texte nommé "rapport.txt" situé dans un dossier appelé "Documents". Vous souhaitez déplacer ce fichier dans un autre dossier nommé "Archives" qui est également dans "Documents".

### Étape 1 : Créer les fichiers et dossiers (facultatif)

Pour cet exemple, vous pouvez créer les dossiers et le fichier en utilisant R :

```R
# Créer les dossiers
dir.create("Documents")
dir.create("Documents/Archives")

# Créer un fichier texte exemple
writeLines("Ceci est le contenu du rapport.", "Documents/rapport.txt")
```

### Étape 2 : Déplacer le fichier

Maintenant, vous pouvez utiliser `file.rename` pour déplacer le fichier "rapport.txt" vers le dossier "Archives".

```R
# Déplacement du fichier
file.rename("Documents/rapport.txt", "Documents/Archives/rapport.txt")
```

### Étape 3 : Vérifier le déplacement

Pour vérifier que le fichier a bien été déplacé, vous pouvez lister les fichiers dans le dossier "Archives" :

```R
# Lister les fichiers dans le dossier Archives
list.files("Documents/Archives")
```

Si tout s'est bien passé, vous devriez voir "rapport.txt" dans la liste des fichiers du dossier "Archives".

## Conclusion

La fonction `file.rename` est un moyen simple et efficace de déplacer ou renommer des fichiers en R. En quelques lignes de code, vous pouvez organiser vos fichiers comme vous le souhaitez. N'hésitez pas à explorer davantage cette fonction et à l'utiliser dans vos projets pour gérer vos fichiers de manière optimale.


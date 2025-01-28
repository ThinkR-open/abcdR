---
title: "Écrire des fichiers CSV avec write.csv"
menu_order: 1
post_status: publish
taxonomy:
    category:
        - écriture de données
    post_tag:
        - CSV
        - écriture
---

# Écrire des fichiers CSV avec `write.csv` en R

Le format CSV (Comma-Separated Values) est un format de fichier très utilisé pour stocker des données tabulaires. En R, la fonction `write.csv` permet d'exporter des données sous forme de fichier CSV de manière simple et efficace. Dans cet article, nous allons explorer comment utiliser cette fonction avec un exemple concret.

## Qu'est-ce que `write.csv` ?

La fonction `write.csv` est utilisée pour écrire des data frames R dans un fichier CSV. Elle prend en entrée un data frame et le nom du fichier dans lequel vous souhaitez sauvegarder les données. Par défaut, `write.csv` ajoute une virgule comme séparateur et inclut les noms des colonnes en première ligne.

## Syntaxe de `write.csv`

La syntaxe de base de la fonction est la suivante :

```R
write.csv(x, file, row.names = TRUE, ...)
```

- `x` : le data frame que vous souhaitez écrire dans le fichier CSV.
- `file` : le nom du fichier de sortie (avec l'extension `.csv`).
- `row.names` : un argument logique qui indique si les noms de lignes doivent être écrits dans le fichier. Par défaut, il est réglé sur `TRUE`.

## Exemple concret

Imaginons que nous avons un data frame contenant des informations sur des étudiants, avec leur nom, leur âge et leur note. Voici comment créer ce data frame et l'écrire dans un fichier CSV.

```R
# Création d'un data frame
etudiants <- data.frame(
  Nom = c("Alice", "Bob", "Charlie"),
  Age = c(20, 21, 22),
  Note = c(15.5, 16.0, 14.5)
)

# Affichage du data frame
print(etudiants)

# Écriture du data frame dans un fichier CSV
write.csv(etudiants, file = "etudiants.csv", row.names = FALSE)
```

### Explications du code

1. **Création du data frame** : Nous avons créé un data frame nommé `etudiants` qui contient trois colonnes : `Nom`, `Age`, et `Note`. Chaque colonne contient des données sur trois étudiants.

2. **Affichage du data frame** : La fonction `print` est utilisée pour afficher le contenu du data frame dans la console.

3. **Écriture dans un fichier CSV** : La fonction `write.csv` est appelée avec le data frame `etudiants` et le nom du fichier de sortie `"etudiants.csv"`. L'argument `row.names = FALSE` est utilisé pour ne pas inclure les noms de lignes dans le fichier CSV.

## Conclusion

La fonction `write.csv` est un outil puissant pour exporter des données en R. Grâce à sa simplicité, elle permet de sauvegarder facilement des data frames au format CSV, ce qui est très utile pour partager des données ou les utiliser dans d'autres applications. N'hésitez pas à essayer cette fonction avec vos propres données !


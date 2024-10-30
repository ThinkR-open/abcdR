---
title: "Créer et écrire des fichiers Excel avec writexl"
menu_order: 1
post_status: publish
taxonomy:
    category:
        - écriture de données
    post_tag:
        - Excel
        - écriture
---

# Créer et écrire des fichiers Excel avec `writexl`

Dans le monde de l'analyse de données, il est souvent nécessaire de sauvegarder les résultats sous forme de fichiers Excel. Le package `writexl` en R est un outil simple et efficace pour écrire des données dans des fichiers Excel au format `.xlsx`. Cet article vous guidera à travers les étapes de l'installation de `writexl`, de la création d'un dataframe et de l'écriture de ce dataframe dans un fichier Excel.

## Installation du package

Avant de commencer, vous devez installer le package `writexl` si ce n'est pas déjà fait. Vous pouvez l'installer depuis CRAN en utilisant la commande suivante :

```R
install.packages("writexl")
```

## Création d'un DataFrame

Un DataFrame est une structure de données très utilisée en R pour stocker des données sous forme de tableau. Voici un exemple simple de création d'un DataFrame :

```R
# Charger le package
library(writexl)

# Créer un DataFrame
data <- data.frame(
  Nom = c("Alice", "Bob", "Charlie"),
  Âge = c(25, 30, 35),
  Ville = c("Paris", "Lyon", "Marseille")
)

# Afficher le DataFrame
print(data)
```

Dans cet exemple, nous avons créé un DataFrame nommé `data` qui contient trois colonnes : `Nom`, `Âge`, et `Ville`.

## Écriture du DataFrame dans un fichier Excel

Une fois que vous avez votre DataFrame prêt, vous pouvez l'écrire dans un fichier Excel en utilisant la fonction `write_xlsx()` du package `writexl`. Voici comment procéder :

```R
# Écrire le DataFrame dans un fichier Excel
write_xlsx(data, "donnees.xlsx")
```

Cette commande crée un fichier nommé `donnees.xlsx` dans votre répertoire de travail actuel, contenant les données du DataFrame.

## Conclusion

Le package `writexl` est un moyen simple et efficace d'exporter des données R vers des fichiers Excel. Grâce à cet article, vous avez appris à installer le package, à créer un DataFrame et à écrire ce DataFrame dans un fichier Excel. Vous pouvez maintenant utiliser ces compétences pour sauvegarder vos analyses et partager vos résultats avec d'autres utilisateurs.

N'hésitez pas à explorer d'autres fonctionnalités de `writexl` pour personnaliser vos fichiers Excel, comme l'ajout de plusieurs feuilles ou la modification de la mise en forme.


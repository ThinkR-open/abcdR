---
title: "Lire des fichiers JSON avec jsonlite"
menu_order: 1
post_status: publish
taxonomy:
    category:
        - lecture de données
    post_tag:
        - JSON
        - lecture
---

# Lire des fichiers JSON avec jsonlite en R

Le format JSON (JavaScript Object Notation) est largement utilisé pour l'échange de données entre un serveur et une application web. En R, le package `jsonlite` permet de lire et d'écrire facilement des fichiers JSON. Dans cet article, nous allons voir comment utiliser `jsonlite` pour lire des fichiers JSON.

## Installation du package jsonlite

Si vous n'avez pas encore installé le package `jsonlite`, vous pouvez le faire en utilisant la commande suivante :

```R
install.packages("jsonlite")
```

## Lire un fichier JSON

Pour lire un fichier JSON, nous allons utiliser la fonction `fromJSON()`. Cette fonction prend en entrée le chemin du fichier JSON et renvoie une liste ou un data frame en fonction de la structure du JSON.

### Exemple de fichier JSON

Imaginons que nous avons un fichier nommé `data.json` avec le contenu suivant :

```json
[
  {
    "nom": "Alice",
    "age": 30,
    "ville": "Paris"
  },
  {
    "nom": "Bob",
    "age": 25,
    "ville": "Lyon"
  }
]
```

Ce fichier contient un tableau d'objets avec des informations sur des personnes.

### Code R pour lire le fichier JSON

Voici comment nous pouvons lire ce fichier JSON en R :

```R
# Charger le package jsonlite
library(jsonlite)

# Lire le fichier JSON
data <- fromJSON("data.json")

# Afficher les données
print(data)
```

### Explication du code

1. **Charger le package** : Nous commençons par charger le package `jsonlite` avec `library(jsonlite)`.
2. **Lire le fichier JSON** : Nous utilisons la fonction `fromJSON()` pour lire le fichier `data.json`. Le résultat est stocké dans la variable `data`.
3. **Afficher les données** : Enfin, nous affichons les données lues avec `print(data)`.

### Résultat

Après avoir exécuté le code ci-dessus, la sortie affichera un data frame avec les colonnes `nom`, `age`, et `ville`, contenant les informations des personnes.

## Conclusion

Le package `jsonlite` est un outil puissant et facile à utiliser pour travailler avec des fichiers JSON en R. En utilisant la fonction `fromJSON()`, vous pouvez rapidement charger des données JSON dans votre environnement R et les manipuler comme bon vous semble. N'hésitez pas à explorer d'autres fonctionnalités de `jsonlite`, comme l'écriture de fichiers JSON avec la fonction `toJSON()`.


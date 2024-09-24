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

Le format JSON (JavaScript Object Notation) est largement utilisé pour l'échange de données. En R, le package `jsonlite` nous permet de lire et d'écrire des fichiers JSON de manière simple et efficace. Dans cet article, nous allons explorer comment utiliser `jsonlite` pour lire des fichiers JSON et extraire des données.

## Installation de jsonlite

Si vous n'avez pas encore installé le package `jsonlite`, vous pouvez le faire en utilisant la fonction `install.packages()` :

```R
install.packages("jsonlite")
```

## Lire un fichier JSON

Pour lire un fichier JSON, nous allons utiliser la fonction `fromJSON()`. Voici un exemple concret. Supposons que nous avons un fichier JSON nommé `data.json` qui contient les informations suivantes :

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

### Exemple de code

Voici comment lire ce fichier JSON en R :

```R
# Charger le package jsonlite
library(jsonlite)

# Lire le fichier JSON
data <- fromJSON("data.json")

# Afficher les données
print(data)
```

### Explication du code

1. **Chargement du package** : Nous commençons par charger le package `jsonlite` qui contient la fonction `fromJSON()` nécessaire pour lire les fichiers JSON.
   
2. **Lecture du fichier JSON** : La fonction `fromJSON("data.json")` lit le fichier `data.json` et convertit son contenu en une structure de données R, généralement un data frame.

3. **Affichage des données** : Enfin, nous utilisons `print(data)` pour afficher le contenu des données lues.

## Travailler avec les données

Une fois que nous avons lu les données, nous pouvons les manipuler comme n'importe quel autre data frame en R. Par exemple, pour accéder à l'âge de la première personne, nous pouvons faire :

```R
age_alice <- data[1, "age"]
print(age_alice)  # Affiche 30
```

## Conclusion

Le package `jsonlite` est un outil puissant et facile à utiliser pour lire des fichiers JSON en R. Avec quelques lignes de code, vous pouvez importer vos données JSON et commencer à les analyser. Que ce soit pour des projets personnels ou professionnels, maîtriser la lecture de fichiers JSON est une compétence précieuse pour tout data scientist ou analyste de données.


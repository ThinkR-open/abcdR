---
title: "Lire des fichiers CSV avec read.csv"
menu_order: 1
post_status: publish
taxonomy:
    category:
        - lecture de données
    post_tag:
        - CSV
        - lecture
---

# Lire des fichiers CSV avec read.csv en R

Le format CSV (Comma-Separated Values) est un format de fichier très courant pour le stockage de données tabulaires. En R, la fonction `read.csv` est utilisée pour lire ces fichiers et les convertir en data frames, qui sont des structures de données très pratiques pour l'analyse de données.

## Qu'est-ce qu'un fichier CSV ?

Un fichier CSV est un fichier texte où chaque ligne représente une observation et chaque colonne représente une variable. Les valeurs sont séparées par des virgules (ou parfois par d'autres délimiteurs comme des points-virgules). Par exemple, un fichier CSV pourrait ressembler à ceci :

```
Nom,Âge,Ville
Alice,30,Paris
Bob,25,Lyon
Charlie,35,Marseille
```

## Utilisation de read.csv

La fonction `read.csv` est très simple à utiliser. Voici la syntaxe de base :

```R
data <- read.csv("chemin/vers/fichier.csv", header = TRUE, sep = ",")
```

- `chemin/vers/fichier.csv` : le chemin d'accès au fichier CSV que vous souhaitez lire.
- `header` : un argument logique qui indique si la première ligne du fichier contient les noms des colonnes. Par défaut, il est réglé sur `TRUE`.
- `sep` : le caractère utilisé pour séparer les valeurs. Par défaut, il est réglé sur `","`.

## Exemple concret

Imaginons que nous avons un fichier CSV nommé `donnees.csv` contenant les informations suivantes :

```
Nom,Age,Ville
Alice,30,Paris
Bob,25,Lyon
Charlie,35,Marseille
```

Pour lire ce fichier dans R, vous pouvez utiliser le code suivant :

```R
# Lire le fichier CSV
donnees <- read.csv("donnees.csv", header = TRUE, sep = ",")

# Afficher les données
print(donnees)
```

### Explication du code

1. **Lire le fichier** : La fonction `read.csv` lit le fichier `donnees.csv` et stocke le contenu dans la variable `donnees`.
2. **Afficher les données** : La fonction `print` affiche le contenu de la variable `donnees` dans la console.

Après avoir exécuté ce code, vous devriez voir une sortie ressemblant à ceci :

```
      Nom Age     Ville
1   Alice  30     Paris
2     Bob  25      Lyon
3 Charlie  35 Marseille
```

## Conclusion

La fonction `read.csv` est un outil puissant et simple pour importer des données à partir de fichiers CSV dans R. En utilisant cette fonction, vous pouvez facilement commencer à analyser vos données et à réaliser des visualisations. N'hésitez pas à explorer d'autres options de lecture de fichiers en R pour répondre à vos besoins spécifiques !


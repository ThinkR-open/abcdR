---
title: "Envoyer des requêtes SQL depuis R avec dplyr"
menu_order: 1
post_status: publish
taxonomy:
    category:
        - bases de données
    post_tag:
        - dplyr
        - SQL
---

# Envoyer des requêtes SQL depuis R avec dplyr

`dplyr` est un package très populaire dans l'écosystème R, qui facilite la manipulation de données. Une de ses fonctionnalités intéressantes est la possibilité d'envoyer des requêtes SQL directement à une base de données. Cela peut être particulièrement utile lorsque vous travaillez avec de grandes quantités de données qui sont stockées dans une base de données relationnelle.

## Installation des packages nécessaires

Avant de commencer, assurez-vous d'avoir installé les packages `dplyr` et `DBI`. Vous pouvez les installer avec les commandes suivantes :

```R
install.packages("dplyr")
install.packages("DBI")
```

## Connexion à une base de données

Pour illustrer l'envoi de requêtes SQL, nous allons d'abord établir une connexion à une base de données. Dans cet exemple, nous utiliserons SQLite, une base de données légère qui ne nécessite pas de serveur. Voici comment créer une connexion :

```R
library(DBI)

# Créer une connexion à une base de données SQLite
con <- dbConnect(RSQLite::SQLite(), dbname = "ma_base_de_donnees.sqlite")
```

## Exécution de requêtes SQL avec dplyr

Une fois que vous êtes connecté à la base de données, vous pouvez utiliser `dplyr` pour envoyer des requêtes SQL. Voici un exemple concret où nous allons créer une table, insérer des données, puis effectuer une requête.

### Création d'une table et insertion de données

```R
library(dplyr)

# Créer une table
dbExecute(con, "CREATE TABLE utilisateurs (id INTEGER PRIMARY KEY, nom TEXT, age INTEGER)")

# Insérer des données
dbExecute(con, "INSERT INTO utilisateurs (nom, age) VALUES ('Alice', 30)")
dbExecute(con, "INSERT INTO utilisateurs (nom, age) VALUES ('Bob', 25)")
```

### Lecture des données avec dplyr

Maintenant que nous avons des données dans notre table, nous pouvons les lire en utilisant `dplyr`. Voici comment faire :

```R
# Lire les données de la table utilisateurs
utilisateurs <- tbl(con, "utilisateurs")

# Afficher les données
utilisateurs %>% collect()
```

### Exécution d'une requête SQL

Vous pouvez également exécuter des requêtes SQL directement. Par exemple, si vous souhaitez sélectionner uniquement les utilisateurs de plus de 28 ans, vous pouvez le faire comme suit :

```R
# Exécuter une requête SQL
resultat <- dbGetQuery(con, "SELECT * FROM utilisateurs WHERE age > 28")

# Afficher le résultat
print(resultat)
```

## Fermeture de la connexion

N'oubliez pas de fermer la connexion à la base de données une fois que vous avez terminé vos opérations :

```R
dbDisconnect(con)
```

## Conclusion

L'utilisation de `dplyr` pour envoyer des requêtes SQL depuis R est un moyen puissant et flexible de travailler avec des bases de données. Grâce à sa syntaxe intuitive, vous pouvez facilement manipuler vos données tout en profitant des performances des bases de données relationnelles. Que vous soyez en train de créer des tables, d'insérer des données ou d'exécuter des requêtes, `dplyr` vous offre les outils nécessaires pour gérer vos données efficacement.


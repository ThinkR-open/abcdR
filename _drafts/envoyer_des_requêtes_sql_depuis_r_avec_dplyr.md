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

Le package `dplyr` est un outil puissant pour manipuler des données en R. Une de ses fonctionnalités intéressantes est la possibilité d'interagir avec des bases de données SQL. Dans cet article, nous allons explorer comment envoyer des requêtes SQL directement depuis R en utilisant `dplyr`.

## Installation des packages nécessaires

Avant de commencer, assurez-vous d'avoir installé les packages `dplyr` et `DBI` qui sont essentiels pour se connecter à une base de données. Si vous ne les avez pas encore installés, vous pouvez le faire avec les commandes suivantes :

```R
install.packages("dplyr")
install.packages("DBI")
```

## Se connecter à une base de données

Pour cet exemple, nous allons utiliser SQLite, une base de données légère et facile à utiliser. Vous pouvez également adapter cet exemple à d'autres types de bases de données (comme MySQL ou PostgreSQL) en utilisant les drivers appropriés.

Voici comment établir une connexion à une base de données SQLite :

```R
library(DBI)
library(dplyr)

# Créer une connexion à la base de données SQLite
con <- dbConnect(RSQLite::SQLite(), dbname = "ma_base_de_donnees.sqlite")
```

## Exécution de requêtes SQL

Une fois que vous êtes connecté à votre base de données, vous pouvez utiliser `dplyr` pour manipuler vos données. Voici un exemple concret où nous allons récupérer des données à partir d'une table nommée `employes`.

### Exemple : Récupérer des données

Supposons que nous avons une table `employes` avec des colonnes `id`, `nom`, `poste` et `salaire`. Nous souhaitons sélectionner tous les employés dont le salaire est supérieur à 50000.

```R
# Lire les données de la table employes
employes <- tbl(con, "employes")

# Filtrer les employés avec un salaire supérieur à 50000
employes_salaire_eleve <- employes %>%
  filter(salaire > 50000)

# Afficher les résultats
employes_salaire_eleve %>% collect()
```

### Explication du code

- `tbl(con, "employes")` : Cette fonction crée un objet qui représente la table `employes` dans la base de données.
- `filter(salaire > 50000)` : Ici, nous filtrons les données pour ne garder que les employés avec un salaire supérieur à 50000.
- `collect()` : Cette fonction exécute la requête et ramène les résultats dans un dataframe R.

## Conclusion

Utiliser `dplyr` pour envoyer des requêtes SQL depuis R est un moyen efficace de manipuler des données stockées dans des bases de données. Cela permet de bénéficier de la puissance de SQL tout en profitant de la syntaxe intuitive de `dplyr`. Que vous travailliez avec SQLite, MySQL ou PostgreSQL, `dplyr` vous offre une flexibilité incroyable pour gérer vos données. 

N'hésitez pas à explorer d'autres fonctions de `dplyr` pour enrichir vos analyses de données !


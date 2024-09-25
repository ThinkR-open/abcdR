---
title: "Renommer des colonnes avec dplyr::rename"
menu_order: 1
post_status: publish
taxonomy:
    category:
        - colonnes
    post_tag:
        - rename
        - colonnes
---

# Renommer des colonnes avec dplyr::rename

Dans le cadre de l'analyse de données en R, il est souvent nécessaire de renommer les colonnes d'un dataframe pour améliorer la lisibilité ou pour se conformer à des conventions de nommage. La fonction `rename()` du package `dplyr` est un outil puissant et simple pour effectuer cette tâche.

## Installation et chargement de dplyr

Avant de commencer, assurez-vous que le package `dplyr` est installé et chargé dans votre environnement R. Vous pouvez l'installer avec la commande suivante si ce n'est pas déjà fait :

```R
install.packages("dplyr")
```

Ensuite, chargez le package :

```R
library(dplyr)
```

## Exemple concret

Imaginons que nous avons un dataframe contenant des informations sur des employés, avec des colonnes nommées "Nom", "Age", et "Salaire". Nous souhaitons renommer ces colonnes pour qu'elles soient plus explicites : "Nom" devient "Nom_Employe", "Age" devient "Age_Employe", et "Salaire" devient "Salaire_Annuel".

Voici comment procéder :

### Création du dataframe

Tout d'abord, créons un exemple de dataframe :

```R
# Création d'un dataframe exemple
employes <- data.frame(
  Nom = c("Alice", "Bob", "Charlie"),
  Age = c(30, 25, 35),
  Salaire = c(50000, 55000, 60000)
)

# Affichage du dataframe original
print(employes)
```

### Renommage des colonnes

Pour renommer les colonnes, nous utilisons la fonction `rename()` de `dplyr`. La syntaxe générale est la suivante :

```R
nouveau_dataframe <- ancien_dataframe %>%
  rename(nouveau_nom1 = ancien_nom1,
         nouveau_nom2 = ancien_nom2,
         ...)
```

Dans notre cas, cela donnerait :

```R
# Renommage des colonnes
employes_renommes <- employes %>%
  rename(Nom_Employe = Nom,
         Age_Employe = Age,
         Salaire_Annuel = Salaire)

# Affichage du dataframe avec les colonnes renommées
print(employes_renommes)
```

### Résultat

Après avoir exécuté le code ci-dessus, le dataframe `employes_renommes` aura les colonnes suivantes :

- Nom_Employe
- Age_Employe
- Salaire_Annuel

## Conclusion

Renommer des colonnes avec `dplyr::rename` est une tâche simple et efficace qui améliore la clarté de vos données. En utilisant cette fonction, vous pouvez facilement adapter les noms de colonnes à vos besoins d'analyse. N'hésitez pas à explorer d'autres fonctionnalités de `dplyr` pour manipuler vos données de manière encore plus efficace !


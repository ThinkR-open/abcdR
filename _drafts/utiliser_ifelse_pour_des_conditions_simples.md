---
title: "Utiliser ifelse pour des conditions simples"
menu_order: 1
post_status: publish
taxonomy:
    category:
        - conditions
    post_tag:
        - ifelse
        - condition
---

# Utiliser ifelse pour des conditions simples en R

Le langage R est un outil puissant pour l'analyse de données, et l'une de ses fonctionnalités les plus utiles est la gestion des conditions. L'instruction `ifelse` permet de traiter de manière efficace les conditions simples dans vos données. Dans cet article, nous allons explorer comment utiliser `ifelse` avec un exemple concret.

## Qu'est-ce que ifelse ?

La fonction `ifelse` est utilisée pour tester une condition et retourner des valeurs en fonction du résultat de ce test. La syntaxe de la fonction est la suivante :

```R
ifelse(condition, valeur_si_vrai, valeur_si_faux)
```

- **condition** : une expression logique qui doit être évaluée.
- **valeur_si_vrai** : la valeur à retourner si la condition est vraie.
- **valeur_si_faux** : la valeur à retourner si la condition est fausse.

## Exemple concret

Supposons que nous avons un vecteur de notes d'étudiants et que nous voulons classer ces notes en "Admis" ou "Recalé" en fonction d'un seuil de 10. Nous allons utiliser `ifelse` pour effectuer cette classification.

Voici un exemple de code :

```R
# Création d'un vecteur de notes
notes <- c(12, 8, 15, 9, 11, 7)

# Classification des notes
resultats <- ifelse(notes >= 10, "Admis", "Recalé")

# Affichage des résultats
data.frame(Notes = notes, Resultats = resultats)
```

### Explication du code

1. **Création d'un vecteur de notes** : Nous définissons un vecteur `notes` contenant les notes de plusieurs étudiants.
2. **Utilisation de ifelse** : Nous appliquons `ifelse` pour vérifier si chaque note est supérieure ou égale à 10. Si c'est le cas, nous retournons "Admis", sinon nous retournons "Recalé".
3. **Affichage des résultats** : Nous utilisons `data.frame` pour créer un tableau affichant les notes et les résultats de la classification.

## Résultat attendu

Lorsque vous exécutez le code ci-dessus, vous obtiendrez un tableau comme suit :

```
  Notes Resultats
1    12     Admis
2     8    Recalé
3    15     Admis
4     9    Recalé
5    11     Admis
6     7    Recalé
```

## Conclusion

La fonction `ifelse` est un outil simple mais puissant pour gérer des conditions dans R. Elle vous permet de transformer vos données de manière efficace en fonction de critères spécifiques. Dans cet article, nous avons vu comment l'utiliser pour classifier des notes, mais ses applications peuvent être étendues à de nombreux autres contextes dans l'analyse de données. N'hésitez pas à expérimenter avec `ifelse` dans vos propres projets R !


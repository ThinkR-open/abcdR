---
title: "Créer des sous-ensembles avec subset"
menu_order: 1
post_status: publish
taxonomy:
    category:
        - sous-ensemble
    post_tag:
        - subset
        - sous-ensemble
---

# Créer des sous-ensembles avec `subset` en R

En R, il est souvent nécessaire de travailler avec des sous-ensembles de données pour effectuer des analyses spécifiques. La fonction `subset()` est un outil pratique qui permet de filtrer des données selon des critères définis. Dans cet article, nous allons explorer comment utiliser cette fonction avec un exemple concret.

## Qu'est-ce que la fonction `subset()` ?

La fonction `subset()` permet de créer un nouveau jeu de données en sélectionnant uniquement les lignes qui répondent à certaines conditions. Elle prend principalement deux arguments :
- `x` : le jeu de données d'origine.
- `subset` : une condition logique qui détermine quelles lignes doivent être incluses dans le sous-ensemble.

## Exemple concret

Imaginons que nous avons un jeu de données contenant des informations sur des étudiants, avec des colonnes pour le nom, l'âge et la note. Voici comment nous pourrions créer un sous-ensemble pour sélectionner uniquement les étudiants ayant une note supérieure à 15.

### Étape 1 : Créer un jeu de données

Commençons par créer un petit jeu de données :

```R
# Création d'un data frame d'exemple
etudiants <- data.frame(
  nom = c("Alice", "Bob", "Charlie", "David", "Eva"),
  age = c(20, 21, 19, 22, 20),
  note = c(14, 16, 15, 18, 17)
)

# Affichage du data frame
print(etudiants)
```

### Étape 2 : Utiliser `subset()` pour créer un sous-ensemble

Nous allons maintenant utiliser la fonction `subset()` pour extraire les étudiants ayant une note supérieure à 15 :

```R
# Création d'un sous-ensemble avec des notes supérieures à 15
etudiants_bons <- subset(etudiants, note > 15)

# Affichage du sous-ensemble
print(etudiants_bons)
```

### Explication du code

1. **Création du data frame** : Nous avons créé un data frame nommé `etudiants` contenant trois colonnes : `nom`, `age`, et `note`.
2. **Utilisation de `subset()`** : La fonction `subset()` est utilisée pour filtrer les lignes où la colonne `note` est supérieure à 15. Le résultat est stocké dans un nouveau data frame appelé `etudiants_bons`.
3. **Affichage du résultat** : Enfin, nous affichons le sous-ensemble pour voir les étudiants qui répondent à notre critère.

### Résultat attendu

Après avoir exécuté le code ci-dessus, le sous-ensemble `etudiants_bons` devrait contenir les étudiants suivants :

```
     nom age note
2    Bob 21  16
4  David 22  18
5    Eva 20  17
```

## Conclusion

La fonction `subset()` est un outil puissant et facile à utiliser pour créer des sous-ensembles de données en R. En définissant des conditions logiques, vous pouvez extraire les informations pertinentes pour vos analyses. N'hésitez pas à expérimenter avec vos propres jeux de données pour vous familiariser avec cette fonction !


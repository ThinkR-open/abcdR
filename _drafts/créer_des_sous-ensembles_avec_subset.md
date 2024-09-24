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

Dans la programmation en R, il est souvent nécessaire de créer des sous-ensembles de données pour analyser des groupes spécifiques ou pour filtrer des observations qui répondent à des critères particuliers. La fonction `subset()` est un outil pratique pour réaliser cela de manière simple et intuitive.

## Qu'est-ce que la fonction `subset()` ?

La fonction `subset()` permet de sélectionner des lignes d'un data frame ou d'une matrice en fonction de conditions spécifiées. Elle est particulièrement utile pour extraire des données sans avoir à recourir à des index complexes ou à des techniques de filtrage plus élaborées.

### Syntaxe de `subset()`

La syntaxe de la fonction `subset()` est la suivante :

```R
subset(x, subset, select)
```

- `x` : l'objet (data frame ou matrice) à partir duquel vous souhaitez créer un sous-ensemble.
- `subset` : une expression logique qui détermine quelles lignes doivent être incluses dans le sous-ensemble.
- `select` : (facultatif) spécifie les colonnes à conserver dans le sous-ensemble.

## Exemple concret

Imaginons que nous avons un data frame contenant des informations sur des étudiants, avec des colonnes pour le nom, l'âge et la note. Voici un exemple de création d'un data frame et de l'utilisation de la fonction `subset()` pour filtrer les étudiants ayant une note supérieure à 15.

### Création du data frame

```R
# Créer un data frame d'exemple
etudiants <- data.frame(
  nom = c("Alice", "Bob", "Charlie", "David", "Eva"),
  age = c(20, 21, 19, 22, 20),
  note = c(18, 14, 16, 12, 17)
)

# Afficher le data frame
print(etudiants)
```

### Création du sous-ensemble

Pour créer un sous-ensemble des étudiants ayant une note supérieure à 15, nous allons utiliser la fonction `subset()` :

```R
# Créer un sous-ensemble avec des notes supérieures à 15
etudiants_positifs <- subset(etudiants, note > 15)

# Afficher le sous-ensemble
print(etudiants_positifs)
```

### Explications

1. Dans le code ci-dessus, nous avons d'abord créé un data frame nommé `etudiants` contenant les informations de cinq étudiants.
2. Nous avons ensuite utilisé `subset()` pour filtrer les étudiants dont la note est supérieure à 15. La condition `note > 15` est passée en argument de la fonction `subset()`.
3. Le résultat, stocké dans `etudiants_positifs`, contient uniquement les lignes du data frame d'origine correspondant à la condition spécifiée.

### Conclusion

La fonction `subset()` est un moyen efficace et facile d'extraire des sous-ensembles de données en R. Elle permet de manipuler et d'analyser les données de manière ciblée, facilitant ainsi le processus d'analyse statistique. N'hésitez pas à l'utiliser pour simplifier vos tâches de filtrage de données dans vos projets R !


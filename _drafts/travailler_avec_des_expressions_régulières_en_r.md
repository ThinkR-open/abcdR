---
title: "Travailler avec des expressions régulières en R"
menu_order: 1
post_status: publish
taxonomy:
    category:
        - chaînes de caractères
    post_tag:
        - regex
        - chaînes
---

# Travailler avec des expressions régulières en R

Les expressions régulières (ou regex) sont des séquences de caractères qui forment un modèle de recherche. Elles sont très utiles pour la manipulation de chaînes de caractères, que ce soit pour la recherche, le remplacement ou la validation de formats. R offre plusieurs fonctions pour travailler avec des expressions régulières, notamment `grep()`, `grepl()`, `sub()`, et `gsub()`.

## Les fonctions principales

1. **`grep()`** : Cette fonction recherche des motifs dans un vecteur de chaînes et renvoie les indices des éléments correspondants.
2. **`grepl()`** : Semblable à `grep()`, mais renvoie un vecteur logique indiquant si chaque élément correspond au motif.
3. **`sub()`** : Remplace la première occurrence d'un motif dans une chaîne par une autre chaîne.
4. **`gsub()`** : Remplace toutes les occurrences d'un motif dans une chaîne par une autre chaîne.

## Exemple concret

Imaginons que nous avons un vecteur de chaînes représentant des adresses e-mail, et nous voulons extraire les noms d'utilisateur (la partie avant le symbole `@`).

### Étape 1 : Créer un vecteur d'adresses e-mail

```r
emails <- c("alice@example.com", "bob@gmail.com", "charlie@yahoo.com")
```

### Étape 2 : Utiliser une expression régulière pour extraire les noms d'utilisateur

Nous allons utiliser `sub()` pour remplacer tout ce qui suit le `@` par une chaîne vide.

```r
# Extraire les noms d'utilisateur
noms_utilisateur <- sub("@.*", "", emails)
print(noms_utilisateur)
```

### Explication du code

- `@.*` est l'expression régulière utilisée ici. 
  - `@` correspond au symbole `@`.
  - `.*` signifie "n'importe quel caractère (.) répété zéro ou plusieurs fois (*)". Cela signifie que nous voulons tout ce qui suit le `@`.
- `sub()` remplace le motif trouvé par une chaîne vide, ce qui nous laisse uniquement la partie avant le `@`.

### Résultat

En exécutant le code ci-dessus, nous obtiendrons :

```
[1] "alice"   "bob"     "charlie"
```

Nous avons ainsi extrait avec succès les noms d'utilisateur des adresses e-mail.

## Conclusion

Les expressions régulières sont un outil puissant pour le traitement de texte en R. En comprenant comment utiliser les fonctions comme `grep()`, `grepl()`, `sub()`, et `gsub()`, vous pouvez facilement manipuler et analyser des chaînes de caractères. N'hésitez pas à expérimenter avec différentes expressions régulières pour découvrir leur potentiel dans vos projets de données.


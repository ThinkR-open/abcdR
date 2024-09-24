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

Les expressions régulières (ou regex) sont des séquences de caractères qui forment un modèle de recherche. Elles sont largement utilisées dans la programmation pour la recherche de motifs, la validation de formats, la substitution de chaînes et bien plus encore. Dans cet article, nous allons explorer comment utiliser les expressions régulières en R à travers des exemples concrets.

## Pourquoi utiliser des expressions régulières ?

Les expressions régulières permettent de manipuler des chaînes de caractères de manière efficace. Elles peuvent être utilisées pour :

- Trouver des motifs spécifiques dans du texte.
- Extraire des sous-chaînes.
- Remplacer des parties de chaînes.
- Valider des formats (comme des adresses e-mail).

## Les fonctions principales en R

R offre plusieurs fonctions pour travailler avec des expressions régulières :

- `grepl()` : Vérifie si un motif est présent dans une chaîne de caractères.
- `grep()` : Renvoie les indices des éléments qui correspondent à un motif.
- `gsub()` : Remplace les occurrences d'un motif par une nouvelle chaîne.
- `regexpr()` et `gregexpr()` : Renvoient la position des motifs trouvés.

## Exemple concret

Imaginons que nous avons une liste d'adresses e-mail et que nous souhaitons extraire celles qui sont valides. Voici comment nous pourrions procéder :

```r
# Exemple de liste d'adresses e-mail
emails <- c("test@example.com", "invalid-email", "user@domain.org", "another.invalid@", "hello@world.net")

# Définir un motif pour une adresse e-mail valide
pattern <- "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$"

# Utiliser grepl pour vérifier quels e-mails sont valides
valid_emails <- emails[grepl(pattern, emails)]

# Afficher les e-mails valides
print(valid_emails)
```

### Explication du code

1. **Liste d'adresses e-mail** : Nous avons une variable `emails` qui contient plusieurs chaînes représentant des adresses e-mail.

2. **Motif d'e-mail valide** : Le motif regex `^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$` est utilisé pour définir un format d'adresse e-mail. Voici une explication des éléments du motif :
   - `^` : Indique le début de la chaîne.
   - `[a-zA-Z0-9._%+-]+` : Correspond à un ou plusieurs caractères alphanumériques ou à des caractères spéciaux autorisés avant le `@`.
   - `@` : Caractère littéral `@`.
   - `[a-zA-Z0-9.-]+` : Correspond à un ou plusieurs caractères alphanumériques ou à des points/dash après le `@`.
   - `\\.` : Caractère littéral `.` (nous devons échapper le point car il a une signification spéciale en regex).
   - `[a-zA-Z]{2,}` : Correspond à deux caractères alphabétiques ou plus (pour le domaine).

3. **Filtrage des e-mails valides** : La fonction `grepl()` renvoie TRUE pour les e-mails valides, et nous utilisons cela pour filtrer notre vecteur initial.

4. **Affichage des résultats** : Enfin, nous affichons les adresses e-mail valides.

## Conclusion

Les expressions régulières sont un outil puissant pour le traitement de texte en R. En comprenant les bases des motifs regex et en utilisant les fonctions appropriées, vous pouvez effectuer des tâches complexes de manipulation de chaînes de caractères de manière efficace. N'hésitez pas à expérimenter avec différents motifs


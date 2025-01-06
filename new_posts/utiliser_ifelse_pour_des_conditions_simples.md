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

# Utiliser `ifelse` pour des conditions simples en R

En R, la fonction `ifelse` est un outil puissant pour effectuer des opérations conditionnelles sur des vecteurs. Elle permet d'appliquer une condition à chaque élément d'un vecteur et de retourner des valeurs différentes selon que la condition est vraie ou fausse. Cela en fait une alternative efficace aux structures de contrôle plus complexes comme `if` et `else`.

## Syntaxe de `ifelse`

La syntaxe de la fonction `ifelse` est la suivante :

```R
ifelse(condition, valeur_si_vrai, valeur_si_faux)
```

- **condition** : une expression logique qui est évaluée pour chaque élément.
- **valeur_si_vrai** : la valeur à retourner si la condition est vraie.
- **valeur_si_faux** : la valeur à retourner si la condition est fausse.

## Exemple concret

Imaginons que nous avons un vecteur de notes d'étudiants et que nous voulons déterminer si chaque étudiant a réussi ou échoué. Nous considérons qu'une note supérieure ou égale à 10 est une réussite.

Voici comment nous pourrions utiliser `ifelse` pour réaliser cela :

```R
# Création d'un vecteur de notes
notes <- c(12, 8, 15, 9, 10, 7)

# Utilisation de ifelse pour déterminer le statut de chaque étudiant
statut <- ifelse(notes >= 10, "Réussi", "Échoué")

# Affichage des résultats
data.frame(Notes = notes, Statut = statut)
```

### Explication du code

1. **Création d'un vecteur de notes** : Nous avons un vecteur `notes` qui contient les notes de six étudiants.
2. **Utilisation de `ifelse`** : Nous appliquons `ifelse` pour chaque note. La condition `notes >= 10` vérifie si chaque note est supérieure ou égale à 10. Si c'est le cas, "Réussi" est retourné, sinon "Échoué".
3. **Affichage des résultats** : Nous créons un tableau de données avec les notes et le statut correspondant pour une visualisation claire.

### Résultat

Lorsque nous exécutons ce code, nous obtenons un tableau qui montre les notes des étudiants et leur statut :

```
  Notes   Statut
1    12  Réussi
2     8  Échoué
3    15  Réussi
4     9  Échoué
5    10  Réussi
6     7  Échoué
```

## Conclusion

La fonction `ifelse` est un moyen simple et efficace d'appliquer des conditions sur des vecteurs en R. Elle permet de rendre le code plus lisible et concis, tout en évitant des structures de contrôle plus lourdes. Que ce soit pour des analyses de données ou pour des calculs simples, `ifelse` est un outil indispensable dans votre boîte à outils R.


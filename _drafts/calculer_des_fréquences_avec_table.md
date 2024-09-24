---
title: "Calculer des fréquences avec table"
menu_order: 1
post_status: publish
taxonomy:
    category:
        - statistiques
    post_tag:
        - table
        - fréquence
---

# Calculer des Fréquences avec `table` en R

Dans l'analyse de données, il est souvent utile de comprendre la distribution des valeurs d'une variable. En R, la fonction `table()` permet de calculer facilement les fréquences des valeurs d'une variable. Cet article vous expliquera comment utiliser cette fonction de manière simple et concrète.

## Qu'est-ce que la fonction `table()` ?

La fonction `table()` en R est utilisée pour créer un tableau de contingence qui résume la fréquence des différentes valeurs d'un vecteur. Elle prend un vecteur en entrée et renvoie un tableau avec les valeurs uniques et leur fréquence respective.

## Exemple concret

Imaginons que nous avons un vecteur qui représente les notes de plusieurs étudiants dans une matière. Voici comment nous pouvons utiliser `table()` pour calculer les fréquences de chaque note.

### Étape 1 : Créer le vecteur

Commençons par créer un vecteur contenant les notes des étudiants :

```r
# Création du vecteur de notes
notes <- c(15, 20, 15, 10, 12, 20, 18, 15, 10, 20)
```

### Étape 2 : Calculer les fréquences

Nous pouvons maintenant utiliser la fonction `table()` pour calculer les fréquences des notes :

```r
# Calcul des fréquences avec table
frequences_notes <- table(notes)
print(frequences_notes)
```

### Explication du code

1. **Création du vecteur** : Nous avons créé un vecteur `notes` qui contient les notes de 10 étudiants.
2. **Calcul des fréquences** : En utilisant `table(notes)`, nous obtenons un tableau qui montre combien d'étudiants ont obtenu chaque note. Le résultat est stocké dans `frequences_notes` et affiché avec `print()`.

### Résultat attendu

Lorsque vous exécutez le code ci-dessus, vous devriez obtenir quelque chose comme :

```
notes
10 12 15 18 20 
 2  1  3  1  3 
```

Cela signifie que :
- 2 étudiants ont obtenu la note de 10,
- 1 étudiant a obtenu la note de 12,
- 3 étudiants ont obtenu la note de 15,
- 1 étudiant a obtenu la note de 18,
- 3 étudiants ont obtenu la note de 20.

## Conclusion

La fonction `table()` est un outil puissant et simple à utiliser pour calculer les fréquences des valeurs dans un vecteur. Elle vous permet de mieux comprendre la distribution de vos données et peut être utilisée dans de nombreuses analyses statistiques. N'hésitez pas à l'essayer avec vos propres données pour explorer les tendances et les motifs qui s'y cachent !


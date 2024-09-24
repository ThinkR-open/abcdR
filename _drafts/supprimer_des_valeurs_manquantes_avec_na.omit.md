---
title: "Supprimer des valeurs manquantes avec na.omit"
menu_order: 1
post_status: publish
taxonomy:
    category:
        - gestion des NA
    post_tag:
        - na.omit
        - NA
---

# Supprimer des valeurs manquantes avec na.omit en R

Dans le traitement des données, il est fréquent de rencontrer des valeurs manquantes. Ces valeurs peuvent provenir de diverses sources, comme des erreurs de saisie, des données non disponibles ou des réponses manquantes dans des enquêtes. Pour analyser correctement nos données, il est souvent nécessaire de les nettoyer en supprimant ces valeurs manquantes. L'une des fonctions les plus simples pour y parvenir en R est `na.omit()`.

## Qu'est-ce que `na.omit()` ?

La fonction `na.omit()` permet de supprimer les lignes d'un data frame qui contiennent des valeurs manquantes (NA). Lorsque cette fonction est appliquée, elle retourne un nouvel objet sans les lignes contenant des NA.

## Exemple concret

Imaginons que nous avons un data frame contenant des informations sur des participants à une étude, y compris leur âge et leur score à un test. Voici comment créer un data frame avec des valeurs manquantes et utiliser `na.omit()` pour les supprimer.

```R
# Création d'un data frame avec des valeurs manquantes
participants <- data.frame(
  id = 1:5,
  age = c(25, NA, 30, 22, NA),
  score = c(85, 90, NA, 78, 88)
)

# Affichage du data frame original
print("Data frame original :")
print(participants)

# Suppression des lignes avec des valeurs manquantes
participants_sans_na <- na.omit(participants)

# Affichage du data frame nettoyé
print("Data frame après suppression des valeurs manquantes :")
print(participants_sans_na)
```

### Explications du code :

1. **Création du data frame** : Nous créons un data frame nommé `participants` avec trois colonnes : `id`, `age` et `score`. Certaines valeurs sont définies comme `NA` pour simuler des données manquantes.
   
2. **Affichage du data frame original** : Nous utilisons `print()` pour afficher le data frame initial, qui contient des lignes avec des valeurs manquantes.

3. **Suppression des valeurs manquantes** : La fonction `na.omit(participants)` est utilisée pour créer un nouveau data frame, `participants_sans_na`, qui ne contient que les lignes sans valeurs manquantes.

4. **Affichage du data frame nettoyé** : Enfin, nous affichons le nouveau data frame, qui montre que les lignes avec des NA ont été supprimées.

## Conclusion

Utiliser `na.omit()` est une méthode simple et efficace pour nettoyer vos données en supprimant les valeurs manquantes. Cependant, il est important de garder à l'esprit que cette méthode peut entraîner une perte d'informations. Dans certains cas, il peut être préférable d'explorer d'autres méthodes de gestion des NA, comme l'imputation. Mais pour des opérations simples et rapides, `na.omit()` est un excellent choix.


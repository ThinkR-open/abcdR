---
title: "Comment écrire des conditions avec if et else"
menu_order: 1
post_status: publish
taxonomy:
    category:
        - conditions
    post_tag:
        - if
        - else
---

# Comment écrire des conditions avec if et else en R

R est un langage de programmation très utilisé pour l'analyse de données et la statistique. L'une des fonctionnalités essentielles de R est la capacité à exécuter des instructions conditionnelles à l'aide des structures `if` et `else`. Ces structures permettent d'exécuter différentes instructions selon que certaines conditions sont vraies ou fausses.

## La structure de base

La structure de base d'une instruction `if` en R est la suivante :

```R
if (condition) {
  # code à exécuter si la condition est vraie
} else {
  # code à exécuter si la condition est fausse
}
```

### Exemple concret

Imaginons que nous souhaitions vérifier si une personne est majeure ou mineure en fonction de son âge. Voici comment nous pourrions écrire ce code en R :

```R
# Définissons une variable pour l'âge
age <- 20

# Vérifions si la personne est majeure ou mineure
if (age >= 18) {
  print("La personne est majeure.")
} else {
  print("La personne est mineure.")
}
```

### Explication de l'exemple

1. **Définition de la variable** : Nous définissons d'abord une variable `age` et lui assignons la valeur `20`.

2. **Condition `if`** : Ensuite, nous utilisons une instruction `if` pour vérifier si `age` est supérieur ou égal à `18`. 

3. **Bloc de code** : Si la condition est vraie (ce qui est le cas ici, puisque `20 >= 18`), le code à l'intérieur des accolades de `if` sera exécuté, et le message "La personne est majeure." sera affiché.

4. **Bloc `else`** : Si la condition avait été fausse, c'est-à-dire si `age` était inférieur à `18`, le code à l'intérieur des accolades de `else` aurait été exécuté, et le message "La personne est mineure." aurait été affiché.

### Conclusion

Les instructions `if` et `else` sont des outils puissants en R qui permettent de contrôler le flux d'exécution de votre code en fonction de conditions spécifiques. Grâce à ces structures conditionnelles, vous pouvez créer des programmes adaptatifs qui réagissent à différentes situations. N'hésitez pas à les utiliser dans vos analyses pour rendre vos scripts plus dynamiques et interactifs.


---
post_title: Comment recoder les modalités d'une variable qualitative ?
author: julien
layout: post
published: true
categories:
  - factor
  - tidyverse
---

Une opération courante quand on travaille avec des variables qualitatives (de type `factor` ou `character`) est de 
modifier les valeurs des modalités de cette variable. Ceci permet de les rendre plus courtes, plus explicites, ou
même de les regrouper si on leur attribue le même nom.

La fonction `fct_recode`, de l'extension `forcats` (qui fait partie du *tidyverse*) facilite ce type d'opérations.
Celle-ci prend en premier argument un vecteur, puis une série de recodages sous la forme `Nouvelle valeur = Ancienne valeur`.

Exemple :

```r
f <- c("Fraise", "Framboise", "Pomme", "Fraise")
f <- fct_recode(f,
                "Ananas" = "Fraise",
                "Poire" = "Pomme")
f
```

```
[1] Ananas    Framboise Poire     Ananas   
Levels: Ananas Framboise Poire
```

Pour regrouper des modalités il suffit de leur attribuer la même valeur :

```r

f <- c("Fraise", "Framboise", "Pomme", "Fraise")
f <- fct_recode(f,
                "Fruit rouge" = "Fraise",
                "Fruit rouge" = "Framboise")
f
```

```
[1] Fruit rouge Fruit rouge Pomme       Fruit rouge
Levels: Fruit rouge Pomme
```

À noter que si on veut recoder une valeur en `NA`, il faut lui attribuer (de manière peu intuitive) la valeur `NULL` :

```r
f <- c("Fraise", "Framboise", "Pomme", "Fraise")
f <- fct_recode(f,
                "Fruit rouge" = "Fraise",
                "Fruit rouge" = "Framboise",
                NULL = "Pomme")
f
```

```
[1] Fruit rouge Fruit rouge <NA>        Fruit rouge
Levels: Fruit rouge
```

À l'inverse, si on veut transformer des `NA` en une valeur explicite, on doit le faire à l'aide la fonction `fct_explicit_na` :

```r
f <- c("Fraise", "Framboise", "Pomme", "Fraise", NA)
f <- fct_explicit_na(f, "NR")
f
```

```
[1] Fraise    Framboise Pomme     Fraise    NR       
Levels: Fraise Framboise Pomme NR
```

À noter que toutes ces opérations sont sensibles à la casse (majuscules/minuscules), aux accents, aux espaces, etc. 
Il faut donc recopier exactement à l'identique les noms des anciennes valeurs.

À noter que l'extension `questionr` propose un petit *addin* (interface graphique ponctuelle) pour faciliter la génération 
du code du recodage d'une variable qualitative. 

`forcats` propose par ailleurs de nombreuses autres fonctions utiles pour travailler avec les variables qualitatives.

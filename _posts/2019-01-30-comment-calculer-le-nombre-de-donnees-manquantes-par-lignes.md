---
ID: 4716
post_title: >
  Comment calculer le nombre de données
  manquantes par lignes
author: vincent
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-calculer-le-nombre-de-donnees-manquantes-par-lignes/
published: true
post_date: 2019-01-30 01:32:34
tags:
  - na
  - nettoyage
categories:
  - manipulation de données
  - tidyverse
---
Plusieurs façon de faire, à vous de choisir celle qui vous plait le plus :)

Fabriquons un petit jeu de données auquel nous souhaitons ajouter une colonne contenant le nombre ne `NA` sur chacune des lignes.

```r
library(tidyverse)
dataset <- tribble(~a,~b,~c,
        1,NA,NA,
        NA,NA,NA,
        1,2,3,
        NA,3,NA
)
```

*A l&#039;ancienne*

```r
dataset$nb <- apply(dataset, MARGIN = 1, function(x){sum(is.na(x))})
```

*avec du `pmap` et du `mutate`*


```r
dataset %&gt;% mutate(nb = pmap(.,function(a,b,c){sum(is.na(a),is.na(b),is.na(c))}),
             nb= unlist(nb))
```
>Mais c'est dommage de devoir spécifier a, b et c. 

>donc simplifions :

```r
dataset %&gt;% 
  mutate(nb = pmap_dbl(., function(...){sum(is.na(c(...)))}))
```

> Cela reste à mon goût un peu trop verbeux

*Avec `rowSums`*

```r
dataset %&gt;% mutate(nb = rowSums(is.na(.)))
```

> ça c'est propre et efficace

*En utilisant le package {naniar} (coucou @colin ) (qui habille `rowSums`)*

```r
dataset %&gt;% naniar::add_n_miss()
```

En espérant que cela vous soit utile.
---
title: "Comment calculer le nombre de données manquantes par lignes ?"
author: Vincent
layout: post
published: true
categories:
  - tidyverse
  - manipulation_de_données
---


Plusieurs façon de faire, à vous de choisir celle qui vous plait le plus :)

Fabriquons un petit jeu de données auquel nous souhaitons rajouter une colonne contenant le nombre ne `NA` sur chacune des lignes.

```r
library(tidyverse)
dataset <- tribble(~a,~b,~c,
        1,NA,NA,
        NA,NA,NA,
        1,2,3,
        NA,3,NA
)
```

*A l'ancienne*

```r
dataset$nb <- apply(dataset, MARGIN = 1, function(x){sum(is.na(x))})
```

*avec du `pmap` et du `mutate`*


```r
dataset %>% mutate(nb = pmap(.,function(a,b,c){sum(is.na(a),is.na(b),is.na(c))}),
             nb= unlist(nb))
```
>Mais c'est dommage de devoir spécifer a, b et c. 

>donc simplifions :

```r
dataset %>% 
  mutate(nb = pmap_dbl(., function(...){sum(is.na(c(...)))}))
```

> Cela reste a mon goût un peu trop verbeux

*Avec `rowSums`*

```r
dataset %>% mutate(nb = rowSums(is.na(.)))
```

> ca c'est propre et efficace

*En utilisant le package {naniar} (coucou @colin ) (qui habille `rowSums`)*

```r
dataset %>% naniar::add_n_miss()
```

En espérant que cela vous soit utile.


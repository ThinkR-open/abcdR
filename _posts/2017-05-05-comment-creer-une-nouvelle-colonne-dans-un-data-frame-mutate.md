---
ID: 3349
post_title: >
  Comment créer une nouvelle colonne dans
  un data.frame ? mutate()
author: colin
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-creer-une-nouvelle-colonne-dans-un-data-frame-mutate/
published: true
post_date: 2017-05-05 09:15:57
---
Pour ajouter une colonne, direction la fonction <em>mutate</em>. Avec celle-ci, vous pouvez insérer un objet externe au tableau (par exemple une liste), ou le résultat de l'opération sur une ou plusieurs colonnes.
<pre><code>data("faithfuld")
library(dplyr)
mutate(faithful, index= 1:nrow(faithful), er.wa = eruptions / waiting)</pre>
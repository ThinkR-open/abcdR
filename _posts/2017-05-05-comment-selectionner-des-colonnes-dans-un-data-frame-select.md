---
ID: 3336
post_title: >
  Comment sélectionner des colonnes dans
  un data.frame ? select()
author: colin
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-selectionner-des-colonnes-dans-un-data-frame-select/
published: true
post_date: 2017-05-05 08:51:06
---
Votre jeu de données est trop grand ? Vous avez trop de colonnes ? Vous pouvez en sélectionner très simplement avec la fonction select() de <em>dplyr</em>.
<p>Comme toutes les fonctions du tidyverse, le premier argument est l'objet contenant le jeu de données. Puis, il suffit d'entrer le nom des colonnes à conserver.
<pre><code>library(dplyr)
data("smiths")
select(smiths, subject, age)</pre>
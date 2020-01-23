---
ID: 3076
post_title: >
  Comment supprimer une colonne ou un
  ligne d’un data.frame ?
author: helene
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-supprimer-une-colonne-ou-un-ligne-dun-data-frame-2/
published: true
post_date: 2015-07-08 08:40:14
tags: [ ]
categories:
  - fonctions utiles
  - manipulation de données
  - Transformation de données
---
<p> <pre><code><br />iris</p><p>iris_bis &lt;- iris[,-2] # On supprime la 2eme colonne</p><p>iris_ter &lt;- iris[-20,] # On supprime la 20eme ligne</p><p></code></pre> </p>

Pour le faire dans le cadre du {tidyverse}, reportez-vous à cette page : https://abcdr.thinkr.fr/comment-supprimer-une-colonne-ou-une-ligne-dans-un-dataframe-avec-le-tidyverse-et-dplyr/
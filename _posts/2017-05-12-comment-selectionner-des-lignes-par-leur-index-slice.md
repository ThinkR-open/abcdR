---
ID: 3396
post_title: >
  Comment sélectionner des lignes par
  leur index ? slice()
author: Colin
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.guyader.pro/comment-selectionner-des-lignes-par-leur-index-slice/
published: true
post_date: 2017-05-12 08:58:25
---
<p>Pour<strong> sélectionner une série de lignes d'un tableau par leur index</strong>, faites appel à la fonction <em>slice()</em> du package <em>dplyr</em> !

<p>Comme tous ses cousins du tidyverse, <em>slice()</em> prend en premier argument le nom du tableau à transformer. Ensuite, vous pouvez sélectionner vos lignes par leur index, avec un vecteur numérique.
<p><pre lang="rsplus">library(dplyr)
data("presidential")
slice(presidential, 1:25)</pre>
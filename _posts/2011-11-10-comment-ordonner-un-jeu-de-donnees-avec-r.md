---
ID: 638
post_title: >
  Comment ordonner un jeu de données avec
  R ?
author: guillaume
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-ordonner-un-jeu-de-donnees-avec-r/
published: true
post_date: 2011-11-10 13:59:07
---
Ici les données sont ordonnées par ligne mais cela fonctionne aussi par colonne<br /> <pre><code> <br />data(iris)<br />iris[order(iris[,5],decreasing=FALSE),] <br /></pre>
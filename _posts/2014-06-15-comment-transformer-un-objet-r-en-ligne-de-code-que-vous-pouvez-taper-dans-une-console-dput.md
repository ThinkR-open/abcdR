---
ID: 2979
post_title: >
  Comment transformer un objet R en ligne
  de code que vous pouvez taper dans une
  console ? dput
author: vincent
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-transformer-un-objet-r-en-ligne-de-code-que-vous-pouvez-taper-dans-une-console-dput/
published: true
post_date: 2014-06-15 12:33:08
tags: [ ]
categories:
  - fonctions utiles
  - manipulation de données
---
Afin de tranferer un jeu de données, une liste et à peu pret n'importe quel type d'objet sans devoir envoyer un fichier (csv, Rdata ...) vous pouvez utiliser la fonction <strong>dput</strong>, qui vous donnera la transcription en ligne de code de votre objet. <pre><code><br /><br />test&lt;-structure(list(Sepal.Length = c(4.7, 4.9, 6.9, 6.3, 6.4, 7.7, 5.1, 5.4, 5.4, 6.3), Species = structure(c(1L, 1L, 3L, 3L, 3L, 3L, 1L, 1L, 1L, 2L), .Label = c("setosa", "versicolor", "virginica"), class = "factor")), .Names = c("Sepal.Length", "Species"), row.names = c(30L, 38L, 140L, 147L, 116L, 119L, 40L, 32L, 17L, 88L), class = "data.frame")<br /><br />dput(test)<br />dput(iris)<br />dput(summary(lm(1~1)))<br /><br /></code></pre>
---
ID: 3113
post_title: >
  Comment effectuer des calculs de somme
  et de moyenne sur les colonnes ou les
  lignes d’une matrice ? colSums,
  rowSums, colMeans, rowMeans
author: Helene F
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.guyader.pro/comment-effectuer-des-calculs-de-somme-et-de-moyenne-sur-les-colonnes-ou-les-lignes-dune-matrice-colsums-rowsums-colmeans-rowmeans/
published: true
post_date: 2015-07-10 13:08:49
tags: [ ]
categories:
  - fonctions utiles
  - manipulation de données
---
<p>Les fonction <b>colSums() </b>et<b> rowSums()</b> permettent de calculer les sommes respectivement, sur les colonnes et les lignes d’une matrice.</p><p>Les fonction <b>colMeans() </b>et<b> rowMeans()</b> permettent de calculer les moyennes respectivement, sur les colonnes et les lignes d’une matrice.</p><p> </p><p> <pre lang='rsplus'><br />m &lt;- matrix(data = c(12,15,14,13,16,18,15,5,14,11,10,17,4,6,17,16), nrow=4, ncol=4)</p><p>#On crée une matrice à 4 colonnes et 4 lignes</p><p> </p><p>colSums(m)        #On fait la somme sur les colonnes</p><p>[1] 54 54 52 43</p><p> </p><p>rowSums(m)       #On fait la somme sur les lignes</p><p>[1] 46 50 56 51</p><p> </p><p>colMeans(m)      #On fait la moyenne sur les colonnes</p><p>[1] 13.50 13.50 13.00 10.75</p><p> </p><p>rowMeans(m)       #On fait la moyenne sur les lignes</p><p>[1] 11.50 12.50 14.00 12.75<br /> </pre>   </p>
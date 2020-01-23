---
ID: 3208
post_title: >
  Comment analyser les résidus d’une
  régression linéaire simple sur R ?
  rstudent
author: helene
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-analyser-les-residus-dune-regression-lineaire-simple-sur-r-rstudent/
published: true
post_date: 2015-08-06 10:39:00
tags: [ ]
categories:
  - fonctions utiles
---
<p>Contrairement à la fonction <b>residuals(),</b> la fonction <b>rstudent()</b> permet d’obtenir des résidus de même variance. Ce critère est nécessaire pour pouvoir étudier et comparer les résidus.</p><p> <pre><code><br />reg_simp &lt;- lm(Sepal.Length~Petal.Length, data=iris)</p><p>#On réalise une régréssion linéaire</p><p> </p><p>residus=rstudent(reg_simp)</p><p>#On calcule les residus</p><p> </p><p>plot(residus, ylab="Résidus")</p><p>#On represente les résidus dans un graphique</p><p> </p><p>abline(h=c(-2,0,2), lty=c(2,1,2))</p><p>#La fonction abline permet d'ajouter des droites d'ordonnées -2, 0 et 2</p><p></code></pre> </p><p>En théorie, 95% des résidus se trouvent dans l’intervalle [-2,2]. C’est le cas ici puisque seulement 4 individus sur 150 sont en dehors de cet intervalle. Les individus à l’extérieur de l’intervalle sont des individus extrêmes. </p><p> </p>
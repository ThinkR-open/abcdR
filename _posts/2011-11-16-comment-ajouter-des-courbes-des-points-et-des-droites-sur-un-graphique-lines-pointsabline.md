---
ID: 806
post_title: >
  Comment ajouter des courbes, des points
  et des droites sur un graphique ? lines,
  points,abline
author: Melen
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-ajouter-des-courbes-des-points-et-des-droites-sur-un-graphique-lines-pointsabline/
published: true
post_date: 2011-11-16 11:03:49
---
R permet de faire beaucoup de chose avec les graphiques mais il faut coder ce qu'on veut faire. Nous allons voir ici comment ajouter des courbes, des points et des droites sur un plot.<br /><br /> <pre><code><br /><br />#on crée des données pour l'exemple<br /><br /> x&lt;-seq(0:100)<br />a&lt;-2<br />b&lt;-5<br /><br />y1&lt;-a*x+b<br />y2&lt;-a*x^0.5+b<br />y3&lt;-a*x^0.3+b*x<br /><br />ynoisy1&lt;-y1+rnorm(length(y1),sd=0.2*y1)<br />ynoisy2&lt;-y2+rnorm(length(y2),sd=0.2*y2)<br />ynoisy3&lt;-y3+rnorm(length(y3),sd=0.2*y3)<br /><br />#étape 1 on trace la fonction y1 avec un plot<br /><br />plot(y1~x,type='l',col="green",lwd=2,ylim=c(0,300))<br /><br />#étape 2 on veut ajouter les fonctions y2 et y3 sur le même graphiques : on utilise lines<br /><br />lines(y2~x,type='l',col="blue",lwd=2)<br />lines(y3~x,type='l',col="purple",lwd=2)<br /><br />#étape 3 on veut ajouter les nuages de point ynoisy1 2 et 3 sur le graphique: on utilise points<br /><br />points(ynoisy1~x,pch=20,col="grey")<br />points(ynoisy2~x,pch=20,col="black")<br />points(ynoisy3~x,pch=22,col="black")<br /><br />#étape 4 on veut ajouter une droite verticale pour x=50 : on utilise abline(v=) v pour vertical<br /><br /> abline(v=50,col="red")<br /><br />#étape 5 on veut une droite horizontale à y=150 : idem avec h =<br /><br />abline(h=150,col="red")<br /><br />#étape 6 on veut une droite d'équation y= -2*x+300 : abline avec c(ordonnée,pente)<br />abline(c(300,-2),col="black") <br /> <br /></code></pre> <br /><br />Notez que ce graphique est très moche...<br /><br />
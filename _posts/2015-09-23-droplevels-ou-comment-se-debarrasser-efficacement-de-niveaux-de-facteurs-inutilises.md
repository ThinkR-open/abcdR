---
ID: 3214
post_title: >
  droplevels() ou comment se débarrasser
  efficacement de niveaux de facteurs
  inutilisés
author: diane
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/droplevels-ou-comment-se-debarrasser-efficacement-de-niveaux-de-facteurs-inutilises/
published: true
post_date: 2015-09-23 12:08:56
---
<p> <pre><code><br /> jdd &lt;- data.frame(deslettres=letters[1:10], <br />                   desnombres=seq(1:10), <br />                   desfacteurs=c(rep("oui",5), rep("non", 5))) <br /> <br /> levels(jdd$deslettres)<br /> [1] "a" "b" "c" "d" "e" "f" "g" "h" "i" "j"<br /> # il y a 10 niveaux pour la variable qualitative "deslettres"<br /> <br /> # en filtrant sur les nombres....<br /> library(dplyr)<br /> unextrait&lt;-filter(jdd,desnombres &gt; 5)<br /> levels(unextrait$deslettres)<br /> [1] "a" "b" "c" "d" "e" "f" "g" "h" "i" "j" <br /> # ...le nouveau jeu de données garde les anciens noms de niveaux de "deslettres"<br /> </code></pre>  <br /> <br /> <br /> Pour s'en débarrasser, depuis R 2.12.0, la fonction droplevels() rend cette opération aisée... <br /> <br /> <br />  <pre><code><br /> <br /> # ...sur tout le jeu de données :  <br /> droplevels(unextrait)<br /> summary(unextrait) <br /> <br /> <br /> # ...sur une variable en particulier : <br /> droplevels(unextrait$deslettres)<br /> summary(unextrait)<br /> <br /> # ...sur tout le jeu de données sauf celle mentionnées dans l'argument except : <br /> droplevels(unextrait, except="desfacteurs")<br />  <br />  <br /> </code></pre> </p>
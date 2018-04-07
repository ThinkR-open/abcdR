---
ID: 632
post_title: Comment utiliser la fonction by de R ?
author: guillaume
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-utiliser-la-fonction-by-de-r/
published: true
post_date: 2011-11-10 12:26:10
---
La fonction "by" est très intéressante pour éviter des boucles "for" et ainsi optimiser le code<br /> <pre><code><p>data(iris)<br />summary(iris)<br />by(iris[,-5],iris[,5],mean)<br /> </p></code></pre> <br />ou encore quant vous voulez effectuer une fonction qui n'est pas définie.<br /><br /> <pre><code><br /> by(iris[,-5],iris[,5],function(ob){<br />#mettez ici l'opération que vous voulez faire sur le subset<br />return()<br />})<br />  <br /> </code></pre> <br />Le problème peut être que by retourne une liste et que l'on voudrait avoir un tableau de données. C'est ce que fait la fonction do.call, elle prend une liste et effectue une action dessus (ici rbind).<br /><br /> <pre><code><br /> <br />data(iris)<br />summary(iris)<br />do.call(rbind,by(iris[,-5],iris[,5],mean) )<br /><br /> </code></pre>
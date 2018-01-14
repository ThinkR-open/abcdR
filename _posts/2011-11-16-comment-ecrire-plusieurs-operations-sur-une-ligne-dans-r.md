---
ID: 798
post_title: >
  Comment écrire plusieurs opérations
  sur une ligne dans R ?
author: anonyme
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.guyader.pro/comment-ecrire-plusieurs-operations-sur-une-ligne-dans-r/
published: true
post_date: 2011-11-16 10:37:46
tags: [ ]
categories:
  - base indispensable
---
R est un langage itératif, c'est a dire que le logiciel va interpréter une ligne de code après l'autre.<br />Pour gagner de la place, on peut vouloir écrire une série d'opérations sur une seule ligne. On perd en lisibilité, mais pour les choses simples cela peut être pratique. <pre lang='rsplus'><br />rm(list=ls(all=TRUE))<br /><p>a&lt;-5<br />b&lt;-7</p># peut s'écrire sur une ligne grace au séparateur ;<br />rm(list=ls(all=TRUE));a&lt;-5;b&lt;-7<br /></pre> <br /><br /><br /># pour les boucles for while ou les if, on peut compresser comme cela<br /><br /> <pre lang='rsplus'><br /><br />x&lt;-10<br />for ( i in 1:10){<br />print(i)<br />x&lt;-x*i<br />print(x)<br />print("coucou")<br />}<br /> <br /># s'écrit en une ligne<br />x&lt;-10;for ( i in 1:10){print(i);x&lt;-x*i;print(x);print("coucou")} <br /> <br /> </pre> <br /><br /><br />
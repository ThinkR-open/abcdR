---
ID: 3330
post_title: 'Le pipe, qu&#039;est-ce que c&#039;est ?'
author: colin
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/le-pipe-quest-ce-que-cest/
published: true
post_date: 2017-05-05 08:43:40
---
Issu du package magrittr et disponible dans le tidyverse, le pipe vous permet de passer de :
<pre>library(tidyverse)
data("population")
head(summarise(group_by(filter(population, year &gt; 1999),country),moyenne = mean(population)))</pre>
à
<pre>population %&gt;%
    filter(year &gt; 1999) %&gt;%
    group_by(country) %&gt;%
    summarise(moyenne = mean(population)) %&gt;%
    head()</pre>
<p>Plus clair, n'est-ce pas !
<p>Alors, comment ça marche ? C'est très simple : l'élément à gauche de %&gt;% se retrouve en premier argument de la fonction à droite. Autrement dit, f(x,y) s'écrit x %&gt;% f(y).
Comment faire si l'élément de gauche n'est pas le premier argument de celui de droite ? Vous pouvez y faire référence en le remplaçant par un point :
<pre>list(c(1,2,3), c(4,5,6), c(8,9,10)) %&gt;%
    lapply(FUN = mean, .)</pre>
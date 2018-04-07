---
ID: 3141
post_title: 'Comment fusionner les différentes parties d’un array dans un data.frame ? : melt'
author: helene
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-fusionner-les-differentes-parties-dun-array-dans-un-data-frame-melt/
published: true
post_date: 2015-07-16 08:00:24
---
<p>La fonction <b>melt()</b>, qui fait partie du package <b>reshape2</b>, permet de regrouper les différentes parties d’un array dans un data.frame.</p><p> <pre><code></p><p>library(reshape)</p><p> </p><p>a &lt;- array(c(1:11, NA), c(2,2,3),dimnames=list(NULL, NULL, c("A","B","C")))</p><p>a</p><p>, , A</p><p> </p><p>     [,1] [,2]</p><p>[1,]    1    3</p><p>[2,]    2    4</p><p> </p><p>, , B</p><p> </p><p>     [,1] [,2]</p><p>[1,]    5    7</p><p>[2,]    6    8</p><p> </p><p>, , C</p><p> </p><p>     [,1] [,2]</p><p>[1,]    9   11</p><p>[2,]   10   NA</p><p> </p><p> </p><p>melt(a, na.rm = TRUE) #On fusionne A, B et C</p><p>#na.rm permet d'enlever les "NA" du jeu de données</p><p> </p><p>melt(a,na.rm = TRUE, varnames=c("abscisses","ordonnées","variables"))</p><p>#On fait la même chose mais cette fois en attribuant aux colonnes les noms que l'on désire</p><p></pre>    </p><p>On obtient :</p><p> <pre><code></p><p>melt(a,na.rm = TRUE, varnames=c("abscisses","ordonnées","variables"))</p><p>   abscisses ordonnées variables value</p><p>1          1         1         A     1</p><p>2          2         1         A     2</p><p>3          1         2         A     3</p><p>4          2         2         A     4</p><p>5          1         1         B     5</p><p>6          2         1         B     6</p><p>7          1         2         B     7</p><p>8          2         2         B     8</p><p>9          1         1         C     9</p><p>10         2         1         C    10</p><p>11         1         2         C    11</p><p></pre>    </p>
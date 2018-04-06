---
ID: 3139
post_title: >
  Comment attribuer ou modifier le nom des
  différentes parties d’un objet de
  type array ?
author: helene
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-attribuer-ou-modifier-le-nom-des-differentes-parties-dun-objet-de-type-array/
published: true
post_date: 2015-07-15 13:25:44
---
<p> <pre><br />b &lt;- array(c(1:11, NA), c(2,2,3))         </p><p>#On crée un objet de type « array »<br /> </p><p>dimnames(b)&lt;-list(NULL, NULL, c("Temp","Haut","Long"))</p><p>#On attribue un nom aux trois sections de l’array :  "Temp","Haut" et "Long"</p><p></pre>  </p><p>On obtient :</p><p> <pre></p><p>&gt; b</p><p>, , Temp</p><p> </p><p>     [,1] [,2]</p><p>[1,]    1    3</p><p>[2,]    2    4</p><p> </p><p>, , Haut</p><p> </p><p>     [,1] [,2]</p><p>[1,]    5    7</p><p>[2,]    6    8</p><p> </p><p>, , Long</p><p> </p><p>     [,1] [,2]</p><p>[1,]    9   11</p>[2,]   10   NA<br /> </pre>
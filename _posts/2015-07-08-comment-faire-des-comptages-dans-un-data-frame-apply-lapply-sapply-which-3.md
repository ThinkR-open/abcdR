---
ID: 3070
post_title: >
  Comment faire des comptages dans un
  data.frame ? apply, lapply, sapply,
  which
author: helene
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-faire-des-comptages-dans-un-data-frame-apply-lapply-sapply-which-3/
published: true
post_date: 2015-07-08 08:30:55
---
<p>Les fonctions de la famille <strong>apply(</strong>) et la fonction <strong>which()</strong> peuvent permettre de compter les éléments identiques, négatifs, positifs ou encore supérieurs ou inférieurs à une certaine valeur dans un data.frame.</p><p> <pre><br />iris<br /># iris, un tableau de données</p><p>m &lt;- matrix(data=cbind(rnorm(30, 0), rnorm(30, 2), rnorm(30, 5)), nrow=30, ncol=3)</p><p># m, une matrice de données <br /> </pre>  <br /><br />Calculer le nombre d’éléments identiques :</p><p> <pre><br />### Dans un tableau :<br />lapply (iris, function(x) length(unique(x))) # retourne une liste</p><p>sapply (iris, function(x) length(unique(x))) # retourne un vecteur numérique</p><p>### Dans une matrice :</p><p>apply (m, 2,function(x) length(unique(x))) #retourne des entiers <br /> </pre>  <br /><br />Calculer le nombre d’éléments supérieurs ou inférieur à une certaine valeur :</p><p> <pre><br />### Dans un tableau :<br />iris2 &lt;- as.matrix(iris) # On convertie la base de données en matrice</p><p>iris2[,1] &lt;- as.numeric(iris2[,1]) # On convertie la colonne en données numériques</p><p>length(which(iris2[,1]&gt;5)) # On obtient le nombre sépales dont la longueur est supérieur à 5</p><p>### Dans une matrice :</p><p>apply(m, 2, function(x) length(x[x&lt;0])) # Nombre d’éléments négatifs</p><p>apply(m, 2, function(x) length(x[x &gt; 1.5])) # Nombre d’éléments supérieur à 1,5<br /> </pre>   </p>
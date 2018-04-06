---
ID: 3034
post_title: 'Comment appliquer une fonction à une liste ? : lapply ; sapply ?'
author: helene
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-appliquer-une-fonction-a-une-liste-lapply-sapply/
published: true
post_date: 2015-07-07 07:19:58
---
<p>La fonction lapply() permet d'appliquer une fonction à chaque élément d’une liste.<br /> Le premier argument est une liste sur laquelle on veut appliquer la fonction placée en deuxième argument (mean, sum, sd, function(x)…).</p><p> <pre><br /><br />x &lt;- list(a = 1:7, b = runif(n = 5, min = 10, max = 20), booleen = c(TRUE,FALSE,FALSE,TRUE))</p><p>y&lt;-lapply(x,mean)</p><p>#de manière plus générale, cela équivaut à :</p><p>y&lt;-apply(x,function(x) mean(x))</p><p># on ajoute function(x) devant une les fonctions non-prédéfinies dans R</p><p>z&lt;-sapply(x,mean)</p><p># la fonction sapply est équivalente à lapply <br /># mais lapply retourne une liste tandis que la fonction sapply retourne un vecteur numérique, une matrice ou quand cela n'est pas possible, une liste.</p><p></pre> </p><p> </p><p> </p><p> </p><p> </p><p> </p><p> </p>
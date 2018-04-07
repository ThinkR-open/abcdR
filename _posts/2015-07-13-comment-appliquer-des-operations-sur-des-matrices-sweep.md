---
ID: 3115
post_title: 'Comment appliquer des opérations sur des matrices ? : sweep'
author: helene
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-appliquer-des-operations-sur-des-matrices-sweep/
published: true
post_date: 2015-07-13 08:04:33
---
<p>La fonction <b>sweep()</b> permet d’appliquer des opérations sur l’ensemble d'une matrice, sur les lignes ou sur les colonnes.</p><p> <pre><code><br />X &lt;- matrix (sample(9),ncol=3)</p><p>X</p><p>Y &lt;- matrix (sample(9),ncol=3)</p><p>Y</p><p>#Nous créons deux matrices 3x3 remplies par 9 chiffres choisis au hasard</p><p> </p><p>sweep(X,1,3,FUN="-") #Nous soustrayons 3 à tous les élèments de X</p><p>sweep(X,1,Y,FUN="-") #Nous soustrayons Y à X</p><p> </p><p>Z &lt;- matrix (sample(12),ncol=3)  #Z est une matrice 3x4</p><p>A &lt;- matrix(sample(3),ncol=1)    #A est une matrice 1x3</p><p>B &lt;- matrix(sample(4),ncol=1)    #B est une matrice 1x4</p><p> </p><p>sweep(Z,1,B,FUN="+")                #On ajoute B à Z en appliquant la somme sur les colonnes</p><p>sweep(Z,2,A,FUN="+")                #On ajoute A à Z en appliquant la somme sur les lignes<br /> </pre>   </p>
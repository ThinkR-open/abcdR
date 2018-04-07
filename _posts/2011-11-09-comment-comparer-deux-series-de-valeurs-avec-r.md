---
ID: 596
post_title: >
  Comment comparer deux séries de valeurs
  avec R ?
author: Benjamin
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-comparer-deux-series-de-valeurs-avec-r/
published: true
post_date: 2011-11-09 11:28:03
---
Il est souvent utile de pouvoir comparer deux séries de données en algorithmique. Il existe quelques fonctions qui permettent ceci :
<br />
<br />
<pre><code> 
	<br />
	#Prenons 2 séries de valeurs
	<br />
	x=c(1,5,8,6,4,9,3,8)
	<br />
	y=c(5,5,4,3,8,7,7)
	<br />
</code></pre>
<br />
<br />
La fonction union(x,y) donne un vecteur composé des éléments qui se trouvent dans x ou dans y (union de x et de y). 
<br />
<pre><code> 
	<br />
	union(x,y)  #donnera 1 5 8 6 4 9 3 7
	<br />
	union(y,x)  #donnera 5 4 3 8 7 1 6 9
	<br />
</code></pre>
<br />
NB : on obtient le même résultat avec  
<pre><code> 
	unique(c(x,y))
</code></pre>
<br />
<br />
La fonction intersect(x,y) donne un vecteur composé des éléments qui se trouvent à la fois dans x et dans y (intersection de x et de y).
<br />
<pre><code> 
	<br />
	 intersect(x,y)  #donnera 5 8 4 3
	<br />
	 intersect(y,x)  #donnera 5 4 3 8
	<br />
</code></pre>
<br />
<br />
Le changement d'ordre des vecteurs x et y dans ces deux fonction ci-dessus n'affecte pas les éléments contenus dans les résultats (excepté leur ordre).
<br />
<br />
<br />
La fonction setdiff(x,y) donne tous les éléments de x qui ne sont pas dans y. Attention setdiff(y,x) donnera tous les éléments de y qui ne sont pas dans x, donc le résultat ne sera pas le même.
<br />
<pre><code> 
	<br />
	setdiff(x,y)  #donnera 1 6 9
	<br />
	setdiff(y,x)  #donnera 7
	<br />
</code></pre>
<br />
<br />
 La fonction setequal(x,y) retourne la valeur TRUE si x est le même vecteur que y, FALSE sinon.
<br />
<pre><code> 
	<br />
	setequal(x,y)  #donnera FALSE
	<br />
</code></pre>
<br />
<br />
La fonction is.element(x,y) retourne un vecteur de la longueur de x composé des valeurs TRUE si l'élément de x se trouve également dans y (n'importe où) et FALSE sinon.
<br />
<pre><code> 
	<br />
	 is.element(x,y)  #donnera FALSE TRUE TRUE FALSE TRUE FALSE TRUE TRUE 
	<br />
	#car les éléments qui sont à la 1ère, 4ème et 6ème place dans le vecteur x (c'est-à-dire 1, 6 et 9) ne sont #pas des éléments de y tandis que tous les autres le sont
	<br />
	<br />
	is.element(y,x)  #donnera TRUE TRUE TRUE TRUE TRUE FALSE FALSE 
	<br />
	#car les 5 premiers éléments de y sont également des éléments de x tandis que les deux derniers ne le sont pas
	<br />
</code></pre>
<br />
<br />
Cette liste n'est pas exhaustive. Il existe d'autres fonctions qui peuvent servir telles que :
<br />
<pre><code> 
	<br />
	 ?all #qui permet de regarder si une condition est remplie à chaque fois
	<br />
	all(x&lt;=y)  #renvoie TRUE si tous les éléments de x sont inférieurs ou égaux aux éléments de y qui sont à la même place dans le vecteur --&gt; ATTENTION x et y doivent être de même longueur
	<br />
	<br />
	<br />
	 ?any #qui permet de regarder si une condition est remplie sur certains éléments de x et y
	<br />
	 any(x&lt;=y)  #renvoie TRUE si certains des éléments de x sont inférieurs ou égaux aux éléments de y qui sont à la même place dans le vecteur --&gt; ATTENTION x et y doivent être de même longueur 
	<br />
	<br />
	#Exemples :
	<br />
	 x=c(4,5,6)
	<br />
	 y=c(4,6,5)
	<br />
	<br />
	all(x&lt;=y)   #renvoie FALSE car l'élément 3 de x (=6) est supérieur à l'élément 3 de y (=5)
	<br />
	any(x&lt;=y) #renvoie TRUE car les éléments 1 et 2 de x (=4 et 5 respectivement) sont inférieurs ou égaux aux #éléments 1 et 2 de y (=4 et 6 respectivement)
	<br />
	<br />
	 all(x&gt;=y)   #renvoie FALSE car les éléments 1 et 2 de x (=4 et 5 respectivement) sont inférieurs ou égaux aux éléments 1 et 2 de y (=4 et 6 respectivement) 
	<br />
	 any(x&gt;=y) #renvoie TRUE car  l'élément 3 de x (=6) est supérieur à l'élément 3 de y (=5) 
	<br />
</code></pre>
<br />
<br />
<br />


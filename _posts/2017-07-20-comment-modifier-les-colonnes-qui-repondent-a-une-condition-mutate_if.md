---
ID: 3448
post_title: >
  Comment modifier les colonnes qui
  répondent à une condition ?
  mutate_if()
author: colin
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-modifier-les-colonnes-qui-repondent-a-une-condition-mutate_if/
published: true
post_date: 2017-07-20 10:52:04
---
<p>Parfois, on souhaite<strong> appliquer une fonction à plusieurs colonnes de notre tableau, en fonction d'une condition</strong>. Pour cela, direction <code>mutate_if()</code>, du package {dplyr}.</p>
<p>Comme son nom l'indique, <code>mutate_if</code> effectue une modification si la condition est remplie. Les arguments sont :
<li> - Un tableau de données </li>
<li> - La condition à remplir (le test effectué qui devra renvoyé TRUE) </li>
<li> - La transformation à effectuer.</li></p>
<p>Et pour comprendre par l'exemple :</p>
<p><pre><code>
  library(dplyr)
  data("iris")
  str(iris)
  'data.frame':	150 obs. of  5 variables:
 $ Sepal.Length: num  5.1 4.9 4.7 4.6 ...
 $ Sepal.Width : num  3.5 3 3.2 3.1 3 ...
 $ Petal.Length: num  1.4 1.4 1.3 1.5 ...
 $ Petal.Width : num  0.2 0.2 0.2 0.2 ...
 $ Species     : Factor w/ 3 levels   ...
  new_iris &lt;- mutate_if(iris, is.numeric, as.factor)
  str(new_iris)
  &#039;data.frame&#039;:	150 obs. of  5 variables:
 $ Sepal.Length: Factor w/ 35 levels ...
 $ Sepal.Width : Factor w/ 23 levels ...
 $ Petal.Length: Factor w/ 43 levels ...
 $ Petal.Width : Factor w/ 22 levels ...
 $ Species     : Factor w/ 3 levels  ...
</pre></p>
<p>À noter : il est possible d'intégrer ses propres fonctions de transformation. Par exemple, si l'on veut les mesures d'iris en millimètres, plutôt qu'en centimètres.</p>
<p><pre><code>
  mutate_if(iris, is.numeric, function(x){x * 100})
</pre></p>
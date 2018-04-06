---
ID: 3121
post_title: 'Comment appliquer une fonction sur chaque combinaison de deux vecteurs ? : outer'
author: helene
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-appliquer-une-fonction-a-des-vecteurs-outer/
published: true
post_date: 2015-07-13 08:20:43
---
<p>La fonction <b>outer() </b>permet d’appliquer une fonction à chaque couple de deux vecteurs. La fonction <strong>outer()</strong> retourne une matrice de la forme M(i, j) = f (xi , yj) où x et y sont des vecteurs et f une fonction de deux variables → f (x, y)</p><p> <pre></p><p>#On crée deux vecteurs :</p><p>A &lt;- sample(5)</p><p>A</p><p>B &lt;- c(2,6)</p><p>outer(A,B, FUN="+") #On ajoute chaque élément de A et de B 2 à 2 </p><p></pre>   <br /> </p><p>On obtient :</p><p> <pre></p><p>outer(A,B,FUN="+")</p><p>     [,1] [,2]</p><p>[1,]    5    9</p><p>[2,]    7   11</p><p>[3,]    6   10</p><p>[4,]    3    7</p><p>[5,]    4    8</p><p></pre>   <br /> </p><p> <pre><br />Mois &lt;-c("Janv","Fev","Mars")</p><p>Année &lt;- 2008:2010</p><p>outer(Mois,Année,FUN="paste", sep="-")</p><p></pre>   </p><p>On obtient :</p><p> <pre><br />outer(Mois,Année,FUN="paste", sep="-")</p><p>     [,1]        [,2]        [,3]      </p><p>[1,] "Janv-2008" "Janv-2009" "Janv-2010"</p><p>[2,] "Fev-2008"  "Fev-2009"  "Fev-2010"</p><p>[3,] "Mars-2008" "Mars-2009" "Mars-2010"</p><p></pre>   </p>
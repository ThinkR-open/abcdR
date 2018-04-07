---
ID: 474
post_title: Comment faire une boucle for avec R ?
author: vincent
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-faire-une-boucle-for-avec-r/
published: true
post_date: 2011-11-05 20:36:34
---
<pre><code>for ( i in 1:10) { <br />
print(i) <br />
}</pre>  <br />
Cette commande peut se traduire par :
<pre><code>Pour (i allant de 1 à 10) <br />
{ affiche i}</pre>  <br />
Il faut noter que les parenthèses <strong>()</strong> servent à définir la variable et les valeurs qu'elle va prendre successivement à chaque tour de boucle. Les accolades <strong>{}</strong> servent à délimiter les actions à effectuer pour chacune des valeurs prises par la variable.
 <br /><br />
IMPORTANT : R n'aime pas vraiment les boucles <strong>for</strong>, il est beaucoup plus efficace d'utiliser <strong>apply</strong>. Tout particulièrement pour les très grandes et longues boucles, <strong>apply</strong> fait cela en une fraction de seconde... alors que <strong>for</strong> peut mettre plusieurs minutes, ou ne pas réussir.
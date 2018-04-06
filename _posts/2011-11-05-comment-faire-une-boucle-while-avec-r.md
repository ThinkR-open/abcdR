---
ID: 482
post_title: Comment faire une boucle While avec R ?
author: vincent
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-faire-une-boucle-while-avec-r/
published: true
post_date: 2011-11-05 20:50:01
---
<pre>i&lt;-0<br />
while (i&lt;10){ <br />
print(i)<br />
i&lt;-i+1  <br />
} <br />
print("on sort de la boucle")</pre> <br />
<strong>While</strong> va réaliser ce qui est écrit entre les accolades <strong>{}</strong> tant que ce qui est dans les parenthèses <strong>()</strong> est vrai.
Ce code peut donc se traduire de la façon suivante : <br /><br />
<pre>i vaut 0 <br />
tant que (i est inférieur à 0){ <br />
afficher i <br />
augmenter i de 1<br />
}</pre>
<br />
Dans cet exemple au moment où i vaudra 10, on sortira de la boucle.
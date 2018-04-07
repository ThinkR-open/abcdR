---
ID: 3057
post_title: >
  Comment ajouter un niveau à un facteur
  ?
author: helene
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-ajouter-un-niveau-a-un-facteur/
published: true
post_date: 2015-07-08 07:37:59
---
<p>Il est parfois utile d’ajouter un niveau, absent à l’intérieur du facteur mais qui est susceptible de devoir être ajouter par la suite.</p><p> <pre><code><br />x &lt;- factor(c("A","A","B","A","C","A","B","A","B","B","C","A","C"))</p><p>levels(x) &lt;- c(levels(x),"D") # On ajoute le niveau “D” au facteur x</p><p></code></pre>   </p><p>On obtient :</p><p> <pre><code><br /> x</p><p>[1] A A B A C A B A B B C A C</p><p>Levels: A B C D<br /></code></pre> </p>
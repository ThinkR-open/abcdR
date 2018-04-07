---
ID: 3453
post_title: >
  Comment créer un boxplot avec ggplot2 ?
  geom_boxplot()
author: colin
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-creer-un-boxplot-avec-ggplot2-geom_boxplot/
published: true
post_date: 2017-07-20 12:56:28
---
Les boîtes à moustaches vous plaisent, mais R base vous lasse ? Tournez-vous vers {ggplot2} !

Si vous ne savez pas encore comment <strong>créer un graphique avec {ggplot2}</strong>, nous vous invitons à visiter notre <a href="https://abcdr.thinkr.fr/comment-se-construit-un-graphique-avec-ggplot2/">page dédiée</a>.

Ensuite, c'est tout simple, il suffit d'utiliser le geom <code>geom_boxplot</code> ! À l'intérieur de votre <code>aes</code>, x sera votre variable de groupe, et y la variable numérique à visualiser.
<pre><code>  library(ggplot2)
  data("DNase")
  ggplot(DNase, aes(Run, density)) +
  geom_boxplot()
</pre>
Comment lire une boîte à moustache ?
<ul>
 	<li>Le gros trait central indique la médiane.</li>
 	<li>Les deux extrémités de la boîte les 1er et 3e quartiles — 50% des observations se trouvent donc dans la boite.</li>
 	<li>Les extrémités des moustaches sont calculées avec 1.5 fois l'espace interquartile.</li>
 	<li>Les points sont les valeurs aberrantes.</li>
</ul>
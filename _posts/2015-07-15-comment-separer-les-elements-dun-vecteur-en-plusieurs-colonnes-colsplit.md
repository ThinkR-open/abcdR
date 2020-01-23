---
ID: 3133
post_title: 'Comment séparer les éléments d&#039;un vecteur en plusieurs colonnes ? : colsplit'
author: helene
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-separer-les-elements-dun-vecteur-en-plusieurs-colonnes-colsplit/
published: true
post_date: 2015-07-15 07:51:24
tags: [ ]
categories:
  - fonctions utiles
  - manipulation de données
  - Transformation de données
---
<p>La fonction <b>colsplit()</b>, qui fait partie du package <b>reshape2</b>,<b> </b>permet de séparer des éléments d'un vecteur en plusieurs colonnes et de retourner un data.frame. Cela peut être utile lorsqu’on a une combinaison de deux variables associées et séparées par un espace, un « - » ou encore un « _ ».</p><p> <pre><code><br />Library(reshape2)</p><p> </p><p>x &lt;- c("Jan-2001", "Fev-2001", "Mar-2002", "Dec-2005")</p><p>vars &lt;- colsplit(x, "-", c("Mois", "Annee"))<br />#On sépare les deux variables "Mois" et "Année" contenues dans x et séparées par un "-" </p><p>vars</p><p>  Mois Annee</p><p>1  Jan  2001</p><p>2  Fev  2001</p><p>3  Mar  2002</p><p>4  Dec  2005</p><p> </p><p>str(vars)</p><p>'data.frame':   4 obs. of  2 variables:</p><p> $ Mois : chr  "Jan" "Fev" "Mar" "Dec"</p><p> $ Annee: int  2001 2001 2002 2005</p><p></code></pre>   </p><p>On obtient donc un data.frame composé d’une colonne de caractères et une colonne d’entiers. Il est possible d’utiliser la fonction <b>type.convert()</b> pour convertir un vecteur de caractères en vecteur numérique.</p><p> </p><p> </p>
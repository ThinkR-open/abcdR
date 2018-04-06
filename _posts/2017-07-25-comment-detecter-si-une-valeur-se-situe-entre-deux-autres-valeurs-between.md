---
ID: 3473
post_title: >
  Comment détecter si une valeur se situe
  entre deux autres valeurs ? between()
author: colin
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-detecter-si-une-valeur-se-situe-entre-deux-autres-valeurs-between/
published: true
post_date: 2017-07-25 19:25:03
---
<p>Est-ce que la valeur associée à votre variable est comprise entre deux autres valeurs ? Vous le saurez en faisant appel à <code>between</code>, du package {dplyr} ! </p>
<p>{dplyr} est un package du <code>tidyverse</code> que l'on a jamais fini de découvrir. <strong>Regorgeant de fonctions facilitant la manipulation de données</strong>, ce package répond à quasiment toutes les questions que vous pourriez vous poser sur vos données... Et par exemple : comment savoir si une valeur est entre deux autres valeurs.</p>
<p>Pour le savoir, direction <code>between</code>, qui prendra trois paramètres : votre valeur, la valeur de la borne de droite, et la valeur de la borne de gauche. Le tout vous renvoie un vrai ou faux</p>
<p>Par exemple :</p>
<p><pre>
  library(dplyr)
  x &lt;- 0
  between(x, -1, 1)
  [1] TRUE
</p>
<p>Le vrai plus étant de pouvoir effectuer de la sélection avec cette fonction. Par exemple, si l'on souhaite filtrer les données qui sont en dessous de la moyenne, ou en dessous d'un certain seuil :</p>
<p><pre>
  x %
    filter(between(Sepal.Length, 1, 5))
</pre></p>
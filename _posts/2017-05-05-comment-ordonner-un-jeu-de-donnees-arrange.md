---
ID: 3342
post_title: >
  Comment ordonner un jeu de données ?
  arrange()
author: colin
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-ordonner-un-jeu-de-donnees-arrange/
published: true
post_date: 2017-05-05 08:54:19
---
Pour<strong> ordonner un tableau en fonction d'une colonne,</strong> faites appel à arrange(), issu de <em>dplyr.</em> Cette fonction prend en premier argument l'objet contenant le tableau, puis la colonne qui servira de base pour votre tri.
<pre><code>data("midwest")
midwest %&gt;%
  arrange(poptotal)</pre>
Par défaut, la colonne est triée en ordre croissant. Un comportement que vous pouvez modifier avec desc().
<pre><code>midwest %&gt;%
  arrange(desc(poptotal))</pre>
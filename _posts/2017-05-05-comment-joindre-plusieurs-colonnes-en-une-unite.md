---
ID: 3377
post_title: >
  Comment joindre plusieurs colonnes en
  une ? unite()
author: colin
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-joindre-plusieurs-colonnes-en-une-unite/
published: true
post_date: 2017-05-05 09:53:01
---
<p>Si vous souhaitez unifier plusieurs colonnes en une seule, faites appel à la fonction unite(), issue du package <em>tidyr</em>.
<p>Cette fonction prends en premier argument le nom de l'objet contenant le tableau, la colonne cible, les colonnes à lier, puis un éventuel séparateur. Notez que le séparateur de base est "_".
<pre>data("msleep")
library(tidyr)
unite(msleep, genusvore, genus, vore, sep = "-")</pre>
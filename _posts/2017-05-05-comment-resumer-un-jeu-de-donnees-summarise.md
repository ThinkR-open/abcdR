---
ID: 3346
post_title: >
  Comment résumer un jeu de données ?
  summarise()
author: colin
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-resumer-un-jeu-de-donnees-summarise/
published: true
post_date: 2017-05-05 09:04:05
tags: [ ]
categories:
  - manipulation de données
  - tidyverse
---
Vous avez besoin d'un résumé rapide sur une ou plusieurs variables de votre tableau ? Direction la fonction summarise (ou summarize, selon vos affinités).
<pre><code>data("who")
who %&gt;%
  summarise(minimum = min(year))</code></pre>
Notez qu'il est possible de combiner plusieurs résumés dans cette fonction.
<pre><code>who %&gt;%
  summarise(minimum = min(year),
            maximum = max(year))</code></pre>
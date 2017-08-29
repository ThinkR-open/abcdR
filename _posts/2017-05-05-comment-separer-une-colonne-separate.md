---
ID: 3370
post_title: >
  Comment séparer une colonne ?
  separate()
author: Colin
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.guyader.pro/comment-separer-une-colonne-separate/
published: true
post_date: 2017-05-05 09:40:15
---
<p>Votre colonne contient deux variables (ou plus), et vous avez besoin de la séparer ? Pour <strong>transformer xx_yy en deux colonnes qui contiendront xx et yy</strong>, faites appel à la fonction separate() du package tidyr !

<p><em>separate</em> prend quatre arguments principaux : le tableau, le nom de la colonne à séparer, les noms des colonnes cibles, et le séparateur.
<pre lang="rsplus">library(tidyr)
data("presidential")
separate(presidential, start, c("y","m", "d"), sep = "-")</pre>
---
ID: 3282
post_title: >
  comment lire un fichier .ods avec R ?
  read_ods
author: vincent
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-lire-un-fichier-ods-avec-r-read_ods/
published: true
post_date: 2017-03-20 23:07:54
tags: [ ]
categories:
  - importation de données
---
apres avoir installé et chargé le package readODS vous pouvez utiliser la fontion read_ods<br /><br /> <pre><code><br />library(readODS)<br />dataset &lt;- read_ods("fichier.ods")<br /><br /></code></pre>
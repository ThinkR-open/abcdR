---
ID: 973
post_title: >
  Comment découper une variable
  quantitative en classe ? cut
author: vincent
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-decouper-une-variable-quantitatie-en-classe-cut/
published: true
post_date: 2011-12-07 10:44:00
tags: [ ]
categories:
  - manipulation de données
  - Transformation de données
---
Si vous avez un vecteur de données quantitatives et que vous souhaitez le découper en classe de type "petit", "moyen" ou "grand", vous pouvez utiliser la fonction <strong>cut</strong><br /><br /><br /> <pre><code><br /><br />vec&lt;-1:10<br />out&lt;-cut(vec,breaks=c(0,3,6,10))<br />levels(out)&lt;-c("petit","moyen","grand")<br />out <br /><br /><br /></code></pre>
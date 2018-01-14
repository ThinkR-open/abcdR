---
ID: 3083
post_title: 'Comment passer d&rsquo;un format Wide à un format Long pour un data.frame ? : reshape'
author: Helene F
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.guyader.pro/comment-passer-dun-format-wide-a-un-format-long-pour-un-data-frame-reshape/
published: true
post_date: 2015-07-08 14:34:39
tags: [ ]
categories:
  - manipulation de données
  - Transformation de données
---
<p>La fonction <b>reshape() </b>permet de modifier le format des données en fonction de la variable qu’on associe au paramètre « direction ».</p><p> <pre lang='rsplus'></p><p>df &lt;- data.frame(id = rep(1:4, rep(2,4)),</p><p>                 visit = I(rep(c("Before","After"), 4)),</p><p>                 x = rnorm(4), y = runif(4))</p><p>df # df est un data.frame de dimension 8 X 4 avec des répétitions<br /> </p><p># On simplifie le tableau en enlevant les répétitions</p><p>df2=reshape(df, timevar = "visit", idvar = "id", direction = "wide")<br /> </p><p># Le paramètre « direction » associé à la valeur « long » permet de récupérer le format original des données.</p><p>reshape(df2, timevar = "visit", idvar = "id", direction = "long")<br /> </pre>  </p>
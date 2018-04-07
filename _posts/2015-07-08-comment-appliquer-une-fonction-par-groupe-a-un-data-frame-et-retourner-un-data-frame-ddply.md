---
ID: 3079
post_title: 'Comment appliquer une fonction par groupe à un data.frame et retourner un data.frame ? : ddply'
author: helene
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-appliquer-une-fonction-par-groupe-a-un-data-frame-et-retourner-un-data-frame-ddply/
published: true
post_date: 2015-07-08 10:18:33
---
<p>La fonction <b>ddply()</b>, faisant partie du package plyr, permet d’appliquer une fonction à des subdivisions d'un data.frame</p><p> <pre><code><br />library(plyr) # On charge le package plyr</p><p><br /># On construit un data.frame</p><p>dfx &lt;- data.frame(</p><p>    group &lt;- c(rep('A', 8), rep('B', 15), rep('C', 6)),</p><p>    sex &lt;- sample(c("M", "F"), size = 29, replace = TRUE),</p><p>    age &lt;- runif(n = 29, min = 18, max = 54))</p><p></p><p>ddply(dfx, .(group), summarize,</p><p>      mean = round(mean(age), 2),</p><p>      sd = round(sd(age), 2))</p><p># On obtient la moyenne et l'écart type associé à l’âge en fonction du groupe</p><p></p><p>ddply(dfx, .(group, sex), summarize,</p><p>      mean = round(mean(age), 2),</p><p>      sd = round(sd(age), 2))</p><p># On obtient la moyenne et l'écart type de l’âge, en fonction du groupe et du sexe<br /> </pre>   </p>
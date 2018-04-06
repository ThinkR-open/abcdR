---
ID: 3081
post_title: 'Comment appliquer une fonction à une ou plusieurs colonnes d’un data.frame et ajouter ces nouvelles données à ce data.frame ? : ddply()'
author: helene
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-appliquer-une-fonction-a-une-ou-plusieurs-colonnes-dun-data-frame-et-ajouter-ces-nouvelles-donnees-a-ce-data-frame-ddply/
published: true
post_date: 2015-07-08 10:54:13
---
<p>La fonction <strong>ddply()</strong>, faisant partie du package plyr, permet d’appliquer une fonction à une ou plusieurs colonnes d’un data.frame en fonction des modalités d’une ou deux variables, et d’ajouter ces données à ce data.frame.</p><p> <pre><br />library(plyr)        # On charge le package plyr</p><p>#On construit un data.frame :</p><p>dfx &lt;- data.frame(</p><p>    group &lt;- c(rep('A', 8), rep('B', 15), rep('C', 6)),</p><p>    sex &lt;- sample(c("M", "F"), size = 29, replace = TRUE),</p><p>    age &lt;- runif(n = 29, min = 18, max = 54))</p><p> </p><p>ddply(dfx, .(group, sex), mutate,</p><p>    mean = round(mean(age), 2),</p><p>    sd = round(sd(age), 2))</p><p># On obtient la moyenne et l'écart type de l’âge en fonction du groupe et du sexe</p><p># et on ajoute une colonne “mean” et “sd” au data.frame dfx.</p><p></pre> </p>
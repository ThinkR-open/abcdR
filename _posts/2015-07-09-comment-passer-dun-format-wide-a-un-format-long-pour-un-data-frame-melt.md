---
ID: 3089
post_title: 'Comment passer d’un format Wide à un format Long pour un data.frame ? : melt'
author: helene
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-passer-dun-format-wide-a-un-format-long-pour-un-data-frame-melt/
published: true
post_date: 2015-07-09 08:17:40
---
<p>La fonction <b>melt(), </b>qui fait partie du package <b>reshape2</b>, permet de modifier le format des données en fonction d’une ou plusieurs variables de référence (id). Ces variables correspondent en général aux variables qualitatives du data.frame.</p><p> <pre><br />library(reshape2) # On charge le package reshape2</p><p>airquality</p><p>aqm &lt;- melt(airquality, id=c("Month", "Day"), na.rm=TRUE)  <br /> aqm  <br /> </pre>   </p>
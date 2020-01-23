---
ID: 3137
post_title: 'Comment obtenir une table de contingence rapidement, en une seule étape ? : recast'
author: helene
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-obtenir-une-table-de-contingence-rapidement-en-une-seule-etape-recast/
published: true
post_date: 2015-07-15 13:21:05
tags: [ ]
categories:
  - fonctions utiles
  - manipulation de données
---
<p>La fonction <b>recast()</b>, du package <b>reshape2</b>, permet d’obtenir une table de contingence en une seule étape à partir d’un data.frame. La fonction renvoie un data.frame.</p><p> </p><p> <pre><code><br />library(reshape2) # On charge le package reshape2</p><p> </p><p>airquality<br /><br /><br />#En 2 étapes : </p><p>aqm &lt;- melt(airquality, id=c("Month", "Day"), na.rm=TRUE)</p><p>#On passe d’un format “Wide” à un format “Long”</p><p>dcast(aqm, Month ~ variable, mean, margins = TRUE)</p><p>#On obtient une table de contingence contenant la moyenne de chaque variable en fonction du mois</p><p> <br />#En 1 seule étape : </p><p>recast(airquality, Month~ variable, id.var = 5:6, mean, na.rm=TRUE, margins=TRUE)</p><p>#La fonction recast() permet d'obtenir une table de contingence en 1 seule étape<br /> </code></pre>   </p>
---
ID: 3091
post_title: 'Comment obtenir une table de contingence ? : melt, acast, dcast.'
author: helene
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-obtenir-une-table-de-contingence-melt-acast-dcast/
published: true
post_date: 2015-07-09 08:30:49
---
<p>Les fonctions <b>acast() </b>et <b>dcast() </b>associées à la fonction <b>melt()</b>, du package <b>reshape2</b>, permettent d’obtenir une table de contingence.</p><p> <pre><code><br />library(reshape2) # On charge le package reshape2</p><p>airquality</p><p>aqm &lt;- melt(airquality, id=c("Month", "Day"), na.rm=TRUE)</p><p>#On passe d’un format “Wide” à un format “Long”</p><p></p><p>#Pour un array</p><p></p><p>acast(aqm, Month ~ variable, mean)</p><p>#On obtient une table de contingence contenant la moyenne de chaque variable en fonction du mois</p><p></p><p>acast(aqm, Month ~ variable, mean, margins = TRUE)</p><p>#On ajoute les moyennes de chaque variable pour l'ensemble des mois</p><p>#et les moyennes de chaque mois pour l'ensemble des variables</p><p></p><p>#Pour un data.frame</p><p></p><p>dcast(aqm, Month ~ variable, mean, margins = c("Month", "variable"))</p><p></code></pre> </p>
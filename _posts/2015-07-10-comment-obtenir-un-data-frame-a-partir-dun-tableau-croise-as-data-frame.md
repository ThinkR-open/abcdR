---
ID: 3111
post_title: 'Comment obtenir un data.frame à partir d’un tableau croisé ? : as.data.frame'
author: Helene F
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.guyader.pro/comment-obtenir-un-data-frame-a-partir-dun-tableau-croise-as-data-frame/
published: true
post_date: 2015-07-10 13:02:10
tags: [ ]
categories:
  - Transformation de données
---
<p>La fonction <b>as.data.frame()</b> permet de passer d’un tableau croisé à un data.frame.</p><p> </p><p> <pre lang='rsplus'><br />sechage &lt;- factor(c(rep("lent",5),rep("rapide",5)))</p><p>marque &lt;- factor(c(rep("Mer",3),rep("Cim",3),rep("vex",4)))</p><p> </p><p>ciment &lt;- cbind.data.frame(sechage,marque)</p><p> </p><p>tab_croise&lt;-table(ciment$sechage,ciment$marque) #On crée un tableau croisé</p><p> </p><p>tab_croise</p><p>         Cim Mer vex</p><p>  lent     2   3   0</p><p>  rapide   1   0   4</p><p> </p><p> </p><p>as.data.frame(tab_croise) # On reconvertie le tableau croisé en data.frame</p><p></pre>   </p><p>On obtient :</p><p> <pre lang='rsplus'><br />as.data.frame(tab_croise)</p><p>    Var1 Var2 Freq</p><p>1   lent  Cim    2</p><p>2 rapide  Cim    1</p><p>3   lent  Mer    3</p><p>4 rapide  Mer    0</p><p>5   lent  vex    0</p><p>6 rapide  vex    4</p><p></pre>   </p>
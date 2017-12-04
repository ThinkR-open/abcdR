---
ID: 3109
post_title: 'Comment obtenir un tableau croisé ? : table, xtabs'
author: Helene F
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.guyader.pro/comment-obtenir-un-tableau-croise-table-xtabs/
published: true
post_date: 2015-07-10 12:43:47
---
<p>Les fonctions <b>table() </b>et<b> xtabs()</b> permettent d'obtenir directement un tableau croisé à partir des colonnes d'un data.frame</p><p></p><p> <pre lang='rsplus'><br />sechage &lt;- factor(c(rep("lent",5),rep("rapide",5)))</p><p>marque &lt;- factor(c(rep("Mer",3),rep("Cim",3),rep("vex",4)))</p><p> </p><p>ciment &lt;- cbind.data.frame(sechage,marque)</p><p>#On colle les deux variables pour obtenir un data.frame<br /> </p><p>xtabs(~sechage+marque,data=ciment) </p><p>table(ciment$sechage,ciment$marque)</p><p>#Les fonctions table() et xtabs() sont équivalentes</p><p></pre> </p><p>On obtient :</p><p> <pre lang='rsplus'><br /> table(ciment$sechage,ciment$marque)  </p><p>         Cim Mer vex</p><p>  lent     2   3   0</p><p>  rapide   1   0   4<br /> <br /></pre>   </p>
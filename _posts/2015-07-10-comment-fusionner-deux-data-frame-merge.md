---
ID: 3106
post_title: 'Comment fusionner deux data.frame ? : merge'
author: Helene F
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.guyader.pro/comment-fusionner-deux-data-frame-merge/
published: true
post_date: 2015-07-10 12:35:45
---
<p>La fonction <b>merge()</b> permet de fusionner deux data.frame ayant une variables en commun ainsi que des données complémentaires.</p><p> <pre lang='rsplus'><br />age &lt;- c(11,13,14)</p><p>prenom &lt;- c("simon","nicolas","cyril")</p><p>moyenne &lt;- c(12.1,14.2,8.6)</p><p>classe &lt;- factor(c("6eme","4eme","3eme"))</p><p> </p><p>eleves &lt;- cbind.data.frame(age,prenom,classe, moyenne)</p><p>#On colle les données dans un data.frame</p><p> </p><p>nb_elev &lt;- c(29,32,36,33)</p><p>moy_classe &lt;- c(10.2,11.3,10.6,10.9)</p><p>caract_classe &lt;- cbind.data.frame(c("6eme","5eme","4eme","3eme"),nb_elev,moy_classe)</p><p>#On colle les données dans un data.frame</p><p> </p><p>names(caract_classe) &lt;- c("classe","effectif","moyenne de la classe")</p><p>#On attribue à chaque variable le nom que l'on désire</p><p> </p><p>merge(eleves,caract_classe,by="classe") </p><p>#On fusionne les données dans un data.frame</p><p>#La clé commune aux données est la variable "classe"</p><p>#En effet, la variable commune aux data.frame « eleves » et « caract_classe » est la variable classe.</p><p></pre> <br />  </p><p>On obtient :</p><p> </p><p> <pre lang='rsplus'><br /><br />merge(eleves,caract_classe,by="classe") #La clé est la variable "ville"</p><p>  classe age  prenom moyenne effectif moyenne de la classe</p><p>1   3eme  14   cyril     8.6       33                 10.9</p><p>2   4eme  13 nicolas    14.2       36                 10.6</p><p>3   6eme  11   simon    12.1       29                 10.2<br /> </pre>   </p><p> </p>
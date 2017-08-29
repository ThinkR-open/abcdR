---
ID: 3312
post_title: 'Comment installer un package R depuis Github ? : install_github()'
author: Colin
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.guyader.pro/comment-installer-un-package-r-depuis-github/
published: true
post_date: 2017-05-04 20:01:45
---
<p>Vous avez trouvé un package qui vous plait sur Github ? Pour l’installer sur votre machine, vous aurez besoin du package <em>devtools</em>.</p><p> <pre lang='rsplus'>install.packages("devtools")</pre> </p><p>Ensuite, direction <em>install_github()</em>. Cette fonction prend un argument principale : entre guillemets, "username/repo".</p><p> <pre lang='rsplus'>library("devtools")<br />install_github("ThinkRstat/prenoms")</pre> </p><p>Vous pouvez également utiliser : </p><p> <pre lang='rsplus'>devtools::install_github("ThinkRstat/prenoms")</pre> </p><p>C’est d’ailleurs ce raccourci que vous trouverez dans la plupart des README sur GitHub !</p>
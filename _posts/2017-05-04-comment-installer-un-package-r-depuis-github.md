---
ID: 3312
post_title: 'Comment installer un package R depuis Github ? : install_github()'
author: colin
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-installer-un-package-r-depuis-github/
published: true
post_date: 2017-05-04 20:01:45
tags: [ ]
categories:
  - fonctions utiles
---
<p>Vous avez trouvé un package qui vous plait sur Github ? Pour l’installer sur votre machine, vous aurez besoin du package <em>devtools</em>.</p><p> <pre><code>install.packages("devtools")</code></pre> </p><p>Ensuite, direction <em>install_github()</em>. Cette fonction prend un argument principale : entre guillemets, "username/repo".</p><p> <pre><code>library("devtools")<br />install_github("ThinkRstat/prenoms")</code></pre> </p><p>Vous pouvez également utiliser : </p><p> <pre><code>devtools::install_github("ThinkRstat/prenoms")</code></pre> </p><p>C’est d’ailleurs ce raccourci que vous trouverez dans la plupart des README sur GitHub !</p>
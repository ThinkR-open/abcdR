---
ID: 3005
post_title: 'Comment utiliser la parallélisation des calculs avec R ?: foreach'
author: Vincent
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.guyader.pro/comment-utiliser-la-parallelisation-des-calculs-avec-r-foreach/
published: true
post_date: 2015-02-20 20:03:45
tags: [ ]
categories:
  - algorithmique
  - fonctions utiles
  - programmer avec R
---
la parallélisation des calculs, permet d'exploiter au maximum les capacité calculatoire de votre ordinateur en utilisant tous les core de votre machine ( dual core , quad core ...)<br />Cette facpon de proceder est rentable si le calcul que vous voulez faire prend plus de temps que le fait de mettre en place la parallélisation<br /><br /> <pre lang='rsplus'><br />library(foreach)<br /><p>library(doSNOW)</p><p>getDoParWorkers()</p><p>registerDoSNOW(makeCluster(4, type = "SOCK"))# 2 , 4 ou plus en fonction de votre machine</p><p>getDoParWorkers()</p><p>N &lt;- 10^4</p><p>system.time(foreach(i = 1:N,.combine = "cbind") %do% {sum(rnorm(N))})</p><p>system.time(foreach(i = 1:N,.combine = "cbind") %dopar% {sum(rnorm(N))})</p><br /></pre>
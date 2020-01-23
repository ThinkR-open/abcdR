---
ID: 878
post_title: 'Comment créer un facteur correspondant à l&#039;interaction de 2 facteurs sous R?'
author: guillaume
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-creer-un-facteur-correspondant-a-linteraction-de-2-facteurs-sous-r/
published: true
post_date: 2011-11-30 09:31:01
tags: [ ]
categories:
  - base indispensable
  - manipulation de données
---
Il peut être pratique parfois de créer un facteur  correspondant à l'interaction de 2 facteurs. Pour cela vous pouvez utiliser tout simplement la fonction interaction() <pre><code><br /><p>x=letters[rep(seq(from=1,to=5,by=1),rep(5,5))]<br />y=rep(seq(from=1,to=5,by=1),5)<br />interaction(x,y,sep="_")#où sep est le séparateur entre les deux charactères</p></code></pre>
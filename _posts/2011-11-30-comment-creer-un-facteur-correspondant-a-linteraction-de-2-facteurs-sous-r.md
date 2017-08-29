---
ID: 878
post_title: 'Comment créer un facteur correspondant à l&rsquo;interaction de 2 facteurs sous R?'
author: Guillaume
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.guyader.pro/comment-creer-un-facteur-correspondant-a-linteraction-de-2-facteurs-sous-r/
published: true
post_date: 2011-11-30 09:31:01
---
Il peut être pratique parfois de créer un facteur  correspondant à l'interaction de 2 facteurs. Pour cela vous pouvez utiliser tout simplement la fonction interaction() <pre lang='rsplus'><br /><p>x=letters[rep(seq(from=1,to=5,by=1),rep(5,5))]<br />y=rep(seq(from=1,to=5,by=1),5)<br />interaction(x,y,sep="_")#où sep est le séparateur entre les deux charactères</p></pre>
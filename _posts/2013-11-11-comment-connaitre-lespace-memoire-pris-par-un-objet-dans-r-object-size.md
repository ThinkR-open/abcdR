---
ID: 2938
post_title: 'Comment connaitre l&#039;espace mémoire pris par un objet dans R? object.size'
author: vincent
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-connaitre-lespace-memoire-pris-par-un-objet-dans-r-object-size/
published: true
post_date: 2013-11-11 17:03:57
---
<strong>object.size</strong> est une fonction qui retourne la taille d 'un objet dans la mémoire de R.<br /><br /> <pre><code><br />a&lt;-"coucou"<br />object.size(a)<br /> b&lt;-rep(1,99999999) <br /> object.size(b)<br /> <br /><br /></pre>
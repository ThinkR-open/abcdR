---
ID: 3041
post_title: >
  Comment modifier un vecteur contenant
  des caractères ? chartr(), tolower(),
  toupper()
author: helene
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-modifier-un-vecteur-contenant-des-caracteres-chartr-tolower-toupper/
published: true
post_date: 2015-07-07 14:16:12
---
<p> <pre><code><br />x&lt;-("Comment Remplacer Plusieurs Caractères ?")</p><p>chartr("ers","olm",x) # On remplace dans le vecteur x les "e" par des "o"</p><p>                                                                   # les "r" par des "l"</p><p>                                                                   # et les "s" par des "m"</p><p></p><p>tolower(x) # On met tous les caractères en minuscule</p><p>toupper(x) # On met tous les caractères en majuscule<br /> </code></pre>   </p>
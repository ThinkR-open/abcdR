---
ID: 3268
post_title: Comment importer un fichier RDS via http
author: anonyme
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.guyader.pro/comment-importer-un-fichier-rds-via-http/
published: true
post_date: 2016-11-01 15:48:01
---
Pour importer un fichier RDS via une url sur un serveur distant, voici une procédure qui focntionne bien :
<pre lang="rsplus">
readRDS(gzcon(url("http://ton_url/Data/fichier.rds")))

</pre>
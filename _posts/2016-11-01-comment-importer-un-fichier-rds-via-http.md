---
ID: 3268
post_title: comment importer un fichier RDS via http
author: vincent
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-importer-un-fichier-rds-via-http/
published: true
post_date: 2016-11-01 15:48:01
tags: [ ]
categories:
  - fonctions utiles
---
Pour importer un fichier RDS via une url sur un serveur distant, voici une procédure qui focntionne bien :
<pre><code>
readRDS(gzcon(url("http://ton_url/Data/fichier.rds")))
</code></pre>
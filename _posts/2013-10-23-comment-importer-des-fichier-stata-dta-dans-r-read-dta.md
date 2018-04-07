---
ID: 2901
post_title: 'Comment importer des fichiers stata .dta dans R : read.dta'
author: vincent
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-importer-des-fichier-stata-dta-dans-r-read-dta/
published: true
post_date: 2013-10-23 11:02:56
---
les fichiers .dta sont des fichiers proprietaires du logiciel stat, pou les importer dans un R il faut utiliser la fonction <strong>read.dta</strong><br /><br /><br /> <pre><code><br /><br /> library(foreign) <br />dat &lt;- read.dta("http://www.ats.ucla.edu/stat/data/ologit.dta") head(dat)<br /><br /></pre>
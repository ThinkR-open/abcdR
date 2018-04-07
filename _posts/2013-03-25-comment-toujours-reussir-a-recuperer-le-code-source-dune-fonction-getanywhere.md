---
ID: 2219
post_title: 'Comment TOUJOURS reussir à récuperer le code source d&#039;une fonction : getAnywhere'
author: vincent
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-toujours-reussir-a-recuperer-le-code-source-dune-fonction-getanywhere/
published: true
post_date: 2013-03-25 22:15:50
---
Parfois on peut être ammené à vouloir lire le code source d'une fonction.(pour s'en inspirer, la comprendre ou la modifier)<br />Mais il est possible que ce code ne soit pas directement accessible, et il peut etre laborieux de le retrouver. La fonction <strong>getAnywhere</strong> fait le travail pour nous. <br />Exemple comment voir le code source de la fonction <strong>print.surfit</strong> du package <strong>survival</strong><br /><br /> <pre><code><br />library(survival)<br />print.survfit # introuvable<br /> survival::print.survfit  #ne fonctionne pas<br />getAnywhere(print.survfit) # eureka<br /></code></pre> <br /><br />Fonction à avoir sous le coude...
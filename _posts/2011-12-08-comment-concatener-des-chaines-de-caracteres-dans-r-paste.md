---
ID: 1014
post_title: 'Comment concaténer des chaînes de caractères dans R ? : paste'
author: vincent
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-concatener-des-chaines-de-caracteres-dans-r-paste/
published: true
post_date: 2011-12-08 18:03:52
---
La fonction <strong>paste </strong>permet de "coller" des chaînes de caractères, cela peut être utile pour plein de chose : définir le nom d'un fichier de sortie, écrire une formule pour un modele... <pre><code><br /><br />a&lt;-"coucou"<br />b&lt;-"comment vas-tu?"<br /><br />paste(a,b)<br /># coucou comment vas-tu?<br /> paste(a,b,sep="+") <br />#  coucou+comment vas-tu? <br /># le paramètre sep permet de définir le caractère utilisé pour concaténer les chaînes de caractères<br /><br /><br /></code></pre> <br />
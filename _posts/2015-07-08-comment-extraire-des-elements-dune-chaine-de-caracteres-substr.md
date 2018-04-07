---
ID: 3085
post_title: 'Comment extraire des éléments d’une chaîne de caractères ? : substr'
author: helene
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-extraire-des-elements-dune-chaine-de-caracteres-substr/
published: true
post_date: 2015-07-08 14:48:22
---
<p>La fonction <strong>substr()</strong> permet d'extraire une sous-chaine à partir d'une chaine de caractères. Dans cette fonction le premier argument est la chaine de caractères, le deuxième correspond au début de sous-chaine et le troisième à la fin de la sous-chaine que nous voulons extraire.</p><p> <pre><code><br />chaine &lt;- "Bonjour tout le monde"<br /> </p><p>ss_chaine &lt;- substr(chaine,9,12) <br />#La sous-chaine débute au 9ème caractère et se finie au 12ème</p><p>#Ainsi on extrait le mot "tout"</p><p></code></pre> </p>
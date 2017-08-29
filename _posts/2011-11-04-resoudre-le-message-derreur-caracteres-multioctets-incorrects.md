---
ID: 449
post_title: 'Comment résoudre le message d&rsquo;erreur : caractères multioctets incorrects ?'
author: Vincent
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.guyader.pro/resoudre-le-message-derreur-caracteres-multioctets-incorrects/
published: true
post_date: 2011-11-04 15:50:01
---
Ce message apparaît lorsque l'on essaye de lancer un script initialement écrit sous windows sur une station linux (et inversement).
Il s'agit d'un souci d'encodage.
 <br />
il est possible de corriger cela grâce au script suivant (remplacer latin1 par l'encodage d'origine du fichier) 
<br /><pre lang="rsplus">options(encoding="latin1")</pre>  
<br />Ou alors <br />
<pre lang="rsplus">options(encoding="utf-8")</pre>
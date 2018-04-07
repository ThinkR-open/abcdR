---
ID: 2906
post_title: 'Comment ecrire les sortie de R dans un fichier texte ? : sink'
author: vincent
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-ecrire-les-sortie-de-r-dans-un-fichier-texte-sink/
published: true
post_date: 2013-10-23 11:45:33
---
la fonction <strong>sink</strong> permet de dérouter la sortie de R vers un fichier de sortie. elle peut etre pratique pour stocker des resultats sans s'embeter avec la mise en forme tout en gardant quelque chose de lisible.<br /><br /> <pre><code><br /><br /> print("coucou")<br />sink("monfichier.txt")<br />print("coucou") # le résultat de la commande est ecrit dans monfichier.txt<br />print(head(iris))<br />sink() <br /></pre>
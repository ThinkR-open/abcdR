---
ID: 641
post_title: >
  Comment changer les paramètres
  graphiques dans lattice avec R?
author: Guillaume
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.guyader.pro/comment-changer-les-parametres-graphiques-dans-lattice-avec-r/
published: true
post_date: 2011-11-10 13:59:07
---
La commande ci-dessous vous retourne la liste des paramètres graphiques et leur valeur<br /><br /> <pre lang='rsplus'><br /> trellis.par.get() <br /> </pre> <br /><br />Pour changer un paramètre, par example axis.text, la commande est la suivante<br /><br /> <pre lang='rsplus'><br /><p> taille&lt;- trellis.par.get("axis.text") # extraction du paramètre<br /> taille$cex &lt;-5   # changement de sa valeur<br /> trellis.par.set("axis.text", taille) # sauvegarde de la nouvelle valeur<br /></pre> <br /><br /> </p>
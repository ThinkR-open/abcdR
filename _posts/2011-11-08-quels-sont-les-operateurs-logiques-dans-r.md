---
ID: 580
post_title: >
  Quels sont les opérateurs logiques dans
  R?
author: Vincent
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.guyader.pro/quels-sont-les-operateurs-logiques-dans-r/
published: true
post_date: 2011-11-08 16:19:30
---
Dans R il est possible d'effectuer des comparaisons ou des tests qui vont sortir la valeur <strong>TRUE</strong> si vrai et <strong>FALSE</strong> si faux<br /><br />Voici les différents opérateur que l'on peut utilser<br /><br /> <pre lang='rsplus'><br />&gt; # strictement supérieur<br />&lt; # strictement inférieur<br />&gt;= # supérieur ou égal<br />&lt;= # inférieur ou égal<br />!= # différent<br />== # égal   ( oui il faut mettre == et pas =)<br /> </pre> <br /><br /><br />un peu moins utile mais à avoir sous le coude au cas où:<br /><br />  <pre lang='rsplus'><br />! # négation <br />&amp;, &amp;&amp; # et<br />|, || # ou inclusif (retournera VRAI si l'une ou l'autre ou les deux propositions sont vraies)<br />xor(,) # ou exclusif (retournera VRAI si l'une ou l'autre mais pas les deux propositions sont vraies)<br /> </pre>
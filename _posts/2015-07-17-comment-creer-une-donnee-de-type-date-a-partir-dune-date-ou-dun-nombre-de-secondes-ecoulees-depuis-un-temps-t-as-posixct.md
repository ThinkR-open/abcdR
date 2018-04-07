---
ID: 3151
post_title: >
  Comment créer une donnée de type date
  à partir d’une date ou d’un nombre
  de secondes écoulées depuis un temps t
  ? as.POSIXct
author: helene
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-creer-une-donnee-de-type-date-a-partir-dune-date-ou-dun-nombre-de-secondes-ecoulees-depuis-un-temps-t-as-posixct/
published: true
post_date: 2015-07-17 07:56:22
---
<p>La fonction <b>as.POSIXct()</b>, permet de créer une donnée de type « date » comprenant une année, un mois, un jour, et une heure, à partir d’un nombre de secondes écoulées et une date d’origine ou en insérant directement la date et l’heure :</p><p> <pre><code><br />#Nous avons un nombre de secondes écoulées depuis le 1960-01-01 00:00:00</p><p>z &lt;- 1472562988</p><p># On convertie z en date :</p><p>as.POSIXct(z, origin = "1960-01-01")</p><p>[1] "2006-08-30 15:16:28 CEST"</p><p> </p><p>#Nous pouvons également insérer directement une date</p><p>#de type : « AAAA-MM-JJ HH:Min:sec »</p><p>x &lt;- as.POSIXct("2009-08-03 12:01:57.23")</p><p>x</p><p>[1] "2009-08-03 12:01:57 CEST"<br /> </code></pre>   </p>
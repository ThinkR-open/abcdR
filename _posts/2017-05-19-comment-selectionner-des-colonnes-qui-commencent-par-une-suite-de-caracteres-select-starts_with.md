---
ID: 3415
post_title: >
  Comment sélectionner des colonnes qui
  commencent par une suite de caractères
  ? select( starts_with())
author: colin
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-selectionner-des-colonnes-qui-commencent-par-une-suite-de-caracteres-select-starts_with/
published: true
post_date: 2017-05-19 07:59:02
tags: [ ]
categories:
  - manipulation de données
  - tidyverse
---
<p>Vous avez besoin de <strong>sélectionner des colonnes en fonction de leur nom</strong> ? Faites appel à <em>select</em>, fonction du package <em>dplyr</em>. Vous trouvez laborieux de taper à la main l'ensemble des noms des colonnes que vous souhaitez ? Il y a un paramètre pour ça !
<p>Si vos noms de colonnes suivent un pattern défini, vous pouvez les sélectionner avec <em>starts_with()</em>.
<p><pre><code>library(dplyr)
data("who")
select(who, starts_with("newrel"))</code></pre>
<p>À noter que vous pouvez également utiliser ends_with(), matches() ou encore contains().
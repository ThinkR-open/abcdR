---
ID: 3360
post_title: tibble ou data.frame ?
author: colin
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/tibble-ou-data-frame/
published: true
post_date: 2017-05-05 09:34:17
---
<p>Commençons par un point important : un tibble est un data.frame... mais un data.frame amélioré !
<p>Élément central du tidyverse, cette forme diffère des data.frame natifs dans deux comportements :
<p>
<ul>
	<li>l'affichage : les tibbles s'adaptent à l'écran, et chaque colonne affiche son type.</li>
	<li>la sélection : elle est plus stricte dans un tibble — elle ne se fait jamais en partial match, et un message d'erreur s'affiche lorsque vous sélectionner un élément qui n'existe pas.</li>
</ul>
Pour créer un tibble, deux solutions : la conversion depuis un data.frame, ou la création à la main.
<pre><code>library(tibble)
data("swiss")
as_tibble(swiss)
tibble(x = 1:4,
       y = 5:8)</code></pre>
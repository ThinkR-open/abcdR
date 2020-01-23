---
ID: 4579
post_title: >
  Comment supprimer les NA (valeurs
  manquantes) dans R avec dplyr ?
author: Sébastien
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-supprimer-les-na-valeurs-manquantes-dans-r-avec-dplyr/
published: true
post_date: 2018-09-14 09:08:31
tags: [ ]
categories:
  - base indispensable
  - manipulation de données
  - tidyverse
  - Transformation de données
---
Vous savez <a href="https://abcdr.thinkr.fr/comment-filtrer-un-jeu-de-donnees-avec-dplyr/">comment filtrer un jeu de données avec dplyr ? : filter()</a>, on peut donc utiliser une règle pour filtrer sur les valeurs manquantes (les fameux <code>NA</code>) en utilisant la fonction <code>is.na</code>.
<pre lang="r"><code>
library(dplyr)

df &lt;- tibble(x1 = c(1, 2, NA, 4),
x2 = c("a", NA, "b", "c"),
y = c(NA, TRUE, FALSE, TRUE))

df %&gt;% filter(!is.na(x1))

</code></pre>
Mais si vous voulez supprimer les lignes qui contiennent des <code>NA</code> dans plusieurs colonnes, voire toutes les colonnes, il vaut mieux utiliser <code>drop_na</code> du package {tidyr}. Vous pourrez même utiliser les "helpers" comme pour la fonction <code>select</code> de {dplyr} pour choisir les colonnes avec des règles.
<pre lang="r"><code>
library(tidyr)

df &lt;- tibble(x1 = c(1, 2, NA, 4),
x2 = c("a", NA, "b", "c"),
y = c(NA, TRUE, FALSE, TRUE))

df %&gt;% drop_na()
df %&gt;% drop_na(x1)
df %&gt;% drop_na(starts_with("x"))

</code></pre>
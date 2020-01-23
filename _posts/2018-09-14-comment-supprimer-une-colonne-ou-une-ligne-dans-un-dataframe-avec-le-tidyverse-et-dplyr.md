---
ID: 4576
post_title: >
  Comment supprimer une colonne ou une
  ligne dans un dataframe avec le
  tidyverse et dplyr ?
author: Sébastien
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-supprimer-une-colonne-ou-une-ligne-dans-un-dataframe-avec-le-tidyverse-et-dplyr/
published: true
post_date: 2018-09-14 08:55:49
tags: [ ]
categories:
  - base indispensable
  - manipulation de données
  - tidyverse
  - Transformation de données
---
Comme on est dans le {tidyverse}, on va utiliser les bons termes :

- Nous allons utiliser le pipe pour rendre le code plus clair ( <a href="https://abcdr.thinkr.fr/le-pipe-quest-ce-que-cest/">Le pipe, qu'est-ce que c'est ?</a> )
- On ne travaille plus avec des dataframes, mais avec des tibble: (<a href="https://abcdr.thinkr.fr/tibble-ou-data-frame/">tibble ou data.frame ?</a>)
- Et donc on ne supprime pas de ligne, mais on filtre les données en fonction d'une condition.

En effet, si vous souhaitez retirer des lignes de données, vous avez sûrement une bonne raison. Cette bonne raison se trouve dans les données elles-mêmes. Vous utilisez donc cette information pour filtrer les données.
<pre class="r"><code>
library(dplyr)

iris %&gt;%
filter(Species != "setosa")
</code></pre>
Pour en savoir un peu plus sur la fonction <code>filter</code>:<a href="https://abcdr.thinkr.fr/comment-filtrer-un-jeu-de-donnees-avec-dplyr/"> Comment filtrer un jeu de données avec dplyr ? : filter()</a>

- De même, on ne supprime pas de colonne, mais on sélectionne celles que l'on veut garder. Toutefois, avec le "helper" <code>-</code> (signe négatif), il est possible d'anti-sélectionner une colonne. Par ailleurs, il vaut mieux nommer la colonne que l'on veut retirer, même si c'est toujours possible de donner sa position (mais non recommandé pour la reproductibilité du code)
<pre class="r"><code>
# Column
iris %&gt;%
select(-Species)

iris %&gt;%
select(-5)
</code></pre>
Pour en savoir plus sur <code>select</code>, c'est par ici: <a href="https://abcdr.thinkr.fr/comment-selectionner-des-colonnes-dans-un-data-frame-select/">Comment sélectionner des colonnes dans un data.frame ? select()</a>

Enfin, pour un petit tutoriel sur {dplyr}, c'est par ici: <a href="https://thinkr.fr/utiliser-la-grammaire-dplyr-pour-triturer-ses-donnees/">Utiliser la grammaire dplyr pour triturer ses données</a>
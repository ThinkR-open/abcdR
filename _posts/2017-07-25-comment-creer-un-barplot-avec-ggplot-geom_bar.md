---
ID: 3467
post_title: >
  Comment créer un barplot avec ggplot?
  geom_bar()
author: colin
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-creer-un-barplot-avec-ggplot-geom_bar/
published: true
post_date: 2017-07-25 19:01:42
---
Il s'agit d'un des formats de graphiques les plus populaires : le barplot est simple à réaliser, encore plus avec <code>ggplot2</code>. Du moins, si l'on connait ses spécificités.

Package du tidyverse, {ggplot2} est un <strong>outil de visualisation ultra célèbre parmi les utilisateurs de R</strong>. Et pour cause, même si sa syntaxe peut surprendre à première vue, les résultats obtenus sont haut-de-gamme.

Alors, comment réaliser un barplot ? Tout simplement avec le geom <code>geom_bar()</code>. À noter que vous pouvez l'utiliser pour deux formats de barplots, qui demandent chacun d'adapter votre code.

Pour compter les occurences d'une variable, vous avez besoin de seulement spécifier en x la colonne sur laquelle effectuer le comptage.
<pre><code>  library(ggplot2)
  data("diamonds")
  ggplot(diamonds, aes(x = cut)) +
    geom_bar()
</code></pre>
Ici, {ggplot2} effectue, pour vous, le comptage du nombre d'occurences de chaque modalité de la variable.

Si le comptage de vos modalités est déjà dans le tableau, il vous faudra spécifier la variable de comptage en y, et ajouter <code>stat = "identity"</code> dans votre <code>geom_bar</code>.
<pre><code>  df &lt;- data.frame(a = LETTERS,
                   b = 1:26)
  ggplot(df, aes(a, b)) +
    geom_bar(stat = "identity")
</code></pre>
En savoir plus : <a href="https://abcdr.thinkr.fr/comment-se-construit-un-graphique-avec-ggplot2/">Comment construire un graphique avec ggplot2</a>.
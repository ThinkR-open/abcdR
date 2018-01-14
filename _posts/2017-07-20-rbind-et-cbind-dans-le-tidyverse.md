---
ID: 3458
post_title: >
  Comment faire rbind et cbind dans le
  tidyverse ? bind_rows et bind_cols
author: Colin
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.guyader.pro/rbind-et-cbind-dans-le-tidyverse/
published: true
post_date: 2017-07-20 14:42:15
tags: [ ]
categories:
  - manipulation de données
  - tidyverse
---
<p>Plus de robustesse, plus de sécurité, nous avons nommé <code>bind_rows</code> et <code>bind_cols</code> !</p>

<p>Package du tidyverse, <strong>{dplyr} regorge d'outils ultra efficaces pour la manipulation de données</strong>. Parmi eux, deux petites fonctions qui, à première vue, ne payent pas de mine... et pourtant. <code>bind_rows</code> et <code>bind_cols</code> vous permettent d'effectuer l'équivalent de <code>rbind</code> et <code>cbind</code> mais sont plus fonctionnelles, et affichent des résultats plus propres et exploitables.</p>

<p>Commençons par créer deux tableaux. Si nous tentons de les juxtaposer avec la fonction de base <code>rbind</code>, nous aurons une erreur. À l'inverse, <code>bind_rows</code> fera le job, en peuplant les "colonnes manquantes" par des NA.</p>

<p><pre lang="rsplus">
  library(dplyr)
  df1 <- data.frame(a = LETTERS, 
                    b = LETTERS)
  df2 <- data.frame(c = LETTERS, 
                    d = LETTERS)
  bind(df1, df2)
    Error in match.names(clabs, names(xi)) : 
      les noms ne correspondent pas aux noms précédents
  bind_rows(df1, df2)
</pre></p>

</p>

<p>Au tour de <code>bind_cols</code>. Pas de soucis dans nos deux exemples du dessus, en base ou avec la fonction de {dplyr}. Testons avec deux nouveaux tableaux.</p>


<p><pre lang="rsplus">
  df3 <- data.frame(a = LETTERS[1:2], 
                    b = LETTERS[1:2])
  df4 <- data.frame(a = LETTERS[1:2], 
                    b = LETTERS[1:2])
                    
  cbind(df3, df4) 
    a b a b
  1 A A A A
  2 B B B B
  
  bind_cols(df3, df4)
    a b a1 b1
  1 A A  A  A
  2 B B  B  B
</pre></p>

<p>Le réel plus de <code>bind_cols</code> ici ? La gestion des noms de colonne : alors que la fonction de {base} duplique les noms, la fonction de {dplyr} ajoute un chiffre, afin d'éviter le souci des colonnes dupliquées, qui pourront plus tard mettre en péril une analyse.</p>
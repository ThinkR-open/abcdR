---
ID: 3437
post_title: 'Comment remplacer une chaîne de caractères ? string_replace_all(df, &quot;pattern&quot;,&quot;replacement&quot;)'
author: colin
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-remplacer-chaine-caracteres/
published: true
post_date: 2017-07-20 10:07:00
---
<p>Vous avez besoin de <strong>manipuler des chaîne de caractères</strong> en toute simplicité ? Alors vous allez aimer le package <em>stringr</em> !</p>
<p>Comme toutes les fonctions du <em>tidyverse</em>, la syntaxe est claire, rien que dans le nom. Pour remplacer toutes les chaînes de caractères, on va utiliser <code>str_replace_all</code> (string, replace, all), tout simplement.</p>
<p>Autre règle suivie par cette fonction : le premier argument est l'objet qui contient la chaîne. Vous devrez coder : str_replace_all(df, pattern, replacement). Par exemple : </p>
<p><pre><code>
  library(stringr)
  str_replace_all("Une chaîne de caractères", pattern = "Une", replacement = "1")
  [1] "1 chaîne de caractères"
</pre></p>
<p>À noter : l'équivalent <code>str_replace</code>, qui ne remplacera que le premier élément qu'il rencontrera.</p>
<p><pre><code>
  str_replace("Une chaîne de caractères et une autre", pattern = "Une", replacement = "1")
  [1] "1 chaîne de caractères et une autre"
</pre></p>
---
ID: 3127
post_title: 'Comment arrondir un nombre ? Quelques fonctions : floor, ceiling, round.'
author: helene
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-arrondir-un-nombre-quelques-fonctions-floor-ceiling-round/
published: true
post_date: 2015-07-13 13:57:15
---
<p>Plusieurs fonctions existent sur R et permettent d’arrondir un nombre selon différentes règles :</p><p> </p><p> <pre><code><br />floor(1.26)   #floor() arrondit à l'entier le plus petit</p><p>[1] 1</p><p> </p><p>ceiling(1.26) #ceiling() arrondit à l'entier le plus grand</p><p>[1] 2</p><p> </p><p>#round() arrondit au nombre le plus proche</p><p>#le paramètre digit précise le nombre de chiffres après la virgule que nous voulons conserver</p><p>round(1.26, digits=0)</p><p>[1] 1</p><p>round(1.76, digits=0)</p><p>[1] 2</p><p>round(1.76, digits=1)</p><p>[1] 1.8</p><p>round(1.72, digits=1)</p><p>[1] 1.7</p><p></pre>   </p>
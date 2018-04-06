---
ID: 3143
post_title: >
  Comment trier un vecteur numérique dans
  l’ordre croissant ou décroissant ?
  sort, rev.
author: helene
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-trier-un-vecteur-numerique-dans-lordre-croissant-ou-decroissant-sort-rev/
published: true
post_date: 2015-07-16 08:09:05
---
<p> <pre><br />y &lt;- sample(15)</p><p> [1] 10  2 12 14  7  5  6  8  3  4  9 13  1 15 11</p><p>#y est un veteur d'entiers</p><p> </p><p>sort(y)        #On trie le vecteur dans l'ordre croissant</p><p> [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15</p><p> </p><p>rev(sort(y))   #On trie le vecteur dans l'ordre décroissant</p><p> [1] 15 14 13 12 11 10  9  8  7  6  5  4  3  2  1<br /><br /> </pre>   </p>
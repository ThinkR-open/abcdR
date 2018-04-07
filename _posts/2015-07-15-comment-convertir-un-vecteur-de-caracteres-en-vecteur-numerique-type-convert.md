---
ID: 3135
post_title: 'Comment convertir un vecteur de caractères en vecteur numérique ? : type.convert'
author: helene
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-convertir-un-vecteur-de-caracteres-en-vecteur-numerique-type-convert/
published: true
post_date: 2015-07-15 07:54:47
---
<p>La fonction <b>type.convert()</b>, qui fait partie du package <b>reshape2</b>, permet de convertir un vecteur de caractères en vecteur numérique.</p><p> </p><p> <pre><code><br />Library(reshape2)</p><p> </p><p>x &lt;- c("14","11","2") #On crée un vecteur</p><p>class(x)</p><p>[1] "character"</p><p> </p><p>x &lt;- type.convert(x, dec=".")</p><p>class(x)</p><p>[1] "integer"</p><p>x</p><p>[1] 14 11  2<br /> </code></pre>   </p>
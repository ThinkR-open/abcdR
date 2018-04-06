---
ID: 3258
post_title: 'Comment fixer et reproduire l&#039;aléatoire ? set.seed()'
author: diane
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-fixer-et-reproduire-laleatoire-set-seed/
published: true
post_date: 2016-06-01 13:45:01
---
Afin d'utiliser des processus aléatoires mais de faire en sorte qu'ils soient reproductibles dans le temps ou sur une autre machine/système  <pre>set.seed()</pre>  est une fonction qui permet de fixer les résultats qui seront fournis par le RNG (random number generator). <br /><br />  <pre><br />sample(letters[4:9]) <br />[1] "d" "g" "f" "h" "i" "e" <br />sample(letters[4:9]) <br />[1] "e" "i" "g" "f" "h" "d" <br />sample(letters[4:9]) <br />[1] "f" "d" "e" "h" "i" "g"<br /><br />set.seed(123)<br />sample(letters[4:9]) <br />[1] "e" "g" "i" "f" "h" "d" <br />set.seed(123) <br />sample(letters[4:9]) <br />[1] "e" "g" "i" "f" "h" "d"<br /><br /></pre>  <br /><br />Comment choisir le chiffre à mettre dans la fonction set.seed ? Au hasard ! ;-)<br /><br /><br />
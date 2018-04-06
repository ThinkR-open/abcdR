---
ID: 3198
post_title: >
  Comment appliquer des conditions sur R ?
  if, else, elseif
author: helene
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-appliquer-des-conditions-sur-r-if-else-elseif/
published: true
post_date: 2015-07-30 10:04:42
---
<p>Les conditions permettent d’exécuter une commande en fonction d’une ou plusieurs conditions. La forme la plus simple s’écrit :</p><p> </p><p>&gt; if (condition){</p><p>+    commande1</p><p>+    commande2</p><p>+    …</p><p>+}</p><p> </p><p>Exemple :<br /> <pre> </p><p>B&lt;-TRUE</p><p>x&lt;-2</p><p> </p><p>if (B==TRUE){</p><p>     x&lt;-x+1</p><p>     y&lt;-10</p><p>}</p><p> </p><p>x</p><p>[1] 3</p><p>y</p><p>[1] 10</p><p></pre>   </p><p>Dans ce cas là si B est différent de TRUE rien n’est effectué. Pour ajouter une des commandes lorsque que la première condition n’est pas vérifiée on utilise <b>else</b> :</p><p> </p><p>&gt; if (condition){</p><p>+    commande1</p><p>+    commande2</p><p>+    …</p><p>} else (condition){</p><p>+    commande1</p><p>+    commande2</p><p>+    …</p><p>+}</p><p> </p><p>Exemple :</p><p> <pre></p><p>B&lt;-FALSE</p><p>x&lt;-2</p><p> </p><p>if (B==TRUE){</p><p>     x&lt;-x+1</p><p>     y&lt;-10</p><p>}else{</p><p>     x&lt;-x-1</p><p>     y&lt;-5</p><p>}</p><p> </p><p>x</p><p>[1] 1</p><p>y</p><p>[1] 5</p><p></pre>    </p><p>Dans ce cas-là il n’y a qu’une condition et son contraire. Si on désire ajouter une condition nous pouvons utiliser <b>else if</b> <b>:</b></p><p><b> </b></p><p>&gt; if (condition){</p><p>+    commande1</p><p>+    commande2</p><p>+    …</p><p>} else if(condition){</p><p>+    commande1</p><p>+    commande2</p><p>+    …</p><p>+} else(condition){</p><p>+    commande1</p><p>+    commande2</p><p>+    …</p><p>+}</p><p> </p><p>Exemple :<br /> <pre></p><p>t&lt;-7</p><p>x&lt;-2</p><p> </p><p>if (t&gt;10){</p><p>     x&lt;-x+2</p><p>     y&lt;-10</p><p>} else if (5&lt;=t &amp; t&lt;10){</p><p>     x&lt;-x+1</p><p>     y&lt;-5</p><p> }else {</p><p>     x&lt;-x-1</p><p>     y&lt;-3</p><p>}</p><p> </p><p>x</p><p>[1] 3</p><p>y</p><p>[1] 5</p><p></pre>  </p><p></p>
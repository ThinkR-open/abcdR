---
ID: 3194
post_title: Comment utiliser la Lois Gamma sur R ?
author: helene
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-utiliser-la-lois-gamma-sur-r/
published: true
post_date: 2015-07-30 09:59:32
---
<p>La loi Gamma ou d’<a href="http://nobelis.eu/photis/Noms/nomsEFGH.html#E" title="Accéder aux informations.">Euler</a> est une loi très utiles pour les propriétés de décroissance rapide. La loi Gamma peut décrire des phénomènes de durée de vie, pour l’étude du temps écoulé entre deux faits.</p><p> </p><p>Sur R, les options shape et scale correspondent respectivement α et β.</p><p>Nous pouvons calculer la densité de probabilité de la loi G(1,3) pour la valeur x=2 grâce à la fonction <b>dgamma() :</b></p><p> <pre><code></p><p>X&lt;-2<br />alpha&lt;-1<br />beta&lt;-3</p><p>dgamma(x,shape=alpha,scale=beta)</p><p></pre>   </p><p>Nous pouvons calculer la probabilité que x soit inférieur ou égal à 2 sur la loi G(1,3), c’est-à-dire calculer la fonction de répartition F(2) grâce à la fonction <b>pgamma() :</b></p><p> <pre><code></p><p>X&lt;-2<br />alpha&lt;-1<br />beta&lt;-3</p><p>pgamma(x,shape=alpha,scale=beta)</p><p></pre>    </p><p>Nous pouvons également calculer la probabilité que x soit supérieur à 2 sur la loi G(1,3)<b> :</b></p><p> <pre><code></p><p>X&lt;-2<br />alpha&lt;-1<br />beta&lt;-3</p><p>pgamma(x,shape=alpha,scale=beta, lower.tail=FALSE)</p><p></pre>    </p><p>Nous pouvons calculer le seuil de x correspondant aux 2.5% plus hautes valeurs de x, c’est-à-dire F(xi) = 0.025. Pour cela nous utilisons la fonction <b>qgamma() :</b></p><p> <pre><code></p><p>X&lt;-2<br />alpha&lt;-1<br />beta&lt;-3</p><p>qgamma(x,shape=alpha,scale=beta, lower.tail=FALSE)</p><p></pre>   </p><p>Il est possible de réaliser des simulations d’une loi Gamma grâce à la fonction <b>rgamma</b></a>().</p>
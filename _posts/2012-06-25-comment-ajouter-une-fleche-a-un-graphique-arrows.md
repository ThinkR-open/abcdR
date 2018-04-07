---
ID: 1775
post_title: 'Comment ajouter une flèche à un graphique ? : arrows'
author: Melen
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-ajouter-une-fleche-a-un-graphique-arrows/
published: true
post_date: 2012-06-25 16:35:33
---
Il peut être utile d'ajouter des flèches à vos graphiques R. La fonction arrows est là pour vous!<br /><br />Comme toujours commencez par regarder les arguments de la fonction : ?arrows<br />Les 4 premiers aruguments correspondent aux coordonnées (vecteurs de coordonnées pour plusieurs flèches) de début et de fin de la flèche. N'hesitez pas à utiliser la fonction locator() pour vous aider à trouver ces coordonnées. Ensuite vous pouvez choisir où se trouve le bout de la flèche avec l'arguement code. Enfin comme pour les courbes vous pouvez modifier l'épaisseur, la couleur et le type de trait avec lwd,col et lty. Voici un exemple<br /><br /> <pre><code><br /><br /> #coordonnées des fleches 1<br />x0&lt;-c(20,20)<br />y0&lt;-c(80,20)<br />x1&lt;-c(80,80)<br />y1&lt;-c(80,20)<br /><br /># autre jeu de flèche<br />a0&lt;-c(10,70)<br />b0&lt;-c(90,10)<br />a1&lt;-c(50,50)<br />b1&lt;-c(70,10)<br /><br />#on choisit les couleurs et le type de trait<br />couleur&lt;-c("green","blue")<br />lt&lt;-c(1,3)<br /><br /><br />plot.new()<br />plot.window(xlim=c(0,100),ylim=c(0,100))<br />arrows(x0,y0,x1,y1,code=3,lwd=2)                            #code=3 pour une double flèche<br />arrows(a0,b0,a1,b1,code=1,lty=lt,col=couleur,lwd=4)<br />box() <br /></pre> <br /><br />
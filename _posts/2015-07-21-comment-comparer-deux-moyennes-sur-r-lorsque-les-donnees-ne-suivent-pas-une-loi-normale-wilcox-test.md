---
ID: 3172
post_title: >
  Comment comparer deux moyennes sur R
  lorsque les données ne suivent pas une
  loi Normale ? wilcox.test
author: Helene F
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.guyader.pro/comment-comparer-deux-moyennes-sur-r-lorsque-les-donnees-ne-suivent-pas-une-loi-normale-wilcox-test/
published: true
post_date: 2015-07-21 07:53:40
tags: [ ]
categories:
  - Test
---
<p>Le test non-paramétrique de Wilcoxon permet de tester l’égalité de deux moyennes lorsque l’hypothèse de normalité n’est pas validée. L’hypothèse H0 est « les moyennes sont égales » ou « la moyenne vaut une valeur x ».</p><p>Pour réaliser ce test il est nécessaire d’avoir un échantillonnage aléatoire et que les lois suivies par les deux variables étudiées soient les mêmes. Pour tester l’hypothèse H0 on utilise la fonction <b>wilcox.test().</b></p><p> <pre lang='rsplus'><br />A&lt;-subset(iris,Species=="setosa")[,4]</p><p>#échantillonnage de la largeur des pétales chez l’espèce Setosa.</p><p> </p><p>B&lt;-subset(iris,Species=="versicolor")[,4]</p><p>#échantillonnage de la largeur des pétales chez l’espèce Versicolor.</p><p>    </p><p>#On test si la moyenne de la largeur des pétales de l'espèce Setosa vaut 0.5 :</p><p>wilcox.test(A,0.5)</p><p> </p><p>        Wilcoxon rank sum test with continuity correction</p><p> </p><p>data:  A and 0.5</p><p>W = 1.5, p-value = 0.08259</p><p>alternative hypothesis: true location shift is not equal to 0 </p><p></pre> </p><p>La p-value vaut 0.08 ce qui est supérieure à 0.05. Cela signifie que la moyenne de la largeur des pétales pour l’espèce setosa n’est pas significativement différente de 0.5.</p><p> </p><p>On test si la moyenne de la largeur des pétales de l'espèce Setosa et celle de Versicolor sont égales ou non :</p><p> <pre lang='rsplus'><br />wilcox.test(A,B)</p><p> </p><p>        Wilcoxon rank sum test with continuity correction</p><p> </p><p>data:  A and B</p><p>W = 0, p-value &lt; 2.2e-16</p><p>alternative hypothesis: true location shift is not equal to 0</p><p></pre>   </p><p>La p-value est inférieure à 0.05. Cela signifie que la moyenne de la largeur des pétales pour l’espèce setosa est significativement différente de celle de l’espèce Versicolor.</p><p></p>
---
ID: 928
post_title: 'Comment comparer 2 moyennes avec R? : t.test'
author: vincent
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-comparer-2-moyennes-avec-r-t-test/
published: true
post_date: 2011-12-02 11:43:34
---
Pour comparer 2 moyennes, vous pouvez utiliser le<strong> test de student</strong>. <br />On se place dans le cas où l'on a deux séries de valeurs dont on veut comparer la moyenne.<br />Les conditions pour utiliser ce test sont en pratique très peu contraignantes et il n'est pas vraiment nécessaire de s'embêter avec la normalités des données car :<br /><ul><li>le test de student est très robuste à la non normalité des données</li><li>dès que l'on a plus de 30 individus (n peut même descendre à 15), on a toujours quelque chose qui suit (plus ou moins) une loi normale</li><li>les tests de normalité sont très très peu puissants (beaucoup ne vont pas détecter que les données sont normales alors qu'elles le sont)</li><li>les tests non paramétriques à utiliser en cas de non normalité sont eux aussi très peu puissants : on ne détecte jamais rien.</li></ul><p></p><p>Avant de faire un test de student, il faut se poser 2 questions :</p><p></p><ul><li>est-ce que les variances de mes deux séries de valeurs sont identiques ?</li><li>mes données sont-elles appariées (l'individu 1 de la série 1 est-il <strong>vraiment</strong> le même que l'individu 1 de la série 2)</li></ul><p> <pre><code><br />x&lt;-1:10<br />y&lt;-c(4:5,7:14)<br />y&lt;-sample(y,10)<br /># on compare les moyennes de x et de y<br />t.test(x,y,var.equal=T) # variances égales<br />t.test(x,y,var.equal=F) # variances non égales<br />t.test(x,y,paired=T) # cas d'un test apparié <br /> </pre> </p><p></p><p>Si vous devez comparer la moyenne d'une série de valeurs à une valeur cible :</p><p># est ce que la moyenne de la série x est significativement différente de 2</p> <pre><code><br /><p></p><p>x&lt;-1:10</p><p>t.test(x,mu=2)</p><p></p><br /></pre> <p></p><p></p><p></p>
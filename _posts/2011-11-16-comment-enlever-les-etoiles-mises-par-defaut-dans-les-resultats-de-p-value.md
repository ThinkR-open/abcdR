---
ID: 801
post_title: >
  Comment enlever les étoiles mises par
  défaut dans les résultats de p value?
author: Melen
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-enlever-les-etoiles-mises-par-defaut-dans-les-resultats-de-p-value/
published: true
post_date: 2011-11-16 10:18:33
---
Dans les résultats d'analyse statistique, R affiche souvent des étoiles à côté des p values avec le code suivant :<br /><br />Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1 <br /><br /> Il est possible de les enlever:<br /><br /> <pre><br /><br />#on utilise les données iris<br /><br />iris<br />summary(iris)<br /><br />#pour l'exemple on fait une analyse de variance : la longueur des sépales est-elle expliquée par l'espèce?<br /><br />reg&lt;-lm(iris$Sepal.Length~iris$Species)<br />anova(reg)<br />summary(reg)<br /><br /><br /></pre> <br /><br />R affiche les résultats avec les étoiles pour les p-values : <br /><br /> Analysis of Variance Table<br /><br />Response: iris$Sepal.Length<br />              Df Sum Sq Mean Sq F value    Pr(&gt;F)    <br />iris$Species   2 63.212  31.606  119.26 &lt; 2.2e-16 ***<br />Residuals    147 38.956   0.265       <br /> <br />On décide de les enlever en utilisant options : <br /><br /> <pre><br /><br />options(show.signif.stars=FALSE)<br /><br /><br />summary(reg)<br />anova(reg)<br /><br /> </pre> <br /><br />R affiche les résultats sans les étoiles : <br /><br /> Response: iris$Sepal.Length<br />              Df Sum Sq Mean Sq F value    Pr(&gt;F)<br />iris$Species   2 63.212  31.606  119.26 &lt; 2.2e-16<br />Residuals    147 38.956   0.265      <br /> <br /><br />
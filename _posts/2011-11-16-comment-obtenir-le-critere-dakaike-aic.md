---
ID: 820
post_title: 'Comment obtenir le critère d&#039;Akaike avec R ? : AIC'
author: Melen
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-obtenir-le-critere-dakaike-aic/
published: true
post_date: 2011-11-16 18:08:56
---
Le critère d'Akaike (AIC) est un critère utilisé pour la sélection de modèles. Ce critère représente un compromis entre le biais diminuant avec le nombre de paramètres libres et la parcimonie, volonté de décrire les données avec le plus petit nombre de paramètres possible. Il se calcule de la façon suivante -2*log-likelihood + k*npar. Par défaut on a souvent k=2. Le meilleur modèle est celui qui possède l'AIC le plus faible.<br /><br />On obtient ce critère en utilisant la fonction AIC(objet,k=?), k=2 par défaut. Prenons un exemple<br /><br /> <pre><code><br /><br /><br /> library(MASS) #pour la fonction fitdistr<br /> <br />#  z est un vecteur contenant les données, on essaie de modéliser ces données par une distribution de weibull ou gamma<br /> <br />z&lt;-c(14,14,14,17,17,17,17,17,17,17,17,17,17,17,17,17,17,17,17,17,17,17,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,23)<br /> <br /># on utilise la fonction fitdistr pour une loi Weibull, regarder ?fitdistr<br /> <br />paraw &lt;- fitdistr(z,densfun="weibull") <br />loglikw&lt;-logLik(paraw)  # on peut avoir le loglikelihood<br />loglikw<br /><br />#on fait la même chose pour une loi gamma<br /><br />parag&lt;-fitdistr(z,densfun="gamma")<br />loglikg&lt;-logLik(parag)<br />loglikg<br /><br />#AIC avec k=2 par défaut<br /><br />AIC(paraw)#environ 204<br />AIC(parag)#environ 209<br /><br />#d'après ce critère on choisirait la loi de weibull<br /><br />#on vérifie en recalculant les AIC directement<br /><br />akaike&lt;-function(npar,loglik,k){-2*loglik+k*npar}<br /><br />akaike(2,loglikw[1],2)<br />akaike(2,loglikg[1],2)<br /><br /> <br /></pre> <br /><br />L'AIC est un critère comme les autres, faites en bon usage et n'en n'abusez pas trop!<br /><br /><br />
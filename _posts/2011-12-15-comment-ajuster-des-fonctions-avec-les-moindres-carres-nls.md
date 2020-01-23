---
ID: 1051
post_title: >
  Comment ajuster des fonctions avec les
  moindres carrés ? nls
author: Melen
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-ajuster-des-fonctions-avec-les-moindres-carres-nls/
published: true
post_date: 2011-12-15 18:58:51
tags: [ ]
categories:
  - inférence
  - modélisation
---
La manière la plus simple d'ajuster une fonction à des données est la méthode "géométrique" des moindres carrés (minimiser la somme des carrés des écarts correspond à maximiser la vraisemblance avec une loi normale).
<br />
<br />
La fonction 
<strong>nls</strong>
 de R permet de réaliser ceci de manière simple.
<br />
<br />
Voyons deux exemples :
<br />
<br />
<pre><code>
	#exemple modèle de croissance exponentiel
	#on crée une fonction qui correspond à un modèle de Malthus
	malthus&lt;-function(t,N0,r){N0*exp(r*t)}
	t&lt;-seq(0:100)
	NO&lt;-2
	r&lt;-0.05
	plot(malthus(t,NO,r)~t,type='l',col='green',lwd=2)

	#on crée des données en ajoutant du bruit
	sim&lt;-malthus(t,NO,r)+rnorm(t,sd=0.3*malthus(t,NO,r))
	plot(sim~t,pch=20)
	#on ajuste la fonction sur les données simulées en utilisant les moindres carrés

	fitmalthus&lt;-nls(sim~malthus(t,a,b),start=list(a=1,b=0.01))
	fitmalthus
	summary(fitmalthus)


	#on vérifie

	plot(sim~t,pch=20)
	lines(malthus(t,NO,r)~t,type='l',col='green',lwd=2)
	lines(malthus(t,coef(fitmalthus)[1],coef(fitmalthus)[2])~t,type='l',col='red',lwd=2)


	#exemple 2 avec une fonction logistique


	logist&lt;-function(t,v,w,z){v/(1+w*exp(-z*t))}
	v&lt;-10;w&lt;-8;z&lt;-0.09;x&lt;-seq(from=-100,to=100)
	plot(logist(x,v,w,z)~x,type='l',col='blue',lwd=2)


	#on crée des données avec du bruit

	noisy&lt;-rnorm(x,mean=logist(x,v,w,z),sd=0.9)
	plot(noisy,pch=20)#notez qu'il y a des valeurs négatives pas réalistes...
	fitlog&lt;-nls(noisy~logist(x,a,b,c),start=list(a=5,b=5,c=0.02))
	fitlog
	summary(fitlog)


	#on vérifie

	plot(noisy~x,pch=20,col="grey")
	lines(logist(x,v,w,z)~x,type='l',col='blue',lwd=2)
	lines(logist(x,coef(fitlog)[1],coef(fitlog)[2],coef(fitlog)[3])~x,type='l',col='red',lwd=2) 
</code></pre>
<br />
Ces deux exemples cachent en fait de nombreuses difficultés :
Pour que l'algorithme converge, vous devez donner des valeurs de départ des paramètres assez proches de la réalité --&gt; essayez d'ajuster vos courbes à l’œil afin d'obtenir les meilleurs paramètres de départ possibles. Sinon vous pouvez utiliser la fonction nls2 et l'algorithme brute force, ou passer à la vraisemblance voire au merveilleux monde des mcmc...
La fonction nls présente, comme beaucoup de fonctions R, de nombreux arguments qui vous permettront peut être d'ajuster vos fonctions comme vous le souhaitez : control, trace, weights etc.
Enfin vous pouvez récupérer de nombreuses informations à partir de l'objet créé lors de l'ajustement : résidus, valeur des paramètres estimés etc...
<br />
<br />
---
ID: 564
post_title: 'Comment estimer les paramètres d&rsquo;un modèle d&rsquo;équations différentielles ordinaires par les moindres carrés avec R ?'
author: Melen
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.guyader.pro/estimer-les-parametres-dun-modele-dequations-differentielles-ordinaires-par-les-moindres-carres/
published: true
post_date: 2011-11-08 15:56:39
---
De nombreux systèmes sont modélisés par des équations différentielles ordinaires. R peut permettre de résoudre certains de ces systèmes et aussi d'estimer leurs paramètres.<br /><br />On prend ici l'exemple d'un modèle épidémiologique temporel SI.<br /><br /> <pre lang='rsplus'><br /><br /> #edo SIX<br /><br />library(deSolve) # on utilise deSolve<br /><br />#on définit le système dans une fonction six ici<br /><br />six&lt;-function(t,x,parms){<br />    with( as.list(c(parms,x)),{<br /><br />    rp&lt;-ap*exp(-bp*t)<br />    rs&lt;-as*exp(-0.5*(log(t/gs)/bs)^2)<br />    <br />    dI&lt;- (rp*X*S+rs*I*S)<br />    dS&lt;- -(rp*X*S+rs*I*S)<br /><br />    res&lt;-c(dI,dS)<br />    list(res)})<br />}<br /><br />#on définit les paramètres pour la simulation du système<br /><br />parms&lt;-c(ap=0.002, bp=0.0084, as=5.9e-7, bs=0.25, gs=1396, X=1, N=1010)<br /><br />#on crée un vecteur pour le temps<br />times&lt;-seq(0:3000)<br /><br />#valeurs initiales des variables (ici tous les individus sont sains au début)<br /><br />y&lt;- xstart &lt;-(c(I = 0, S = 1010))<br /><br />#on résout le système avec la fonction lsoda<br /><br />out&lt;-as.data.frame(lsoda(xstart, times, six, parms))<br /><br /># toujours regarder le résultat pour détecter les incohérences<br /><br />plot(out$S~out$time, type="l",col='blue')<br />plot(out$I~out$time, type="l",col='green',lwd=3)<br /><br />#on crée un jeu de données en ajoutant un bruit blanc (gaussien)<br /><br />noisy&lt;-out$I+rnorm(nrow(out),sd=0.15*out$I)<br /><br />plot(noisy)<br /><br />#on ajuste le modèle sur ces données par les moindres carrés<br /># pour cela on utilise la fonction nls, il faut faire attention aux paramètres initiaux<br /><br />fitnoisy&lt;-nls(noisy~lsoda(xstart,times,six,c(ap=ap, bp=bp, as=as, bs=bs, gs=gs, X=1, N=1010))[,2]<br />     ,start=list(ap=0.002, bp=0.0084, as=5.9e-7, bs=0.25, gs=1000)<br />    , control=list(minFactor=1e-20,maxiter=150))<br /><br />summary(fitnoisy)<br /><br /># un beau graphique pour visualiser tout ça!<br /><br />plot(noisy,pch=20,col='grey',main="SIX ode Model Fit",xlab="time",ylab="disease progress")<br />lines(predict(fitnoisy,times),type='l',col='green',lwd=4.5)<br /><br /> <br /></pre> <br /><br />Vous pouvez définir différents systèmes d'équations différentielles en conservant la même structure.<br />Enfin pour estimer les paramètres il est possible d'utiliser d'autres fonctions et/ou d'autres méthodes (vraisemblance par exemple).<br />Pour que nls converge il faut donner des valeurs initiales le plus proche possibles des "vraies valeurs". Je vous conseille donc d'essayer de fitter votre système graphiquement. Si ça ne marche pas vous pouvez utiliser nls2 avec l'algorithme bruteforce...<br /><br />
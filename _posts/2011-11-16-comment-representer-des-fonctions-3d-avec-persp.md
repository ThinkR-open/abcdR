---
ID: 813
post_title: >
  Comment représenter des fonctions 3D
  avec persp ?
author: Melen
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-representer-des-fonctions-3d-avec-persp/
published: true
post_date: 2011-11-16 12:50:20
---
Il existe plusieurs façons de représenter des surfaces en 3D. Je vous en propose une qui utilise la fonction de base persp().<br /><br /> <pre><br /><br />#on construit les fonctions à représenter f1 et f2<br /><br /> f1&lt;-function(x,y){<br />    15*sin(sqrt(x^2+y^2))<br />}<br /><br /><br />################<br /><br />mu1&lt;-0 <br />mu2&lt;-0 <br />s11&lt;-15 <br />s12&lt;-20 <br />s22&lt;-10 <br />rho&lt;-0.5 <br /><br />f2&lt;-function(x,y){<br /><br />term1&lt;-1/(2*pi*sqrt(s11*s22*(1-rho^2)))<br />term2&lt;--1/(2*(1-rho^2))<br />term3&lt;-(x-mu1)^2/s11<br />term4&lt;-(y-mu2)^2/s22<br />term5&lt;--2*rho*((x-mu1)*(y-mu2))/(sqrt(s11)*sqrt(s22))<br />term1*exp(term2*(term3+term4-term5))}<br /><br /># on définit deux vecteurs correspondant aux axes x et y<br /><br />x&lt;-seq(-15,15,length=50)<br />y&lt;-x<br /><br /># on calcule la valeur de z=f(x,y) pour tous les couples x[i],y[i] avec la fonction outer<br /><br />z1&lt;-outer(x,y,f1)<br />z2&lt;-outer(x,y,f2)<br /><br />#on utilise la fonction persp<br /><br />x11()<br />persp(x,y,z1,theta=30,phi=40,expand=0.5,col="lightblue",ticktype="detailed")<br />x11()<br />persp(x,y,z2,theta=40,phi=30,expand=0.5,col="lightgreen",ticktype="detailed")<br /><br /><br /></pre> <br /><br />Il est possible d'ajouter des points au graphique en utilisant points(trans3d()).<br />Regardez bien tous les arguments de la fonction persp() : ?persp. Ils sont nombreux et vous permettront d'obtenir votre surface sous l'angle que vous voulez.<br /><br />Enfin il existe comme souvent d'autres fonctions pour représenter des surfaces : plot3d du package rgl, plot.surface du package fields...à vous de choisir!<br /><br />bonne 3D!<br /><br />
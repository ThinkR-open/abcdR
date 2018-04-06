---
ID: 549
post_title: >
  Comment importer un fichier .xls (excel)
  dans R
author: vincent
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-importer-un-fichier-xls-excel-dans-r/
published: true
post_date: 2011-11-08 13:44:53
---
Pour charger un fichier excel vous avez 3 façons de faire<br /><br /><strong>1</strong> Vous pouvez utiliser Rcmdr<br /><br /> <pre><br />library(Rcmdr) <br /># puis importer des données.. ça marche plutôt bien.. mais que sous windows<br /> </pre> <br />En pratique Rcmdr utilise le package RODBC.<br />Je le trouve peu intuitif en ligne de commande et vous propose d'utiliser le package <strong>xlsReadWrite</strong><br /><br /><strong>2</strong> Le package <strong>xlsReadWrite</strong> <br /><br /> <pre><br /> library(xlsReadWrite)<br />xls.getshlib() # indispensable<br />donnee&lt;-read.xls("data.xls")<br /> </pre> <br /><br />Par contre cela ne marche jamais vraiment parfaitement bien lorqu'il y a des onglets ou pour des cas un peu spéciaux. Il existe une version pro, payante de ce package qui utilise des fichiers binaires propriétaires, mais il serait dommage d'utiliser cela.<br /><br />J'en arrive donc au point 3<br /><br /><strong>3</strong> Ne pas charger directement le xls et le convertir avant en CSV<br /><br />Vous pouvez utiliser votre tableur habituel (excel de microsoft office, Calc d'openoffice, gnumeric ou autre) pour exporter votre jeux de donnée en csv. Pensez bien au type de séparateur que vous utilisez (tabulation est souvent l'idéal, on le note parfois "\t" ), et à bien choisir votre symbole pour la décimale ("." ou "," ).<br /> <pre><br />#ensuite utilisez<br /> donnee&lt;-read.csv("monfichier.csv",sep="\t",dec=",")<br /># ou encore<br /> donnee&lt;-read.csv2("monfichier.csv")  # pareil qu'au dessus avec sep = ";" et dec="," <br /></pre> <br /><br /><br /><br /><br /><br /><br /><br />
---
ID: 3162
post_title: >
  Comment importer un fichier SAS sas7bdat
  dans R ?
author: Vincent
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.guyader.pro/comment-importer-un-fichier-sas7bdat-dans-r/
published: true
post_date: 2015-07-18 22:59:51
---
Pour importer un fichier SAS sas7bdat, la premiere solution est d'utiliser la fonction <strong>read.sas7bdat</strong> du package sas7bdat<br /><br /><br /> <pre lang='rsplus'><br />library(sas7bdat)<br />donnee&lt;-read.sas7bdat("fichier.sas7bdat") <br /></pre> <br /><br />Cependant parfois  vous allez tomber sur cette erreur :<br /><br /><p>Error in read.sas7bdat("ficher.sas7bdat") : <br /> file contains compressed data<br /><br />En effet le package sas7bdat n'est pas capable d'importer les fichiers compressés.<br />Voici une solution qui fonctionne :<br /><br /> <pre lang='rsplus'></p><p>library(devtools)<br />install_github("biostatmatt/sas7bdat.parso")<br />library(sas7bdat.parso)</p><p>s7b2csv("fichier.sas7bdat", "fichier.csv") <br />donnee&lt;-read.csv("fichier.csv")</p><p><br /> </pre>  </p>
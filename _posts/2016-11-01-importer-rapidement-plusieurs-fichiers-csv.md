---
ID: 3264
post_title: >
  Comment importer rapidement plusieurs
  fichiers CSV
author: anonyme
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.guyader.pro/importer-rapidement-plusieurs-fichiers-csv/
published: true
post_date: 2016-11-01 15:48:43
tags: [ ]
categories:
  - importation de données
---
Avec R, il est tout à fait possible de réaliser une multiple importation des fichiers CSV (autres types de fichiers). La fonction ci-dessous utilise les fonctions <em><strong>bind_rows</strong></em> et la syntaxe de la librairie <strong>dplyr</strong>.


<pre lang="rsplus"> multmerge &lt;- function(mypath = getwd()){
require(dplyr)

dataset &lt;- list.files(path=mypath, full.names=TRUE, pattern="\\.csv") %&gt;% lapply(read.csv, header=TRUE, sep="\t") %&gt;% bind_rows()
dataset
}
</pre>
Dans cette fonction, l'objet <em>mypath</em> indique l'emplacement où se trouve tous les fichiers CSV. Par défaut, la fonction va chercher dans l'espace de travail actuel (<strong>getwd</strong>). Il est possible de le modifier manuel comme ci-dessous:
<pre lang="rsplus"> mydata &lt;-  multmerge(mypath="Nom/Du/Chemin/Des/Fichiers")</pre>
---
ID: 2944
post_title: 'Comment importer fichier .xlsx dans R ? : readWorksheetFromFile'
author: Julie
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.guyader.pro/importer-un-classeur-a-plusieurs-feuilles/
published: true
post_date: 2014-06-03 08:16:29
---
L'import de fichier Excel dans R a toujours été un peu laborieuse, plusieurs façons de faire plus ou moins compliquées. Une fonction sort du lot readWorksheetFromFile du package XLconnect
<br /><br /><br /> <pre lang='rsplus'><br />
library(XLConnect)<br />
dataset<-readWorksheetFromFile(file="http://www.euklems.net/data/nace2/fra_output_12i.xlsx ", sheet=3)<br />
head(dataset)

<br /><br /></pre>
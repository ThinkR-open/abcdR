---
ID: 2944
post_title: 'Comment importer fichier .xlsx dans R ? : readWorksheetFromFile'
author: julie
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/importer-un-classeur-a-plusieurs-feuilles/
published: true
post_date: 2014-06-03 08:16:29
---
L'import de fichier Excel dans R a toujours été un peu laborieuse, plusieurs façons de faire plus ou moins compliquées. Une fonction sort du lot readWorksheetFromFile du package XLconnect
<br /><br /><br /> <pre><code><br />
library(XLConnect)<br />
dataset&lt;-readWorksheetFromFile(file=&quot;http://www.euklems.net/data/nace2/fra_output_12i.xlsx &quot;, sheet=3)<br />
head(dataset)
<br /><br /></pre>
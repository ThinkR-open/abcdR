---
ID: 3015
post_title: >
  Importer efficacement des fichiers xlsx
  dans R ? read_excel
author: vincent
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/importer-efficacement-des-fichiers-xlsx-dans-r-read_excel/
published: true
post_date: 2015-05-20 21:47:43
---
le package <strong>readxl</strong> permet , contrairement aux autres solutions d'import de fichier excel de s'affranchir de dépendance type java ou perl. il est beaucoup plus rapide.<br /><br /> <pre><code><br />library(readxl)<br />dataset&lt;-read_excel("http://www.euklems.net/data/nace2/fra_output_12i.xlsx ",3)<br /></code></pre>
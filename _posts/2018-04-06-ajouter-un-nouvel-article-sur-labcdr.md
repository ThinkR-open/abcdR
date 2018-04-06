---
ID: 3746
post_title: 'Ajouter un nouvel article sur l&rsquo;abcd&rsquo;R'
author: Vincent
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.guyader.pro/ajouter-un-nouvel-article-sur-labcdr/
published: true
post_date: 2018-04-06 20:55:33
tags: [ ]
categories:
  - programmer avec R
  - rmarkdown
---
Pour proposer un article sur ce site Internet, nous passons par notre compte [Github ThinkR-open/abcdR](https://github.com/ThinkR-open/abcdR/).  
Vous devrez faire un fork de notre dépôt github, ajouter un article au format markdown dans le dossier **_post** et proposer une pull request.  
Les articles au format markdown (.md) devront avoir  

+ Le fichier doit avoir l’extension .md (il sera renommé automatiquement au moment du push)  
+ L’en-tête YAML suivante:


```yaml
---
post_title: Titre de votre article
author: votre_nom_d_auteur
layout: post
published: true
categories:
  - graphique
  - tidyverse
---
Le contenu de votre article vient ici.
le code R doit etre mis en forme comme cela :
(...)
```

le code R doit être mis en forme comme cela :
<pre><code>```r
mon_code &lt;- "R"
```
</code></pre>

Il n'est pas possible de joindre des images, sauf avec des liens vers des images extérieures:
<img src="https://i2.wp.com/abcdr.thinkr.fr/wp-content/uploads/2018/03/logo_abcdR.png?fit=250%2C59&amp;ssl=1" class="custom-logo" alt="AbcdR" itemprop="logo"

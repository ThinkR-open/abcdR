---
ID: 3861
post_title: 'Ajouter un nouvel article sur l&rsquo;abcd&rsquo;R'
author: vincent
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/ajouter-un-nouvel-article-sur-labcdr/
published: true
post_date: 2018-04-06 21:54:50
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
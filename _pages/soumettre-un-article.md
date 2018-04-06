---
ID: 2720
post_title: Proposer un Article
author: seb
post_excerpt: ""
layout: page
permalink: >
  https://abcdr.thinkr.fr/soumettre-un-article/
published: true
post_date: 2013-10-21 07:22:09
tags: [ ]
categories: [ ]
---
Pour proposer un article sur ce site Internet, nous passons par notre compte <a href="https://github.com/ThinkR-open/abcdR">Github ThinkR-open/abcdR</a>.
Vous devrez faire un <em>fork</em> de notre dépôt github, ajouter un article au format markdown dans le dossier <strong>_post</strong> et proposer une <em>pull request</em>.
Les articles au format markdown (<code>.md</code>) devront avoir
- Le fichier doit avoir l'extension .md (il sera renommé automatiquement au moment du push)
- L'en-tête YAML suivante:
<pre><code>
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
</code></pre>
---
ID: 1019
post_title: >
  Comment gérer les erreurs dans un
  script R ? try
author: vincent
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-gerer-les-erreurs-dans-un-script-r-try/
published: true
post_date: 2011-12-12 10:00:56
---
Si vous voulez vous assurer qu'une instruction qui n'aboutit pas ne bloque pas votre script ou encore si vous avez besoin de gérer les exceptions, vous pouvez utiliser la fonction <strong>try</strong>.<br /><br /><br /> <pre><code><br />rm(list=ls(all=TRUE)) # pour partir d'une mémoire vierge<br />print(a)# va vous renvoyer un message d'erreur... et aura bloqué votre script si vous l'aviez lancé via source() par exemple<br />try(print(a))# vous affiche l'erreur mais ne gêne pas la suite du processus<br />try(print(a),silent=T)# ne vous affiche même pas l'erreur<br /></code></pre> <br /><br />Ici l'exemple donné n'a que peu d'utilité, mais ce principe de gestion des erreurs (en particulier avec <strong>tryCatch</strong>) peut vous rendre beaucoup de services dans une boucle ou autre.<br /><br /><br />
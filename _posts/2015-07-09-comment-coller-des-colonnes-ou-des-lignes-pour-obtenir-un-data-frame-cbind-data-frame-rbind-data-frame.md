---
ID: 3097
post_title: 'Comment coller des colonnes ou des lignes pour obtenir un data.frame ? : cbind.data.frame, rbind.data.frame'
author: helene
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-coller-des-colonnes-ou-des-lignes-pour-obtenir-un-data-frame-cbind-data-frame-rbind-data-frame/
published: true
post_date: 2015-07-09 13:21:16
---
<p>La fonction <strong>cbind.data.frame()</strong> permet de coller des colonnes et d’obtenir un data.frame.</p><p> <pre><code><br />sechage &lt;- factor(c(rep("lent",5),rep("rapide",5)))</p><p>marque &lt;- factor(c(rep("Mer",3),rep("Cim",3),rep("vex",4)))</p><p>#On crée deux facteurs que l'on souhaite coller</p><p><br />ciment &lt;- cbind.data.frame(sechage, marque) #On colle ces deux facteurs</p><p></code></pre> </p><p>De la même manière, la fonction <strong>rbind.data.frame()</strong> permet de coller des lignes et d’obtenir un data.frame</p>
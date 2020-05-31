---
ID: 4789
post_title: 'Comment lire un fichier shp (shapefile) avec {sf} dans R ?'
author: Sébastien
post_excerpt: >
  Quand on lit un fichier shp ou fichier
  shapefile dans R, on lit un fichier de
  cartographie de type vecteur.
layout: post
permalink: >
  https://abcdr.thinkr.fr/comment-lire-un-fichier-shp-shapefile-avec-sf-dans-r/
published: true
post_date: 2020-05-31 20:00:06
tags: [ ]
categories:
  - Uncategorized
---
<!-- wp:tadv/classic-paragraph -->
<p><strong>Quand on lit un fichier shp ou fichier <em>shapefile</em>, on lit un fichier de cartographie de type vecteur</strong>. On utilisera le package <code>{sf}</code> pour lire ces fichiers de carte. En réalité, une couche spatiale au format <em>shapefile</em> doit être distribuée avec au minimum 4 fichiers du même nom, avec les extension shp, shx, dbf, prj. Sans ces 4 fichiers, vous ne pourrez probablement pas afficher votre carte correctement.</p>
<p>Regardons les fichiers inclus dans le package <code>{sf}</code> , vous remarquerez qu'ils viennent tous par 4 :</p>
<pre lang="r"><code>list.files(system.file("shape", package="sf"))</code></pre>
<pre>[1] "nc.dbf" "nc.prj" <br />[3] "nc.shp" "nc.shx" <br />[5] "olinda1.dbf" "olinda1.prj" <br />[7] "olinda1.shp" "olinda1.shx" <br />[9] "storms_xyz_feature.dbf" "storms_xyz_feature.shp" <br />[11] "storms_xyz_feature.shx" "storms_xyz.dbf" <br />[13] "storms_xyz.shp" "storms_xyz.shx" <br />[15] "storms_xyzm_feature.dbf" "storms_xyzm_feature.shp"<br />[17] "storms_xyzm_feature.shx" "storms_xyzm.dbf" <br />[19] "storms_xyzm.shp" "storms_xyzm.shx"</pre>
<p>Voici comment on lirait les fichiers nommés <code>nc.*</code> <em>s'ils étaient dans le même dossier que notre script R</em>. En réalité, on ne lit que le fichier nommé <code>nc.shp</code>, les autres sont lus en même temps par la fonction <code>st_read()</code> :</p>
<pre lang="r"><code>nc &lt;- st_read("nc.shp")</code></pre>
<p>Ensuite, vous pourrez directement afficher la carte avec la méthode <code>plot()</code> :</p>
<pre lang="r"><code>plot(nc)</code></pre>
<p>Pour tester sur votre ordinateur un exemple reproductible, vous pouvez tester ce script :</p>
<pre lang="r"><code>library(sf)
nc = st_read(system.file("shape/nc.shp", package="sf"))
plot(nc)</code></pre>
<!-- /wp:tadv/classic-paragraph -->

<!-- wp:image {"id":4790,"sizeSlug":"large"} -->
<figure class="wp-block-image size-large"><img src="https://abcdr.thinkr.fr/wp-content/uploads/2020/05/Rplot.png" alt="" class="wp-image-4790"/></figure>
<!-- /wp:image -->
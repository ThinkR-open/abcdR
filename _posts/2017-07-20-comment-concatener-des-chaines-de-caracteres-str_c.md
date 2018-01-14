---
ID: 3442
post_title: >
  Comment concaténer des chaînes de
  caractères ? str_c()
author: Colin
post_excerpt: ""
layout: post
permalink: >
  https://abcdr.guyader.pro/comment-concatener-des-chaines-de-caracteres-str_c/
published: true
post_date: 2017-07-20 10:35:08
tags: [ ]
categories:
  - manipulation de données
  - tidyverse
---
<p>Amoureux du <code>paste</code> de R base ? <code>str_c</code> du package {stringr} va vous plaire !</p>

<p>Pourquoi utiliser <code>str_c</code> ? Pour sa simplicité, mais aussi sa puissance. La première raison de choisir cette fonction : développée dans {stringr}, elle suit la convention d'écriture de toutes les fonctions de ce package. Ainsi, pour concaténer des caractères (strings en anglais), il vous suffira d'appeler <code>str_c</code>.</p>

<p>Comme avec la fonction de base, vous pouvez choisir le séparateur : </p>

<p><pre lang="rsplus">
  library(stringr)
  str_c("une", "chaine", "de", "caractères", sep = " ")
  [1] "une chaine de caractères"
  str_c("une", "chaine", "de", "caractères", sep = "_")
  [1] "une_chaine_de_caractères"
</pre></p>

<p>À noter : vous pouvez utiliser la fonction <code>str_replace_na</code>, pour remplacer les valeurs manquantes de la chaînes de caractères par un "NA".</p>

<p>À noter (bis) : pour concaténer un vecteur de chaîne de caractères, il faudra faire appel à l'argument <code>collapse = ""</code>.</p>

<p><pre lang="rsplus">
  chaine <- c("une", "chaine", "de", "caractères", "avec", NA)
  chaine
  [1] "une"        "chaine"     "de"         "caractères"
  [5] "avec"       NA  
  str_c(str_replace_na(chaine), collapse = " ")
  [1] "une chaine de caractères avec NA"
</pre></p>
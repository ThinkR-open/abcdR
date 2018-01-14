---
ID: 49
post_title: Liste des interfaces graphiques
author: Vincent
post_excerpt: ""
layout: page
permalink: >
  https://abcdr.guyader.pro/liste-des-interfaces-graphiques-pour-le-logiciel-r/
published: true
post_date: 2011-11-02 20:23:42
tags: [ ]
categories: [ ]
---
<h1>Liste des interfaces graphiques pour R</h1>
R est fourni avec un éditeur de texte (RScript) plus ou moins complet en fonction du system d’exploitation que vous utilisez:

&nbsp;
<ul>
	<li>L’éditeur de texte de R sous Mac OSX est le plus abouti avec coloration syntaxique du code, fermeture automatique des parenthèses/crochets ainsi qu’un inventaire des fonctions.</li>
	<li>Sous linux, il n'y a pas d'éditeur de script à proprement parler. Par défaut il n'y a que le terminal, pas très ergonomique...</li>
	<li>Beaucoup d’utilisateurs possèdent un PC sous Windows et là tout se compliquent. Éditer son code avec R sous Windows peut devenir un vrai calvaire dès lors que le code dépasse une centaine de lignes ou est composé de plusieurs fonctions ou de boucles.</li>
</ul>
Mais des utilisateurs de R bien intentionnés ont pensé à vous ! En effet, des plug-ins pour différents éditeurs de texte déjà existant voire même des éditeurs complètement dédiés à R ont été développés. Nous vous proposons ainsi une liste non exhaustive de ceux-ci ainsi que leur principale fonctionnalité :
<h1>Multiplateforme</h1>
<h2>Rstudio</h2>
<a target ="_blank"  href="http://www.rstudio.com/products/rstudio/download/">Rstudio </a>est le projet le plus abouti, il propose un véritable espace de développement dédié à R. C'est <strong><span style="text-decoration: underline;">LE</span></strong> logiciel à installer. il propose:
<ul>
	<li>coloration syntaxique</li>
	<li>aide à la création de code</li>
	<li>visualisation des objets en mémoire en temps réel</li>
	<li>aide à la création de package</li>
	<li>gestion sous forme de projet</li>
	<li>et plein d 'autres fonctionnalités.</li>
</ul>
vous pouvez le telecharger ici : <a target ="_blank" href="http://www.rstudio.com/products/rstudio/download/">http://www.rstudio.com/products/rstudio/download/</a>
<h2>Rmcdr (multiplateforme)</h2>
N'est pas vraiment un éditeur de texte, il s'agit plutôt d'une surcouche "clic-bouton" qui permet en sélectionnant des actions dans un menu de voir le code correspondant s’écrire tout seul. C'est sympa pour commencer, mais vite limité. De plus Rcmdr gère très mal les boucles for. (Rcmdr s'installe comme un package classique, sous débian/ubuntu il a meme son propre .deb)

&nbsp;

<h2>Eclipse+StatEt (multiplateforme)</h2>
Pour toutes les personnes qui codent en Java/LaTeX et qui utilisent déjà Eclipse, cette configuration est parfaite pour vous! Elle vous permettra de travailler avec R sans avoir à quitter Eclipse qui est l’un des meilleurs éditeurs de texte open source. Vous retrouvez avec Eclipse et StatEt les avantages de R Studio plus les avantages d’un éditeur de langage dédié aux programmeurs (<a href="http://www.walware.de/goto/statet">http://www.walware.de/goto/statet</a>). Si vous utilisez déjà un service comme VaultPro, (<a href="http://www.sourcegear.com/vaultpro/" target="_blank">http://www.sourcegear.com/<wbr />vaultpro/</a>) vous pourrez continuer à l’utiliser. Avertissement : l’installation peut être complexe.
<h2>Emac+ESS (multiplateforme)</h2>
Pour les utilisateurs avertis
<h2>Komodo (multiplateforme)</h2>
Un peu difficile à installer mais très complet (<a href="http://sciviews.org/SciViews-K/">http://sciviews.org/SciViews-K/</a>)

&nbsp;
<h1>Windows</h1>
<h2>Tinn-R (windows)</h2>
Un éditeur de texte vraiment léger qui vous permet d’utiliser quelques petits raccourcis clavier (par exemple : compiler la partie sélectionnée du code ou l’intégralité). Il vous apportera aussi la coloration syntaxique. Je le conseille tout d’abord aux débutants, car vous ne passerez pas trop de temps à l’installer puis à le configurer. (<a href="http://sciviews.org/Tinn-R/" target="_blank">http://sciviews.org/Tinn-R/</a>)
<h2>Notepad++ avec NppToR (windows)</h2>
Pour ceux qui utilisent notepad++ (et pour les autres!) une très bonne solution de travail(<a href="http://npptor.sourceforge.net/" target="_blank">http://npptor.sourceforge.<wbr />net/</a>)

&nbsp;
<h1>Linux</h1>
<h2>L'interface de base</h2>
dans la console vous pouvez avoir R directement en tappant "R"
Si vous voulez le minimum vital rajoutez ces paramètres "R -g Tk &amp;"
<h2>Rkward (linux - KDE)</h2>
S’intègre bien dans un environnement KDE. (<a href="http://fr.wikipedia.org/wiki/RKWard">http://fr.wikipedia.org/wiki/RKWard</a>)

Des projets alternatifs on aussi vu le jour comme Red R (<a href="http://www.red-r.org/" target="_blank">http://www.red-r.org/</a>).Pour l’instant les fonctionnalités ne sont pas très nombreuses mais l’idée est bonne et mérite d’être suivie.
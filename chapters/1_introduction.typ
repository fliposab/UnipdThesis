#import "@preview/codly:1.3.0": *
#import "@preview/codly-languages:0.1.8": *
#import "../config/thesis-config.typ": gl, glpl, glossary-style, linkfn

= Introduzione <cap:introduzione>
#text(style: "italic", [
    In questo capitolo descrivo l'azienda, introduco il progetto svolto durante lo stage, e spiego le motivazioni che mi hanno portato a sceglierlo. 
])
#v(1em)

== L'azienda
_Qui descrivo l'azienda e le mie impressioni durante lo stage, e la sua propensione all'innvoazione_
/*L'azienda Zucchetti Spa è nota come la prima software house italiana, ed offre una vasta gamma di soluzioni software e servizi per le aziende,mantenendosi sempre aggiornati su tematiche come il diritto civile, contabilità, fiscalità, diritto del lavoro e previdenza.*/

== Il progetto
_Qui descrivo brevemente il progetto, in cosa consisteva e i vari processi che includeva, insieme al tipo di clientela_
/*L’obiettivo del progetto è stato pianificare, sviluppare e testare un videogioco 3D utilizzando il motore di gioco open source #gl("godot"), con particolare attenzione all'uso di componenti ispirati da #gl("ml", long: true) ed #gl("ai", long: true), ad esempio: #gl("rl"), #gl("ad"), etc...\
Ho sviluppato il progetto utilizzando prevalentemente il linguaggio #gl("gdscript"). Il processo ha incluso inoltre attività di modellazione 3D con il software open source #gl("blender"), la realizzazione di #gl("asset") personalizzati e la programmazione delle dinamiche di gioco.*/

//== Clientela

/*== Competenze da apprendere
Il progetto è stato intrapreso con le seguenti competenze da acquisire o espandere:
- conoscenza del linguaggio di programmazione GDScript;
- gestione dei salvataggi in file separati, con caricamento e memorizzazione;
- creazione di _asset_ 3D #gl("game_ready") per applicazioni come videogiochi;
- approfondimento nell'ambito del _Game Design_.*/

== Tecnologie utilizzate
_Qui elenco tutte le tecnologie che ho usato_
=== Godot Engine

#heading([GDScript], depth: 4, numbering: none)
#heading([GDShader], depth: 4, numbering: none)
#heading([GUT - Godot Unit test], depth: 4, numbering: none)
=== Blender
#heading([Python], depth: 4, numbering: none)
=== Visual Studio Code
=== Typst
=== Git
=== GitHub
#heading([Github Actions], depth: 4, numbering: none)
=== Notion
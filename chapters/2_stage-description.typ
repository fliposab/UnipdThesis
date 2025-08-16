#import "../config/thesis-config.typ": glpl, gl,
#import "../config/variables.typ": myTutor
#pagebreak(to:"odd")

= Il progetto<cap:descrizione-stage>
#text(style: "italic", [
    In questo capitolo approfondisco il rapporto con l'azienda ospitante verso gli stage in generale, come ha supportato il mio stage, il perché della mia scelta e gli obiettivi e vincoli decisi con il tutor aziendale. Infine verrà messo a confronto il tema dello stage con l'innovazione ed il mercato dove viene inserito il progetto.
])
#v(1em)

== Rapporto dell'azienda con gli _stage_
_Qui descrivo il rapporto dell'azienda con gli stage in generale_
/*
L'azienda Zucchetti Spa si è presentata molto aperta riguardo alla scelta del tema degli stage. Ha dimostrato disponibilità nell'accogliere proposte da parte degli studenti e nel supportare percorsi formativi personalizzati, favorendo così un ambiente stimolante e orientato alla crescita professionale.\
Durante il periodo di stage ho visto altri miei colleghi svolgere lo _stage_ anche con diversi argomenti da quelli proposti dall'azienda.
Infine il tutor ha avuto modo di mostrarmi un progetto svolto l'anno precedente, riguardante il mio stesso tema, dimostrandomi una mentalità aperta e accogliente verso le nuove proposte di _stage_*/

== Interesse dell'azienda verso lo _stage_
_Qui descrivo il rapporto dell'azienda con il mio stage_
/*
Durante l'evento _StageIT_ il tutor aziendale, prima di discutere dei progetti proposti dall'azienda, mi ha dato l'opzione di scegliere un tema libero per lo _stage_.
A supporto della mia scelta sul tema di Game Design, il tutor ha spiegato che attraverso questo progetto, voleva dimostrare il lato "artistico" dei programmatori e delle persone che lavorano in questo settore, stimolando la creatività attraverso il gioco.
*/

== Scelta del progetto
_Qui descrivo la scelta del progetto, in confronto con gli altri progetti disponibili_
/*L'opportunità di svolgere un progetto di questo tipo mi è stata offerta dal relatore durante un incontro presso stageIT 2025.\
Visto il mio interesse nell'ambito di Game Design e nel mercato videoludico, ho colto l'occasione, dato che avevo anche già un po' di esperienza con il motore di gioco e modellazione 3D in generale.*/

== Obiettivi e vincoli del progetto
=== Obiettivi
_Qui descrivo gli obiettivi e le competenze da acquisire_
/*
Il progetto in questione avrebbe come obiettivo la realizzazione di un gioco 3D con elementi ispirati a _Machine Learning_ ed Intelligenza artificiale, dove ogni livello si concentrava su un argomento. Questo argomento poteva essere: Regressione lineare, alberi di decisione o Causalità.\
La seguente tabella elenca gli obiettivi del progetto nella seconda colonna, mentre nella prima viene indicata l'importanza dell'obbiettivo, con :
- *O*: se sono obbligatori e irrinunciabili, cioè necessari per la realizzazione del progetto;
- *D*: se sono desiderabili, cioè non strettamente necessari, che rappresentano un valore aggiunto consistente, ad esempio per aumentare le funzionalità o l'esperienza dell'utente.
Gli obbiettivi sono seguiti da un numero per identificarli.

#figure(caption: [Obiettivi del progetto],table(
    columns: (auto,auto),
    rows: (2.5em, 5em, 3.9em),
    table.header([*Importanza*],[*Obiettivo*]),
    [#align(center+horizon, [O-1])],
    [Realizzazione di un gioco 3D con movimento tridimensionale, dove il personaggio può interagire con gli oggetti all'interno dell'applicazione],
    [#align(center+horizon, [O-2])],
    [Implementazione degli argomenti di AI e ML nel gioco (Regressione lineare, Alberi di decisione, Causalità)],
    [#align(center+horizon, [O-3])],[Implementazione di salvataggi e caricamenti dei dati attraverso files di tipo _.json_ oppure _.ini_],
    [#align(center+horizon, [D-1])],[Supporto della lingua inglese oltre all’italiano, con opzione di cambiare lingua di gioco],
    [#align(center+horizon, [D-2])],[Implementazione di _shaders_, utilizzando script di tipo _OpenGL_],
    [#align(center+horizon, [D-3])],[Uso dei linguaggi C\# o C++ per migliorare le prestazioni durante la sessione di gioco],
    [#align(center+horizon, [D-4])],[Implementazione di un modello di LLM per conversazioni tra personaggi all’interno del gioco]
))*/
/*
- conoscenza del linguaggio di programmazione GDScript;
- gestione dei salvataggi in file separati, con caricamento e memorizzazione;
- creazione di _asset_ 3D #gl("game_ready") per applicazioni come videogiochi;
- approfondimento nell'ambito del _Game Design_.*/
=== Vincoli
_Qui descrivo i vincoli decisi con il tutor_
/* */
/*
== Relazione tra progetto e visione dell'azienda
_Qui descrivo le relazione tra il tema del progetto e la visione dell'azienda_
*//*
== Rapporto dello _stage_ con il mercato e l'innovazione
_Qui descrivo il rapporto dello stage rispetto all'innovazione ed il tipo di mercato in cui è inserito_
*//*
== Il progetto
_Qui descrivo brevemente il progetto, e come l'azienda l'ha supportato_
/*L’obiettivo del progetto è stato pianificare, sviluppare e testare un videogioco 3D utilizzando il motore di gioco open source #gl("godot"), con particolare attenzione all'uso di componenti ispirati da #gl("ml", long: true) ed #gl("ai", long: true), ad esempio: #gl("rl"), #gl("ad"), etc...\
Ho sviluppato il progetto utilizzando prevalentemente il linguaggio #gl("gdscript"). Il processo ha incluso inoltre attività di modellazione 3D con il software open source #gl("blender"), la realizzazione di #gl("asset") personalizzati e la programmazione delle dinamiche di gioco.*/
*/


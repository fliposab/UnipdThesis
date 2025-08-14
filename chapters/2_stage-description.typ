#import "../config/thesis-config.typ": glpl, gl,
#import "../config/variables.typ": myTutor
#pagebreak(to:"odd")

= Descrizione stage<cap:descrizione-stage>
#text(style: "italic", [
    In questo capitolo approfondisco il rapporto con l'azienda ospitante verso gli stage in generale, come ha supportato il mio stage, il perché della mia scelta e gli obiettivi e vincoli decisi con il tutor aziendale. Infine verrà messo a confronto il tema dello stage con l'innovazione ed il mercato dove viene inserito il progetto.
])
#v(1em)

== Rapporto dell'azienda con gli _stage_
_Qui descrivo il rapporto generale dell'azienda con gli stage_

== Vincoli
_Qui descrivo i vincoli decisi con il tutor_

=== Pianificazione
_Qui descrivo tutto quello che avevo pianificato prima dello stage, con le ore e le attività da svolgere, con confronto con le ore ed attività effettivamente svolte_
/*Durante la pianificazione del lavoro, ho previsto che lo sviluppo di ognuno di questi livelli impegnerà un massimo di 2 settimane.
Vista la familiarità verso gli argomenti dello stage, non ho previsto molte ore
di formazione, quindi ho aumentato le ore richieste per la pianificazione e progettazione.
Nella seguente tabella ho riportato le ore totali pianificate del progetto:
#show figure: set block(breakable: true)
#figure(
  caption: [Pianificazione del lavoro],
  table(
    columns: (0.5fr, 2fr),
    inset: 8pt,
    align: center + horizon,
    fill: (x, y) => if (y == 0) { luma(230) },
    table.header([*Durata (ore)*], [*Descrizione attività*]),
    [*24*],
    [Pianificazione struttura applicazione #linebreak() 
    Pianificazione stuttura livelli #linebreak()
    Pianificazione implementazione meccaniche di gioco],
    [*63*],[*Stesura della documentazione*],
    table.hline(stroke: (dash: "dashed")),
    [24],[Stesura documentazione relativa ad analisi e progettazione],
    table.hline(stroke: none),
    [16],[Stesura delle metriche di qualità],
    table.hline(stroke: none),
    [15],[Stesura delle norme e piano di progetto],
    table.hline(stroke: none),
    [8],[Stesura del Manuale Utente],
    [*177*],
    [*Sviluppo dei livelli*],
    table.hline(stroke: (dash: "dashed")),
    [59],
    [Sviluppo primo livello],
    table.hline(stroke: none),
    [59],
    [Sviluppo secondo livello],
    table.hline(stroke: none),
    [59],
    [Sviluppo terzo livello],
    [*40*],
    [Test e verifica dell'applicazione],
    table.cell([Totale ore: *304*], colspan: 2),
  ),
)*/

==== Analisi dei rischi
_Qui svolgo un'analisi dei rischi, con descrizione di quelli pianificati e come sono stati mitigati_
/*
=== Errata pianificazione dei tempi
- *Descrizione*:\
  Un'errata pianificazione dei tempi può portare a ritardi nello sviluppo del progetto, con conseguente rischio di non rispettare le scadenze stabilite.
- *Probabilità*:\
  Alta
- *Pericolosità*:\
  Alta
- *Rilevamento*:\
  Monitoraggio delle attività pianificate e dei tempi di esecuzione ogni settimana.
- *Piano di contingenza*:\
  Controllare le attività svolte tramite uno strumento di gestione del progetto (ad esempio #gl("diagrammi_gannt") e uso di checklist su #gl("Notion")) e rivedere la pianificazione delle attività in caso di ritardi.\
//- *Aggiornamento*:\
=== Impegni personali o universitari
- *Descrizione*:\
  Impegni personali o universitari possono influenzare  il tempo a disposizione per lo sviluppo del progetto, causando ritardi o interruzioni nello sviluppo.
- *Probabilità*:\
  Media
- *Pericolosità*:\
  Media
- *Rilevamento*:\
  Monitoraggio delle attività pianificate e dei tempi di esecuzione ogni settimana.
- *Piano di contingenza*:\
  Pianificare le attività in modo da tenere conto degli impegni personali o universitari, e rivedere la pianificazione delle attività in caso di imprevisti.\

=== Mancanza di competenze tecniche
- *Descrizione*:\
  La mancanza di competenze tecniche può influenzare la qualità del prodotto software, causando ritardi nello sviluppo e problemi di integrazione.
- *Probabilità*:\
  Media
- *Pericolosità*:\
  Alta
- *Rilevamento*:\
  Monitoraggio delle attività svolte e dei tempi di esecuzione ogni settimana, valutazione delle competenze tecniche.
- *Piano di contingenza*:\
  Formazione sulle tecnologie utilizzate e revisione della progettazione in caso di problemi tecnici.\

=== Tecnologie non adeguate
- *Descrizione*:\
  L'uso di tecnologie non adeguate può influenzare la qualità del prodotto software, causando problemi di prestazioni basse o #gl("bug") grafici.
- *Probabilità*:\
  Alta
- *Pericolosità*:\
  Alta
- *Rilevamento*:\
  Monitoraggio delle attività svolte e dei tempi di esecuzione ogni settimana.
- *Piano di contingenza*:\
  Valutazione delle tecnologie utilizzate e revisione della progettazione in caso di problemi tecnici.
  In caso di problemi con le tecnologie utilizzate, si valuterà la possibilità di modificare la progettazione del gioco per adattarsi alle tecnologie disponibili.

=== Cambio dei requisiti
- *Descrizione*:\
  Un cambiamento dei requisiti può influenzare la progettazione del sistema, causando ritardi nello sviluppo.
- *Probabilità*:\
    Bassa
- *Pericolosità*:\
  Alta
- *Rilevamento*:\
  Comunicazione frequente con il relatore del progetto per garantire che i requisiti siano chiari e stabili.
- *Piano di contingenza*:\
  Rivedere la progettazione del sistema in caso di cambiamenti dei requisiti, e valutare l'impatto sui tempi di sviluppo.
  In caso di cambiamenti significativi dei requisiti, si valuterà la possibilità di modificare la pianificazione delle attività per tenere conto dei nuovi requisiti.

=== Errore nella progettazione dell'architettura
- *Descrizione*:\
  Un errore nella progettazione dell'architettura può creare imprevisti ed un aumento dei tempi richiesti per lo sviluppo del sistema, causando ritardi nello sviluppo.
- *Probabilità*:\
  Media
- *Pericolosità*:\
  Alta
- *Rilevamento*:\
  Monitoraggio delle attività svolte e dei tempi di esecuzione ogni settimana, valutazione della progettazione dell'architettura.
- *Piano di contingenza*:\
  Rivedere la progettazione dell'architettura in caso di problemi, e valutare l'impatto sui tempi di sviluppo.
*/

==== Casi d'uso
_Qui descrivo gli attori presenti e tutti i casi d'uso dell'applicazione_
===== Lista degli attori
===== Lista dei casi d'uso
==== Requisiti
_Qui descrivo i requisiti da soddisfare_


=== Organizzazione del lavoro
_Qui descrivo come mi sono organizzato per svolgere il lavoro, con le attività svolte, le regole che ho seguito e gli strumenti usati_
==== Attività
==== Regole di sviluppo
==== Strumenti
==== Metriche di qualità
_Qui descrivo le metriche che ho deciso di seguire per garantire qualità al progetto_
/*Prima dell'inizio dello stage, ho tenuto un altro incontro con il tutor aziendale per discutere in maniera più approfondita l'argomento dello stage e i vincoli da soddisfare.\
Sono stati decisi i seguenti vincoli:
#set list(marker: ([•],[‣],[-]))
- il gioco deve avere 3 livelli, ognuno con il seguente argomento:
    - il primo livello deve usare argomenti presi dalla Regressione lineare;
    - il secondo livello deve usare argomenti presi dagli Alberi di decisione;
    - il terzo livello deve usare argomenti presi dal teme della Causalità;
- il gioco deve essere in un ambiente 3D, con il giocatore in grado di muoversi in questo ambiente;
- il giocatore deve essere in grado di prendere oggetti e portarli con sé.
*/

== Obiettivi
_Qui descrivo gli obiettivi e le competenze da acquisire_
/*Il progetto è stato intrapreso con le seguenti competenze da acquisire o espandere:
- conoscenza del linguaggio di programmazione GDScript;
- gestione dei salvataggi in file separati, con caricamento e memorizzazione;
- creazione di _asset_ 3D #gl("game_ready") per applicazioni come videogiochi;
- approfondimento nell'ambito del _Game Design_.*/

== Relazione tra progetto e visione dell'azienda
_Qui descrivo le relazione tra il tema del progetto e la visione dell'azienda_

== Rapporto dello _stage_ con il mercato e l'innovazione
_Qui descrivo il rapporto dello stage rispetto all'innovazione ed il tipo di mercato in cui è inserito_

== Il progetto
_Qui descrivo brevemente il progetto, e come l'azienda l'ha supportato_
/*L’obiettivo del progetto è stato pianificare, sviluppare e testare un videogioco 3D utilizzando il motore di gioco open source #gl("godot"), con particolare attenzione all'uso di componenti ispirati da #gl("ml", long: true) ed #gl("ai", long: true), ad esempio: #gl("rl"), #gl("ad"), etc...\
Ho sviluppato il progetto utilizzando prevalentemente il linguaggio #gl("gdscript"). Il processo ha incluso inoltre attività di modellazione 3D con il software open source #gl("blender"), la realizzazione di #gl("asset") personalizzati e la programmazione delle dinamiche di gioco.*/

== Scelta del progetto
_Qui descrivo la scelta del progetto, in confronto con gli altri progetti disponibili_
/*L'opportunità di svolgere un progetto di questo tipo mi è stata offerta dal relatore durante un incontro presso stageIT 2025.\
Visto il mio interesse nell'ambito di Game Design e nel mercato videoludico, 
ho colto l'occasione, dato che avevo anche già un po' di esperienza con il motore di gioco e modellazione 3D in generale.*/


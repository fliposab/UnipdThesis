#import "../config/thesis-config.typ": glpl, gl
#import "data/requirements_list.typ": *

#pagebreak(to:"odd")

= Lo _stage_<cap:analisi-requisiti>

#text(style: "italic", [
    In questo capitolo approfondisco tutti i processi del progetto: sviluppo, test e validazione. In pratica descrivo cosa ho fatto di preciso, e come l'ho svolto.
])
#v(1em)


== Pianificazione
/*_Qui descrivo tutto quello che avevo pianificato prima dello stage, con le ore e le attività da svolgere, con confronto con le ore ed attività effettivamente svolte_*/
Durante la pianificazione del lavoro, ho previsto che lo sviluppo di ognuno di questi livelli impegnerà un massimo di 2 settimane.
Visto che avevo già un po' di esperienza verso gli argomenti dello stage, non ho previsto molte ore di formazione, quindi ho aumentato le ore richieste per la pianificazione e progettazione.
Nella seguente tabella ho riportato le ore totali pianificate del progetto:
#show figure: set block(breakable: true)
#figure(
  caption: [Pianificazione del lavoro],
  table(
    columns: (0.5fr, 2fr),
    inset: 8pt,
    align: center + horizon,
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
)

== Tecnologie utilizzate
/*_Qui elenco tutte le tecnologie che ho usato_*/

#show figure: set block(breakable: true)
#figure(caption: [Tecnologie utilizzate], table(
  columns: (auto, auto, auto),
  inset: 8pt,
  align: center + horizon,
  table.header([*Nome*], [*Descrizione*], [*Versione*]),
  //fill: (x, y) => if (y == 0) { luma(230) },
  table.cell([*Codice*], colspan: 3),
  [GDScript],[Linguaggio di programmazione di alto livello, con sintassi simile a *Python*, viene integrato con il motore di gioco Godot],[(Legata a Godot)],
  [GDShader],[Linguaggio simile a *GLSL ES 3.0*, usato per la creazione di materiali e *shader* più complessi],[(Legata a Godot)],
  [Typst],[Linguaggio utilizzato per la stesura dei documenti],[0.13.1],
  table.cell([*Softwares*], colspan: 3),
  [Godot],[Il motore di gioco *open source* per lo sviluppo del videogioco],[4.5-beta3-mono],
  [Blender],[_Software_ di modellazione ed animazione 3D usato per creare i modelli 3D ed animazioni nel gioco],[4.4.3],
  table.cell([*Strumenti e servizi*], colspan: 3),
  [Git],[Servizio per il controllo della versione],[2.50.1],
  [GitHub],[Servizio di *hosting* per i progetti software, utilizzato per la gestione del codice sorgente],[-],
  [GitHub Actions],[Servizio di *integrazione continua* e *distribuzione continua* (CI/CD), utilizzato per compilare i documenti ad ogni *push*],[-],
  table.cell([*Tipi di _file_*], colspan: 3),
  [\u{002A}.csv],["_Comma separated values_", _file_ utilizzato per memorizzare le frasi nelle lingue diverse supportate dal gioco],[-],
  [\u{002A}.ini],[Tipo di _file_ *plain-text* utilizzato per salvare i dati del gioco],[-],
  [\u{002A}.glb],["_GLTF Binary_", _file_ utilizzato per memorizzare i modelli 3D e le loro animazioni in formato binario, in modo da risparmiare spazio e migliorare le prestazioni],[2.0.1]
))
/*
=== Godot Engine
Lo strumento principale che ho usato durante lo sviluppo del progetto è stato il motore di gioco "Godot Engine", con numero di versione _4.5-beta3_.
Insieme a Godot sono state usate le seguenti tecnologie:
- *GDScript*: linguaggio di programmazione di alto livello, con sintassi simile a Python, viene integrato con il motore di gioco Godot;
- *GDShader*: linguaggio simile a #gl("glsl_es") 3.0, usato per la creazione di materiali più complessi;
- *GUT - Godot Unit test*:  #gl("add-on") di Godot che permette di svolgere test di unità e di integrazione all'interno dell'editor, simulando gli input dell'utente;
=== Blender
/*#heading([Python], depth: 4, numbering: none)*/
=== Visual Studio Code
=== Typst
=== Git
=== GitHub
/*#heading([Github Actions], depth: 4, numbering: none)*/
=== Notion
*/
== Analisi dei rischi
/*_Qui svolgo un'analisi dei rischi, con descrizione di quelli pianificati e come sono stati mitigati_*/

- #text(size: 12pt, [*Errata pianificazione dei tempi*])
  #v(0.5em)
  - *Descrizione*: Un'errata pianificazione dei tempi può portare a ritardi nello sviluppo del progetto, con conseguente rischio di non rispettare le scadenze stabilite.
  - *Probabilità*: Alta
  - *Pericolosità*: Alta
  - *Rilevamento*: Monitoraggio delle attività pianificate e dei tempi di esecuzione ogni settimana.
  - *Piano di contingenza*: Controllare le attività svolte tramite uno strumento di gestione del progetto (ad esempio *diagrammi_gannt* e uso di checklist su "Notion" e rivedere la pianificazione delle attività in caso di ritardi.\
\
- #text(size: 12pt, [*Impegni personali o universitari*])
    #v(0.5em)
  - *Descrizione*: Impegni personali o universitari possono influenzare  il tempo a disposizione per lo sviluppo del progetto, causando ritardi o interruzioni nello sviluppo.
  - *Probabilità*: Media
  - *Pericolosità*: Media
  - *Rilevamento*: Monitoraggio delle attività pianificate e dei tempi di esecuzione ogni settimana.
  - *Piano di contingenza*: Pianificare le attività in modo da tenere conto degli impegni personali o universitari, e rivedere la pianificazione delle attività in caso di imprevisti.\
\
- #text(size: 12pt, [*Mancanza di competenze tecniche*])
    #v(0.5em) 
  - *Descrizione*: La mancanza di competenze tecniche può influenzare la qualità del prodotto software, causando ritardi nello sviluppo e problemi di integrazione.
  - *Probabilità*: Media
  - *Pericolosità*: Alta
  - *Rilevamento*: Monitoraggio delle attività svolte e dei tempi di esecuzione ogni settimana, valutazione delle competenze tecniche.
  - *Piano di contingenza*: Formazione sulle tecnologie utilizzate e revisione della progettazione in caso di problemi tecnici.\
\
- #text(size: 12pt, [*Tecnologie non adeguate*])
    #v(0.5em) 
  - *Descrizione*: L'uso di tecnologie non adeguate può influenzare la qualità del prodotto software, causando problemi di prestazioni basse o "bug" grafici.
  - *Probabilità*: Alta
  - *Pericolosità*: Alta
  - *Rilevamento*: Monitoraggio delle attività svolte e dei tempi di esecuzione ogni settimana.
  - *Piano di contingenza*: Valutazione delle tecnologie utilizzate e revisione della progettazione in caso di problemi tecnici. In caso di problemi con le tecnologie utilizzate, si valuterà la possibilità di modificare la progettazione del gioco per adattarsi alle tecnologie disponibili.
\
- #text(size: 12pt, [*Cambio dei requisiti*])
  #v(0.5em)
  - *Descrizione*: Un cambiamento dei requisiti può influenzare la progettazione del sistema, causando ritardi nello sviluppo.
  - *Probabilità*: Bassa
  - *Pericolosità*: Alta
  - *Rilevamento*: Comunicazione frequente con il relatore del progetto per garantire che i requisiti siano chiari e stabili.
  - *Piano di contingenza*: Rivedere la progettazione del sistema in caso di cambiamenti dei requisiti, e valutare l'impatto sui tempi di sviluppo. In caso di cambiamenti significativi dei requisiti, si valuterà la possibilità di modificare la pianificazione delle attività per tenere conto dei nuovi requisiti.
\
- #text(size: 12pt, [*Errore nella progettazione dell'architettura*])
  #v(0.5em)
  - *Descrizione*: Un errore nella progettazione dell'architettura può creare imprevisti ed un aumento dei tempi richiesti per lo sviluppo del sistema, causando ritardi nello sviluppo.
  - *Probabilità*: Media
  - *Pericolosità*: Alta
  - *Rilevamento*: Monitoraggio delle attività svolte e dei tempi di esecuzione ogni settimana, valutazione della progettazione dell'architettura.
  - *Piano di contingenza*: Rivedere la progettazione dell'architettura in caso di problemi, e valutare l'impatto sui tempi di sviluppo.

== Casi d'uso
/*_Qui descrivo gli attori presenti e tutti i casi d'uso dell'applicazione_*/
=== Lista degli attori
Il gioco prevede un solo attore principale: il *giocatore*, ovvero l'utente che interagisce con il videogioco. Il giocatore controlla il personaggio principale, esplora l'ambiente di gioco, prende decisioni e svolge le azioni necessarie per completare i livelli e raggiungere gli obiettivi previsti.
#figure(image("../images/giocatore.png", width: 10%), caption: "Attore principale")

=== Lista dei casi d'uso<cap:lista-user-stories>
/*
#set heading(
  numbering: (..numbers) => {
    let level = numbers.pos().len()
    if (level == 4) {
      return numbering("UC1", numbers.pos().at(level - 1))
    }
  }
)*/
#set heading(supplement: none)
#let ap = [*Attori principali:*]
#let desc = [*Descrizione:*]
#let prec = [*Precondizioni:*]
#let posc = [*Postcondizioni:*]
#let scep = [*Scenario principale:*]
#let incl = [*Inclusioni:*]
#let ext = [*Estensioni:*]
#let gnr = [*Generalizzazioni:*]

#set heading(numbering: none)
==== UC1 - Movimento
#figure(image("../images/usecase/uc-movimento.png", width: 80%), caption: [Diagramma UML _use case_ sul movimento])
#desc Il giocatore può muovere il personaggio in avanti, indietro, a sinistra e a destra utilizzando i tasti direzionali o i comandi di movimento del *joypad*.\
#prec Il giocatore deve essere in un livello del gioco.\
#posc Il personaggio si muove nella direzione desiderata e interagisce con l'ambiente circostante.\
/**Scenario principale*:\
- Il giocatore preme il tasto o muove la levetta nel *joypad*.
- Il personaggio si muove nella direzione desiderata.*/
#incl Rotazione telecamera automatica.\
#gnr Movimento con oggetto.\

==== UC1.1 - Movimento con oggetto
#desc Il giocatore può muovere il personaggio in avanti, indietro, a sinistra e a destra, mentre sta portando un oggetto, utilizzando lo stick analogico sinistro del joypad.\
#prec Il giocatore deve essere in un livello del gioco e ha un oggetto con sé.\
#posc Il personaggio si muove nella direzione desiderata e sposta con sé l'oggetto.\

==== UC2 - Salto
#figure(image("../images/usecase/uc-salto.png", width: 60%), caption: [Diagramma UML _use case_ sul salto])
#desc Il giocatore può far saltare il personaggio utilizzando un tasto specifico.\
#prec Il giocatore deve essere in un livello del gioco e deve essere libero di muoversi.\
#posc Il personaggio esegue il salto.\
#gnr salto con oggetto.\


#set heading(numbering: "1.")
== Requisiti
/*_Qui descrivo i requisiti da soddisfare_*/

In questa sezione vengono elencati i requisiti del progetto, individuati durante la fase di analisi. Ogni requisito viene
identificato da un codice, scelto in base ai seguenti parametri:
#align(center, [*R - [numero] - [tipo] - [priorità]*])
con:
- *Numero*: numero progressivo che identifica il requisito, parte da 01.
- *Tipo*: può essere
  - *F*: requisito funzionale, indica una funzionalità del sistema;
  - *Q*: requisito di qualità, definisce le caratteristiche della qualità del prodotto, come un sistema deve essere o come il sistema deve esibirsi, per soddisfare le esigenze dell'utente;
  - *V*: requisito deciso con il tutor aziendale e vincolante per il completamento del progetto;
  - *A*: requisito di accessibilità, indica una funzionalità da soddisfare per rendere il gioco accessibile ad un numero maggiore di utenti.
- *Priorità*: può essere
  - *O*: Obbligatorio e necessario per considerare il prodotto completo;
  - *D*: Desiderabile, non strettamente necessario ma è un valore aggiunto;
Infine, nella sezione fonte, viene scritto se il requisito è stato deciso dallo studente o tramite una discussione con il tutor aziendale.

=== Requisiti funzionali
#figure(
  caption: [Tabella dei requisiti funzionali],
  table(
    columns: (auto, auto, auto),
    inset: 8pt,
    align: center + horizon,
    table.header([*ID*], [*Descrizione*], [*Fonte*]),
    //UC1
    [R-01-F-O],
    [Il giocatore deve essere in grado di muoversi in uno spazio tridimensionale],
    [UC1],
    //UC1.1
    [R-02-F-O],
    [Il giocatore deve essere in grado di muoversi in uno spazio tridimensionale portando un oggetto],
    [UC1.1],
    //UC2
    [R-03-F-O],
    [Il giocatore deve essere in grado saltare],
    [UC2\ ],
    //UC2.1
    [R-04-F-O],[Il giocatore deve essere in grado di saltare con un oggetto in mano],[UC2.1],
    //UC3, 3.1
    [R-05-F-O],
    [La telecamera deve muoversi automaticamente dietro il giocatore quando questo si muove],
    [UC3\ UC3.1],
    //UC3, 3.2
    [R-06-F-O],
    [Il giocatore deve essere in grado di ruotare la telecamera],
    [UC3\ UC3.2],
    //UC4, UC5
    [R-07-F-O],[Il giocatore deve tornare in una posizione precedente quando cade dal livello],
    [UC4\ UC5],
    [R-08-F-O],
    //UC6
    [Il giocatore deve essere in grado di raccogliere collezionabili sparsi per il livello],
    [UC6],
    //UC7
    [R-09-F-O],
    [Il giocatore deve essere in grado di interagire con entità presenti nel livello],
    [UC7],
    //UC7.1
    [R-10-F-O],
    [Il giocatore deve essere in grado di visualizzare subito il messaggio di un'entità automatica],
    [UC7.1\ UC7.1.1],
    //UC7.2
    [R-11-F-O],
    [Il giocatore deve essere in grado di parlare con un personaggio non giocabile],
    [UC7.2],
    //UC8.1
    [R-12-F-O],
    [Il giocatore deve poter visualizzare il dialogo quando interagisce con delle entità specifiche],
    [UC8.1\ ],
    //UC8.2
    [R-13-F-O],
    [Il giocatore deve avere la possibilità  di prendere una decisione quando gli viene mostrato nel dialogo],
    [UC8.2\ ],
    //UC8.3
    [R-14-F-O],
    [Il giocatore deve poter andare avanti nel dialogo],
    [UC8.3\ ],
    //UC8.4
    [R-15-F-O],
    [Il giocatore deve poter finire l'interazione con un'entità],
    [UC8.4\ ],
    //UC9
    [R-16-F-O],
    [Il giocatore deve poter essere in grado di raccogliere oggetti],
    [UC9],
    //UC10
    [R-17-F-O],
    [Il giocatore deve poter essere in grado di lasciare l'oggetto che sta portando],
    [UC10],
    //UC11
    [R-18-F-O],
    [Il giocatore deve poter interagire con un cartello in un livello],
    [UC11],
    // UC11.1
    [R-19-F-O],
    [Il giocatore deve poter visualizzare il contenuto di un cartello],
    [UC11.1],
    //UC11.2
    [R-20-F-O],
    [Il giocatore deve poter visualizzare gli oggetti che ha classificato correttamente],
    [UC11.2],
    //UC11.3
    [R-21-F-O],
    [Il giocatore deve poter visualizzare il grafico di un cartello],
    [UC11.3],
    //UC11.4
    [R-22-F-O],[Il giocatore deve poter modificare i dati presenti in un cartello],[UC11.4],
    //UC12
    [R-23-F-O],
    [Il giocatore deve poter essere in grado di interagire con un'area di transizione],
    [UC12\ ],
    //UC12.1
    [R-24-F-O],
    [Il giocatore deve poter essere in grado di cambiare livello],
    [UC12.1\ ],
    //UC13
    [R-25-F-O],
    [Il giocatore deve poter interagire con la macchina LR],
    [UC13],
    //UC14
    [R-26-F-O],
    [Il giocatore deve poter inserire punti nel grafico LR],
    [UC14],
    //UC15
    [R-27-F-O],
    [Il giocatore deve poter resettare i punti aggiunti nel grafico LR],
    [UC15],
    //UC16
    [R-28-F-O],[Il giocatore deve poter salire sopra un nodo dell'albero di decisione],[UC16],
    //UC16.1
    [R-29-F-O],[Il giocatore deve poter visualizzare le scelte da prendere sopra il nodo],[UC16.1],
    //UC17
    [R-30-F-O],
    [Il giocatore deve poter piazzare un oggetto sopra un nodo dell'albero di decisione],
    [UC17],
    //UC17.1
    [R-31-F-O],
    [Il giocatore deve poter visualizzare se l'oggetto posto sul nodo sia giusto],
    [UC17.1],
    //UC17.2
    [R-32-F-O],
    [Il giocatore deve poter visualizzare se l'oggetto posto sul nodo sia sbagliato],
    [UC17.2],
    //UC18
    [R-33-F-O],
    [Il giocatore deve poter salvare il gioco in momenti specifici],
    [UC18\ ],
    //UC19
    [R-34-F-O],
    [Il giocatore deve poter mettere in pausa il gioco],
    [UC19\ ],
    //UC20
    [R-35-F-O],
    [Il giocatore deve poter riprendere il gioco dal menu di pausa],
    [UC20\ ],
    //UC21
    [R-36-F-O],
    [Il giocatore deve poter accedere alle opzioni del gioco],
    [UC21\ ],
    //UC22
    [R-37-F-O],
    [Il giocatore deve poter tornare al livello hub dal menu di pausa],
    [UC22\ ],
    //UC23
    [R-38-F-D],
    [Il giocatore deve poter tornare al menu principale dal menu di pausa],
    [UC23\ ],
    //UC24
    [R-39-F-O],
    [Il giocatore deve poter chiudere il gioco dal menu di pausa o principale],
    [UC24\ ],
    //UC25
    [R-40-F-O],
    [Il giocatore deve poter caricare una partita salvata dal menu principale],
    [UC25\ ],
    [R-41-F-O],
    [Il giocatore deve poter avviare una nuova partita dal menu principale],
    [UC26\ ],
    [R-42-F-O],
    [Il giocatore deve poter modificare la modalità della finestra dal menu delle opzioni],
    [UC27\ ],
    [R-43-F-O],
    [Il giocatore deve poter modificare la risoluzione della finestra],
    [UC28\ ],
    [R-44-F-D],
    [Il giocatore deve poter modificare la scala di risoluzione del gioco],
    [UC29\ ],
    [R-45-F-D],
    [Il giocatore deve essere in grado di poter modificare il tipo di anti-aliasing usato nel gioco, oppure non usarlo],
    [UC30\ ],
    [R-46-F-D],[Il giocatore deve essere in grado di modificare la qualità delle ombre nel gioco],
    [UC31\ ],
    [R-47-F-D],[Il giocatore deve poter cambiare lingua di gioco],
    [UC32\ ],
    [R-48-F-D],[Il giocatore deve poter cambiare il volume generale del gioco],
    [UC33\ ],
    [R-49-F-O],[Il gioco deve applicare e salvare le opzioni selezionate],
    [UC34\ ],
    [R-50-F-O],[Il giocatore deve poter accendere delle unità esterne di un condizionatore premendo un tasto],
    [UC35],
    [R-51-F-O],[Il giocatore deve poter vedere scene di intermezzo],[UC36\ ],
    "R-52-F-O","Il gioco deve supportare input da tastiera",[UC37\ ],
    "R-53-F-D","Il gioco deve supportare input da un joypad generico",[UC38\ ],
  )
)

=== Requisiti di qualità
#figure(
  caption: [Tabella dei requisiti di qualità],
  table(
    columns: (auto, auto),
    inset: 8pt,
    align: center + horizon,
    table.header([*ID Requisito*], [*Descrizione*]),
    "R-01-Q-O",
    "È richiesta la presentazione del documento Specifica Tecnica che include dettagli riguardanti la progettazione architetturale",

    "R-02-Q-O",
    "È richiesta la presentazione del documento Specifica Tecnica che include dettagli riguardanti le tecnologie utilizzate",

    "R-03-Q-O",
    "Tutte le attività del progetto devono essere svolte rispettando le Norme di Progetto",

    "R-04-Q-O", "Tutto il codice e la documentazione vanno salvati all'interno di un repository pubblico", 
  ),
)
=== Requisiti di vincolo
=== Requisiti di accessibilità
== Totale requisiti
#figure(
  caption: [Totale requisiti],
  table(
    columns: (1.2fr, 0.8fr, 0.8fr, 0.5fr),
    inset: 8pt,
    align: center + horizon,
    fill: (x, y) => if (y == 0 or y == 5) { luma(230) },
    table.header([*Tipologia*], [*Obbligatori*], [*Desiderabili*],[*Totale*]),
    [Funzionali],[43],[10],[53],
    [Qualità],[6],[-],[6],
    [Vincolo],[6],[-],[6],
    [Accessibilità],[2],[3],[5],
    table.cell(colspan: 3, [*Totale*]),[*70*]))
== Organizzazione del lavoro
_Qui descrivo come mi sono organizzato per svolgere il lavoro, con le attività svolte, le regole che ho seguito e gli strumenti usati_
=== Attività
=== Regole di sviluppo
=== Metriche di qualità
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
/*
=== Lista degli attori 
=== Lista dei casi d'uso<cap:lista-user-stories>
#[
#set heading(
  numbering: (..numbers) => {
    let level = numbers.pos().len()
    if (level == 4) {
      return numbering("UC1", numbers.pos().at(level - 1))
    }
  }
)
#set heading(supplement: none)
#let ap = [*Attori principali:*]
#let desc = [*Descrizione:*]
#let prec = [*Precondizioni:* #linebreak()]
#let posc = [*Postcondizioni:* #linebreak()]
#let scep = [*Scenario principale:* #linebreak()]
#let incl = [*Inclusioni:*#linebreak()]
#let ext = [*Estensioni:*#linebreak()]
#let gnr = [*Generalizzazioni:*#linebreak()]

//#heading(numbering: none, level: 3)[]
==== - Movimento<uc:movimento>
#figure(image("../images/usecase/uc-movimento.png", width: 70%), caption: [Diagramma UML del caso d'uso "Movimento"])
#ap Giocatore\
#desc\
#prec
#posc
#scep

==== - Salto<uc:salto>
#ap Giocatore\
#desc.
]

=== Tracciamento dei requisiti
Ad ogni requisito è associato un codice costruito in base alle sue caratteristiche:
#v(1em)
#align(center)[*(F/Q/C)(M/D/O)R*]
#v(1em)
#set list(marker: none)
- F (_Functional_): definisce una funzione di un sistema o dei suoi componenti;
- Q (_Qualitative_): rappresentano come il sistema deve essere per soddisfare i requisiti dello stakeholder;
- C (_Constraint_): rappresentano dei vincoli o dei limiti che il sistema deve rispettare;
#v(0.5em)
- M (_Mandatory_): irrinunciabili per qualcuno degli stakeholder;
- D (_Desirable_): non strettamente necessari ma a valore aggiunto riconoscibile;
- O (_Optional_): relativamente utili oppure contrattabili anche in fasi avanzate del progetto;
#v(0.3em)
- R (_Requirement_): requisito
#v(1em)
In @tab:requisiti-funzionali, @tab:requisiti-qualitativi e @tab:requisiti-vincolo sono riassunti i requisiti e il loro tracciamento con gli use case delineati in fase di analisi.
#[
#show figure: set block(breakable: true)
#set table(
  align: (center+horizon, left+horizon, center+horizon),
  columns: (auto, 5fr, 1.5fr),
)
#v(1em)
#figure(
    table(
        table.header([*Codice*], [*Descrizione*], [*Fonti*]),
        ..getFR().flatten()
    ),
    caption: "Tracciamento dei requisti funzionali.",
)
<tab:requisiti-funzionali>

#v(2em)
#figure(
    table(
      align: (center+horizon, left+horizon, center+horizon),
      table.header([*Codice*], [*Descrizione*], [*Fonti*]),
      ..getQR().flatten()
    ),
    caption: "Tracciamento dei requisti di qualità.",
)
<tab:requisiti-qualitativi>

#v(2em)
#figure(
    table(
      align: (center+horizon, left+horizon, center+horizon),
      table.header([*Codice*], [*Descrizione*], [*Fonti*]),
      ..getCR().flatten()
    ),
    caption: "Tracciamento dei requisti di vincolo.",
)
<tab:requisiti-vincolo>

#v(2em)
Di seguito, nella @tab:riepilogo-requisiti ho inserito il riepilogo dei requisiti, suddivisi per tipologia e necessità.
#v(1em)
#show figure: set block(breakable: false)
#figure(
  table(
    columns: (auto, 1fr, 1fr, auto),
    table.header([*Tipo*], [*Obbligatori*], [*Desiderabili*], [*Somma*]),
    [Functional], [#getFR(getLen: true).at(0)], [#getFR(getLen: true).at(1)], 
    [#getFR(getLen: true).sum()],
    [Qualitative], [#getQR(getLen: true).at(0)], [#getQR(getLen: true).at(1)], 
    [#getQR(getLen: true).sum()],
    [Constraint], [#getCR(getLen: true).at(0)], [#getCR(getLen: true).at(1)], [#getCR(getLen: true).sum()],
    [*Totale*],
      [*#{getFR(getLen: true).at(0)+getQR(getLen: true).at(0)+getCR(getLen: true).at(0)}*],
      [*#{getFR(getLen: true).at(1)+getQR(getLen: true).at(1)+getCR(getLen: true).at(1)}*],
      [*#{getFR(getLen: true).sum()+getQR(getLen: true).sum()+getCR(getLen: true).sum()}*],
    align: (center+horizon)
  ),
  caption: "Riepilogo dei requisiti."
)<tab:riepilogo-requisiti>
]
*/


== Architettura
_Qui descrivo l'architettura delle classi e come comunicano tra loro_

== Verifica e validazione
_Qui descrivo i test svolti, divisi per tipo_
=== Test di unità
=== Test di integrazione
=== Test di sistema
=== Test di accettazione
/*
== Validazione
_Qui descrivo le attività svolte durante il processo di validazione_
*/
== Risultati ottenuti
_Qui descrivo i risultati raggiunti rispettivamente su piano qualitativo e quantitativo, con copertura dei requisiti, testing e quantità di prodotti_
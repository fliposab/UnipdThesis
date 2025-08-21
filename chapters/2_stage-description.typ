#import "../config/thesis-config.typ": glpl, gl,
#import "../config/variables.typ": myTutor
#pagebreak(to:"odd")

#set page(footer-descent: -20%, footer: [#align(top, [#line(length: 100%)
*Game Design*: disciplina che si occupa della progettazione e dello sviluppo di giochi.\
*StageIT*: evento orientato al lavoro, dedicato agli studenti per aiutarli a trovare aziende dove svolgere l'attività di _stage_.\ \ 
#align(center, context([#counter(page).display("1.")]))])])

= Lo _stage_<cap:descrizione-stage>
#text(style: "italic", [
    In questo capitolo approfondisco il rapporto con l'azienda ospitante verso gli stage in generale, come ha supportato il mio stage, il perché della mia scelta e gli obiettivi e vincoli decisi con il tutor aziendale. Infine verrà messo a confronto il tema dello stage con l'innovazione ed il mercato dove viene inserito il progetto.
])
#v(1em)

== Rapporto dell'azienda con gli _stage_
/*_Qui descrivo il rapporto dell'azienda con gli stage in generale_*/
Da molti anni l'azienda Zucchetti Spa si presenta all'evento #gl("stageIT"), incontrando un vasto numero di studenti, proponendo loro nuovi temi da approfondire per i progetti di _stage_.\
Oltre a questi progetti, l'azienda è sempre disponibile a valutare nuove idee di progetti proposti dagli studenti, ascoltando le loro esigenze e suggerimenti.\
Ho potuto osservare questa disponibilità anche durante lo _stage_, dove erano presenti dei miei colleghi, ed alcuni di loro che stavano svolgendo progetti che non erano stati proposti dall'azienda, ma decisi da loro, segno che l'azienda è sempre aperta a nuove idee e proposte.

== Interesse dell'azienda verso lo _stage_
/*_Qui descrivo il rapporto dell'azienda con il mio stage_*/
Sempre durante l'evento _StageIT_ 2025, ho avuto la possibilità di incontrare il tutor aziendale, il quale, prima di presentare i progetti proposti dall'azienda, mi ha dato la possibilità di proporre un tema di progetto diverso.\
La mia proposta è stata un progetto di #gl("game_design"), un tema a cui sono personalmente molto interessato e familiare.\
Nonostante ritenessi che la mia proposta avesse poco valore, il tutor ha mostrato un interesse genuino e ha incoraggiato la mia idea, portandomi a svilupparla ulteriormente.

#set page(footer-descent: -150%, footer: [#align(top, [#line(length: 100%)
*alberi di decisione*: modello predittivo che rappresenta le decisioni e le loro possibili conseguenze sotto forma di un albero.\
*Machine Learning*: disciplina che si occupa dello sviluppo di algoritmi che permettono ai computer di apprendere dai dati e migliorare le proprie prestazioni nel tempo senza essere esplicitamente programmati.\
*Nearest neighbor*: algoritmo di classificazione che assegna un'etichetta a un campione in base alle etichette dei suoi vicini più prossimi nel dataset.\
*Regressione lineare*: tecnica statistica utilizzata per modellare la relazione tra una variabile dipendente e una o più variabili indipendenti, assumendo una relazione lineare.\
*Support Vector Machines*: classe di algoritmi di apprendimento che cercano di trovare l'iperpiano ottimale che separa le classi nel dataset.\
*tutorial*: guida passo-passo che insegna come utilizzare un software o completare un'attività specifica.\ \
#align(center, context([#counter(page).display("1.")]))])])

=== Supporto dell'azienda verso il progetto
Successivo all'evento _StageIT_, ho avuto la possibilità di parlare con il tutor aziendale, attraverso una videochiamata, il quale mi ha supportato nella definizione del progetto, aiutandomi a capire come svilupparlo al meglio.\
Visto che l'argomento del momento nel mondo dell'informatica era l'uso degli _LLM_, il tutor ha proposto di usare gli argomenti comuni sul tema dell'Intelligenza Artificiale e #gl("machine_learning", long: true) per arricchire il progetto, ed usarli per creare nuove meccaniche nel gioco per creare livelli unici, che il giocatore deve completare.
In questo modo, tramite il gioco, l'utente impara nuovi argomenti riguardo al mondo dell'Intelligenza artificiale e _Machine Learing_ ed apprende il loro funzionamento.\
\
Tra questi temi, sono spiccati di più:
- #gl("regressione_lineare");
- #gl("alberi_di_decisione");
- causalità;
- #gl("nearest_neighbor");
- #gl("support_vector_machines")

== Descrizione del progetto
/*_Qui faccio un breve riassunto in cosa consisteva il mio progetto di stage_*/
Il progetto si tratta di un videogioco educativo, che ha come obiettivo quello di insegnare i concetti base dell'Intelligenza Artificiale e _Machine Learning_ in modo semplice e divertente.\
\
Oltre al livello #gl("tutorial") ed al livello principale, dove il giocatore può scegliere il livello che vuole affrontare, sono presenti 3 livelli, ognuno dei quali insegna un concetto diverso:
#set page(footer-descent: 0%, footer: [#align(center+horizon, context([#counter(page).display("1.")]))])
- il livello della *regressione lineare*, dove la linea nel grafico diventa un ponte su cui il personaggio può camminare, tuttavia la direzione non è corretta e bisogna modificarla aggiungendo nuovi punti nel grafico, modificando la direzione della linea;
- il livello dell'*albero di decisione*, dove l'utente dovrà classificare diverse razze di cani in base ai valori, già assegnati, in un albero di decisione;
- il livello della *causalità*, dove l'obiettivo principale è cercare la giusta causa di quello che sta avvenendo nel livello, ed in caso di risposta corretta, l'utente viene avvisato e premiato.

=== Scelta del progetto
/*_Qui descrivo la scelta del progetto, le ragioni della mia scelta, in confronto con gli altri progetti disponibili_*/
Il motivo principale per cui ho scelto questo progetto è la mia passione per il _Game Design_ e familiarità con strumenti di sviluppo di giochi ed il mercato.\ 
Volevo creare un videogioco che non solo fosse divertente, ma che potesse anche educare i giocatori su concetti complessi in modo accessibile ed accattivante.\ 
Inoltre, ho ritenuto che l'uso di meccaniche di gioco basate su elementi di _Machine Learning_ potesse rendere l'apprendimento più coinvolgente rispetto ad approcci più tradizionali.

=== Scelta dell'azienda
/*_Qui descrivo le ragioni per cui ho deciso di svolgere il progetto in questa azienda rispetto alle altre_*/
Il motivo principale della mia scelta sull'azienda è stata la disponibilità aperta ad esplorare nuove idee ed approcci.
L'azienda ha dimostrato un forte interesse verso il progetto, mostrandomi anche esempi di progetti passati svolti sullo stesso argomento.\
Ulteriore motivo della mia scelta è stata la posizione della sede dove ho svolto lo _stage_, che ho trovato molto comoda da raggiungere, attraverso i mezzi di trasporto disponibili.

=== Rapporto del progetto con l'innovazione
/*_Qui descrivo il rapporto del progetto con l'innovazione ed il mercato, rispetto alla visione dell'azienda_*/
Il progetto si inserisce in un mercato in crescita, dove l’innovazione rappresenta un elemento chiave per attrarre e coinvolgere nuovi utenti.\
La clientela _target_ del progetto è costituita principalmente da giovani e appassionati di tecnologia e videogiochi, interessati sia all’aspetto ludico sia a quello educativo. Il prodotto si rivolge a chi desidera apprendere concetti di Intelligenza Artificiale e _Machine Learning_ in modo interattivo e coinvolgente, offrendo un’esperienza che unisce apprendimento e divertimento. 

#set page(footer-descent: -20%, footer: [#align(top, [#line(length: 100%)
*OpenGL*: linguaggio di programmazione grafica utilizzato per creare applicazioni 3D e 2D.\
*shader*: modello di sviluppo software che promuove la collaborazione e la condivisione del codice sorgente.\ \
#align(center, context([#counter(page).display("1.")]))])])
=== Aspettative
//_Qui descrivo le mie aspettative riguardo al progetto da svolgere che avevo prima dell'inizio dello stage_

Prima di iniziare lo _stage_ avevo delle aspettative riguardo al progetto, che si sono rivelate, alla fine, corrette.\
Tra queste aspettative, vi erano:
- imparare nuove tecnologie e strumenti per lo sviluppo di giochi;
- migliorare le mie capacità di programmazione e _problem solving_;
- acquisire esperienza pratica nel lavoro di squadra e nella gestione di progetti;
- ricevere _feedback_ costruttivo sul mio lavoro e sulle mie idee.

== Obiettivi
//_Qui descrivo gli obiettivi e le competenze da acquisire_
Nella seguente tabella, vengono elencati gli obiettivi personali che ho fissato, insieme al _tutor_ aziendale, suddivisi in obbligatori e desiderabili.\
Gli obiettivi sono elencati con un codice, costituito da un prefisso e un numero. Il prefisso indica con:
- *O*: gli obiettivi obbligatori, rappresentano le competenze e i risultati minimi da raggiungere durante lo _stage_;
- *D*: gli obiettivi desiderabili, sono traguardi aggiuntivi che arricchiscono ulteriormente il progetto e la mia esperienza formativa.

#show figure: set block(breakable: true)
#figure(caption: [Obiettivi del progetto], table(
  columns: (auto, auto),
  inset: 8pt,
  align: center + horizon,
  fill: (x, y) => if (y == 0 or y == 4) { luma(230) },
  table.cell(colspan: 2, [*Obbligatori*]),
  [O-1],
  [Progettazione e realizzazione delle principali meccaniche di gioco (movimento 3D, interazione con altri oggetti...)],
  [O-2],
  [Implementazione degli argomenti di AI e ML al gioco (Regressione lineare, Alberi di decisione, Causalità...)],
  [O-3],
  [Implementazione di salvataggi e caricamenti dei dati attraverso files di tipo _.json_ oppure _.ini_],
  table.cell(colspan: 2, [*Desiderabili*]),
  [D-1],
  [Supporto della lingua inglese oltre all'italiano, con opzione di cambiare lingua di gioco],
  [D-2],
  [Implementazione di #glpl("shader"), utilizzando script di tipo #gl("opengl")],
  [D-3],[Uso dei linguaggi C#sym.hash o C++ per migliorare le prestazioni],
  [D-4],[Implementazione di un modello di _LLM_ per conversazioni tra personaggi all'interno del gioco]
))

#set page(footer-descent: -40%, footer: [#align(top, [#line(length: 100%)
*open source*: modello di sviluppo software che promuove la collaborazione e la condivisione del codice sorgente.\
*motore di gioco*: software progettato per facilitare lo sviluppo di videogiochi, fornendo strumenti e funzionalità per la gestione della grafica, della fisica, dell'audio e di altre componenti del gioco.\ \
#align(center, context([#counter(page).display("1.")]))])])

== Vincoli
//_Qui descrivo i vincoli decisi con il tutor_
Durante il secondo colloquio con il tutor aziendale, sono stati definiti dei vincoli obbligatori del progetto da rispettare, concordati tra me e il tutor aziendale.
I vincoli sono indicati nella seguente tabella, con il prefisso:
- *VTM*: vincoli temporali;
- *VTC*: vincoli tecnologici;
#figure(caption: [Vincoli del progetto], table(
  columns: (auto, auto),
  inset: 8pt,
  align: center + horizon,
  table.cell(colspan: 2, [*Temporali*]),
  [VTM-1],[Il progetto deve essere realizzato in un tempo massimo di 320 ore],
  [VTM-2],[Il numero di ore settimanali non può essere superiore a 40],
  table.cell(colspan: 2, [*Tecnologici*]),
  [VTC-1],[Il progetto deve essere sviluppato utilizzando il #gl("motore_di_gioco") #gl("open_source") Godot],
  [VTC-2],[L'applicazione finale deve essere un eseguibile, senza bisogno di installazione o altri strumenti],
  [VTC-3],[Il gioco deve utilizzare una grafica 3D con un movimento del personaggio in terza persona, tridimensionale],
))
=== Pianificazione
//_Qui descrivo tutto quello che avevo pianificato prima dello stage, con le ore e le attività da svolgere, con confronto con le ore ed attività effettivamente svolte_
Il gioco contiene 3 livelli, per ognuno di questi livelli sono state dedicate due settimane.
Nella tabella a pagina successiva vengono riportate le ore totali pianificate del progetto:
#set page(footer-descent: -0%, footer: [#align(center + horizon, context([#counter(page).display("1.")]))])
#show figure: set block(breakable: false)
#figure(
  caption: [Pianificazione del lavoro in ore],
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
)

=== Calendario
//_Qui vengono descritte le attività pianificate per ogni settimana o periodo_
Il periodo di _stage_ è suddiviso in 8 periodi, la cui lunghezza di ognuno 
corrisponde a una settimana. Qui sotto sono elencate le attività pianificate per ogni settimana:\
\

//1 - Linear descent
//2 - Causality
//3 - Random Forest
//4 - Support Vector Machine
- *Settimana 1 | 18/06 - 20/06 | 24 ore*:
  - Incontro con il personale dell'azienda per discutere i requisiti dell'applicazione da sviluppare.
  - Verifica credenziali e strumenti di lavoro assegnati
  - Pianificazione e progettazione dell'applicazione.
  - Inizio sviluppo.
  //Obiettivi
- *Settimana 2 | 23/06 - 27/06 | 40 ore*:
  - Approfondimento su "Regressione lineare".
  - Sviluppo degli oggetti principali del primo livello, implementando gli elementi della "Regressione lineare".

#set page(footer-descent: -50%, footer: [#align(top, [#line(length: 100%)
*PoC*: descrive una dimostrazione pratica che ha lo scopo di verificare la fattibilità o il potenziale di un'idea, concetto o soluzione. \
*MVP*: descrive la versione minima di un prodotto che include solo le funzionalità essenziali per essere utilizzato dagli utenti.\
*ticket*: segnalazione o richiesta registrata in un sistema di tracciamento che descrive un'attività da svolgere.\ \
#align(center, context([#counter(page).display("1.")]))])])

- *Settimana 3 | 30/06 - 04/07 | 40 ore*:
  - Approfondimento sul tema "Alberi di decisione".
  - Sviluppo degli oggetti principali del secondo livello.
- *Settimana 4 | 07/07 - 11/07 | 40 ore*:
  - Approfondimento sull'argomento "Causalità".
  - Sviluppo degli oggetti principali del terzo livello.
  - Compilazione del #gl("poc") .
- *Settimana 5 | 14/07 - 18/07 | 40 ore*:
  - Sviluppo del primo livello, sul tema "Regressione Lineare", con gli oggetti creati nella seconda settimana.
- *Settimana 6 | 21/07 - 25/07 | 40 ore*:
  - Sviluppo del secondo livello, sul tema "Alberi di decisione", implementando gli oggetti creati nella terza settimana.
- *Settimana 7 | 28/07 - 01/08 | 40 ore*:
  - Sviluppo del terzo livello, sul tema "Causalità", implementando gli oggetti creati nella quarta settimana.
- *Settimana 8 | 04/08 - 08/08 | 40 ore*: 
  - Stesura dei _test_.
  - Compilazione dell'#gl("mvp").

=== Organizzazione del lavoro
//_Qui descrivo come mi sono organizzato per svolgere il lavoro, con le attività svolte, le regole che ho seguito e gli strumenti usati_
Ogni giorno, sceglievo le attività da svolgere in base allo stato di avanzamento del progetto, tenendo conto delle priorità e delle scadenze. \
Utilizzavo strumenti digitali per la gestione delle attività, come sistemi di versionamento o uso di #gl("ticket"), per aiutarmi a tenere traccia dei compiti svolti.\
Ogni fase del lavoro, dalla raccolta dei requisiti allo sviluppo e alla verifica, è documentata e tracciata per garantire trasparenza ed efficienza.\
Questi processi interni mi hanno permesso di acquisire una maggiore consapevolezza sull'importanza dell'organizzazione e della comunicazione all'interno di un contesto lavorativo strutturato.\
Durante lo sviluppo, sono state imposte le seguenti regole per garantire corretta organizzazione. Le regole sono suddivise in base all'attività:

#set page(footer-descent: -40%, footer: [#align(top, [#line(length: 100%)
*GDScript*: linguaggio di programmazione specifico per il motore di gioco Godot, progettato per essere semplice e intuitivo.\
*PascalCase*: pratica di scrivere parole composte o frasi unendo tutte le parole tra loro, ma lasciando le loro iniziali maiuscole.\
*snake_case*: pratica di scrivere parole composte separando le parole tramite trattino basso, con tutte le lettere minuscole.\ \
#align(center, context([#counter(page).display("1.")]))])])

- *Documentazione*:\
Il processo di fornitura deve essere documentato in modo dettagliato, in modo da garantire la tracciabilità delle attività svolte e delle decisioni prese.\
I documenti che il progetto presenta sono:\
#show figure: set block(breakable: true)
#figure(caption: [Documenti], table(
  columns: (auto, auto),
  inset: 8pt,
  align: center + horizon,
  table.header([*Nome*], [*Descrizione*]),
  [*Analisi dei requisiti*], [Definisce tutti gli i casi d'uso e i requisiti funzionali del progetto. Questi sono stati raccolti in collaborazione con il tutor aziendale e sono stati utilizzati come base per la progettazione e lo sviluppo del _software_],
  [*Piano di progetto*],[Definisce le attività da svolgere e i tempi previsti per lo sviluppo del _software_, viene descritto in dettaglio ogni periodo di sviluppo, con una retrospettiva delle attività svolte e una pianificazione delle attività future],
  [*Norme di progetto*],[Definisce le regole e le convenzioni da seguire durante lo sviluppo del _software_, come la nomenclatura dei _file_, la struttura del codice e le pratiche di programmazione da seguire],
  [*Piano di qualifica*],[Definisce le metriche che vengono usate per garantire la qualità del prodotto _software_. Vengono inoltre scritte le modalità di _test_ e verifica del _software_, in modo da garantire che il prodotto soddisfi i requisiti stabiliti],[*Specifica tecnica*],[Descrive in dettaglio l'architettura del sistema, i componenti _software_ e le loro interazioni],
  [*Manuale utente*],[Fornisce istruzioni dettagliate su come utilizzare il _software_ all'utente e garantirne il corretto funzionamento],))

#v(0.5em)
- *Codifica*:\
Tutti i file script del gioco sono salvati come file _.gd_, e sono scritti con il linguaggio di programmazione #gl("gdscript"). I nomi delle classi sono salvate con una nomenclatura #gl("pascalCase"), mentre i nomi dei files e delle variabili usano #gl("snake_case").
#set page(footer-descent: -160%, footer: [#align(top, [#line(length: 100%)
*.glb*: formato standard di un modello tridimensionale che legge il modello 3D come un file binario.\
*.png*: formato di immagine raster senza perdita di qualità, ampiamente utilizzato per la grafica web e il design digitale.\
*IK - Inverse Kinematics*: descrive il processo di calcolo della posizione delle articolazioni di un modello 3D in base alla posizione finale di una parte del corpo.\
*NLA - Nonlinear Animations*: sistema di gestione delle animazioni in _Blender_ che consente di combinare e sovrapporre diverse animazioni in modo non lineare.\
*rig*: struttura scheletrica applicata a un modello 3D.\
*materiale*: insieme di proprietà che definiscono l'aspetto visivo di un oggetto 3D, come colore, riflessione, trasparenza.\
*texture*: immagine  applicata a un modello 3D per fornire dettagli visivi, come colori e _pattern_.\ \
#align(center, context([#counter(page).display("1.")]))])])
Per maggiori dettagli sulla nomenclatura, si seguono le convenzioni della documentazione ufficiale:\
#link("https://docs.godotengine.org/it/4.x/tutorials/scripting/gdscript/gdscript_styleguide.html")\

#v(0.5em)
- *Modellazione*:\
Tutti i modelli sono esportati nel formato #gl(".glb") . Il #gl("materiale") esportato insieme al modello 3D viene esportato senza immagini, come un _placeholder_, dato che verrà rimpiazzato dal materiale presente nei _file_ del gioco.\ 
Nel caso il modello 3D presenti animazioni, queste vengono esportate insieme al modello.\

#v(0.5em)
- *Animazione*:\
Le animazioni sono incluse nel modello durante l'esportazione. Per semplificare l'attività, viene usato un #gl("rig") che dispone di #gl("ik"). Le animazioni sono già separate prima dell'esportazione e possono essere trovate nella sezione #gl("nla") e selezionate individualmente premendo la linea con il mouse e modificarle usando la scorciatoia _Shift+TAB_.\

#v(0.5em)
- *Creazione e modifica di _texture_*:\
Le #gl("texture") sono salvate come semplici immagini di tipo #gl(".png").\
Entrambe le dimensioni della texture (larghezza e altezza)  devono essere una potenza di 2.\ Risoluzioni esempio: 
  - 256x256; 
  - 512x512;
  - 1024x1024 (1K);
  - 2048x2048 (2K).
Di norma, 1024 pixels corrispondono a 1 metro.

#v(0.5em)
#set page(footer-descent: -25%, footer: [#align(top, [#line(length: 100%)
*GLSL ES - OpenGL Shading Language for Embedded Systems*: linguaggio di shading utilizzato per scrivere _shader_.\
*Python*: linguaggio di programmazione di alto livello, noto per la sua sintassi semplice e leggibile.\ \
#align(center, context([#counter(page).display("1.")]))])])

- *Verifica e validazione*:\
Il processo di verifica ha lo scopo di garantire che il _software_ sviluppato soddisfi i requisiti stabiliti e che sia conforme agli _standard_ di qualità richiesti.\
Vi sono due tipologie di verifica, ognuna è focalizzata sulla verifica di vari aspetti dell'applicazione:\
#v(0.5em)
#h(2em)*analisi statica*: l'analisi statica comporta il controllo del codice prima della sua esecuzione. Questo tipo di verifica non viene applicata solo al codice, ma anche ai documenti del progetto. \
Questo metodo viene applicato nei seguenti casi:\
#h(2em)- individuazione di bug nel codice;\
#h(2em)- individuazione di errori di battitura nei documenti;\
#h(2em)- verifica della coerenza e completezza della documentazione prodotta;\
#v(0.5em)
#h(2em)*analisi dinamica*: l'analisi dinamica viene eseguita all'esecuzione del _software_. Viene usata per controllare se ci sono errori durante l'esecuzione dell'applicazione e dei suoi componenti.\ Questo tipo di verifica permette di individuare malfunzionamenti, errori logici o comportamenti inattesi che possono emergere solo durante l'esecuzione reale del _software_. Le principali attività di analisi dinamica includono:\
#h(2em)- esecuzione di _test_ di unità e di integrazione per verificare il corretto funzionamento delle singole componenti e della loro interazione;\
#h(2em)- monitoraggio delle prestazioni e dell'utilizzo delle risorse durante l'esecuzione;\
#h(2em)- individuazione e correzione di _bug_ che si manifestano solo in fase di runtime.\

=== Tecnologie usate
//_Qui descrivo le principali tecnologie che ho usato_
#figure(caption: [Linguaggi di programmazione utilizzati], table(
  columns: (0.4fr, 1fr, 0.5fr),
  inset: 8pt,
  align: center + horizon,
  table.header([*Nome*], [*Descrizione*], [*Versione*]),
  //fill: (x, y) => if (y == 0) { luma(230) },
  //table.cell([*Codice*], colspan: 3),
  [GDScript],[Linguaggio di programmazione di alto livello, con sintassi simile a #gl("python"), viene integrato con il motore di gioco _Godot_],[(Legata a _Godot_)],
  [GDShader],[Linguaggio simile a #gl("glsl_es") 3.0, usato per la creazione di materiali e _shader_ più complessi],[(Legata a _Godot_)],
  [Typst],[Linguaggio utilizzato per la stesura dei documenti],[0.13.1],
))

#set page(footer-descent: -80%, footer: [#align(top, [#line(length: 100%)
*CI - Continuos Integration*: processo di integrazione continua delle modifiche del codice in un _repository_ condiviso, garantendo che il codice sia sempre in uno stato funzionante e testato.\
*CD - Continuos Delivery*: processo di rilascio continuo delle modifiche del codice in produzione, garantendo che il _software_ sia sempre in uno stato utilizzabile.\
*hosting*: descrive il servizio che consente di archiviare e rendere accessibili _online_ siti _web_, applicazioni o progetti _software_.\
*push*: descrive l'azione di inviare le modifiche del codice a un _repository_ remoto.\ \
#align(center, context([#counter(page).display("1.")]))])])

#figure(caption: [_Softwares_ utilizzati], table(
  columns: (0.4fr, 1fr, 0.5fr),
  inset: 8pt,
  align: center + horizon,
  table.header([*Nome*], [*Descrizione*], [*Versione*]),
  //table.cell([*_Softwares_*], colspan: 3),
  [Godot],[Il motore di gioco _open source_ per lo sviluppo del videogioco],[4.5-beta3-mono],
  [Blender],[_Software_ di modellazione ed animazione 3D usato per creare i modelli 3D ed animazioni nel gioco],[4.4.3],))
#figure(caption: [Strumenti e servizi utilizzati], table(
  columns: (0.4fr, 1fr, 0.5fr),
  inset: 8pt,
  align: center + horizon,
  table.header([*Nome*], [*Descrizione*], [*Versione*]),
  //table.cell([*Strumenti e servizi*], colspan: 3),
  [Git],[Servizio per il controllo della versione],[2.50.1],
  [GitHub],[Servizio di #gl("hosting") per i progetti _software_, utilizzato per la gestione del codice sorgente],[-],
  [GitHub\ Actions],[Servizio di integrazione continua e distribuzione continua (#gl("ci")/#gl("cd")), utilizzato per compilare i documenti ad ogni #gl("push")],[-],
  [Notion],[Applicazione per la gestione dei progetti e la collaborazione], [2.53],))

#set page(footer-descent: 0%, footer: [#align(center + horizon, context([#counter(page).display("1.")]))])

#figure(caption: [Tipi di _file_ utilizzati], table(
  columns: (0.4fr, 1fr, 0.5fr),
  inset: 8pt,
  align: center + horizon,
  table.header([*Nome*], [*Descrizione*], [*Versione*]),
  //table.cell([*Tipi di _file_*], colspan: 3),
  [\u{002A}.csv],["_Comma separated values_", _file_ utilizzato per memorizzare le frasi nelle lingue diverse supportate dal gioco],[-],
  [\u{002A}.ini],[Tipo di _file_ _plain-text_ utilizzato per salvare i dati del gioco],[-],
  [\u{002A}.glb],["_GLTF Binary_", _file_ utilizzato per memorizzare i modelli 3D e le loro animazioni in formato binario, in modo da risparmiare spazio e migliorare le prestazioni],[2.0.1]
))
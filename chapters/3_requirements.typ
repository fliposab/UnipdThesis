#import "data/requirements_list.typ": *
#import "@preview/codly:1.3.0": *
#import "@preview/codly-languages:0.1.8": *
#import "../config/thesis-config.typ": glpl, gl

#pagebreak(to:"even")

#set page(footer-descent: 0%, footer: [#align(top, [#line(length: 100%)
*diagrammi di _Gannt_*: strumento di gestione dei progetti che rappresenta graficamente le attività pianificate nel tempo, mostrando la durata.\ \
#align(center, context([#counter(page).display("1.")]))])])

= Il progetto<cap:analisi-requisiti>

#text(style: "italic", [
    In questo capitolo approfondisco tutti i processi del progetto: sviluppo, _test_ e validazione. In pratica descrivo cosa ho fatto di preciso, e come l'ho svolto.
])
#v(1em)

#show figure: set block(breakable: true)
== Analisi dei rischi
=== Rischi organizzativi
#figure(
  caption: [Errata pianificazione dei tempi],
  table(
    columns: (auto, auto),
    inset: 8pt,
    align: center + horizon,
    table.header(table.cell(colspan: 2, [*Errata pianificazione dei tempi*])),
    [*Descrizione*],[Un'errata pianificazione dei tempi può portare a ritardi nello sviluppo del progetto, con conseguente rischio di non rispettare le scadenze stabilite.],
    [*Probabilità*],[Alta],
    [*Pericolosità*],[Alta],
    [*Rilevamento*],[Monitoraggio delle attività pianificate e dei tempi di esecuzione ogni settimana],
    [*Piano di contingenza*],[Controllare le attività svolte tramite uno strumento di gestione del progetto (ad esempio #gl("diagrammi_gannt") e uso di _checklist_ su _Notion_) e rivedere la pianificazione delle attività in caso di ritardi.]
))

#set page(footer: [#align(center + horizon, context([#counter(page).display("1.")]))])
#figure(
  caption: [Impegni personali o universitari],
  table(
    columns: (auto, auto),
    inset: 8pt,
    align: center + horizon,
    table.header(table.cell(colspan: 2, [*Impegni personali o universitari*])),
    [*Descrizione*],[Impegni personali o universitari possono influenzare  il tempo a disposizione per lo sviluppo del progetto, causando ritardi o interruzioni nello sviluppo.],
    [*Probabilità*],[Alta],
    [*Pericolosità*],[Media],
    [*Rilevamento*],[Monitoraggio delle attività pianificate e dei tempi di esecuzione ogni settimana],
    [*Piano di contingenza*],[Pianificare le attività in modo da tenere conto degli impegni personali o universitari, e rivedere la pianificazione delle attività in caso di imprevisti.]
))
=== Rischi tecnici
#figure(
  caption: [Mancanza di competenze tecniche],
  table(
    columns: (auto, auto),
    inset: 8pt,
    align: center + horizon,
    table.header(table.cell(colspan: 2, [*Mancanza di competenze tecniche*])),
    [*Descrizione*],[La mancanza di competenze tecniche può influenzare la qualità del prodotto software, causando ritardi nello sviluppo e problemi di integrazione],
    [*Probabilità*],[Media],
    [*Pericolosità*],[Alta],
    [*Rilevamento*],[Monitoraggio delle attività pianificate e dei tempi di esecuzione ogni settimana],
    [*Piano di contingenza*],[Formazione sulle tecnologie utilizzate e revisione della progettazione in caso di problemi tecnici]
))

#figure(
  caption: [Tecnologie non adeguate],
  table(
    columns: (auto, auto),
    inset: 8pt,
    align: center + horizon,
    table.header(table.cell(colspan: 2, [*Tecnologie non adeguate*])),
    [*Descrizione*],[L'uso di tecnologie non adeguate può influenzare la qualità del prodotto _software_, causando problemi di prestazioni basse o _bug_.],
    [*Probabilità*],[Alta],
    [*Pericolosità*],[Alta],
    [*Rilevamento*],[Monitoraggio delle attività svolte e dei tempi di esecuzione ogni settimana],
    [*Piano di contingenza*],[Valutazione delle tecnologie utilizzate e revisione della progettazione in caso di problemi tecnici.\
    In caso di problemi con le tecnologie utilizzate, si valuterà la possibilità di modificare la progettazione del gioco per adattarsi alle tecnologie disponibili]
))

=== Rischi di analisi e progettazione

#figure(
  caption: [Cambio dei requisiti],
  table(
    columns: (auto, auto),
    inset: 8pt,
    align: center + horizon,
    table.header(table.cell(colspan: 2, [*Cambio dei requisiti*])),
    [*Descrizione*],[Un cambiamento dei requisiti può influenzare la progettazione del sistema, causando ritardi nello sviluppo],
    [*Probabilità*],[Bassa],
    [*Pericolosità*],[Alta],
    [*Rilevamento*],[Comunicazione frequente con il relatore del progetto per garantire che i requisiti siano chiari e stabili],
    [*Piano di contingenza*],[Rivedere la progettazione del sistema in caso di cambiamenti dei requisiti, e valutare l'impatto sui tempi di sviluppo.
  In caso di cambiamenti significativi dei requisiti, si valuterà la possibilità di modificare la pianificazione delle attività per tenere conto dei nuovi requisiti]
))

#figure(
  caption: [Errore nella progettazione dell'architettura],
  table(
    columns: (auto, auto),
    inset: 8pt,
    align: center + horizon,
    table.header(table.cell(colspan: 2, [*Errore nella progettazione dell'architettura*])),
    [*Descrizione*],[Un errore nella progettazione dell'architettura può influenzare la qualità del prodotto _software_, causando ritardi nello sviluppo e problemi di integrazione],
    [*Probabilità*],[Media],
    [*Pericolosità*],[Alta],
    [*Rilevamento*],[Monitoraggio delle attività svolte e dei tempi di esecuzione ogni settimana, valutazione della progettazione dell'architettura],
    [*Piano di contingenza*],[Rivedere la progettazione dell'architettura in caso di problemi, e valutare l'impatto sui tempi di sviluppo]
))

== Analisi dei requisiti
//_Qui descrivo gli attori presenti e tutti i casi d'uso dell'applicazione_
=== Attori
Il gioco prevede un solo attore, il *giocatore*, cioè l'utente che interagisce con il videogioco, controllando il personaggio e prendendo decisioni durante il gioco.
#figure(image("../images/giocatore.png", width: 9%), caption: "Attore principale")
Nei seguenti casi d'uso, l'attore principale sarà sempre il giocatore.
#set heading(supplement: none)
#let ap = [*Attori principali:*]
#let desc = [*Descrizione:*]
#let prec = [*Precondizioni:*]
#let posc = [*Postcondizioni:*]
#let scep = [*Scenario principale:*]
#let incl = [*Inclusioni:*]
#let ext = [*Estensioni:*]
#let gnr = [*Generalizzazioni:*]

#set page(footer-descent: 0%, footer: [#align(top, [#line(length: 100%)
*_joypad_*:  dispositivo di _input_ dotato di pulsanti, levette e altri controlli per interagire con il gioco.\ \
#align(center, context([#counter(page).display("1.")]))])])

=== Casi d'uso
#set heading(numbering: none)
==== UC1 - Movimento
#figure(image("../images/usecase/uc-movimento.png", width: 80%), caption: [Diagramma _UML_ _use case_ sul movimento])
#desc il giocatore può muovere il personaggio in avanti, indietro, a sinistra e a destra utilizzando i tasti direzionali della tastiera o lo _stick_ analogico sinistro del del #gl("joypad").\
#prec il giocatore deve essere in un livello del gioco.\
#posc il personaggio si muove nella direzione desiderata e interagisce con l'ambiente circostante.\
#incl - Rotazione telecamera automatica.\
#gnr - Movimento con oggetto.\

==== UC1.1 - Movimento con oggetto
#desc il giocatore può muovere il personaggio in avanti, indietro, a sinistra e a destra, mentre sta portando un oggetto, utilizzando i tasti direzionali della tastiera o lo _stick_ analogico sinistro del _joypad_.\
#prec il giocatore deve essere in un livello del gioco e ha un oggetto con sé.\
#posc il personaggio si muove nella direzione desiderata e sposta con sé l'oggetto.\

==== UC2 - Salto
#figure(image("../images/usecase/uc-salto.png", width: 50%), caption: [Diagramma _UML_ sul salto])

#set page(footer: [#align(center + horizon, context([#counter(page).display("1.")]))])

#desc il giocatore può far saltare il personaggio utilizzando un tasto specifico.\
#prec il giocatore deve essere in un livello del gioco e deve essere libero di muoversi.\
#posc il personaggio esegue il salto.\
#gnr - Salto con oggetto.\
/*
// UC3 - Rotazione telecamera
==== UC3 - Rotazione telecamera
#figure(image("../images/usecase/uc-rotazione_telecamera.png", width: 80%), caption: [Diagramma _UML_ sulla rotazione della telecamera])
#desc il giocatore può ruotare la telecamera attorno al personaggio utilizzando i comandi del mouse o del _joypad_.\
#prec il giocatore deve essere in un livello del gioco.\
#posc la telecamera si muove attorno al personaggio, cambiando l'angolo di visualizzazione.\
#gnr - Rotazione telecamera manuale;\
#h(8.82em) \- Rotazione telecamera automatica.

==== UC3.1 - Rotazione telecamera manuale
#desc il giocatore può ruotare la telecamera attorno al personaggio utilizzando i comandi della tastiera o del _joypad_.\
#prec il giocatore deve essere in un livello del gioco.\
#posc la telecamera si muove attorno al personaggio, cambiando l'angolo di visualizzazione.
*/
==== UC3.2 - Rotazione telecamera automatica
#desc la telecamera può modificare in autonomia la sua posizione e rotazione per inquadrare ciò che c'è davanti al personaggio quando questo si sta muovendo.\
#prec il giocatore deve essere in un livello del gioco.\
#posc la telecamera si muove attorno al personaggio, cambiando l'angolo di visualizzazione.
/*
// UC4 - Caduta
#pagebreak()
==== UC4 - Caduta
#figure(image("../images/usecase/uc-caduta.png", width: 60%), caption: [Diagramma _UML_ sulla caduta])
#desc il giocatore cade dal livello e viene riportato in una zona dove si trovava prima.\
#prec il giocatore deve essere in un livello del gioco e deve entrare in un'_area di caduta_.\
#posc: il giocatore torna dove si trovava, prima di cadere.\
#incl - Riposizionamento.

// UC5 - Riposizionamento
==== UC5 - Riposizionamento
#desc il giocatore viene posizionato in una certa zona del livello.\
#prec il giocatore deve essere in un livello del gioco.\
#posc il giocatore viene riposizionato.\
*/
// UC6 - Raccolta collezionabile
/*
==== UC6 - Raccolta _collezionabile_
#figure(image("../images/usecase/uc-raccolta_collezionabile.png", width: 50%), caption: [Diagramma _UML_ sulla raccolta collezionabile])
#desc il giocatore può raccogliere oggetti _collezionabili_ presenti nel livello quando si avvicina.\
#prec il giocatore deve essere in un livello del gioco e deve esserci un oggetto collezionabile nelle vicinanze.\
#posc il numero di collezionabili sale di un certo valore.\
*/
// UC7 - Interazione con _entità_
/*
==== UC7 - Interazione con _entità_
#figure(image("../images/usecase/uc-interazione.png", width: 60%), caption: [Diagramma _UML_ sull'interazione con un'_entità_])
#desc il giocatore si avvicina a un'_entità_ e vede un messaggio.\
#prec il giocatore deve essere vicino ad un'_entità_.\
#posc l'_entità_ mostra un messaggio.\
#gnr - Interazione con un'_entità_ automatica.\
#h(8.82em)\- Interazione con un'_entità_ manuale.
*/
==== UC7.1 - Interazione con _entità_ automatica
#figure(image("../images/usecase/uc-interazione_automatica.png", width: 60%), caption: [Diagramma _UML_ sull'interazione automatica con un'_entità_])
#desc il giocatore si avvicina ad un'_entità_ e l'interazione avviene automaticamente.\
#prec il giocatore deve essere vicino ad un'_entità_.\
#posc il giocatore interagisce con l'_entità_.\
#gnr - Raccolta collezionabile.\
#h(8.82em) \- Visualizzazione messaggio.
/*
==== UC7.1.1 - Visualizzazione messaggio
#desc il giocatore può visualizzare un messaggio automatico di un'_entità_ del gioco.\
#prec il giocatore deve essere vicino all'_entità_.\
#posc il giocatore visualizza il messaggio. \
*/
==== UC7.2 - Interazione con _entità_ manuale
#figure(image("../images/usecase/uc-interazione_manuale.png", width: 90%), caption: [Diagramma _UML_ sull'interazione manuale con un'_entità_])
#desc il giocatore si avvicina a un'_entità_ e vede l'_input_ che deve premere per interagire.\
#prec il giocatore deve essere vicino all'_entità_.\
#posc il giocatore ha premuto l'_input_ per interagire.\
#incl Visualizzazione messaggio.\
#gnr - Interazione con personaggio non giocabile.\
#h(8.82em) - Prendere un oggetto.\
#h(8.82em) - Interazione con un cartello.\
#h(8.82em) - Interazione con zona di transizione.\
#h(8.82em) - Interazione con macchina _LR_.\
#h(8.82em) - Accensione unità esterna condizionatore.\

// UC8 - Interazione con personaggio non giocabile
==== UC8 - Interazione con personaggio non giocabile
#figure(image("../images/usecase/uc-dialogo.png", width: 70%), caption: [Diagramma _UML_ sull'interazione con un personaggio non giocabile])
#desc il giocatore si avvicina a un personaggio non giocabile e vede l'_input_ che deve premere per interagire.\
#prec il giocatore deve essere vicino a un personaggio non giocabile.\
#posc il giocatore ha premuto l'_input_ per interagire.\
#incl - Visualizzazione dialogo.\
/*
==== UC8.1 - Visualizzazione dialogo
#desc il giocatore visualizza il dialogo mostrato dall'_entità_.\
#prec il giocatore ha premuto l'_input_ per interagire con l'_entità_.\
#posc l'_entità_ mostra il dialogo, mentre il giocatore non può più muoversi.\

==== UC8.2 - Scelta opzione dialogo
#desc il giocatore deve scegliere un'opzione per andare avanti nel dialogo.\
#prec il giocatore deve essere in un dialogo e visualizza le opzioni tra cui scegliere.\
#posc il giocatore ha scelto l'opzione ed il dialogo finisce.\
#incl - Avanti nel dialogo.\

==== UC8.3 - Avanti nel dialogo
#desc il giocatore vuole continuare il dialogo.\
#prec il giocatore ha premuto l'_input_ per andare avanti nel dialogo.\
#posc viene mostrato il messaggio successivo del dialogo.\
#ext - Fine interazione.\

==== UC8.4 - Fine interazione
//#figure(image("../images/usecase/uc-fine_interazione.png", width: 50%), caption: "Fine interazione")
#desc il giocatore vuole terminare l'interazione.\
#prec il giocatore sta interagendo con un'_entità_.\
#posc il giocatore preme l'_input_, smette di interagire con l'_entità_ e può muoversi di nuovo.
*/
// UC9 - Prendere un oggetto
==== UC9 - Prendere un oggetto
#figure(image("../images/usecase/uc-prendere_oggetto.png", width: 40%), caption: [Diagramma _UML_ sul prendere un oggetto])
#desc il giocatore può prendere un oggetto e poi muoversi con esso.\
#prec il giocatore deve essere in un livello del gioco ,deve esserci un oggetto che può raccogliere davanti ad esso e non deve averne già uno.\
#posc il giocatore interagisce con l'oggetto.\

// UC10 - Lasciare un oggetto
==== UC10 - Lasciare un oggetto
#figure(image("../images/usecase/uc-lasciare_oggetto.png", width: 60%), caption: [Diagramma _UML_ sul lasciare un oggetto])
#desc il giocatore può lasciare un oggetto.\
#prec il giocatore deve essere in un livello del gioco e sta portando un oggetto.\
#posc il giocatore lascia l'oggetto e questo rimane nella posizione dove viene lasciato.\
#ext - Inserimento oggetto nello spazio dedicato.

// UC11 - Interazione con un cartello
==== UC11 - Interazione con un cartello
#figure(image("../images/usecase/uc-interazione_cartello.png", width: 90%), caption: [Diagramma _UML_ sull'interazione con un cartello])
#desc il giocatore si avvicina a un cartello e vede l'_input_ che deve premere per interagire.\
#prec il giocatore deve essere vicino a un cartello.\
#posc il giocatore ha premuto il tasto.\
#incl - Visualizzazione messaggio cartello.
/*
==== UC11.1 - Visualizzazione messaggio cartello
#desc il giocatore visualizza il messaggio del cartello.\
#prec il giocatore deve aver interagito con un cartello.\
#posc il giocatore visualizza il messaggio del cartello.\
#gnr - Visualizzazione classificazioni oggetti scoperti.\
#h(8.85em) \- Visualizzazione grafico.

==== UC11.2 - Visualizzazione classificazioni oggetti scoperti
#desc il giocatore vuole visualizzare tutte le classificazioni degli oggetti che è riuscito ad indovinare nel livello.\
#prec il giocatore è dentro il livello Albero di decisione.\
#posc il giocatore visualizza le classificazioni degli oggetti scoperti.\
#ext - Fine interazione.

==== UC11.3 - Visualizzazione grafico
#desc il giocatore vuole visualizzare un grafico presente in un cartello.\
#prec il giocatore deve avere interagito con un cartello.\
#posc il giocatore visualizza il grafico.\
//#ext - Fine interazione.

==== UC11.4 - Aggiornamento dato di un cartello
#desc un dato di un cartello può essere modificato in base a determinate azioni del giocatore all'interno del livello.\
#prec il giocatore ed il cartello devono essere nello stesso livello.\
#posc il dato del cartello viene aggiornato.\
*/
// UC12 - Interazione con zona di transizione
/*
==== UC12 - Interazione con zona di transizione
#figure(image("../images/usecase/uc-transizione.png", width: 80%), caption: [Diagramma _UML_ sull'interazione con una zona di transizione])
#desc il giocatore si avvicina a una zona di transizione per cambiare livello. \
#prec il giocatore deve essere in un livello del gioco.\
#posc il giocatore ha premuto il tasto.\

==== UC12.1 - Transizione scena
#desc il giocatore cambia livello.\
#prec il giocatore deve aver premuto il tasto per interagire in un'area di transizione.\
#posc il giocatore è nel nuovo livello.\
#incl - Salvataggio.\

==== UC18 - Salvataggio
#desc il gioco salva in automatico in momenti specifici.\
#prec il giocatore deve essere in un livello del gioco.\
#posc la partita viene salvata e il giocatore può riprendere da quel punto in un secondo momento.\
*/
// UC13 - Interazione con macchina _LR_
==== UC13 - Interazione con macchina _LR_
#figure(image("../images/usecase/uc-macchina_lr.png", width: 60%), caption: [Diagramma _UML_ sull'interazione con una macchina _LR_])
#desc il giocatore vuole interagire con la macchina per posizionare dei punti sul grafico _LR_ (chiamata anche _Cannone LR_).\
#prec il giocatore deve trovarsi in un'area per interagire con la macchina.\
#posc il giocatore può usare la macchina.

// UC14 - Inserimento punto nel grafico _LR_
==== UC14 - Inserimento punto nel grafico _LR_
#desc il giocatore vuole posizionare un punto sul grafico _LR_.\
#prec il giocatore deve essere in utilizzo di una macchina _LR_.\
#posc il punto viene posizionato sul grafico.\

// UC15 - Reset punti aggiunti nel grafico _LR_
/*
==== UC15 - Reset punti aggiunti nel grafico _LR_
#desc il giocatore toglie i punti da lui aggiunti nel grafico premendo il tasto _Reset_.\
#prec il giocatore deve essere in utilizzo di una macchina _LR_.\
#posc i punti aggiunti dal giocatore vengono tolti.
*/
==== UC16 - Posizionamento sopra un nodo dell'Albero di decisione
#figure(image("../images/usecase/uc-nodo_albero.png", width: 70%), caption: [Diagramma _UML_ sulle scelte da prendere nell'Albero di decisione])
#desc il giocatore si posiziona sopra un nodo dell'Albero di decisione.\
#prec il giocatore deve essere in un livello del gioco e deve essere presente un Albero di decisione.\
#posc il giocatore è posizionato sopra un nodo dell'Albero di decisione.\
#ext - Visualizzazione delle scelte sul nodo.\
/*
==== UC16.1 - Visualizzazione scelte sul nodo
#desc il giocatore vuole proseguire nell'Albero di decisione.\
#prec il giocatore deve essere sopra un nodo dell'Albero di decisione.\
#posc il giocatore sceglie la direzione in base alle scelte disponibili.\
*/
// UC17 - Inserimento dell’oggetto nello spazio dedicato
==== UC17 - Inserimento dell’oggetto nello spazio dedicato
#figure(image("../images/usecase/uc-inserimento_spazio.png", width: 90%), caption: [Diagramma _UML_ sull'inserimento dell’oggetto nello spazio dedicato])
#desc il giocatore posiziona l'oggetto che sta portando in uno spazio apposito.\
#prec il giocatore deve portare un oggetto ed essere sopra un nodo finale dell'_albero_.\
#posc se l'oggetto è giusto, il nuovo oggetto viene mostrato nella visualizzazione delle classificazioni degli oggetti scoperti.\
#gnr - Inserimento nello spazio corretto.\
#h(8.85em) - Inserimento nello spazio sbagliato.
/*
==== UC17.1 - Inserimento nello spazio corretto
#desc il giocatore posiziona l'oggetto nello spazio corretto.\
#prec il giocatore deve portare un oggetto.\
#posc l'oggetto viene mostrato nella visualizzazione delle classificazioni degli oggetti scoperti.\
#incl - Salvataggio.\

==== UC17.2 - Inserimento nello spazio sbagliato
#desc il giocatore posiziona l'oggetto nello spazio sbagliato.\
#prec il giocatore deve portare un oggetto.\
#posc l'oggetto non viene mostrato nella visualizzazione delle classificazioni degli oggetti scoperti.\
*//*
==== UC18 - Salvataggio
#desc il gioco salva in automatico in momenti specifici.\
#prec il giocatore deve essere in un livello del gioco.\
#posc la partita viene salvata e il giocatore può riprendere da quel punto in un secondo momento.\
*//*
// UC19 - Pausa
==== UC19 - Pausa
#figure(image("../images/usecase/uc-pausa.png", width: 40%), caption: [Diagramma _UML_ sull'apertura menu di pausa])
#desc il giocatore può mettere in pausa il gioco in qualsiasi momento per accedere al menu di pausa.\
#prec il giocatore deve essere in un livello del gioco.\
#posc il gioco si interrompe e viene visualizzato il menu di pausa.\

// UC20 - Riprendi
==== UC20 -  Riprendi
#figure(image("../images/usecase/uc-menu_pausa.png", width: 80%), caption: [Diagramma _UML_ sul menu di pausa])
#desc il giocatore può riprendere il gioco dal menu di pausa.\
#prec il gioco deve essere in pausa e il menu di pausa deve essere visualizzato.\
#posc il gioco riprende dalla posizione in cui era stato interrotto.\

// UC21 - Opzioni
==== UC21 - Opzioni
#desc il giocatore può accedere alle opzioni del gioco dal menu di pausa per modificare le impostazioni come volume, risoluzione, modalità finestra o schermo intero e lingua.\
#prec il gioco deve essere in pausa e il menu di pausa deve essere visualizzato.\
#posc il giocatore può modificare le impostazioni del gioco.\

// UC22 - Torna alla _hub_
==== UC22 - Torna alla _hub_
#desc il giocatore può ritornare al livello "_hub_" da qualsiasi altro livello.\
#prec il gioco deve essere in pausa, il menu di pausa deve essere visualizzato ed il giocatore non deve essere già nel livello _hub_.\
#posc il giocatore torna al livello _hub_.\

// UC23 - Torna al menu principale
==== UC23 - Torna al menu principale
#desc il giocatore può tornare al menu principale dal menu di pausa.\
#prec il gioco deve essere in pausa e il menu di pausa deve essere visualizzato.\
#posc il gioco torna al menu principale e il giocatore può scegliere di avviare una nuova partita o caricare una partita salvata.\

// UC24 - Chiudi il gioco
==== UC24 - Chiudi il gioco
#desc il giocatore può chiudere il gioco premendo l'apposito tasto.\
#prec il gioco deve essere in pausa o nel menu principale.\
#posc il gioco viene chiuso.
*/
/*
// UC25 - Carica partita
==== UC25 - Carica partita
//#figure(image("../images/usecase/uc-menu_principale.png", width: 70%), caption: "Menu principale")
#desc il giocatore può caricare una partita salvata dal menu principale.\
#prec il gioco deve essere avviato con il menu principale visualizzato e deve presentare dei dati di salvataggio esistenti.\
#posc il gioco carica la partita con i valori salvati ed il giocatore viene portato nel livello _hub_.\

// UC26 - Nuova partita
==== UC26 - Nuova partita
#desc il giocatore può avviare il gioco dal menu principale.\
#prec il gioco deve essere avviato con il menu principale visualizzato e non deve presentare dei dati di salvataggio esistenti.\
#posc il gioco viene resettato ed il giocatore viene portato al livello base.\
*/
/**
// UC27 - Modifica modalità finestra
==== UC27 - Modifica modalità finestra
#figure(image("../images/usecase/uc-menu_opzioni.png", width: 100%), caption: [Diagramma _UML_ sul menu delle opzioni])
#desc il giocatore può modificare la modalità di visualizzazione del gioco (finestra o schermo intero) dal menu delle opzioni.\
#prec il gioco deve essere in pausa e il menu delle opzioni deve essere visualizzato.\
#posc la modalità di visualizzazione del gioco viene modificata in base alle preferenze del giocatore.\

// UC28 - Modifica risoluzione finestra
==== UC28 - Modifica risoluzione finestra
#desc il giocatore può modificare la risoluzione del gioco dal menu delle opzioni.\
#prec il gioco deve essere in pausa e il menu delle opzioni deve essere visualizzato.\
#posc la risoluzione del gioco viene modificata in base alle preferenze del giocatore.\

// UC29 - Modifica scala di risoluzione
==== UC29 - Modifica scala di risoluzione
#desc il giocatore può modificare la scala di risoluzione dal menu delle opzioni.\
#prec il gioco deve essere in pausa e il menu delle opzioni deve essere visualizzato.\
#posc la scala di risoluzione viene modificata in base alle preferenze del giocatore.\

// UC30 - Modifica anti-aliasing
==== UC30 - Modifica _anti-aliasing_
#desc il giocatore può modificare la modalità di _anti-aliasing_ dal menu delle opzioni.\
#prec il gioco deve essere in pausa e il menu delle opzioni deve essere visualizzato.\
#posc la modalità dell'_anti-aliasing_ viene modificata in base alle preferenze del giocatore.\

// UC31 - Modifica qualità ombre
==== UC31 - Modifica qualità ombre
#desc il giocatore può modificare la qualità delle ombre dal menu delle opzioni.\
#prec il gioco deve essere in pausa e il menu delle opzioni deve essere visualizzato.\
#posc la qualità delle ombre viene modificata in base alle preferenze del giocatore.\

// UC32 - Cambia lingua
==== UC32 - Cambia lingua
#desc il giocatore può modificare la lingua del gioco dal menu delle opzioni.\
#prec il gioco deve essere in pausa e il menu delle opzioni deve essere visualizzato.\
#posc la lingua del gioco viene modificata in base alle preferenze del giocatore.\

// UC33 - Modifica volume
==== UC33 - Modifica volume
#desc il giocatore può modificare il volume del gioco dal menu delle opzioni.\
#prec il gioco deve essere in pausa e il menu delle opzioni deve essere visualizzato.\
#posc il volume del gioco viene modificato in base alle preferenze del giocatore.\

// UC34 - Salva ed esci dalle opzioni
==== UC34 - Salva ed esci dalle opzioni
#desc il giocatore può salvare le opzioni scelte.\
#prec il giocatore deve essere nel menu di opzioni.\
#posc il gioco salva ed applica le opzioni.\
#incl - Salvataggio.
*/

// UC35 - Accensione unità esterna condizionatore
==== UC35 - Accensione unità esterna condizionatore
#figure(image("../images/usecase/uc-ac.png", width: 90%), caption:[Diagramma _UML_ sull'accensione di un'unità esterna di un condizionatore])
#desc il giocatore accende un'unità esterna di un condizionatore.\
#prec il giocatore deve essere in un livello.\
#posc l'unità esterna del condizionatore viene accesa ed il giocatore non può più interagire con l'_entità_.\
#incl - Aggiornamento dato di un cartello.\
#h(5.53em)- Salvataggio.\
#ext - Visualizzazione scena di intermezzo.

// UC36 - Visualizzazione scena di intermezzo
==== UC36 - Visualizzazione scena di intermezzo
#desc il giocatore visualizza una scena di intermezzo.\
#prec il giocatore deve soddisfare certe condizioni.\
#posc il giocatore visualizza la scena di intermezzo.\
/*
==== UC37 - Visualizzazione _input_ tastiera
#figure(image("../images/usecase/uc-input_prompt.png", width: 70%), caption: [Diagramma _UML_ sulla visualizzazione di un _input_ nella _UI_])
#desc il giocatore deve vedere che _input_ deve premere dal dispositivo che sta utilizzando.\
#prec il giocatore deve avere la tastiera collegata alla macchina.\
*/

#posc il giocatore visualizza nella #gl("ui") il tasto della tastiera da premere.\
/*
==== UC38 - Visualizzazione _input_ _joypad_
#desc il giocatore deve vedere che _input_ deve premere del dispositivo che sta utilizzando dalla _UI_ del gioco.\
#prec il giocatore deve soddisfare certe condizioni e deve avere un _joypad_ collegato alla macchina.\
#posc il giocatore visualizza nella _UI_ il tasto del _joypad_ da premere.\
*/
#set heading(numbering: "1.")

#set page(footer-descent: 0%, footer: [#align(top, [#line(length: 100%)*_UI_* *-* *_User Interface_*: interfaccia grafica che consente all'utente di interagire con un'applicazione o un videogioco.\ \
#align(center, context([#counter(page).display("1.")]))])])

=== Requisiti
In questa sezione elenco tutti i requisiti del progetto, individuati durante la fase di analisi. Ogni requisito viene identificato da un codice, scelto in base ai seguenti parametri:
#align(center, [*R - [numero] - [tipo] - [priorità]*])
con:
- *Numero*: numero progressivo che identifica il requisito, parte da 01.
- *Tipo*: può essere
  - *F*: requisito funzionale, indica una funzionalità del sistema;
  - *Q*: requisito di qualità, definisce le caratteristiche della qualità del prodotto, come un sistema deve essere o come il sistema deve esibirsi;
  /*- *V*: requisito deciso con il tutor aziendale e vincolante per il completamento del progetto;*/
  - *A*: requisito di accessibilità, indica una funzionalità da soddisfare per rendere il gioco accessibile ad un numero maggiore di utenti.
- *Priorità*: può essere
  - *O*: Obbligatorio e necessario per considerare il prodotto completo;
  - *D*: Desiderabile, non strettamente necessario ma è un valore aggiunto.
#figure(
  caption: [Totale requisiti],
  table(
    columns: (auto, auto, auto, auto),
    inset: 8pt,
    align: center + horizon,
    table.header([*Tipologia*], [*Obbligatori*], [*Desiderabili*],[*Totale*]),
    [Funzionali],[43],[10],[53],
    [Qualità],[4],[-],[4],
    [Accessibilità],[3],[3],[6],
    table.cell(colspan: 3, [*Totale*]),[*63*]))
#set page(footer-descent: 0%, footer: [#align(center+horizon, context([#counter(page).display("1.")]))])
/*
=== Lista dei requisiti

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
    [Il giocatore deve essere in grado di ruotare la telecamera intorno al personaggio],
    [UC3\ UC3.2],
    //UC4, UC5
    [R-07-F-O],[Il giocatore deve tornare in una posizione precedente quando cade dal livello],
    [UC4\ UC5],
    [R-08-F-O],
    //UC6
    [Il giocatore deve essere in grado di raccogliere _collezionabili_ sparsi per il livello],
    [UC6],
    //UC7
    [R-09-F-O],
    [Il giocatore deve essere in grado di interagire con _entità_ presenti nel livello],
    [UC7],
    //UC7.1
    [R-10-F-O],
    [Il giocatore deve essere in grado di visualizzare subito il messaggio di un'_entità_ automatica],
    [UC7.1\ UC7.1.1],
    //UC7.2
    [R-11-F-O],
    [Il giocatore deve essere in grado di parlare con un personaggio non giocabile],
    [UC7.2],
    //UC8.1
    [R-12-F-O],
    [Il giocatore deve poter visualizzare il dialogo quando interagisce con delle _entità_ specifiche],
    [UC8.1\ ],
    //UC8.2
    [R-13-F-O],
    [Il giocatore deve avere la possibilità di prendere una decisione quando gli viene mostrato nel dialogo],
    [UC8.2\ ],
    //UC8.3
    [R-14-F-O],
    [Il giocatore deve poter andare avanti nel dialogo],
    [UC8.3\ ],
    //UC8.4
    [R-15-F-O],
    [Il giocatore deve poter finire l'interazione con un'_entità_],
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
    [Il giocatore deve poter interagire con la macchina _LR_],
    [UC13],
    //UC14
    [R-26-F-O],
    [Il giocatore deve poter inserire punti nel grafico _LR_],
    [UC14],
    //UC15
    [R-27-F-O],
    [Il giocatore deve poter resettare i punti aggiunti nel grafico _LR_],
    [UC15],
    //UC16
    [R-28-F-O],[Il giocatore deve poter salire sopra un nodo dell'Albero di decisione],[UC16],
    //UC16.1
    [R-29-F-O],[Il giocatore deve poter visualizzare le scelte da prendere sopra il nodo],[UC16.1],
    //UC17
    [R-30-F-O],
    [Il giocatore deve poter piazzare un oggetto sopra un nodo dell'Albero di decisione],
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
    [Il giocatore deve poter tornare al livello _hub_ dal menu di pausa],
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
    [Il giocatore deve essere in grado di poter modificare il tipo di _anti-aliasing_ usato nel gioco, oppure non usarlo],
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
    "R-52-F-O",[Il gioco deve supportare _input_ da tastiera],[UC37\ ],
    "R-53-F-D",[Il gioco deve supportare _input_ da un _joypad_ generico],[UC38\ ],
  )
)

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

//#show figure: set block(breakable: false)
#figure(
  caption: [Tabella dei requisiti di accessibilità],
  table(
    columns: (auto, auto),
    inset: 8pt,
    align: center + horizon,
    table.header([*ID Requisito*], [*Descrizione*]),
    "R-01-A-O", 
    "Il gioco deve supportare il sistema operativo Windows",
    "R-02-A-D","Il gioco deve supportare il sistema operativo Linux",
    "R-03-A-D","Il gioco deve supportare il sistema operativo Mac-OS",
    "R-04-A-D",
    "La piattaforma deve essere responsive e funzionare correttamente su dispositivi desktop con risoluzione minima di 640\u{00D7}360px",
    "R-05-A-O",[Il gioco deve mostrare gli _input_ del dispositivo che si sta usando],
    [R-06-A-O],[Il gioco deve essere giocabile anche senza una connessione _internet_]
  ),
)*/
#show figure: set block(breakable: true)
/*
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
//_Qui descrivo l'architettura delle classi e come comunicano tra loro_
/*=== Modellazione 3D
==== Modello 3D del personaggio principale*/
=== Concetti chiave di _Godot_
==== Nodi
I nodi sono i blocchi fondamentali del gioco. Sono come ingredienti in 
una ricetta. Ci sono dozzine di tipi che possono mostrare un’immagine, 
riprodurre un suono, rappresentare una camera, e molto altro.
Tutti i nodi hanno le seguenti caratteristiche:
- un nome;
- proprietà modificabili;
- ricevono _callback_ per aggiornarsi ad ogni #gl("frame");
- si possono estendere con nuove proprietà e funzioni;
- si possono aggiungere a un altro nodo come figlio. @godot-node
Inoltre ad ogni nodo si può assegnare uno script, che estende il tipo di quel nodo e aggiunge nuove funzionalità.\
I principali tipi di nodi che vengono utilizzati in questo progetto sono:
- `Node`: nodo base da cui vengono estesi tutti gli altri nodi, in questo progetto viene usato principalmente per assegnare classi e inserirle come figlie in altri nodi.
- `Node3D`: rappresenta un oggetto nello spazio tridimensionale.
  - `CharacterBody3D`: rappresenta un personaggio che si può muovere nel gioco, gestendo la sua posizione e interazioni.
  - `Camera3D`: rappresenta una telecamera nello spazio tridimensionale, che può essere utilizzata per visualizzare la scena.
  - `MeshInstance3D`: rappresenta un oggetto tridimensionale.
  - `CollisionShape3D`: rappresenta una forma di collisione nello spazio tridimensionale, utilizzata per gestire le interazioni fisiche tra gli oggetti.
  - `Area3D`: rappresenta un'area nello spazio tridimensionale, utilizzata per gestire le interazioni tra gli oggetti che entrano ed escono da essa.
- `AnimationPlayer`: gestisce le animazioni degli oggetti nella scena, permettendo di riprodurre animazioni sul modello 3D, telecamere e altri nodi.
- `Control`: rappresenta un nodo _UI_, utilizzato per gestire gli elementi dell'interfaccia utente del gioco.\
#align(bottom, [#line(length: 100%)*_frame_*: unità di misura temporale utilizzata nei videogiochi e nelle animazioni. Tipicamente sono 60 in un secondo.])

==== Scene
Quando si organizzano nodi in un albero, come il nostro personaggio, possiamo chiamare questa formazione una scena. Una volta salvata, la scena si presenta come un nuovo nodo nell’_editor_, dove possiamo aggiungerlo come figlio di un nodo esistente. In questo caso, l’istanza della scena appare come nodo singolo con interni nascosti.
Le scene di consentono di strutturare il codice del gioco in qualunque modo si voglia. Si possono comporre nodi per creare nodi personalizzati e complessi, come un personaggio di gioco che si muove e salta, una barra della vita, una cesta con cui puoi interagire, e molto altro. @godot-node
#figure(caption: [_Scena_ del personaggio del giocatore], 
image("../images/godot-scene_example.png"))
Oltre che a comportarsi come nodi, le scene hanno anche le seguenti caratteristiche:
- Hanno sempre un nodo `owner`, come il `Player` nel nostro esempio.
- Si possono salvare sul disco locale e caricarle in seguito.
- Si possono creare quante più istanze di una scena si desideri. Ad esempio, si possono avere cinque o dieci personaggi nel gioco, creati da una determinata scena.

==== Segnali
I segnali sono un modo per far comunicare i nodi in maniera asincrona in _Godot_. Ogni classe presenta dei segnali preimpostati ed emessi in determinati momenti, ad esempio quando un nodo viene caricato, questo emette il segnale `ready()`, oppure quando un bottone viene premuto, viene emesso il segnale `pressed()`.\
I segnali inoltre possono anche contenere dei parametri, che possono essere utilizzati per passare informazioni tra i nodi.\
Infine, si possono creare segnali personalizzati, che possono essere emessi in qualsiasi momento dal nodo che li ha definiti tramite il metodo `signal.emit(...)`.\
Ci sono due modi per collegare un segnale ad un altro nodo:
- tramite l'_editor_: selezionando il nodo che emette il segnale e trascinandolo sul nodo che deve ricevere il segnale, e selezionando il metodo che deve essere chiamato quando il segnale viene emesso;
- tramite codice: utilizzando il metodo `signal.connect(callable: Callable)` del nodo che emette il segnale, passando come parametro il nome del metodo che deve essere chiamato quando il segnale viene emesso.

=== Funzioni comuni
Molte classi del progetto presentano delle funzioni virtuali comuni, che vengono fornite dalle classi base del motore di gioco:\
#v(0.5em)
_`+ready(): void`_\
Questa funzione viene chiamata quando il nodo entra nella scena, ovvero quando tutti i nodi figli sono stati caricati e il nodo è pronto per essere utilizzato.\
In questa funzione è possibile inizializzare le variabili, collegare i segnali e impostare le proprietà del nodo.\
È importante notare che questa funzione viene chiamata solo una volta, quando il nodo viene caricato per la prima volta nella scena, e non ad ogni _frame_ del gioco.
#v(0.5em)
_`+process(delta: float): void`_\
Questa funzione viene chiamata ad ogni _frame_ del gioco e permette di aggiornare lo stato della classe, ad ogni _frame_ di inattività. \
Un _frame_ di inattività corrisponde ad un _frame_ effettivo del gioco.\
Il parametro `delta` rappresenta il tempo trascorso dall'ultimo _frame_ di inattività, ed è utile per gestire le animazioni e le interazioni in modo fluido e coerente. @godot-process
#v(0.5em)
_`+physics_process(delta: float): void`_\
Questa funzione viene chiamata ad ogni _frame_ di fisica del gioco, che di default è fisso 60 volte al secondo, anche nel caso il numero di _frame_ al secondo del gioco sia inferiore o superiore.\
Questa funzione è utile per gestire le interazioni fisiche tra gli oggetti, come ad esempio la gestione delle collisioni e la gestione della gravità.\
Il parametro `delta` rappresenta il tempo trascorso dall'ultimo _frame_ di fisica. @godot-process
#v(0.5em)
_`+_input_(event: InputEvent): void`_\
Funzione chiamata ogni volta che il gioco rileva un qualsiasi _input_, sia da tastiera che dal _joypad_. Il parametro `event` rappresenta l'_input_ che chiama la funzione.

#set page(footer-descent: -20%, footer: [#align(top, [#line(length: 100%)
*_autoload_*: meccanismo di _Godot_ che consente di caricare automaticamente una risorsa all'avvio del gioco e mantenerla sempre attiva.\
*_singleton_*: _design pattern_ che garantisce ci sia solo un'istanza di una classe in tutto il gioco, rendendola accessibile da qualsiasi parte del codice.\ \
#align(center, context([#counter(page).display("1.")]))])])

=== Classi del giocatore
==== `Player`
#figure(caption: [Diagramma _UML_ delle classi del giocatore],image("../images/classi/class-player.png", width: auto))
Il giocatore può essere considerata la classe principale di tutta l'applicazione, attraverso il quale l'utente può interagire con la maggior parte del gioco.\ Nonostante ci sia solo un giocatore presente del gioco, questo non è un #gl("singleton"), poiché per implementare un _singleton_ in _Godot_ è richiesto che questo sia caricato come #gl("autoload") in ogni scena, e non c'è motivo di caricare il giocatore nel menu principale, all'avvio del gioco.

Molte variabili presenti nel giocatore sono riferimenti ai suoi nodi figli presenti nella scena, queste variabili sono precedute dalla parola chiave `@onready` nel codice.
Similmente, molte funzioni della classe servono solo per accedere alle variabili dei suoi nodi figli.

La classe del giocatore ha associate delle classi che offrono funzionalità diverse,
di seguito vengono descritte in dettaglio quelle più importanti.
//==== _Movement_
#set page(footer-descent: 0%, footer: [#align(top, [#line(length: 100%)
*_clipping_*: fenomeno che si verifica quando la telecamera o un oggetto solido di un videogioco passa attraverso un altro oggetto solido.\ \
#align(center, context([#counter(page).display("1.")]))])])
/*
==== `CameraRayCast`
#figure(caption: [Diagramma _UML_ delle classi della telecamera del giocatore],image("../images/classi/class-camera.png"))
La telecamera del giocatore viene gestita da più classi per garantire diverse funzionalità tra quali la rotazione intorno al giocatore, proiezione di elementi della _UI_ sullo schermo ed evitare che la telecamera passi attraverso i muri, generando il fenomeno chiamato #gl("clipping").\
Oltre che a gestire il lavoro di tutte le altre classi per il corretto funzionamento della telecamera, la classe `CameraRayCast` lancia un raggio dalla posizione del giocatore verso il basso per controllare velocemente la distanza dal terreno del giocatore. Nel caso il raggio tocca ancora il terreno, la telecamera rimane per terra e non si sposta in alto con il giocatore.
Di seguito vengono descritte le classi principali associate alla classe `CameraRayCast`:
#v(0.5em)

- *`PlayerCamera`*: la telecamera effettiva, eredita dalla classe di _Godot_ `Camera3D`. Offre il metodo `look_at_target()` che si occupa di girare la telecamera verso un obiettivo, specificato dalla variabile `custom_target` nella classe. Questo metodo viene usato da `CameraRayCast` per girare la telecamera verso un punto calcolata da quest'ultima.

- *`CameraProjectUI`*: gestisce gli elementi della _UI_ la cui posizione viene proiettata dallo spazio 3D del gioco, allo spazio 2D dello schermo. Contiene un _array_, composto da questi elementi. Nel caso l'_array_ sia vuoto, la modalità di processo viene disabilitata, cioè le operazioni della classe non vengono più effettuate ad ogni _frame_ del gioco, risparmiando risorse.\
- *`SpringArm3D`*: classe fornita da _Godot_. La sua posizione globale corrisponde sempre a quella del giocatore, e si occupa di avvicinare la telecamera quando è vicino ad un muro per evitare il _clipping_.

- *`CameraTarget`*: eredita dalla classe di _Godot_ `Marker3D`. La sua posizione viene calcolata da `CameraRayCast` e si occupa di gestire gli input per ruotare e muovere la telecamera intorno al giocatore.
*/

#set page(footer: [#align(center+horizon, context([#counter(page).display("1.")]))])

==== `StateMachine`
#figure(caption: [Diagramma _UML_ sulla struttura della macchina di stati],image("../images/classi/class-state_machine.png"))\
La macchina di stati è stata utilizzata per controllare meglio i diversi stati in cui il personaggio del giocatore può trovarsi, ad esempio: il movimento, salto...\
L'uso della macchina di stati, inoltre, ha garantito una gestione più semplice del personaggio del giocatore e ha reso più facile aggiungere o modificare funzionalità a questo.\
La classe `StateMachine` si occupa di gestire la transizione degli stati.\
L'attributo `state` indica lo stato corrente del personaggio del giocatore. Quando riceve il segnale `finished(...)` dallo stato in cui si trova, si occupa di passare allo stato indicato dal segnale, passando gli eventuali dati contenuto nel `Dictionary` allo stato successivo.\
Tutti gli stati ereditano dalla classe base astratta `State`. Questa include un riferimento al giocatore ed alla macchina di stati.
Di seguito sono descritti tutte le classi degli stati del personaggio:
#v(0.5em)
- *`IdleState`*: stato iniziale del personaggio. Questo stato viene chiamato quando è fermo per terra. Può passare a tutti gli altri stati in base agli input premuti in diverse condizioni. Ad esempio se il personaggio sta portando qualcosa ed il giocatore preme il tasto di interazione, il personaggio passa allo stato _Release_, ma se non sta portando niente, allora non succede niente. Invece se preme lo stesso tasto dentro un'area specifica, il personaggio passa allo stato _Interact_.

- *`GroundMovementState`*: il personaggio del giocatore passa allo stato _GroundMovement_ quando viene premuto un input per spostarsi rimanendo per terra. Come lo stato _Idle_, si può passare a tutti gli altri stati anche da questo, seguendo le stesse condizioni dello stato _Idle_.

- *`AirState`*: si può passare a questo stato in due condizioni: il personaggio cade da una piattaforma, o il giocatore preme il tasto per saltare. Nell'ultimo caso, lo stato precedente manda un valore `jump = true` all'interno del `Dictionary`. Lo stato controlla se è presente il medesimo valore non appena il personaggio entra in quello stato, ed in caso positivo, esegue il salto, caricando la rispettiva animazione e modificando la velocità verticale.

- *`InteractState`*: lo stato _Interact_ indica che il personaggio del giocatore è impegnato ad interagire con un'altra entità, ad esempio mentre parla con un personaggio non giocabile o legge un cartello.

- *`GrabState`*: il personaggio del giocatore passa allo stato _Grab_ quando il giocatore preme il tasto per prendere un oggetto vicino. Importante notare che questo stato rappresenta solo quando il personaggio prende un oggetto, dopo aver svolto l'azione, il personaggio torna allo stato _Idle_, cambiando le animazioni in modo che rispecchino il fatto che sta portando un oggetto.

- *`ReleaseState`*: quando il giocatore preme di nuovo il tasto per prendere un oggetto mentre il personaggio sta portando un oggetto, questo passa allo stato _Release_ e lascia l'oggetto. Come il suo stato opposto, una volta lasciato l'oggetto, il giocatore torna allo stato _Idle_.\

#v(0.5em)

La figura mostra il flusso degli stati.
#figure(caption: [Diagramma sul flusso degli stati del giocatore], image("../images/sm-player_states.png", width: 60%))
//==== _PlayerSavesHandler_
//==== _GrabItem_
//==== _ParticleEmitter_
//==== _PlayerUI_

=== Entità _interagibili_
#figure(caption: [Diagramma _UML_ degli oggetti con cui il giocatore può interagire],image("../images/classi/class-interactable.png"))
Nei livelli sono presenti diverse _entità_ con cui il giocatore può interagire. Di seguito vengono descritte i diversi tipi di _entità_, e le classi che le compongono:
#v(0.5em)
- *`InteractableArea`*: classe base astratta che fornisce i metodi alle classi figlie. La classe è composta da un'`Area3D`, che invia i segnali quando il giocatore entra ed esce, e da una classe `Control` che rappresenta la _UI_ che il giocatore visualizza quando entra.
- *`NPC`*: rappresenta un personaggio non giocabile che ha assegnato una semplice frase come messaggio. Questa frase viene visualizzata in una classe `SimpleProjectLabel`. Presenta anche una classe `Marker3D` che segna la posizione della _UI_, e una classe `NPCModel` che gestisce le animazioni del modello 3D del personaggio.
- *`InteractableSign`*: rappresenta un cartello che il giocatore può leggere. \ Il cartello può contenere diverse informazioni, come una lista o un grafico. \ Il contenuto del cartello è inserito in un'altra classe `Control`.
- *`NPCDialogue`*: rappresenta un personaggio non giocabile che, a differenza della classe `NPC`, presenta un dialogo. Il giocatore può interagire con il personaggio e visualizzare il dialogo premendo il rispettivo tasto.
/*
=== Gestione dei salvataggi
#figure(caption: [Diagramma sul funzionamento dei salvataggi],image("../images/classi/class-saves.png"))
- *`Saves`*: classe base astratta per tutte le classi che si occupano di salvare o caricare i dati dal file _.ini_.\ Fornisce l'attributo `save_path` che indica il percorso dove salvare il file _.ini_.\ Inoltre fornisce i metodi virtuali `save_data()` e `load_data()` per salvare o caricare i dati. Questi due metodi sono sovrascritti nelle classi figlie.
- *`SavesHandler`*: classe base astratta per tutte le classi che gestiscono il cambio dei dati da salvare, contengono una copia dei dati da salvare prima di mandarli alla rispettiva classe `Saves`.\ Inoltre fornisce un attributo booleano `debug_mode`, attivabile dall'_editor_.\ Se attivato, impedisce che vengano caricati i dati di salvataggio. Utile per quando dovevo testare alcune funzionalità con alcuni valori già cambiati nei salvataggi.
#v(0.5em)
Tutte le classi derivate di `SavesHandler` e `Saves` si occupano di gestire i salvataggi e i caricamenti dei rispettivi livelli o funzionalità.
*/
/*#set page(footer-descent: 0%, footer: [#align(top, [#line(length: 100%)
*_drifting_*: fenomeno che si verifica uno _stick_ analogico registra movimenti o pressioni anche quando non viene toccato.\ \
#align(center, context([#counter(page).display("1.")]))])])
*/
/*
=== `LevelsTransition`
#figure(caption: [Diagramma _UML_ delle classi _Autoloads_],image("../images/classi/class-autoloads.png", width: auto))
La classe `LevelsTransition` si occupa della transizione tra due classi. Il metodo `switch_level(new_level_path: String)` carica il livello il cui percorso è fornito come argomento della funzione. Il motivo per cui è stato usato il percorso come `String` anziché il livello stesso come `PackedScene` è stato per evitare riferimenti ciclici, in quanto se due livelli contenevano un riferimento tra di loro nella scena, il gioco non caricava correttamente il livello successivo.
=== `OptionsSave`
`OptionsSave` è la classe che carica le impostazioni del gioco. Queste opzioni devono essere sempre disponibili, in quanto servono per applicare le modifiche fatte dal giocatore in qualsiasi momento, come la risoluzione alla finestra, il volume dell'applicazione, etc...
==== `InputUIHandler`
La classe `InputUIHandler` si occupa di controllare i dispositivi di _input_ collegati, e mandare il segnale `device_changed(current_joy: String)` nel caso il nome del dispositivo dell'ultimo _input_ non corrisponda all'attributo `current_joy`.\
Il metodo `check_minimum_input_left_strength_threshold()` stabilisce la potenza minima che l'_input_ deve superare per mandare il segnale. Questo perché alcuni _joypad_ presentano il problema del #gl("drifting") e la classe potrebbe leggere _input_ che non sono premuti dal giocatore.
=== Struttura base di un livello
Ogni livello viene creato con le seguenti classi:
*/
#set page(footer-descent: 0%, footer: [#align(center+horizon, context([#counter(page).display("1.")]))])

#figure(caption: [Diagramma delle classi di un livello base],image("../images/classi/class-base_level.png", width: auto))
- *`Level`*: classe del livello, non svolge molte funzioni visto che i componenti possono comunicare tra di loro attraverso i segnali. Gli attributi booleani `red_collectibles`, `blue_collectibles` e `green_collectibles` stabiliscono quali tipi di _collezionabili_ sono presenti nel livello, e quindi quali far visualizzare nella _UI_ del giocatore.
- *`PlayerSpawn`*: classe che si occupa di generare il giocatore nella posizione in cui si trova. Appena generato il giocatore viene assegnato alla classe `Level`
- *`PauseMenu`*: il menu di pausa, questo viene caricato quando il giocatore preme il rispettivo tasto, mettendo in pausa tutta la scena.

//=== Livello _Regressione lineare_
=== `LRCannon`
#figure(caption: [Diagramma sul funzionamento di un grafico _Linear Regression_ nel gioco],image("../images/classi/class-linear_regression.png"))
La classe `LRCannon` rappresenta il cannone nel livello per aggiungere nuovi dati nel grafico della Regressione lineare.\ Eredita da `InteractableArea` e infatti il giocatore può interagirci quando entra dentro l'area apposita.\
Quando il giocatore preme l'_input_ per interagire, la telecamera viene cambiata ed il giocatore entra nello stato _Interact_.
La classe è composta da: 
- *`CannonMesh`*: si occupa della rotazione del cannone quando questo è attivo e quando viene inserito un nuovo punto nel grafico.
- *`LRCannonInputHandler`*: gestisce gli _input_ del giocatore quando questo sta controllando il _cannone LR_.
=== `LinearRegressionGraph`
Classe base astratta usata per i due tipi di grafico presenti nel livello: orizzontale e verticale.
Si occupa di svolgere le operazioni di regressione lineare per ottenere la formula della retta $y = a + b x$.\
Tuttavia, non si può applicare la formula direttamente ad un oggetto 3D.\
Il metodo `calculate_a_b()`si occupa di calcolare le variabili `a` e `b` della formula della retta con le seguenti formule:\

#v(1em)
#text(size: 14pt, [#align(center, [$a = (sum_()y sum_()x^2 - sum_()x  sum_()x y)/(n(sum_()x^2)-(sum_()x)^2)$ #h(3em)
$b = (n sum_()x y - (sum_()x)(sum_()y))/(n sum_()x^2-(sum_()x)^2)$\ ])])
#v(1em)

Dove _x_ e _y_ sono le coordinate dei punti, ed _n_ è uguale al numero di punti che abbiamo nel grafico.\
Tutte le sommatorie sono state calcolate in un ciclo _for_ e dopo inserite come variabili nelle formule.

#codly(
  languages: (
    python: (name: "GDScript", icon: box(align(start+horizon, image("../images/godot_icon.svg", format: "svg")), height: 0.9em), color: rgb("#00aac0")),
  ))

#figure(caption: [Funzione `calculate_a_b()`])[
\

```python
func calculate_a_b() -> void:
	var sum_x : float = 0.0
	var sum_x2 : float = 0.0
	var sum_y : float = 0.0
	var sum_xy : float = 0.0
	var num : float = 0.0
	
	for i in points.get_child_count():
		num += 1
		sum_x += points.get_child(i).global_position.x
		sum_y += points.get_child(i).global_position.z
		sum_x2 += (points.get_child(i).global_position.x)**2
		sum_xy += (points.get_child(i).global_position.z)*\
    (points.get_child(i).global_position.x)
  
  #Vengono poi applicate le formule
```
]
Il metodo `calculate_pos_rot(a: float, b: float)`, poi, prende la formula della retta, e posiziona due punti nel grafico lungo la retta calcolata dal metodo precedente. Questi due punti vengono passati al metodo successivo.\
Il metodo `position_line(pos1: Vector3, pos2: Vector3)`, infine, posiziona il modello 3D della retta in mezzo ai due punti e lo ruota in modo che li intersechi.\
Le trasformazioni globali vengono poi modificate in base al tipo della classe:
- *`LinearRegressionGraphHorizontal`*: il grafico orizzontale, parallelo al terreno.
- *`LinearRegressionGraphVertical`*: il grafico verticale, perpendicolare al terreno.

=== Livello Albero di decisione
#figure(caption: [Diagramma sul funzionamento dell'Albero di decisione],image("../images/classi/class-decision_tree_level.png", width: auto))
- *`DecisionTree`*: la classe che rappresenta un Albero di decisione nel livello composta da più istanze di `DecisionNodeFinal` e `DecisionNodeIntermediate`, inserite tutte come nodi figli nella _scena_.\ Si occupa di inviare i segnali agli altri nodi presenti nel livello.
- *`DecisionNode`*: classe base astratta per i due tipi di nodi presenti nell'albero: _intermediate_ e _final_. Fornisce i metodi virtuali `on_area_3d_body_entered(body: CharacterBody3D)` e `on_area_3d_body_exited(body: CharacterBody3D)` che vengono chiamati quando entra un oggetto di tipo `CharacterBody3D` nell'area sopra la piattaforma.\ Il comportamento poi viene modificato dalle classi figlie.
  - *`DecisionNodeIntermediate`*: quando entra il giocatore nell'area, viene visualizzata la _UI_ con le indicazioni da seguire;
  - *`DecisionNodeFinal`*: quando entra un cane nell'area, controlla se l'`id` di questo corrisponde all'`id` associato all'istanza.
- *`DogBreedsSign`*: oltre all'Albero di decisione nel livello è presente anche un cartello con cui il giocatore può interagire e visualizzare le razze die cani che ha indovinato.\ La classe `DogBreedsSign` rappresenta questo cartello. Questa, è composta da una classe `DogSignUI` che è il contenuto del cartello, contenente tutte le razze dei cani che il giocatore ha indovinato.\ Quando il cartello viene chiuso, emette il segnale `hide_grid()` che chiama il metodo `on_dog_breed_sign_hide_grid()` nella classe `CheckUnlocked`.

- *`CheckUnlocked`*: classe che si occupa di controllare le razze di cani sbloccate e tenere il conto di quelle nuove che il giocatore non ha ancora controllato, nell'attributo `td_to_give`.\ Il valore di questo attributo viene modificato all'inizio del caricamento del livello e quando il giocatore indovina una nuova razza nell'Albero di decisione, ed è la differenza tra l'attributo `value` e il valore `td_given`.\ Al caricamento del livello, riceve il segnale `data_loaded` dal nodo che gestisce i salvataggi `DTSavesHandler`, assegna il valore dell'attributo `td_given`. Quando riceve il segnale `new_breed_unlocked` dall'Albero di decisione, `value` aumenta di 1, ed aggiorna il valore di `td_to_give`.\ Quando riceve il segnale `hide_grid` dal cartello, chiama la funzione per generare i _collezionabili_ tanti quanti il valore di `td_to_give`. 

=== Livello _Causalità_
==== Struttura del livello
#figure(caption: [Diagramma del livello  _Causalità_],image("../images/classi/class-causality_level.png"))
- *`ACUnit`*: rappresenta un condizionatore. Eredita da `InteractableArea`.\ Il giocatore, quando entra nell'area, può premere il tasto di interazione per accenderlo.\ Quando viene acceso, il valore dell'_array_ nodo padre, in questo caso `ACUnits`, viene aggiornato con il giusto indice.
- *`ACUnits`*: si occupa di gestire tutte le istanze di `ACUnit`, inserite come nodi figli nella scena.\ Quando viene acceso un condizionatore, emette il segnale `unit_turned_on(index: int)`, passando direttamente l'array aggiornato come argomento nel segnale.\ Quando tutti i condizionatori sono stati accesi, manda il segnale `all_units_on()`, usato in questo caso per far iniziare la scene di intermezzo.
- *`CutscenesHandler`*: si occupa di gestire le scene di intermezzo nel livello, inserite come nodi figli nella scena. Nonostante la classe è stata pianificata per gestire più scene, alla fine ne è presente solo una.\ Questa classe svolge anche il ruolo da mediatore, ricevendo i segnali dal livello e mandandoli ai nodi figli, gestendo il traffico dei segnali.
/*- *`CausalitySavesHandler`*: gestisce i salvataggi e cambio di variabili all'interno del livello _Causality_. In questa classe, le variabili sono salvate in un `Dictionary`. Quando i salvataggi vengono caricati, la classe emette il segnale `data_loaded()`.*/
/*
==== Scena di intermezzo
Dopo la scena di intermezzo, alcuni personaggi possono cambiare il dialogo a loro assegnato, oppure il comportamento con il giocatore.
#figure(caption: [Diagramma _UML_ sul funzionamento dei personaggi non giocabili nella scena di intermezzo e dopo],image("../images/classi/class-cutscene_npc.png"))
- *`CrashCutscene`*: la classe che gestisce la scena di intermezzo principale del livello. Si occupa principalmente di inviare i segnali per iniziare correttamente la scena. \ Quando il giocatore accende l'ultimo condizionatore, viene emesso il segnale `change_values()`. Se invece il livello viene caricato con già tutti i condizionatori accessi, viene emesso il segnale `change_specific_values()`.
- *`ChangeNPCScientistBehaviour`*: si occupa di cambiare il comportamento del rispettivo personaggio non giocabile. Viene assegnata ad un nodo figlio del nodo del personaggio.\ All'inizio del livello, il personaggio presenta un dialogo predefinito e non si gira quando parla con il giocatore.\ Dopo aver ricevuto il segnale `change_values()` dalla classe `CrashCutscene`, sostituisce il dialogo del personaggio con il dialogo assegnato alla classe, e cambia il comportamento, in modo che si giri e cambi animazione quando parla con il giocatore.\ Inoltre, dopo che il giocatore risponde correttamente alla domanda del nuovo dialogo, il comportamento cambia di nuovo, viene tolto il dialogo e viene rimpiazzanto il messaggio automatico che appare quando il giocatore entra nell'area di interazione.\
*//*
#set page(footer-descent: -40%, footer: [#align(top, [#line(length: 100%)
*_CPU_ - _Central Processing Unit_*: unità di elaborazione centrale di un computer, responsabile dell'esecuzione delle istruzioni.\
*_GPU_ - _Graphics Processing Unit_*: unità di elaborazione grafica di un computer, progettata per gestire e accelerare la creazione di immagini ed elaborazione di grafica 3D.\
*_RAM_ - _Random Access Memory_*: memoria piccola e rapida di un computer che consente un accesso rapido e diretto ai dati in uso.\ \
#align(center, context([#counter(page).display("1.")]))])])
*/
- *`ChangeNPCIceCreamBehaviour`*: si occupa di cambiare il comportamento del rispettivo personaggio non giocabile. Viene assegnata ad un nodo figlio del nodo del personaggio.\ Funziona nello stesso modo della classe descritta prima, però avviene solo un cambio del dialogo e non c'è la modifica del comportamento.

- *`NPCIceCreamSave`*: lo scopo della classe è quello di caricare il gruppo di persone davanti alla gelateria nel caso il livello venga caricato quando già tutti i condizionatori sono stati accesi.\ Le persone vengono caricate quando la classe riceve il segnale `change_specific_values()`, in quanto vengono caricate solo ed esclusivamente al caricamento del livello.\

- *`ChangeSignUI`*: questa classe si occupa di cambiare il contenuto del rispettivo cartello. Viene assegnata ad un nodo figlio del nodo del cartello.\ Funziona nello stesso modo delle classi che cambiano il dialogo o comportamento dei personaggi. Quando riceve il segnale `change_values()`, cambia il contenuto del cartello, rimpiazzandolo con l'istanza assegnata alla classe.

== Verifica e validazione
/*=== Macchina di _test_
Tutti i _test_ sono stati eseguiti sulla mia macchina con specifiche hardware e software definite nella tabella. Molto importante è specificare le componenti della macchina su cui viene testato il gioco, dato che macchine diverse offrono prestazioni diverse.
#figure(caption: [Componenti della macchina su cui sono stati eseguiti i _test_], table(
  columns: (auto, auto),
  inset: 8pt,
  align: center + horizon,
  table.header([*Componente*], [*Dettagli*]),
  [*#gl("cpu")*],[_AMD® Ryzen 5 4500U_],
  [*#gl("gpu")*],[_AMD® Radeon Graphics (RADV RENOIR)_ \ Integrata alla _CPU_],
  [*#gl("ram")*],[_8GB DDR4_],
  [*Sistema Operativo*],[_Ubuntu 22.04_]
))
In sintesi, la macchina su cui viene testato il gioco offre prestazioni sulla fascia media-bassa, quindi si ritiene che se il gioco offre delle buone prestazioni sulla macchina di _testing_, offrirà in media buone prestazioni su tutte le macchine con un sistema operativo supportato.
#set page(footer-descent: 0%, footer: [
#align(center+horizon, context([#counter(page).display("1.")]))])
*/
=== Nomenclatura _test_
Di seguito sono elencate le metodologie di _testing_ che verranno utilizzate per verificare e validare il prodotto _software_. Le metodologie di _testing_ sono suddivise in quattro categorie:
- *_test_ di unità*: _test_ che verificano il corretto funzionamento di singole unità del codice, questi _test_ sono stati svolti con l'_add-on_ della community _GUT - Godot Unit Test_;\
- *_test_ di integrazione*: _test_ che verificano il corretto funzionamento dell'interazione tra più unità del codice, anche questi svolti con l'_add-on_ _GUT_;\
- *_test_ di sistema*: _test_ che verificano il corretto funzionamento del sistema nel suo complesso, inclusi i requisiti funzionali e non funzionali, comprendono anche _test_ sulle prestazioni, e sono svolti utilizzando gli strumenti forniti da _Godot_;\
- *_test_ di accettazione*: _test_ che verificano se il prodotto è pronto per essere rilasciato.

#figure(caption: [Totale _test_ eseguiti], table(
  columns: (auto, auto, auto),
  inset: 8pt,
  align: center + horizon,
  table.header([*Tipologia*], [*Eseguiti*], [*Superati*]),
  [Unità],[44],[44],
  [Integrazione],[37],[37],
  [Sistema],[10],[10],
  [Accettazione],[4],[4],
  [*Totale*],[*95*],[*95*]
))
/*
=== _Test_ di unità
#figure(caption: [_Test_ di unità], table(
  columns: (auto, auto, auto),
  inset: 8pt,
  align: (x, y) => if (x == 0 and y > 0 and y < 7) { center + horizon } else { center + horizon },
  table.header([*Identificativo*], [*Descrizione*], [*Superato*]),
  //giocatore
  [TU-01],[Si verifica che il giocatore stia su una piattaforma con velocità pari a zero quando non si muove],[\u{2713}],
  [TU-02],[Si verifica che se il giocatore è fermo su una piattaforma, il suo stato nella macchina di stati è _Idle_],[\u{2713}],
  [TU-03],[Si verifica che quando il giocatore è fermo su una piattaforma, utilizza l'animazione _idle_],[\u{2713}],
  [TU-04],[Si verifica che la rotazione iniziale sull'asse _y_ della telecamera è la stessa del giocatore],[\u{2713}],
  [TU-05],[Si verifica che la telecamera ruoti intorno al giocatore quando viene premuto il rispettivo tasto],[\u{2713}],
  [TU-06],[Si verifica che il giocatore si muova ad una determinata velocità quando viene premuto il rispettivo tasto],[\u{2713}],
  [TU-07],[Si verifica che se il giocatore si muove su una piattaforma, il suo stato nella macchina di stati è _GroundMove_],[\u{2713}],
  [TU-08],[Si verifica che quando il giocatore si muove su una piattaforma, utilizza l'animazione della corsa],[\u{2713}],
  [TU-09],[Si verifica che quando il giocatore si muove, la telecamera ruota automaticamente],[\u{2713}],
  [TU-10],[Si verifica che quando il giocatore salti quando viene premuto il rispettivo tasto],[\u{2713}],
  [TU-11],[Si verifica che quando il giocatore salta, lo stato nella macchina di stati cambia a _Air_],[\u{2713}],
  [TU-12],[Si verifica che quando il giocatore salta utilizza l'animazione del salto],[\u{2713}],
  [TU-13],[Si verifica che quando il giocatore cade da una piattaforma, con velocità verticale negativa, lo stato nella macchina di stati sia _Air_],[\u{2713}],
  [TU-14],[Si verifica che quando il giocatore cade da una piattaforma, con velocità verticale negativa, utilizzi l'animazione della caduta],[\u{2713}],
  //Pausa
  [TU-15],[Si verifica che il menu di pausa venga visualizzato quando viene premuto il rispettivo tasto],[\u{2713}],
  [TU-16],[Si verifica che quando viene aperto il menu di pausa, l'applicazione viene messa in pausa],[\u{2713}],
  [TU-17],[Si verifica che quando viene premuto il rispettivo tasto, il menu di pausa viene nascosto e viene ripresa l'esecuzione],[\u{2713}],
  [TU-18],[Si verifica che quando viene premuto lo stesso tasto quando il menu di pausa è aperto, questo viene nascosto e viene ripresa l'esecuzione],[\u{2713}],
  [TU-19],[Si verifica che quando viene premuto il tasto delle opzioni, venga aperto il menu di opzioni],[\u{2713}],
  [TU-20],[Si verifica che quando viene premuto il tasto "Ritorna alla _hub_", il giocatore viene riportato al livello Hub],[\u{2713}],
  [TU-21],[Si verifica che quando viene premuto il tasto del menu principale, il giocatore viene riportato al menu principale],[\u{2713}],
  [TU-22],[Si verifica che il gioco venga chiuso quando viene premuto il bottone "Esci dal gioco"],[\u{2713}],
  //Opzioni
  [TU-23],[Si verifica che viene cambiata la modalità della finestra quando viene premuto il rispettivo bottone nel menu delle opzioni],[\u{2713}],
  [TU-24],[Si verifica che viene cambiata la risoluzione della finestra quando viene premuto il rispettivo bottone nel menu delle opzioni],[\u{2713}],
  [TU-25],[Si verifica che viene cambiata la scala di risoluzione quando viene premuto il rispettivo bottone nel menu delle opzioni],[\u{2713}],
  [TU-26],[Si verifica che viene cambiato il valore del volume quando viene premuto il rispettivo bottone nel menu delle opzioni],[\u{2713}],
  [TU-27],[Si verifica che viene cambiato il valore massimo degli FPS quando viene premuto il rispettivo bottone nel menu delle opzioni],[\u{2713}],
  [TU-28],[Si verifica che viene cambiato il metodo di Anti Aliasing quando viene premuto il rispettivo bottone nel menu delle opzioni],[\u{2713}],
  [TU-29],[Si verifica che viene cambiata la qualità/risoluzione delle ombre quando viene premuto il rispettivo bottone nel menu delle opzioni],[\u{2713}],
  [TU-30],[Si verifica che viene cambiata la lingua del gioco quando viene premuto il rispettivo bottone nel menu delle opzioni],[\u{2713}],
  [TU-31],[Si verifica che vengano salvati i nuovi valori delle opzioni quando viene premuto il rispettivo bottone nel menu delle opzioni],[\u{2713}],
  //Menu principale
  [TU-32],[Si verifica che venga caricato il gioco con i salvataggi esistenti quando viene premuto il bottone "Carica partita"],[\u{2713}],
  [TU-33],[Si verifica che venga caricata una nuova partita, cancellando i dati di salvataggio esistenti, quando viene premuto il bottone "Nuova partita"],[\u{2713}],
  //NPC
  [TU-34],[Si verifica che il messaggio del personaggio non giocabile venga nascosto quando il giocatore non è vicino],[\u{2713}],
  [TU-35],[Si verifica che il personaggio non giocabile, sia con dialogo che senza dialogo, usi l'animazione _idle_ quando il giocatore non è vicino],[\u{2713}],
  //_LR_
  [TU-36],[Si verifica che il grafico orizzontale venga caricato con la giusta rotazione],[\u{2713}],
  [TU-37],[Si verifica che la linea del grafico orizzontale cambi correttamente con l'aggiunta di un punto],[\u{2713}],
  [TU-38],[Si verifica che il grafico verticale venga caricato con la giusta rotazione],[\u{2713}],
  [TU-39],[Si verifica che la linea del grafico verticale cambi correttamente con l'aggiunta di un punto],[\u{2713}],
  [TU-40],[Si verifica che il grafico possa eliminare i punti aggiunti, resettando la linea],[\u{2713}],  
  //Decision Tree
  [TU-41],[Si verifica che un cane possa ritornare alla sua posizione iniziale],[\u{2713}],
  //Causality
  [TU-42],[Si verifica che l'_NPC_ che esce dall'appartamento corra verso l'obiettivo],[\u{2713}],
  [TU-43],[Si verifica che l'applicazione rilevi un cambio di dispositivo di Input],[\u{2713}],
  [TU-44],[Si verifica che l'applicazione mostri i rispettivi _input_ del dispositivo che si sta usando nella _UI_],[\u{2713}],
))

=== _Test_ di integrazione
#figure(caption: [_Test_ di integrazione], table(
  columns: (0.4fr, 1fr, 0.3fr),
  inset: 8pt,
  align: (x, y) => if (x == 0 and y > 0 and y < 7) { center + horizon } else { center + horizon },
  table.header([*Identificativo*], [*Descrizione*], [*Superato*]),
  //NPC
  [TI-01],[Si verifica che il personaggio non giocabile mostri il messaggio quando il giocatore si avvicina],[\u{2713}],
  [TI-02],[Si verifica che il personaggio non giocabile senza dialogo usi l'animazione per parlare quando il giocatore is avvicina],[\u{2713}],
  [TI-03],[Si verifica che il personaggio non giocabile con il dialogo usi l'animazione per salutare quando il giocatore is avvicina],[\u{2713}],
  [TI-04],[Si verifica che quando il giocatore preme il rispettivo _input_ vicino ad un'_entità_ con cui può interagire, lo stato nella macchina di stati passi a _Interact_],[\u{2713}],
  [TI-05],[Si verifica che quando il giocatore preme il rispettivo _input_ vicino a un cartello, ne visualizzi i contenuti],[\u{2713}],
  [TI-06],[Si verifica che quando il giocatore preme lo stesso _input_ durante un'interazione, smette di interagire con l'_entità_],[\u{2713}],
  [TI-07],[Si verifica che quando il giocatore preme il rispettivo _input_ vicino a un personaggio con un dialogo, il giocatore si ferma e visualizza il dialogo del personaggio],[\u{2713}],
  [TI-08],[Si verifica che quando il giocatore preme il rispettivo _input_ durante un dialogo, va avanti se esiste un messaggio successivo],[\u{2713}],
  [TI-09],[Si verifica che quando il giocatore preme il rispettivo _input_ durante un dialogo, finisce se non esiste un messaggio successivo],[\u{2713}],
  [TI-10],[Si verifica che quando il giocatore preme il rispettivo _input_ durante la scelta di un'opzione del dialogo, questa viene scelta ed il dialogo procede con il prossimo messaggio],[\u{2713}],
  [TI-11],[Si verifica che quando il giocatore smette di interagire con un'_entità_, lo stato nella macchina di stati del giocatore torna a "Idle"],[\u{2713}],
  //_LR_  
  [TI-12],[Si verifica che il prompt dell'_input_ da premere appaia quando il giocatore si posiziona sopra la piattaforma del cannone _LR_],[\u{2713}],
  [TI-13],[Si verifica che il giocatore interagisca con il cannone _LR_ quando preme il rispettivo tasto sopra la piattaforma],[\u{2713}],
  [TI-14],[Si verifica che il giocatore possa posizionare un punto sul grafico _LR_],[\u{2713}], 
  [TI-15],[Si verifica che il giocatore possa interrompere l'interazione con il cannone _LR_],[\u{2713}],                                              
  //DT
  [TI-16],[Si verifica che quando il giocatore si avvicina ad un oggetto che può raccogliere, viene mostrato sullo schermo il tasto da premere],[\u{2713}],
  [TI-17],[Si verifica che quando il giocatore raccoglie un oggetto, lo stato nella macchina di stati passi a _Grab_],[\u{2713}],
  [TI-18],[Si verifica che l'oggetto raccolto sia lo stesso che il giocatore sta portando],[\u{2713}],
  [TI-19],[Si verifica che il giocatore possa muoversi con l'oggetto],[\u{2713}],
  [TI-20],[Si verifica che il giocatore possa saltare con l'oggetto],[\u{2713}],
  [TI-21],[Si verifica che il giocatore può lasciare l'oggetto],[\u{2713}],
  [TI-22],[Si verifica che quando il giocatore lascia un oggetto, lo stato nella macchina di stati passi a _Release_],[\u{2713}],
  [TI-23],[Si verifica che l'oggetto rimanga nella posizione dove è stato lasciato],[\u{2713}],
  [TI-24],[Si verifica che le informazioni dei rami vengano visualizzate quando il giocatore si posiziona sopra un nodo dell'Albero di decisione],[\u{2713}],
  [TI-25],[Si verifica che il nodo riconosca se il cane posizionato sopra è corretto],[\u{2713}],
  [TI-26],[Si verifica che il nodo riconosca se il cane posizionato sopra è sbagliato],[\u{2713}],
  [TI-27],[Si verifica che il cartello con le razze di cani indovinate si aggiorni quando il giocatore dà una risposta corretta],[\u{2713}],
  //Causality
  [TI-28],[Si verifica che un'unità esterna di un condizionatore venga accesa quando il giocatore preme il rispettivo _input_ quando è vicino],[\u{2713}],
  [TI-29],[Si verifica che il grafico dei condizionatori usati venga aggiornato all'inizio del livello],[\u{2713}],
  [TI-30],[Si verifica che il grafico dei condizionatori usati venga aggiornato quando viene acceso un condizionatore],[\u{2713}],
  [TI-31],[Si verifica che la scena di intermezzo inizi quando il giocatore accende tutti i condizionatori nel livello _Causalità_],[\u{2713}],
  [TI-32],[Si verifica che i personaggi non giocabili che seguono un obiettivo, smettano di seguirlo quando entrano in una specifica area],[\u{2713}],
  [TI-33],[Si verifica che il personaggio _scienziato_ cambi dialogo quando vengono accese tutti i condizionatori nel livello _Causalità_],[\u{2713}],
  [TI-34],[Si verifica che il personaggio _gelataio_ cambi dialogo quando vengono accesi tutti i condizionatori nel livello _Causalità_],[\u{2713}],
  //Forgot
  [TI-35],[Si verifica che quando il giocatore si avvicina ad un _collezionabile_ di colore rosso, questo viene preso ed aumenta il rispettivo contatore],[\u{2713}],
  [TI-36],[Si verifica che quando il giocatore si avvicina ad un _collezionabile_ di colore verde, questo viene preso ed aumenta il rispettivo contatore],[\u{2713}],
  [TI-37],[Si verifica che quando il giocatore si avvicina ad un _collezionabile_ di colore blu, questo viene preso ed aumenta il rispettivo contatore],[\u{2713}],
  [TI-38],[Si verifica che quando il giocatore cade dal livello, torna in una zona dove si trovava precedentemente],[\u{2713}],
))
*/
#set page(footer-descent: -10%, footer: [#align(top, [#line(length: 100%)
*_VRAM_ - _Video Random Access Memory_*: tipo di memoria utilizzata dalle schede grafiche per memorizzare dati relativi alla grafica, come _texture_ o immagini.\ \
#align(center, context([#counter(page).display("1.")]))])])
/*
=== _Test_ di sistema
#figure(caption: [_Test_ di sistema], table(
  columns: (0.4fr, 1fr, 0.3fr),
  inset: 8pt,
  align: (x, y) => if (x == 0 and y > 0 and y < 7) { center + horizon } else { center + horizon },
  table.header([*Identificativo*], [*Descrizione*], [*Superato*]),
  "TS-01",[Si verifica che il gioco ricevi _input_ dalla tastiera],[\u{2713}],
  "TS-02",[Si verifica che il gioco riceva _input_ da un _joypad_ generico],[ \u{2713}],
  "TS-03",[Si verifica che il gioco mantenga almeno 30fps durante l'esecuzione (caricamenti esclusi)],[ \u{2713}],
  "TS-04",[Si verifica che il tempo tra un _frame_ e l'altro sia minore di 33.3 millisecondi durante l'esecuzione (caricamenti esclusi)],[ \u{2713}],
  "TS-05",[Si verifica che il tempo tra un _frame_ di fisica e l'altro rimanga costante a 16.67 millisecondi durante l'esecuzione (caricamenti esclusi)],[ \u{2713}],
  "TS-06",[Si verifica che l'uso della memoria video (#gl("vram")) non superi 500MB durante tutta l'esecuzione],[ \u{2713}],
  "TS-07",[Si verifica che l'uso della memoria statica non superi 200MB durante tutta l'esecuzione],[ \u{2713}],
  "TS-08",[Si verifica che il tempo necessario alla _CPU_ per caricare un _frame_ sia minore di 2 millisecondi],[ \u{2713}],
  "TS-09",[Si verifica che il tempo necessario alla _GPU_ per caricare un _frame_ sia inferiore a 33.3 millisecondi],[ \u{2713}],
  "TS-10",[Si verifica che non siano presenti nodi non utilizzati nella scena],[ \u{2713}],))
  */
#set page(footer-descent: 0%, footer: [
#align(center+horizon, context([#counter(page).display("1.")]))])
/*
=== _Test_ di accettazione
#figure(caption: [Tabella dei _test_ di accettazione], table(
  columns: (0.4fr, 1fr, 0.3fr),
  inset: 8pt,
  align: (x, y) => if (x == 0 and y > 0 and y < 7) { center + horizon } else { center + horizon },
  table.header([*Identificativo*], [*Descrizione*], [*Superato*]),
    [TA-01],[Si verifica che il gioco funzioni nel sistema operativo Linux],[\u{2713}],
    [TA-02],[Si verifica che il gioco funzioni nel sistema operativo Windows 11],[\u{2713}],
    [TA-03],[Si verifica che il gioco rilevi _input_ da tastiera],[\u{2713}],[TA-04],[Si verifica che il giocatore possa muoversi in uno spazio tridimensionale],[\u{2713}],
))
*/
== Risultati ottenuti
//_Qui descrivo i risultati raggiunti rispettivamente su piano qualitativo e quantitativo, con copertura dei requisiti, testing e quantità di prodotti_
//=== Prodotto finale
=== Meccaniche dei livelli
Di seguito vengono mostrate le meccaniche principali dei livelli.
#figure(caption: [Immagine del cannone _LR_ per posizionare nuovi punti nel grafico della Regressione lineare], image("../images/screenshot-cannon_lr.png", width: 90%))
#figure(caption: [Immagine dell'Albero di decisione con i possibili percorsi da seguire], image("../images/screenshot-decision_tree_1.png", width: 90%))
#figure(caption: [Immagine di un posizionamento corretto in un nodo finale dell'Albero di decisione], image("../images/screenshot-decision_tree_2.png"))
//#figure(caption: [Immagine del cartello che mostra le razze di cani indovinate nell'Albero di decisione], image("../images/screenshot-dog_breeds_sign.png"))
#figure(caption: [Immagine della scena di intermezzo del livello _Causalità_], image("../images/screenshot-cutscene.png"))
//#figure(caption: [Immagine presa dopo la scena di intermezzo], image("../images/screenshot-post_cutscene.png"))
//#figure(caption: [Immagine del grafico della temperatura, visualizzabile dopo la scena di intermezzo], image("../images/screenshot-graph.png"))
#figure(caption: [Immagine dell'_input_ da premere per aprire il dialogo di un _NPC_], image("../images/screenshot-project.png", width: auto))
#figure(caption: [Immagine di un dialogo con risposta multipla], image("../images/screenshot-scientist_text_2.png", width: auto))
/*
=== Dispositivi di _input_ nella _UI_
Il gioco supporta sia tastiera che _joypad_ come dispositivi di _input_, e aggiorna in tempo reale i simboli dei tasti da premere nelle guide della _UI_ in base al dispositivo che si sta utilizzando.
Di seguito vegono elencati i comandi del gioco per i due dispositivi:
#v(0.5em)
- *Tastiera*:
  - *WASD*: movimento del personaggio
  - *Frecce direzionali*: movimento telecamera / navigazione nei menu
  - *Barra spaziatrice*: salto
  - *E*: interazione
  - *Q*: stop interazione
  - *R*: reset (durante l'uso del cannone _LR_)
  - *Invio*: conferma nella _UI_
  - *Esc*: apertura/chiusura menu di pausa
#figure(caption: [Visualizzazione tasti della tastiera nel gioco], image("../images/screenshot-keyboard.png"))

Per il _joypad_, vengono elencati i tasti di un _joypad_ _Xbox_ generico, visto che è il _joypad_ più supportato per i giochi su PC.
#figure(caption: [Tasti _joypad_ _Xbox_. Fonte: _Microsoft_],image("../images/controller-diagram.png"))
- _*Joypad*_:
  - *Levetta analogica sinistra*: movimento del personaggio
  - *Levetta analogica destra*: movimento telecamera
  - *A*: salto / conferma nella _UI_
  - *B*: stop interazione
  - *X*: interazione
  - *Y*: reset (durante l'uso del cannone _LR_)
  - *D-Pad*: Navigazione nei menu
  - *Menu button*: apertura / chiusura del menù di pausa.

#figure(caption: [Visualizzazione tasti del _joypad_ nel gioco], image("../images/screenshot-joypad.png"))
In generale i _joypad_ sono sviluppati per essere usati con una _console_ proprietaria, e differiscono nei simboli mostrati sui tasti.
Per risolvere questo problema, durante la sessione di gioco, viene mostrata un'interfaccia universale dei tasti del _joypad_, indicandone la posizione piuttosto che la lettera o il simbolo.
=== Menu principale
#figure(caption: [Menu principale], image("../images/menu_principale.png",width:auto))
Appena avviato, il gioco mostrerà la schermata principale con le seguenti opzioni:
- *Carica partita*: disponibile solo se sono presenti dati di salvataggio, porta il giocatore al livello principale tenendo i progressi salvati nelle sessioni precedenti.
- *Nuova partita*: elimina tutti i dati di salvataggio, se presenti, ad eccezione dei dati delle opzioni, e porta il giocatore al livello principale.
- *Opzioni*: apre il menù delle opzioni dove il giocatore può modificare alcuni valori del gioco come la risoluzione della finestra, la qualità delle ombre e la lingua del gioco.
- *Esci dal gioco*: chiude il gioco.
=== Menu di pausa
#figure(image("../images/menu_pausa.png", width: auto), caption: [Menu di pausa])
Il menu di pausa è accessibile in qualsiasi momento durante un livello quando il giocatore è libero di muoversi.\
Premendo il tasto apposito, il gioco viene fermato e viene visualizzato il menu.\
Il giocatore può scegliere le seguenti azioni:
- *Riprendi*: riprende il gioco. Si può anche premere lo stesso tasto di pausa per eseguire questa azione.
- *Torna al livello hub*: disponibile solo se il giocatore non è già nel livello hub. Salva la partita e riporta il giocatore al livello principale.
- *Opzioni*: apre il menu delle opzioni.
- *Torna al menu principale*: salva la partita e porta il giocatore al menu principale.
- *Salva ed esci dal gioco*: salva la partita e chiude il gioco. Attenzione a non chiudere il gioco attraverso la toolbar della finestra o scorciatoie del sistema operativo (ad esempio _Alt+F4_), visto che questi metodi NON salvano automaticamente la partita.
=== Menu opzioni
#figure(caption: [Opzioni con valori predefiniti], image("../images/menu_opzioni.png",width:auto))
Il menu delle opzioni permette di cambiare alcuni valori del gioco, grafica e lingua.\
I valori predefini sono stati selezionati in modo da garantire un buon rapporto tra qualità dell'immagine e prestazioni.\
Quando il giocatore passa sopra una delle opzioni, viene fornita una sua breve descrizione sotto. Il giocatore può cambiare i seguenti valori:
- *Modalità finestra*: il giocatore può scegliere se giocare in modalità finestra o mettere il gioco a schermo intero occupando tutto lo spazio dello schermo.
- *Risoluzione finestra*: il giocatore può scegliere la risoluzione per quando gioca in modalità finestra, questa si adatterà alla scelta del giocatore. Cambiare questa opzione in modalità schermo intero non ha nessun effetto.
- *Scala risoluzione*: valore a cui la risoluzione del gioco viene moltiplicata. La differenza rispetto all'opzione precedente sta nel fatto che la finestra mantiene le dimensioni quando viene modificata. Utile se si sta giocando a schermo intero.
- *_FPS_ Massimi*: rappresenta il numero massimo di _frame_ in un secondo. Un valore più alto risulta in un video più fluido, ma richiede più risorse.\ Nota: questo valore non può superare la frequenza di aggiornamento dello schermo.
- *Anti-Aliasing*: tecnica che riduce l’effetto “scalettatura” (_aliasing_) sui bordi degli oggetti, rendendo le immagini più lisce e meno frastagliate.\ Offre le seguenti opzioni:
  - *Nessuno*: non viene applicata alcuna tecnica di _anti-aliasing_.
  - *FXAA*: _Fast Approximate Anti Aliasing_, tecnica di _anti-aliasing_ che applica un filtro rapido alle immagini per ridurre l’effetto “scalettatura” senza richiedere molta potenza di calcolo. Offre un buon compromesso tra qualità visiva e prestazioni.
  - *MSAA 2x*: _Multi-Sample Anti-Aliasing_ a 2 campioni. Tecnica che migliora la qualità dei bordi degli oggetti campionando ogni _pixel_ più volte e mediando i risultati, riducendo l’_aliasing_ con un impatto moderato sulle prestazioni.
  - *MSAA 4x*: _Multi-Sample Anti-Aliasing_ a 4 campioni. Tecnica che migliora molto la qualità dei bordi degli oggetti campionando ogni _pixel_ più volte e mediando i risultati, riducendo l’_aliasing_ con un impatto alto sulle prestazioni.
- *Qualità delle ombre*: Modifica la risoluzione delle ombre. Il valore va da _alto_ a _molto basso_, ovviamente, un valore _alto_ ha un impatto molto più significativo sulle prestazioni rispetto a _molto basso_.
- *Lingua*: cambia la lingua del gioco. La modifica viene applicata subito e non è necessario un riavvio del gioco.
*/
=== Copertura dei requisiti
#figure(
  caption: [Tabella con copertura requisiti],
  table(
    columns: (auto, auto, auto, auto,auto),
    inset: 8pt,
    align: center + horizon,
    table.header([*Tipologia*], [*Obbligatori*], [*Desiderabili*],[*Soddisfatti*],[*Totale*]),
    [Funzionali],[43],[10],[53],[53],
    [Qualità],[4],[-],[4],[4],
    [Accessibilità],[3],[3],[4],[6],
    table.cell(colspan: 3, [*Totale*]),[*61*],[*63*]))
La tabella mostra la copertura dei requisiti funzionali, di qualità e di accessibilità, con un totale di 63 requisiti.
/*Alcuni dei requisiti desiderabili non sono stati soddisfatti per i seguenti motivi:
#v(0.5em)
- *R-03-A-D*: nonostante _Godot_ permetta di compilare le applicazioni in un eseguibile per il sistema operativo MacOS, non ho potuto testare il gioco in una macchina con sistema operativo MacOS, quindi non potevo garantire il suo corretto funzionamento;
- *R-04-A-D*: sotto una certa risoluzione, gli elementi della _UI_ vengono tagliati dalla finestra, rendendo difficile la navigazione nei menu o leggere le istruzioni sugli _input_ da premere.*/
=== Copertura dei _test_
#figure(caption: [Tabella con copertura _test_ eseguiti], table(
  columns: (auto, auto, auto),
  inset: 8pt,
  align: center + horizon,
  table.header([*Tipologia*], [*Eseguiti*], [*Superati*]),
  [Unità],[44],[44],
  [Integrazione],[37],[37],
  [Sistema],[10],[10],
  [Accettazione],[4],[4],
  [*Totale*],[*95*],[*95*]
))

La tabella mostra il totale dei _test_ eseguiti, suddivisi per tipologia, con un totale di 95 _test_ eseguiti e superati con successo.

=== Quantità di prodotti
A fine _stage_ sono stati prodotti 8 documenti:
- Analisi dei requisiti;
- Glossario;
- Piano di progetto;
- Piano di qualifica;
- Manuale utente;
- Specifica tecnica.
#v(0.5em)
Inoltre, sono stati prodotte 2 applicazioni:
#figure(caption: [Tabella delle applicazioni prodotte nello _stage_], table(
  columns: (auto, auto),
  inset: 8pt,
  align: center + horizon,
  table.header([*Prodotto*], [*Descrizione*]),
  [PoC \ Proof of Concept],[Demo del progetto, che ha come scopo principale quello di dimostrare la fattibilità del concetto, implementando le funzionalità principali],
  [MVP \ Minimum Viable Product],[Versione minima del prodotto che si può considerare pronta per il rilascio. Rappresenta il prodotto finale dello _stage_ e include tutte le funzionalità principali richieste nel progetto],
))
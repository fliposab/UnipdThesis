#import "../config/thesis-config.typ": glpl, gl
#import "data/requirements_list.typ": *

#pagebreak(to:"odd")

= Il progetto<cap:analisi-requisiti>

#text(style: "italic", [
    In questo capitolo approfondisco tutti i processi del progetto: sviluppo, test e validazione. In pratica descrivo cosa ho fatto di preciso, e come l'ho svolto.
])
#v(1em)


/*== Tecnologie utilizzate
_Qui elenco tutte le tecnologie che ho usato_
/* */ */

/*== Analisi dei rischi
_Qui svolgo un'analisi dei rischi, con descrizione di quelli pianificati e come sono stati mitigati_
/* */*/
//== Documentazione
== Analisi dei rischi
== Analisi dei requisiti
//_Qui descrivo gli attori presenti e tutti i casi d'uso dell'applicazione_
=== Attori
Il gioco prevede un solo attore, il *giocatore*, cioè l'utente che interagisce con il videogioco, controllando il personaggio e prendendo decisioni durante il gioco.
#figure(image("../images/giocatore.png", width: 10%), caption: "Attore principale")

#set heading(supplement: none)
#let ap = [*Attori principali:*]
#let desc = [*Descrizione:*]
#let prec = [*Precondizioni:*]
#let posc = [*Postcondizioni:*]
#let scep = [*Scenario principale:*]
#let incl = [*Inclusioni:*]
#let ext = [*Estensioni:*]
#let gnr = [*Generalizzazioni:*]

=== Casi d'uso
#set heading(numbering: none)
==== UC1 - Movimento
#figure(image("../images/usecase/uc-movimento.png", width: 80%), caption: [Diagramma UML _use case_ sul movimento])
#desc il giocatore può muovere il personaggio in avanti, indietro, a sinistra e a destra utilizzando i tasti direzionali o i comandi di movimento del *joypad*.\
#prec Iil giocatore deve essere in un livello del gioco.\
#posc il personaggio si muove nella direzione desiderata e interagisce con l'ambiente circostante.\
/**Scenario principale*:\
- Il giocatore preme il tasto o muove la levetta nel *joypad*.
- Il personaggio si muove nella direzione desiderata.*/
#incl Rotazione telecamera automatica.\
#gnr Movimento con oggetto.\

==== UC1.1 - Movimento con oggetto
#desc il giocatore può muovere il personaggio in avanti, indietro, a sinistra e a destra, mentre sta portando un oggetto, utilizzando lo stick analogico sinistro del joypad.\
#prec il giocatore deve essere in un livello del gioco e ha un oggetto con sé.\
#posc il personaggio si muove nella direzione desiderata e sposta con sé l'oggetto.\

==== UC2 - Salto
#figure(image("../images/usecase/uc-salto.png", width: 60%), caption: [Diagramma UML _use case_ sul salto])
#desc il giocatore può far saltare il personaggio utilizzando un tasto specifico.\
#prec il giocatore deve essere in un livello del gioco e deve essere libero di muoversi.\
#posc il personaggio esegue il salto.\
#gnr Salto con oggetto.\

// UC3 - Rotazione telecamera
==== UC3 - Rotazione telecamera
#figure(image("../images/usecase/uc-rotazione_telecamera.png", width: 70%), caption: "Rotazione telecamera")
#desc il giocatore può ruotare la telecamera attorno al personaggio utilizzando i comandi del mouse o del _joypad_.\
#prec il giocatore deve essere in un livello del gioco.\
#posc la telecamera si muove attorno al personaggio, cambiando l'angolo di visualizzazione.\
#gnr - Rotazione telecamera manuale;\
#h(8.82em) \- Rotazione telecamera automatica.

==== UC3.1 - Rotazione telecamera manuale
#desc il giocatore può ruotare la telecamera attorno al personaggio utilizzando i comandi del mouse o del _joypad_.\
#prec il giocatore deve essere in un livello del gioco.\
#posc la telecamera si muove attorno al personaggio, cambiando l'angolo di visualizzazione.

==== UC3.2 - Rotazione telecamera automatica
#desc la telecamera può modificare la sua posizione e rotazione per inquandrare ciò che c'è davanti al personaggio.\
#prec il giocatore deve essere in un livello del gioco.\
#posc la telecamera si muove attorno al personaggio, cambiando l'angolo di visualizzazione.

// UC4 - Caduta
==== UC4 - Caduta
#figure(image("../images/usecase/uc-caduta.png", width: 60%), caption: "Caduta")
#desc il giocatore cade dal livello e viene riportato in una zona dove si trovava prima.\
#prec il giocatore deve essere in un livello del gioco e deve entrare in un'area di caduta.\
#posc: il giocatore torna dove era prima di cadere.\
#incl Riposizionamento.

// UC5 - Riposizionamento
==== UC5 - Riposizionamento
#desc il giocatore viene posizionato in una certa zona del livello.\
#prec il giocatore deve essere in un livello del gioco.\
#posc il giocatore viene riposizionato.\

// UC6 - Raccolta collezionabile
==== UC6 - Raccolta _collezionabile_
#figure(image("../images/usecase/uc-raccolta_collezionabile.png", width: 50%), caption: "Raccolta collezionabile")
#desc il giocatore può raccogliere oggetti _collezionabili_ presenti nel livello quando si avvicina.\
#prec il giocatore deve essere in un livello del gioco e deve esserci un oggetto collezionabile nelle vicinanze.\
#posc il numero di collezionabili sale di un certo valore.\

// UC7 - Interazione con entità
==== UC7 - Interazione con entità
#figure(image("../images/usecase/uc-interazione.png", width: 60%), caption: "Interazione entità")
#desc il giocatore si avvicina a un'_entità_ e vede un messaggio.\
#prec il giocatore deve essere vicino ad un'entità.\
#posc l'entità mostra un messaggio.\
#gnr - Interazione con un'entità automatica.\
#h(8.82em)\- Interazione con un'entità manuale.

==== UC7.1 - Interazione con entità automatica
#figure(image("../images/usecase/uc-interazione_automatica.png", width: 60%), caption: "Interazione entità automatica")
#desc il giocatore si avvicina a un'entità.\
#prec il giocatore deve essere vicino ad un'entità.\
#posc il giocatore interagisce con l'entità.\
#gnr - Raccolta collezionabile.\
#h(8.82em) \- Visualizzazione messaggio.

==== UC7.1.1 - Visualizzazione messaggio
#desc il giocatore vuole visualizzare il messaggio di un'entità del gioco.\
#prec il giocatore deve essere lontano dall'entità.\
#posc il giocatore visualizza il messaggio. \

==== UC7.2 - Interazione con entità manuale
#figure(image("../images/usecase/uc-interazione_manuale.png", width: 90%), caption: "Interazione manuale")
#desc il giocatore si avvicina a un'entità e vede l'input che deve premere per interagire.\
#prec il giocatore deve essere vicino ad un'entità.\
#posc il giocatore ha premuto l'input per interagire.\
#incl Visualizzazione messaggio.\
#gnr - Interazione con personaggio non giocabile.\
#h(8.82em) - Prendere un oggetto.\
#h(8.82em) - Interazione con un cartello.\
#h(8.82em) - Interazione con zona di transizione.\
#h(8.82em) - Interazione con macchina LR.\
#h(8.82em) - Accensione unità esterna condizionatore.\

// UC8 - Interazione con personaggio non giocabile
==== UC8 - Interazione con personaggio non giocabile
#figure(image("../images/usecase/uc-dialogo.png", width: 70%), caption: "Interazione personaggio non giocabile")
#desc il giocatore si avvicina a un personaggio non giocabile e vede l'input che deve premere per interagire.\
#prec il giocatore deve essere vicino a un personaggio non giocabile.\
#posc il giocatore ha premuto l'input per interagire.\
#incl Visualizzazione dialogo.\

==== UC8.1 - Visualizzazione dialogo
#desc il giocatore visualizza il dialogo mostrato dall'entità.\
#prec il giocatore ha premuto l'input per interagire con l'entità.\
#posc l'entità mostra il dialogo mentre il giocatore non può muoversi.\

==== UC8.2 - Scelta opzione dialogo
#desc il giocatore deve scegliere un'opzione per andare avanti nel dialogo.\
#prec il giocatore deve essere in un dialogo e visualizza le opzioni tra cui scegliere.\
#posc il giocatore ha scelto l'opzione ed il dialogo finisce.\
#incl Avanti nel dialogo.\

==== UC8.3 - Avanti nel dialogo
#desc il giocatore vuole continuare il dialogo.\
#prec il giocatore ha premuto l'input per andare avanti nel dialogo.\
#posc viene mostrato il messaggio successivo del dialogo.\
#ext Fine interazione.\

==== UC8.4 - Fine interazione
#figure(image("../images/usecase/uc-fine_interazione.png", width: 50%), caption: "Fine interazione")
#desc il giocatore vuole terminare l'interazione.\
#prec il giocatore sta interagendo con un'entità.\
#posc - il giocatore preme l'input, smette di interagire con l'entità e può muoversi di nuovo.

// UC9 - Prendere un oggetto
==== UC9 - Prendere un oggetto
#figure(image("../images/usecase/uc-prendere_oggetto.png", width: 40%), caption: "Prendere un oggetto")
#desc il giocatore può prendere un oggetto e poi muoversi con esso.\
#prec il giocatore deve essere in un livello del gioco e deve esserci un oggetto che può raccogliere davanti ad esso.\
#posc il giocatore interagisce con l'oggetto.\

// UC10 - Lasciare un oggetto
==== UC10 - Lasciare un oggetto
#figure(image("../images/usecase/uc-lasciare_oggetto.png", width: 60%), caption: "Lasciare un oggetto")
#desc
- Il giocatore può lasciare un oggetto.
#prec
- Il giocatore deve essere in un livello del gioco.
- Il giocatore sta portando un oggetto.
#posc
- Il giocatore lascia l'oggetto.
- L'oggetto rimane nella posizione lasciato.
*Scenario principale*:
- Il giocatore preme lo stesso tasto con cui ha raccolto l'oggetto.
- Il giocatore lascia l'oggetto.
#ext
- Inserimento oggetto nello spazio dedicato.

// UC11 - Interazione con un cartello
==== UC11 - Interazione con un cartello
#figure(image("../images/usecase/uc-interazione_cartello.png", width: 90%), caption: "Interazione cartello")
*Attori principali*:
- Giocatore.
#desc
- Il giocatore si avvicina a un cartello e vede l'input che deve premere per interagire.
#prec
- Il giocatore deve essere vicino a un cartello.
#posc
- Il giocatore ha premuto il tasto.
*Scenario principale*:
- Il giocatore preme il tasto per interagire con il cartello.
- Il giocatore visualizza il messaggio del cartello.
#incl
- Visualizzazione messaggio cartello.

==== UC11.1 - Visualizzazione messaggio cartello
*Attori principali*:
- Giocatore.
#desc
- Il giocatore visualizza il messaggio del cartello.
#prec
- Il giocatore deve aver interagito con un cartello.
#posc
- Il giocatore visualizza il messaggio del cartello.
*Scenario principale*:
- Il giocatore preme il tasto per interagire con il cartello.
- Il giocatore visualizza il messaggio del cartello.
#gnr
- Visualizzazione classificazioni oggetti scoperti.
- Visualizzazione grafico.

==== UC11.2 - Visualizzazione classificazioni oggetti scoperti
*Attori principali*: 
- Giocatore.
#desc
- Il giocatore vuole visualizzare tutte le classificazioni degli oggetti che è riuscito ad indovinare nel livello.
#prec
- Il giocatore è dentro il livello del Decision Tree.
- Il livello deve contenere un Decision Tree.
#posc
- Il giocatore visualizza le classificazioni degli oggetti scoperti.
*Scenario principale*:
- Il giocatore visualizza le classificazioni degli oggetti scoperti.
#ext
- Fine interazione.

==== UC11.3 - Visualizzazione grafico
*Attori principali*: 
- Giocatore.
#desc
- Il giocatore vuole visualizzare un grafico presente in un cartello.
#prec
- Il giocatore deve avere interagito con un cartello.
#posc
- Il giocatore visualizza il grafico.
*Scenario principale*:
- Il giocatore visualizza il grafico.
#ext
- Fine interazione.

==== UC11.4 - Aggiornamento dato di un cartello
*Attori principali*: 
- Giocatore.
#desc
- Un dato di un cartello può essere modificato in base a determinate azioni del giocatore all'interno del livello.
#prec
- Il giocatore ed il cartello devono essere nello stesso livello.
#posc
- Il dato del cartello viene aggiornato.
*Scenario principale*:
- Il giocatore svolge una determinata azione che modifica il dato del cartello.
- Il dato nel cartello viene modificato.

// UC12 - Interazione con zona di transizione
==== UC12 - Interazione con zona di transizione
#figure(image("../images/usecase/uc-transizione.png", width: 80%), caption: "Interazione zona di transizione")
*Attori principali*: 
- Giocatore.
#desc
- Il giocatore si avvicina a una zona di transizione per cambiare livello.
#prec
- Il giocatore deve essere in un livello del gioco.
#posc
- Il giocatore ha premuto il tasto.
*Scenario principale*:
- Il giocatore si avvicina alla zona di transizione.
- Il giocatore preme il tasto per interagire.

==== UC12.1 - Transizione scena
*Attori principali*: 
- Giocatore
#desc
- Il giocatore cambia livello.
#prec
- Il giocatore deve aver interagito con un'area di transizione.
#posc
- Il giocatore è nel nuovo livello.
*Scenario principale*:
- Dopo aver premuto il tasto, avviene una transizione.
- Dopo la transizione, il giocatore si trova nel nuovo livello.
#incl
- Salvataggio.

// UC13 - Interazione con macchina LR
==== UC13 - Interazione con macchina LR
#figure(image("../images/usecase/uc-macchina_lr.png", width: 60%), caption: "Interazione con macchina LR")
*Attori principali*: 
- Giocatore
#desc
- Il giocatore vuole interagire con la macchina per posizionare dei punti sul grafico _LR_.
#prec
- Il giocatore deve trovarsi in un'area per interagire con la macchina.
#posc
- Il giocatore può usare la macchina.
*Scenario principale*:
- Il giocatore entra in una zona per interagire con la macchina.
- Il giocatore preme il tasto "interagisci".
- Il giocatore usa la macchina.

// UC14 - Inserimento punto nel grafico LR
==== UC14 - Inserimento punto nel grafico LR
*Attori principali*: 
- Giocatore
#desc
- Il giocatore vuole posizionare un punto sul grafico LR.
#prec
- Il giocatore deve essere in utilizzo di una macchina LR.
#posc
- Il punto viene posizionato sul grafico.
*Scenario principale*:
- Il giocatore mire dove vuole posizionare il punto.
- Il giocatore preme il tasto "Interagisci".
- Il punto viene posizionato e la retta del grafico viene aggiornata.

// UC15 - Reset punti aggiunti nel grafico LR
==== UC15 - Reset punti aggiunti nel grafico LR
*Attori principali*: 
- Giocatore
#desc
- Il giocatore vuole togliere i punti da lui aggiunti nel grafico.
#prec
- Il giocatore deve essere in utilizzo di una macchina LR.
#posc
- I punti aggiunti dal giocatore vengono tolti
*Scenario principale*:
- Il giocatore preme il tasto "Reset".
- I punti aggiunti dal giocatore vengono tolti e la retta del grafico viene aggiornata.

==== UC16 - Posizionamento sopra un nodo dell'albero di decisione
#figure(image("../images/usecase/uc-nodo_albero.png", width: 70%), caption: "Scelte albero di decisione")
*Attori principali*:
- Giocatore.
#desc
- Il giocatore vuole posizionarsi sopra un nodo dell'albero di decisione.
#prec
- Il giocatore deve essere in un livello del gioco.
- Deve essere presente un albero di decisione nel livello.
#posc
- Il giocatore è posizionato sopra un nodo dell'albero di decisione.
*Scenario principale*:
- Il giocatore si muove verso il nodo scelto.
- Il giocatore si posiziona sopra il nodo.
#ext
- Visualizzazione delle scelte sul nodo.

==== UC16.1 - Visualizzazione scelte sul nodo
*Attori principali*: 
- Giocatore.
#desc
- Il giocatore vuole proseguire nell'albero di decisione.
#prec
- Il giocatore deve essere sopra un nodo dell'albero di decisione.
#posc
- Il giocatore sceglie la direzione in base alle scelte disponibili.
*Scenario principale*:
- Il giocatore si posiziona sopra un nodo dell'albero di decisione.
- Il giocatore vede le scelte disponibili.
- Il giocatore sceglie una direzione.

// UC17 - Inserimento dell’oggetto nello spazio dedicato
==== UC17 - Inserimento dell’oggetto nello spazio dedicato
#figure(image("../images/usecase/uc-inserimento_spazio.png", width: 90%), caption: "Inserimento dell’oggetto nello spazio dedicato")
*Attori principali*: 
- Giocatore.
#desc
- Il giocatore posiziona l'oggetto che sta portando in uno spazio apposito.
#prec
- Il giocatore deve portare un oggetto.
#posc
- Se l'oggetto è giusto, il nuovo oggetto viene mostrato nella visualizzazione delle classificazioni degli oggetti scoperti.
*Scenario principale*:
- Il giocatore lascia l'oggetto in una zona speciale.
#gnr
- Inserimento nello spazio corretto.
- Inserimento nello spazio sbagliato.

==== UC17.1 - Inserimento nello spazio corretto
*Attori principali*: 
- Giocatore.
#desc
- Il giocatore posiziona l'oggetto nello spazio corretto.
#prec
- Il giocatore deve portare un oggetto.
#posc
- L'oggetto viene mostrato nella visualizzazione delle classificazioni degli oggetti scoperti.
*Scenario principale*:
- Il giocatore lascia l'oggetto nello spazio corretto.
#incl
- Salvataggio.

==== UC17.2 - Inserimento nello spazio sbagliato
*Attori principali*: 
- Giocatore.
#desc
- Il giocatore posiziona l'oggetto nello spazio sbagliato.
#prec
- Il giocatore deve portare un oggetto.
#posc
- L'oggetto non viene mostrato nella visualizzazione delle classificazioni degli oggetti scoperti.
*Scenario principale*:
- Il giocatore lascia l'oggetto nello spazio sbagliato.

==== UC18 - Salvataggio
*Attori principali*: 
- Giocatore.
#desc 
- Il gioco salva in automatico in momenti specifici.
#prec 
- Il giocatore deve essere in un livello del gioco.
#posc 
- La partita viene salvata e il giocatore può riprendere da quel punto in un secondo momento.
*Scenario principale*:
- Il giocatore passa in una zona di transizione.
- Il gioco salva i dati.

#set heading(numbering: "1.")
=== Requisiti
In questa sezione vengono elencati i requisiti del progetto, individuati durante la fase di analisi. Ogni requisito viene
identificato da un codice, scelto in base ai seguenti parametri:
#align(center, [*R - [numero] - [tipo] - [priorità]*])
con:
- *Numero*: numero progressivo che identifica il requisito, parte da 01.
- *Tipo*: può essere
  - *F*: requisito funzionale, indica una funzionalità del sistema;
  - *Q*: requisito di qualità, definisce le caratteristiche della qualità del prodotto, come un sistema deve essere o come il sistema deve esibirsi, per soddisfare le esigenze dell'utente;
  /*- *V*: requisito deciso con il tutor aziendale e vincolante per il completamento del progetto;*/
  - *A*: requisito di accessibilità, indica una funzionalità da soddisfare per rendere il gioco accessibile ad un numero maggiore di utenti.
- *Priorità*: può essere
  - *O*: Obbligatorio e necessario per considerare il prodotto completo;
  - *D*: Desiderabile, non strettamente necessario ma è un valore aggiunto;
Infine, nella sezione fonte, viene scritto se il requisito è stato deciso dallo studente o tramite una discussione con il tutor aziendale.

=== Lista dei requisiti
#show figure: set block(breakable: true)
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

#show figure: set block(breakable: false)
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
    "La piattaforma deve essere responsive e funzionare correttamente su dispositivi desktop con risoluzione minima di 640x360px",
    "R-05-A-O"," Il gioco deve mostrare gli input del dispositivo che si sta usando"
  ),
)
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
=== Concetti chiave di _Godot_
==== Nodi
Dalla documentazione di Godot:\
I nodi sono i blocchi fondamentali del gioco. Sono come ingredienti in 
una ricetta. Ci sono dozzine di tipi che possono mostrare un’immagine, 
riprodurre un suono, rappresentare una camera, e molto altro.
Tutti i nodi hanno le seguenti caratteristiche:
- un nome;
- proprietà modificabili;
- ricevono callback per aggiornarsi ad ogni frame;
- si possono estendere con nuove proprietà e funzioni;
- si possono aggiungere a un altro nodo come figlio. @godot-node
Inoltre ad ogni nodo si può assegnare uno script, che estende il 
tipo di quel nodo e aggiunge nuove funzionalità.\
I principali tipi di nodi che vengono utilizzati in questo progetto sono:
- *Node*: nodo base da cui vengono estesi tutti gli altri nodi, in questo progetto viene usato per assegnare classi e inserirli come figli in altri nodi.
- *Node3D*: rappresenta un oggetto nello spazio tridimensionale.
  - *CharacterBody3D*: rappresenta un personaggio che si può muovere nel gioco, gestendo la sua posizione e interazioni.
  - *Camera3D*: rappresenta una telecamera nello spazio tridimensionale, che può essere utilizzata per visualizzare la scena.
  - *MeshInstance3D*: rappresenta un oggetto tridimensionale con un _mesh_, che può essere utilizzato per visualizzare modelli 3D.
  - *CollisionShape3D*: rappresenta una forma di collisione nello spazio tridimensionale, utilizzata per gestire le interazioni fisiche tra gli oggetti.
  - *Area3D*: rappresenta un'area nello spazio tridimensionale, utilizzata per gestire le interazioni tra gli oggetti all'interno di essa.
- *AnimationPlayer*: gestisce le animazioni degli oggetti nella scena, permettendo di riprodurre animazioni sul mesh, telecamere e altri nodi.
- *Control*: rappresenta un nodo di interfaccia utente, utilizzato per gestire gli elementi dell'interfaccia grafica del gioco.
==== Scene
Quando organizzi nodi in un albero, come il nostro personaggio, possiamo chiamare questa formazione una scena. Una volta salvata, la scena si presenta come un nuovo nodo nell’editor, dove possiamo aggiungerlo come figlio di un nodo esistente. In questo caso, l’istanza della scena appare come nodo singolo con interni nascosti.
Le scene di consentono di strutturare il codice del gioco in qualunque modo tu voglia. Puoi comporre nodi per creare nodi personalizzati e complessi, come un personaggio di gioco che si muove e salta, una barra della vita, una cesta con cui puoi interagire, e molto altro. @godot-node
#figure(caption: [_Scena_ del personaggio del giocatore], 
image("../images/godot-scene_example.png"))
Oltre che a comportarsi come nodi, le scene hanno anche le seguenti caratteristiche:
- Hanno sempre un nodo _owner_, come il "Player" nel nostro esempio.
- Si possono salvare sul disco locale e caricarle in seguito.
- Si possono creare quante più istanze di una scena si desideri. Ad esempio, si possono avere cinque o dieci personaggi nel gioco, creati da una determinata scena.

==== Segnali
I segnali sono un modo per far comunicare i nodi in maniera asincrona in Godot. Ogni classe presenta dei segnali preimpostati ed emessi in determinati momenti, ad esempio quando un nodo viene caricato, questo emette il segnale _ready_, oppure quando un bottone viene premuto, viene emesso il segnale _pressed_.\
I segnali inoltre possono anche contenere dei parametri, che possono essere utilizzati per passare informazioni tra i nodi.\
Infine, si possono creare segnali personalizzati, che possono essere emessi in qualsiasi momento dal nodo che li ha definiti tramite il metodo _signal.emit(...)_.\
Ci sono due modi per collegare un segnale ad un altro nodo:
- tramite l'editor: selezionando il nodo che emette il segnale e trascinandolo sul nodo che deve ricevere il segnale, e selezionando il metodo che deve essere chiamato quando il segnale viene emesso;
- tramite codice: utilizzando il metodo _signal.connect(Callable)_ del nodo che emette il segnale, passando come parametro il nome del segnale e il nodo che deve ricevere il segnale, e il metodo che deve essere chiamato quando il segnale viene emesso.

=== Funzioni comuni
Molte classi del progetto presentano delle funzioni virtuali comuni, che vengono fornite dalle classi base del motore di gioco:\
#v(0.5em)
_`+ready(): void`_\
Questa funzione viene chiamata quando il nodo entra nella scena, ovvero quando tutti i nodi figli sono stati caricati e il nodo è pronto per essere utilizzato.\
In questa funzione è possibile inizializzare le variabili, collegare i segnali e impostare le proprietà del nodo.\
È importante notare che questa funzione viene chiamata solo una volta, quando il nodo viene caricato per la prima volta nella scena, e non ad ogni [frame] del gioco.
#v(0.5em)
_`+process(delta: float): void`_\
Questa funzione viene chiamata ad ogni frame del gioco e permette di aggiornare lo stato della classe, ad ogni frame. 
Il parametro _delta_ rappresenta il tempo trascorso dall'ultimo frame, ed è utile per gestire le animazioni e le interazioni in modo fluido e coerente. @godot-process
#v(0.5em)
_`+physics_process(delta: float): void`_\
Questa funzione viene chiamata ad ogni frame di fisica del gioco, che di default è fisso 60 volte al secondo, anche nel caso il numero di frame al secondo del gioco sia inferiore.\
Questa funzione è utile per gestire le interazioni fisiche tra gli oggetti, come ad esempio la gestione delle collisioni e la gestione della gravità.\
Il parametro _delta_ rappresenta il tempo trascorso dall'ultimo frame di fisica. @godot-process
#v(0.5em)
_`+input(event: InputEvent): void`_\
Funzione chiamata ogni volta che il gioco rileva un qualsiasi input, sia da tastiera che da joystick. Il parametro _event_ rappresenta l'input che chiama la funzione.

=== Classi del giocatore
==== _Player_
#figure(caption: [Diagramma _UML_ delle classi del giocatore],image("../images/classi/class-player.png", width: auto))
Il giocatore può essere considerata la classe principale di tutta l'applicazione, attraverso il quale l'utente può interagire con la maggior parte dell'applicazione.\ Nonostante ci sia solo un giocatore presente del gioco, questo non è un [singleton], poiché per implementare un singleton in Godot è richiesto che questo sia caricato come [autoload] in ogni scena, e non c'è motivo di caricare il giocatore nel menu principale, all'avvio del gioco.

Molte variabili presenti nel giocatore sono riferimenti ai suoi nodi figli presenti nella scena, queste variabili sono precedute dalla parola chiave _\@onready_ nel codice.
Similmente, molte funzioni della classe servono solo per accedere alle variabili dei suoi nodi figli.

La classe del giocatore ha associate delle classi che offrono funzionalità diverse.
//==== _Movement_
==== _CameraRaycast_
#figure(caption: [Diagramma _UML_ delle classi della telecamera del giocatore],image("../images/classi/class-camera.png"))
==== _StateMachine_
#figure(caption: [Diagramma _UML_ sulla struttura della macchina di stati],image("../images/classi/class-state_machine.png"))\
\
#figure(caption: [Diagramma sul flusso degli stati del giocatore], image("../images/sm-player_states.png", width: 80%))
//==== _PlayerSavesHandler_
//==== _GrabItem_
//==== _ParticleEmitter_
//==== _PlayerUI_

=== _Interactable_
#figure(caption: [Diagramma _UML_ degli oggetti con cui il giocatore può interagire],image("../images/classi/class-interactable.png"))
Nei livelli sono presenti diverse entità con cui il giocatore può interagire. Di seguito vengono descritte i diversi tipi di entità, e le classi che le compongono.

=== _Level_
Ogni livello viene creato con le seguenti classi:
#figure(caption: [Diagramma delle classi di un livello base],image("../images/classi/class-base_level.png", width: auto))

=== Livello _Regressione lineare_
#figure(caption: [Diagramma sul funzionamento di un grafico _Linear Regression_ nel gioco],image("../images/classi/class-linear_regression.png"))
=== Livello _Albero di decisione_
#figure(caption: [Diagramma sul funzionamento dell'Albero di decisione],image("../images/classi/class-decision_tree_level.png", width: auto))

=== Livello _Causalità_
#figure(caption: [Diagramma del livello  _Causalità_],image("../images/classi/class-causality_level.png"))
/**/
== Verifica e validazione
_Qui descrivo i test svolti, divisi per tipo_
=== Test di unità
#figure(caption: [Test di unità], table(
  columns: (auto, auto, auto),
  inset: 8pt,
  align: (x, y) => if (x == 0 and y > 0 and y < 7) { center + horizon } else { center + horizon },
  table.header([*Identificativo*], [*Descrizione*], [*Superato*]),
  //giocatore
  [TU-01],[Si verifica che il giocatore stia su una piattaforma con velocità pari a zero],[\u{2713}],
  [TU-02],[Si verifica che se il giocatore è fermo su una piattaforma, il suo stato nella macchina di stati è _Idle_],[\u{2713}],
  [TU-03],[Si verifica che quando il giocatore è fermo su una piattaforma, utilizza l'animazione _idle_],[\u{2713}],
  [TU-04],[Si verifica che la rotazione iniziale sull'asse y della telecamera è la stessa del giocatore],[\u{2713}],
  [TU-05],[Si verifica che la telecamera ruoti intorno al giocatore quando viene premuto il rispettivo tasto],[\u{2713}],
  [TU-06],[Si verifica che il giocatore si muovi ad una determinata velocità quando viene premuto il rispettivo tasto],[\u{2713}],
  [TU-07],[Si verifica che se il giocatore si muove su una piattaforma, il suo stato nella macchina di stati è "GroundMove"],[\u{2713}],
  [TU-08],[Si verifica che quando il giocatore si muove su una piattaforma, utilizza l'animazione della corsa],[\u{2713}],
  [TU-09],[Si verifica che quando il giocatore si muove, la telecamera ruota automaticamente],[\u{2713}],
  [TU-10],[Si verifica che quando il giocatore salti quando viene premuto il rispettivo tasto],[\u{2713}],
  [TU-11],[Si verifica che quando il giocatore salta, lo stato nella macchina di stati cambia a "Air"],[\u{2713}],
  [TU-12],[Si verifica che quando il giocatore salta utilizza l'animazione del salto],[\u{2713}],
  [TU-13],[Si verifica che quando il giocatore cade da una piattaforma, con velocità verticale negativa, lo stato nella macchina di stati sia "Air"],[\u{2713}],
  [TU-14],[Si verifica che quando il giocatore cade da una piattaforma, con velocità verticale negativa, utilizzi l'animazione della caduta],[\u{2713}],
  //Pausa
  [TU-15],[Si verifica che il menu di pausa venga visualizzato quando viene premuto il rispettivo tasto],[\u{2713}],
  [TU-16],[Si verifica che quando viene aperto il menu di pausa, l'applicazione viene messa in pausa],[\u{2713}],
  [TU-17],[Si verifica che quando viene premuto il tasto "riprendi", il menu di pausa viene nascosto e viene ripresa l'esecuzione],[\u{2713}],
  [TU-18],[Si verifica che quando viene premuto lo stesso tasto quando il menu di pausa è aperto, questo viene nascosto e viene ripresa l'esecuzione],[\u{2713}],
  [TU-19],[Si verifica che quando viene premuto il tasto delle opzioni, venga aperto il menu di opzioni],[\u{2713}],
  [TU-20],[Si verifica che quando viene premuto il tasto "Ritorna alla hub", il giocatore viene riportato al livello Hub],[\u{2713}],
  [TU-21],[Si verifica che quando viene premuto il tasto del menu principale, il giocatore viene riportato al menu principale],[\u{2713}],
  [TU-22],[Si verifica che il gioco venga chiuso quando viene premuto il bottone "Esci dal gioco"],[\u{2713}],
  //Opzioni
  [TU-23],[Si verifica che viene cambiata la modalità della finestra quando viene premuto il rispettivo bottone nel menu opzioni],[\u{2713}],
  [TU-24],[Si verifica che viene cambiata la risoluzione della finestra quando viene premuto il rispettivo bottone nel menu opzioni],[\u{2713}],
  [TU-25],[Si verifica che viene cambiata la scala di risoluzione quando viene premuto il rispettivo bottone nel menu opzioni],[\u{2713}],
  [TU-26],[Si verifica che viene cambiato il valore del volume quando viene premuto il rispettivo bottone nel menu opzioni],[\u{2713}],
  [TU-27],[Si verifica che viene cambiato il valore massimo degli FPS quando viene premuto il rispettivo bottone nel menu opzioni],[\u{2713}],
  [TU-28],[Si verifica che viene cambiato il metodo di Anti Aliasing quando viene premuto il rispettivo bottone nel menu opzioni],[\u{2713}],
  [TU-29],[Si verifica che viene cambiata la qualità/risoluzione delle ombre quando viene premuto il rispettivo bottone nel menu opzioni],[\u{2713}],
  [TU-30],[Si verifica che viene cambiata la lingua del gioco quando viene premuto il rispettivo bottone nel menu opzioni],[\u{2713}],
  [TU-31],[Si verifica che vengano salvati i nuovi valori delle opzioni quando viene premuto il rispettivo bottone nel menu opzioni],[\u{2713}],
  //Menu principale
  [TU-32],[Si verifica che venga caricato il gioco con i salvataggi esistenti quando viene premuto il bottone "Carica partita"],[\u{2713}],
  [TU-33],[Si verifica che venga caricata una nuova partita, cancellando i dati di salvataggio esistenti, quando viene premuto il bottone "Nuova partita"],[\u{2713}],
  //NPC
  [TU-34],[Si verifica che il messaggio del personaggio non giocabile venga nascosto quando il giocatore non è vicino],[\u{2713}],
  [TU-35],[Si verifica che il personaggio non giocabile, sia con dialogo che senza dialogo, usi l'animazione "idle" quando il giocatore non è vicino],[\u{2713}],
  //LR
  [TU-36],[Si verifica che il grafico orizzontale venga caricato con la giusta rotazione],[\u{2713}],
  [TU-37],[Si verifica che la linea del grafico orizzontale cambi correttamente con l'aggiunta di un punto],[\u{2713}],
  [TU-38],[Si verifica che il grafico verticale venga caricato con la giusta rotazione],[\u{2713}],
  [TU-39],[Si verifica che la linea del grafico verticale cambi correttamente con l'aggiunta di un punto],[\u{2713}],
  [TU-40],[Si verifica che il grafico possa eliminare i punti aggiunti, resettando la linea],[\u{2713}],  
  //Decision Tree
  [TU-41],[Si verifica che un cane possa ritornare alla sua posizione iniziale],[\u{2713}],
  //Causality
  [TU-42],[Si verifica che l'NPC che esce dall'appartamento corra verso l'obiettivo],[\u{2713}],
  [TU-43],[Si verifica che l'applicazione rilevi un cambio di dispositivo di Input],[\u{2713}],
  [TU-44],[Si verifica che l'applicazione mostri i rispettivi input del dispositivo che si sta usando nella UI],[\u{2713}],
))

=== Test di integrazione
#figure(caption: [Test di integrazione], table(
  columns: (0.4fr, 1fr, 0.3fr),
  inset: 8pt,
  align: (x, y) => if (x == 0 and y > 0 and y < 7) { center + horizon } else { center + horizon },
  table.header([*Identificativo*], [*Descrizione*], [*Superato*]),
  //NPC
  [TI-01],[Si verifica che il personaggio non giocabile mostri il messaggio quando il giocatore si avvicina],[\u{2713}],
  [TI-02],[Si verifica che il personaggio non giocabile senza dialogo usi l'animazione per parlare quando il giocatore is avvicina],[\u{2713}],
  [TI-03],[Si verifica che il personaggio non giocabile con il dialogo usi l'animazione per salutare quando il giocatore is avvicina],[\u{2713}],
  [TI-04],[Si verifica che quando il giocatore preme il rispettivo input vicino ad un'entità con cui può interagire, lo stato nella macchina di stati passi a "Interact"],[\u{2713}],
  [TI-05],[Si verifica che quando il giocatore preme il rispettivo input vicino a un cartello, ne visualizzi i contenuti],[\u{2713}],
  [TI-06],[Si verifica che quando il giocatore preme lo stesso input durante un'interazione, smette di interagire con l'entità],[\u{2713}],
  [TI-07],[Si verifica che quando il giocatore preme il rispettivo input vicino a un personaggio con un dialogo, il giocatore si ferma e visualizza il dialogo del personaggio],[\u{2713}],
  [TI-08],[Si verifica che quando il giocatore preme il rispettivo input durante un dialogo, va avanti se esiste un messaggio successivo],[\u{2713}],
  [TI-09],[Si verifica che quando il giocatore preme il rispettivo input durante un dialogo, finisce se non esiste un messaggio successivo],[\u{2713}],
  [TI-10],[Si verifica che quando il giocatore preme il rispettivo input durante la scelta di un'opzione del dialogo, questa viene scelta ed il dialogo procede con il prossimo messaggio],[\u{2713}],
  [TI-11],[Si verifica che quando il giocatore smette di interagire con un'entità, lo stato nella macchina di stati del giocatore torna a "Idle"],[\u{2713}],
  //LR  
  [TI-12],[Si verifica che il prompt dell'input da premere appaia quando il giocatore si posiziona sopra la piattaforma del cannone LR],[\u{2713}],
  [TI-13],[Si verifica che il giocatore interagisca con il cannone LR quando preme il rispettivo tasto sopra la piattaforma],[\u{2713}],
  [TI-14],[Si verifica che il giocatore possa posizionare un punto sul grafico LR],[\u{2713}], 
  [TI-15],[Si verifica che il giocatore possa interrompere l'interazione con il cannone LR],[\u{2713}],                                              
  //DT
  [TI-16],[Si verifica che quando il giocatore si avvicina ad un oggetto che può raccogliere, viene mostrato sullo schermo il tasto da premere],[\u{2713}],
  [TI-17],[Si verifica che quando il giocatore raccoglie un oggetto, lo stato nella macchina di stati passi a "Grab"],[\u{2713}],
  [TI-18],[Si verifica che l'oggetto raccolto sia lo stesso che il giocatore sta portando],[\u{2713}],
  [TI-19],[Si verifica che il giocatore possa muoversi con l'oggetto],[\u{2713}],
  [TI-20],[Si verifica che il giocatore possa saltare con l'oggetto],[\u{2713}],
  [TI-21],[Si verifica che il giocatore può lasciare l'oggetto],[\u{2713}],
  [TI-22],[Si verifica che quando il giocatore lascia un oggetto, lo stato nella macchina di stati passi a "Release"],[\u{2713}],
  [TI-23],[Si verifica che l'oggetto rimanga nella posizione dove è stato lasciato],[\u{2713}],
  [TI-24],[Si verifica che le informazioni dei rami vengano visualizzate quando il giocatore si posiziona sopra un nodo dell'albero di decisione],[\u{2713}],
  [TI-25],[Si verifica che il nodo riconosca se il cane posizionato sopra è corretto],[\u{2713}],
  [TI-26],[Si verifica che il nodo riconosca se il cane posizionato sopra è sbagliato],[\u{2713}],
  [TI-27],[Si verifica che il cartello con le razze di cani indovinate si aggiorni quando il giocatore dà una risposta corretta],[\u{2713}],
  //Causality
  [TI-28],[Si verifica che un'unità esterna di un condizionatore venga accesa quando il giocatore preme il rispettivo input quando è vicino],[\u{2713}],
  [TI-29],[Si verifica che il grafico dei condizionatori usati venga aggiornato all'inizio del livello],[\u{2713}],
  [TI-30],[Si verifica che il grafico dei condizionatori usati venga aggiornato quando viene acceso un condizionatore],[\u{2713}],
  [TI-31],[Si verifica che la scena di intermezzo inizi quando il giocatore accende tutti i condizionatori nel livello "Causalità"],[\u{2713}],
  [TI-32],[Si verifica che i personaggi non giocabili che seguono un obiettivo, smettano di seguirlo quando entrano in una specifica area],[\u{2713}],
  [TI-33],[Si verifica che il personaggio "scienziato" cambi dialogo quando vengono accese tutti i condizionatori nel livello "Causalità"],[\u{2713}],
  [TI-34],[Si verifica che il personaggio "gelataio" cambi dialogo quando vengono accesi tutti i condizionatori nel livello "Causalità"],[\u{2713}],
  //Forgot
  [TI-35],[Si verifica che quando il giocatore si avvicina ad un "Training data" di colore rosso, questo viene preso ed aumenta il rispettivo contatore],[\u{2713}],
  [TI-36],[Si verifica che quando il giocatore si avvicina ad un "Training data" di colore verde, questo viene preso ed aumenta il rispettivo contatore],[\u{2713}],
  [TI-37],[Si verifica che quando il giocatore si avvicina ad un "Training data" di colore blu, questo viene preso ed aumenta il rispettivo contatore],[\u{2713}],
  [TI-38],[Si verifica che quando il giocatore cade dal livello, torna in una zona dove si trovava precedentemente],[\u{2713}],
))
=== Test di sistema
#figure(caption: [Test di sistema], table(
  columns: (0.4fr, 1fr, 0.3fr),
  inset: 8pt,
  align: (x, y) => if (x == 0 and y > 0 and y < 7) { center + horizon } else { center + horizon },
  table.header([*Identificativo*], [*Descrizione*], [*Superato*]),
  "TS-01","Si verifica che il gioco ricevi input dalla tastiera","\u{2713}",
  "TS-02","Si verifica che il gioco riceva input da un joystick generico","\u{2713}",
  "TS-03","Si verifica che il gioco mantenga almeno 30fps durante l'esecuzione (caricamenti esclusi)",
  "\u{2713}",
  "TS-04","Si verifica che il tempo tra un frame e l'altro sia minore di 33.3 millisecondi durante l'esecuzione (caricamenti esclusi)",
  "\u{2713}",
  "TS-05","Si verifica che il tempo tra un frame di fisica e l'altro rimanga costante a 16.67 millisecondi durante l'esecuzione (caricamenti esclusi)","\u{2713}",
  "TS-06","Si verifica che l'uso della memoria video (VRAM) non superi 500MB durante tutta l'esecuzione","\u{2713}",
  "TS-07","Si verifica che l'uso della memoria statica non superi 200MB durante tutta l'esecuzione","\u{2713}",
  "TS-08","Si verifica che il tempo necessario alla CPU per caricare un frame sia minore di 2 millisecondi","\u{2713}",
  "TS-09","Si verifica che il tempo necessario alla GPU per caricare un frame sia inferiore a 33.3 millisecondi","\u{2713}",
  "TS-10","Si verifica che non siano presenti nodi non utilizzati nella scena","\u{2713}",))
=== Test di accettazione
/*
== Validazione
_Qui descrivo le attività svolte durante il processo di validazione_
*/
== Risultati ottenuti
_Qui descrivo i risultati raggiunti rispettivamente su piano qualitativo e quantitativo, con copertura dei requisiti, testing e quantità di prodotti_
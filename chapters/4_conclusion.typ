#import "data/requirements_list.typ": *
#import "../config/variables.typ": *
#import "../config/thesis-config.typ": glpl, gl
#pagebreak(to:"odd")

= Conclusioni<cap:conclusioni>
#text(style: "italic", [
    In questo capitolo effettuo una retrospettiva sul progetto e sulla mia esperienza di stage, analizzando le esperienze acquisite durante il periodo.
    Infine metto a confronto gli argomenti insegnati dal percorso di studi e quelli richiesti per lo sviluppo del progetto.
])
#v(1em)

== Gestione dei rischi e dei problemi incontrati
=== Introduzione
Durante lo _stage_, ho dovuto affrontare dei problemi che avevo previsto una possibilità nel presentarsi nella sezione 2.5.6.\
Ho dovuto affrontare questi problemi e trovare delle soluzioni per superarli, in modo da poter completare il progetto nei tempi previsti e senza compromettere la qualità del lavoro.

=== Errata pianificazione dei tempi
Lo sviluppo dell'applicazione ha avuto un andamento più veloce di quello che avevo previsto durante la pianificazione, e ho finito per avere più tempo a disposizione rispetto a quello pianificato. Tuttavia dovevo comunque dedicare un numero minimo di ore, quindi ho dovuto trovare un modo per sfruttare queste ore in eccesso, in modo che non andassero sprecate.\
Per sfruttare queste ore aggiuntive, ho deciso di implementare funzionalità _extra_ non obbligatorie, come un livello _tutorial_, che si avvia in automatico quando il giocatore avvia una nuova partita, mostrando sullo schermo gli _input_ principali al giocatore e come utilizzarli prima di iniziare la parte principale del gioco, e il supporto per i _joypad_ come dispositivo di _input_, con la visualizzazione dinamica dei tasti nella guida _UI_, che si aggiorna automaticamente quando rileva un _input_ da un dispositivo diverso. Queste aggiunte hanno arricchito il progetto e migliorato l'esperienza utente, pur non essendo state pianificate inizialmente.
//Quindi, per occupare le ore di scarto ho aggiunto nuove funzionalità non obbligatorie al gioco. Ad esempio ho aggiunto un livello _tutorial_ ed il supporto per i _joypad_ come dispositivo di _input_, con cambio di visualizzazione dei tasti nella guida _UI_, tutte funzionalità che non avevo pianificato di sviluppare.

#set page(footer-descent: 0%, footer: [#align(top, [#line(length: 100%)
*_code coverage_*: unità di misura che indica la percentuale di codice sorgente coperta da test automatici.\ \
#align(center, context([#counter(page).display("1.")]))])])

=== Impegni personali o universitari
Durante il periodo di _stage_, mi mancava ancora un esame da recuperare.\
Ho dovuto sostenere l'esame due volte, durante la seconda e quarta settmana di _stage_. Questo ha comportato la perdita di alcune ore di lavoro, che non ho potuto recuperare, dato che la data di fine _stage_ era già stata fissata.\
//La preparazione per l'esame ha richiesto un impegno aggiuntivo, costringendomi a riorganizzare la pianificazione delle attività e a gestire con maggiore attenzione il tempo a disposizione.\
//In alcuni momenti, ho dovuto conciliare lo studio per l'esame con le attività di sviluppo del progetto, alternando le due cose per non trascurare nessun aspetto.\
//Questa situazione mi ha permesso di migliorare le mie capacità di gestione del tempo e di organizzazione personale, imparando a stabilire delle priorità e a rispettare le scadenze nonostante gli imprevisti.\
Nonostante le ore perse, sono comunque riuscito a completare il progetto nei tempi previsti, dimostrando flessibilità e capacità di adattamento di fronte a impegni personali e universitari concomitanti.\

=== Tecnologie non adeguate
Visto che _Godot_ è un motore di gioco relativamente nuovo rispetto alla concorrenza attuale (_Unity_, _Unreal Engine_...), non è ancora molto diffuso e non ha una grande comunità di sviluppatori che lo utilizzano, specialmente in maniera professionale.\
Questo mi ha reso più difficile trovare risorse e supporto durante lo sviluppo del progetto, ed alcune di queste risorse che trovavo avevano un uso limitato o non erano aggiornate per funzionare con la versione più recente di _Godot_.\
Ad esempio, volevo implementare un sistema di _CI/CD_ (Continuous Integration/Continuous Deployment) per automatizzare i _test_, tuttavia le risorse che ho trovato erano per lo più obsolete o non funzionanti, dunque ho svolto i _test_ manualmente. Ho avuto lo stesso problema anche per implementare uno strumento di #gl("code_coverage").\
Al contrario, invece, alcuni _add-on_ per _Godot_ si sono rivelati molto utili e ben documentati, ad esempio _GUT_, che mi ha facilitato lo svolgimento dei _test_ di unità e di integrazione.

=== Errore nella progettazione dell'architettura
Durante lo sviluppo del _PoC_ avevo come priorità svolgere un'applicazione che dimostrasse le funzionalità principali, ma ho trascurato alcuni aspetti architetturali che si sono rivelati problematici in seguito. Ad esempio, non avevo ben definito la gestione dei cambi degli stati del giocatore e delle transizioni tra le diverse schermate, e mi sono preoccupato di più di far funzionare le funzionalità principali, piuttosto che di come strutturare il codice in modo modulare e riutilizzabile.\
Questo ha portato a dover riscrivere alcune parti del codice in seguito,
portando a un codice più complesso e difficile da mantenere.\ 
Ho dovuto quindi rivedere parte dell'architettura per migliorare la modularità e la manutenibilità del codice, attività che ovviamente ha richiesti del tempo aggiuntivo, che avrei potuto usare per implementare nuove funzionalità.\

#set page(footer-descent: 0%, footer: [
#align(center+horizon, context([#counter(page).display("1.")]))])


== Obiettivi stage soddisfatti
=== Grado di soddisfazione degli obiettivi
Come descritto precedentemente nella sezione 2.4, avevo concordato degli obiettivi insieme al relatore. Nella tabella 21 ho riportato questi obiettivi con il loro codice ed il loro stato di completamento.
#show figure: set block(breakable: true)
#figure(caption: [Obiettivi del progetto], table(
  columns: (auto, auto),
  inset: 8pt,
  align: center + horizon,
  [*Obiettivo*],[*Stato*],
  [O-1],
  [\u{2713}],
  [O-2],
  [\u{2713}],
  [O-3],
  [\u{2713}],
  [D-1],
  [\u{2713}],
  [D-2],
  [\u{2713}],
  [D-3],[],
  [D-4],[]
))

Sempre dalla tabella 21 possiamo notare che non sono riuscito a soddisfare gli ultimi due obiettivi desiderabili. Questi due obiettivi non sono stati soddisfatti a causa di limitazioni tecniche e di risorse, e verranno chiariti nella sezione 4.1.2.\
In generale, sono soddisfatto del lavoro svolto e degli obiettivi raggiunti, anche se ci sono stati alcuni ostacoli lungo il cammino.

#set page(footer-descent: -70%, footer: [#align(top, [#line(length: 100%)
*_bottleneck_*: punto nel sistema che limita le prestazioni complessive, spesso a causa di risorse insufficienti o sovraccarico di lavoro.\
*_CPU_ - _Central Processing Unit_*: unità di elaborazione centrale del computer, responsabile dell'esecuzione delle istruzioni e del controllo delle operazioni.\
*_GPU_ - _Graphics Processing Unit_*: unità di elaborazione grafica, specializzata nel rendering delle immagini e nella gestione delle operazioni grafiche.\
*_rendering_*: processo di generazione dell'immagine finale di oggetti 3D, che coinvolge il calcolo della luce, delle ombre ed altro.\ \
#align(center, context([#counter(page).display("1.")]))])])

=== Obiettivi non superati
==== D-3 | Uso di linguaggi come C++ per migliorare le prestazioni
Durante lo sviluppo del _PoC_, ho utilizzato il linguaggio _GDScript_ per sviluppare il progetto. Andare a rimpiazzare il codice, anche se parzialmente, con un altro linguaggio di programmazione come _C++_, avrebbe consumato una gran parte del tempo a disposizione, senza garantire un miglioramento significativo delle prestazioni.\
Per dimostrare quest'ultima parte, ho inserito nella figura 24 un grafico preso all'interno dell'_editor_ durante l'esecuzione del gioco che mostra il tempo di #gl("rendering") per ogni _frame_ in millisecondi.
#figure(caption: [Grafico del tempo di compilazione di ogni _frame_ del gioco], image("../images/chart-lag_spikes.png"))
Dal grafico possiamo notare diverse cose:
#v(0.5em)
- I tempi di compilazione e _rendering_ tra un _frame_ e l'altro, sono generalmente stabili, con alcune eccezioni presenti durante la transizione di un livello ad un altro a causa del caricamento delle risorse.
- Il grafico è diviso in 2 sezioni, la prima, a sinistra, mostra il tempo richiesto dalla #gl("cpu"), la seconda, a destra, mostra il tempo richiesto dalla #gl("gpu"). Come possiamo vedere, la _GPU_ richiede più tempo rispetto alla _CPU_. Cambiare il linguaggio di programmazione aumenterebbe le prestazioni solo della _CPU_, visto che _GDScript_ e _C++_ sono linguaggi di alto livello letti e compilati dalla _CPU_. Ma come possiamo vedere dalla figura 24, questo non aumenterebbe le prestazioni, poiché i lavori sono svolti in parallelo, e la _GPU_ rimarrebbe il #gl("bottleneck") in questo caso.

#set page(footer-descent: 0%, footer: [#align(center+horizon, context([#counter(page).display("1.")]))])


==== D-4 | Implementazione di un modello di _LLM_
Durante lo sviluppo del progetto, ho provato ad implementare un _LLM_ per generare automaticamente i dialoghi dei personaggi non giocabili nel gioco.\
Nonostante la comunità di _Godot_ abbia sviluppato diversi _add-on_ per integrare gli _LLM_ locali nei giochi, ho incontrato diversi fattori che hanno reso difficile l'implementazione:
#v(0.5em)

- *Largo uso della _VRAM_*: il problema principale degli _LLM_ locali è il fatto che richiedono molta _VRAM_, risorsa che nei videogiochi viene già utilizzata per gestire le texture, i modelli 3D e altri asset grafici. Questo porta rapidamente all'esaurimento della memoria disponibile, causando rallentamenti o crash dell'applicazione, soprattutto su hardware non di fascia alta.
- *Limitazioni della macchina personale*: la macchina su cui ho svolto il progetto aveva a disposizione 1GB di _VRAM_, limitando molto l'utilizzo di un modello. Durante un _test_, ho provato a integrare un _LLM_ 'leggero', con mezzo miliardo di parametri, in modo da usare meno _VRAM_. Il risultato che ho ottenuto è stata una stringa di frasi e parole incomprensibili.
- *Lingua*: dato che avevo concordato con il relatore l'obiettivo di supportare la lingua italiano ed inglese nel gioco, anche le frasi generate dal modello dovevano essere in italiano o in inglese. Gli unici _LLM_ 'leggeri' che sono riuscito a trovare erano solo in lingua inglese, e se supportavano più lingue significava che i parametri effettivamente usati per l'inglese e italiano erano ancora di meno.
- *Dimensioni*: un _LLM_ locale ha dimensioni che variano da centinaia di MB a diversi _gigabyte_. Integrare un modello del genere avrebbe aumentato notevolmente la dimensione finale del gioco, rendendolo meno accessibile per gli utenti con connessioni _internet_ lente, limitate o con poca memoria nel dispositivo. Nel caso avessi voluto usare un _LLM_ diverso per ogni lingua, le dimensioni dell'applicazione finale sarebbero aumentate ulteriormente.

== Esperienze acquisite

=== Competenze tecniche
Durante lo _stage_, ho avuto l'opportunità di approfondire le mie conoscenze in diversi ambiti tecnici, in particolare nello sviluppo di giochi con il motore di gioco _open source_ _Godot_.\ 
_Godot_ è stato sviluppato nel 2014 e da allora ha guadagnato popolarità grazie alla sua flessibilità e facilità d'uso, rendendo lo sviluppo di giochi accessibile anche a chi ha poca esperienza nel campo della programmazione e, allo stesso tempo, facilitando il lavoro a sviluppatori più esperti. Ho iniziato ad utilizzarlo circa un paio di anni fa, in parallelo al corso di studi, ma non l'ho mai utilizzato per progetti seri, di grandi dimensioni.
Ho potuto approfondire come gestire diverse animazioni in un modello 3D, creare scene 3D complesse e organizzare i nodi per ottenere comportamenti dinamici nei personaggi e negli oggetti di gioco. Ho imparato a importare asset 3D, configurare materiali e luci, e utilizzare il sistema di animazione di Godot per sincronizzare movimenti e interazioni. Questo mi ha permesso di realizzare ambienti di gioco più realistici e coinvolgenti, migliorando l'esperienza utente complessiva.
Altro argomento che ho avuto l'opportunità di approfondire è stato il linguaggio di programmazione fornito da _Godot_: _GDScript_, il linguaggio principale, sviluppato appositamente per il motore di gioco.\
_GDScript_ è pensato per essere semplice da apprendere, con una sintassi simile a _Python_, ma ottimizzato per lo sviluppo rapido di giochi. Ho imparato a sfruttare le sue caratteristiche, come il _typing_ dinamico, il sistema di segnali per la comunicazione tra oggetti e la gestione delle scene, che permette di strutturare il progetto in modo modulare e riutilizzabile. Questo mi ha permesso di scrivere codice più chiaro, mantenibile e facilmente estendibile, migliorando la qualità complessiva del progetto.\

/*Ho approfondito le conoscenze che avevo sul linguaggio _GDScript_ e a sfruttare le funzionalità del motore per implementare meccaniche di gioco complesse ed originali.\ */

/*
Ho imparato a lavorare con modelli 3D, animazioni, sistemi di particelle ed effetti visivi per creare un'esperienza di gioco coinvolgente ed interessante.\
Inoltre, ho acquisito competenze nella gestione delle risorse e nell'ottimizzazione delle prestazioni del gioco.*/


=== Competenze trasversali
Durante lo _stage_, ho anche sviluppato competenze trasversali, come la capacità di comunicare efficacemente con i membri del _team_, chiedendo aiuto quando necessario, e fornendo aggiornamenti sullo stato di avanzamento del progetto al relatore.\
Ho imparato a gestire il tempo in modo più efficiente, pianificando le attività, controllando le scadenze e monitorando i progressi utilizzando vari strumenti per la gestione del progetto.\
Ho acquisito maggiore autonomia nell'organizzazione del lavoro, prendendo iniziative per risolvere problemi in modo indipendente, e documentando tutte le mie attività, quello che facevo, come lo facevo e quando lo facevo, in maniera specifica, in modo da poter tracciare i miei progressi e facilitare l'organizzazione del lavoro, ad esempio, con le norme da rispettare.\ //facilitare la comunicazione con il relatore.\
//imparando a prendere decisioni in modo responsabile e a chiedere supporto quando necessario.\
Durante lo _stage_, ho dovuto anche svolgere una presentazione davanti a tutti i membri del _team_, illustrando il progetto, le scelte tecniche e le sfide affrontate, questo mi ha aiutato a migliorare le mie capacità di comunicazione, a presentare le mie idee in modo chiaro e conciso, senza contraddizioni, ed anche a gestire l'ansia durante il lavoro.\  
Infine, l'esperienza di _stage_ mi ha permesso di affinare le mie capacità di _problem solving_, affrontando situazioni impreviste oppure a prevedere i possibili problemi ed avere già un piano di contingenza, trovando soluzioni pratiche ed efficaci.\
Infine, ho sviluppato una maggiore flessibilità e adattabilità, qualità fondamentali per lavorare in contesti dinamici e in continua evoluzione come quello dello sviluppo _software_.

//PIU SPECIFICO

/*
=== Competenze personali
Durante lo _stage_, ho lavorato anche sullo sviluppo delle mie competenze personali, come la gestione dello stress e la resilienza. Ho imparato a mantenere la calma in situazioni di pressione e a trovare soluzioni creative ai problemi. Queste competenze mi saranno utili anche in futuro, sia nel lavoro che nella vita privata.
*/
#pagebreak()
== Differenza tra _stage_ e percorso studi
Alcuni temi che ho dovuto affrontare durante lo _stage_, erano temi che avevo già affrontato durante il percorso di studi.\
- _GDSCript_ è un linguaggio di programmazione orientato agli oggetti, fondamento su cui si basa anche _C++_, che ho dovuto imparare per svolgere un altro progetto durante il percorso di studi.
- I temi del principale del gioco di _Machine Learning_, li avevo già approfonditi in precedenza durante un corso di studi. Nello specifico, mi ha aiutato molto a trovare temi su cui sviluppare le meccaniche del gioco come l'Albero di decisioni e la Regressione lineare ed il loro funzionamento.
- Durante il progetto del corso di _Ingegneria del software_, ho avuto modo di approfondire gli _LLM_ insieme ad altri miei colleghi. Anche se alla fine non ho implementato questi nel gioco, mi hanno fornito una base teorica utile per comprendere meglio le tecnologie di intelligenza artificiale.\
#v(0.5em)
Al contrario, altri temi non erano stati trattati durante il percorso di studi, o erano stati trattati, ma in modo superficiale.\ 
Questo riguardo tecnologie più specifiche e non molto di uso comune, come l'uso di un motore di gioco, o tecnologie di ambito diverso da quello insegnato nel corso di studi, come modellazione 3D.\
Non ritengo che inserire questi argomenti nel percorso di studi sarebbe utile, dato che il campo dell'informatica è molto vasto e in continua evoluzione, e non è possibile coprire tutti gli argomenti in modo approfondito.\
//_Qui tratto della differenza tra gli argomenti trattati durante lo stage e gli argomenti insegnati durante il percorso di studi_
/*
=== Lacune sul percorso studi
_Se presenti, in questa sezione descrivo alcune delle mie lacune verso gli argomenti insegnati nel percorso di studi verso lo stage e/o mondo del lavoro_
*/
== Pensieri finali
//_Qui concludo la tesi con  miei pensieri finali sull'ambiente di lavoro, il progetto, e quello che ho imparato per entrare nel mondo del lavoro_
L'esperienza di _stage_ è stata molto positiva e formativa, permettendomi di mettere in pratica sia le conoscenze acquisite durante il percorso di studi, sia quelle che ho acquisito personalmente, e di sviluppare nuove competenze tecniche e trasversali.\
Ho avuto l'opportunità di lavorare su un progetto stimolante e innovativo, che mi ha permesso di approfondire conoscenze di mio interesse personale su _Game Design_ e modellazione 3D in un ambiente professionale e collaborativo.\
Ho avuto l'occasione di confrontarmi con professionisti del settore, imparando da loro e ricevendo _feedback_ costruttivi sul mio lavoro.\
Ritengo che questa esperienza mi abbia fornito una base solida per affrontare future sfide nel campo dello sviluppo di giochi e grafica 3D, e sono entusiasta di continuare a crescere e continuare ad imparare nuove tecnologie e metodologie in questo settore, sia in maniera personale che professionale.

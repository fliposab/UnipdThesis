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



== Obiettivi stage soddisfatti
=== Grado di soddisfazione degli obiettivi
Come descritto precedentemente nel capitolo 2, avevo prefissato degli obiettivi insieme al relatore.\
Nella tabella 21 sono riportati gli obiettivi con il loro codice ed il loro stato di completamento.
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

Non sono riuscito a soddisfare gli ultimi due obiettivi desiderabili (_D-3_ e _D-4_).
=== Obiettivi non superati
==== D-3 | Uso di linguaggi come C++ per migliorare le prestazioni
Durante tutta la durata dello _stage_, non ho mai avuto il bisogno di migliorare le prestazioni del gioco.
Nella figura 24 ho inserito un grafico preso all'interno dell'_editor_ durante l'esecuzione del gioco.
#figure(caption: [Grafico del tempo di compilazione di ogni _frame_ del gioco], image("../images/chart-lag_spikes.png"))
Dal grafico possiamo notare diverse cose:
#v(0.5em)
- I tempi di compilazione e _rendering_ tra un _frame_ e l'altro, sono generalmente stabili, con alcuni presenti durante la transizione di un livello ad un altro a causa del caricamento delle risorse.
- Il grafico è diviso in 2 sezioni, la prima mostra il tempo richiesto alla #gl("cpu"), la seconda mostra il tempo richiesto alla #gl("gpu"). Come possiamo vedere, la _GPU_ richiede più tempo rispetto alla _CPU_. Cambiare il linguaggio di programmazione aumenterebbe le prestazioni solo della _CPU_, visto che _GDScript_ e _C++_ sono linguaggi di alto livello compilati sulla _CPU_. Ma come possiamo vedere dalla figura 24, questo non aumenterebbe le prestazioni, poiché i lavori sono svolti in parallelo, e la _GPU_ rimarrebbe il #gl("bottleneck") in questo caso.

==== D-4 | Implementazione di un modello di _LLM_
Durante lo sviluppo del progetto, ho provato ad implementare un _LLM_ per generare automaticamente i dialoghi tra i personaggi del gioco.\
Ho incontrato diversi fattori che hanno reso difficile l'implementazione:
#v(0.5em)
- *Largo uso della _VRAM_*: la comunità di _Godot_ ha sviluppato diversi _add-on_ per integrare _LLM_ nei giochi. Il problema principale degli _LLM_ locali è il fatto che richiedono molta _VRAM_, risorsa che nei videogiochi viene già utilizzata per gestire le texture, i modelli 3D e altri asset grafici. Questo porta rapidamente all'esaurimento della memoria disponibile, causando rallentamenti o crash dell'applicazione, soprattutto su hardware non di fascia alta.
- *Limitazioni della macchina personale*: la macchina su cui ho svolto il progetto aveva a disposizione 1GB di _VRAM_, limitando molto l'utilizzo di un modello. Durante un _test_, ho provato a integrare un _LLM_ con mezzo miliardo di parametri, in modo da usare meno _VRAM_. Il risultato che ho ottenuto è stata una stringa di frasi e parole incomprensibili.
- *Lingua*: dato che avevo prefissato l'obiettivo di supportare la lingua italiano ed inglese nel gioco, anche le frasi generate dal modello dovevano essere in italiano o in inglese. Gli unici LLM 'leggeri' che sono riuscito a trovare erano solo in lingua inglese, oppure supportavano più lingue, ma questo significava che i parametri effettivamente usati per l'inglese erano ancora di meno.

== Esperienze acquisite
=== Competenze tecniche
Durante lo _stage_, ho avuto l'opportunità di approfondire le mie conoscenze in diversi ambiti tecnici, in particolare nello sviluppo di giochi con _Godot_. Ho imparato a utilizzare il linguaggio _GDScript_ e a sfruttare le funzionalità del motore per implementare meccaniche di gioco complesse. Inoltre, ho acquisito competenze nella gestione delle risorse e nell'ottimizzazione delle prestazioni del gioco.

=== Competenze trasversali
Durante lo _stage_, ho anche sviluppato competenze trasversali, come la capacità di lavorare in team e di comunicare efficacemente con i membri del gruppo. Ho imparato a gestire il tempo in modo più efficiente e a organizzare il lavoro in base alle scadenze. Queste competenze si sono rivelate fondamentali per il successo del progetto.

=== Competenze personali
Durante lo _stage_, ho lavorato anche sullo sviluppo delle mie competenze personali, come la gestione dello stress e la resilienza. Ho imparato a mantenere la calma in situazioni di pressione e a trovare soluzioni creative ai problemi. Queste competenze mi saranno utili anche in futuro, sia nel lavoro che nella vita privata.

=== Gestione dei rischi
==== Introduzione
Durante lo _stage_, ho dovuto affrontare dei problemi che avevo previsto una possibilità nel presentarsi nella sezione 2.5.6.\
Ho dovuto affrontare questi problemi e trovare delle soluzioni per superarli, in modo da poter completare il progetto nei tempi previsti e senza compromettere la qualità del lavoro.

==== *Errata pianificazione dei tempi*
Lo sviluppo dell'applicazione ha avuto un andamento più veloce di quello che avevo previsto durante la pianificazione e ho finito per avere più tempo a disposizione rispetto a quello pianificato. Quindi, per occupare le ore di scarto ho aggiunto nuove funzionalità non obbligatorie al gioco. Ad esempio ho aggiunto un livello _tutorial_ ed il supporto per i _joypad_ com dispositivo di _input_, con cambio di visualizzazione dei tasti nella guida _UI_, tutte funzionalità che non avevo pianificato di sviluppare.

==== Impegni personali o universitari
Durante il periodo di _stage_, mi mancava ancora un esame da recuperare.\
Ho dovuto sostenere l'esame due volte, in due giorni diversi, e questo mi ha fatto perdere alcune ore di _stage_.\
Nonostante le ore perse, sono comunque riuscito a completare il progetto nei tempi previsti.\

#set page(footer-descent: 0%, footer: [#align(top, [#line(length: 100%)
*_code coverage_*:  metodologia di analisi del codice sorgente che misura la percentuale di codice eseguito durante i test.\ \
#align(center, context([#counter(page).display("1.")]))])])

==== Tecnologie non adeguate
Visto che _Godot_ è un motore di gioco relativamente nuovo rispetto alla concorrenza (_Unity_, _Unreal Engine_...), non è ancora molto diffuso e non ha una grande comunità di sviluppatori.\
Questo mi ha reso più difficile trovare risorse e supporto durante lo sviluppo del progetto, ed alcune di queste avevano un uso limitato o non erano aggiornate.\
Ad esempio, volevo implementare un sistema di _CI/CD_ (Continuous Integration/Continuous Deployment) per automatizzare i _test_, tuttavia le risorse che ho trovato erano per lo più obsolete o non funzionanti, dunque ho svolto i _test_ manualmente. Ho avuto lo stesso problema anche per implementare uno strumento di #gl("code_coverage").\
Al contrario, invece, alcuni _add-on_ e _plugin_ per _Godot_ si sono rivelati molto utili e ben documentati, ad esempio _GUT_, che mi ha facilitato lo svolgimento dei _test_ di unità e di integrazione.

==== Errore nella progettazione dell'architettura
Durante lo sviluppo del _PoC_ avevo come priorità svolgere un'applicazione che dimostrasse le funzionalità principali, ma ho trascurato alcuni aspetti architetturali che si sono rivelati problematici in seguito. Ad esempio, non avevo ben definito la gestione dei cambi degli stati del giocatore e delle transizioni tra le diverse schermate, portando a un codice più complesso e difficile da mantenere. Ho dovuto quindi rivedere parte dell'architettura per migliorare la modularità e la manutenibilità del codice.

== Differenza tra stage e percorso studi
_Qui tratto della differenza tra gli argomenti trattati durante lo stage e gli argomenti insegnati durante il percorso di studi_
=== Lacune sul percorso studi
_Se presenti, in questa sezione descrivo alcune delle mie lacune verso gli argomenti insegnati nel percorso di studi verso lo stage e/o mondo del lavoro_
== Pensieri finali
_Qui concludo la tesi con  miei pensieri finali sull'ambiente di lavoro, il progetto, e quello che ho imparato per entrare nel mondo del lavoro_
/*
== Consuntivo finale
Una volta terminato il progetto ho redatto il consuntivo orario finale nella @fig:tabella-calcolo-ore che suddivide in maniera approssimata le ore dedicate alle varie fasi.
#v(1em)
#set table(
  align: (center+horizon, center+horizon), 
)
#figure(
  caption: [Consuntivo orario finale.],
  table(
    columns: 2,
    table.header([*Fase*], [*Ore*]),
    [_Onboarding_ del progetto],[5],
    [Analisi dei requisiti],[30],
    [...], [...],
    [*Totale*],[320]
  )
)<fig:tabella-calcolo-ore>
#v(1em)*/

//== Raggiungimento degli obiettivi
/*
== Requisiti soddisfatti
Arrivato alla fine del progetto ho implementato...
#v(1em)
#figure(
  table(
    columns: (auto, 1fr, 1fr, auto, auto),
    table.header([*Tipo*], [*Mandatory*], [*Desirable*],[*Optional*], [*Somma*]),
    [Functional], [0/#getFR(getLen: true).at(0)], [0/#getFR(getLen: true).at(1)], [0/#getFR(getLen: true).at(2)], [0/#getFR(getLen: true).sum()],
    [Qualitative], [0/#getQR(getLen: true).at(0)], [0/#getQR(getLen: true).at(1)], [0/#getQR(getLen: true).at(2)], [0/#getQR(getLen: true).sum()],
    [Constraint], [0/#getCR(getLen: true).at(0)], [0/#getCR(getLen: true).at(1)], [0/#getCR(getLen: true).at(2)], [0/#getCR(getLen: true).sum()],
    [*Totale*],
      [*0/#{getFR(getLen: true).at(0)+getQR(getLen: true).at(0)+getCR(getLen: true).at(0)}*],
      [*0/#{getFR(getLen: true).at(1)+getQR(getLen: true).at(1)+getCR(getLen: true).at(1)}*],
      [*0/#{getFR(getLen: true).at(2)+getQR(getLen: true).at(2)+getCR(getLen: true).at(2)}*],
      [*0/#{getFR(getLen: true).sum()+getQR(getLen: true).sum()+getCR(getLen: true).sum()}*],
    align: (center+horizon)
  ),
  caption: "Riepilogo dei requisiti soddisfatti."
)<tab:requisiti-soddisfatti>
== Rischi occorsi e mitigati
I rischi emersi durante lo stage sono riportati in @fig:rischi-occorsi.\
#v(1em)
#figure(
  caption: [Rischi occorsi con la loro mitigazione.],
  table(
    columns: 2,
    table.header([*Descrizione*],[*Mitigazione*]),
    [*R1* -- Descrizione del rischio],[Soluzione]
  )
)<fig:rischi-occorsi>
#v(1em)
== Valutazione personale
*/
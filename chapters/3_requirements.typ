#import "../config/thesis-config.typ": glpl, gl
#import "data/requirements_list.typ": *

#pagebreak(to:"odd")

= Gestione delle attività<cap:analisi-requisiti>

#text(style: "italic", [
    In questo capitolo effettuo l'analisi degli requisiti, norme di progetto, organizzazione e specifica tecnica
])
#v(1em)
== Pianificazione
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

== Organizzazione del lavoro
_Qui descrivo come mi sono organizzato per svolgere il lavoro, con le attività svolte, le regole che ho seguito e gli strumenti usati_
=== Attività
=== Regole di sviluppo
=== Strumenti
== Metriche di qualità
_Qui descrivo le metriche che ho deciso di seguire per garantire qualità al progetto_
== Analisi dei rischi
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
== Analisi dei requisiti
_Qui descrivo gli attori presenti, tutti i casi d'uso e i requisiti da soddisfare_

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

== Specifica Tecnica
_Qui descrivo l'architettura delle classi e come comunicano tra loro_

== Risultati Ottenuti
_Qui descrivo i risultati raggiunti rispettivamente su piano qualitativo e quantitativo, con copertura dei requisiti, testing e quantità di prodotti_
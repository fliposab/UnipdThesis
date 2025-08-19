#import "../config/thesis-config.typ": glpl, gl
#import "data/requirements_list.typ": *

#pagebreak(to:"odd")

= Lo _stage_<cap:analisi-requisiti>

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
== Documentazione
== Analisi dei requisiti
=== Casi d'uso
_Qui descrivo gli attori presenti e tutti i casi d'uso dell'applicazione_
==== Lista degli attori
/* */
==== Lista dei casi d'uso
/* */
=== Requisiti
_Qui descrivo i requisiti da soddisfare_
/* */
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
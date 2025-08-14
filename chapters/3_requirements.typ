#import "../config/thesis-config.typ": glpl, gl
#import "data/requirements_list.typ": *

#pagebreak(to:"odd")

= Gestione dei processi<cap:analisi-requisiti>

#text(style: "italic", [
    In questo capitolo approfondisco tutti i processi del progetto: sviluppo, test e validazione. In pratica descrivo cosa ho fatto di preciso, e come l'ho svolto.
])
#v(1em)

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
== Sviluppo
_Qui viene descritto come è stato svolto il processo di sviluppo e che strumenti sono stati usati_
=== Tecnologie utilizzate
_Qui elenco tutte le tecnologie che ho usato_
/*
#show figure: set block(breakable: true)
#figure(caption: [Tecnologie utilizzate], table(
  columns: (auto, auto, auto),
  inset: 8pt,
  align: center + horizon,
  fill: (x, y) => if (y == 0) { luma(210) },
  table.header([*Nome*], [*Descrizione*], [*Versione*]),
  table.cell([*Codice*], colspan: 3),
  [GDScript],[Linguaggio di programmazione di alto livello, con sintassi simile a Python, viene integrato con il motore di gioco Godot],[(Legata a Godot)],
  [GDShader],[Linguaggio simile a [GLSL ES 3.0], usato per la creazione di materiali più complessi],[(Legata a Godot)],
  [Typst],[Linguaggio utilizzato per la stesura dei documenti],[0.13.1],
  table.cell([*Softwares*], colspan: 3),
  [Godot],[Il motore di gioco open source per lo sviluppo del videogioco],[4.5-beta3-mono],
  [Blender],[Software di modellazione ed animazione 3D usato per creare i modelli 3D ed animazioni nel gioco],[4.4.3],
  table.cell([*Strumenti e servizi*], colspan: 3),
  [Git],[Servizio per il controllo della versione],[2.50.1],
  [GitHub],[Servizio di hosting per i progetti software, è un'implementazione del servizio Git],[-],
  [GitHub Actions],[Servizio di integrazione continua e distribuzione continua (CI/CD), utilizzato per compilare i documenti ad ogni push],[-],
  table.cell([*Tipi di files non generati dagli strumenti elencati sopra*], colspan: 3),
  [\u{002A}.csv],["Comma separated values", file utilizzato per memorizzare le frasi nelle lingue diverse supportate dal gioco],[-],
  [\u{002A}.ini],[Tipo di file "plain-text" utilizzato per salvare i dati del gioco],[-],
  [\u{002A}.glb],["GLTF Binary", file utilizzato per memorizzare i modelli 3D e le loro animazioni in formato binario, in modo da risparmiare spazio e migliorare le prestazioni],[2.0.1]
))*/
==== Godot Engine
/*
Lo strumento principale che ho usato durante lo sviluppo del progetto è stato il motore di gioco "Godot Engine", con numero di versione _4.5-beta3_.
Insieme a Godot sono state usate le seguenti tecnologie:
- *GDScript*: linguaggio di programmazione di alto livello, con sintassi simile a Python, viene integrato con il motore di gioco Godot;
- *GDShader*: linguaggio simile a #gl("glsl_es") 3.0, usato per la creazione di materiali più complessi;
- *GUT - Godot Unit test*:  #gl("add-on") di Godot che permette di svolgere test di unità e di integrazione all'interno dell'editor, simulando gli input dell'utente;*/
==== Blender
/*#heading([Python], depth: 4, numbering: none)*/
==== Visual Studio Code
==== Typst
==== Git
==== GitHub
/*#heading([Github Actions], depth: 4, numbering: none)*/
==== Notion
=== Architettura
_Qui descrivo l'architettura delle classi e come comunicano tra loro_

== _Testing_
_Qui descrivo i test svolti, divisi per tipo_
=== Test di unità
=== Test di integrazione
=== Test di sistema
=== Test di accettazione

== Validazione
_Qui descrivo le attività svolte durante il processo di validazione_

== Risultati ottenuti
_Qui descrivo i risultati raggiunti rispettivamente su piano qualitativo e quantitativo, con copertura dei requisiti, testing e quantità di prodotti_
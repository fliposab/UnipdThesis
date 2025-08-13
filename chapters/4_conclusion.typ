#import "data/requirements_list.typ": *
#import "../config/variables.typ": *
#pagebreak(to:"odd")

= Conclusioni<cap:conclusioni>
#text(style: "italic", [
    In questo capitolo effettuo una retrospettiva sul progetto e sulla mia esperienza di stage, analizzando le esperienze acquisite durante il periodo.
    Infine metto a confronto gli argomenti insegnati dal percorso di studi e quelli richiesti per lo sviluppo del progetto.
])
#v(1em)
== Obiettivi stage soddisfatti
_Qui elenco gli obiettivi che erano stati dichiarati a inizio nel capitolo 2 e quelli soddisfatti a fine stage_

== Esperienze acquisite
_Come dice il titolo della sezione, qui descrivo le esperienze e conoscenze che ho acquisito durante lo stage_

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
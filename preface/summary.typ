#import "../config/constants.typ": abstract
#import "../config/variables.typ": *
#import "../config/thesis-config.typ": glossary-style, gl, gls
#import "@preview/codly:1.3.0": *
#import "@preview/codly-languages:0.1.8": *
#pagebreak(to: "odd")
#v(4em)

#text(24pt, weight: "semibold", abstract)

#v(1em)
Il presente documento descrive il lavoro svolto durante il periodo di stage curricolare, della durata di circa trecento ore, dal laureando #text(myName) presso l'azienda #text(myCompany). Lo stage è stato condotto sotto la supervisione del tutor aziendale #myTutor, mentre il prof. #text(myProf) ha ricoperto il ruolo di tutor accademico.
/* / / */
/*Questa tesi tratta la progettazione e lo sviluppo di *AI trAIning*, un videogioco il cui scopo è .... L'obiettivo è quello di ....*/


#linebreak()
#text(24pt, weight: "semibold")[Organizzazione del testo]
#linebreak()
#v(1em)

/ #link(<cap:introduzione>)[Il primo capitolo]: introduce l'azienda, la sua propensione per l'innovazione, il contesto organizzativo e i processi interni utilizzati.
/ #link(<cap:descrizione-stage>)[Il secondo capitolo]: descrive il rapporto dell'azienda con gli _stage_ in generale, come ha supportato il mio _stage_. Successivamente descriverò lo _stage_ in dettaglio, con gli obiettivi e vincoli stesi con il tutor aziendale, il rapporto tra l'argomento di _stage_ e l'innovazione e il confronto tra le altre offerte di _stage_.
/ #link(<cap:analisi-requisiti>)[Il terzo capitolo]: descrive in dettaglio tutti i processi di sviluppo, _test_ e validazione dello _stage_.\
	Seguirà, infine, una descrizione dei risultati che ho raggiunto sul piano qualitativo e quantitativo.
/ #link(<cap:conclusioni>)[Il quarto capitolo]: per finire, descrive l'esperienza personale di _stage_, quanti obiettivi soddisfatti rispetto agli obiettivi totali dichiarati nel secondo capitolo, la maturazione durante lo _stage_, con conoscenze ed abilità acquisiste durante il periodo\	
	Infine, verrà fatto un confronto tra le competenze richieste a inizio _stage_ rispetto a quelle erogate dal corso di studi, con eventuali lacune su quest'ultimo su competenze che sarebbero state utili per lo _stage_ o mondo del lavoro.


#linebreak()
#text(24pt, weight: "semibold", "Convenzioni tipografiche")
#linebreak()
#v(1em)
Durante la stesura del testo ho scelto di adottare le seguenti convenzioni tipografiche:

//Preferenze personali modificabili a discrezione tua o del relatore
- gli acronimi, le abbreviazioni e i termini di uso non comune menzionati vengono definiti nel #link(<glossary>)[glossario], situato alla fine del documento (#link(<glossary>)[p. #context counter(page).at(<glossary>).at(0)]);
#set page(footer: [#line(length: 100%) *termine*: termine esempio])
- per la prima occorrenza dei termini riportati nel glossario viene utilizzata la seguente nomenclatura: #gl("termine", capitalize: false) e ne viene riportata una breve descrizione del termine a piè di pagina;
- i termini in lingua straniera non di uso comune o facenti parti del gergo tecnico sono evidenziati con il carattere _corsivo_;
- all'inizio di ogni capitolo viene riportato un breve sommario sugli argomenti principali che il capitolo tratta;
- i nomi di funzioni o variabili appartenenti ad un linguaggio di programmazione vengono scritte con un carattere `monospaziato`;
- le citazioni ad un libro o ad una risorsa presente nella #link(<bibliography>)[bibliografia] (#link(<bibliography>)[p. #context counter(page).at(<bibliography>).at(0)]) saranno affiancate dal rispettivo numero identificativo, es. $[1]$;
- ogni immagine sarà accompagnata da un titolo e verrà elencata nel suo indice apposito a inizio documento, esempio:
#figure(image("../images/icon_big.png", width: 30%), caption: [Immagine esempio])
- allo stesso modo, ogni tabella sarà seguita da un suo titolo ed inserita nel suo indice apposito. Inoltre ogni riga avrà un colore diverso dalle righe vicine per renderla più accessibile, esempio:
#figure(caption: "Tabella esempio", table(
    columns: (auto,auto),
    table.header([*Titolo 1*], [*Titolo 2*]),
    fill: (x, y) => if y == 0 { luma(180) } else if (y == 2 or y == 4 or y == 6 or y == 8) { luma(230) },
    [Valore 1-1],[Valore 1-2],
    [Valore 2-1],[Valore 2-2],
    ),
)
#set page(footer: [])
- i blocchi di codice sono rappresentati nel seguente modo:
#linebreak()
#figure(caption: "Codice d'esempio.")[
```c
float Q_rsqrt( float number ){
	long i;
	float x2, y;
	const float threehalfs = 1.5F;
	x2 = number * 0.5F;
	y  = number;
	i  = * (long * ) &y;
	i  = 0x5f3759df - (i>>1);
	y  = * (float * ) &i;
	y  = y * ( threehalfs - ( x2 * y * y ) );
	return y;
}
```
]

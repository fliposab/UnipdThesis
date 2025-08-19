#import "@preview/codly:1.3.0": *
#import "@preview/codly-languages:0.1.8": *
#import "../config/thesis-config.typ": gl, glpl, glossary-style, linkfn

= L'azienda <cap:introduzione>
#text(style: "italic", [
    In questo capitolo descrivo l'azienda, il contesto organizzativo in cui sono stato inserito, i processi interni utilizzati e la tipologia di clientela a cui si rivolge.
])
#v(1em)

== Introduzione
/*_Qui descrivo l'azienda e le mie impressioni durante lo stage, e la sua propensione all'innovazione_*/
L'azienda Zucchetti Spa opera nel settore informatico da oltre 45 anni ed offre una vasta gamma di soluzioni software e servizi per le aziende, mantenendosi sempre aggiornati su tematiche come il diritto civile, contabilità, fiscalità, diritto del lavoro e previdenza.

Zucchetti ha un organico di circa 9.000 persone, con oltre 2.000 di queste dedicate a ricerca e sviluppo, dimostrando una forte attenzione all'innovazione tecnologica e al miglioramento continuo dei propri prodotti.\ L'azienda investe costantemente in nuove tecnologie e nella formazione del personale, favorendo un ambiente dinamico e orientato alla crescita professionale.

Nell'ufficio dove ho svolto lo _stage_, ho potuto osservare da vicino l'organizzazione del lavoro e l'interazione tra il personale. L'ambiente si è rivelato collaborativo e stimolante, con una particolare attenzione alla condivisione delle conoscenze e al supporto reciproco tra colleghi. Questa esperienza mi ha permesso di comprendere meglio le dinamiche aziendali e di apprezzare l'importanza dell'innovazione continua all'interno dell'azienda.\

== Contesto organizzativo e produttivo
/*_Qui descrivo il contesto organizzativo in cui sono stato inserito_*/
Durante lo _stage_ sono stato per lo più indipendente, tuttavia qualora avessi avuto bisogno di aiuto, potevo chiedere ad un gruppo composto da professionisti con competenze eterogenee, tra cui sviluppatori, analisti e _project manager_.\
Ho potuto osservare come la collaborazione e il confronto tra colleghi fossero elementi fondamentali per il buon andamento dei progetti.\
L'ambiente lavorativo era caratterizzato da una forte attenzione alla qualità del prodotto e al rispetto delle scadenze, con un approccio orientato al miglioramento continuo dei processi produttivi.\ 
Questa esperienza mi ha permesso di comprendere l'importanza di lavorare in un contesto organizzato e strutturato, dove ogni componente contribuisce al raggiungimento degli obiettivi comuni.

#set page(footer-descent: -60%, footer: [#align(top, [#line(length: 100%)
*database*: insieme organizzato di dati, generalmente memorizzato e gestito in modo da facilitarne l'accesso e la manipolazione\ 
*Microsoft Teams*: piattaforma di comunicazione e collaborazione sviluppata da Microsoft.\
*ticket*: segnalazione o richiesta in un sistema di tracciamento (GitHub) che descrive un problema da risolvere o una funzionalità da implementare.\ \ #align(center, context([#counter(page).display("1.")]))])])

== Processi interni utilizzati
/*_Qui descrivo i processi interni utilizzati_*/
Durante tutto il periodo di _stage_, ho svolto le mie attività seguendo i processi interni decisi dall'azienda, che prevedevano una gestione strutturata del progetto e una chiara suddivisione dei compiti da eseguire. Ad ogni inizio settimana, sceglievo le attività da svolgere in base allo stato di avanzamento del progetto, tenendo conto delle priorità e delle scadenze. \
Utilizzavo strumenti digitali per la gestione delle attività, come sistemi di versionamento o uso di #gl("ticket"), per aiutarmi a tenere traccia dei compiti svolti.\
Ogni fase del lavoro, dalla raccolta dei requisiti allo sviluppo e alla verifica, è documentata e tracciata per garantire trasparenza ed efficienza.\
Questi processi interni mi hanno permesso di acquisire una maggiore consapevolezza sull'importanza dell'organizzazione e della comunicazione all'interno di un contesto lavorativo strutturato.

=== Tecnologie di supporto
/*_Qui descrivo le tecnologie di supporto e collaborazione che il personale in azienda utilizzava, ad esempio, la sezione sopra su Microsoft Teams la sposterei qui_*/
Per facilitare la comunicazione e la collaborazione tra i membri del _team_, l'azienda ha adottato diverse tecnologie di supporto. La comunicazione tra i membri del _team_ avveniva principalmente tramite strumenti digitali di collaborazione, ad esempio #gl("microsoft_teams"), che facilitavano la condivisione delle informazioni e il coordinamento delle attività.\
Inoltre, per sincronizzare i cambiamenti e garantire che tutti i membri del _team_ fossero aggiornati, venivano utilizzati sistemi di versionamento e repository condivisi, in un #gl("database") interno.
Questi strumenti hanno reso possibile una gestione efficiente delle attività e una rapida risoluzione dei problemi, contribuendo a mantenere un flusso di lavoro fluido e produttivo.\


#pagebreak()
#set page(footer-descent: 0pt, footer: [#align(top, [#line(length: 100%) 
*ludico*: tutto ciò che riguarda il gioco o l'attività di giocare.\ \
#align(center, context([#counter(page).display("1.")]))])])
== Clientela
/*_Qui descrivo il tipo di clientela dell'azienda_*/
Zucchetti si rivolge a una clientela molto diversificata, che comprende sia piccole e medie imprese, sia grandi aziende. 
I prodotti e servizi offerti spaziano da soluzioni gestionali per la contabilità e il personale, a software verticali per settori specifici come la sanità, il retail, la logistica e la produzione industriale.\
Questa varietà di clientela rappresenta uno stimolo costante all'innovazione e all'adattamento dei prodotti alle evoluzioni del mercato.
#figure(image("../images/zucchetti-clientela.png", width: 90%),caption: [Settori e temi di cui si occupa l'azienda. Fonte: Zucchetti])
Il progetto di videogioco a cui ho lavorato era rivolto principalmente a un pubblico un po' più generale ed ampio. In particolare, il target comprende per lo più utenti giovani oppure appassionati di questo genere di prodotti specifico, attratti dall'aspetto #gl("ludico") o da quello formativo del prodotto sviluppato. 
#set page(footer-descent: -60%, footer: [#line(length: 100%) 
*brainstorming*: tecnica di generazione di idee in gruppo, in cui i partecipanti sono incoraggiati a esprimere liberamente le proprie idee.\
*LLM - Large Language Model*: modello di intelligenza artificiale progettato per comprendere e generare testo in linguaggio naturale.\
*temperatura*: parametro che controlla la casualità delle risposte generate da un LLM.\ \
#align(center, context([#counter(page).display("1.")]))])
/*Questa scelta ha influenzato le decisioni progettuali, portando a privilegiare un'interfaccia intuitiva, elementi grafici accattivanti e meccaniche di gioco che favorissero l'apprendimento attraverso il divertimento.*/
/*Fonte immagine:\ 
#link("https://www.zucchetti.it/it/dms/zucchetti-it/gruppo/chi-siamo/2025_SPROFILO_scheda_profilo_ITA.pdf")\ */

== Propensione per l'innovazione
/*_In questa sezione descrivo la propensione per l'innovazione, e in che modo l'azienda la rappresenta_*/
Zucchetti investe costantemente in ricerca e sviluppo, con oltre 2.000 persone dedicate a queste attività. Questo impegno si traduce in una continua introduzione di nuove tecnologie, metodologie di lavoro innovative e aggiornamenti dei prodotti offerti. L'azienda promuove attivamente la formazione del personale e la sperimentazione di soluzioni all'avanguardia, favorendo un ambiente in cui l'innovazione è parte integrante della cultura aziendale.\
Durante il mio _stage_, ho potuto osservare come le idee innovative vengano accolte con interesse e valutate attentamente, sia a livello di processo che di prodotto. Ho avuto modo, inoltre, di assistere ad una sessione di #gl("brainstorming")/* con argomento principale la creazione di un linguaggio specifico per gli #gl("llm"),*/ dimostrazione di come l'azienda sia aperta a nuove idee e approcci.\
Argomento principale delle ricerche che il personale dell'azienda stava svolgendo, erano gli #gl("llm"), tema ancora molto nuovo ed inesplorato nel mondo dell'informatica.
Per la maggior parte, il personale in azienda si occupava dell'addestramento dei vari modelli, cambio dei parametri, ad esempio, la #gl("temperatura"), gli _output_ che questi generavano ed analisi della correttezza di questi, e molto altro. \
Questa collaborazione  contribuisce a generare nuove soluzioni e a mantenere elevato il livello di competitività sul mercato.\
Questa propensione all'innovazione si riflette anche nella rapidità con cui l'azienda adotta strumenti digitali e tecnologie emergenti, garantendo così un costante miglioramento dei servizi e delle soluzioni offerte ai clienti.
#let glossary-terms = (
  (
    key: ".glb",
    short: [.glb],
    long: [_GLTF (Graphics Library Transmission Format) Binary_],
    description: [formato standard di un modello tridimensionale che legge il modello 3D come un file binario, permettendo una lettura e _rendering_ più veloce e minimizzando lo spazio occupato dal _file_.]
  ),
  (
    key: ".png",
    short: [.png],
    long: [_Portable Network Graphics_],
    description: [formato di immagine raster senza perdita di qualità, ampiamente utilizzato per la grafica web e il design digitale.]
  ),
  (
    key: "add-on",
    short: [add-on],
    description: [estensione o componente aggiuntivo che migliora o amplia le funzionalità di un _software_ esistente.]
  ),
  (
    key: "alberi_di_decisione",
    short: [Alberi di decisione],
    description: [modello predittivo utilizzato in statistica e _Machine Learning_, che rappresenta le decisioni e le loro possibili conseguenze sotto forma di un albero, facilitando l'interpretazione e la visualizzazione delle scelte.]
  ),
  (
    key: "autoload",
    short: [autoload],
    description: [meccanismo di _Godot_ che consente di caricare automaticamente una risorsa all'avvio del gioco, rendendola disponibile in tutte le scene senza doverla caricare manualmente.]
  ),
  (
    key: "blender",
    short: [Blender],
    description: [_software_ di modellazione ed animazione 3D _open source_ usato per creare modelli 3D ed animazioni.],
  ),
  (
    key: "bottleneck",
    short: [bottleneck],
    description: [in italiano, _collo di bottiglia_, termine utilizzato in informatica per descrivere un punto di congestione o limitazione nelle prestazioni di un sistema, che può influenzare negativamente l'efficienza complessiva.]
  ),
  (
    key: "brainstorming",
    short: [brainstorming],
    description: [tecnica di generazione di idee in gruppo, in cui i partecipanti sono incoraggiati a esprimere liberamente le proprie idee senza giudizio, al fine di stimolare la creatività e trovare soluzioni innovative a un problema.]
  ),
  (
    key: "cd",
    short: [CD],
    long: [_Continuos Delivery_],
    description: [pratica di sviluppo _software_ che consente di rilasciare frequentemente e in modo affidabile nuove versioni del _software_, garantendo che il codice sia sempre in uno stato pronto per la produzione.]
  ),
  (
    key: "ci",
    short: [CI],
    long: [_Continuos Integration_],
    description: [pratica di sviluppo _software_ che consente di integrare frequentemente le modifiche del codice in un repository condiviso, garantendo che il codice sia sempre in uno stato funzionante e testato.]
  ),
  (
    key: "code_coverage",
    short: [code coverage],
    description: [metodologia di analisi del codice sorgente che misura la percentuale di codice eseguito durante i test, aiutando a identificare le aree non testate e migliorare la qualità del software.]
  ),
  /*
  (
    key: "clipping",
    short: [clipping],
    description: [fenomeno che si verifica quando la telecamera di un videogioco passa attraverso un oggetto solido, causando la visualizzazione errata della scena.]
  ),*/
  (
    key: "cpu",
    short: [CPU],
    long: [_Central Processing Unit_],
    description: [unità di elaborazione centrale di un computer, responsabile dell'esecuzione delle istruzioni e della gestione delle operazioni aritmetiche e logiche.]
  ),
  (
    key: "database",
    short: [database],
    description: [insieme organizzato di dati, generalmente memorizzato e gestito in modo da facilitarne l'accesso e la manipolazione. In ambito _software_, i database sono utilizzati per archiviare informazioni in modo strutturato, consentendo operazioni di ricerca, aggiornamento e gestione dei dati.]
  ),
  (
    key: "diagrammi_gannt",
    short: [diagrammi di _Gannt_],
    description: [strumento di gestione dei progetti che rappresenta graficamente le attività pianificate nel tempo, mostrando la durata, le dipendenze e le scadenze delle attività in un formato visivo facile da comprendere.]
  ),/*
  (
    key: "drifting",
    short: [drifting],
    description: [fenomeno che si verifica quando un dispositivo di input, come uno _stick_ analogico, registra movimenti o pressioni anche quando non viene toccato, causando comportamenti indesiderati nel gioco.]
  ),*/
  (
    key: "frame",
    short: [frame],
    description: [unità di misura temporale utilizzata nei videogiochi e nelle animazioni, che rappresenta un singolo fotogramma di un'animazione o di un ciclo di gioco. Tipicamente sono 60 in un secondo (60 FPS - _Frames Per Second_).]
  ),
  (
    key: "game_design",
    short: [Game Design],
    description: [disciplina che si occupa della progettazione e dello sviluppo di giochi, sia da tavolo che digitali, considerando aspetti come la meccanica di gioco, la narrazione, l'estetica e l'interazione con il giocatore.]
  ),
  (
    key: "gdscript",
    short: [GDScript],
    description: [linguaggio di programmazione specifico per il motore di gioco Godot, progettato per essere semplice e intuitivo, con una sintassi simile a _Python_. Viene utilizzato per scrivere _script_ che controllano la logica del gioco, le interazioni e le funzionalità.]
  ),
  (
    key: "glsl_es",
    short: [GLSL ES],
    long: [_OpenGL Shading Language for Embedded Systems_],
    description: [linguaggio di shading utilizzato per scrivere shader per applicazioni embedded, come giochi e grafica in tempo reale.]
  ),
  (
    key: "gpu",
    short: [GPU],
    long: [_Graphics Processing Unit_],
    description: [unità di elaborazione grafica di un computer, progettata per gestire e accelerare la creazione di immagini e video, nonché per eseguire calcoli complessi legati alla grafica 3D.]
  ),
  (
    key: "hosting",
    short: [hosting],
    description: [servizio che consente di archiviare e rendere accessibili online siti web, applicazioni o progetti software, fornendo le risorse necessarie per il loro funzionamento e la loro distribuzione.],
  ),
  (
    key: "open_source",
    short: [open source],
    description: [modello di sviluppo software che promuove la collaborazione e la condivisione del codice sorgente, consentendo a chiunque di utilizzare, modificare e distribuire il software liberamente.]
  ),
  (
    key: "python",
    short: [Python],
    description: [linguaggio di programmazione di alto livello, noto per la sua sintassi semplice e leggibile, ampiamente utilizzato in vari ambiti come lo sviluppo web, l'analisi dei dati, l'intelligenza artificiale e la scienza dei dati.],
  ),
  (
    key: "ik",
    short: [IK],
    long: [_Inverse Kinematics_],
    description: [soluzione usata nell'ambito dell'animazione 3D. Si tratta di semplificare l'animazione calcolando il movimento di altre ossa o articolazioni in base all'ultimo osso della catena. Ad esempio, automatizza il movimento del braccio muovendo solo la mano, anziché ruotare singolarmente braccio, avambraccio e mano. Questo metodo risulta anche molto più simile a come ci si muove naturalmente.]
  ),
  (
    key: "joypad",
    short: [joypad],
    description: [dispositivo di input utilizzato principalmente per come dispositivo di _input_ nei videogiochi, dotato di pulsanti, leve e altri controlli per interagire con il gioco.]
  ),
  (
    key: "llm",
    short: "LLM",
    long: [_Large Language Model_],
    description: [modello di intelligenza artificiale progettato per comprendere e generare testo in linguaggio naturale, addestrato su grandi quantità di dati testuali per svolgere compiti come la traduzione, la risposta a domande e la generazione di contenuti.]
  ),
  (
    key: "machine_learning",
    short: [ML],
    long: [_Machine Learning_],
    description: [disciplina che si occupa dello sviluppo di algoritmi e modelli statistici che permettono ai computer di apprendere dai dati e migliorare le proprie prestazioni nel tempo senza essere esplicitamente programmati.]
  ),
  (
    key: "microsoft_teams",
    short: [Microsoft Teams],
    description: [piattaforma di comunicazione e collaborazione sviluppata da Microsoft, che fornisce chat, videoconferenze, condivisione di file e lavoro di gruppo integrato con gli strumenti forniti da Microsoft.],
  ),
  (
    key: "nla",
    short: [NLA],
    long: [_Nonlinear Animation_],
    description: [sistema di gestione delle animazioni in _Blender_ che consente di combinare e sovrapporre diverse animazioni in modo non lineare, permettendo una maggiore flessibilità e controllo sulle animazioni dei modelli 3D.]
  ),
  (
    key: "opengl",
    short: [OpenGL],
    long: [_Open Graphics Language_],
    description: [linguaggio di programmazione grafica utilizzato per creare applicazioni 3D e 2D, fornendo un'interfaccia standardizzata per l'interazione con la scheda grafica del computer.],
  ),
  (
    key: "pascalCase",
    short: [PascalCase],
    description: [pratica di scrivere parole composte o frasi unendo tutte le parole tra loro, ma lasciando le loro iniziali maiuscole.]
  ),
  (
    key: "poc",
    short: [PoC],
    long: [_Proof of Concept_],
    description: [una dimostrazione pratica che ha lo scopo di verificare la fattibilità o il potenziale di un'idea, concetto o soluzione. È spesso utilizzato nelle fasi iniziali di un progetto per validare il funzionamento teorico e pratico, incluso il modo in cui diverse componenti del sistema possono integrarsi tra loro per raggiungere l'obiettivo prefissato.]
  ),
  (
    key: "push",
    short: [push],
    description: [operazione che consente di inviare le modifiche locali del codice a un _repository_ remoto, aggiornando così la versione del codice condiviso con altri membri del _team_.]
  ),
  (
    key: "materiale",
    short: [materiale],
    description: [insieme di proprietà che definiscono l'aspetto visivo di un oggetto 3D, come colore, riflessione, trasparenza e altre caratteristiche ottiche. In _Godot_, i materiali possono essere applicati a modelli 3D per controllare il loro aspetto durante il _rendering_.]
  ),
  (
    key: "mvp",
    short: [MVP],
    long: [_Minimum Viable Product_],
    description: [Versione minima di un prodotto che include solo le funzionalità essenziali per essere utilizzato dagli utenti.],
  ),
  (
    key: "motore_di_gioco",
    short: [motore di gioco],
    description: [software progettato per facilitare lo sviluppo di videogiochi, fornendo strumenti e funzionalità per la gestione della grafica, della fisica, dell'audio e di altre componenti del gioco.]
  ),
  (
    key: "nearest_neighbor",
    short: [Nearest Neighbor],
    description: [algoritmo di apprendimento automatico utilizzato per la classificazione e la regressione, che si basa sull'idea di trovare i punti dati più vicini a un dato punto di input e fare previsioni in base a questi punti.]
  ),/*
  (
    key: "ram",
    short: [RAM],
    long: [_Random Access Memory_],
    description: [memoria volatile e rapida di un computer utilizzata per memorizzare temporaneamente i dati e le istruzioni in uso, consentendo un accesso rapido e diretto.]
  ),*/
  (
    key: "regressione_lineare",
    short: [Regressione lineare],
    description: [modello statistico utilizzato per analizzare la relazione tra una variabile dipendente e una o più variabili indipendenti, assumendo che questa relazione sia lineare.]
  ),
  (
    key: "rendering",
    short: [rendering],
    description: [processo di generazione dell'immagine finale di oggetti 3D, che coinvolge il calcolo della luce, delle ombre, dei riflessi, dei materiali ed altro.]
  ),
  (
    key: "rig",
    short: [rig],
    description: [struttura scheletrica applicata a un modello 3D che consente di animarlo tramite la manipolazione di ossa e articolazioni.]
  ),
  (
    key: "shader",
    short: [shader],
    description: [programma che calcola l'aspetto visivo di un oggetto 3D, determinando come la luce interagisce con le superfici.]
  ),
  (
    key: "singleton",
    short: [singleton],
    description: [design pattern garantisce che esista un'unica istanza di una classe, garantendo un punto di accesso globale a essa.]
  ),
  (
    key: "snake_case",
    short: [snake_case],
    description: [pratica di scrivere parole composte separando le parole tramite trattino basso, solitamente con le prime lettere delle singole parole in minuscolo.]
  ),
  (
    key: "stageIT",
    short: [StageIT],
    description: [evento orientato al lavoro organizzato dall'Università degli Studi di Padova, dedicato agli studenti per aiutarli a trovare aziende dove svolgere l'attività di _stage_.],
  ),
  (
    key: "support_vector_machines",
    short: [Support Vector Machines],
    description: [algoritmo di apprendimento automatico utilizzato per la classificazione e la regressione, che cerca di trovare il margine ottimale che separa le diverse classi nel piano.]
  ),
  (
    key: "termine",
    description: [termine esempio per dimostrare come funziona il glossario.],
  ),
  (
    key: "temperatura",
    description: [parametro che controlla la casualità delle risposte generate da un LLM. Valori più bassi rendono le risposte più conservative e focalizzate, mentre valori più alti aumentano la creatività e la varietà delle risposte.]
  ),
  (
    key: "texture",
    short: [texture],
    description: [immagine bitmap applicata a un modello 3D per fornire dettagli visivi, come colori e pattern. Ne esistono di vario tipo e possono essere utilizzate, ad esempio, per dare colore al modello 3D o modificare il valore della luce riflessa da questo.]
  ),
  (
    key: "ticket",
    description: [segnalazione o richiesta registrata in un sistema di tracciamento (come _GitHub Issues_ o _Jira_) che descrive un problema, una funzionalità da implementare o un'attività da svolgere all'interno di un progetto _software_.]
  ),
  (
    key: "tutorial",
    short: [tutorial],
    description: [concetto usato per indicare una guida introduttiva ad un determinato argomento. In questo caso, rappresenta il livello introduttivo di un videogioco, progettato per insegnare all'utente i concetti base del gioco, ad esempio i comandi.]
  ),
  (
    key: "ui",
    short: [UI],
    long: [_User Interface_],
    description: [interfaccia grafica che consente all'utente di interagire con un'applicazione o un videogioco. Può essere composta da pulsanti, menu, finestre di dialogo o altri elementi interattivi.]
  ),
  (
    key: "vram",
    short: [VRAM],
    long: [_Video Random Access Memory_],
    description: [tipo di memoria utilizzata dalle schede grafiche per memorizzare dati relativi alla grafica, come _texture_, consentendo un accesso rapido e migliorando le prestazioni grafiche.]
  ),
  /*
  (
    key: "ad",
    short: [Albero di decisione],
    description: [desc]
  ),
  (
    key: "add-on",
    short: [Add-on],
    description: [desc],
  ),
  (
    key: "ai",
    short: [AI],
    long: [Artificial Intelligence],
    description: [desc],
  ),
  (
    key: "asset",
    short: [Asset],
    description: [desc]
  ),
  (
    key: "blender",
    short: [Blender],
    description: [desc],
  ),
  (
    key: "bug",
    short: [bug],
    description: [desc],
  ),
  (
    key: "diagrammi_gannt",
    short: [Diagrammi di Gannt],
    description: [desc]
  ),
  (
    key: "game_ready",
    short: [Game Ready],
    description: [desc],
  ),
  (
    key: "gdscript",
    short: [GDScript],
    description: [desc],
  ),
  (
    key: "glsl_es",
    short: [GLSL ES],
    long: [OpenGL Shading Language for Embedded Systems],
    description: [desc]
  ),

  (
    key: "notion",
    short: [Notion],
    description: [desc]
  ),
  (
    key: "rl",
    short: [Regressione lineare],
    description: [desc],
  ),
  */
)

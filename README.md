# ProjetDB_Mahiout_Ghedira

Prompt final donnée à l'IA: 
Tu travailles dans le domaine de l’événementiel culturel et musical. Ton entreprise privée a comme activité principale l’organisation de concerts, festivals et tournées artistiques à l’échelle nationale et internationale. C’est une entreprise privée similaire à Live Nation, AEG Presents ou CTS Eventim. Les données collectées concernent notamment : la planification des événements, la gestion des artistes et de leurs contrats, la gestion des lieux (salles, stades, espaces extérieurs), la billetterie (catégories de billets, ventes, tarifs, zones), la gestion des spectateurs et participants, l’affectation du personnel (techniciens, agents de sécurité, managers, coordinateurs), la gestion du matériel technique (sonorisation, éclairage, scène), les partenariats et sponsors, la sécurité et les autorisations administratives. Inspire-toi des sites institutionnels suivants : https://www.livenationentertainment.com/, https://www.aegpresents.com/, https://www.eventim.fr/.
 
 Ton entreprise privée veut appliquer MERISE pour concevoir un système d'information. Tu es chargé de la partie analyse, c’est-à-dire de collecter les besoins auprès de l’entreprise. Elle a fait appel à un étudiant en ingénierie informatique pour réaliser ce projet, tu dois lui fournir les informations nécessaires pour qu’il applique ensuite lui-même les étapes suivantes de conception et développement de la base de données.
 
D’abord, établis les règles de gestions des données de ton entreprise privée, sous la forme d'une liste à puce. Elles doivent correspondre aux informations que fournit quelqu’un qui connaît le fonctionnement de l’entreprise, mais pas comment se construit un système d’information. Les règles doivent inclure les relations et contraintes principales entre événements, artistes, contrats, lieux, billets, spectateurs, personnel, matériel et sponsors, et être cohérentes et réalistes.
 
Ensuite, à partir de ces règles, fournis un dictionnaire de données brutes avec les colonnes suivantes, regroupées dans un tableau : signification de la donnée, type, taille en nombre de caractères ou de chiffres. Il doit y avoir entre 25 et 35 données. Il sert à fournir des informations supplémentaires sur chaque donnée (taille et type) mais sans a priori sur comment les données vont être modélisées ensuite.
 
Fournis donc les règles de gestion et le dictionnaire de données. 

Réponse générée par l'IA: 

REGLES METIERS: 
🎵 Gestion des événements

Un événement peut être un concert unique, une date d’une tournée ou un festival multi-jours.

Chaque événement possède un identifiant unique, un nom, une date de début et une date de fin, et un statut (en préparation, confirmé, reporté, annulé, complet).

Un événement se déroule dans un seul lieu, mais un lieu peut accueillir plusieurs événements à différentes dates.

Une tournée regroupe plusieurs événements dans différentes villes et pays.

Un festival peut contenir plusieurs artistes programmés sur plusieurs créneaux horaires.

Un événement ne peut être confirmé que si le contrat des artistes est signé et que le lieu est réservé.

🎤 Gestion des artistes

Un artiste possède une fiche unique (nom, type : solo/groupe, nationalité, agent).

Un artiste peut participer à plusieurs événements.

Chaque artiste signe un contrat spécifique pour chaque événement ou tournée.

Un contrat définit le cachet, les conditions techniques et les obligations logistiques.

Certains artistes ont des exigences techniques spécifiques (rider technique).

📄 Gestion des contrats

Chaque contrat est lié à un artiste et à un événement.

Un contrat possède un montant, une date de signature et un statut (en négociation, signé, annulé).

Aucun événement ne peut être mis en vente sans contrat signé.

🏟 Gestion des lieux

Chaque lieu possède un identifiant unique.

Chaque lieu a une capacité maximale légale et un type (intérieur/extérieur).

Un lieu est situé dans une ville et un pays précis et peut nécessiter des autorisations administratives.

🎟 Gestion de la billetterie

Chaque événement propose plusieurs catégories de billets (VIP, carré or, fosse, gradin…).

Chaque catégorie possède un prix défini.

Un billet correspond à un seul événement et appartient à une catégorie précise.

Le nombre de billets vendus ne peut dépasser la capacité autorisée du lieu.

Une vente de billet est liée à un spectateur, qui peut acheter plusieurs billets pour un même événement.

👥 Gestion des spectateurs

Chaque spectateur possède un identifiant unique et des informations personnelles (nom, prénom, email, téléphone).

Les billets peuvent être nominatif si l’événement l’exige.

👷 Gestion du personnel

Le personnel comprend techniciens, agents de sécurité, coordinateurs et managers.

Un employé peut être affecté à plusieurs événements avec une fonction précise et une durée de présence.

Certains événements nécessitent un nombre minimum d’agents de sécurité.

🔊 Gestion du matériel technique

Le matériel comprend sonorisation, éclairage, écrans, scènes et barrières.

Chaque équipement peut être utilisé sur plusieurs événements à différentes dates, avec des quantités précises.

Le matériel peut être interne ou loué.

🤝 Gestion des sponsors et partenaires

Un sponsor peut financer plusieurs événements.

Un événement peut avoir plusieurs sponsors.

Chaque partenariat définit le montant investi et les contreparties (ex : visibilité, logo, scène dédiée).

🛡 Sécurité et autorisations

Chaque événement doit disposer d’autorisations administratives.

Un plan de sécurité doit être validé avant la tenue de l’événement.

DICTIONNAIRE: 
| Signification de la donnée | Type                | Taille                       |
| -------------------------- | ------------------- | ---------------------------- |
| Identifiant événement      | Numérique           | 10 chiffres                  |
| Nom événement              | Alphanumérique      | 100 caractères               |
| Type événement             | Alphanumérique      | 20 caractères                |
| Date début événement       | Date                | 10 caractères                |
| Date fin événement         | Date                | 10 caractères                |
| Statut événement           | Alphanumérique      | 20 caractères                |
| Identifiant artiste        | Numérique           | 10 chiffres                  |
| Nom artiste                | Alphanumérique      | 100 caractères               |
| Type artiste               | Alphanumérique      | 20 caractères                |
| Nationalité artiste        | Alphanumérique      | 50 caractères                |
| Identifiant contrat        | Numérique           | 10 chiffres                  |
| Date signature contrat     | Date                | 10 caractères                |
| Montant contrat            | Numérique (décimal) | 12 chiffres dont 2 décimales |
| Statut contrat             | Alphanumérique      | 20 caractères                |
| Identifiant lieu           | Numérique           | 10 chiffres                  |
| Nom lieu                   | Alphanumérique      | 100 caractères               |
| Capacité maximale          | Numérique           | 6 chiffres                   |
| Ville lieu                 | Alphanumérique      | 50 caractères                |
| Pays lieu                  | Alphanumérique      | 50 caractères                |
| Identifiant billet         | Numérique           | 12 chiffres                  |
| Catégorie billet           | Alphanumérique      | 30 caractères                |
| Prix billet                | Numérique (décimal) | 8 chiffres dont 2 décimales  |
| Identifiant spectateur     | Numérique           | 10 chiffres                  |
| Nom spectateur             | Alphanumérique      | 50 caractères                |
| Email spectateur           | Alphanumérique      | 100 caractères               |
| Téléphone spectateur       | Numérique           | 15 chiffres                  |
| Identifiant employé        | Numérique           | 10 chiffres                  |
| Fonction employé           | Alphanumérique      | 50 caractères                |
| Identifiant matériel       | Numérique           | 10 chiffres                  |
| Type matériel              | Alphanumérique      | 50 caractères                |
| Identifiant sponsor        | Numérique           | 10 chiffres                  |
| Nom sponsor                | Alphanumérique      | 100 caractères               |
| Montant sponsoring         | Numérique (décimal) | 12 chiffres dont 2 décimales |

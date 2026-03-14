# ProjetDB_Mahiout_Ghedira

Mini-Projet – Partie 1
Phase d’analyse – Méthode MERISE
Réponse générée par l'IA avec le prompt final: 


RÈGLES DE GESTION 

1️⃣ Événements

	•	Un événement est identifié de manière unique.

	•	Un événement possède un nom, une date et une heure.

	•	Un événement se déroule dans un seul lieu.

	•	Un lieu peut accueillir plusieurs événements.

	•	Un événement peut accueillir plusieurs artistes.

	•	Un artiste peut participer à plusieurs événements.

	•	Un événement propose plusieurs catégories de billets.

	•	Chaque catégorie de billet est définie pour un seul événement.

⸻

2️⃣ Artistes

	•	Un artiste est identifié de manière unique.

	•	Un artiste possède un nom de scène.

	•	Un artiste est associé à un genre musical principal.

	•	Un artiste peut signer plusieurs contrats.

	•	Un contrat concerne un seul artiste.

⸻

3️⃣ Contrats

	•	Un contrat est identifié de manière unique.

	•	Un contrat est établi entre l’entreprise et un artiste.

	•	Un contrat est lié à un événement précis.

	•	Un événement peut comporter plusieurs contrats.

	•	Un contrat contient un montant de cachet convenu.

⸻

4️⃣ Lieux

	•	Un lieu est identifié de manière unique.

	•	Un lieu possède un nom, une adresse, une ville et un pays.

	•	Un lieu possède une capacité maximale.

	•	Un lieu peut être associé à plusieurs équipements matériels.

⸻

5️⃣ Billets et catégories

	•	Une catégorie de billet est identifiée de manière unique.

	•	Une catégorie de billet appartient à un seul événement.

	•	Une catégorie de billet possède un prix.

	•	Une catégorie de billet possède un nombre de places disponibles.

	•	Un billet est identifié de manière unique.

	•	Un billet appartient à une seule catégorie.

	•	Un billet est acheté par un seul spectateur.

	•	Un spectateur peut acheter plusieurs billets.

⸻

6️⃣ Spectateurs

	•	Un spectateur est identifié de manière unique.

	•	Un spectateur possède un nom, un prénom et une adresse email.

	•	Un spectateur peut acheter plusieurs billets.

	•	Un billet ne peut appartenir qu’à un seul spectateur.

⸻

7️⃣ Personnel

	•	Un membre du personnel est identifié de manière unique.

	•	Un membre du personnel possède un nom et une fonction.

	•	Un membre du personnel peut être affecté à plusieurs événements.

	•	Un événement mobilise plusieurs membres du personnel.

⸻

8️⃣ Matériel

	•	Un matériel est identifié de manière unique.

	•	Un matériel possède un type et un état.

	•	Un matériel peut être utilisé pour plusieurs événements.

	•	Un événement peut nécessiter plusieurs matériels.

⸻

9️⃣ Sponsors

	•	Un sponsor est identifié de manière unique.

	•	Un sponsor possède un nom et un secteur d’activité.

	•	Un sponsor peut financer plusieurs événements.

	•	Un événement peut avoir plusieurs sponsors.

	•	Pour chaque participation d’un sponsor à un événement, un montant de sponsoring est défini.
 
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

MCD (looping):
<img width="1458" height="675" alt="image" src="https://github.com/user-attachments/assets/87daabc2-cafa-4e64-8847-7775198f1200" />




MLD:
LIEU = (id_lieu INT, nom_lieu VARCHAR(100), capacité_max_lieu INT, ville_lieu VARCHAR(50));

ARTISTE = (id_art INT, nom_art VARCHAR(100), type_art VARCHAR(20), nationalite_art VARCHAR(50));

EMPLOYE = (id_emp INT, nom_emp VARCHAR(50), fonction_emp VARCHAR(50), #id_emp_supérieur);

SPONSOR = (id_spons INT, nom_spons VARCHAR(50));

MATERIEL = (id_mat INT, type_mat VARCHAR(50));

PARTICIPANT = (id_part INT, nom_part VARCHAR(50), email_part VARCHAR(100), num_part INT);

EVENEMENT = (id_ev INT, nom_ev VARCHAR(100), type_ev VARCHAR(20), date_debut_ev DATETIME, date_fin_ev DATETIME, statut_ev VARCHAR(20), #id_lieu);

CONTRAT = (#id_ev, #id_art, id_contr INT, montant_contr DECIMAL(12,2), date_signature_contr DATE, statut_contr VARCHAR(20));

CATEGORIE_BILLET = (id_cat INT, prix_cat INT, nbr_place_dispo INT, #id_ev);

BILLET = (id_billet INT, #id_cat, #id_part*);

AFFECTER = (#id_ev, #id_emp);

UTILISER = (#id_ev, #id_mat, quantite INT);

FINANCER = (#id_ev, #id_spons, montant DECIMAL(12,2));

Scénario d'utilisation:

La base de données a été conçue pour gérer l’organisation d’événements musicaux tels que des concerts ou des festivals organisés dans différents lieux et villes. Elle est utilisée par une toute nouvelle entreprise privée spécialisée dans la production d’événements musicaux nommée RhythmSphere, qui s’occupe de planifier les événements, de gérer les artistes invités, de vendre des billets aux participants et de gérer les relations avec les sponsors.

Dans ce contexte, l’utilisateur principal de la base de données est le responsable de production événementielle. Son rôle est de superviser l’organisation des événements et de s’assurer que toutes les ressources nécessaires sont bien mobilisées pour leur bon déroulement.

Pour accomplir ses tâches, il doit interroger la base de données afin d’obtenir différentes informations. Il doit notamment pouvoir consulter les événements organisés par l’entreprise, leurs dates de début et de fin, leur statut ainsi que les lieux dans lesquels ils se déroulent. Il doit également pouvoir connaître les artistes participant aux événements, leur type (DJ, groupe, chanteur, etc.) ainsi que les contrats signés avec eux, notamment les montants et les dates de signature.

Le responsable de production doit également pouvoir accéder aux informations liées à la billetterie, comme les différentes catégories de billets proposées pour chaque événement, leurs prix, le nombre de places disponibles ainsi que les billets achetés par les participants. Il doit aussi pouvoir consulter les informations concernant les participants, telles que leur nom, leur adresse email et leur numéro de téléphone.

Enfin, il doit pouvoir consulter les informations nécessaires à l’organisation logistique et financière des événements, notamment les employés affectés à chaque événement, le matériel utilisé et les quantités nécessaires, ainsi que les sponsors qui financent les événements et les montants associés.



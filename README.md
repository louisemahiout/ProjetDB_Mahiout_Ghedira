# ProjetDB_Mahiout_Ghedira

Mini-Projet – Partie 1
Phase d’analyse – Méthode MERISE
Réponse générée par l'IA: 
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

MCD:
<img width="2363" height="1030" alt="image" src="https://github.com/user-attachments/assets/84d72e6a-1cfd-4bdf-9f0c-b7e969cd1df1" />





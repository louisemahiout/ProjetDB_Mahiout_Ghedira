-- Vérifie que la capacité maximale d'un lieu est supérieure à 0
ALTER TABLE lieu 
ADD CONSTRAINT ck_capacite_lieu 
CHECK (capacité_max_lieu > 0);

-- Vérifie que le statut d'un événement fait partie des valeurs autorisées
ALTER TABLE evenement 
ADD CONSTRAINT ck_statut 
CHECK( statut_ev IN ('prevu','en_cours','terminé','annulé'));

-- Vérifie que la date de début d’un événement est avant ou égale à la date de fin
ALTER TABLE evenement 
ADD CONSTRAINT ck_date 
CHECK ( date_debut_ev <= date_fin_ev);

-- Vérifie que le montant d’un contrat est positif
ALTER TABLE contrat 
ADD CONSTRAINT ck__montant 
CHECK (montant_contr > 0);

-- Vérifie que le statut d’un contrat fait partie des valeurs autorisées
ALTER TABLE contrat 
ADD CONSTRAINT ck_statut_contrat 
CHECK (statut_contr IN ('signé','en cours','terminé'));

-- Vérifie que le prix d’une catégorie de billet n’est pas négatif
ALTER TABLE CATEGORIE_BILLET 
ADD CONSTRAINT ck_prix 
CHECK (prix_cat >= 0);

-- Vérifie que le nombre de places disponibles est supérieur ou égal à 0
ALTER TABLE CATEGORIE_BILLET 
ADD constraint ck_place 
CHECK (nbr_place_dispo >=0);

-- Vérifie que la quantité de matériel utilisée est supérieure à 0
ALTER TABLE utiliser
ADD CONSTRAINT ck_quantité 
CHECK (quantite > 0);

-- Vérifie que le montant financé par un sponsor n’est pas négatif
ALTER TABLE financer 
ADD CONSTRAINT ck_montant_sponsor 
CHECK (montant >=0);

-- Vérifie que l’adresse email du participant respecte le format
ALTER TABLE participant 
ADD CONSTRAINT ck_mail 
CHECK (email_part LIKE '%_@_%._%');

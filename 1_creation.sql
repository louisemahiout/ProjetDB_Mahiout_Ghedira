-- Table Lieu:
CREATE TABLE LIEU(
   id_lieu INT,
   nom_lieu VARCHAR(100) NOT NULL,
   capacité_max_lieu INT NOT NULL,
   ville_lieu VARCHAR(50) NOT NULL,
   PRIMARY KEY(id_lieu)
);

-- Table Artiste:
CREATE TABLE ARTISTE(
   id_art INT,
   nom_art VARCHAR(100) NOT NULL,
   type_art VARCHAR(20) NOT NULL,
   nationalite_art VARCHAR(50) NOT NULL,
   PRIMARY KEY(id_art)
);

-- Table Employé:
CREATE TABLE EMPLOYE(
   id_emp INT,
   nom_emp VARCHAR(50) NOT NULL,
   fonction_emp VARCHAR(50) NOT NULL,
   id_emp_supérieur INT,
   PRIMARY KEY(id_emp),
   FOREIGN KEY(id_emp_supérieur) REFERENCES EMPLOYE(id_emp)
   ON DELETE SET NULL
   ON UPDATE CASCADE
);

-- Table Sponsor:
CREATE TABLE SPONSOR(
   id_spons INT,
   nom_spons VARCHAR(50) NOT NULL,
   PRIMARY KEY(id_spons)
);

-- Table materiel:
CREATE TABLE MATERIEL(
   id_mat INT,
   type_mat VARCHAR(50) NOT NULL,
   PRIMARY KEY(id_mat)
);

-- Table Participant:
CREATE TABLE PARTICIPANT(
   id_part INT,
   nom_part VARCHAR(50) NOT NULL,
   email_part VARCHAR(100) NOT NULL,
   num_part INT,
   PRIMARY KEY(id_part),
   UNIQUE(email_part , num_part)
);

-- Table Evénement:
CREATE TABLE EVENEMENT(
   id_ev INT,
   nom_ev VARCHAR(100) NOT NULL,
   type_ev VARCHAR(20) NOT NULL,
   date_debut_ev DATETIME NOT NULL,
   date_fin_ev DATETIME NOT NULL,
   statut_ev VARCHAR(20) NOT NULL,
   id_lieu INT,
   PRIMARY KEY(id_ev),
   FOREIGN KEY(id_lieu) REFERENCES LIEU(id_lieu)
   ON DELETE SET NULL
   ON UPDATE CASCADE
   
);

-- Table Contrat:
CREATE TABLE CONTRAT(
   id_ev INT,
   id_art INT,
   id_contr INT,
   montant_contr DECIMAL(12,2) NOT NULL,
   date_signature_contr DATE NOT NULL,
   statut_contr VARCHAR(20) NOT NULL,
   PRIMARY KEY(id_ev, id_art, id_contr),
   FOREIGN KEY(id_ev) REFERENCES EVENEMENT(id_ev)
   ON DELETE CASCADE
   ON UPDATE CASCADE,
   FOREIGN KEY(id_art) REFERENCES ARTISTE(id_art)
   ON DELETE CASCADE
   ON UPDATE CASCADE
);

-- Table Categorie Billet:
CREATE TABLE CATEGORIE_BILLET(
   id_cat INT,
   prix_cat INT NOT NULL,
   nbr_place_dispo INT NOT NULL,
   id_ev INT,
   PRIMARY KEY(id_cat),
   FOREIGN KEY(id_ev) REFERENCES EVENEMENT(id_ev)
   ON DELETE SET NULL
   ON UPDATE CASCADE
);

-- Table Billet:
CREATE TABLE BILLET(
   id_billet INT,
   id_cat INT,
   id_part INT,
   PRIMARY KEY(id_billet),
   FOREIGN KEY(id_cat) REFERENCES CATEGORIE_BILLET(id_cat)
   ON DELETE CASCADE
   ON UPDATE CASCADE,
   FOREIGN KEY(id_part) REFERENCES PARTICIPANT(id_part)
   ON DELETE SET NULL
   ON UPDATE CASCADE
);

-- Table Affecter:
CREATE TABLE AFFECTER(
   id_ev INT,
   id_emp INT,
   PRIMARY KEY(id_ev, id_emp),
   FOREIGN KEY(id_ev) REFERENCES EVENEMENT(id_ev)
   ON DELETE CASCADE
   ON UPDATE CASCADE,
   FOREIGN KEY(id_emp) REFERENCES EMPLOYE(id_emp)
   ON DELETE CASCADE
   ON UPDATE CASCADE
);

-- Table Utliser:
CREATE TABLE UTILISER(
   id_ev INT,
   id_mat INT,
   quantite INT NOT NULL,
   PRIMARY KEY(id_ev, id_mat),
   FOREIGN KEY(id_ev) REFERENCES EVENEMENT(id_ev)
   ON DELETE CASCADE
   ON UPDATE CASCADE,
   FOREIGN KEY(id_mat) REFERENCES MATERIEL(id_mat)
   ON DELETE CASCADE
   ON UPDATE CASCADE
);

-- Table Financer:
CREATE TABLE FINANCER(
   id_ev INT,
   id_spons INT,
   montant DECIMAL(12,2) NOT NULL,
   PRIMARY KEY(id_ev, id_spons),
   FOREIGN KEY(id_ev) REFERENCES EVENEMENT(id_ev)
   ON DELETE CASCADE
   ON UPDATE CASCADE,
   FOREIGN KEY(id_spons) REFERENCES SPONSOR(id_spons)
   ON DELETE CASCADE
   ON UPDATE CASCADE
);

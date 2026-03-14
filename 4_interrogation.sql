-- PROJECTIONS ET SELECTIONS 
SELECT nom_ev, date_debut_ev, date_fin_ev, statut_ev
FROM EVENEMENT
ORDER BY date_debut_ev ASC;

SELECT DISTINCT type_ev
FROM Evenement;

SELECT id_part, nom_part
FROM PARTICIPANT
WHERE nom_part LIKE 'A%';

SELECT nom_art, type_art, nationalite_art
FROM ARTISTE
WHERE nationalite_art = 'Française';

SELECT nom_ev, date_debut_ev
FROM EVENEMENT
WHERE date_debut_ev BETWEEN '2026-04-01' AND '2026-08-01';

SELECT id_contr, id_art, montant_contr
FROM CONTRAT
WHERE statut_contr IN ('signé')
ORDER BY montant_contr ASC;

-- FONCTIONS D'AGREGATION (GROUP BY / HAVING)
SELECT id_ev, SUM(montant_contr) AS total_contrats
FROM CONTRAT
GROUP BY id_ev;

SELECT id_cat, COUNT(*) AS nb_billets_vendus
FROM BILLET
GROUP BY id_cat
HAVING COUNT(*) > 5;

SELECT id_ev, COUNT(id_art) AS nb_artistes
FROM CONTRAT
GROUP BY id_ev
HAVING COUNT(id_art) > 2;

SELECT id_spons, AVG(montant) AS moyenne_financement
FROM FINANCER 
GROUP BY id_spons
HAVING AVG(montant) > 10000;

SELECT id_lieu, MAX(capacité_max_lieu) AS capacite_max
FROM LIEU
GROUP BY id_lieu
HAVING MAX(capacité_max_lieu) > 2000;

SELECT id_ev, SUM(montant) AS total_financement
FROM FINANCER
GROUP BY id_ev
HAVING SUM(montant) > 15000;


-- artistes qui doivent signer leur contrat (in)
SELECT nom_art
FROM ARTISTE
WHERE id_art IN (
    SELECT id_art
    FROM CONTRAT
    WHERE statut_contr = 'en cours'
);

-- ev avec un artiste de sûr (exists)
SELECT nom_ev
FROM EVENEMENT e
WHERE EXISTS (
    SELECT *
    FROM CONTRAT c
    WHERE c.id_ev = e.id_ev
    AND c.statut_contr = 'signé'
);

-- ev sans sponsor (not in)
SELECT nom_ev
FROM EVENEMENT
WHERE id_ev NOT IN (
    SELECT id_ev
    FROM FINANCER
);

-- sponsor le plus généreux (all)
SELECT nom_spons, montant
FROM SPONSOR s
JOIN FINANCER f ON s.id_spons = f.id_spons
WHERE montant >= ALL (
    SELECT montant
    FROM FINANCER
);

-- artiste avec au moins 1 contrat
SELECT nom_art
FROM ARTISTE a
WHERE EXISTS (
    SELECT *
    FROM CONTRAT c
    WHERE c.id_art = a.id_art
);

SELECT e.nom_ev, l.nom_lieu, l.ville_lieu
FROM EVENEMENT e
INNER JOIN LIEU l ON e.id_lieu = l.id_lieu;

SELECT e.nom_emp AS employe,
       s.nom_emp AS supérieur
FROM EMPLOYE e
LEFT JOIN EMPLOYE s ON e.id_emp_supérieur = s.id_emp;

SELECT e1.nom_emp AS employe, e2.nom_emp AS collègue, e1.id_emp_supérieur
FROM EMPLOYE e1
JOIN EMPLOYE e2 
  ON e1.id_emp_supérieur = e2.id_emp_supérieur
WHERE e1.id_emp < e2.id_emp;

SELECT e.nom_ev, emp.nom_emp
FROM AFFECTER af
JOIN EVENEMENT e ON af.id_ev = e.id_ev
JOIN EMPLOYE emp ON af.id_emp = emp.id_emp;

SELECT c.id_ev, a.nom_art, c.statut_contr
FROM ARTISTE a
JOIN CONTRAT c ON a.id_art = c.id_art;



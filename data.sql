CREATE DATABASE IF NOT EXISTS ITThink;
USE ITThink;

CREATE TABLE IF NOT EXISTS Utilisateurs(
    id_utilisateur int AUTO_INCREMENT PRIMARY KEY,
    nom_utilisateur varchar(50),
    mot_de_passe varchar(255),
    email varchar(240)
);

CREATE TABLE IF NOT EXISTS Freelances(
    id_freelance int AUTO_INCREMENT PRIMARY KEY,
    nom_freelance varchar(50),
    competences varchar(500),
    id_utilisateur int,
    FOREIGN KEY (id_utilisateur) REFERENCES Utilisateurs(id_utilisateur) ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE IF NOT EXISTS Catégories(
    id_categorie int AUTO_INCREMENT PRIMARY KEY,
    nom_categorie varchar(50)
);

CREATE TABLE IF NOT EXISTS Sous_Catégories(
    id_sous_categorie int AUTO_INCREMENT PRIMARY KEY,
    nom_sous_categorie varchar(50),
    id_categorie int,
    FOREIGN KEY (id_categorie) REFERENCES Catégories(id_categorie) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS Projets(
    id_projet int AUTO_INCREMENT PRIMARY KEY,
    titre_projet varchar(30),
    description varchar(500),
    id_categorie int,
    id_sous_categorie int,
    id_utilisateur int,
    FOREIGN KEY (id_categorie) REFERENCES Catégories(id_categorie) ON DELETE CASCADE ON UPDATE CASCADE,
     FOREIGN KEY (id_sous_categorie) REFERENCES Sous_Catégories(id_sous_categorie) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_utilisateur) REFERENCES Utilisateurs(id_utilisateur) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS offres(
    id_offre int AUTO_INCREMENT PRIMARY KEY,
    montant int,
    delai time,
    id_freelance int,
    id_projet int,
    FOREIGN KEY (id_freelance) REFERENCES Freelances(id_freelance) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (id_projet) REFERENCES Projets(id_projet) ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE IF NOT EXISTS Témoignages(
    id_temoignage int AUTO_INCREMENT PRIMARY KEY,
    commentaire varchar(200),
    id_utilisateur int,
    FOREIGN KEY (id_utilisateur) REFERENCES Utilisateurs(id_utilisateur) ON DELETE CASCADE ON UPDATE CASCADE
);

ALTER TABLE Projets ADD date_creation date;
INSERT INTO offres(montant, delai) VALUES (3000, 20);

INSERT INTO Témoignages(commentaire) VALUES ('There is great freelancers, they made me a website in just a week, I am so happy!'), ('That was a bad work for real') ;

UPDATE Témoignages SET commentaire = 'I was not happy, it tooks them a week just for a design' WHERE id_temoignage = 2;

DELETE FROM témoignages WHERE id_temoignage = 1;

INSERT INTO utilisateurs(nom_utilisateur, mot_de_passe, email) VALUES 
('Wassim', 'mIJbazd487', 'wassimexample@gmail.com'),
('Amine', 'absdbd74', 'Amineexample@gmail.com'),
('Issam', 'dzed7azd79', 'Issamexample@gmail.com'),
('Karim', 'dazj877dz', 'Karimexemple@gmail.com'),
('Anass', 'azoozd79', 'Anassexample@gmail.com');
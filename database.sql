CREATE TABLE bde (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(100),
    prenom VARCHAR(100),
    role VARCHAR(100)
);ENGINE = INNODB

CREATE TABLE Etudiant (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(100),
    prenom VARCHAR(100),
    email VARCHAR(100),
    statut VARCHAR(50)
);ENGINE = INNODB

CREATE TABLE Participant (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(100),
    prenom VARCHAR(100),
    email VARCHAR(100),
    statut VARCHAR(50)
);ENGINE = INNODB

CREATE TABLE Evenement (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(100),
    description TEXT,
    date_event DATE,
    heure TIME,
    budget FLOAT,
    membre INT,
    FOREIGN KEY (membre) REFERENCES bde(id)
);ENGINE = INNODB

CREATE TABLE Sponsor (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(100),
    contact_principale VARCHAR(100),
    numero INT,
    email VARCHAR(100),
    montant FLOAT
    evenements INT,
    FOREIGN KEY (evenements) REFERENCES evenement(id)
);ENGINE = INNODB
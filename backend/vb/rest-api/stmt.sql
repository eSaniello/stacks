CREATE TABLE IF NOT EXISTS type_user (
    type_id INT NOT NULL AUTO_INCREMENT,
    naam VARCHAR(10),
    PRIMARY KEY (type_id)
);

CREATE TABLE IF NOT EXISTS freelancers (
    freelancer_id int NOT NULL AUTO_INCREMENT,
    type_id int,
    gebruikersnaam varchar(50),
    naam varchar(10),
    achternaam varchar(20),
    email varchar(30),
    mobiel int(20),
    adres varchar(100),
    woonplaats varchar(100),
    opleiding text(255),
    werkervaring text(255),
    PRIMARY KEY (freelancer_id),
    FOREIGN KEY (type_id)
    REFERENCES type_user(type_id)  
);

CREATE TABLE IF NOT EXISTS klant (
    klant_id int NOT NULL AUTO_INCREMENT,
    type_id int,
    gebruikersnaam varchar(50),
    naam varchar(10),
    achternaam varchar(20),
    email varchar(30),
    mobiel int(20),
    adres varchar(100),
    woonplaats varchar(100),
    PRIMARY KEY (klant_id),
    FOREIGN KEY (type_id) 
    REFERENCES type_user(type_id)
);

CREATE TABLE IF NOT EXISTS categorie (
    categorie_id int NOT NULL AUTO_INCREMENT,
    naam varchar(20),
    omschrijving varchar(255),
    PRIMARY KEY (categorie_id)
);

CREATE TABLE IF NOT EXISTS post (
    post_id int NOT NULL AUTO_INCREMENT,
    klant_id int,
    tijd timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    inhoud text,
    categorie_id int,
    PRIMARY KEY (post_id),
    FOREIGN KEY (categorie_id)
    REFERENCES categorie(categorie_id),
    FOREIGN KEY (klant_id)
    REFERENCES klant(klant_id)
);

CREATE TABLE IF NOT EXISTS reacties (
    reactie_id int NOT NULL AUTO_INCREMENT,
    post_id int,
    freelancer_id int,
    reactie varchar(50),
    PRIMARY KEY (reactie_id),
    FOREIGN KEY (post_id)
    REFERENCES post(post_id),
    FOREIGN KEY (freelancer_id)
    REFERENCES freelancers(freelancer_id)
);

CREATE TABLE IF NOT EXISTS jobs (
    job_id int NOT NULL AUTO_INCREMENT,
    klant_id int,
    freelancer_id int,
    categorie_id int,
    prijs double(10),
    PRIMARY KEY (job_id),
    FOREIGN KEY (klant_id)
    REFERENCES klant(klant_id),
    FOREIGN KEY (freelancer_id)
    REFERENCES freelancers(freelancer_id),
    FOREIGN KEY (categorie_id)
    REFERENCES categorie(categorie_id)
);
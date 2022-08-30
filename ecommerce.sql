CREATE DATABASE ecommerce;

USE ecommerce;

CREATE TABLE `clients` (
  `id_Client` int PRIMARY KEY ,
  `nom` varchar(150) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `adresse` varchar(11) NOT NULL,
  `email` varchar(50) NOT NULL,
   
) ENGINE = Innodb DEFAULT CHARSET = utf8;

CREATE TABLE `panier` (
    `id_panier` int PRIMARY KEY,
    FOREIGN KEY (id_Client)
)ENGINE = Innodb DEFAULT CHARSET = utf8;

CREATE TABLE `commandes` (
  `id_Commandes` int PRIMARY KEY,
   FOREIGN KEY (id_Client),
  `date` varchar(10) NOT NULL,
) ENGINE = Innodb DEFAULT CHARSET = utf8;

CREATE TABLE `marque` (
    `id_marque` int PRIMARY KEY ,
    `nom_marque` varchar(50) NOT NULL
)ENGINE = Innodb DEFAULT CHARSET = utf8;

CREATE TABLE `chaussures` (
  `id_Chaussures` int PRIMARY KEY ,
   FOREIGN KEY(id_marques),
  `taille` int(2) NOT NULL,
  `couleur` varchar(20) NOT NULL,
  `prix` float NOT NULL,
) ENGINE = Innodb DEFAULT CHARSET = utf8;


INSERT INTO
  `marque` (`id_marque`, `marque`, `logo`)
VALUES
  ('Adidas', 'LogoAdidas',NULL),
  ('Vans', 'LogoVans',NULL),
  ('Nike', 'LogoNike',NULL);

INSERT INTO
  `chaussures` (`id_chaussures`, `couleur`, `taille`, `prix`)
VALUES
  ('bleu', '39','15000',NULL),
  ('rouge', '40','30000',NULL),
  ('noir', '41','45000',NULL);

CREATE USER 'Andrew'@'localhost' IDENTIFIED BY '2019'

UPDATE t SET id = id_chaussures + 1 ORDER BY id DESC;

TRUNCATE TABLE chaussures;


    
    
  


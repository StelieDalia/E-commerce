CREATE DATABASE ecommerce;

USE ecommerce

CREATE USER 'Andrew'@'localhost' IDENTIFIED BY 'joshua';

SELECT User, Host FROM mysql.user;

CREATE TABLE `clients` (
  `id_Client` int PRIMARY KEY  NOT NULL AUTO_INCREMENT,
  `nom` varchar(150) NOT NULL,
  `prenom` varchar(75) NOT NULL,
  `adresse` int(11) NOT NULL,
  `email` varchar(45) NOT NULL,
) ENGINE=Innodb DEFAULT CHARSET=utf8;


CREATE TABLE `commandes` (
  `id_Commande` int PRIMARY KEY AUTO_INCREMENT,
  `id_Client` int(9) NOT NULL,
  `date` varchar(10) NOT NULL,
  INDEX par_ind (`id_Client`),
  FOREIGN KEY (`id_Client`)
  REFERENCES clients(`id_Client`)
  ON DELETE CASCADE
) ENGINE=Innodb DEFAULT CHARSET=utf8;


CREATE TABLE `marque` (
  `id_marque` int PRIMARY KEY AUTO_INCREMENT,
  `marque` varchar(25) NOT NULL,
  `logo` varchar(10) NOT NULL,
) ENGINE=Innodb DEFAULT CHARSET=utf8;


CREATE TABLE `chaussures` (
  `id_Chaussures` int PRIMARY KEY AUTO_INCREMENT,
  `id_marque` int(9) NOT NULL,
  `taille` int(2) NOT NULL,
  `couleur` varchar(20) NOT NULL,
  `prix` float NOT NULL,
  `nomChaussure` varchar(25) NOT NULL,  
  INDEX par_ind (id_marque),
  FOREIGN KEY (id_marque`)
  REFERENCES marques(id_marque`)
  ON DELETE CASCADE
) ENGINE=Innodb DEFAULT CHARSET=utf8;


CREATE TABLE `liste_commandes` (
  `id_Commande` int PRIMARY KEY  AUTO_INCREMENT,
  `id_Chaussures` int(9) NOT NULL,
  `quantite` int(3) NOT NULL,
  INDEX par_ind (`id_Chaussures`),
  FOREIGN KEY (`id_Chaussures`)
  REFERENCES chaussures(`id_Chaussures`)
  ON DELETE CASCADE
  
) ENGINE=Innodb DEFAULT CHARSET=utf8;


INSERT INTO `marques` (id_marque`, `marque`, `logo`) VALUES
(1, 'Adidas', 'LogoAdidas'),
(2, 'Nike', 'LogoNike'),
(3, 'Vans', 'LogoPuma');


INSERT INTO `chaussures` (`id_Chaussures`, id_marque`, `taille`, `couleur`, `prix`, `nomChaussure`) VALUES
(1, 3, 35, 'rouge', 15000, 'Nike'),
(2, 1, 20, 'gris', 30000, 'Adidas'),
(3, 2, 50, 'Jaune', 45000, 'Vans');


-- LISTE LES MARQUES CONTENUS DANS DANS LA TABLES CHAUSSURES
SELECT marque FROM marques;

-- SUPPRIME LA CHASSURE DE MARQUE Nike
DELETE FROM chaussures WHERE id_Chaussures = 1;  

-- MISE A JOUR LA CHASSURE DE MARQUE Nike
UPDATE chaussures SET nomChaussure = 'Vans' WHERE id_Chaussures = 2;


    
    
  


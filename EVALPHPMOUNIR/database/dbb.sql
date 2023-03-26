CREATE DATABASE : wf3_php_intermediaire_prenom

USE wf3_php_intermediaire_prenom;

CREATE TABLE  advert (

id int(5) NOT NULL AUTO_INCREMENT,
title varchar(150) NOT NULL,
description text NOT NULL,
postal_code int(5) NOT NULL,
city varchar (20) NOT NULL,
type enum('location','vente') NOT NULL,
price double (8,2), NOT NULL,
reservation_message text DEFAULT NULL,
PRIMARY KEY (id),
)ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

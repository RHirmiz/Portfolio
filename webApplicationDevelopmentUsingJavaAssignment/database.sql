DROP DATABASE IF EXISTS COMP3095;

CREATE DATABASE IF NOT EXISTS COMP3095;
USE COMP3095;
CREATE USER 'admin@domain.ca'@'localhost' IDENTIFIED BY 'P@ssword1';
GRANT ALL PRIVILEGES ON COMP3095.* TO 'admin@domain.ca'@'localhost' WITH GRANT OPTION;

CREATE TABLE USERS 
( 
	id int(11) AUTO_INCREMENT PRIMARY KEY, 
	firstname varchar(255),
	lastname varchar(255),
    address varchar(255),
	email varchar(255), 
	created timestamp default current_timestamp,
	password varchar(20)	
);

INSERT INTO USERS (firstname, lastname, address, email, password) VALUES
(NULL, NULL, NULL, "admin@domain.ca", "P@ssword1");

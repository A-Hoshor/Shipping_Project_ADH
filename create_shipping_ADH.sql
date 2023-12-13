DROP DATABASE IF EXISTS shpAuth;

CREATE DATABASE shpAuth;

USE shpAuth;
CREATE TABLE ports(
	pName VARCHAR(40) NOT NULL,
	pCity VARCHAR(40)  NOT NULL,
	country VARCHAR(40) NOT NULL,
	PRIMARY KEY (pName, pCity)
);

CREATE TABLE ships(
	ship_name VARCHAR(60) NOT NULL PRIMARY KEY,
	displacement DECIMAL NOT NULL,
	captains_first_name VARCHAR(15) NOT NULL,
	captains_last_name VARCHAR(15) NOT NULL,
	crew_total INT NOT NULL,
	year_built INT NOT NULL,
    port_name VARCHAR(40),
    port_city VARCHAR(40),
	FOREIGN KEY(port_name , port_city) REFERENCES ports(pName, pCity)
);

CREATE TABLE containers(
	container_id INT NOT NULL PRIMARY KEY,
	height DECIMAL(3,1) NOT NULL,
	width DECIMAL(3,1) NOT NULL,
	length DECIMAL(3,1) NOT NULL,
    sName VARCHAR(60),
	FOREIGN KEY (sName) REFERENCES ships(ship_name)
);



	



CREATE DATABASE coffeesense;

USE coffeesense;

CREATE TABLE leituras (
idLeitura int primary key auto_increment,
temperatura decimal(5,2),
umidade decimal(5,2),
data_hora datetime
);

INSERT INTO leituras VALUES
(default, 10.8 , 80 , '2024-01-02'),
(default, 18.7 , 50 , '2024-02-18'),
(default, 22.5 , 55 , '2024-03-29');


CREATE TABLE cliente (
idCliente int primary key auto_increment,
nome varchar(45),
email varchar(70),
telefone varchar(11)
);

ALTER TABLE cliente
	MODIFY COLUMN telefone varchar(20);

INSERT INTO cliente VALUES
(default, 'Fernanda Caramico' , 'fernanda.caramico@sptech.school' , '945987-2025'),
(default, 'Rafael Petry' , 'rafael.petry@sptech.school' , '95689-4756'),
(default, 'Vivian Silva' , 'vivian.silva@sptech.school' , '94526-7845');

CREATE TABLE endereco (
idEndereco int primary key auto_increment,
logradouro varchar(80),
numero int,
areaTerreno decimal(5,2)
);

INSERT INTO endereco VALUES
(default, 'avenida alda' , '1002' , '500.87'),
(default, 'rua dos marins' , '57' , '357.6'),
(default, 'estrada das jabuticabeiras' , '13' , '745.5');
CREATE DATABASE coffeeSense;
use coffeeSense;

CREATE TABLE PRODUTOR (
idProdutor INT PRIMARY KEY AUTO_INCREMENT,
nome varchar(80),
sobrenome varchar(80),
dtNasc date,
email varchar(90),
telefone varchar(25)
);

INSERT INTO PRODUTOR VALUES 
(default, 'Gabriel', 'Nunes', '1980-08-03', 'produtorCafeszais@outlook.com.br', '55 11 98765-0986'),
(default, 'João', 'Santos', '1970-10-13', 'produtorArabica@outlook.com.br', '55 31 98765-0859'),
(default, 'Carlos', 'Antônio', '1976-02-20', 'produtorCafe@outlook.com.br', '55 31 96753-9450'),
(default, 'Maria', 'Lurdez', '1978-12-23','produtorDeCafe@outlook.com.br', '55 75 96753-0977'),
(default, 'Bernado', 'Campos', '1990-05-06','produtoraromatizado@outlook.com.br', '55 75 98974-0988'),
(default, 'Amanda', 'Flores', '1989-11-04','produtoraDoaroma@outlook.com.br', '55 11 93215-0999');


SELECT nome, email, telefone FROM PRODUTOR;

CREATE TABLE endereco (
idEndereco INT PRIMARY KEY AUTO_INCREMENT,
CEP varchar(20) not null,
Pais varchar(50),
Estado varchar(50),
Cidade varchar(50),
Bairro varchar(60),
Numero Varchar(40) not null,
areaTotal varchar(40) not null,
areaOcupada varchar(40) not null-- coloquei varchar pois pode ter letras 
);


INSERT INTO endereco VALUES
(default, '05883260', 'Brasil', 'São Paulo', 'São Paulo', 'jd colégio', 225, '780m²','400m²'),
(default, '05845389', 'Brasil', 'Minas Gerais', 'São Lourenzo', 'estrada rivieira', 404, '1800m²','900m²'),
(default, '05865744', 'Brasil', 'Bahia', 'Salvador', 'jd são luis', 210, '900m²','600m²'),
(default, '05678942', 'Brasil', 'Minas Gerais', 'carmo de minas', 'brigadeiro', 107, '990m²','800m²'),
(default, '04254178', 'Brasil', 'São Paulo', 'Dracena', 'theodoro machado', 857, '800m²','400m²'),
(default, '03452168', 'Brasil', 'Alagoas', 'Maceio', 'parque santa maria', 1004, '800m²','400m²');

SELECT * FROM ENDERECO;

SELECT cep as CEP,
numero as Número,
areaTotal as Área, 
areaOcupada as Área_Ocupada FROM ENDERECO;


CREATE TABLE Sensor (
idSensor INT PRIMARY KEY AUTO_INCREMENT,
nome varchar(50),
especialidade varchar(90), -- ex temperatura 
status_sensor varchar(10),
constraint chkStatus check (status_sensor in ('Habilitado', 'Desabilitado', 'Em espera'))
);

Insert into Sensor values 
(default, 'DHT11', 'Temperatura e umidade', 'Habilitado' );

SELECT * FROM SENSOR;
SELECT nome as Sensor,
especialidade as Especialidade,
status_sensor as Status_sensor
FROM SENSOR;


CREATE TABLE Temperatura (
idTemperatura INT PRIMARY KEY AUTO_INCREMENT,
data_e_hora datetime,
area_implantada_sensor varchar(50),
status_temperatura varchar(60),
constraint chkTemperatura check (status_temperatura in ('Temperatura adequada', 'Temperatura Inadequada', 'Alerta Risco de fungos'))
);


Insert into Temperatura values 
(default, '2024-01-10 08:00:45','setor 1' ,'Temperatura adequada'),
(default, '2024-01-10 09:30:00','setor 2', 'Temperatura adequada'),
(default, '2024-01-10 10:30:20','setor 4', 'Temperatura inadequada'),
(default, '2024-01-10 11:50:11','setor 5', 'Temperatura inadequada'),
(default, '2024-01-10 12:40:46', 'setor 6','Alerta Risco de fungos'),
(default, '2024-01-10 13:10:55', 'setor 7', 'Alerta Risco de fungos');

SELECT * FROM PRODUTOR;
SELECT * FROM ENDERECO;
SELECT * FROM SENSOR;
SELECT * FROM TEMPERATURA;
SELECT * FROM UMIDADE;

SELECT * FROM TEMPERATURA;
SELECT data_e_hora as Horário,
area_implantada_sensor as Área_Sensor,
status_temperatura as Temperatura
FROM TEMPERATURA;

SELECT data_e_hora as Horário,
area_implantada_sensor as Área_Sensor,
status_temperatura as Temperatura
FROM TEMPERATURA WHERE status_temperatura != 'Temperatura adequada';

SELECT data_e_hora as Horário,
area_implantada_sensor as Área_Sensor,
status_temperatura as Temperatura
FROM TEMPERATURA WHERE status_temperatura = 'Alerta Risco de fungos';

 select concat('O Sensor do ', area_implantada_sensor, ' está com a ', status_temperatura)
 as Temperatura from Temperatura;

CREATE TABLE Umidade (
idUmidade INT PRIMARY KEY AUTO_INCREMENT,
data_e_hora datetime,
area_implantada_sensor varchar(50),
status_umidade varchar(60),
constraint chkUmidade check (status_umidade in ('Umidade adequada', 'Umidade Inadequada', 'Alerta Risco de fungos'))
);


 
 
Insert into Umidade values 
(default, '2024-01-10 08:00:45','setor 1' ,'Umidade adequada'),
(default, '2024-01-10 09:30:00','setor 2', 'Umidade adequada'),
(default, '2024-01-10 10:30:20','setor 4', 'Umidade inadequada'),
(default, '2024-01-10 11:50:11','setor 5', 'Umidade inadequada'),
(default, '2024-01-10 12:40:46', 'setor 6','Alerta Risco de fungos'),
(default, '2024-01-10 13:10:55', 'setor 7', 'Alerta Risco de fungos');

SELECT * FROM Umidade;

 select concat('O Sensor do ', area_implantada_sensor, ' está com a ', status_umidade)
 as Umidade from Umidade;
 
SELECT data_e_hora as Horário,
area_implantada_sensor as Área_Sensor,
status_umidade as Umidade
FROM Umidade;

SELECT data_e_hora as Horário,
area_implantada_sensor as Área_Sensor,
status_umidade as Umidade
FROM Umidade WHERE status_umidade != 'Umidade adequada';

SELECT data_e_hora as Horário,
area_implantada_sensor as Área_Sensor,
status_umidade as Umidade
FROM Umidade WHERE status_umidade = 'Alerta Risco de fungos';


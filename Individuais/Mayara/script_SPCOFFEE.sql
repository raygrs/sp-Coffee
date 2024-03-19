create database CoffeeSense;
use coffeeSense;

create table Produtores(
IdProdutor int primary key auto_increment,
nome varchar (30),
telefone char (12),
email varchar (40));

alter table Produtores modify column telefone char (14);

insert into Produtores values
(default,'Fernanda Caramico', '(41)9986352731', 'fernanda.caramico@gmail.com'),
(default, 'Maro Muniz', '(88)9946821963', 'maro.muniz@gmail.com'),
(default, 'Eugenia Oliveira', '(11)9956933109', 'eugenia.oliveira@gmail.com'),
(default, 'Rafael Petry', '(11)9963251088', 'rafael.petry@gmail.com');

select * from Produtores;
select * from Produtores order by nome asc;

create table Plantacao(
IdPlantacao int primary key auto_increment,
AreaPlantada varchar (30),
SacasColhidas decimal (10)
)auto_increment=1;

alter table Plantacao modify column SacasColhidas varchar (10);

insert into Plantacao values
(default, '300m', 20),
(default, '12000m', 120),
(default, '9902m', 80),
(default, '860m', '60');

select * from Plantacao;

create table Sensores(
IdSensor int primary key auto_increment,
Umidade decimal (10,2),
Temperatura decimal (10,2),
SensorStatus varchar(30),
 constraint checkstatus check(SensorStatus in('operando','inoperacional'))
 );
 
 alter table Sensores modify column Umidade decimal (30,2);
  alter table Sensores modify column Temperatura decimal (30,2);
 
 
 insert into Sensores values 
 (default,'11.60', '19.67', 'operando'),
 (default, '13', '22', 'operando'),
 (default, '33.33', '30', 'inoperacional'),
 (default, '12.54', '20', 'operando');
 
 select * from Sensores;
 











create database sprint1;

use sprint1;

use sprint1;

create table Usuarios (
	idUsuarios int primary key auto_increment,
    Nome varchar (45),
    Telefone char (11),
    Email varchar (256)
    )
    auto_increment = 10938
    ;
    
insert into Usuarios value
	(default, 'Felipe', '11976858578', 'Felipe.stiago@gmail.com'),
    (default, 'Aguero', '11932374919', 'Aguerodelamancha@moriah.school'),
    (default, 'Matheus', '11912439393', 'matheus.marcelino@sptech.school'),
    (default, 'Fernanda', '1199643678', 'fernanda@sptech.school'),
    (default, 'Marcelo', '11924871914', 'marcelo.mico@sptech.school');
    
select * from Usuarios;

create table InformacoesAdd (
	idInf int primary key auto_increment,
    Temperatura varchar (10),
    Humidade varchar (10),
    Dia date);
    
describe InformacoesAdd;

insert into InformacoesAdd value
	(default, '22', '50', '2022-10-24'),
    (default, '18', '59', '2022-10-22'),
    (default, '18', '61', '2022-11-01'),
    (default, '19', '72', '2022-11-05'),
    (default, '19', '63', '2022-10-18'),
    (default, '20', '42', '2022-11-03');
    
select * from InformacoesAdd;

create table DadosPlantação (
	idPlantação int primary key auto_increment,
    Dono varchar (45),
    País varchar (45),
    Estado varchar (45),
    TamanhoPlantação varchar (45));
    
insert into DadosPlantação value
	(default, 'Mauricio', 'EstadosUnidos', 'Washington ', '3Km³'),
    (default, 'Samuel', 'Espanha', 'Barcelona', '280m²'),
    (default, 'Moura', 'Brasil', 'SãoPaulo', '400m²'),
    (default, 'Mariana', 'Brasil', 'SãoPaulo', '500Km³'),
    (default, 'Marise', 'Tailandia', 'Bangkok', '1010m²');
    
select * from DadosPlantação;

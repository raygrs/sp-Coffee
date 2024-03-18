use sprint1;

create table Clientes (
	idCliente int primary key auto_increment,
    Nome varchar (45),
    Telefone varchar (45),
    Email varchar (256));
    
insert into Clientes value
	(default, 'Vivian', '11976858800', 'vivian.silva@sptech.school'),
    (default, 'Marcio', '11936474909', 'Marcio.Santana@sptech.school'),
    (default, 'Caio', '11986432093', 'caio.santos@sptech.school'),
    (default, 'Fernanda', '1199643678', 'fernanda.caramico@sptech.school'),
    (default, 'Marise', '10101010101', 'Marise.Miranda@sptech.school');
    
select * from Clientes;

create table DadosColetados (
	idDados int primary key auto_increment,
    Temperatura varchar (10),
    Humidade varchar (10));
    
alter table DadosColetados add column Dia date;
    
describe DadosColetados;

select * from DadosColetados;
    
insert into DadosColetados value
	(default, '34', '37', '2024-03-14'),
    (default, '30', '35', '2024-03-15'),
    (default, '28', '32', '2024-03-16'),
    (default, '25', '27', '2024-03-17'),
    (default, '23', '24', '2024-03-18'),
    (default, '22', '20', '2024-03-19');
    
select * from DadosColetados;

create table DadosPlantação (
	idPlantação int primary key auto_increment,
    Dono varchar (45),
    País varchar (45),
    Estado varchar (45),
    TamanhoPlantação varchar (45));
    
insert into DadosPlantação value
	(default, 'Vivian', 'EstadosUnidos', 'NewYork', '300m²'),
    (default, 'Marcio', 'Espanha', 'Barcelona', '350m²'),
    (default, 'Caio', 'Brasil', 'SãoPaulo', '400m²'),
    (default, 'Fernanda', 'Brasil', 'SãoPaulo', '450m²'),
    (default, 'Marise', 'Egito', 'cairo', '1010m²');
    
select * from DadosPlantação;

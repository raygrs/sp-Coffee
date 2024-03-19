create database coffeesense;
use coffeesense;

-- TABELA - USUÁRIO
create table usuario (
idUsuario int primary key auto_increment,
nomeUsuario varchar(100) not null,
numeroPlantacoes int not null, -- Corresponde ao número de plantações do usuário
email varchar(100) not null,
senha varchar(30) not null, 
telefoneCelular char(11) not null,
telefoneEmpresarial char(10) not null,
dtNasc date not null ) auto_increment=1;

insert into usuario (idUsuario, nomeUsuario, numeroPlantacoes, email, senha, telefoneCelular, telefoneEmpresarial, dtNasc) values
(default, 'João Almeida Barros', 1, 'joaoalmeidabarros@gmail.com', 'joaobarros2024', '31946378290', '3167940324', '1972-04-21'),
(default, 'Isabela Pereira Lima', 14, 'isapereira@gmail.com', '6787188', '31921650854', '3161843779', '1989-01-22'),
(default, 'Gustavo Barbosa Silveira', 34, 'gustavosilveira@gmail.com', '#@4509gustavo', '11992579044', '1142335694', '1976-07-02'),
(default, 'João Silva Schneider', 56, 'joaosschneider@gmail.com', '7191724', '11988651012', '1156718009', '1976-02-27'),
(default, 'Heitor Gomes Lombardo', 32, 'heitorglombardo@gmail.com', 'Heitor1992_RtQ', '27955320978', '2778109754', '1978-06-13'),
(default, 'Mariana Martins', 7, 'marianamartins@gmail.com', 'Mari#22341', '27911563709', '2781094670', '1999-11-03'),
(default, 'Rodrigo Carvalho Rocha', 22, 'rodrigocrocha@gmail.com', '2566778910', '41989235567', '4123910947', '1985-12-07'),
(default, 'Lucas França Martins', 26, 'lucasfranca@gmail.com', 'fazenda_cafe_nosso2003', '11901934778', '1143124560', '1990-10-20'),
(default, 'Paulo Nonato Ribeiro', 58, 'paulonribeiro@gmail.com', 'fazendaARABICA2024', '31910366447', '3179054478', '1972-08-17'),
(default, 'Julia Alves Lima', 53, 'julialveslima@gmail.com', '981782390', '41916700321', '4134738593', '1982-03-12'),
(default, 'Evellyn Barreto Santos', '67', 'evellynbsantos@gmail.com', 'evellyn_FazendaNossa', '31910237485', '3174837463', '1988-09-19');

select*from usuario;

-- TABELA - ENDEREÇO
create table endereco (
idUsuario int not null,
idEndereco int primary key auto_increment,
estado char(2) not null,
cidade varchar(50) not null,
bairro varchar(50) not null,
cep char(8) not null,
numero_plantacao int not null
)auto_increment=1; 

insert into endereco values
(1, default, 'MG', 'Araguari', 'Centro', 38449923, 1),
(2, default, 'MG', 'Três Pontas', 'Santana', 37190-000, 14),
(3, default, 'SP', 'Franca', 'Jardim Redentor', 14404569, 34),
(4, default, 'SP', 'São João da Boa Vista', 'Vila São José',  13870000, 56),
(5, default, 'ES', 'Domningos Martins', 'Centro', 29260000, 32),
(6, default, 'ES', 'Afonso Cláudio', 'Bairro Nova Esperança', 29600000, 7),
(7, default, 'PR', 'Londrina', 'Gleba Palhano', 86050000, 22),
(8, default, 'SP', 'Botucatu', 'Vila Maria', 18604300, 26),
(9, default, 'MG', 'Patrocínio', 'Morada do Sol', 38703280, 58),
(10, default, 'PR', 'Jacarezinho', 'Jardim América', 86400000, 53),
(11, default, 'MG', 'Campos Altos', 'Santa Rita', 38970000 , 67);

select*from endereco;

-- TABELA - DADOS SOBRE AS PLANTAÇÕES
create table plantacoes (
idUsuario int not null,
nome_usuario varchar(50) not null,
idEndereco int not null,
idPlantacao int primary key auto_increment,
area_m2 int not null,
area_ha int not null,
qtd_PlantasDeCafe int not null,
qtd_GraosDeCafe int not null
) auto_increment=1;

insert into plantacoes (idUsuario, nome_usuario, idEndereco, area_m2, area_ha, qtd_PlantasDeCafe, qtd_GraosDeCafe)
values
(1, 'João Almeida Barros', 1, 1000, 0.1, 500, 200),
(2, 'Isabela Pereira Lima', 2, 1500, 0.15, 700, 300),
(3, 'Gustavo Barbosa Silveira', 3, 2000, 0.2, 1000, 400),
(4, 'João Silva Schneider', 4, 1200, 0.12, 600, 250),
(5, 'Heitor Gomes Lombardo', 5, 1800, 0.18, 800, 350),
(6, 'Mariana Martins', 6, 700, 0.07, 300, 150),
(7, 'Rodrigo Carvalho Rocha', 7, 2200, 0.22, 1200, 500),
(8, 'Lucas França Martins', 8, 2600, 0.26, 1400, 600),
(9, 'Paulo Nonato Ribeiro', 9, 5800, 0.58, 2800, 1200),
(10, 'Julia Alves Lima', 10, 5300, 0.53, 2500, 1100),
(11, 'Evellyn Barreto Santos', 11, 6700, 0.67, 3200, 1300);

select*from plantacoes;

/* 
     A variável "area_m2" nesta tabela se refere ao em metro quadrado (m²),  
que é frequentemente utilizado por pequenos e médios cafeicultores. Para plantações de grande escala, geralemente se usa o hectare (ha).
É importante ressaltar que 1 ha equival a 10.000 m².

*/

create table sensor (
idSensor int primary key auto_increment,
idEndereco int not null,
idPlanta int not null, 
status_sensor varchar(45),
constraint chkStatus check (status_sensor in ('Habilitado', 'Desabilitado'))
) auto_increment=1;
 
 /* Cada sensor monitorará as raízes de apenas uma planta de café arábica  */

insert into sensor (idSensor, idEndereco, idPlanta, status_sensor) values
(default, 1, 1, 'Habilitado'),
(default, 2, 2, 'Habilitado'),
(default, 3, 3, 'Habilitado'),
(default, 4, 4, 'Habilitado'),
(default, 5, 5,'Desabilitado'),
(default, 6, 6, 'Desabilitado'),
(default, 7, 7,'Habilitado'),
(default, 8, 8,'Habilitado'),
(default, 9, 9, 'Desabilitado'),
(default, 10, 10,'Habilitado'),
(default, 11, 11, 'Habilitado');

select*from sensor;

-- TABELA - TEMPERATURA E UMIDADE
create table temperatura (
idUsuario int not null,
nome_usuario varchar(50) not null,
idEndereco int not null, 
idPlantacao int not null,
idPlanta int primary key,
temperatura double not null,
hdataHora datetime ,
statusTemperatura varchar(60),
constraint chkTemperatura check (statusTemperatura in ('Temperatura adequada', 'Temperatura Inadequada', 'Alerta', 'Zona de perigo')) ); 

insert into temperatura values
(1, 'João Almeida Barros', 1, 1, 1, 21.3, '2024-01-10 08:00:45','Temperatura adequada'),
(2, 'Isabela Pereira Lima', 2, 2, 2, 22.5, '2024-03-15 08:00:45','Zona de perigo'),
(3, 'Gustavo Barbosa Silveira', 3, 3, 3, 21.3, '2024-02-09 08:00:45','Temperatura adequada'),
(4, 'João Silva Schneider', 4, 4, 4, 23.2, '2024-01-17 08:00:45', 'Alerta'),
(5, 'Heitor Gomes Lombardo', 5, 5, 5, 20.8, '2024-01-02 08:00:45','Temperatura adequada'),
(6, 'Mariana Martins', 6, 6, 6, 17.5, '2024-03-05 08:00:45','Temperatura Inadequada'),
(7, 'Rodrigo Carvalho Rocha', 7, 7, 7, 21.1, '2024-02-26 08:00:45','Temperatura adequada'),
(8, 'Lucas França Martins', 8, 8, 8, 22.7, '2024-02-25 08:00:45','Temperatura Inadequada'),
(9, 'Paulo Nonato Ribeiro', 9, 9, 9, 19.4, '2024-01-10 08:00:45','Temperatura adequada'),
(10, 'Julia Alves Lima', 10, 10, 10, 17.1, '2024-02-19 08:00:45','Temperatura Inadequada'),
(11, 'Evellyn Barreto Santos', 11, 11, 11, 23.8, '2024-03-13 08:00:45', 'Alerta');

select*from temperatura;
 
 create table umidade (
idUsuario int not null,
nome_usuario varchar(50) not null,
idEndereco int not null, 
idPlantacao int not null,
idPlanta int primary key,
umidade double not null,
dataHora datetime,
statusUmidade varchar(60),
constraint chkUmidade check (statusUmidade in ('Umidade adequada', 'Umidade Inadequada', 'Alerta', 'Zona de perigo')) ); 

insert into umidade values
(1, 'João Almeida Barros', 1, 1, 1, 3.3, '2024-01-10 08:00:45','Umidade adequada'),
(2, 'Isabela Pereira Lima', 2, 2, 2, 4.2, '2024-03-15 08:00:45','Zona de perigo'),
(3, 'Gustavo Barbosa Silveira', 3, 3, 3, 3.4, '2024-02-09 08:00:45','Umidade adequada'),
(4, 'João Silva Schneider', 4, 4, 4, 2.8, '2024-01-17 08:00:45', 'Alerta'),
(5, 'Heitor Gomes Lombardo', 5, 5, 5, 3.6, '2024-01-02 08:00:45','Umidade adequada'),
(6, 'Mariana Martins', 6, 6, 6, 3.6, '2024-03-05 08:00:45','Umidade Inadequada'),
(7, 'Rodrigo Carvalho Rocha', 7, 7, 7, 3.5, '2024-02-26 08:00:45','Umidade adequada'),
(8, 'Lucas França Martins', 8, 8, 8, 3.3, '2024-02-25 08:00:45','Umidade Inadequada'),
(9, 'Paulo Nonato Ribeiro', 9, 9, 9, 3.4, '2024-01-10 08:00:45','Umidade adequada'),
(10, 'Julia Alves Lima', 10, 10, 10, 3.5, '2024-02-19 08:00:45','Umidade Inadequada'),
(11, 'Evellyn Barreto Santos', 11, 11, 11, 2.9, '2024-03-13 08:00:45', 'Alerta');

select*from umidade;
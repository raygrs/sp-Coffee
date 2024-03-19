USE spcoffee;

CREATE TABLE producao (
idProducao INT PRIMARY KEY AUTO_INCREMENT,
Hectares DECIMAL (7,2),
TerrenoPlantacao DECIMAL (6,2),
AreaMonitorada DECIMAL(6,2),
CondicoesClimaticas VARCHAR (40),
TecnologiasUtilizadas VARCHAR(40)
 )AUTO_INCREMENT =1;
 
 ALTER TABLE producao ADD CONSTRAINT chkProducao
 CHECK (TecnologiasUtilizadas IN ( 'irrigacao', 'nao e utilizada'));

-- Segunda tabela ------------------------------

USE spcoffee;

CREATE TABLE usuario (
IdUsuario INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(40),
telefone CHAR (12),
cep CHAR(8),
genero VARCHAR(40),
email VARCHAR(40),
DocumentoIdentificação VARCHAR(40),
nacionalidade VARCHAR(40),
idioma VARCHAR(40)
) AUTO_INCREMENT =1;

INSERT INTO usuario VALUES
(DEFAULT, 'Cássio', '11-98865219', '04381000', 'Masculino', 'cassio@email.com', '812192912-0', 'Brasileiro', 'Português');

INSERT INTO usuario VALUES
(DEFAULT, 'Kamilly', '13-12019301', '03809131', 'Feminino', 'kamilly88@gmail.com', '4920892411-2', 'Colombiana', 'Espanhol'),
(DEFAULT, 'Selma', '11-3819843', '02918380', 'Feminino', 'Selmaaadias@gmail.com', '93103901093-3', 'Brasileira', '´Português'),
(DEFAULT, 'Marcio ', '11-8881379', '10224355', 'Masculino', 'MarcinhoAgricultor@gmail.com', '99752084392-3', 'Brasileio', '´Português'),
(DEFAULT, 'Daniel', '11-99984729', '89328943', 'Masculino', 'ProdutorDaniel@gmail.com', '989412709-0', 'Brasileiro', '´Português');
SELECT * FROM usuario;

SELECT nome, cep, email, DocumentoIdentificação, nacionalidade FROM usuario;


-- Tabela 3-------------------------------------------------
-- 	colocar select´s etc
-- IDEIAS: Tabelas de vendas: id, id do cliente, data de venda, qtd, preço, status com check ( se foi paga ou n)

Use spcoffee;

CREATE TABLE vendas (
IdUsuario INT PRIMARY KEY AUTO_INCREMENT,
DataVenda DATE,
QuantidadeSaca DECIMAL (12,2), 
SafraAno DECIMAL(12,2), -- Quntidade de sacas vendidas por ano
StatusVenda VARCHAR (20)
) ;

ALTER TABLE vendas ADD CONSTRAINT chkStatus 
	CHECK ( StatusVenda in ('PAGO' , 'PENDENTE'));
    
INSERT INTO vendas value
(DEFAULT, '2024-03-09', '17000.00', '60000.00', 'PAGO'),
(DEFAULT, '2024-02-01', '13000.00','32000.00', 'PENDENTE'),
(DEFAULT, '2023-11-25', '15000.00', '42000.00', 'PAGO');

SELECT * FROM vendas;




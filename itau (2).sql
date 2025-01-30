 CREATE DATABASE itau;
 
 USE itau;
 
 CREATE TABLE cliente (
 id_cliente INT,
 nome_cliente VARCHAR(100),
 cpf CHAR(11),
 data_nascimento DATE,
 sexo CHAR(1),
 estado_civil VARCHAR(20),
 renda_mensal DECIMAL(10, 2),
 endereco VARCHAR(150),
 cidade VARCHAR(50),
 estado CHAR(2),
 PRIMARY KEY (id_cliente)
 );
 
 INSERT INTO cliente (id_cliente, nome_cliente, cpf, data_nascimento, sexo, estado_civil, renda_mensal, endereco, cidade, estado)
 VALUES (1, 'João Silva', '12345678901','1985-06-15','M','Casado',8500.00,'Rua das Palmeiras, 123','São Paulo','SP'),
 (2, 'Maria Oliveira','98765432100','1990-09-22','F','Solteira', 6500.00,'Av. Brasil, 456','Rio de Janeiro','RJ'),
 (3, 'Carlos Souza', '32165498702','1982-03-10','M', 'Divorciado', 7200.75,'Rua XV de Novembro', 'Curitiba', 'PR'),
 (4, 'Ana Lima', '65498732109', '1995-12-05', 'F', 'Casada', 5800.00, 'Rua das Flores, 321', 'Belo Horizonte', 'MG'),
 (5, 'Pedro Santos', '85296374105', '1988-07-18', 'M', 'Solteiro',9200.00, 'Av. Paulista, 987', 'São Paulo', 'SP'),
 (6, 'Juliana Mendes', '36985214700', '2000-01-25', 'F', 'Solteira', 4500.30,'Rua Augusta, 159', 'Campinas', 'SP');
 
 SELECT * FROM cliente;
 
 CREATE VIEW clientes_sp AS
 SELECT * FROM cliente
 WHERE estado = 'SP';
 
 DROP VIEW clientes_sp;
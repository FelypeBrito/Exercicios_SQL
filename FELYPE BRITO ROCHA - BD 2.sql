/*Exercicio 1*/
CREATE TABLE clientes(
	cod_cli INT NOT NULL PRIMARY KEY,
    nome varchar(200) NOT NULL,
    endereco varchar(200),
    cidade varchar(200),
    telefone varchar(200)
);

/*Exercicio 2*/
INSERT INTO clientes(cod_cli, nome, endereco, cidade, telefone) VALUES (01, 'FRANCISCO', 'Lins 1', 'Lins', '(14)98515-3641' );
INSERT INTO clientes(cod_cli, nome, endereco, cidade, telefone) VALUES (02, 'GABRIEL FRESSATO', 'PARK DAS FLORES', 'Lins', '(14)98125-7841' );
INSERT INTO clientes(cod_cli, nome, endereco, cidade, telefone) VALUES (03, 'AMANDA', 'Lins 2', 'Lins', '(14)3352-3641' );
INSERT INTO clientes(cod_cli, nome, endereco, cidade, telefone) VALUES (04, 'LUIZ', 'CDHU', 'Guaiçara', '(14)99745-3842' );
INSERT INTO clientes(cod_cli, nome, endereco, cidade, telefone) VALUES (05, 'ISABELA', 'Lins 5', 'Lins', null );
INSERT INTO clientes(cod_cli, nome, endereco, cidade, telefone) VALUES (06, 'FABIANO', 'SANTA FAUSTA', 'SABINO', '(14)97759-1245' );
INSERT INTO clientes(cod_cli, nome, endereco, cidade, telefone) VALUES (07, 'CRISTIANE', 'CDHU', 'Lins', '(14)3321-0000' );
INSERT INTO clientes(cod_cli, nome, endereco, cidade, telefone) VALUES (08, 'MARCOS', '9 DE JULHO', 'Lins', null );
INSERT INTO clientes(cod_cli, nome, endereco, cidade, telefone) VALUES (09, 'DAIANE',null , 'Lins', null);
INSERT INTO clientes(cod_cli, nome, endereco, cidade, telefone) VALUES (10, 'ANIBAL', 'JOSE LAPADULA', 'Lins', '(14)2415-7845' );

/*Exercicio 3*/

UPDATE clientes set telefone = '(14)3533-3298'
    where nome = 'FRANCISCO';

/*Exercicio 4*/
select * FROM CLIENTES;

/*Exercicio 5*/
select * from clientes order by nome;

/*Exercicio 6*/
select * from clientes order by nome desc;

/*Exercicio 7*/
select * from clientes order by cod_cli;

/*Exercicio 8*/
select * from clientes order by cidade;

/*Exercicio 9*/
select * from clientes order by cidade, nome;

/*Exercicio 10*/
select * from clientes where cidade = 'LINS';

/*Exercicio 11*/
select * from clientes where cidade = 'LINS' or cidade = 'Bauru';

/*Exercicio 12*/
select * from clientes where nome = 'FRANCISCO';

/*Exercicio 13*/
select * from clientes where nome like 'fra%';

/*Exercicio 14*/
select * from clientes where nome like '%o';

/*Exercicio 15*/
select * from clientes where nome like '%ci%';

/*Exercicio 16*/
alter table clientes add data_nasc date;

/*Exercicio 17*/
UPDATE clientes set data_nasc = '2000-12-01'
    where cod_cli = '01';
UPDATE clientes set data_nasc = '2003-07-04'
    where cod_cli = '02';
UPDATE clientes set data_nasc = '1972-01-08'
    where cod_cli = '03';
UPDATE clientes set data_nasc = '1987-11-24'
    where cod_cli = '04';
UPDATE clientes set data_nasc = '2004-12-10'
    where cod_cli = '05';
UPDATE clientes set data_nasc = '1952-05-30'
    where cod_cli = '06';
UPDATE clientes set data_nasc = '1980-02-29'
    where cod_cli = '07';
UPDATE clientes set data_nasc = '1999-09-09'
    where cod_cli = '08';
UPDATE clientes set data_nasc = '1967-06-24'
    where cod_cli = '09';
UPDATE clientes set data_nasc = '2001-09-11'
    where cod_cli = '10';
    
/*Exercicio 18*/
select * from clientes where year(data_nasc) = 2000;

/*Exercicio 19*/
select * from clientes where year(data_nasc) < 2000;

/*Exercicio 20*/
select * from clientes where month(data_nasc) = 12 order by data_nasc;

/*Exercicio 21*/
select * from clientes where month(data_nasc) = 01;

/*Exercicio 22*/
select * from clientes where month(data_nasc) = current_date();

/*Exercicio 23*/
select * from clientes where telefone is null;

/*Exercicio 24*/
select * from clientes where telefone is not null and cidade = 'Lins';

/*Exercicio 25*/
select * from clientes where telefone is not null and cidade = 'Lins';

/*Exercicio 26*/
select * from clientes where telefone is not null and cidade = 'Lins' order by nome;

/*Exercicio 27*/
select * from clientes where endereco is null and cidade is null;

/*Exercicio 28*/
delete from clientes where endereco is null and cidade is null; 

/*Exercicio 29*/
alter table clientes add email varchar(100);

/*Exercicio 30*/
alter table clientes drop column email;
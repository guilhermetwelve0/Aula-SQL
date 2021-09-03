###Alguns comentarios
´´´
create database Db_bento1 -- cria um banco de dados
use Db_bento1 -- seleciona banco de dados para uso
-- criação das tabelas
CREATE TABLE aluno (
 id_alu int PRIMARY KEY,
 nome_alu varchar(50),
 sexo_alu char(1),
 bairro_alu varchar(40),
 data_nasc_alu date
);
CREATE TABLE disciplina (
 id_dis int PRIMARY KEY,
 nome_dis varchar(50),
 carga_hor_dis int,
 prof_dis varchar(50),
 curso_dis varchar(50)
);
CREATE TABLE tem (
 fk_aluno_id_alu int FOREIGN KEY REFERENCES aluno (id_alu),
 fk_disciplina_id_dis int FOREIGN KEY REFERENCES disciplina (id_dis)
);


CREATE TABLE professor (
 id_prof int PRIMARY KEY,
 nome_prof varchar(50),
 sexo_prof char(1),
 bairro_prof varchar(40),
 data_nasc_prof date,
 fk_disciplina_id_dis int FOREIGN KEY REFERENCES disciplina (id_dis)
);
insert into aluno values (1,'JOSE','M','CENTRO','19950521')
insert into aluno values (2,'MARIA','F','BOQUEIRAO','19910221')
insert into aluno values (3,'PAULA','F','PORTAO','19940220')
select * from aluno --mostra o conteudo da tabela
insert into disciplina values (1,'BANCO DE DADOS I',80,'ALEXANDRE BENTO','ADS')
insert into disciplina values (2,'MATEMATICA',80,'JOAO PEDRO','ADS')
insert into disciplina values (3,'ESTRUTURA DE DADOS I',80,'MARIA DO CARMO','ADS')
select * from disciplina --mostra o conteudo da tabela
insert into tem values(1,2)
insert into tem values(2,1)
insert into tem values(3,3)
select * from tem --mostra o conteudo da tabela
insert into professor values(1,'JOAO CARLOS','M','PORTAO','20000724',3)
insert into professor values(2,'SALETE CRUZ','F','AGUA VERDE','20010421',2)
insert into professor values(3,'ALEXANDRE BENTO','M','CENTRO','20030127',1)
select * from professor --mostra o conteudo da tabela
-- Relacionamento entre as tabelas professor e disciplina
SELECT pro.nome_prof,dis.nome_dis FROM professor pro
inner join disciplina dis
on pro.fk_disciplina_id_dis = dis.id_dis
create database Db_bento1 -- cria um banco de dados
use Db_bento1 -- seleciona banco de dados para uso
-- criação das tabelas
CREATE TABLE aluno (
 id_alu int PRIMARY KEY,
 nome_alu varchar(50),
 sexo_alu char(1),
 bairro_alu varchar(40),
 data_nasc_alu date
);
CREATE TABLE disciplina (
 id_dis int PRIMARY KEY,
 nome_dis varchar(50),
 carga_hor_dis int,
 prof_dis varchar(50),
 curso_dis varchar(50)
);
CREATE TABLE tem (
 fk_aluno_id_alu int FOREIGN KEY REFERENCES aluno (id_alu),
 fk_disciplina_id_dis int FOREIGN KEY REFERENCES disciplina (id_dis)
);


CREATE TABLE professor (
 id_prof int PRIMARY KEY,
 nome_prof varchar(50),
 sexo_prof char(1),
 bairro_prof varchar(40),
 data_nasc_prof date,
 fk_disciplina_id_dis int FOREIGN KEY REFERENCES disciplina (id_dis)
);
insert into aluno values (1,'JOSE','M','CENTRO','19950521')
insert into aluno values (2,'MARIA','F','BOQUEIRAO','19910221')
insert into aluno values (3,'PAULA','F','PORTAO','19940220')
select * from aluno --mostra o conteudo da tabela
insert into disciplina values (1,'BANCO DE DADOS I',80,'ALEXANDRE BENTO','ADS')
insert into disciplina values (2,'MATEMATICA',80,'JOAO PEDRO','ADS')
insert into disciplina values (3,'ESTRUTURA DE DADOS I',80,'MARIA DO CARMO','ADS')
select * from disciplina --mostra o conteudo da tabela
insert into tem values(1,2)
insert into tem values(2,1)
insert into tem values(3,3)
select * from tem --mostra o conteudo da tabela
insert into professor values(1,'JOAO CARLOS','M','PORTAO','20000724',3)
insert into professor values(2,'SALETE CRUZ','F','AGUA VERDE','20010421',2)
insert into professor values(3,'ALEXANDRE BENTO','M','CENTRO','20030127',1)
select * from professor --mostra o conteudo da tabela
-- Relacionamento entre as tabelas professor e disciplina
SELECT pro.nome_prof,dis.nome_dis FROM professor pro
inner join disciplina dis
on pro.fk_disciplina_id_dis = dis.id_dis
´´´

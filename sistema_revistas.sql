create database db_sistema_revistas;

show databases;

use db_sistema_revistas;

create table tbl_revistas(
	id int not null primary key auto_increment,
    titulo varchar(20),
    sub_titulo varchar(20),
    numero_edicao varchar(10),
    id_mes_lancamento int,
    id_ano_lancamento int,
    id_colecao int,
    mini_serie varchar(50),
    id_selo int,
    id_tipo_capa int,
	issn varchar(30),
    isbn varchar(30),
    codigo varchar(30),
    id_pais int,
    id_editora int,
    id_distribuidor int,
    id_desenhista int,
    id_roteirista int,
    id_colorista int,
    id_colorista_capa int,
    id_letrista int,
    id_arte_finalista int,
    preco_capa int,
    idioma varchar(20),

    constraint fk_mes_lancamento_revistas_mes_lancamento
    foreign key (id_mes_lancamento) references tbl_mes_lancamento(id),
    constraint fk_ano_lancamento_revistas_ano_lancamento
    foreign key (id_ano_lancamento) references tbl_ano_lancamento(id),
    constraint fk_selo_revistas_selo
    foreign key (id_selo) references tbl_selo(id),
    constraint fk_tipo_capa_revistas_tipo_capa
    foreign key (id_tipo_capa) references tbl_tipo_capa(id),
    constraint fk_pais_revistas_pais
    foreign key (id_pais) references tbl_pais(id),
    constraint fk_editora_revistas_editora
    foreign key (id_editora) references tbl_editora(id),
	constraint fk_distribuidor_revistas_distribuidor
    foreign key (id_distribuidor) references tbl_distribuidor(id),
	constraint fk_colecao_revistas_colecao
    foreign key (id_colecao) references tbl_colecao(id),
    constraint fk_desenhista_revistas_desenhista
    foreign key (id_desenhista) references tbl_desenhista(id),
    constraint fk_roteirista_revistas_roteirista
    foreign key (id_roteirista) references tbl_roteirista(id),
    constraint fk_colorista_revistas_colorista
    foreign key (id_colorista) references tbl_colorista(id),
    constraint fk_colorista_capa_revistas_colorista_capa
    foreign key (id_colorista_capa) references tbl_colorista_capa(id),
    constraint fk_letrista_revistas_letrista
    foreign key (id_letrista) references tbl_letrista(id),
    constraint fk_arte_finalista_revistas_arte_finalista
    foreign key (id_arte_finalista) references tbl_arte_finalista(id)
);

create table tbl_mes_lancamento (
	id int not null primary key auto_increment,
    mes varchar(20)
);

create table tbl_ano_lancamento (
	id int not null primary key auto_increment,
    ano int
);

create table tbl_colecao (
	id int not null primary key auto_increment,
    nome_colecao varchar(100)
);

ALTER TABLE tbl_colecao
MODIFY nome_colecao VARCHAR(100);

ALTER TABLE tbl_colecao
DROP COLUMN sequencia_colecao;

create table tbl_selo (
	id int not null primary key auto_increment,
    nome_selo varchar(20)
);

ALTER TABLE tbl_selo
MODIFY nome_selo VARCHAR(100);

create table tbl_tipo_capa (
	id int not null primary key auto_increment,
    tipo_capa varchar(50)
);

create table tbl_pais (

	id int not null primary key auto_increment,
    nome_pais varchar(20)
);

create table tbl_editora (
	id int not null primary key auto_increment,
    nome_editora varchar(100),
    id_pais int,
    
    constraint fk_pais_editora_pais
    foreign key (id_pais) references tbl_pais(id)
);

create table tbl_distribuidor (
	id int not null primary key auto_increment,
    nome_distribuidor varchar(50),
    id_pais int,
    
    constraint fk_pais_distribuidor_pais
    foreign key (id_pais) references tbl_pais(id)
);

create table tbl_desenhista (
	id int not null primary key auto_increment,
    desenhista varchar(100),
    id_pais int,
    
    constraint fk_pais_desenhista_pais
    foreign key (id_pais) references tbl_pais(id)
);

create table tbl_roteirista (
	id int not null primary key auto_increment,
    roteirista varchar(100),
    id_pais int,
    
    constraint fk_pais_roteirista_pais
    foreign key (id_pais) references tbl_pais(id)
);

create table tbl_colorista (
	id int not null primary key auto_increment,
    colorista varchar(100),
    id_pais int,
    
    constraint fk_pais_colorista_pais
    foreign key (id_pais) references tbl_pais(id)
);

create table tbl_colorista_capa (
	id int not null primary key auto_increment,
    colorista_capa varchar(100),
    id_pais int,
    
    constraint fk_pais_colorista_capa_pais
    foreign key (id_pais) references tbl_pais(id)
);

create table tbl_letrista (
	id int not null primary key auto_increment,
    letrista varchar(100),
    id_pais int,
    
    constraint fk_pais_letrista_pais
    foreign key (id_pais) references tbl_pais(id)
);

create table tbl_arte_finalista (
	id int not null primary key auto_increment,
    arte_finalista varchar(100),
    id_pais int,
    
    constraint fk_pais_arte_finalista_pais
    foreign key (id_pais) references tbl_pais(id)
);

show tables;

insert into tbl_revistas(titulo, sub_titulo, numero_edicao, id_mes_lancamento, id_ano_lancamento, id_colecao, mini_serie, id_selo, id_tipo_capa, issn, isbn, codigo, id_pais, id_editora, id_distribuidor, id_desenhista, 
id_roteirista, id_colorista, id_colorista_capa, id_letrista, id_arte_finalista, preco_capa, idioma) values ('Watchmen', 'N/T', '1', 13, 97, 1, 'N/T', 1, 2, 'N/T', '978-85-7351-549-7', '11-07841', 1, 1, 2, 1, 1, 1, 
1, 1, 1, '0.00', 'Português');

insert into tbl_mes_lancamento(mes) values ('N/T');
insert into tbl_ano_lancamento(ano) values ('2024');
insert into tbl_colecao(nome_colecao) values ( 'Edição Definita');
insert into tbl_selo(nome_selo) values ('N/T');
insert into tbl_tipo_capa(tipo_capa) values ('Capa Dura');
insert into tbl_pais(nome_pais) values ('Uruguay');
insert into tbl_editora(nome_editora, id_pais) values ('Shogakukan', 11);
insert into tbl_distribuidor(nome_distribuidor, id_pais) values ('SoSimple', 2);
insert into tbl_desenhista(desenhista, id_pais) values ('Dave Gibbons', 7);
insert into tbl_roteirista(roteirista, id_pais) values ('Alan Moore', 7);
insert into tbl_colorista (colorista, id_pais) values ('John Higgins', 3);
insert into tbl_colorista_capa(colorista_capa, id_pais) values ('N/T', 0);
insert into tbl_letrista(letrista, id_pais) values ('Dave Gibbons', 7);
insert into tbl_arte_finalista(arte_finalista, id_pais) values ('N/T', 0);

select * from tbl_revistas;
select * from tbl_ano_lancamento;
select * from tbl_mes_lancamento;
select * from tbl_colecao;
select * from tbl_selo;
select * from tbl_tipo_capa;
select * from tbl_pais;
select * from tbl_editora;
select * from tbl_distribuidor;
select * from tbl_desenhista;
select * from tbl_roteirista;
select * from tbl_colorista;
select * from tbl_colorista_capa;
select * from tbl_letrista;
select * from tbl_arte_finalista;

#drop database db_sistema_revistas;

#drop table tbl_revistas;
#drop table tbl_mes_lancamento;
#drop table tbl_ano_lancamento;
#drop table tbl_colecao;
#drop table tbl_selo;
#drop table tbl_tipo_capa;
#drop table tbl_pais;
#drop table tbl_distribuidor;
#drop table tbl_coletania;
#drop table tbl_desenhista;
#drop table tbl_roteirista;
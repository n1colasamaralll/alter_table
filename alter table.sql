create table funcionario (
id_funcionario int primary key not null,
nome_funcionario char(50) not null,
cpf varchar(14) not null,
rg varchar(12) null,
logradouro varchar(128) not null,
cep varchar(8) not null,
municipio char(29) not null,
uf char(2) not null
)

select * from funcionario;

create table cargo (
id_cargo int primary key not null,
nome_cargos char(50) not null,
salario decimal (10,2) not null
)

select * from cargo;

create table brinquedo (
id_brinquedo int primary key not null,
nome varchar (50) not null,
valor decimal (10,2) not null
)

select * from brinquedo;

create table tipo_brinquedo (
id_tipo_brinquedo int primary key not null,
categoria char (50) not null
)

select * from tipo_brinquedo

create table marca (
id_marca int primary key not null,
nome_marca char (20) not null
)

show tables;
select * from brinquedo;
select * from cargo;
select * from funcionario;
select * from marca;
select * from tipo_brinquedo;
 
alter table funcionario
add column id_cargo int;
 
alter table funcionario
add constraint id_cargo
foreign key (id_cargo)
references cargo(id_cargo);
 
alter table briquedo
add column id_marca int;
 
alter table brinquedo
add column id_tipo_brinquedo int;
 
alter table brinquedo
add constraint id_marca
foreign key (id_marca)
references marca(id_marca);

insert into funcionario (id_funcionario,nome_funcionario,cpf,rg,logradouro,cep,municipio,uf)
values (1,"carinha da matematica",1234567899874,214567898,"episcopal 700",13585000,"São Carlos, "sp")
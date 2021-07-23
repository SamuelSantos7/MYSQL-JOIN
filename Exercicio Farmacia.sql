create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_Categoria (
idcategoria int auto_increment,
precoProdutos float,
servicosFarmaceutico float,
farmaciaPopular varchar(255),
primary key(idCategoria)
);

create table tb_produto (
idProduto int auto_increment,
tipo varchar(255), 				#antibiótico , genérico , original, manipulado
nome varchar(255),
estado varchar(255), 				#solução, comprimido , aerosol 
fabricante varchar(255),
produtosAdversos varchar(255),
fk_categoria int,
primary key(idProduto),
foreign key(fk_categoria) references tb_Categoria(idcategoria)
);

select * from tb_Categoria;

insert into tb_Categoria(precoProdutos,servicosFarmaceutico ,farmaciaPopular) values (30.00,15.00,'Gratuito');
insert into tb_Categoria(precoProdutos,servicosFarmaceutico ,farmaciaPopular) values (50.00,15.00,'Gratuito');
insert into tb_Categoria(precoProdutos,servicosFarmaceutico ,farmaciaPopular) values (60.00,15.00,'Gratuito');
insert into tb_Categoria(precoProdutos,servicosFarmaceutico ,farmaciaPopular) values (47.50,15.00,'Gratuito');
insert into tb_Categoria(precoProdutos,servicosFarmaceutico ,farmaciaPopular) values (27.50,15.00,'Gratuito');


insert into tb_produto(tipo,nome,estado,fabricante,produtosAdversos,fk_categoria ) values ('Antibiótico','Amoxicilina','Comprimido','Ache','Preservativo',1);
insert into tb_produto(tipo,nome,estado,fabricante,produtosAdversos,fk_categoria ) values ('Genérico','Tylenol','Solução','Prati','Escova Dental',2);
insert into tb_produto(tipo,nome,estado,fabricante,produtosAdversos,fk_categoria ) values ('Original','Viagra','Comprimido','Euroforma','Gatorade',3);
insert into tb_produto(tipo,nome,estado,fabricante,produtosAdversos ) values ('Manipulado','Cefalexina','Comprimido','Novartis','Energético');
insert into tb_produto(tipo,nome,estado,fabricante,produtosAdversos ) values ('Antibiótico','Paracetomol','Solução','Sanofi','Bolsa térmica');
insert into tb_produto(tipo,nome,estado,fabricante,produtosAdversos ) values ('Genérico','Aspirina','Aerosol','Ache','Bengala');
insert into tb_produto(tipo,nome,estado,fabricante,produtosAdversos ) values ('Original','Aciclovir','Solução','Prati','Tala Cervical');
insert into tb_produto(tipo,nome,estado,fabricante,produtosAdversos ) values ('Manipulado','Bromopida','Aerosol','Euroforma','Shampoo');

select * from tb_produto;

select * from tb_Categoria where precoProdutos > 50.00;



select * from tb_Categoria where precoProdutos > 3.00 and precoProdutos < 60.00;


select * from tb_produto where nome like '%b%';

select * from db_farmacia_do_bem.tb_Categoria
inner join db_farmacia_do_bem.tb_produto on tb_produto.idProduto = tb_Categoria.idcategoria;


use db_farmacia_do_bem;

select nome, tipo, estado from tb_produto where estado = 'Comprimido';
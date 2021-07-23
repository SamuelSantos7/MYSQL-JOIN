create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria (
idCategoria int auto_increment,
taxadeEntrega float,
garantia varchar(255),
avaliacao varchar(255),
primary key(idCategoria)
);

create table tb_produto (
idProduto int auto_increment,
tipo varchar(255),
nome varchar(255),
tamanho varchar(255),
precoProduto float,
sexoProduto varchar(255),
fk_categoria int,
primary key(idProduto),
foreign key(fk_categoria) references tb_categoria(idCategoria)
);

select * from tb_categoria;

insert into tb_categoria(taxadeEntrega,garantia,avaliacao) values (10.00, 'Gratuito','Ruim');
insert into tb_categoria(taxadeEntrega,garantia,avaliacao) values (10.00, 'Gratuito','Bom');
insert into tb_categoria(taxadeEntrega,garantia,avaliacao) values (10.00, 'Gratuito','Muito Bom');
insert into tb_categoria(taxadeEntrega,garantia,avaliacao) values (10.00, 'Gratuito','Ruim');
insert into tb_categoria(taxadeEntrega,garantia,avaliacao) values (10.00, 'Gratuito','Bom');


insert into tb_produto(tipo,nome,tamanho,precoProduto,sexoProduto,fk_categoria) values ('Vestimentas','Camiseta','G',52.00,'Masculino',1);
insert into tb_produto(tipo,nome,tamanho,precoProduto,sexoProduto,fk_categoria) values ('Vestimentas','Calça','M',30.00,'Feminino',2);
insert into tb_produto(tipo,nome,tamanho,precoProduto,sexoProduto,fk_categoria) values ('Equipamentos','Capacete','Pequeno',5.00,'Masculino',3);
insert into tb_produto(tipo,nome,tamanho,precoProduto,sexoProduto) values ('Equipamentos','Luvas','Pequena',10.00,'Feminino');
insert into tb_produto(tipo,nome,tamanho,precoProduto,sexoProduto) values ('Vestimentas','Blusa','GG',100.00,'Masculino');
insert into tb_produto(tipo,nome,tamanho,precoProduto,sexoProduto) values ('Equipamentos','Colete ','Grande',80.00,'Masculino');
insert into tb_produto(tipo,nome,tamanho,precoProduto,sexoProduto) values ('Vestimentas','Vestido','P',20.00,'Feminino');
insert into tb_produto(tipo,nome,tamanho,precoProduto,sexoProduto) values ('Equipamentos','Sutiã','Pequeno',45.00,'Feminino');

select * from tb_produto;

select * from tb_produto where precoProduto > 50.00;


select * from tb_produto where precoProduto > 3.00 and precoProduto < 60.00;


select * from tb_produto where nome like '%c%';
	

select * from db_construindo_a_nossa_vida.tb_categoria
inner join db_construindo_a_nossa_vida.tb_produto on tb_produto.idProduto=tb_categoria.idCategoria;


select nome, tipo, sexoProduto from tb_produto where sexoProduto = 'Masculino';
create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_Categoria
(
    idcategoria int auto_increment,
    precoFrutas float,
    encomendaFesta float,
    taxaEntrega float,
    primary key (idcategoria)
);

create table tb_produto
(
    idProduto int auto_increment,
    tipo varchar(255), 
    nome varchar(255), 
    estado varchar(255), 
    vitamina varchar(255), 
    suco boolean, 
    fk_categoria int,
    primary key (idProduto),
    foreign key(fk_categoria) references tb_categoria (idCategoria)
);



insert into tb_Categoria (precoFrutas, encomendaFesta, taxaEntrega)
values
(30.00, 10.00, '7.50'), 
(50.00, 10.00, '7.50'), 
(60.00, 10.00, '7.50'), 
(27.50, 10.00, '7.50'),
(45.50, 10.00, '7.50');

select * from tb_Categoria;


insert into tb_produto (tipo, nome, estado, vitamina, suco,fk_categoria)
values
('Fruta', 'Laranja', 'Fresca', 'B', true,1), 
('Verdura', 'Alface', 'Fresco', 'A', false,2), 
('Fruta', 'Pêssego', 'Fresco', 'B1', true,3), 
('Verdura', 'Brócolis', 'Fresco', 'B e A', false,1), 
('Fruta', 'Limão', 'Seco', 'B3 e B6', true,2), 
('Verdura', 'Cenoura', 'Seco', 'B3 e B6', false,3),
('Fruta', 'Morango', 'Seco', 'C', true,1),
('Verdura', 'Ervilha ', 'Fresca', 'B5, B6 e C', false,2);

select * from tb_produto;



select * from  tb_Categoria where precoFrutas > 50.00;


select * from  tb_Categoria where precoFrutas > 3.00 and precoFrutas < 60.00;


select * from tb_produto where nome like '%c%';



select * from db_cidade_das_frutas.tb_Categoria
inner join db_cidade_das_frutas.tb_produto on tb_produto.idProduto = tb_Categoria.idcategoria;

select nome, tipo from tb_produto  where tipo = 'Verdura';

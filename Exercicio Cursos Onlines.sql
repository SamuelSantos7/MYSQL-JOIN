create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_Categoria
(
    idcategoria int auto_increment,
    precoCurso float,
    precoMaterial float,
    matricula float,
    primary key (idcategoria)
);

create table tb_produto
(
    idProduto int auto_increment,
    tipoCurso varchar(255), 
    nomeCurso varchar(255), 
    Professor varchar(255), 
    requisitoFormacao varchar(255), 
    cargaHoraria varchar(255), 
    fk_categoria int,
    primary key (idProduto),
    foreign key(fk_categoria) references tb_categoria (idCategoria)
);



insert into tb_Categoria (precoCurso, precoMaterial, matricula)
values
(30.00, 15.00, '10.00'), 
(50.00, 25.00, '10.00'), 
(60.00, 30.00, '10.00'), 
(90.00, 45.00, '10.00'),
(120.00, 60.00, '10.00');

select * from tb_Categoria;


insert into tb_produto (tipoCurso, nomeCurso, Professor, requisitoFormacao, cargaHoraria, fk_categoria)
values
('Virtual', 'Lógica da programação', 'Luiz Guerreiro', 'E.M', '300hrs',1), 
('Virtual', 'GitHub', 'Camila Cleane', 'E.M', '210hrs', 3), 
('Virtual', 'MYSQL', 'Gustavo Boaz', 'E.M', '200hrs',1), 
('Presencial', 'JAVA', 'Luiz Guerreiro', 'E.M', '300hrs',2), 
('Presencial', 'Angular', 'Camila Cleane', 'E.M', '380hrs',2), 
('Presencial', 'Cloud', 'Gustavo Boaz', 'E.M', '450hrs',1),
('Virtual', 'Estrutura de dados', 'Camila Cleane', 'E.S', '600hrs',3),
('Presencial', 'Security ', 'Luiz Guerreiro', 'E.S', '700hrs',3);

select * from tb_produto;



select * from  tb_Categoria where precoCurso > 50.00;


select * from  tb_Categoria where precoCurso > 3.00 and precoCurso < 60.00;


select * from tb_produto where nomeCurso like '%j%';



select * from db_cursoDaMinhaVida.tb_Categoria
inner join db_cursoDaMinhaVida.tb_produto on tb_produto.idProduto = tb_Categoria.idcategoria;

select tipoCurso, Professor, nomeCurso from tb_produto  where nomeCurso = 'Java';

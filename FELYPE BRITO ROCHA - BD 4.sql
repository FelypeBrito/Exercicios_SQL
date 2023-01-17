/*Exercicio 1*/

Select p.descricao as Produto , p.preco, c.descricao as Categoria From produto p
inner join categoria c on p.cod_cat = c.cod_cat;


/*Exercicio 2*/

Select p.descricao as Produto , p.preco, c.descricao as Categoria From produto p
inner join categoria c on p.cod_cat = c.cod_cat
where p.preco <= 50;

/*Exercicio 3*/

Select p.descricao as Produto , p.preco, c.descricao as Categoria From produto p
inner join categoria c on p.cod_cat = c.cod_cat
where c.descricao = 'Informática';





/*Exercicio 4*/

Select c.descricao as Categoria From produto p
inner join categoria c on p.cod_cat = c.cod_cat
where p.descricao = 'Impressora térmica não fiscal USB / Serial';


/*Exercicio 5*/

Select p.descricao as Produto , p.preco, c.descricao as Categoria From produto p
inner join categoria c on p.cod_cat = c.cod_cat
where c.descricao = ('material de escritório' or 'informática') and 
(p.preco between 20 and 60);




/*Exercicio 6*/

Select p.descricao as Produto , p.preco, c.descricao as Categoria From produto p
inner join categoria c on p.cod_cat = c.cod_cat
where c.descricao <> 'Eletroeletrônico';


/*Exercicio 7*/

Select c.cod_cat, p.descricao as Produto , p.preco, c.descricao as Categoria From produto p
inner join categoria c on p.cod_cat = c.cod_cat
order by p.preco asc;


/*Exercicio 8*/

Select p.descricao as Produto , p.preco, c.descricao as Categoria From produto p
inner join categoria c on p.cod_cat = c.cod_cat
where c.descricao = ('eletroeletrônico' or 'informática') and 
(p.preco between 500 and 900);
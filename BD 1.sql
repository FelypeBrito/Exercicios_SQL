    /* EXERCICIO 1*/    
    ALTER TABLE produto add estoque int default 0;
    
    
    /* EXERCICIO 2*/  
	update produto set estoque = 100;
    
     /* EXERCICIO 3*/  
     insert into produto(cod_prod ,descricao , preco,  estoque) values (34, 'SSD 480 GB', 460.00, 15);
    
    /* EXERCICIO 4*/
    update produto set estoque = 14
    where descricao = 'SSD 480 GB';
    
    /* EXERCICIO 5*/
    update produto
    set preco = preco * 1.1
    where descricao = 'SSD 480 GB'; 
    
    /* EXERCICIO 6*/
    update produto
    set preco = 500,
		estoque = 50
    where descricao = 'SSD 480 GB'; 
    
    /* EXERCICIO 7*/
    update produto
    set preco = preco * 0.95
    where preco <= 500.00;
    
    /* EXERCICIO 8*/
    delete from produto where descricao = 'SSD 480 GB';
    
    /* EXERCICIO 9*/
    ALTER TABLE produto DROP COLUMN estoque;
    
    /* EXERCICIO 10*/
    DROP TABLE produto;
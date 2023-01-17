/Primeira questão/

SELECT p.descricao as produto, p.preco, c.descricao as categoria FROM produto p
LEFT JOIN categoria c ON p.cod_cat = c.cod_cat;

/Segunda questão/

SELECT p.descricao as produto, p.preco, c.descricao as categoria FROM produto p
INNER JOIN categoria c ON p.cod_cat = c.cod_cat
WHERE p.preco <= 500.00;


/Terceira questão/

SELECT p.descricao as produto, p.preco, c.descricao as categoria FROM produto p
INNER JOIN categoria c ON p.cod_cat = c.cod_cat
WHERE c.cod_cat = 2;

/Quarta questão/

SELECT p.descricao as produto, p.preco, c.descricao as categoria FROM produto p
LEFT JOIN categoria c ON p.cod_cat = c.cod_cat
WHERE c.descricao is null;

/Quinta questão/

SELECT p.descricao as produto, p.preco, c.descricao as categoria FROM categoria c
LEFT JOIN produto p ON p.cod_cat = c.cod_cat
WHERE p.descricao is null;
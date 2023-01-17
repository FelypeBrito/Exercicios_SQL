/*Exercicio 1*/



SELECT F.nome FuncNome, D.nome DeptNome, D.ramal FROM funcionario F

INNER JOIN departamento D ON F.cod_depto = D.cod_depto

where F.nome = 'Luiz Oliveira'



/*Exercicio 2*/



SELECT F.nome FuncNome, F.cargo, D.nome DeptNome FROM funcionario F

INNER JOIN departamento D ON F.cod_depto = D.cod_depto

where F.cargo = 'Gerente'



/*Exercicio 3*/



SELECT F.nome FuncNome, F.cargo, F.data_admissao, D.nome DeptNome FROM funcionario F

INNER JOIN departamento D ON F.cod_depto = D.cod_depto

where F.data_admissao >= '2015-01-15';




/*Exercicio 4*/




SELECT F.nome FuncNome, F.cargo, D.nome DeptNome FROM funcionario F

INNER JOIN departamento D ON F.cod_depto = D.cod_depto

where F.data_admissao BETWEEN  '2016-01-01' AND '2018-12-31';




/*Exercicio 5*/



SELECT F.nome FuncNome, F.cargo, D.nome DeptNome FROM funcionario F

INNER JOIN departamento D ON F.cod_depto = D.cod_depto

WHERE  YEAR(data_admissao) = YEAR(current_date());




/*Exercicio 6*/



SELECT F.nome FuncNome, F.cargo, F.salario FROM funcionario F

INNER JOIN departamento D ON F.cod_depto = D.cod_depto

where F.salario >5000;




/*Exercicio 7*/



SELECT F.nome FuncNome, F.cargo, F.salario FROM funcionario F

INNER JOIN departamento D ON F.cod_depto = D.cod_depto

where F.salario <2000;




/*Exercicio 8*/



SELECT F.nome FuncNome, F.cargo, F.salario, D.nome DeptNome FROM funcionario F

INNER JOIN departamento D ON F.cod_depto = D.cod_depto

where (D.cod_depto = 4 or F.cargo = 'Diretor') AND (F.data_admissao BETWEEN  '2014-01-01' AND '2018-12-31');
Nome: SYLVIO ALBERTO CASTRO DA SILVA  -- SELECT * FROM * WHERE
 
1 - Trazer todos os alunos ordenado de forma decrescente por data de cadastro

SELECT *  (SELECIONE TODAS AS COLUNAS)
FROM alunos (DA TABELA ALUNOS)
ORDER BY dt_cadastro DESC (ORDENANDO A DATA DE CADASTRO DE FORMA DECRESCENTE)

2 - Trazer todos os alunos que começem com a letra J

SELECT * (SELECIONE TODAS AS COLUNAS)
FROM alunos (DA TABELA ALUNOS)
WHERE nome LIKE 'J%' (ONDE o nome contenha J no incio do nome)

3 - Trazer todos os alunos do código 3,7,9 e 11 ordenados pelo nome de forma crescente

SELECT * (SELECIONE TODAS AS COLUNAS)
FROM alunos (DA TABELA ALUNOS)
WHERE cd_aluno IN (3,7,9,11) (ONDE O CODIGO DO ALUNO SEJA 3,7,9,11)
ORDER BY nome ASC; (ORDENANDO O NOME DE FORMA ASCENDENTE)

4 - Trazer todos os alunos do sexo femino ou alunos que contenham a letra e no nome

SELECT * 
FROM alunos  
WHERE sexo='F' OR 'M' '%e%';

5 - Trazer todos os alunos que do sexo feminino concatenando (unificando) a idade - sexo - dt_cadastro 
e renomeando a coluna para dados do paciente exemplo:
cd_aluno | nome | dados_paciente

SELECT cd_aluno, nome, CONCAT(idade, sexo,dt_cadastro) AS dados
FROM alunos 
WHERE sexo='F';


6 - Trazer quantos alunos existem por data de cadastro

SELECT dt_cadastro, COUNT(cd_aluno) AS QTD, MAX(idade) AS velho, min(idade) AS novo
FROM alunos
GROUP BY dt_cadastro;

7 - Trazer a soma do código do aluno por sexo

SELECT sexo, SUM(cd_aluno) AS soma
FROM alunos
GROUP BY sexo;


8 - Trazer quantos alunos tem por idade

SELECT idade, COUNT(cd_aluno) AS soma
FROM alunos
GROUP BY idade;



9 - Trazer a idade média por sexo



10 - Trazer o aluno mais novo e mais velho por sexo

11 - Trazer todos os alunos que contenham a letra a ou A letra O

12 - trazer todos os alunos que sejam do sexom masculino e que contenham a letra A

13 - Trazer todos os alunos que contenham o código do aluno entre 5 e 10 ou tenham menos de 25 anos
ordenador de forma ascendente

14 - Trazer os nomes dos alunos e dividir a idade pelo código do aluno renomeando a coluna da conta
para aluno_multiplicacao ordenando de forma ascendente o sexo

15 - Trazer os códigos dos alunos concatenando a coluna nome, idade, sexo e data de cadastro
onde os alunos contenham a letra E ou a letra M ou a letra O e que tenham a idade entre 20 a 50 anos
ordenados pela idade de forma decrescente e o nome de forma ascendente
SELECT * FROM alunos - seleciona todos
SELECT nome, idade, sexo FROM alunos
SELECT * FROM alunos where sexo = 'M'
SELECT * FROM alunos where idade > '25'
SELECT * FROM alunos where idade < '25'
SELECT * FROM alunos where idade = '25'
SELECT nome, idade FROM alunos ORDER BY nome DESC
SELECT nome, idade FROM alunos ORDER BY nome ASC
SELECT * FROM alunos where idade = '25'
AND sexo ='M' OR 'F'

-------------------------------------------------
1. TRAZER TODOS OS ALUNOS DO SEXO MASCULINO [TODAS AS COLUNAS]
SELECT * 
FROM alunos 
WHERE sexo = 'M'

2. TRAZER TODOS OS ALUNOS DO SEXO FEMININO [CODIGO, NOME, SEXO, DT_CADASTRO]
SELECT cd_aluno, nome, sexo, dt_cadastro 
FROM alunos 
WHERE sexo = 'F'

3. TRAZER TODOS OS ALUNOS COM IDADE MAIOR QUE 25 [NOME, IDADE]
SELECT nome, idade 
FROM alunos 
WHERE idade > 25

4. TRAZER TODOS OS ALUNOS COM IDADE MAIOR QUE 20 E QUE SEJA DO SEXO MASCULINO [TODAS AS COLUNAS]
SELECT * 
FROM alunos 
WHERE idade > 20 and sexo 'M'

5. TRAZER TODOS OS ALUNOS COM IDADE MENOR QUE 20 [TODAS AS COLUNAS]
SELECT * 
FROM alunos 
WHERE idade < 20

6. TRAZER TODOS OS ALUNOS COM IDADE IGUAL a 18 [IDADE, NOME, DT_CADASTRO]
SELECT idade, nome, dt_cadastro 
FROM alunos 
WHERE idade = 18

7. TRAZER TODOS OS ALUNOS COM IDADE MAIOR QUE 18 E MENOS QUE 25 [DT_CADASTRO, IDADE, NOME]
SELECT  dt_cadastro, idade, nome
FROM alunos 
WHERE idade > 18 and idade < 25
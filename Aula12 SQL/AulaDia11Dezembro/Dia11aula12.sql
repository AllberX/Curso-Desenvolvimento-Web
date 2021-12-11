1 – Traga todos os atendimentos que tenham o código do convênio igual a 1;

SELECT * 
FROM `atendimento`
WHERE cd_convenio = 1 

2 – Traga todos os atendimentos que tenham o código do paciente igual a 4;

SELECT * 
FROM `atendimento`
WHERE cd_paciente = 4

3- Traga todos os atendimentos que tenham o código da especialidade maior ou igual a 2;

SELECT * 
FROM `atendimento`
WHERE cd_especialidade >= 2

4 – Traga todos os atendimentos que tenham o código do paciente maior do que 2 e menor do que 4;

SELECT * 
FROM `atendimento`
WHERE cd_paciente BETWEEN 2 AND 4

5 – Traga todos os atendimentos que tenham o código do paciente igual a 2 ou igual a 3;

SELECT * 
FROM `atendimento`
WHERE cd_paciente = 2 
OR cd_paciente = 3

6 – Traga todos os pacientes ordenados pelo sexo de forma crescente;

SELECT * 
FROM `paciente`
ORDER BY sexo ASC

7- Traga todos os pacientes ordenados pelo sexo de forma crescente e pela idade de forma decrescente;
SELECT * 
FROM `paciente`
ORDER BY sexo ASC, dt_nascimento DESC;

8- Traga todos os pacientes ordenados pelo sexo de forma crescente e pela idade de forma decrescente, mas apenas do sexo masculino;

SELECT sexo,dt_nascimento 
FROM paciente
WHERE sexo= 'M'  
ORDER BY sexo ASC,dt_nascimento DESC


--------- *corrigida*
9- Traga a quantidade de atendimentos agrupado por código de convenio;

SELECT cd_convenio 

******SEMPRE QUE FOR USADO O "GROUP BY" 
O MESMO VALOR NO GROUP BY SERÁ O VALOR QUE DEVERÁ SER SELECIONADO APÓS "SELECT"
SEMPRE QUE USAR GROUP BY NÃO SERÁ USADO "ASTERISTICO" APÓS O SELECT **********

 
FROM atendimento COUNT
GROUP BY cd_convenio
*corrigida* --------- 


--------- *corrigida*
10- Traga a soma do valor de atendimento agrupado por especialidade

SELECT SUM(vl_atendimento) AS V_Atend, cd_especialidade AS Esp 
FROM atendimento 
GROUP BY cd_especialidade
*corrigida* --------- 


--------- *corrigida*
11- Traga a data de nascimento mais nova e mais velha agrupado por sexo;

SELECT sexo, MIN(dt_nascimento),MAX(dt_nascimento)
FROM paciente
GROUP BY sexo
*corrigida* --------- 


12 – Traga a soma dos valores dos atendimentos agrupadas por paciente onde o código da especialidade seja igual a 1 ou igual a 2 ordenado por nome do paciente de forma ascendente.

SELECT SUM(vl_atendimento) AS valorATEND, paciente.nm_paciente
FROM atendimento INNER JOIN paciente
WHERE cd_especialidade = '1' OR '2'
ORDER BY paciente.nm_paciente ASC
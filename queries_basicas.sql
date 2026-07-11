-- Selecionar todos os funcionários
SELECT * FROM funcionarios;

-- Selecionar nome e cargo dos funcionários
SELECT nome, cargo FROM funcionarios;

-- Filtrar funcionários do departamento de Tecnologia
SELECT nome, cargo FROM funcionarios
WHERE id_departamento = 3;

-- Contar quantos funcionários existem em cada departamento
SELECT id_departamento, COUNT(*) AS total_funcionarios
FROM funcionarios
GROUP BY id_departamento;

-- Média salarial por departamento
SELECT d.nome AS departamento, AVG(s.valor) AS media_salario
FROM salarios s
JOIN funcionarios f ON s.id_funcionario = f.id_funcionario
JOIN departamentos d ON f.id_departamento = d.id_departamento
GROUP BY d.nome;

-- Projetos e seus respectivos departamentos
SELECT p.nome AS projeto, d.nome AS departamento
FROM projetos p
JOIN departamentos d ON p.id_departamento = d.id_departamento;

-- Funcionários e os projetos do seu departamento
SELECT f.nome AS funcionario, p.nome AS projeto
FROM funcionarios f
JOIN projetos p ON f.id_departamento = p.id_departamento;

-- Funcionários contratados após 2022
SELECT nome, cargo, data_contratacao
FROM funcionarios
WHERE data_contratacao > '2022-01-01'
ORDER BY data_contratacao;

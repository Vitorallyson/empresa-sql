# Banco de Dados Empresa

Este projeto contém a estrutura de um banco de dados simples para gerenciar **departamentos, funcionários, projetos e salários**.

## Estrutura das tabelas
- **departamentos**: id_departamento, nome
- **funcionarios**: id_funcionario, nome, cargo, id_departamento
- **projetos**: id_projeto, nome, id_departamento
- **salarios**: id_salario, id_funcionario, valor, data_pagamento

## Exemplos de Queries
- Listar funcionários com seus departamentos:
```sql
SELECT f.nome, d.nome AS Departamento
FROM funcionarios f
JOIN departamentos d ON f.id_departamento = d.id_departamento;

- Mostrar salários maiores que 5000
```sql
SELECT f.nome, s.valor
FROM funcionarios f
JOIN salarios s ON f.id_funcionario = s.id_funcionario
WHERE s.valor > 5000;


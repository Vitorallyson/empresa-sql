-- Criar banco de dados
CREATE DATABASE empresa;
USE empresa;

-- Tabela de departamentos
CREATE TABLE departamentos (
    id_departamento INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL
);

INSERT INTO departamentos (nome) VALUES
('Recursos Humanos'),
('Financeiro'),
('Tecnologia'),
('Marketing');

-- Tabela de funcionários
CREATE TABLE funcionarios (
    id_funcionario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(30) NOT NULL,
    cargo VARCHAR(30),
    id_departamento INT,
    data_contratacao DATE,
    FOREIGN KEY (id_departamento) REFERENCES departamentos(id_departamento)
);

INSERT INTO funcionarios (nome, cargo, id_departamento, data_contratacao) VALUES
('Ana Silva', 'Gerente de RH', 1, '2022-03-15'),
('Carlos Souza', 'Analista Financeiro', 2, '2020-07-28'),
('Mariana Costa', 'Desenvolvedora Backend', 3, '2024-01-12'),
('João Pereira', 'Coordenador de Marketing', 4, '2023-02-19'),
('Paulo Henrique', 'Assistente Financeiro', 2, '2022-07-15'),
('Lucas Almeida', 'Analista de Marketing', 4, '2019-10-01');

-- Tabela de projetos
CREATE TABLE projetos (
    id_projetos INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    id_departamento INT,
    FOREIGN KEY (id_departamento) REFERENCES departamentos(id_departamento)
);

INSERT INTO projetos (nome, id_departamento) VALUES
('Sistema de Folha de Pagamento', 1),
('Aplicativo Mobile', 2),
('Campanha Redes Sociais', 3),
('Treinamento Interno', 4);

-- Tabela de salários
CREATE TABLE salarios (
    id_salario INT PRIMARY KEY AUTO_INCREMENT,
    id_funcionario INT,
    valor DECIMAL(10,2),
    data_pagamento DATE,
    FOREIGN KEY (id_funcionario) REFERENCES funcionarios(id_funcionario)
);

INSERT INTO salarios (id_funcionario, valor, data_pagamento) VALUES
(1, 4000.00, '2024-01-30'),
(2, 8000.00, '2024-01-30'),
(3, 6000.00, '2024-01-30'),
(4, 4000.00, '2024-01-30');

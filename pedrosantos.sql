/*Junção do conteúdo dos arquivos da pasta de sql codes, fragmentada para melhor organização*/

CREATE DATABASE atividade_consultas;
\c atividade_consultas

CREATE TABLE pacientes (
id_paciente SERIAL PRIMARY KEY,
nome_paciente VARCHAR(70) NOT NULL,
email_paciente VARCHAR(100) UNIQUE NOT NULL 
);

CREATE TABLE medicos (
id_medico SERIAL PRIMARY KEY,
nome_medico VARCHAR(70) NOT NULL,
especialidade_medico VARCHAR(30) NOT NULL
);

CREATE TABLE consultas (
id_consulta SERIAL PRIMARY KEY,
id_paciente INT NOT NULL,
id_medico INT NOT NULL,
data_consulta DATE,
CONSTRAINT fk_paciente FOREIGN KEY (id_paciente) REFERENCES pacientes(id_paciente),
CONSTRAINT fk_medico FOREIGN KEY (id_medico) REFERENCES medicos(id_medico)
);

INSERT INTO pacientes(nome_paciente, email_paciente) VALUES
('Carmem Gutierrez', 'c.guterrez@gmail.com'),
('Apolo Cavalcante', 'cavalcanteapolo@gmail.com'),
('Anthom Front', 'anthom.front@gmail.com'),
('Eldric', 'el.dricxhy@gmail.com'),
('Rotív', 'rotivitor@gmail.com'),
('Jhonny Joe', 'joe.jhonny@gmail.com'),
('Kaled Silva', 'ka.silva.led@gmail.com'),
('Kaito Valadares', 'valad.kaito@gmail.com'),
('Jyro Watanabe', 'jyro.wata@gmail.com'),
('Ryan Souza', 'souza.ryan@gmail.com');

INSERT INTO pacientes(nome_medico, especialidade_medico) VALUES
('Brandon Stark', 'ortopedia'),
('Catelyn Stark', 'otorrinolaringologia'),
('Sandor Clegane', 'dermatologia'),
('Aegon Targaryen II', 'dermatologia'),
('Varys', 'pediatria');

INSERT INTO consultas (id_paciente, id_medico, data_consulta) VALUES
(1, 3, '2024-09-27'),
(2, 1, '2018-10-27'),
(4, 2, '2020-12-14'),
(1, 3, '2025-03-02'),
(7, 4, '2024-11-05'),
(8, 2, '2023-07-12'),
(4, 1, '2023-07-10'),
(1, 2, '2025-04-12');

SELECT P.nome_paciente, P.email_paciente, M.nome_medico, C.id_consulta, C.data_consulta 
FROM consultas C 
JOIN pacientes P
ON C.id_paciente = P.id_paciente
JOIN medicos M
ON C.id_medico = M.id_medico;
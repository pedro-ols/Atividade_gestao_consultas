/*Os inserts foram colocados de uma vez porque eu tinha perdido eles de alguma forma, eles não voltavam nem com ctrl + z, então copiei e colei de um dos meus commits do repositório*/

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

INSERT INTO medicos(nome_medico, especialidade_medico) VALUES
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
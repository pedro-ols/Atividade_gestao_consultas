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
    CONSTRAINT fk_medico FOREIGN KEY (id_medico) REFERENCES pacientes(id_medico),
);
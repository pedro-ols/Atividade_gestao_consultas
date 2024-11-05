SELECT P.nome_paciente, P.email_paciente, M.nome_medico, C.id_consulta, C.data_consulta 
FROM consultas C 
JOIN pacientes P
ON C.id_paciente = P.id_paciente
JOIN medicos M
ON C.id_medico = M.id_medico;

SELECT P.nome_paciente, P.email_paciente
FROM pacientes P
LEFT JOIN consultas C
ON C.id_paciente = P.id_paciente
WHERE C.id_consulta IS NULL;

SELECT M.nome_medico, M.especialidade_medico
FROM medicos M
LEFT JOIN consultas C
ON C.id_medico = M.id_medico
WHERE C.id_consulta IS NULL;
SELECT P.nome_paciente, P.email_paciente, M.nome_medico, C.id_consulta, C.data_consulta 
FROM consultas C 
JOIN pacientes P
ON C.id_paciente = P.id_paciente
JOIN medicos medicos
ON C.id_medico = M.id_medico;
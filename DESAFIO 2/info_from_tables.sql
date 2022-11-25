-- Clientes que possuem veiculos
SELECT	idClient, Fname, Lname 
FROM	clients c 
JOIN	automobile a 
WHERE c.idClient = a.idAutoclient;

-- Dados do cliente que possui o veiculo de placa: POP5Q99
SELECT 	* FROM clients 
JOIN automobile ON idClient = idAutoclient 
WHERE plate = 'POP5Q99';

-- Listar todas as OS com status aprovado ordenando por valor decrescente
SELECT * FROM serviceorder 
WHERE statusOS = "aprovado" 
GROUP BY idOS ORDER BY tPrice DESC ;

-- Listar todos os serviços que compoem a revisão de 10.000 KM
SELECT mDetail AS REVISÃO, detail AS SERVIÇO  
FROM carmaint, services 
JOIN maintservice ON msIdservice = idServicos 
WHERE mDetail = 'REVISÃO 10.000KM' 
GROUP BY detail;

-- Lista de todas as peças que compoe a revisão de 40.00 KM
SELECT mDetail AS REVISÃO, pName AS PEÇA 
FROM carmaint, part 
JOIN maintparts ON mpIdpart = idPart 
WHERE mDetail = 'REVISÃO 40.000KM' 
GROUP BY pName;

-- Listar nome do cliente, veiculo e valor as OS 
SELECT osIdClient AS ID, CONCAT(Fname,' ',Lname) AS Nome, brand AS Marca, model AS MODELO, tPrice 
FROM serviceorder, clients, automobile 
WHERE osIdClient = idClient AND osIdauto = idAuto 
ORDER BY tPrice DESC;

		
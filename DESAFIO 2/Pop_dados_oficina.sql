-- idMechanic, Fname, Lname, adress, Mrole ENUM('Mecanico', 'Eletricista', 'Pintor', 'Funilaria', 'Auxiliar') 
INSERT INTO mechanic (Fname, Lname, adress, Mrole)
	VALUES ('Aldo', 'Rabelo', 'Rua da mentira feia, 171, paçoquinha', 'Mecanico'),
		   ('Zico', 'Serra', 'Rua da solidariedade, 5025, jujuba', 'Pintor'),
           ('Henrique','Lopes', 'Avenida das pitombas, 2758, jaqueira', 'Auxiliar'),
           ('Macio', 'França', 'Rua dos padres, 1111, centro','Mecanico'),
           ('Jose','Souto', 'Rua lucio dantas, 1001, coophab', 'Pintor'),
           ('Maria','Cabral', 'Rua Serra do Arapuá, 40, Dinarte Maris', 'Eletricista'),
           ('Josefa', 'Jane', 'Rua das americas, 778, Rio baixo', 'Mecanico');

-- Fname, Lname, adress, contact, email
INSERT INTO clients (Fname, Lname, adress, contact, email)
	VALUES ('Fernando', 'Sales', 'Rua das pedras, 171, baixada', '(21)99999999','fernandinhob@uol.com.br'),
		   ('Marcio','Peixoto', 'Rua das ervas, 157, botafogo', '(21)99999998', 'marcola@uol.com.br'),
           ('Valdemar','Neto','Rua do dinheiro, 666, lago sul','(61)99999997','valdemarcosta@uol.com.br'),
           ('Roferto','Jeferson','Rua da loucura, 9999, lago norte', '(61)99999996', 'bobjef@uol.com.br'),
           ('Flavio', 'Bino', 'Rua das mansões, 8888, lago norte','(61)99999995','filho01@uol.com.br'),
           ('Takushi','Nako', 'Rua das cerejeiras, 5555, liberdade','(11)99999994', 'takushinako@uol.com.br'),
           ('Albert','Serrano', 'Rua das oportunidades, 1234, pinheiros', '(11)99999993', 'albertserra@uol.com.br');
           SELECT * FROM clients;
-- idAutoclient, brand, model, fYear, aEngine, plate 
INSERT INTO automobile (idAutoclient, brand, model, fYear, aEngine, plate)
	VALUES (1, 'BMW', 'M5', 2021, '5.0 v10 turbo', 'POP5Q99'),
		   (2, 'PORSCHE', 'CAYENE TUR', 2019, '4.0 V8', 'SUP3R29'),
           (3, 'FERRARI', '599 GTO', 2018, '6.0 V12', 'POT3O52'),
           (4, 'LAMBORGHINI', 'HURACAN', 2022, '5.2 V10', 'SOU3R100'),
           (5, 'HUMMER', 'H3', 2009, '5.3 V8', 'SUB0D24'),
           (6, 'LAND ROVER', 'RANGE ROVE', 2021, '3.0 V6', 'DIN3E150'),
           (7, 'FIAT', '147', 1973, '1.0', 'LIS0S89');
           
-- cod, detail, hourCount
INSERT INTO services (cod, detail, hourCount)
	VALUES (100, 'TROCA DE LAMPADA QUEIMADA', 1),
		   (101, 'REVEZAMENTOS DOS PNEUS', 1),
           (102, 'TROCA DE OLEO DO MOTOR', 1),
           (103, 'TROCA DO FILTRO DE CABINE', 2),
           (104, 'ALINHAMENTO COMPUTADORIZADO', 1),
           (105, 'PINTURA DO PARACHOQUE', 2),
           (106, 'TROCA PASTILHA DE FREIO', 2),
           (107, 'TROCA DOS ARMORTECEDORES', 3),
           (108, 'TROCA DA CORREIA DENTADA', 2),
           (109, 'LIMPEZA DOS BICOS INJETORES', 2),
           (110, 'LIMPEZA DO SISTEMA DE ARREFECIMENTO', 3),
           (111, 'SUBSTITUIÇÃO DO CAMBIO COMPPLETO', 5),
           (112, 'HIGIENIZAÇÃO DO AR CONDICIONADO', 2),
           (113, 'TROCA DA VELAS DE IGNIÇÃO', 1),
           (114, 'REVITALIZAÇÃO DA PINTURA', 7),
           (115, 'SUBSTITUIÇÃO DO CABEÇOTE', 5),
           (116, 'TROCA VELA DE IGNIÇÃO', 1);
           
-- codPart, pName, pDetail, pBrand, application, price
INSERT INTO part (codPart, pName, pDetail, pBrand, application, price)
	VALUES ('123654', 'PASTILHA DE FREIO', 'PASTILHA DE FREIO DIANTEIRA', 'FRASLE', 'PALIO, UNO, STRADA', 89.90),
		   ('123212', 'DISCO DE FREIO','DISCO DE FREIO DIANTEIRO','FREMAX', 'GOL, SAVEIRO, PARATI', 189.90),
           ('987654', 'OLEO  SINTETICO','OLEO 5w30 SJ','OILUB', NULL, 45.60),
           ('654221', 'FILTRO DE OLEO', 'FILTRO DE OLEO PALIO', 'TECFILL', 'MOTOR FIAT FIRE 1.6 13-17', 21.80),
           ('4529976', 'VELA DE IGNIÇÃO','JOGO VELA DE IGNIÇÃO FIAT 1.6', 'NGK', 'MOTOR FIAT FIRE 1.6 13-17', 51.90),
           ('8452367', 'OLEO MINERAL','OLEO 50w80','MAXLUB', NULL, 189.90),
           ('65451321', 'LIMPADOR PARABRISA', 'PALHETA 16"', 'LIMPAMAX', NULL, 25.90),
           ('8687676', 'ROLAMENTO RODA', '70x85x110', 'BEARING', 'KA', 219.90),
           ('87685453', 'LAMPADA HALOGENA', '55W H4', 'OSRAM', 'GOL,PALIO,CELTA,CORSA', 39.90);
           
-- mCod, mDetail
INSERT INTO carmaint (mCod, mDetail)
	VALUES ('1010','REVISÃO 10.000KM'),
		   ('1001', 'REVISÃO 20.000KM'),
           ('1002', 'REVISÃO 30.000KM'),
           ('1003', 'REVISÃO 40.000KM'),
           ('1004', 'REVISÃO 50.000KM'),
           ('1005', 'REVISÃO SISTEMA DE FREIOS'),
           ('1006', 'REVISÃO DO SISTEMA DE SUSPENSÃO'),
           ('1007', 'REVISÃO SISTEMA DE INJEÇÃO');
           
-- maintIdpart(isPart), maintIdmaint(idCarmaint), maintQtt,
INSERT INTO maintparts (mpIdpart, mpIdmaint, mpQtt)
	VALUES (1, 1, 2),
		   (3, 1, 3),
           (4, 1, 1),
           (3,2,4),
           (1,2,1),
           (5,2,1);
	
-- msIdmaint(isCarmaint), msIdservice(idServicos),
INSERT INTO maintservice (msIdmaint, msIdservice)
	VALUES (1, 3),
		   (2, 3),
           (2, 4),
           (3, 3),
           (3, 10),
           (4, 3),
           (4, 4),
           (4, 17);
           
-- numOS(INT), kind('revisão', 'reparo'),statusOS('orçamento', 'aprovado', 'executado', 'cancelado'),delivDate(VARCHAR), hourPrice, tPrice, osIdmaint, osIdauto, osIdclient, osIdmech,
INSERT INTO serviceorder (numOS, kind, statusOS, delivDate, hourPrice, tPrice, osIdmaint, osIdauto, osIdclient, osIdmech)
	VALUES (2020, 'revisão','aprovado', '30/11/2022', 100.00, 560.00, 1, 1, 1, 1),
		   (2021, 'revisão', 'aprovado', '04/12/2022', 100.00, 25000.00, 2, 2, 2, 4),
           (2022, 'revisão', 'orçamento', '12/12/2022', 150.00, 4957.00, 3, 3, 3, 7),
           (2023, 'reparo', 'executado', '23/12/2022', 200.00, 5932.99, NULL, 4, 4, 1),
           (2024, 'reparo', 'cancelado', '25/12/2022', 225.00, 9362.57, NULL, 5, 5, 4);

-- fpIdpart, fpIdnum, fptQtt
INSERT INTO fixparts (fpIdpart, fpIdnum, fptQtt)
	VALUES (3, 3, 5),
		   (6, 3, 2),
           (8, 4, 2),
           (2, 4, 2);
           
-- fsIdservice, fsIdnum 
INSERT INTO fixservices (fsIdservice, fsIdnum)
	VALUES (1, 3),
		   (2, 3),
           (3, 3),
           (4, 3),
           (5, 4),
           (8, 4),
           (15, 4);
           
    
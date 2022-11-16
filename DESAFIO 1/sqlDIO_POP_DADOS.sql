-- idClient, Fname, Minit, Lanme, CPF, Address
INSERT INTO Clients (Fname, Minit, Lname, CPF, Address)
	VALUES('Maria', 'M', 'Silva', 12346789, 'rua silva de prata, 29, Carangola - Cidade das flores'),
		  ('Matheus', 'O', 'Pimentel', 987654321, 'rua alameda 289, Centro - Cidade das flores'),
          ('Ricardo', 'F', 'Silva', 789123456, 'avenida alameda vinha 1009, Centro - Cidade das flores'),
          ('Julia', 'S', 'França', 789123456, 'rua laranjeiras 861, Centro - Cidade das flores'),
          ('Roberta', 'G', 'Assis', 98745631, 'avenida koller 19, Centro - Cidade das flores'),
          ('Isabela', 'M', 'Cruz', 654789123, 'rua alameda das flore 28 - Cidade das flores');
          
-- idProduct, Pname, classification_kids boolan, Category('Eletronicos', 'Vestimenta', 'Brinquedos', 'Alimentos', 'Moveis'), avaliação, size
INSERT INTO product (Pname, classification_kids, category, avaliação, size) VALUES
							('Fone de ouvido', FALSE, 'Eletrônico','4',NULL),
                            ('Barbie Elsa', TRUE, 'Brinquedo','3',NULL),
                            ('Body Carters', TRUE, 'Vestimenta','5',NULL),
                            ('Microfone Vedo - Youtuber', FALSE, 'Eletrônico','4',NULL),
                            ('Sofá retrátil', FALSE, 'Móveis','3','3x57x80');
                            
-- idOrder, idOrderClient, orderStatus, orderDescription, sendValue
INSERT INTO orders (idOrderClient, orderStatus, orderDescription, sendValue) values
				   (1, 'Confirmado', 'compra via aplicativo', NULL),
                   (2, DEFAULT, 'compra via aplicativo', 50),
                   (3, DEFAULT, NULL, NULL),
                   (2, 'Confirmado', 'compra via aplicativo', 100),
                   (4, DEFAULT, 'compra via web site', 150);
                   
-- idPOproduct, idPOorder, poQuantity, poStatus
INSERT INTO productOrder (idPOproduct, idPOorder, poQuantity, poStatus) values
						 (1,5,2,NULL),
                         (2,5,1,NULL),
                         (3,6,1,NULL);

-- storageLocation, quantity
INSERT INTO productStorage (storageLocation,quantity) values
						   ('Rio de Janeiro', 1000),
                           ('Rio de Janeiro', 500),
                           ('São Paulo', 10),
                           ('São Paulo', 100),
                           ('São Paulo', 10),
                           ('Brasilia', 60);
                           
-- idLproduct, idLstorage, location
INSERT INTO storageLocation (idLproduct, idLstorage, location) values
							(1,2,'RJ'),
                            (2,6,'GO');

-- idSupplier, SocialName, CNPJ, contact                          
INSERT INTO supplier (idSupplier, SocialName, CNPJ, contact) values                         
                            ('Almeida e filho', 123456789123456, '21985474'),
                            ('Eletronicos Silva', 854519649143457, '21985484'),
                            ('Eletronicos Valma', 934567893934695, '31975474');
							
                            
                            
  -- idPsSupplier, idPsProduct, quantity
  INSERT INTO productSupplier (idPsSuppier, idPsProduct, quantity) values
							(1,1,500),
                            (1,2,400),
                            (2,4,633),
                            (3,3,5),
                            (2,5,10);
                            
-- idSeller, SocialName, AbstName, CNPJ, CPF, location, contact
INSERT INTO seller (SocialName, AbstName, CNPJ, CPF, location, contact) VALUES
						('Tech eletronics', NULL, 123456789456321, NULL, 'Rio de Janeiro', 219946287),
                        ('Botique Durgas', NULL, NULL, 123456783, 'Rio de Janeiro', 219567895),
                        ('Kids World', NULL, 456789123654485, NULL, 'São Paulo', 119867484);
                        
INSERT INTO productSeller (idPseller, idProduct, prodQuantity) VALUES
							(1,6,80),
                            (2,7,10);
						
					
                            
                            
                           

                            
                            
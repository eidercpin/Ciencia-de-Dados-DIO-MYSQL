-- criação do bando de dados oficina
CREATE DATABASE oficina;

-- acessando a base de dados

USE oficina;

-- tabela de mecanicos

CREATE TABLE mechanic (
idMechanic INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
Fname VARCHAR(20) NOT NULL,
Lname VARCHAR(20) NOT NULL,
adress VARCHAR(100) NULL,
Mrole ENUM('Mecanico', 'Eletricista', 'Pintor', 'Funilaria', 'Auxiliar') NOT NULL
);

-- tabela de clientes

CREATE TABLE clients (
idClient INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
Fname VARCHAR(20) NOT NULL,
Lname VARCHAR(20) NOT NULL,
adress VARCHAR(200) NULL,
contact VARCHAR(12) NOT NULL,
email VARCHAR(45)  NULL
);

-- tabela de veiculos

CREATE TABLE automobile (
idAuto INT NOT NULL AUTO_INCREMENT,
idAutoclient INT,
brand VARCHAR(15) NOT NULL,
model VARCHAR(10) NOT NULL,
fYear INT NOT NULL,
aEngine VARCHAR(45) NULL,
plate VARCHAR(10),
PRIMARY KEY (idAuto, idAutoclient),
CONSTRAINT fk_client_auto FOREIGN KEY (idAutoclient) REFERENCES clients (idClient)
);

-- tabela de serviços

CREATE TABLE services (
idServicos INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
cod VARCHAR(45) NOT NULL,
detail VARCHAR(45) NOT NULL,
hourCount INT NOT NULL
);

-- tabela de peças

CREATE TABLE part (
idPart INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
codPart VARCHAR(45) NULL,
pName VARCHAR(45) NULL,
pDetail VARCHAR(45) NULL,
pBrand VARCHAR(45) NULL,
application VARCHAR(45) NULL,
price FLOAT NOT NULL
);

-- tabela de revisão

CREATE TABLE carmaint (
idCarmaint INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
mCod INT NOT NULL,
mDetail VARCHAR(45)
);

-- tabela de peças da revisão
CREATE TABLE maintparts (
mpIdpart INT NOT NULL,
mpIdmaint INT NOT NULL,
mpQtt INT NOT NULL,
PRIMARY KEY (mpIdpart, mpIdmaint),
CONSTRAINT  fk_parts_maint FOREIGN KEY (mpIdpart) REFERENCES part (idPart),
CONSTRAINT fk_maint_parts FOREIGN KEY (mpIdmaint) REFERENCES carmaint(idCarmaint)
);

-- tabela serviços da revisão

CREATE TABLE maintservice (
 msIdmaint INT NOT NULL, 
 msIdservice INT NOT NULL,
 PRIMARY KEY (msIdmaint, msIdservice),
 CONSTRAINT fk_serv_maint FOREIGN KEY (msIdmaint) REFERENCES carmaint (idCarmaint),
 CONSTRAINT fk_maint_serv FOREIGN KEY (msIdservice) REFERENCES services (idServicos)
);

-- tabela para ordem de serviço

CREATE TABLE serviceorder (
idOS INT NOT NULL AUTO_INCREMENT,
numOS INT NOT NULL,
kind ENUM('revisão', 'reparo') NOT NULL,
statusOS ENUM('orçamento', 'aprovado', 'executado', 'cancelado'),
delivDate VARCHAR(45) NULL,
hourPrice FLOAT NOT NULL,
tPrice FLOAT NOT NULL,
osIdmaint INT NULL,
osIdauto INT NOT NULL,
osIdclient INT NOT NULL,
osIdmech INT NOT NULL,
PRIMARY KEY (idOS, osIdauto, osIdclient, osIdmech),
CONSTRAINT fk_maint_os FOREIGN KEY (osIdmaint) REFERENCES carmaint (idCarmaint),
CONSTRAINT fk_auto_os FOREIGN KEY (osIdauto) REFERENCES automobile (idAuto),
CONSTRAINT fk_os_client FOREIGN KEY (osIdclient) REFERENCES automobile (idAutoclient),
CONSTRAINT fk_mech_os FOREIGN KEY (osIdmech) REFERENCES mechanic (idMechanic)
);

-- tabela peças do reparo

CREATE TABLE fixparts (
fpIdpart INT NOT NULL,
fpIdnum INT NOT NULL,
fptQtt INT NOT NULL,
PRIMARY KEY (fpIdpart, fpIdnum),
CONSTRAINT fk_fixpart_part FOREIGN KEY (fpIdpart) REFERENCES part (idPart),
CONSTRAINT fx_fixpart_os FOREIGN KEY (fpIdnum) REFERENCES serviceorder (idOS)
);

-- tabela serviços do reparo

CREATE TABLE fixservices (
fsIdservice INT NOT NULL,
fsIdnum INT NOT NULL,
PRIMARY KEY(fsIdservice, fsIdnum),
CONSTRAINT fk_fixservice_service FOREIGN KEY (fsIdservice) REFERENCES services (idServicos),
CONSTRAINT fk_OS_fixservices FOREIGN KEY (fsIdnum) REFERENCES serviceorder (idOS)
);


-- DROP DATABASE oficina;


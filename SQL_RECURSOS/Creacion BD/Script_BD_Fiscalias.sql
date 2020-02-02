
CREATE DATABASE MP
GO

USE MP
GO

CREATE SCHEMA Fiscalias 
GO

CREATE SCHEMA Pais 
GO

CREATE TABLE Pais.TB_Departamentos(
   id_departamento INT  IDENTITY(1,1),
   departamento_nombre NVARCHAR (50) NOT NULL,
   CONSTRAINT  PK_ID_DEPARTAMENTO_TB_Departamentos PRIMARY KEY (id_departamento)
)


CREATE TABLE Pais.TB_Municipios(
	id_municipio INT  IDENTITY(1,1),
	id_departamento INT NOT NULL,
	municipio_nombre NVARCHAR (60) NOT NULL,
    CONSTRAINT  PK_ID_MUNICIPIO_TB_MUNICIPIOS PRIMARY KEY (id_municipio),
    CONSTRAINT  FK_ID_DEPARTAMENTO_TB_DEPTOS_TB_MUNICIPIOS FOREIGN KEY (id_departamento) REFERENCES Pais.TB_Departamentos(id_departamento)
)

CREATE TABLE Fiscalias.TB_Fiscalias (
    id_fiscalia INT  IDENTITY(1,1),
	id_municipio INT NOT NULL,
	nombre_fiscalia NVARCHAR(100)  NOT NULL,
	direccion_fiscalia NVARCHAR(150)  NOT NULL,
	correoe_fiscalia NVARCHAR(100)  NULL,
	CONSTRAINT  PK_ID_FISCALIA_TB_FISCALIAS PRIMARY KEY (id_fiscalia),
	CONSTRAINT  FK_ID_MUNICIPIO_TB_MUNICIPIOS_TB_FISCALIAS FOREIGN KEY (id_municipio) REFERENCES Pais.TB_Municipios(id_municipio)
)

CREATE TABLE Fiscalias.TB_LineasTelefonicas(
	id_linea	INT  IDENTITY(1,1),
	id_fiscalia INT NOT NULL,
	numero_linea NVARCHAR (60) NOT NULL,
    CONSTRAINT  PK_ID_LINEA_TB_LINEAS_TELEFONICAS PRIMARY KEY (id_linea),
    CONSTRAINT  FK_ID_FISCALIA_TB_FISCALIAS_TB_LINEASTELEFONICAS FOREIGN KEY (id_fiscalia) REFERENCES Fiscalias.TB_Fiscalias(id_fiscalia)
)


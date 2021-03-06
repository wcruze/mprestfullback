USE [MP]
GO
/****** Object:  Schema [Fiscalias]    Script Date: 31/01/2020 13:44:30 ******/
CREATE SCHEMA [Fiscalias]
GO
/****** Object:  Schema [Pais]    Script Date: 31/01/2020 13:44:30 ******/
CREATE SCHEMA [Pais]
GO
/****** Object:  Table [Fiscalias].[TB_Fiscalias]    Script Date: 31/01/2020 13:44:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Fiscalias].[TB_Fiscalias](
	[id_fiscalia] [int] IDENTITY(1,1) NOT NULL,
	[id_municipio] [int] NOT NULL,
	[nombre_fiscalia] [nvarchar](100) NOT NULL,
	[direccion_fiscalia] [nvarchar](150) NOT NULL,
	[correoe_fiscalia] [nvarchar](100) NULL,
 CONSTRAINT [PK_ID_FISCALIA_TB_FISCALIAS] PRIMARY KEY CLUSTERED 
(
	[id_fiscalia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Fiscalias].[TB_LineasTelefonicas]    Script Date: 31/01/2020 13:44:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Fiscalias].[TB_LineasTelefonicas](
	[id_linea] [int] IDENTITY(1,1) NOT NULL,
	[id_fiscalia] [int] NOT NULL,
	[numero_linea] [nvarchar](60) NOT NULL,
 CONSTRAINT [PK_ID_LINEA_TB_LINEAS_TELEFONICAS] PRIMARY KEY CLUSTERED 
(
	[id_linea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Pais].[TB_Departamentos]    Script Date: 31/01/2020 13:44:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Pais].[TB_Departamentos](
	[id_departamento] [int] IDENTITY(1,1) NOT NULL,
	[departamento_nombre] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ID_DEPARTAMENTO_TB_Departamentos] PRIMARY KEY CLUSTERED 
(
	[id_departamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Pais].[TB_Municipios]    Script Date: 31/01/2020 13:44:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Pais].[TB_Municipios](
	[id_municipio] [int] IDENTITY(1,1) NOT NULL,
	[id_departamento] [int] NOT NULL,
	[municipio_nombre] [nvarchar](60) NOT NULL,
 CONSTRAINT [PK_ID_MUNICIPIO_TB_MUNICIPIOS] PRIMARY KEY CLUSTERED 
(
	[id_municipio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [Fiscalias].[TB_Fiscalias] ON 

INSERT [Fiscalias].[TB_Fiscalias] ([id_fiscalia], [id_municipio], [nombre_fiscalia], [direccion_fiscalia], [correoe_fiscalia]) VALUES (1, 24, N'Fiscalía Municipal', N'5a Avenida 10-18, Zona 4', N'')
INSERT [Fiscalias].[TB_Fiscalias] ([id_fiscalia], [id_municipio], [nombre_fiscalia], [direccion_fiscalia], [correoe_fiscalia]) VALUES (2, 31, N'Fiscalía Municipal', N'9a. Calle 0-75 Zona 5, Colonia Pariso del Frutal.', N'')
INSERT [Fiscalias].[TB_Fiscalias] ([id_fiscalia], [id_municipio], [nombre_fiscalia], [direccion_fiscalia], [correoe_fiscalia]) VALUES (3, 18, N'Unidad de Casos Especiales del Conflicto Armado Interno Fiscalia D.H, Agencia 6.', N'7a. Avenida . 11-20 Zona 1', N'')
INSERT [Fiscalias].[TB_Fiscalias] ([id_fiscalia], [id_municipio], [nombre_fiscalia], [direccion_fiscalia], [correoe_fiscalia]) VALUES (4, 321, N'Fiscalía de Delitos contra el Patrimonio Cultural de la Nación', N'Calle del Emperador No. 6-A San Pedro El Panorama.', N'')
INSERT [Fiscalias].[TB_Fiscalias] ([id_fiscalia], [id_municipio], [nombre_fiscalia], [direccion_fiscalia], [correoe_fiscalia]) VALUES (5, 1, N'Fiscalía Municipal', N'Barrio San Ramon, del Municipio de Dolores.', N'')
SET IDENTITY_INSERT [Fiscalias].[TB_Fiscalias] OFF
SET IDENTITY_INSERT [Fiscalias].[TB_LineasTelefonicas] ON 

INSERT [Fiscalias].[TB_LineasTelefonicas] ([id_linea], [id_fiscalia], [numero_linea]) VALUES (1, 1, N'66302141')
INSERT [Fiscalias].[TB_LineasTelefonicas] ([id_linea], [id_fiscalia], [numero_linea]) VALUES (2, 2, N'66317601')
INSERT [Fiscalias].[TB_LineasTelefonicas] ([id_linea], [id_fiscalia], [numero_linea]) VALUES (3, 3, N'22203355')
INSERT [Fiscalias].[TB_LineasTelefonicas] ([id_linea], [id_fiscalia], [numero_linea]) VALUES (4, 2, N'66316301')
INSERT [Fiscalias].[TB_LineasTelefonicas] ([id_linea], [id_fiscalia], [numero_linea]) VALUES (5, 4, N'79346598')
INSERT [Fiscalias].[TB_LineasTelefonicas] ([id_linea], [id_fiscalia], [numero_linea]) VALUES (6, 5, N'79266102')
SET IDENTITY_INSERT [Fiscalias].[TB_LineasTelefonicas] OFF
SET IDENTITY_INSERT [Pais].[TB_Departamentos] ON 

INSERT [Pais].[TB_Departamentos] ([id_departamento], [departamento_nombre]) VALUES (1, N'Petén')
INSERT [Pais].[TB_Departamentos] ([id_departamento], [departamento_nombre]) VALUES (2, N'Guatemala')
INSERT [Pais].[TB_Departamentos] ([id_departamento], [departamento_nombre]) VALUES (3, N'Jutiapa')
INSERT [Pais].[TB_Departamentos] ([id_departamento], [departamento_nombre]) VALUES (4, N'Alta Verapaz')
INSERT [Pais].[TB_Departamentos] ([id_departamento], [departamento_nombre]) VALUES (5, N'Quiché')
INSERT [Pais].[TB_Departamentos] ([id_departamento], [departamento_nombre]) VALUES (6, N'Huehuetenango')
INSERT [Pais].[TB_Departamentos] ([id_departamento], [departamento_nombre]) VALUES (7, N'Escuintla')
INSERT [Pais].[TB_Departamentos] ([id_departamento], [departamento_nombre]) VALUES (8, N'San Marcos')
INSERT [Pais].[TB_Departamentos] ([id_departamento], [departamento_nombre]) VALUES (9, N'Baja Verapaz')
INSERT [Pais].[TB_Departamentos] ([id_departamento], [departamento_nombre]) VALUES (10, N'Santa Rosa')
INSERT [Pais].[TB_Departamentos] ([id_departamento], [departamento_nombre]) VALUES (11, N'Zacapa')
INSERT [Pais].[TB_Departamentos] ([id_departamento], [departamento_nombre]) VALUES (12, N'Suchitepéquez')
INSERT [Pais].[TB_Departamentos] ([id_departamento], [departamento_nombre]) VALUES (13, N'Chiquimula')
INSERT [Pais].[TB_Departamentos] ([id_departamento], [departamento_nombre]) VALUES (14, N'Jalapa')
INSERT [Pais].[TB_Departamentos] ([id_departamento], [departamento_nombre]) VALUES (15, N'Chimaltenango')
INSERT [Pais].[TB_Departamentos] ([id_departamento], [departamento_nombre]) VALUES (16, N'Quetzaltenango')
INSERT [Pais].[TB_Departamentos] ([id_departamento], [departamento_nombre]) VALUES (17, N'El Progreso')
INSERT [Pais].[TB_Departamentos] ([id_departamento], [departamento_nombre]) VALUES (18, N'Retalhuleu')
INSERT [Pais].[TB_Departamentos] ([id_departamento], [departamento_nombre]) VALUES (19, N'Sololá')
INSERT [Pais].[TB_Departamentos] ([id_departamento], [departamento_nombre]) VALUES (20, N'Totonicapán')
INSERT [Pais].[TB_Departamentos] ([id_departamento], [departamento_nombre]) VALUES (21, N'Sacatepéquez')
INSERT [Pais].[TB_Departamentos] ([id_departamento], [departamento_nombre]) VALUES (22, N'Izabal')
SET IDENTITY_INSERT [Pais].[TB_Departamentos] OFF
SET IDENTITY_INSERT [Pais].[TB_Municipios] ON 

INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (1, 1, N'Dolores')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (2, 1, N'El Chal')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (3, 1, N'Ciudad Flores')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (4, 1, N'La Libertad')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (5, 1, N'Las Cruces')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (6, 1, N'Melchor de Mencos')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (7, 1, N'Poptún')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (8, 1, N'San Andrés')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (9, 1, N'San Benito')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (10, 1, N'San Francisco')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (11, 1, N'San José')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (12, 1, N'San Luis')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (13, 1, N'Santa Ana')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (14, 1, N'Sayaxché')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (15, 2, N'Amatitlán')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (16, 2, N'Chinautla')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (17, 2, N'Chuarrancho')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (18, 2, N'Guatemala')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (19, 2, N'Fraijanes')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (20, 2, N'Mixco')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (21, 2, N'Palencia')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (22, 2, N'San José del Golfo')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (23, 2, N'San José Pinula')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (24, 2, N'San Juan Sacatepéquez')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (25, 2, N'San Miguel Petapa')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (26, 2, N'San Pedro AyaPaisuc')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (27, 2, N'San Pedro Sacatepéquez')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (28, 2, N'San Raymundo')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (29, 2, N'Santa Catarina Pinula')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (30, 2, N'Villa Canales')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (31, 2, N'Villa Nueva')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (32, 3, N'Agua Blanca')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (33, 3, N'Asunción Mita')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (34, 3, N'AtescatePaisa')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (35, 3, N'Comapa')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (36, 3, N'Conguaco')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (37, 3, N'El Adelanto')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (38, 3, N'El Progreso')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (39, 3, N'Jalpatagua')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (40, 3, N'Jerez')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (41, 3, N'Jutiapa')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (42, 3, N'Moyuta')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (43, 3, N'Pasaco')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (44, 3, N'Quesada')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (45, 3, N'San José AcatePaisa')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (46, 3, N'Santa Catarina Mita')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (47, 3, N'Yupiltepeque')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (48, 3, N'Zapotitlán')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (49, 4, N'Chahal')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (50, 4, N'Chisec')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (51, 4, N'Cobán')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (52, 4, N'Fray Bartolomé de las Casas')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (53, 4, N'La Tinta')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (54, 4, N'Lanquín')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (55, 4, N'Panzós')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (56, 4, N'Raxruhá')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (57, 4, N'San Cristóbal Verapaz')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (58, 4, N'San Juan Chamelco')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (59, 4, N'San Pedro Carchá')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (60, 4, N'Santa Cruz Verapaz')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (61, 4, N'Santa María Cahabón')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (62, 4, N'Senahú')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (63, 4, N'Tamahú')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (64, 4, N'Tactic')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (65, 4, N'Tucurú')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (66, 5, N'Canillá')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (67, 5, N'Chajul')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (68, 5, N'Chicamán')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (69, 5, N'Chiché')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (70, 5, N'Chichicastenango')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (71, 5, N'Chinique')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (72, 5, N'Cunén')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (73, 5, N'Ixcán Playa Grande')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (74, 5, N'Joyabaj')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (75, 5, N'Nebaj')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (76, 5, N'Pachalum')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (77, 5, N'Patzité')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (78, 5, N'Sacapulas')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (79, 5, N'San Andrés Sajcabajá')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (80, 5, N'San Antonio Ilotenango')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (81, 5, N'San Bartolomé Jocotenango')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (82, 5, N'San Juan Cotzal')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (83, 5, N'San Pedro Jocopilas')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (84, 5, N'Santa Cruz del Quiché')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (85, 5, N'Uspantán')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (86, 5, N'Zacualpa')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (87, 6, N'Aguacatán')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (88, 6, N'Chiantla')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (89, 6, N'Colotenango')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (90, 6, N'Concepción Huista')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (91, 6, N'Cuilco')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (92, 6, N'Huehuetenango')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (93, 6, N'Jacaltenango')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (94, 6, N'La Democracia')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (95, 6, N'La Libertad')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (96, 6, N'Malacatancito')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (97, 6, N'Nentón')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (98, 6, N'San Antonio Huista')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (99, 6, N'San Gaspar Ixchil')
GO
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (100, 6, N'San Ildefonso Ixtahuacán')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (101, 6, N'San Juan Atitán')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (102, 6, N'San Juan Ixcoy')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (103, 6, N'San Mateo Ixtatán')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (104, 6, N'San Miguel Acatán')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (105, 6, N'San Pedro Nécta')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (106, 6, N'San Pedro Soloma')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (107, 6, N'San Rafael La Independencia')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (108, 6, N'San Rafael Pétzal')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (109, 6, N'San Sebastián Coatán')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (110, 6, N'San Sebastián Huehuetenango')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (111, 6, N'Santa Ana Huista')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (112, 6, N'Santa Bárbara')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (113, 6, N'Santa Cruz Barillas')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (114, 6, N'Santa Eulalia')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (115, 6, N'Santiago Chimaltenango')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (116, 6, N'Tectitán')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (117, 6, N'Todos Santos Cuchumatán')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (118, 6, N'Unión Cantinil')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (119, 7, N'Escuintla')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (120, 7, N'Guanagazapa')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (121, 7, N'Iztapa')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (122, 7, N'La Democracia')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (123, 7, N'La Gomera')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (124, 7, N'Masagua')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (125, 7, N'Nueva Concepción')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (126, 7, N'Palín')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (127, 7, N'San José')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (128, 7, N'San Vicente Pacaya')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (129, 7, N'Santa Lucía Cotzumalguapa')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (130, 7, N'Siquinalá')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (131, 7, N'Tiquisate')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (132, 8, N'Ayutla')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (133, 8, N'Catarina')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (134, 8, N'Comitancillo')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (135, 8, N'Concepción Tutuapa')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (136, 8, N'El Quetzal')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (137, 8, N'El Tumbador')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (138, 8, N'Esquipulas Palo Gordo')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (139, 8, N'Ixchiguán')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (140, 8, N'La Blanca')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (141, 8, N'La Reforma')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (142, 8, N'Malacatán')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (143, 8, N'Nuevo Progreso')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (144, 8, N'Ocós')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (145, 8, N'Pajapita')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (146, 8, N'Río Blanco')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (147, 8, N'San Antonio Sacatepéquez')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (148, 8, N'San Cristóbal Cucho')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (149, 8, N'San José El Rodeo')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (150, 8, N'San José Ojetenam')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (151, 8, N'San Lorenzo')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (152, 8, N'San Marcos')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (153, 8, N'San Miguel Ixtahuacán')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (154, 8, N'San Pablo')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (155, 8, N'San Pedro Sacatepéquez')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (156, 8, N'San Rafael Pie de la Cuesta')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (157, 8, N'Sibinal')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (158, 8, N'Sipacapa')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (159, 8, N'Tacaná')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (160, 8, N'Tajumulco')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (161, 8, N'Tejutla')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (162, 9, N'Cubulco')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (163, 9, N'Granados')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (164, 9, N'Purulhá')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (165, 9, N'Rabinal')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (166, 9, N'Salamá')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (167, 9, N'San Jerónimo')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (168, 9, N'San Miguel Chicaj')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (169, 9, N'Santa Cruz el Chol')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (170, 10, N'Barberena')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (171, 10, N'Casillas')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (172, 10, N'Chiquimulilla')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (173, 10, N'Cuilapa')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (174, 10, N'Guazacapán')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (175, 10, N'Nueva Santa Rosa')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (176, 10, N'Oratorio')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (177, 10, N'Pueblo Nuevo Viñas')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (178, 10, N'San Juan Tecuaco')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (179, 10, N'San Rafael las Flores')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (180, 10, N'Santa Cruz Naranjo')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (181, 10, N'Santa María Ixhuatán')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (182, 10, N'Santa Rosa de Lima')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (183, 10, N'Taxisco')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (184, 11, N'Cabañas')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (185, 11, N'Estanzuela')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (186, 11, N'Gualán')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (187, 11, N'Huité')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (188, 11, N'La Unión')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (189, 11, N'Río Hondo')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (190, 11, N'San Diego')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (191, 11, N'San Jorge')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (192, 11, N'Teculután')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (193, 11, N'Usumatlán')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (194, 11, N'Zacapa')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (195, 12, N'Chicacao')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (196, 12, N'Cuyotenango')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (197, 12, N'Mazatenango')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (198, 12, N'Patulul')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (199, 12, N'Pueblo Nuevo')
GO
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (200, 12, N'Río Bravo')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (201, 12, N'Samayac')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (202, 12, N'San Antonio Suchitepéquez')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (203, 12, N'San Bernardino')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (204, 12, N'San Francisco Zapotitlán')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (205, 12, N'San Gabriel')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (206, 12, N'San José El Idolo')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (207, 12, N'San José La Maquina')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (208, 12, N'San Juan Bautista')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (209, 12, N'San Lorenzo')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (210, 12, N'San Miguel Panán')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (211, 12, N'San Pablo Jocopilas')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (212, 12, N'Santa Bárbara')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (213, 12, N'Santo Domingo Suchitepéquez')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (214, 12, N'Santo Tomás La Unión')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (215, 12, N'Zunilito')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (216, 13, N'Camotán')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (217, 13, N'Chiquimula')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (218, 13, N'Concepción Las Minas')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (219, 13, N'Esquipulas')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (220, 13, N'Ipala')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (221, 13, N'Jocotán')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (222, 13, N'Olopa')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (223, 13, N'Quezaltepeque')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (224, 13, N'San Jacinto')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (225, 13, N'San José la Arada')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (226, 13, N'San Juan Ermita')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (227, 14, N'Jalapa')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (228, 14, N'Mataquescuintla')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (229, 14, N'Monjas')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (230, 14, N'San Carlos Alzatate')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (231, 14, N'San Luis Jilotepeque')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (232, 14, N'San Manuel Chaparrón')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (233, 14, N'San Pedro Pinula')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (234, 15, N'Acatenango')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (235, 15, N'Chimaltenango')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (236, 15, N'El Tejar')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (237, 15, N'Parramos')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (238, 15, N'Patzicía')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (239, 15, N'Patzún')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (240, 15, N'Pochuta')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (241, 15, N'San Andrés Itzapa')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (242, 15, N'San José Poaquíl')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (243, 15, N'San Juan Comalapa')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (244, 15, N'San Martín Jilotepeque')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (245, 15, N'Santa Apolonia')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (246, 15, N'Santa Cruz Balanyá')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (247, 15, N'Tecpán')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (248, 15, N'Yepocapa')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (249, 15, N'Zaragoza')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (250, 16, N'Almolonga')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (251, 16, N'Cabricán')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (252, 16, N'Cajolá')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (253, 16, N'Cantel')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (254, 16, N'Coatepeque')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (255, 16, N'Colomba Costa Cuca')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (256, 16, N'Concepción Chiquirichapa')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (257, 16, N'El Palmar')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (258, 16, N'Flores Costa Cuca')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (259, 16, N'Génova')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (260, 16, N'Huitán')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (261, 16, N'La Esperanza')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (262, 16, N'Olintepeque')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (263, 16, N'Palestina de Los Altos')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (264, 16, N'Quetzaltenango')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (265, 16, N'Salcajá')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (266, 16, N'San Carlos Sija')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (267, 16, N'San Francisco La Unión')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (268, 16, N'San Juan Ostuncalco')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (269, 16, N'San Martín Sacatepéquez')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (270, 16, N'San Mateo')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (271, 16, N'San Miguel Sigüilá')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (272, 16, N'Sibilia')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (273, 16, N'Zunil')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (274, 17, N'El Jícaro')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (275, 17, N'Guastatoya')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (276, 17, N'Morazán')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (277, 17, N'San Agustín Acasaguastlán')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (278, 17, N'San Antonio La Paz')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (279, 17, N'San Cristóbal Acasaguastlán')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (280, 17, N'Sanarate')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (281, 17, N'Sansare')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (282, 18, N'ChaPaiserico')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (283, 18, N'El Asintal')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (284, 18, N'Nuevo San Carlos')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (285, 18, N'Retalhuleu')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (286, 18, N'San Andrés Villa Seca')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (287, 18, N'San Felipe Reu')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (288, 18, N'San Martín Zapotitlán')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (289, 18, N'San Sebastián')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (290, 18, N'Santa Cruz Muluá')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (291, 19, N'Concepción')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (292, 19, N'Nahualá')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (293, 19, N'Panajachel')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (294, 19, N'San Andrés Semetabaj')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (295, 19, N'San Antonio Palopó')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (296, 19, N'San José Chacayá')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (297, 19, N'San Juan La Laguna')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (298, 19, N'San Lucas Tolimán')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (299, 19, N'San Marcos La Laguna')
GO
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (300, 19, N'San Pablo La Laguna')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (301, 19, N'San Pedro La Laguna')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (302, 19, N'Santa Catarina Ixtahuacán')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (303, 19, N'Santa Catarina Palopó')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (304, 19, N'Santa Clara La Laguna')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (305, 19, N'Santa Cruz La Laguna')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (306, 19, N'Santa Lucía Utatlán')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (307, 19, N'Santa María Visitación')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (308, 19, N'Santiago Atitlán')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (309, 19, N'Sololá')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (310, 20, N'Momostenango')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (311, 20, N'San Andrés Xecul')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (312, 20, N'San Bartolo')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (313, 20, N'San Cristóbal Totonicapán')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (314, 20, N'San Francisco El Alto')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (315, 20, N'Santa Lucía La Reforma')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (316, 20, N'Santa María Chiquimula')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (317, 20, N'Totonicapán')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (318, 21, N'Alotenango')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (319, 21, N'Ciudad Vieja')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (320, 21, N'Jocotenango')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (321, 21, N'Antigua Guatemala')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (322, 21, N'Magdalena Milpas Altas')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (323, 21, N'Pastores')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (324, 21, N'San Antonio Aguas Calientes')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (325, 21, N'San Bartolomé Milpas Altas')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (326, 21, N'San Lucas Sacatepéquez')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (327, 21, N'San Miguel Dueñas')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (328, 21, N'Santa Catarina Barahona')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (329, 21, N'Santa Lucía Milpas Altas')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (330, 21, N'Santa María de Jesús')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (331, 21, N'Santiago Sacatepéquez')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (332, 21, N'Santo Domingo Xenacoj')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (333, 21, N'SuPaisango')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (334, 22, N'El Estor')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (335, 22, N'Livingston')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (336, 22, N'Los Amates')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (337, 22, N'Morales')
INSERT [Pais].[TB_Municipios] ([id_municipio], [id_departamento], [municipio_nombre]) VALUES (338, 22, N'Puerto Barrios')
SET IDENTITY_INSERT [Pais].[TB_Municipios] OFF
ALTER TABLE [Fiscalias].[TB_Fiscalias]  WITH CHECK ADD  CONSTRAINT [FK_ID_MUNICIPIO_TB_MUNICIPIOS_TB_FISCALIAS] FOREIGN KEY([id_municipio])
REFERENCES [Pais].[TB_Municipios] ([id_municipio])
GO
ALTER TABLE [Fiscalias].[TB_Fiscalias] CHECK CONSTRAINT [FK_ID_MUNICIPIO_TB_MUNICIPIOS_TB_FISCALIAS]
GO
ALTER TABLE [Fiscalias].[TB_LineasTelefonicas]  WITH CHECK ADD  CONSTRAINT [FK_ID_FISCALIA_TB_FISCALIAS_TB_LINEASTELEFONICAS] FOREIGN KEY([id_fiscalia])
REFERENCES [Fiscalias].[TB_Fiscalias] ([id_fiscalia])
GO
ALTER TABLE [Fiscalias].[TB_LineasTelefonicas] CHECK CONSTRAINT [FK_ID_FISCALIA_TB_FISCALIAS_TB_LINEASTELEFONICAS]
GO
ALTER TABLE [Pais].[TB_Municipios]  WITH CHECK ADD  CONSTRAINT [FK_ID_DEPARTAMENTO_TB_DEPTOS_TB_MUNICIPIOS] FOREIGN KEY([id_departamento])
REFERENCES [Pais].[TB_Departamentos] ([id_departamento])
GO
ALTER TABLE [Pais].[TB_Municipios] CHECK CONSTRAINT [FK_ID_DEPARTAMENTO_TB_DEPTOS_TB_MUNICIPIOS]
GO
/****** Object:  StoredProcedure [dbo].[DatosFiscalia]    Script Date: 31/01/2020 13:44:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DatosFiscalia]
	@DATO NVARCHAR(100) 
AS	
	DECLARE @ID INT = 0;
	DECLARE @NOMBRE NVARCHAR(100) = '';

	IF ISNUMERIC(@DATO) = 1
	BEGIN
	 SET @ID = @DATO;
	END
	ELSE
	BEGIN 
		SET @NOMBRE = UPPER(@DATO);
	END
	
    SELECT FCS.id_fiscalia 
	  ,DP.departamento_nombre
      ,MP.municipio_nombre
      ,FCS.nombre_fiscalia
      ,FCS.direccion_fiscalia
      ,FCS.correoe_fiscalia
  FROM MP.Fiscalias.TB_Fiscalias AS FCS
  INNER JOIN MP.Pais.TB_Municipios AS MP ON FCS.id_municipio = MP.id_municipio
  INNER JOIN MP.Pais.TB_Departamentos AS DP ON MP.id_departamento = DP.id_departamento
  WHERE FCS.id_fiscalia = @ID OR UPPER(FCS.nombre_fiscalia) = @NOMBRE
GO
/****** Object:  StoredProcedure [dbo].[DatosFiscaliayLineas]    Script Date: 31/01/2020 13:44:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DatosFiscaliayLineas]
	@DATO NVARCHAR(100) 
AS	
	DECLARE @ID INT = 0;
	DECLARE @NOMBRE NVARCHAR(100) = '';

	IF ISNUMERIC(@DATO) = 1
	BEGIN
	 SET @ID = @DATO;
	END
	ELSE
	BEGIN 
		SET @NOMBRE = UPPER(@DATO);
	END
	
    SELECT FCS.id_fiscalia 
	  ,DP.departamento_nombre
      ,MP.municipio_nombre
      ,FCS.nombre_fiscalia
      ,FCS.direccion_fiscalia
      ,FCS.correoe_fiscalia
	  ,LT.numero_linea
  FROM MP.Fiscalias.TB_Fiscalias AS FCS
  INNER JOIN MP.Pais.TB_Municipios AS MP ON FCS.id_municipio = MP.id_municipio
  INNER JOIN MP.Pais.TB_Departamentos AS DP ON MP.id_departamento = DP.id_departamento
  INNER JOIN MP.Fiscalias.TB_LineasTelefonicas AS LT ON FCS.id_fiscalia = LT.id_fiscalia
  WHERE FCS.id_fiscalia = @ID OR UPPER(FCS.nombre_fiscalia) = @NOMBRE
GO
/****** Object:  StoredProcedure [dbo].[FiscaliasDepto]    Script Date: 31/01/2020 13:44:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[FiscaliasDepto]
	@DATO NVARCHAR(100) 
AS	
	DECLARE @ID INT = 0;
	DECLARE @NOMBRE NVARCHAR(100) = '';

	IF ISNUMERIC(@DATO) = 1
	BEGIN
	 SET @ID = @DATO;
	END
	ELSE
	BEGIN 
		SET @NOMBRE = UPPER(@DATO);
	END
	
    SELECT FCS.id_fiscalia 
	  ,DP.departamento_nombre
      ,MP.municipio_nombre
      ,FCS.nombre_fiscalia
      ,FCS.direccion_fiscalia
      ,FCS.correoe_fiscalia
  FROM MP.Fiscalias.TB_Fiscalias AS FCS
  INNER JOIN MP.Pais.TB_Municipios AS MP ON FCS.id_municipio = MP.id_municipio
  INNER JOIN MP.Pais.TB_Departamentos AS DP ON MP.id_departamento = DP.id_departamento
  WHERE DP.id_departamento = @ID OR UPPER(DP.departamento_nombre) = @NOMBRE
GO
/****** Object:  StoredProcedure [dbo].[FiscaliasMuni]    Script Date: 31/01/2020 13:44:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[FiscaliasMuni]
	@DATO NVARCHAR(100) 
AS	
	DECLARE @ID INT = 0;
	DECLARE @NOMBRE NVARCHAR(100) = '';

	IF ISNUMERIC(@DATO) = 1
	BEGIN
	 SET @ID = @DATO;
	END
	ELSE
	BEGIN 
		SET @NOMBRE = UPPER(@DATO);
	END
	
    SELECT FCS.id_fiscalia 
	  ,DP.departamento_nombre
      ,MP.municipio_nombre
      ,FCS.nombre_fiscalia
      ,FCS.direccion_fiscalia
      ,FCS.correoe_fiscalia
  FROM MP.Fiscalias.TB_Fiscalias AS FCS
  INNER JOIN MP.Pais.TB_Municipios AS MP ON FCS.id_municipio = MP.id_municipio
  INNER JOIN MP.Pais.TB_Departamentos AS DP ON MP.id_departamento = DP.id_departamento
  WHERE MP.id_municipio = @ID OR UPPER(MP.municipio_nombre) = @NOMBRE
GO
/****** Object:  StoredProcedure [dbo].[InsFiscaliasyLnsTels]    Script Date: 31/01/2020 13:44:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[InsFiscaliasyLnsTels]

--	@id_departamento INT, -- id_departamento para TB_Fiscalias
	@id_municipio INT,-- id_municipio para TB_Fiscalias
	@nombre_fiscalia NVARCHAR(100), -- nombre_fiscalia para TB_Fiscalias
	@direccion_fiscalia NVARCHAR(150), -- direccion_fiscalia para TB_Fiscalias
	@correoe_fiscalia NVARCHAR(100), -- correoe_fiscalia para TB_Fiscalias
	@numero_linea NVARCHAR (60) -- numero_linea para TB_LineasTelefonicas
AS	
    INSERT INTO MP.Fiscalias.TB_Fiscalias(id_municipio,nombre_fiscalia,direccion_fiscalia,correoe_fiscalia)
	VALUES
	(@id_municipio,@nombre_fiscalia,@direccion_fiscalia,@correoe_fiscalia)
	

	DECLARE @NwIDFiscalia INT;
	SET @NwIDFiscalia = SCOPE_IDENTITY();

	INSERT INTO MP.Fiscalias.TB_LineasTelefonicas(id_fiscalia,numero_linea)
	VALUES 
	(@NwIDFiscalia,@numero_linea);
RETURN 0 
GO

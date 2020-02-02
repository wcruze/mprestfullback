USE MP
GO

CREATE PROCEDURE DatosFiscaliayLineas
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

CREATE PROCEDURE DatosFiscalia
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


CREATE PROCEDURE FiscaliasDepto
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



CREATE PROCEDURE FiscaliasMuni
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


--DROP PROCEDURE   	DatosFiscaliayLineas
--DROP PROCEDURE   	FiscaliasMuni
--DROP PROCEDURE   	FiscaliasDepto
--DROP PROCEDURE   	DatosFiscalia

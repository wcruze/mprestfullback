USE MP
GO

CREATE PROCEDURE InsFiscaliasyLnsTels

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





DROP PROCEDURE InsFiscaliasyLnsTels
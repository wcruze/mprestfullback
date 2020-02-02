USE MP
GO

SELECT MN.id_municipio
      ,MN.municipio_nombre
      ,MN.id_departamento
	  ,DP.departamento_nombre
  FROM MP.Pais.TB_Municipios AS MN
  INNER JOIN MP.Pais.TB_Departamentos AS DP ON DP.id_departamento = MN.id_departamento
  WHERE DP.departamento_nombre = 'Petén';
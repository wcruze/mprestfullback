USE MP
GO
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
  WHERE FCS.id_fiscalia = '10' OR FCS.nombre_fiscalia = 'Fiscalía Municipal';
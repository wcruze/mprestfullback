package com.mp.fiscalias.mpfiscalias.entity.services;

import java.util.List;

import com.mp.fiscalias.mpfiscalias.entity.models.Municipios;

public interface IMunicipiosService {
	public Municipios TraerMunicipioporID(Long id);
	public List<Municipios> MunicipiosTraerTodo();
	public void ActualizarMunicipio(Municipios Municipio, long id);
	public void InsertarMunicipio(Municipios Municipio);
	public void EliminarMunicipio(long id);
}

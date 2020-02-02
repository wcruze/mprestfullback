package com.mp.fiscalias.mpfiscalias.entity.services;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mp.fiscalias.mpfiscalias.entity.dao.IMunicipiosDao;
import com.mp.fiscalias.mpfiscalias.entity.models.Municipios;
import com.mp.fiscalias.mpfiscalias.entity.services.IMunicipiosService;

@Service
public class MunicipiosServiceImplements implements IMunicipiosService {

	@Autowired
	private IMunicipiosDao Municipiodao;
	
	@Override
	public Municipios TraerMunicipioporID(Long id) {
		return Municipiodao.findById(id).get();
	}

	@Override
	public List<Municipios> MunicipiosTraerTodo() {		
		return (List<Municipios>) Municipiodao.findAll();
	}

	@Override
	public void ActualizarMunicipio(Municipios Municipio, long id) {
		Municipiodao.findById(id).ifPresent((x) -> {
			Municipio.setid_municipio(id);
			Municipiodao.save(Municipio);
		});
	}

	@Override
	public void InsertarMunicipio(Municipios Municipio) {
		Municipiodao.save(Municipio);		
	}

	@Override
	public void EliminarMunicipio(long id) {
		Municipiodao.deleteById(id);
	}

}

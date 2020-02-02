package com.mp.fiscalias.mpfiscalias.entity.services;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mp.fiscalias.mpfiscalias.entity.dao.ILineasDao;
import com.mp.fiscalias.mpfiscalias.entity.models.Lineas;
import com.mp.fiscalias.mpfiscalias.entity.services.ILineasService;

@Service
public class LineasServiceImplements implements ILineasService {

	@Autowired
	private ILineasDao Lineadao;
	
	@Override
	public Lineas TraerLineaporID(Long id) {
		return Lineadao.findById(id).get();
	}

	@Override
	public List<Lineas> LineasTraerTodo() {		
		return (List<Lineas>) Lineadao.findAll();
	}

	@Override
	public void ActualizarLinea(Lineas Linea, long id) {
		Lineadao.findById(id).ifPresent((x) -> {
			Linea.setId_linea(id);
			Lineadao.save(Linea);
		});
	}

	@Override
	public void InsertarLinea(Lineas Linea) {
		Lineadao.save(Linea);		
	}

	@Override
	public void EliminarLinea(long id) {
		Lineadao.deleteById(id);
	}

}

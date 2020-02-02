package com.mp.fiscalias.mpfiscalias.entity.services;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mp.fiscalias.mpfiscalias.entity.dao.IFiscaliasDao;
import com.mp.fiscalias.mpfiscalias.entity.models.Fiscalias;
import com.mp.fiscalias.mpfiscalias.entity.services.IFiscaliasService;

@Service
public class FiscaliasServiceImplements implements IFiscaliasService {

	@Autowired
	private IFiscaliasDao fiscaliadao;
	
	@Override
	public Fiscalias TraerFiscaliaporID(Long id) {
		return fiscaliadao.findById(id).get();
	}

	@Override
	public List<Fiscalias> FiscaliasTraerTodo() {		
		return (List<Fiscalias>) fiscaliadao.findAll();
	}

	@Override
	public void ActualizarFiscalia(Fiscalias fiscalia, long id) {
		fiscaliadao.findById(id).ifPresent((x) -> {
			fiscalia.setId_fiscalia(id);
			fiscaliadao.save(fiscalia);
		});
	}

	@Override
	public void InsertarFiscalia(Fiscalias fiscalia) {
		fiscaliadao.save(fiscalia);		
	}

	@Override
	public void EliminarFiscalia(long id) {
		fiscaliadao.deleteById(id);
	}

}

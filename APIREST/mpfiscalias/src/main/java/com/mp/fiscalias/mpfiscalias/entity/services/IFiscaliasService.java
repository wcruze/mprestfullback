package com.mp.fiscalias.mpfiscalias.entity.services;

import java.util.List;

import com.mp.fiscalias.mpfiscalias.entity.models.Fiscalias;

public interface IFiscaliasService {
	public Fiscalias TraerFiscaliaporID(Long id);
	public List<Fiscalias> FiscaliasTraerTodo();
	public void ActualizarFiscalia(Fiscalias fiscalia, long id);
	public void InsertarFiscalia(Fiscalias fiscalia);
	public void EliminarFiscalia(long id);
}

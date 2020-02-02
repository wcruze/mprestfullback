package com.mp.fiscalias.mpfiscalias.entity.services;

import java.util.List;

import com.mp.fiscalias.mpfiscalias.entity.models.Lineas;

public interface ILineasService {
	public Lineas TraerLineaporID(Long id);
	public List<Lineas> LineasTraerTodo();
	public void ActualizarLinea(Lineas Linea, long id);
	public void InsertarLinea(Lineas Linea);
	public void EliminarLinea(long id);
}

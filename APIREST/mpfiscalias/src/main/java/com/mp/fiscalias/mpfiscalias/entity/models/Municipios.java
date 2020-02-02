
package com.mp.fiscalias.mpfiscalias.entity.models;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


import com.sun.istack.NotNull;

@Entity
@Table(name ="TB_Municipios", schema="Pais")
public class Municipios implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long  id_municipio;
	
	@Column(name ="id_departamento")
	@NotNull
	private long id_departamento;
	
	@Column(name = "municipio_nombre")
	@NotNull
	private String municipio_nombre;

	public long getid_municipio() {
		return id_municipio;
	}

	public void setid_municipio(long id_municipio) {
		this.id_municipio = id_municipio;
	}

	public long getid_departamento() {
		return id_departamento;
	}

	public void setid_departamento(long id_departamento) {
		this.id_departamento = id_departamento;
	}

	public String getmunicipio_nombre() {
		return municipio_nombre;
	}

	public void setmunicipio_nombre(String municipio_nombre) {
		this.municipio_nombre = municipio_nombre;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public Municipios(long id_municipio, long id_departamento, String municipio_nombre) {
		super();
		this.id_municipio = id_municipio;
		this.id_departamento = id_departamento;
		this.municipio_nombre = municipio_nombre;
	}

	public Municipios() {		
	}


}

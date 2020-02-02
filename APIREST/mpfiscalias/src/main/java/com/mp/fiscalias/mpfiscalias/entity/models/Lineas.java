
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
@Table(name ="tb_lineastelefonicas", schema="Fiscalias")
public class Lineas implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long  id_linea;
	
	@Column(name ="id_fiscalia")
	@NotNull
	private long id_fiscalia;
	
	@Column(name = "numero_linea")
	@NotNull
	private String numero_linea;

	public long getId_linea() {
		return id_linea;
	}

	public void setId_linea(long id_linea) {
		this.id_linea = id_linea;
	}

	public long getId_fiscalia() {
		return id_fiscalia;
	}

	public void setId_fiscalia(long id_fiscalia) {
		this.id_fiscalia = id_fiscalia;
	}

	public String getNumero_linea() {
		return numero_linea;
	}

	public void setNumero_linea(String numero_linea) {
		this.numero_linea = numero_linea;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public Lineas(long id_linea, long id_fiscalia, String numero_linea) {
		super();
		this.id_linea = id_linea;
		this.id_fiscalia = id_fiscalia;
		this.numero_linea = numero_linea;
	}

	public Lineas() {		
	}


}

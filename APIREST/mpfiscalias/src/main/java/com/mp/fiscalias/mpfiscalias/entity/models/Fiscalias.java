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
@Table(name ="TB_Fiscalias", schema="Fiscalias")
public class Fiscalias implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long  id_fiscalia;
	
	@Column(name ="id_municipio")
	@NotNull
	private long id_municipio;
	
	@Column(name = "nombre_fiscalia")
	@NotNull
	private String nombre_fiscalia;
	
	@Column(name ="direccion_fiscalia")
	@NotNull
	private String direccion_fiscalia;
	
	@Column(name ="correoe_fiscalia")
	private String correoe_fiscalia;

	public long getId_fiscalia() {
		return id_fiscalia;
	}

	public void setId_fiscalia(long id_fiscalia) {
		this.id_fiscalia = id_fiscalia;
	}

	public long getId_municipio() {
		return id_municipio;
	}

	public void setId_municipio(long id_municipio) {
		this.id_municipio = id_municipio;
	}

	public String getNombre_fiscalia() {
		return nombre_fiscalia;
	}

	public void setNombre_fiscalia(String nombre_fiscalia) {
		this.nombre_fiscalia = nombre_fiscalia;
	}

	public String getDireccion_fiscalia() {
		return direccion_fiscalia;
	}

	public void setDireccion_fiscalia(String direccion_fiscalia) {
		this.direccion_fiscalia = direccion_fiscalia;
	}

	public String getCorreoe_fiscalia() {
		return correoe_fiscalia;
	}

	public void setCorreoe_fiscalia(String correoe_fiscalia) {
		this.correoe_fiscalia = correoe_fiscalia;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public Fiscalias(long id_fiscalia, long id_municipio, String nombre_fiscalia, String direccion_fiscalia,
			String correoe_fiscalia) {
		super();
		this.id_fiscalia = id_fiscalia;
		this.id_municipio = id_municipio;
		this.nombre_fiscalia = nombre_fiscalia;
		this.direccion_fiscalia = direccion_fiscalia;
		this.correoe_fiscalia = correoe_fiscalia;
	}
	
	public Fiscalias() {
		
	}


}

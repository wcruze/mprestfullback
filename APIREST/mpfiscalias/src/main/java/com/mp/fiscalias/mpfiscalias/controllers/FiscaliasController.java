package com.mp.fiscalias.mpfiscalias.controllers;

import java.util.List;

import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMethod;
import com.mp.fiscalias.mpfiscalias.entity.models.Fiscalias;
import com.mp.fiscalias.mpfiscalias.entity.services.IFiscaliasService;

import ch.qos.logback.classic.Logger;

@RestController
@CrossOrigin(origins = "*", methods= {RequestMethod.GET,RequestMethod.POST})
@RequestMapping("/MP")
public class FiscaliasController{
	
	@Autowired
	IFiscaliasService fiscaliasService;

	private static Logger log = (Logger) LoggerFactory.getLogger(FiscaliasController.class);
    
	@GetMapping("/fiscalias")
	public List<Fiscalias> FiscaliasTraerTodo(){ 
		List<Fiscalias> miLista = fiscaliasService.FiscaliasTraerTodo();
		
		for(Fiscalias fs : miLista) {
			log.error(fs.toString());
		}
		return fiscaliasService.FiscaliasTraerTodo();		
	}
	
	@GetMapping("/fiscalias/{id}")
	public Fiscalias FiscaliasTraerporID(@PathVariable(value ="id") long id){
		return fiscaliasService.TraerFiscaliaporID(id);		
	}
	
	
	@GetMapping("/fiscalias/insert")
	public void FiscaliasInsertar(String fiscalia){
		log.info(fiscalia);
	}
	
	
	@PutMapping("/fiscalias")
	public void FiscaliaActualizar(Fiscalias fiscalia, long id) {
		fiscaliasService.ActualizarFiscalia(fiscalia, id);
	}
}

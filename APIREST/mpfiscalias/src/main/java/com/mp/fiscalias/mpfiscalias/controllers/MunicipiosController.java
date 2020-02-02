
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
import com.mp.fiscalias.mpfiscalias.entity.models.Municipios;
import com.mp.fiscalias.mpfiscalias.entity.services.IMunicipiosService;

import ch.qos.logback.classic.Logger;

@RestController
@CrossOrigin(origins = "*", methods= {RequestMethod.GET,RequestMethod.POST})
@RequestMapping("/MP")
public class MunicipiosController{
	
	@Autowired
	IMunicipiosService MunicipiosService;

	private static Logger log = (Logger) LoggerFactory.getLogger(MunicipiosController.class);
    
	@GetMapping("/Municipios")
	public List<Municipios> MunicipiosTraerTodo(){ 
		List<Municipios> miLista = MunicipiosService.MunicipiosTraerTodo();
		
		for(Municipios fs : miLista) {
			log.error(fs.toString());
		}
		return MunicipiosService.MunicipiosTraerTodo();		
	}
	
	@GetMapping("/Municipios/{id}")
	public Municipios MunicipiosTraerporID(@PathVariable(value ="id") long id){
		return MunicipiosService.TraerMunicipioporID(id);		
	}
	
	
	@GetMapping("/Municipios/insert")
	public void MunicipiosInsertar(String fiscalia){
		log.info(fiscalia);
	}
	
	
	@PutMapping("/Municipios")
	public void FiscaliaActualizar(Municipios fiscalia, long id) {
		MunicipiosService.ActualizarMunicipio(fiscalia, id);
	}
}
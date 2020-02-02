
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
import com.mp.fiscalias.mpfiscalias.entity.models.Lineas;
import com.mp.fiscalias.mpfiscalias.entity.services.ILineasService;

import ch.qos.logback.classic.Logger;

@RestController
@CrossOrigin(origins = "*", methods= {RequestMethod.GET,RequestMethod.POST})
@RequestMapping("/MP")
public class LineasController{
	
	@Autowired
	ILineasService LineasService;

	private static Logger log = (Logger) LoggerFactory.getLogger(LineasController.class);
    
	@GetMapping("/Lineas")
	public List<Lineas> LineasTraerTodo(){ 
		List<Lineas> miLista = LineasService.LineasTraerTodo();
		
		for(Lineas fs : miLista) {
			log.error(fs.toString());
		}
		return LineasService.LineasTraerTodo();		
	}
	
	@GetMapping("/Lineas/{id}")
	public Lineas LineasTraerporID(@PathVariable(value ="id") long id){
		return LineasService.TraerLineaporID(id);		
	}
	
	
	@GetMapping("/Lineas/insert")
	public void LineasInsertar(String fiscalia){
		log.info(fiscalia);
	}
	
	
	@PutMapping("/Lineas")
	public void FiscaliaActualizar(Lineas fiscalia, long id) {
		LineasService.ActualizarLinea(fiscalia, id);
	}
}
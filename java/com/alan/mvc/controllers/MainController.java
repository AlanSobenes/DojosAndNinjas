package com.alan.mvc.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.alan.mvc.models.Dojo;
import com.alan.mvc.models.Ninja;
import com.alan.mvc.services.DojoService;
import com.alan.mvc.services.NinjaService;

@Controller
public class MainController {
	
//	----------------DEPENDENCY INJECTION----------------
	@Autowired
	private NinjaService ninjaService;
	@Autowired 
	private DojoService dojoService;
	
	@RequestMapping("/")
	public String index(Model model) {
		List<Dojo> dojos=dojoService.allDojos();
		model.addAttribute("dojos", dojos);
	
		
		return "home.jsp";
	}
	
	@RequestMapping("/newNinja")
	public String newNinja(@ModelAttribute("ninja") Ninja ninja, Model model) {
		
		model.addAttribute("alldojos", dojoService.allDojos());
		return "newNinja.jsp";
	}
	
	@RequestMapping(value="/newNinja", method=RequestMethod.POST)
	public String createNinja(@Valid @ModelAttribute("ninja") Ninja ninja, BindingResult result, Model model) {
		if(result.hasErrors()) {
			model.addAttribute("alldojos", dojoService.allDojos());
			return"newNinja.jsp";
		}else {
			ninjaService.createNinja(ninja);
			return "redirect:/";
		}
	}
	
	@RequestMapping("/newDojo")
	public String newNinja(@ModelAttribute("dojo") Dojo dojo) {
		return "newDojo.jsp";
	}
	
	@RequestMapping(value="/createDojo", method=RequestMethod.POST)
	public String createDojo(@Valid @ModelAttribute("dojo") Dojo dojo, BindingResult result) {
		if(result.hasErrors()) {
			return"newDojo.jsp";
		}else {
			dojoService.createDojo(dojo);
			return "redirect:/";
		}
	}
	
	@RequestMapping("/{id}/ShowOne")
	public String showDojo(@PathVariable("id") Long id, Model model) {
		Dojo dojo = dojoService.findDojo(id);
		
		model.addAttribute("dojo",dojo);
		return "showDojo.jsp";
	}


	
}

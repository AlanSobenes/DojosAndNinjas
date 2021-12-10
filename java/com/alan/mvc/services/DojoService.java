package com.alan.mvc.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.alan.mvc.models.Dojo;
import com.alan.mvc.repositories.DojoRepo;

@Service
public class DojoService {

//	----------------DEPENDENCY INJECTION----------------
	private final DojoRepo dojoRepo;
	
	public	DojoService(DojoRepo dojoRepo) {
		this.dojoRepo = dojoRepo;
	}
//  -------------------------------------------------	
	 // returns all Expenses
	public List<Dojo> allDojos() {
	        return dojoRepo.findAll();
	    }
	 // creates an Expense
	 public Dojo createDojo(Dojo d) {
	        return dojoRepo.save(d);
	    }
	 // retrieves an Expense
	 public Dojo findDojo(Long id){
		 Optional<Dojo> optionalDojo = dojoRepo.findById(id);
		 if(optionalDojo.isPresent()) {
			 return optionalDojo.get();
		 }else {
			 return null;
		 }
	 }
//	 	update an Expense
	 public Dojo updateDojo(Dojo d) {
		 return dojoRepo.save(d);
	 }
	
	 // delete an Expense by ID
	 public void deleteDojo(Long id) {
		 dojoRepo.deleteById(id);
	 }
}

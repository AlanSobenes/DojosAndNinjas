package com.alan.mvc.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.alan.mvc.models.Ninja;
import com.alan.mvc.repositories.NinjaRepo;

@Service
public class NinjaService {
//	----------------DEPENDENCY INJECTION----------------
	private final NinjaRepo ninjaRepo;
	
	public	NinjaService(NinjaRepo ninjaRepo) {
		this.ninjaRepo = ninjaRepo;
	}
//  -------------------------------------------------	
	 // returns all Expenses
	public List<Ninja> allNinjas() {
	        return ninjaRepo.findAll();
	    }
	 // creates an Expense
	 public Ninja createNinja(Ninja n) {
	        return ninjaRepo.save(n);
	    }
	 // retrieves an Expense
	 public Ninja findNinja(Long id){
		 Optional<Ninja> optionalNinja = ninjaRepo.findById(id);
		 if(optionalNinja.isPresent()) {
			 return optionalNinja.get();
		 }else {
			 return null;
		 }
	 }
//	 	update an Expense
	 public Ninja updateNinja(Ninja n) {
		 return ninjaRepo.save(n);
	 }
	
	 // delete an Expense by ID
	 public void deleteNinja(Long id) {
		 ninjaRepo.deleteById(id);
	 }

}

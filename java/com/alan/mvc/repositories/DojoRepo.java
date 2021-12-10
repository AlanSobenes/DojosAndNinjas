package com.alan.mvc.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.alan.mvc.models.Dojo;

public interface DojoRepo extends CrudRepository<Dojo, Long>{
	
	List<Dojo> findAll();

}

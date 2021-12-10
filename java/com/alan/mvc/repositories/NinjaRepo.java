package com.alan.mvc.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.alan.mvc.models.Ninja;

public interface NinjaRepo extends CrudRepository<Ninja, Long> {
	
	List<Ninja> findAll();

}

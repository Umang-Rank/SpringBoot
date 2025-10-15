package com.app.repository;

import org.springframework.data.repository.CrudRepository;

import com.app.model.Person;

public interface PersonRepository extends CrudRepository<Person, Integer>{
	
	public Person findByUsernameAndPassword(String username,String password);

}

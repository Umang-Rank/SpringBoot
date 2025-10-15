package com.app.serviceimpl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.app.model.Person;
import com.app.repository.PersonRepository;
import com.app.servicei.PersonServicei;

@Service
public class PersonServiceimpl implements PersonServicei{

	@Autowired
	PersonRepository personRepository;
	
	@Override
	public void saveData(Person p) {
		personRepository.save(p);
		
	}

	@Override
	public List<Person> getAllData() {
		List<Person> stList = (List<Person>)personRepository.findAll();
		return stList;
	}

	@Override
	public void deleteData(int id) {
		personRepository.deleteById(id);
		
	}


	@Override
	public Person getById(int id) {
	    Optional<Person> byId = personRepository.findById(id);
	    Person person = byId.get();
	    
	    return person;
	          
	}
	
	@Override
	public Person studentLogin(String username, String password) {
		Person p = personRepository.findByUsernameAndPassword(username, password);
		return p;
	}

}

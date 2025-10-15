package com.app.servicei;



import java.util.List;

import com.app.model.Person;

public interface PersonServicei {
	
	public void saveData(Person p);
	
	public List<Person> getAllData();
	
	public void deleteData(int id);
	
	public Person studentLogin(String username,String password);
	
	public Person getById(int id);
	

}

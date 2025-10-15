package com.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.app.model.Person;
import com.app.repository.PersonRepository;
import com.app.servicei.PersonServicei;

@Controller
public class ProductController {

    private final PersonRepository personRepository;
	
	@Autowired
	PersonServicei personServicei;

    ProductController(PersonRepository personRepository) {
        this.personRepository = personRepository;
    }
	
	@RequestMapping("/")
	public String home() {
		return "home";
	}
	
	@RequestMapping("/registration")
	public String reg() {
		return "registration";
	}
	
	@RequestMapping("/login")
	public String login() {
		return "login";
	}

	@RequestMapping("/home")
	public String home2() {
		return "home";
	}
	
	@RequestMapping("/success")
	public String regsuccess(@ModelAttribute Person p) {
		
		personServicei.saveData(p);
		return "login";
	}
	
	@RequestMapping("/loginsuccess")
	public String loginsuccess(Model m) {
		List<Person> stList = personServicei.getAllData();
		m.addAttribute("data", stList);
		return "loginsuccess";
	}
	
	@RequestMapping("/delete")
	public String delete(@RequestParam("id") int id, Model m) {
		personServicei.deleteData(id);
		List<Person> stList = personServicei.getAllData();
		m.addAttribute("data", stList);
		return "loginsuccess";
	}
	
	@RequestMapping("/edit")
	public String editPage(@RequestParam("id") int id,Model m) {
	
		System.out.println("id : "+id);
		Person p = personServicei.getById(id);
		m.addAttribute("p", p);
		return "edit";
	}
	
	@RequestMapping("/editsuccess")
	public String editSuccess(@ModelAttribute Person p, Model m) {
		
		personServicei.saveData(p);
		List<Person> stList = personServicei.getAllData();
		m.addAttribute("data", stList);
		return "loginsuccess";
	}
	
	@RequestMapping("/studentlogin")
	public String studentlogin() {
		return "studentlogin";
	}
	
	@RequestMapping("/stusuccess")
	public String studentLoginSuccess(@RequestParam("username") String un,
			@RequestParam("password") String ps,Model m) {
		
		Person st = personServicei.studentLogin(un, ps);
		m.addAttribute("st", st);
		if(st!=null) {
			return "studentloginsuccess";
		}else {
			return "studentlogin";
		}
		
	}
}

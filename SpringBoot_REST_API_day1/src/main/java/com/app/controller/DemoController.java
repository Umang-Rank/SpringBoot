package com.app.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.app.model.Student;

@RestController
public class DemoController {

	@GetMapping("/msg")
	public String hello() {
		return "welcom to REST API demo";
	}
	
	@GetMapping("/gm")
	public String gm() {
		return "GoodMorning...";
	}
	
	@GetMapping("/getData")
	public Student getData() {
		Student s = new Student();
		
		s.setRollno(101);
		s.setName("umang rank");
		s.setMobile(8010507301l);
		s.setMarks(98.82);
		
		return s;
	}
	
	@GetMapping("/getAllData")
	public List<Student> getAllData() {
		
		List<Student> list = new ArrayList<Student>();
		
		Student s1= new Student();
		Student s2= new Student();
		Student s3= new Student();
		
		s1.setRollno(101);
		s1.setName("umang rank");
		s1.setMobile(8010507301l);
		s1.setMarks(98.23);
		
		s2.setRollno(102);
		s2.setName("rushab yadav");
		s2.setMobile(123456789l);
		s2.setMarks(78.09);
		
		s3.setRollno(103);
		s3.setName("ansh udawant");
		s3.setMobile(8935628742l);
		s3.setMarks(98.12);
		
		list.add(s3);
		list.add(s2);
		list.add(s1);
		
		return list;
	}
	
	@PostMapping("/addRecord")
	public Student postData(@RequestBody Student st) {
		
		return st;
	}
	
	@GetMapping("/getDataByRollno/{rollno}")
	public Student getDataByRollno(@PathVariable int rollno) {
		
		List<Student> list = new ArrayList<Student>();
		
		Student s1= new Student();
		Student s2= new Student();
		Student s3= new Student();
		
		s1.setRollno(101);
		s1.setName("umang rank");
		s1.setMobile(8010507301l);
		s1.setMarks(98.23);
		
		s2.setRollno(102);
		s2.setName("rushab yadav");
		s2.setMobile(123456789l);
		s2.setMarks(78.09);
		
		s3.setRollno(103);
		s3.setName("ansh udawant");
		s3.setMobile(8935628742l);
		s3.setMarks(98.12);
		
		list.add(s3);
		list.add(s2);
		list.add(s1);
		
		for(Student st : list) {
			if(st.getRollno()==rollno) {
				return st;
			}
		}
		
		return null;
	}
	
	@GetMapping("/getDataByName/{name}")
	public Student getDataByName(@PathVariable String name) {
		
List<Student> list = new ArrayList<Student>();
		
		Student s1= new Student();
		Student s2= new Student();
		Student s3= new Student();
		
		s1.setRollno(101);
		s1.setName("umang rank");
		s1.setMobile(8010507301l);
		s1.setMarks(98.23);
		
		s2.setRollno(102);
		s2.setName("rushab yadav");
		s2.setMobile(123456789l);
		s2.setMarks(78.09);
		
		s3.setRollno(103);
		s3.setName("ansh udawant");
		s3.setMobile(8935628742l);
		s3.setMarks(98.12);
		
		list.add(s3);
		list.add(s2);
		list.add(s1);
		
		for(Student st : list) {
			if(st.getName().equals(name)) {
				return st;
			}
		}
		
		return null;
	}
	
	@GetMapping("/getDataByMarks/{mark}")
	public Student getDataByMarks(@PathVariable double mark) {
		
		List<Student> list = new ArrayList<Student>();
		
		Student s1= new Student();
		Student s2= new Student();
		Student s3= new Student();
		
		s1.setRollno(101);
		s1.setName("umang rank");
		s1.setMobile(8010507301l);
		s1.setMarks(98.23);
		
		s2.setRollno(102);
		s2.setName("rushab yadav");
		s2.setMobile(123456789l);
		s2.setMarks(78.09);
		
		s3.setRollno(103);
		s3.setName("ansh udawant");
		s3.setMobile(8935628742l);
		s3.setMarks(98.12);
		
		list.add(s3);
		list.add(s2);
		list.add(s1);
		
		for(Student st : list) {
			if(st.getMarks()==mark) {
				return st;
			}
		}
		
		return null;
	}
	
	@PostMapping("/saveAllData")
	public List<Student> saveAllData(@RequestBody List<Student> list){
		
		return list;
	}
}

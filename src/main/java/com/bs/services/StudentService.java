package com.bs.services;

import java.util.*;
import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.bs.modal.*;
import com.bs.repository.StudentRepository;

@Service
@Transactional
public class StudentService 
{
	@Autowired 
	private StudentRepository studRepository;
	@Autowired
	private EntityManager entityManager;
	
//	 public StudentService(StudentRepository Repository) 
//	 {
//         this.studRepository=Repository;
//     }
	
	public void saveMyUser(Student user) {
		studRepository.save(user);
	}
		
	public List<Student> showAllUsers() {
		List<Student> users = new ArrayList<Student>();
		for (Student user : studRepository.findAll()) {
			users.add(user);
		}
		return users;
	}
	
	public Student findById(int id) 
	{
		return studRepository.findOne(id);		  
	}		

	public void deleteMyUser(int id) {
		studRepository.delete(id);
	}

	public Student editUser(int id) {
		return studRepository.findOne(id);
	}
		
	public List<Student> loginStudent(String email, String password)
	{
		String hql = "from Student u where u.email='"+email+"' and u.password='"+password+"' ";
		Query query = entityManager.createQuery(hql);
		List<Student> stud = query.getResultList();
		List<Student> s = stud.size()>0?stud:null;
		return s;		
	}
	
}

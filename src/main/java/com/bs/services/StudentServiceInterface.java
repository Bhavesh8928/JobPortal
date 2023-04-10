package com.bs.services;

import java.util.List;
import com.bs.modal.Student;

public interface StudentServiceInterface 
{
	public void saveMyUser(Student user);
	//public void saveNameAndPic(upload up);
	public List<Student> showAllUsers();
	//public Iterable<User> findAll();   
	public Student findById(int id);
	public void deleteMyUser(int id);
	public Student editUser(int id);
	public List<Student> findByEmailAndPassword(String email, String password);

}

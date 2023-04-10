package com.bs.repository;

import org.springframework.data.repository.CrudRepository;
import com.bs.modal.Student;

public interface StudentRepository extends CrudRepository<Student, Integer> 
{	
	
}

package com.bs.services;

import java.util.*;
import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.bs.modal.*;

@Service
@Transactional
public class AdminService 
{	
	@Autowired
	private EntityManager entityManager;	
	
	public List<AdminUser> loginAdmin(String email, String password)
	{
		String hql = "from AdminUser u where u.email='"+email+"' and u.password='"+password+"' ";
		Query query = entityManager.createQuery(hql);
		List<AdminUser> admin = query.getResultList();
		List<AdminUser> s = admin.size()>0?admin:null;
		return s;		
	}
	
}

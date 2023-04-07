package com.bs.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.bs.modal.AdminUser;

@Repository
public interface AdminUserRepository extends JpaRepository<AdminUser, Long> 
{
   
}

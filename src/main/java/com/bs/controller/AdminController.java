package com.bs.controller;

import java.util.Optional;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import com.bs.modal.AdminUser;
import com.bs.repository.AdminUserRepository;

//@RestController
//@RequestMapping("/admin")
public class AdminController {
	@Autowired
	private AdminUserRepository adminUserRepository;
	/*
	@GetMapping(value = "/loginStudent", consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE)
	public ResponseEntity<String> login(@RequestBody AdminUser adminUser, HttpSession session) 
	//public String login(@RequestBody AdminUser adminUser, HttpSession session)
	{
		Optional<AdminUser> optionalUser = adminUserRepository.findByEmail(adminUser.getEmail());
		if (optionalUser.isPresent() && optionalUser.get().getPassword().equals(adminUser.getPassword())) {
			session.setAttribute("username", adminUser.getEmail());
			return ResponseEntity.ok("Login successful");
			//return "ja9_admin_dashboard";
		}
		
		 else { return "ja8_login"; }
		 
		return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body("Invalid username or password");
		}
	*/
	@PostMapping("/logout")
	public ResponseEntity<String> logout(HttpSession session) {
		session.invalidate();
		return ResponseEntity.ok("Logout successful");
	}
}

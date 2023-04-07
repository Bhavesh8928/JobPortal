package com.bs.controller;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bs.modal.*;
import com.bs.repository.StudentRepository;
import com.bs.services.AdminService;
import com.bs.services.StudentService;

@Controller
public class JobController 
{
	@Autowired
	private StudentService studService;
	@Autowired
	private StudentRepository studentRepository;
	@Autowired
	private AdminService adminService;

	@ResponseBody
	@GetMapping("/home")
	public String hello() {
		return "This is Home page";
	}
	
	@GetMapping("/jobportal")
	public String index()
	{		
		return "j5_homePage";
	}
	
	@GetMapping("/login")
	public String login()
	{		
		return "j8_login";
	}
	
	@GetMapping("/client")
	public String client()
	{		
		return "clientpage";
	}	
	
	@GetMapping("/loginStudent")
	public String loginStudent(@ModelAttribute Student studLog, @ModelAttribute AdminUser adminLog, HttpServletRequest request )
	{		
		if(studService.loginStudent(studLog.getEmail(), studLog.getPassword())!=null)
		{
			System.out.println("Login successful");
			return "j6_student_home";
		}
		else if (adminService.loginAdmin(adminLog.getEmail(), adminLog.getPassword())!=null) 
		{
			System.out.println("Admin login successful");
			return "ja10_clientPage";
		}
		else
		{
			request.setAttribute("error", "Invalid username and password");
			System.out.println("Login Fail");
			return "j8_login";
		}		
	}
		
	@GetMapping("/signupStudent")
	public String usersignupform() {
		return "j7_signup";
	}
	
	//RedirectAttributes is used 
	//Another alternative to avoid saving data again when the page is refreshed is to use the 
	//Post-Redirect-Get (PRG) pattern. The PRG pattern involves redirecting the user to a different URL 
	//after the form submission is processed, instead of rendering a new view directly. The redirected URL 
	//will then display the results of the form submission or some other confirmation message.
	@PostMapping("/signupStudentData")
	public String savesignupform(@ModelAttribute Student studSave, Model model, RedirectAttributes redirectAttributes) {
		studService.saveMyUser(studSave);	
		//model.addAttribute("sesUser", studSave);
		redirectAttributes.addFlashAttribute("successMessage", "Data saved successfully.");
		System.out.println("Student data saved successfully");
		return "j7_signup";
	}
	
	//To avoid saving of data again and again while page refresh, It will give alert
	@GetMapping("/success")
    public String showSuccessPage(Model model) {
        if (model.containsAttribute("successMessage")) {
            String successMessage = (String) model.asMap().get("successMessage");
            model.addAttribute("successMessage", successMessage);
        }
        return "j7_signup";
    }
	
	@GetMapping("/profileStudent")
	public String profileStudent()
	{		
		return "ja12_profileStudent";
	}
	
	@GetMapping("/about")
	public String about()
	{		
		return "ja14_about";
	}
	
	@GetMapping("/contact")
	public String contact()
	{		
		return "ja13_contact";
	}
	
	
	/*
	@PostMapping("/signupStudentData1")
	public String saveStudent(@Valid Student student, BindingResult result) {
	    if (result.hasErrors()) {
	        return "j7_signup";
	    }	    
	    studentRepository.save(student);	
	    System.out.println("Student data saved successfully");
	    return "redirect:/ja10_clientPage";
	}
		 
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
		 
	@PostMapping("/logout")
	public ResponseEntity<String> logout(HttpSession session) {
		session.invalidate();
		return ResponseEntity.ok("Logout successful");
	}

	*/
	
}

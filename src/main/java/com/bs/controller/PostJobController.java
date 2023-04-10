package com.bs.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import com.bs.modal.PostJob;
import com.bs.repository.PostJobRepository;
import com.bs.services.PostJobService;

@Controller
public class PostJobController 
{
	@Autowired
	PostJobService postJobService;
	@Autowired
	PostJobRepository pjRepository;	
	@PostMapping("/savepostjob")
	public String handleFileUpload(@RequestParam("file") MultipartFile file, 
			@RequestParam("jobtitle") String jobtitle, @RequestParam("companyname") String companyname, 
			@RequestParam("category") String category, @RequestParam("jobdescription") String jobdescription,
			@RequestParam("salary") String salary, @RequestParam("vacancy") String vacancy,
			@RequestParam("experience") String experience, @RequestParam("jobtype") String jobtype,
			@RequestParam("qualification") String qualification, @RequestParam("skills") String skills,
			@RequestParam("email") String email1, @RequestParam("phone") String phone,
			@RequestParam("website") String website, @RequestParam("joblocation") String joblocation,
			@RequestParam("facebook") String facebook, @RequestParam("gmail") String gmail,
			@RequestParam("twitter") String twitter, @RequestParam("linkedin") String linkedin,
			@RequestParam("pinterest") String pinterest, @RequestParam("instagram") String instagram)         
	{
	    try {
	        // Create a new FileData object and set its properties
	        PostJob pJob = new PostJob();
	        pJob.setJobtitle(jobtitle);
	        pJob.setCompanyname(companyname);
	        pJob.setCategory(category);	  
	        pJob.setJobdescription(jobdescription);
	        pJob.setSalary(salary);
	        pJob.setVacancy(vacancy);
	        pJob.setExperience(experience);
	        pJob.setJobtype(jobtype);
	        pJob.setQualification(qualification);
	        pJob.setSkills(skills);
	        pJob.setEmail(email1);
	        pJob.setPhone(phone);
	        pJob.setWebsite(website);
	        pJob.setJoblocation(joblocation);
	        pJob.setFacebook(facebook);
	        pJob.setGmail(gmail);
	        pJob.setTwitter(twitter);
	        pJob.setLinkedin(linkedin);
	        pJob.setPinterest(pinterest);
	        pJob.setInstagram(instagram);       
	        
	        pJob.setData(file.getBytes());
	        pJob.setContentType(file.getContentType());
	        pJob.setFileName(StringUtils.cleanPath(file.getOriginalFilename()));	                
	        
	        System.out.println("Saved details are - "+pJob.toString());
	        
	        // Save the file data to the database
	        pjRepository.save(pJob);
	    } catch (IOException e) {
	        e.printStackTrace();
	    }
	    return "uploadsuccess";
	}
	
	@GetMapping("/showusers")
	public String showAllUsers(Model model) {
		model.addAttribute("users", postJobService.showAllUsers());
		return "j9_admin_dashboard";
	}

	@RequestMapping("/deletejspuser")
	public String deleteUser(@RequestParam Long id, HttpServletRequest request) {
		postJobService.deleteMyUser(id);
		request.setAttribute("users", postJobService.showAllUsers());
		return "j9_admin_dashboard";
	}

	@RequestMapping("/editjspuser")
	public String editUser(@RequestParam Long id, HttpServletRequest request) {
		request.setAttribute("user", postJobService.editUser(id));
		return "j9_admin_dashboard";
	}
	
}

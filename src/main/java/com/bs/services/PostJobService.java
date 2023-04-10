package com.bs.services;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import com.bs.modal.PostJob;
import com.bs.repository.PostJobRepository;

@Service
public class PostJobService {

	@Autowired
	PostJobRepository pjRepository;
	
	public void savePostJob(@ModelAttribute PostJob postjob, Model model) 
	{
		pjRepository.save(postjob);				
	}
	
	public List<PostJob> showAllUsers() {
		List<PostJob> jobs = new ArrayList<PostJob>();
		for (PostJob job : pjRepository.findAll()) 
		{
			jobs.add(job);
		}
		return jobs;
	}

	public void deleteMyUser(Long id) {
		pjRepository.delete(id);
	}

	public PostJob editUser(Long id) {
		return pjRepository.findOne(id);
	}

}

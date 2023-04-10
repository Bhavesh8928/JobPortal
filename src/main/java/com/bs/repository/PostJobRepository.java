package com.bs.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.bs.modal.FileUpload;
import com.bs.modal.PostJob;

@Repository
public interface PostJobRepository extends CrudRepository<PostJob, Long> {

	
}

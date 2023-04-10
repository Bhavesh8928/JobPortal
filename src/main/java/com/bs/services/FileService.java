package com.bs.services;

import java.io.IOException;

import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import com.bs.modal.FileUpload;
import com.bs.modal.Student;
import com.bs.repository.FileRepository;

@Service
public class FileService {
    private final FileRepository fileRepository;

    public FileService(FileRepository fileRepository) {
        this.fileRepository = fileRepository;
    }
    
    public void saveData(FileUpload fdata) {
    	 String firstname = fdata.getFirstname();
         String lastname = fdata.getLastname();
         String email = fdata.getEmail();           
         FileUpload nf = new FileUpload(); 
         nf.setFirstname(firstname);
         nf.setLastname(lastname);
         nf.setEmail(email);
         fileRepository.save(nf);
    	
	}
    
    public void saveFile(MultipartFile file) throws IOException {
        String fileName = StringUtils.cleanPath(file.getOriginalFilename());
        String contentType = file.getContentType();        
        byte[] data = file.getBytes();
        
        FileUpload newFile = new FileUpload();
        newFile.setFileName(fileName);
        newFile.setContentType(contentType);
        newFile.setData(data);
        fileRepository.save(newFile);
    }
}


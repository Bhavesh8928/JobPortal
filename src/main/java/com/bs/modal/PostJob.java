package com.bs.modal;

import java.util.Arrays;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;

import org.hibernate.validator.constraints.NotBlank;

@Entity
@Table(name = "PostJobs")
public class PostJob 
{
	 @Id
	 @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String jobtitle;
	private String companyname;
	private String category;
	private String jobdescription;
	private String salary;
	private String vacancy;
	private String experience;
	@NotBlank
    private String fileName;
    @NotBlank
    private String contentType;
    @Lob
    @Column(columnDefinition = "MEDIUMBLOB")
    private byte[] data;	
	private String jobtype;
	private String qualification;
	private String skills;
	private String email;
	private String phone;
	private String website;
	private String joblocation;
	private String facebook;
	private String gmail;
	private String twitter;
	private String linkedin;
	private String pinterest;
	private String instagram;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getJobtitle() {
		return jobtitle;
	}
	public void setJobtitle(String jobtitle) {
		this.jobtitle = jobtitle;
	}
	public String getCompanyname() {
		return companyname;
	}
	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getJobdescription() {
		return jobdescription;
	}
	public void setJobdescription(String jobdescription) {
		this.jobdescription = jobdescription;
	}
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
		this.salary = salary;
	}
	public String getVacancy() {
		return vacancy;
	}
	public void setVacancy(String vacancy) {
		this.vacancy = vacancy;
	}
	public String getExperience() {
		return experience;
	}
	public void setExperience(String experience) {
		this.experience = experience;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getContentType() {
		return contentType;
	}
	public void setContentType(String contentType) {
		this.contentType = contentType;
	}
	public byte[] getData() {
		return data;
	}
	public void setData(byte[] data) {
		this.data = data;
	}
	public String getJobtype() {
		return jobtype;
	}
	public void setJobtype(String jobtype) {
		this.jobtype = jobtype;
	}
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	public String getSkills() {
		return skills;
	}
	public void setSkills(String skills) {
		this.skills = skills;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getWebsite() {
		return website;
	}
	public void setWebsite(String website) {
		this.website = website;
	}
	public String getJoblocation() {
		return joblocation;
	}
	public void setJoblocation(String joblocation) {
		this.joblocation = joblocation;
	}
	public String getFacebook() {
		return facebook;
	}
	public void setFacebook(String facebook) {
		this.facebook = facebook;
	}
	public String getGmail() {
		return gmail;
	}
	public void setGmail(String gmail) {
		this.gmail = gmail;
	}
	public String getTwitter() {
		return twitter;
	}
	public void setTwitter(String twitter) {
		this.twitter = twitter;
	}
	public String getLinkedin() {
		return linkedin;
	}
	public void setLinkedin(String linkedin) {
		this.linkedin = linkedin;
	}
	public String getPinterest() {
		return pinterest;
	}
	public void setPinterest(String pinterest) {
		this.pinterest = pinterest;
	}
	public String getInstagram() {
		return instagram;
	}
	public void setInstagram(String instagram) {
		this.instagram = instagram;
	}
	@Override
	public String toString() {
		return "PostJob [id=" + id + ", jobtitle=" + jobtitle + ", companyname=" + companyname + ", category="
				+ category + ", jobdescription=" + jobdescription + ", salary=" + salary + ", vacancy=" + vacancy
				+ ", experience=" + experience + ", fileName=" + fileName + ", contentType=" + contentType + ", data="
				+ Arrays.toString(data) + ", jobtype=" + jobtype + ", qualification=" + qualification + ", skills="
				+ skills + ", email=" + email + ", phone=" + phone + ", website=" + website + ", joblocation="
				+ joblocation + ", facebook=" + facebook + ", gmail=" + gmail + ", twitter=" + twitter + ", linkedin="
				+ linkedin + ", pinterest=" + pinterest + ", instagram=" + instagram + "]";
	}
	
		
}

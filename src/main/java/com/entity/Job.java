package com.entity;

public class Job {
	private int id;
	private String title;
	private String email;
	private String description;
	private String category;
	private String status;
	private String location;
	private String time;
	private String experience;
	private String salary;
	private String publishdate;
	
	public Job() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Job(String title, String email, String description, String category, String status, String location,
			String time, String experience, String salary, String publishdate) {
		super();
		this.title = title;
		this.email = email;
		this.description = description;
		this.category = category;
		this.status = status;
		this.location = location;
		this.time = time;
		this.experience = experience;
		this.salary = salary;
		this.publishdate = publishdate;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getExperience() {
		return experience;
	}
	public void setExperience(String experience) {
		this.experience = experience;
	}
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
		this.salary = salary;
	}
	public String getPublishdate() {
		return publishdate;
	}
	public void setPublishdate(String publishdate) {
		this.publishdate = publishdate;
	}
	
	
}
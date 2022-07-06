package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Job;

public class JobDAO {
 private Connection con;

public JobDAO(Connection con) {
	super();
	this.con = con;
}
public boolean addJob(Job j) {
	boolean f= false;
	
	try {
		  String sql= "insert into job(title,email,description,category,status,location,time,salary,experience) values (?,?,?,?,?,?,?,?,?)";
		  PreparedStatement ps=con.prepareStatement(sql);  
		
		  ps.setString(1, j.getTitle());
		  ps.setString(2, j.getEmail());
		  ps.setString(3, j.getDescription());
		  ps.setString(4, j.getCategory());
		  ps.setString(5, j.getStatus());
		  ps.setString(6, j.getLocation());
		  ps.setString(7, j.getTime());
		  ps.setString(8, j.getSalary());
		  ps.setString(9, j.getExperience());
		 
		  
		  int i=ps.executeUpdate();
		  
		  if(i==1) {
			  f= true;
		  }	  
	}catch(Exception e){
    	System.out.println(e);
    	}  
	return f;
}

public List<Job> getAllJob(){
	List<Job> list= new ArrayList<Job>();
	Job j =null;
	try {
		
		String sql= "select * from job order by id desc";
		PreparedStatement ps=con.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			
			j=new Job();
			j.setId(rs.getInt(1));
			j.setTitle(rs.getString(2));
			j.setEmail(rs.getString(3));
			j.setDescription(rs.getString(4));
			j.setCategory(rs.getString(5));
			j.setStatus(rs.getString(6));
			j.setLocation(rs.getString(7));
			j.setPublishdate(rs.getTimestamp(8)+"");
			j.setTime(rs.getString(9));
			j.setSalary(rs.getString(10));
			j.setExperience(rs.getString(11));
			list.add(j);
					
		}
		
	}catch(Exception e){
    	System.out.println(e);
    	} 
	return list;
}

public List<Job> getAllJobforUser(){
	List<Job> list= new ArrayList<Job>();
	Job j =null;
	try {
		
		String sql= "select * from job where status=? order by id desc";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1, "Active");
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			
			j=new Job();
			j.setId(rs.getInt(1));
			j.setTitle(rs.getString(2));
			j.setEmail(rs.getString(3));
			j.setDescription(rs.getString(4));
			j.setCategory(rs.getString(5));
			j.setStatus(rs.getString(6));
			j.setLocation(rs.getString(7));
			j.setPublishdate(rs.getTimestamp(8)+"");
			j.setTime(rs.getString(9));
			j.setSalary(rs.getString(10));
			j.setExperience(rs.getString(11));
			list.add(j);
					
		}
		
	}catch(Exception e){
    	System.out.println(e);
    	} 
	return list;
}

public Job getJobById(int id){
	
	Job j =null;
	try {
		
		String sql= "select * from job where id=?";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setInt(1, id);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			
			j=new Job();
			j.setId(rs.getInt(1));
			j.setTitle(rs.getString(2));
			j.setEmail(rs.getString(3));
			j.setDescription(rs.getString(4));
			j.setCategory(rs.getString(5));
			j.setStatus(rs.getString(6));
			j.setLocation(rs.getString(7));
			j.setPublishdate(rs.getTimestamp(8)+"");
			j.setTime(rs.getString(9));
			j.setSalary(rs.getString(10));
			j.setExperience(rs.getString(11));
							
		}
		
	}catch(Exception e){
    	System.out.println(e);
    	} 
	return j;
}
public boolean updateJob(Job j) {
	boolean f= false;
	
	try {
		  String sql= "update job set title=?,email=?,category=?,status=?,location=?,description=?,time=?,salary=?,experience=? where id=?";
		  PreparedStatement ps=con.prepareStatement(sql);  
		
		  ps.setString(1, j.getTitle());
		  ps.setString(2, j.getEmail());
		  ps.setString(3, j.getCategory());
		  ps.setString(4, j.getStatus());
		  ps.setString(5, j.getLocation());
		  ps.setString(6, j.getDescription());
		  ps.setString(7, j.getTime());
		  ps.setString(8, j.getSalary());
		  ps.setString(9, j.getExperience());
		  ps.setInt(10, j.getId());
		  
		  int i=ps.executeUpdate();
		  
		  if(i==1) {
			  f= true;
		  }
		  
		  
	}catch(Exception e){
    	System.out.println(e);
    	}  
	return f;
	
}
public boolean deleteJob(int id) {
	boolean f= false;
	
	try {
		
		String sql="delete from job where id=?";
		PreparedStatement ps= con.prepareStatement(sql);
		ps.setInt(1, id);

		int i= ps.executeUpdate();
		if(i==1) {
			f=true;
		}
		
	}catch(Exception e) {
		e.printStackTrace();
	}
	return f;
}

}



























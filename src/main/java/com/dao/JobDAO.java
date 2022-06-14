package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

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
		
		  PreparedStatement ps=con.prepareStatement("insert into job(title,description,category,status,location) values (?,?,?,?,?)");  
		
		  ps.setString(1, j.getTitle());
		  ps.setString(2, j.getDescription());
		  ps.setString(3, j.getCategory());
		  ps.setString(4, j.getStatus());
		  ps.setString(5, j.getLocation());
		 
		  
		  int i=ps.executeUpdate();
		  
		  if(i==1) {
			  f= true;
		  }
		  
		  
	}catch(Exception e){
    	System.out.println(e);
    	}  
	return f;
}
}
